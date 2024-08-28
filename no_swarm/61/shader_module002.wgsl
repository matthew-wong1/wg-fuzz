struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, true, false);

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(1i, 1i, 51434i));

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> i32 {
    let var_0 = vec4<bool>(!(global2.b.x & global2.b.x), false, arg_1.x > _wgslsmith_clamp_u32(83979u, 0u, abs(firstLeadingBit(global2.c))), any(!(!select(arg_0.a, vec2<bool>(global2.b.x, true), false))));
    let var_1 = ~_wgslsmith_mod_vec3_u32(firstLeadingBit(abs(~arg_1)), ~min(countOneBits(vec3<u32>(global2.c, 4294967295u, global2.d.x)), vec3<u32>(u_input.b.x, 0u, 1164u)));
    global1 = array<vec3<i32>, 1>();
    let var_2 = abs(vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(u_input.d.wzz, _wgslsmith_div_vec3_u32(global2.d ^ global2.d, firstLeadingBit(vec3<u32>(0u, arg_1.x, 7209u)))), 34532u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.yy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-593f, -846f)))));
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> vec4<f32> {
    var var_0 = 1u;
    var var_1 = vec4<bool>(!select(false, true, u_input.a >= ~u_input.a), global0[_wgslsmith_index_u32(u_input.c, 4u)], !all(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.c, 4u)], any(vec3<bool>(global2.b.x, arg_1.x, true)), global2.b.x, all(global2.b.yx))), _wgslsmith_mod_i32(~min(-1i, -32984i), firstTrailingBit(_wgslsmith_mult_i32(2147483647i, u_input.a))) != func_3(Struct_2(vec2<bool>(global2.b.x, true), vec3<bool>(global2.b.x, arg_1.x, global2.b.x)), vec3<u32>(1u, 44174u, 4294967295u)));
    let var_2 = abs(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(20849u, 1u)], global1[_wgslsmith_index_u32(1u, 1u)]), vec3<i32>(1i, 1i, 1i)), max(reverseBits(6763i), u_input.a >> (arg_3 % 32u)))) & -39590i;
    var var_3 = _wgslsmith_add_i32(~(-12236i), 1i);
    var_0 = reverseBits(1u);
    return vec4<f32>(_wgslsmith_f_op_f32(-1375f * arg_0), -1659f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), arg_2);
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 4>();
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f)), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], true && global2.b.x), _wgslsmith_f_op_f32(2272f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.x)))), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 28768u, u_input.d.x), u_input.d.ywz), global2.d))), select(global2.b, vec3<bool>(!global0[_wgslsmith_index_u32(u_input.d.x, 4u)], true, global2.b.x), global2.b), global2.d.x, _wgslsmith_sub_vec3_u32(firstLeadingBit(~global2.d), abs(u_input.d.yzw)));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global2.a, vec4<f32>(global2.a.x, global2.a.x, 1204f, global2.a.x)))))), global2.b, ~1u, u_input.b.zzz);
    var var_0 = Struct_2(vec2<bool>(true, true), vec3<bool>(!all(select(global2.b.yy, global2.b.xy, false)), any(vec2<bool>(!global2.b.x, true)), all(vec2<bool>(true, false & global0[_wgslsmith_index_u32(u_input.d.x, 4u)]))));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, global2.a.x) + _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global2.a.wzz * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, 2375f))))))));
    return Struct_2(var_0.a, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global2.d.x, global2.d, -1315f, func_1());
    let var_1 = !vec4<bool>(true, true, func_1().b.x, global2.b.x);
    var var_2 = func_1();
    var var_3 = ~global2.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(reverseBits(global1[_wgslsmith_index_u32(~u_input.d.x, 1u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 4294967295u), 32834u << (global2.d.x % 32u)), u_input.d.zx ^ vec2<u32>(var_0.b.x, 1u)), 1u)], abs(firstTrailingBit(vec3<i32>(-3999i, u_input.a, u_input.a)))), -7561i);
}

