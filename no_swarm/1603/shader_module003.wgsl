struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 11>;

var<private> global2: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<i32>(20611i, 2147483647i, 46165i, 38218i), vec4<i32>(2147483647i, 70724i, 0i, 30930i), vec4<i32>(88925i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 2147483647i, 25524i, 4103i), vec4<i32>(-10683i, 29384i, 3109i, 2147483647i), vec4<i32>(-3465i, -9503i, -1i, 1i), vec4<i32>(i32(-2147483648), -1i, -14254i, 17520i), vec4<i32>(-21608i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(0i, 1i, i32(-2147483648), 53040i), vec4<i32>(2147483647i, -16931i, 0i, i32(-2147483648)), vec4<i32>(71999i, -1i, -23239i, 9098i), vec4<i32>(i32(-2147483648), 0i, -53753i, -1i), vec4<i32>(159i, 11261i, -43325i, 0i), vec4<i32>(-1i, -1i, -1i, -31579i), vec4<i32>(3977i, 64663i, -25064i, -60616i), vec4<i32>(3685i, 0i, 24202i, 33968i), vec4<i32>(-41527i, 13441i, -11424i, -90070i), vec4<i32>(2147483647i, 0i, -38633i, -16692i), vec4<i32>(1i, -36153i, -21943i, 2147483647i), vec4<i32>(10136i, -23841i, 29810i, -15737i), vec4<i32>(21552i, 2147483647i, 1804i, 1i), vec4<i32>(1i, 1i, 7800i, 1i), vec4<i32>(-1i, -6362i, i32(-2147483648), 6894i), vec4<i32>(-15168i, 25795i, -1i, 48231i), vec4<i32>(-4135i, 0i, -32114i, 0i), vec4<i32>(-1i, 2147483647i, -1459i, -1i), vec4<i32>(20146i, 1527i, 0i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * vec2<f32>(arg_1.x, arg_1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-397f * arg_1.x), arg_1.x))), arg_1.x);
    let var_1 = 0i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-445f, 1270f)))), 1650f);
    var var_3 = select(select(vec4<bool>(true, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(1u, 11u)], 0u) > u_input.a.x, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-29840i, arg_0, -12087i, -2147483647i), vec4<i32>(u_input.c.x, -1i, 1i, arg_0)) >= arg_0, true, !all(vec4<bool>(false, false, true, false))), vec4<bool>(select(true, true, true), all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, select(true, false, true) == true)), !vec4<bool>(all(vec3<bool>(true, false, true)) || select(true, true, false), !any(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(false, true))), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), select(true, true, !(-838f <= arg_1.x))));
    global0 = true;
    return 1u;
}

fn func_2() -> Struct_1 {
    var var_0 = ~vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], func_3(u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, 246f, -1948f))), ~global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), 11u)], _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)])), abs(~u_input.a.yz)));
    global2 = array<vec4<i32>, 29>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1001f), _wgslsmith_f_op_f32(1000f - -1194f))))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(540f)) * 1169f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-337f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1789f - -503f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(140f - -1512f)))));
    var_0 = abs(vec4<u32>(4294967295u, 4294967295u, 1u, ~(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 11u)] << (u_input.a.x % 32u))));
    let var_2 = abs(_wgslsmith_dot_vec4_u32(select(vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u, 11u)], ~1u, ~u_input.a.x, ~4294967295u), firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 1u, 14045u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 11u)], 11u)]), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false))), vec4<u32>(~_wgslsmith_dot_vec3_u32(var_0.xxy, vec3<u32>(var_0.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), u_input.a.x, ~1u, _wgslsmith_add_u32(~u_input.a.x, ~1u))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_1.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = ~0u;
    let var_1 = vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, _wgslsmith_div_i32(72280i | (10691i >> (global1[_wgslsmith_index_u32(~1u, 11u)] % 32u)), _wgslsmith_mult_i32(u_input.d, 11462i)));
    global1 = array<u32, 11>();
    var var_2 = arg_0;
    var var_3 = abs(~arg_1.x);
    return Struct_2(~13213i);
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = func_4(func_2(), u_input.a);
    global0 = true;
    let var_1 = countOneBits(~(max(1u << (u_input.a.x % 32u), 13694u) & firstLeadingBit(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 11u)], 1u))));
    global2 = array<vec4<i32>, 29>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-404f, -1469f), _wgslsmith_f_op_f32(floor(-705f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(359f, -922f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1774f, -1024f), vec2<f32>(720f, 200f), vec2<bool>(arg_0.x, false)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1293f, -1192f) * vec2<f32>(-1365f, -154f)), vec2<f32>(1208f, -560f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(977f + 1000f)), -264f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, func_2().b) + _wgslsmith_f_op_f32(step(-917f, 908f)))));
    return Struct_2(abs(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    global0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 368f))), 1000f))));
    var var_2 = func_1(vec3<bool>(!(true | (u_input.a.x == global1[_wgslsmith_index_u32(0u, 11u)])), any(vec4<bool>(true, true, true, true)), true));
    global1 = array<u32, 11>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(u_input.a), ~u_input.a), u_input.a ^ ~vec3<u32>(u_input.a.x, 1u, 4294967295u)), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-625f, var_1.x, 1422f, 360f) * vec4<f32>(var_1.x, var_1.x, -550f, 775f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1209f, var_1.x, var_1.x, -1381f) + vec4<f32>(var_1.x, var_1.x, 1083f, -192f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, 1000f, var_1.x) * vec4<f32>(var_1.x, var_1.x, -997f, var_1.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, -1383f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -753f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -187f))))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 323f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -741f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-832f, _wgslsmith_f_op_f32(929f - var_1.x), 710f))))), u_input.b.x);
}

