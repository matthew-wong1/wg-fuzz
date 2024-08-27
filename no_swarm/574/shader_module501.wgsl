struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<f32>(-1000f, -1642f, 502f)), Struct_1(vec3<f32>(1103f, 1531f, -1343f)), Struct_1(vec3<f32>(324f, 1204f, -2366f)), Struct_1(vec3<f32>(760f, 1184f, 236f)), Struct_1(vec3<f32>(2348f, -986f, -425f)), Struct_1(vec3<f32>(383f, 651f, 776f)), Struct_1(vec3<f32>(454f, 475f, 1579f)), Struct_1(vec3<f32>(-370f, 1170f, -748f)), Struct_1(vec3<f32>(-413f, -452f, 109f)), Struct_1(vec3<f32>(1000f, 809f, 1200f)), Struct_1(vec3<f32>(281f, -985f, -1177f)), Struct_1(vec3<f32>(-1374f, -604f, -1203f)), Struct_1(vec3<f32>(-1349f, -357f, -2102f)), Struct_1(vec3<f32>(228f, 465f, -850f)), Struct_1(vec3<f32>(-681f, -1845f, -1009f)), Struct_1(vec3<f32>(393f, 1331f, -976f)), Struct_1(vec3<f32>(1000f, 2782f, -1149f)), Struct_1(vec3<f32>(237f, -794f, -623f)), Struct_1(vec3<f32>(756f, -638f, -625f)), Struct_1(vec3<f32>(1320f, 994f, 653f)), Struct_1(vec3<f32>(146f, -1000f, -427f)), Struct_1(vec3<f32>(784f, 999f, 825f)), Struct_1(vec3<f32>(1466f, 2136f, -739f)), Struct_1(vec3<f32>(1855f, 250f, 1231f)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = 67943u;
    var var_1 = Struct_4(true, vec2<u32>(~1u << (arg_1.b.x % 32u), arg_1.b.x));
    global0 = array<Struct_1, 24>();
    let var_2 = -2147483647i;
    global0 = array<Struct_1, 24>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, -1273f, 1310f), vec3<f32>(arg_0.x, -348f, 147f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -426f), arg_0.x, -277f)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_4(!(!(!all(vec3<bool>(true, arg_1.x, arg_1.x)))), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b ^ 2281u, _wgslsmith_dot_vec4_u32(vec4<u32>(1733u, 1u, u_input.b, u_input.b), vec4<u32>(73590u, 1u, 0u, u_input.b)))) & ~vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 14797u, 4294967295u), vec3<u32>(u_input.b, 59803u, u_input.b))));
    let var_1 = var_0.a;
    let var_2 = 1i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(f32(-1f) * -1462f))), _wgslsmith_f_op_f32(f32(-1f) * -848f), 1286f) - _wgslsmith_f_op_vec3_f32(-arg_3.b.a)));
    let var_4 = vec4<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(0u, var_0.b.x, var_0.b.x))), ~(~vec3<u32>(var_0.b.x, 1u, 2920u))), select(~(~134101u) << (abs(u_input.b) % 32u), 125890u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(var_0.b, vec2<u32>(4294967295u, 26589u))), (min(1u, 17974u) <= _wgslsmith_add_u32(1u, u_input.b)) & true), ~_wgslsmith_dot_vec3_u32(max(firstTrailingBit(vec3<u32>(u_input.b, 1u, u_input.b)), vec3<u32>(var_0.b.x, 4294967295u, 32315u)), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(var_0.b.x, 49910u, 3466u)), ~vec3<u32>(4294967295u, 0u, u_input.b))));
    return max(var_0.b, select(~_wgslsmith_mod_vec2_u32(var_4.xy, vec2<u32>(var_0.b.x, 29654u)), _wgslsmith_add_vec2_u32(firstTrailingBit(var_4.wz), ~vec2<u32>(var_4.x, var_4.x)), !(-1i <= var_2)) >> (var_4.ww % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_3(Struct_1(arg_2.a), 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_0.a.x, arg_0.a.x, 1771f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, -927f, -453f, arg_0.a.x)))))), func_2(vec2<f32>(-1196f, -185f), Struct_4(false, vec2<u32>(_wgslsmith_mult_u32(0u, arg_3), ~52507u)), ~(4128u ^ (arg_3 >> (14026u % 32u)))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d.a - vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(arg_2.a.x, arg_0.a.x), 499f))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x))), func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.c.x, arg_2.a.x), vec2<f32>(var_0.a.a.x, -397f), true)), Struct_4(false, vec2<u32>(u_input.b, arg_3)), ~u_input.b).a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, -1186f)), _wgslsmith_f_op_f32(-370f * arg_2.a.x))), Struct_1(arg_0.a));
    var_1 = Struct_3(Struct_1(vec3<f32>(arg_0.a.x, arg_2.a.x, _wgslsmith_f_op_f32(-101f * 1206f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2040f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1229f), _wgslsmith_f_op_f32(-672f + arg_2.a.x), _wgslsmith_f_op_f32(trunc(771f)), _wgslsmith_f_op_f32(floor(arg_0.a.x))), var_0.c)), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.a.a.yy * vec2<f32>(284f, arg_2.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 1458f) + vec2<f32>(var_1.b, var_0.c.x))))), Struct_4(false, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), func_3(vec2<i32>(-1i, u_input.c), vec2<bool>(false, true), arg_0.a, Struct_2(vec3<i32>(arg_1, 70191i, -2147483647i), Struct_1(var_1.a.a), Struct_1(arg_2.a), var_1.d.a.x)))), 60334u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1719f, _wgslsmith_f_op_f32(f32(-1f) * -1872f), arg_2.a.x, arg_0.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.c)) + var_0.c) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.c)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, var_1.a.a.x, arg_2.a.x, var_0.b), var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 90797u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, -1940f, -714f) + vec3<f32>(995f, 2037f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(304f, -1560f, -2699f), vec3<f32>(141f, -764f, -599f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(303f, -1351f, 359f))))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(0u, var_0, u_input.b) ^ vec3<u32>(u_input.b, 1u, var_0)), abs(vec3<u32>(u_input.b, u_input.b, u_input.b) << (~vec3<u32>(var_0, u_input.b, var_0) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(var_0, 24u)], 2147483647i, Struct_1(vec3<f32>(158f, 142f, 703f)), 33412u)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(185f, 480f, -222f, 298f), vec4<f32>(-1000f, 2409f, -951f, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-306f, 1040f, 1381f, 363f), vec4<f32>(-1569f, -1036f, 2225f, -857f)))))), max(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -12965i, u_input.a), vec3<i32>(23921i, 2147483647i, u_input.a)) >> (_wgslsmith_mod_u32(62981u, 1u >> (var_0 % 32u)) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(999f + _wgslsmith_f_op_f32(-843f + -521f))), _wgslsmith_f_op_vec4_f32(func_1(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(474f, 1065f), vec2<f32>(128f, 1000f))), Struct_4(true, vec2<u32>(var_0, 41184u)), countOneBits(72972u)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.c), firstLeadingBit(vec2<i32>(39188i, 0i))), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1155f, 216f)), Struct_4(false, vec2<u32>(0u, 16894u)), ~var_0), var_0)).x));
}

