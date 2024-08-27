struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(61466i, -23165i, i32(-2147483648), -27372i), vec4<i32>(17531i, i32(-2147483648), 1i, 5290i), vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec4<i32>(24529i, 47893i, 18590i, i32(-2147483648)), vec4<i32>(-55795i, 21123i, -4770i, -28602i), vec4<i32>(-3113i, -158i, i32(-2147483648), 57433i), vec4<i32>(0i, -1i, 2147483647i, -40863i), vec4<i32>(-1i, 4983i, 37721i, i32(-2147483648)), vec4<i32>(2147483647i, -19396i, 9254i, i32(-2147483648)), vec4<i32>(-45718i, i32(-2147483648), -8017i, -77572i), vec4<i32>(5027i, 0i, 1i, -1i), vec4<i32>(2147483647i, -46413i, 43476i, i32(-2147483648)), vec4<i32>(36312i, 45918i, 34975i, 40418i), vec4<i32>(40498i, 19910i, 2147483647i, -31234i), vec4<i32>(1i, -24882i, 2147483647i, 15258i), vec4<i32>(0i, 43926i, -1i, 1i), vec4<i32>(41802i, -1i, -5592i, -1i), vec4<i32>(-27719i, 1i, 5755i, -20998i), vec4<i32>(2147483647i, 1i, 0i, 45706i), vec4<i32>(-1i, 26472i, -23726i, 2147483647i), vec4<i32>(2147483647i, 75734i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 2147483647i, -66345i), vec4<i32>(12842i, 2147483647i, 0i, -43375i), vec4<i32>(-61554i, -33449i, i32(-2147483648), -32976i), vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(2147483647i, -1i, 63103i, 33771i), vec4<i32>(58588i, -20652i, 52357i, -39327i), vec4<i32>(1i, 0i, 2147483647i, -18245i), vec4<i32>(-1i, i32(-2147483648), 6179i, 1i), vec4<i32>(-25140i, -23364i, 0i, 0i));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-1839f), Struct_1(-477f), Struct_1(-214f), Struct_1(-696f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, ~select(1u, u_input.e, true) >> (4294967295u % 32u)), ~u_input.c), 4u)];
    global1 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_mult_vec4_u32(~u_input.d, vec4<u32>(4294967295u, ~select(41507u, 42030u, false), min(abs(0u), u_input.e), u_input.a)) ^ ~min(vec4<u32>(~139906u, 19038u, u_input.d.x << (35481u % 32u), u_input.d.x | 16983u), vec4<u32>(11636u, u_input.d.x, abs(4294967295u), u_input.c));
    var var_2 = 1f;
    let var_3 = var_1.wzx;
    return 1050f;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> i32 {
    let var_0 = u_input.b.yyz;
    global0 = array<vec4<i32>, 30>();
    var var_1 = select(!(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, true, true), -1i != u_input.b.x)), vec4<bool>((_wgslsmith_f_op_f32(func_3()) != _wgslsmith_f_op_f32(-538f - 341f)) && any(vec2<bool>(true, false)), false, max(u_input.b.x | u_input.b.x, 2147483647i) > (var_0.x ^ -6397i), !(all(vec2<bool>(false, false)) == all(vec2<bool>(false, true)))), !(u_input.c != firstLeadingBit(62862u)));
    global0 = array<vec4<i32>, 30>();
    return var_0.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> StorageBuffer {
    global1 = array<Struct_1, 4>();
    let var_0 = Struct_1(-476f);
    global1 = array<Struct_1, 4>();
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = -1i;
    return StorageBuffer(-(i32(-1i) * -31084i), u_input.e, u_input.b.zyw, _wgslsmith_f_op_vec3_f32(-arg_1), vec4<i32>(~u_input.b.x, -2147483647i, -1i, select(u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, func_2(28195u, Struct_1(arg_0.x))), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(1u), 4u)];
    let var_1 = -vec2<i32>(u_input.b.x, 1i);
    global1 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(763f)), _wgslsmith_f_op_f32(var_0.a + -388f), _wgslsmith_f_op_f32(step(var_0.a, -893f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-331f, var_0.a, var_0.a, -745f), vec4<f32>(var_0.a, -1452f, 515f, var_0.a)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2205f, 1027f, _wgslsmith_f_op_f32(trunc(var_0.a))))));
}

