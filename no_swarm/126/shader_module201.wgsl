struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec3<i32>, 27>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-13815i, 3963i, -1i, 0i), vec3<u32>(0u, 4294967295u, 3614u), -1149f, 24557i, false);

var<private> global3: array<vec2<bool>, 2>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-277f, -887f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c))), arg_0.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c)) * arg_0.c), 1147f, !(global2.a.x > -2147483647i))), -228f)));
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-717f, arg_0.c), global2.c)), var_1.c, 875f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(floor(-295f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_1.c - -888f), _wgslsmith_div_f32(-1364f, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c, arg_0.c, -1000f, 956f), vec4<f32>(var_1.c, var_0.x, -2024f, var_1.c), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-461f, var_0.x, 792f, global2.c))), all(vec3<bool>(var_1.e, false, var_1.e))))));
    var var_2 = Struct_2(!(!select(global3[_wgslsmith_index_u32(1u << (arg_0.b.x % 32u), 2u)], select(vec2<bool>(true, false), global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global2.e), var_1.e)), 7114u, var_1, vec3<bool>(true, _wgslsmith_f_op_f32(-var_1.c) > _wgslsmith_f_op_f32(-369f + 460f), var_1.d >= abs(var_1.a.x)), -22031i ^ -global2.a.x);
    var_2 = Struct_2(!vec2<bool>(global2.e, true), var_1.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 31u)], !vec3<bool>(global2.d >= var_1.d, (false || global2.e) && true, global2.e), var_1.d);
    return !var_2.d.x;
}

fn func_2() -> vec4<i32> {
    let var_0 = ~_wgslsmith_clamp_vec4_i32(~vec4<i32>(~2147483647i, -27154i, ~0i, global2.a.x), vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-483i, global2.d, 0i), -vec3<i32>(-24972i, global2.a.x, 1i)), _wgslsmith_div_i32(global2.a.x, 82674i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.d, -1i), global2.a.x & 2147483647i), 5646i), global2.a);
    var var_1 = !select(vec3<bool>(true, true, true), !vec3<bool>(all(global3[_wgslsmith_index_u32(global2.b.x, 2u)]), !global2.e, global2.e), !vec3<bool>(true && global2.e, true, global2.e));
    let var_2 = ~2805i;
    global2 = Struct_1(vec4<i32>(-21022i, _wgslsmith_clamp_i32(countOneBits(var_2), 1i >> (u_input.b.x % 32u), ~global2.d) ^ min(_wgslsmith_mod_i32(var_2, global2.d), -1i ^ global2.d), _wgslsmith_dot_vec3_i32(-var_0.wzw, global1[_wgslsmith_index_u32(4294967295u, 27u)] ^ var_0.zwz), _wgslsmith_div_i32(~(-4651i), -countOneBits(5917i))), firstLeadingBit(global2.b), -807f, 66503i, func_3(Struct_1(~global2.a, global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(869f))), var_0.x, true)));
    let var_3 = global2.b.yz;
    return var_0;
}

fn func_1(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = Struct_2(vec2<bool>(false, global2.e), 1u, Struct_1(func_2(), ~(~global2.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-298f - global2.c), _wgslsmith_f_op_f32(-671f + -1227f), !global2.e)), 1i, global2.e), select(vec3<bool>(~global2.d > global2.d, true, !(!global2.e)), vec3<bool>(!global2.e, !global2.e, !global2.e), global2.e), (-_wgslsmith_div_i32(0i, global2.a.x) ^ _wgslsmith_dot_vec3_i32(max(global1[_wgslsmith_index_u32(8030u, 27u)], global2.a.wwy), _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(arg_1, 27u)], global2.a.wyx))) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_0, 7942u), ~vec3<u32>(65106u, 0u, 17139u)) % 32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.b.x, global2.b.x);
    global3 = array<vec2<bool>, 2>();
    let var_1 = Struct_2(vec2<bool>(true, var_0), 26229u, global0[_wgslsmith_index_u32(0u, 31u)], !select(!vec3<bool>(global2.e, var_0, var_0), select(select(vec3<bool>(global2.e, true, false), vec3<bool>(var_0, false, global2.e), var_0), vec3<bool>(false, true, true), !global2.e), false), func_2().x);
    var var_2 = Struct_1(vec4<i32>(1i, func_2().x, -global2.a.x, ~_wgslsmith_sub_i32(abs(var_1.e), 0i)), min(reverseBits(~(global2.b << (vec3<u32>(15808u, global2.b.x, u_input.c.x) % vec3<u32>(32u)))), vec3<u32>(u_input.b.x, 0u, _wgslsmith_mult_u32(u_input.b.x, u_input.a) ^ global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-399f)), _wgslsmith_f_op_f32(trunc(global2.c))))))), -44483i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e, var_1.c.d, global2.d, -1i), _wgslsmith_mult_vec4_i32(~global2.a, countOneBits(global2.a))), true);
    global2 = global0[_wgslsmith_index_u32(var_1.b & u_input.b.x, 31u)];
    let var_3 = true;
    var_2 = var_1.c;
    let var_4 = Struct_1(func_2(), vec3<u32>(_wgslsmith_add_u32(global2.b.x, 37104u), var_2.b.x, _wgslsmith_mod_u32(~firstLeadingBit(7500u), ~1u)), var_1.c.c, 1i, !global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<i32>(var_1.c.d, global2.a.x, -45120i), vec3<i32>(global2.a.x, 2147483647i | var_4.d, 2147483647i), !var_1.d));
}

