struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: Struct_2 = Struct_2(false, vec3<f32>(-785f, 136f, -1011f), Struct_1(-1i, vec4<bool>(true, true, false, false)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false)));

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(5893i, vec4<bool>(true, false, false, true)), Struct_1(-1i, vec4<bool>(false, true, true, true)), Struct_1(63826i, vec4<bool>(true, true, true, false)), Struct_1(22025i, vec4<bool>(false, true, true, false)), Struct_1(-13011i, vec4<bool>(false, false, true, false)), Struct_1(-1i, vec4<bool>(false, true, true, false)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, false)), Struct_1(18980i, vec4<bool>(false, true, false, true)), Struct_1(2147483647i, vec4<bool>(true, true, false, true)), Struct_1(78586i, vec4<bool>(false, true, false, true)), Struct_1(0i, vec4<bool>(true, true, false, true)), Struct_1(0i, vec4<bool>(false, true, true, true)), Struct_1(2147483647i, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, vec4<bool>(false, false, true, true)), Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_1(-1i, vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<bool>(false, true, true, false)), Struct_1(1i, vec4<bool>(false, true, true, true)), Struct_1(-5989i, vec4<bool>(false, true, false, false)), Struct_1(0i, vec4<bool>(false, true, false, true)), Struct_1(0i, vec4<bool>(false, false, false, true)), Struct_1(-11519i, vec4<bool>(false, false, false, false)), Struct_1(2147483647i, vec4<bool>(true, false, false, true)), Struct_1(i32(-2147483648), vec4<bool>(true, true, false, true)), Struct_1(-1i, vec4<bool>(true, false, false, false)), Struct_1(25525i, vec4<bool>(true, true, true, true)), Struct_1(-6752i, vec4<bool>(false, true, false, true)), Struct_1(32797i, vec4<bool>(false, true, true, true)), Struct_1(40611i, vec4<bool>(true, false, true, false)));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global4: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = Struct_1(arg_2.c.a, global1.d.b);
    global1 = Struct_2(false, vec3<f32>(257f, _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(429f, -1025f))))), Struct_1(-33542i, !arg_2.c.b), global1.c);
    var var_1 = true;
    global4 = global3.x;
    global0 = array<vec2<i32>, 9>();
    return true;
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(~57835i, ~3759i, -2147483647i)), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, global1.d.a, 1i), vec3<i32>(global1.d.a, -13109i, -55731i) & vec3<i32>(-13737i, global1.c.a, -1i), max(vec3<i32>(global1.d.a, -17077i, global1.d.a), vec3<i32>(u_input.e, 131917i, global1.d.a)))), vec4<bool>(true, global1.c.b.x, !((global1.d.a >> (4294967295u % 32u)) != _wgslsmith_add_i32(global1.d.a, global1.c.a)), arg_2.x));
    global2 = array<Struct_1, 29>();
    let var_1 = var_0;
    global1 = Struct_2(select(!(!arg_2.x != !arg_2.x), any(!arg_2) != func_3(u_input.c, -vec3<i32>(var_1.a, global1.c.a, global1.d.a), Struct_2(true, vec3<f32>(959f, 1000f, global1.b.x), global2[_wgslsmith_index_u32(17620u, 29u)], Struct_1(global1.d.a, var_1.b))), 1209f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1368f, 1328f, var_1.b.x)))), _wgslsmith_f_op_vec3_f32(select(global1.b, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, global1.b.x)))), 140f, _wgslsmith_div_f32(1223f, _wgslsmith_f_op_f32(ceil(570f)))), all(vec3<bool>(true, true, true)))), Struct_1(~(-1i) | -select(u_input.b, var_1.a, arg_0.x), vec4<bool>(arg_2.x, var_1.b.x, true | (467f == global1.b.x), all(arg_2.yzx))), global2[_wgslsmith_index_u32(u_input.d.x, 29u)]);
    let var_2 = _wgslsmith_f_op_f32(global1.b.x + global1.b.x);
    return Struct_2(!arg_2.x | false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) - vec3<f32>(_wgslsmith_div_f32(var_2, -551f), var_2, var_2)), vec3<f32>(729f, var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global1.d, global2[_wgslsmith_index_u32(countOneBits(1u), 29u)]);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global1 = arg_1;
    let var_0 = ~countOneBits(~(~vec4<u32>(0u, u_input.c, u_input.c, 7466u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(37579u, 4294967295u, u_input.c, u_input.c), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c)) % vec4<u32>(32u))));
    global1 = func_2(!(!global3.yx), var_0.x, arg_1.d.b);
    let var_1 = select(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, u_input.d.x, var_0.x), 9u)]), global0[_wgslsmith_index_u32(~(firstTrailingBit(var_0.x) << (select(0u >> (u_input.a.x % 32u), 54212u, global1.d.b.x | true) % 32u)), 9u)], arg_1.c.b.x);
    var var_2 = arg_1;
    return func_2(select(vec2<bool>(true, true | all(vec2<bool>(false, true))), select(!(!global1.d.b.wx), !arg_1.c.b.zz, !var_2.c.b.x), vec2<bool>(!(!arg_1.d.b.x), !global1.c.b.x)), 4294967295u, arg_1.c.b);
}

fn func_1() -> vec4<u32> {
    global1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.b.x, 544f))))), func_2(select(select(vec2<bool>(global3.x, global3.x), !vec2<bool>(global1.a, global3.x), vec2<bool>(global1.c.b.x, global3.x)), global3.wy, _wgslsmith_add_u32(u_input.c, 102740u) <= 76547u), _wgslsmith_clamp_u32(u_input.a.x, ~u_input.d.x >> (abs(u_input.d.x) % 32u), _wgslsmith_mult_u32(1u, u_input.d.x)), global1.d.b));
    let var_0 = u_input.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-func_2(select(global3.yw, select(global1.d.b.wz, !global3.zw, vec2<bool>(global1.d.b.x, global1.c.b.x)), vec2<bool>(func_4(global1.b.yx, Struct_2(true, global1.b, Struct_1(global1.c.a, vec4<bool>(false, false, false, global1.c.b.x)), global2[_wgslsmith_index_u32(0u, 29u)])).d.b.x, false)), ~var_0, global1.d.b).b.yx);
    var var_2 = Struct_1(global1.c.a, select(!func_4(_wgslsmith_f_op_vec2_f32(-var_1), func_2(global3.xz, var_0, vec4<bool>(global3.x, global3.x, true, global1.c.b.x))).c.b, vec4<bool>(false, select(false, all(vec3<bool>(global3.x, global3.x, global1.c.b.x)), select(global1.c.b.x, false, global1.c.b.x)), false, global3.x), !global1.c.b.x));
    global4 = true;
    return vec4<u32>(var_0, u_input.a.x, _wgslsmith_dot_vec2_u32(~(~u_input.d), max(~vec2<u32>(u_input.c, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, 0u), u_input.a))), 1u) ^ min(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(21696u, 19473u, var_0, u_input.c), vec4<u32>(var_0, 0u, var_0, var_0))), vec4<u32>(abs(_wgslsmith_mult_u32(1u, 1u)), 4294967295u, 1u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(73127u, 6069u, 0u, u_input.d.x)), select(vec4<u32>(21788u, u_input.a.x, u_input.d.x, u_input.c), vec4<u32>(28511u, u_input.c, 20839u, 4294967295u), vec4<bool>(false, false, true, false))), ~(~(vec4<u32>(u_input.c, 16376u, u_input.a.x, 1u) & vec4<u32>(u_input.c, u_input.a.x, 1u, u_input.d.x))), global1.d.b), func_1());
    let var_1 = Struct_2(false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-466f, -215f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(global1.b.x * global1.b.x)), Struct_1(2147483647i, !func_4(global1.b.xz, Struct_2(global1.a, global1.b, global1.d, global1.d)).c.b), func_2(!(!vec2<bool>(false, global1.a)), var_0.x, vec4<bool>(!any(vec2<bool>(global1.d.b.x, true)), true, true, true)).c);
    var var_2 = -vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.c.a, var_1.d.a)), global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), -52970i);
    global4 = var_1.c.b.x;
    let var_3 = var_0.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-201f, -1000f), vec2<f32>(_wgslsmith_f_op_f32(sign(521f)), _wgslsmith_f_op_f32(-var_1.b.x)))))), reverseBits(_wgslsmith_sub_vec3_u32(var_0.wxw | _wgslsmith_sub_vec3_u32(vec3<u32>(var_3.x, 0u, u_input.a.x), var_0.wyz), var_0.yyy)), global1.b.x, _wgslsmith_div_u32(~216u, 98120u));
}

