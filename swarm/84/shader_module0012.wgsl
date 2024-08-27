struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32> = array<i32, 32>(-38727i, 1i, 16835i, -22634i, -16971i, i32(-2147483648), 2147483647i, i32(-2147483648), 21278i, 0i, 2147483647i, i32(-2147483648), -1i, -6854i, i32(-2147483648), 18896i, 1i, i32(-2147483648), 0i, -1i, 2147483647i, 25308i, 8321i, -1i, -1i, 6060i, 0i, 1i, i32(-2147483648), 1i, 2147483647i, -1i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(128f + 679f))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_5 {
    global0 = array<i32, 32>();
    return Struct_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-918f)))))), vec3<u32>(4294967295u, abs(u_input.a), _wgslsmith_mult_u32(u_input.a, 87367u)));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> Struct_2 {
    global0 = array<i32, 32>();
    let var_0 = arg_1;
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    let var_1 = all(select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), vec2<bool>(true, true), false), select(vec2<bool>(true, any(vec3<bool>(true, false, true))), vec2<bool>(true, true), true), select(true, select(true, true, false), true) && true));
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-974f, var_0.a)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)))));
}

fn func_1() -> f32 {
    var var_0 = func_4(firstLeadingBit(select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx), ~0u), 32u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -24502i), ~vec2<i32>(2147483647i, 1i)), true)), func_3(func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(675f - 774f), _wgslsmith_f_op_f32(-252f - -1262f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-750f, 1674f))))));
    var var_1 = vec4<i32>(28779i, ~global0[_wgslsmith_index_u32(u_input.a, 32u)], ~(-22372i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(21891i, -20662i, global0[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<i32>(-49371i, global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)])), ~vec3<i32>(-13658i, -32632i, 2147483647i)), global0[_wgslsmith_index_u32(53058u, 32u)]) >> ((u_input.b.x ^ ~u_input.b.x) % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(-556f - var_0.a.x), 1000f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), _wgslsmith_f_op_f32(620f - var_0.a.x), 1083f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(2078f, -798f, var_0.a.x) * vec3<f32>(var_0.a.x, var_0.a.x, -1896f)), _wgslsmith_div_vec3_f32(vec3<f32>(256f, var_0.a.x, var_0.a.x), vec3<f32>(var_0.a.x, var_0.a.x, 2424f)))))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, -387f, 644f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -1292f, var_0.a.x) + vec3<f32>(1457f, var_0.a.x, 590f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, var_2.x, 589f), vec3<f32>(var_2.x, var_2.x, 1067f)))), vec3<f32>(-2723f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_0.a.x)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2037f, var_2.x, var_2.x), vec3<f32>(var_3.x, -975f, -938f), false)))), vec3<f32>(func_3(Struct_1(693f), _wgslsmith_f_op_vec2_f32(var_3.xy - vec2<f32>(-189f, 648f))).a, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1487f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), 937f, var_0.a.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1835f, -258f, 319f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1559f, var_3.x, var_0.a.x), vec3<f32>(var_2.x, 480f, -398f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1471f, -642f)), vec3<bool>(false, true, false))))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-_wgslsmith_add_i32(-1i >> (1u % 32u), global0[_wgslsmith_index_u32(~29170u, 32u)] ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(u_input.a, 32u)], -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(94004u, 32u)], global0[_wgslsmith_index_u32(0u, 32u)], -18042i))));
    var_0 = 56793i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-292f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), -142f))) - -2515f));
    let var_2 = func_3(func_2(), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1138f, var_1), _wgslsmith_div_vec2_f32(vec2<f32>(2205f, -2229f), vec2<f32>(var_1, -325f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, -537f))))) + vec2<f32>(var_1, 346f)));
    var_0 = ~(~abs(2147483647i));
    var_0 = global0[_wgslsmith_index_u32(30807u, 32u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 * func_4(-53406i, var_2).a.x), _wgslsmith_div_f32(var_2.a, var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f))) + vec3<f32>(var_2.a, func_3(func_2(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 1184f), vec2<f32>(var_2.a, 260f), false)))).a, var_1));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f * var_2.a)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - 581f) - _wgslsmith_f_op_f32(-var_4.a)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(func_3(Struct_1(-1000f), var_3.xy).a, -189f)), 850f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, var_1) + _wgslsmith_div_f32(658f, _wgslsmith_f_op_f32(ceil(777f))))));
}

