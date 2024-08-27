struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(252f, -108f, 1397f, 1078f), vec4<f32>(-2708f, -1974f, 1556f, -934f), vec4<f32>(2542f, 1528f, 525f, -1000f), vec4<f32>(1116f, -571f, 162f, -255f), vec4<f32>(-184f, 660f, 1000f, 162f), vec4<f32>(-1365f, 460f, -672f, -1362f), vec4<f32>(-814f, -236f, 162f, 982f), vec4<f32>(1000f, 839f, 670f, -470f), vec4<f32>(-456f, 1521f, -794f, -1620f), vec4<f32>(326f, -651f, 1254f, -369f), vec4<f32>(1176f, 1109f, -1000f, 722f), vec4<f32>(1122f, 171f, -597f, -1853f), vec4<f32>(452f, -1211f, -1000f, 1374f), vec4<f32>(291f, 278f, -1241f, -1083f), vec4<f32>(1596f, 1095f, 239f, 1806f));

var<private> global1: array<u32, 17> = array<u32, 17>(18915u, 1u, 30568u, 48683u, 63461u, 4294967295u, 0u, 4294967295u, 8591u, 0u, 16463u, 6036u, 74789u, 4294967295u, 48683u, 1u, 4294967295u);

var<private> global2: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)));
    var var_1 = !select(vec4<bool>(true, true, !any(vec2<bool>(true, true)), false), select(vec4<bool>(true, all(vec3<bool>(true, false, true)), select(true, var_0.x, var_0.x), any(global2[_wgslsmith_index_u32(41146u, 28u)])), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), !vec4<bool>(false, false, false, var_0.x), !var_0.x), true), select(vec4<bool>(true, true, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), var_0.x));
    global2 = array<vec2<bool>, 28>();
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -121f), -406f)))) < _wgslsmith_f_op_f32(f32(-1f) * -664f);
    let var_3 = Struct_1(!(!var_0.x), global0[_wgslsmith_index_u32(~(~u_input.b), 15u)], 41915u);
    return _wgslsmith_f_op_f32(-var_3.b.x);
}

fn func_2(arg_0: i32) -> Struct_5 {
    var var_0 = Struct_4(162f, Struct_3(reverseBits(arg_0), global2[_wgslsmith_index_u32(15338u, 28u)]), (_wgslsmith_sub_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(90513u, 17u)], 4294967295u, 50310u) ^ u_input.a.zxx, ~u_input.a.wzx) & _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.zyz, vec3<u32>(global1[_wgslsmith_index_u32(9010u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 5316u)), ~u_input.a.zyw)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36747u, 17u)], 17u)]), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 51067u), u_input.a.zzx)), Struct_1(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(334f * 1000f)), -1306f, _wgslsmith_f_op_f32(764f + _wgslsmith_f_op_f32(min(-528f, 1040f))), _wgslsmith_f_op_f32(func_3())), firstTrailingBit(u_input.c)));
    global2 = array<vec2<bool>, 28>();
    var_0 = Struct_4(_wgslsmith_f_op_f32(-var_0.d.b.x), Struct_3(~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.xz, u_input.d.ww), 0i), vec2<bool>(all(!vec4<bool>(true, var_0.b.b.x, var_0.d.a, false)), !all(vec4<bool>(var_0.b.b.x, var_0.b.b.x, true, false)))), firstTrailingBit(vec3<u32>(31674u, _wgslsmith_mod_u32(min(u_input.c, 29109u), u_input.b), abs(var_0.d.c))), Struct_1(false, _wgslsmith_f_op_vec4_f32(-var_0.d.b), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.d.c, 28485u, u_input.a.x), u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(53387u, 17u)], global1[_wgslsmith_index_u32(0u, 17u)], 0u), 17u)]), global1[_wgslsmith_index_u32(max(52173u, u_input.b), 17u)] & _wgslsmith_div_u32(3245u, 4294967295u))));
    var_0 = Struct_4(var_0.a, Struct_3(0i, var_0.b.b), select(_wgslsmith_add_vec3_u32((vec3<u32>(var_0.d.c, 30591u, global1[_wgslsmith_index_u32(1u, 17u)]) & vec3<u32>(15126u, u_input.b, var_0.d.c)) | ~var_0.c, _wgslsmith_sub_vec3_u32(~u_input.a.wyx, u_input.a.xxw)), vec3<u32>(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(18378u, 17u)], global1[_wgslsmith_index_u32(~27332u, 17u)]), ~(4294967295u ^ u_input.a.x), 1u), !select(!vec3<bool>(var_0.b.b.x, var_0.d.a, true), !vec3<bool>(true, var_0.d.a, false), select(vec3<bool>(var_0.d.a, true, true), vec3<bool>(true, true, var_0.d.a), true))), var_0.d);
    var var_1 = var_0.d;
    return Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(var_1.b.yyx, var_1.b.wyy)))) * _wgslsmith_f_op_vec3_f32(select(var_0.d.b.wyy, vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), 1000f, _wgslsmith_f_op_f32(368f * 1520f)), var_0.d.a))), var_0.d);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>) -> Struct_5 {
    var var_0 = false;
    global1 = array<u32, 17>();
    let var_1 = vec3<bool>((1u < _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 17u)], 18022u, 1u, 1u), countOneBits(u_input.a))) & !(1000f == arg_2.x), true, true);
    let var_2 = arg_1.wz;
    global0 = array<vec4<f32>, 15>();
    return func_2(arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 15>();
    global2 = array<vec2<bool>, 28>();
    let var_0 = Struct_3(13461i, !(!global2[_wgslsmith_index_u32(firstLeadingBit(select(21002u, u_input.b, true)), 28u)]));
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~var_0.a, 0i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~(-u_input.d.wz), u_input.d.zx), ~(-13470i)));
    global1 = array<u32, 17>();
    let var_2 = func_1(~(_wgslsmith_div_vec3_u32(~u_input.a.xxx, _wgslsmith_div_vec3_u32(u_input.a.yzx, u_input.a.yyx)) >> (abs(u_input.a.zyy | u_input.a.xyz) % vec3<u32>(32u))), vec4<i32>(-1i) * -u_input.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2327f, -761f, 1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-515f, -1717f, 257f) * vec3<f32>(1924f, 533f, 468f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(874f, 1305f, 816f) + vec3<f32>(652f, 952f, -1243f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1002f, 189f, 949f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x, var_2.b.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - 1f))), 784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.b.x - 231f), _wgslsmith_f_op_f32(-var_2.b.b.x)) >= _wgslsmith_f_op_f32(floor(var_2.a.x)))));
}

