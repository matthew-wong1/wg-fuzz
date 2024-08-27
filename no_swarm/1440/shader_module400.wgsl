struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(1247f, 1000f), vec2<f32>(-545f, -672f), vec2<f32>(652f, -317f), vec2<f32>(1200f, -278f), vec2<f32>(291f, 1945f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    let var_0 = vec2<f32>(177f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -740f)))));
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    return arg_0.b;
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<f32>, 5>();
    let var_0 = -(~_wgslsmith_mult_i32(2147483647i, u_input.d));
    var var_1 = 525f;
    var_1 = 632f;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1860f, 846f, -2725f, 362f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 999f, -268f, 902f) * vec4<f32>(784f, 403f, 323f, 653f))), vec4<f32>(1f, 1f, 1f, 1f), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1541f, 365f, -1348f, -1204f), vec4<f32>(-1218f, -1029f, -840f, 122f), false)) + vec4<f32>(419f, 781f, -761f, -802f)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1799f, 1575f, 813f, 1145f))))) * vec4<f32>(-2230f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-976f)), _wgslsmith_f_op_f32(731f - -368f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1890f)), _wgslsmith_f_op_f32(f32(-1f) * -657f), false)), -1006f)), any(vec3<bool>(false, !any(vec3<bool>(true, true, true)), true)));
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.b, vec4<f32>(-1000f, 236f, var_2.b.x, -1006f), vec4<bool>(var_2.c, var_2.c, false, var_2.c)))), var_2.b, true)), vec4<f32>(var_2.b.x, -434f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1889f)), _wgslsmith_f_op_f32(var_2.a.x * -881f), any(vec4<bool>(var_2.c, true, var_2.c, true)))), var_2.b.x), var_2.c), var_2, var_2);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = u_input.e.yww;
    var var_1 = func_2();
    let var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32((~vec4<u32>(arg_3, 1u, 0u, arg_3) & ~vec4<u32>(0u, 11627u, 7051u, 76415u)) | vec4<u32>(arg_3, arg_3, max(9900u, arg_3), abs(arg_3)), firstTrailingBit(vec4<u32>(109075u, 4294967295u, countOneBits(38554u), arg_3))), min(arg_3, select(arg_3, arg_3, true)), _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3, 0u), abs(vec2<u32>(arg_3, 1u))), reverseBits(vec2<u32>(arg_3, 48336u)))));
    let var_3 = var_2.x;
    global0 = array<vec2<f32>, 5>();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(20719u, 41639u, 61888u, 1u)), vec4<u32>(1u, 1u, 1u, 1u) ^ select(~vec4<u32>(34863u, 1u, 17341u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 7666u, 32120u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), func_1(Struct_3(Struct_2(vec4<f32>(-1000f, 2006f, 682f, -301f), vec4<f32>(444f, -1962f, 875f, -679f), true), Struct_2(vec4<f32>(-832f, 732f, 779f, 1251f), vec4<f32>(1000f, 1000f, -162f, -1598f), true), Struct_2(vec4<f32>(210f, -696f, 1465f, 676f), vec4<f32>(872f, -305f, -108f, 104f), false)), Struct_3(Struct_2(vec4<f32>(-596f, 800f, 1107f, 903f), vec4<f32>(-965f, 575f, -717f, -228f), false), Struct_2(vec4<f32>(2037f, 901f, -455f, 912f), vec4<f32>(1026f, -388f, 748f, -1946f), false), Struct_2(vec4<f32>(-722f, 339f, -410f, 684f), vec4<f32>(-940f, 1761f, 1214f, -984f), true)), Struct_2(vec4<f32>(-1349f, 802f, 296f, -1167f), vec4<f32>(-477f, -325f, 1000f, 776f), false), 5471u))));
    global0 = array<vec2<f32>, 5>();
    let var_1 = !(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(907f)))) != _wgslsmith_f_op_f32(f32(-1f) * -295f)));
    let var_2 = Struct_1(u_input.c, -659f, firstTrailingBit(var_0), ~(~(_wgslsmith_add_vec3_u32(vec3<u32>(var_0, 13992u, 4294967295u), vec3<u32>(5486u, var_0, 85184u)) << (~vec3<u32>(var_0, var_0, 11418u) % vec3<u32>(32u)))), firstLeadingBit(vec3<u32>(var_0, 4294967295u, reverseBits(0u) ^ ~var_0)));
    global0 = array<vec2<f32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec2_i32(max(var_2.a, u_input.c), var_2.a), countOneBits(_wgslsmith_dot_vec3_i32(max(u_input.e.xxz, vec3<i32>(-21133i, var_2.a.x, u_input.b)), countOneBits(vec3<i32>(u_input.c.x, var_2.a.x, u_input.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
}

