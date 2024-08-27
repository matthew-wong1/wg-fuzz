struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global2: array<vec2<bool>, 19>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> vec3<f32> {
    var var_0 = 1u;
    let var_1 = ~9707i << ((arg_1.b.b << (arg_1.b.b % 32u)) % 32u);
    let var_2 = _wgslsmith_mult_vec3_u32(abs(countOneBits(firstTrailingBit(vec3<u32>(u_input.b, 9601u, 26984u)))), min(firstTrailingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(41519u, 0u, arg_1.b.b), vec3<u32>(1u, arg_1.b.b, u_input.b))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.b.b, u_input.b, u_input.b)), vec3<u32>(4294967295u, arg_1.c.b, arg_1.c.b)) | ~reverseBits(vec3<u32>(122139u, 4294967295u, arg_1.c.b))));
    var var_3 = arg_1.b.c.x;
    var_0 = 46255u;
    return arg_1.b.a.yzz;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global2 = array<vec2<bool>, 19>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.a.x, -109f, true)), 260f, arg_0.c.x, arg_2.c.a.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_2.c.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(arg_3, arg_0.a.x, arg_2.a, arg_2.c.c.x)), arg_1.c.a, vec4<bool>(true, true, true, true))))), 75492u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.b.c))));
    global2 = array<vec2<bool>, 19>();
    var var_1 = vec3<bool>((true && all(vec4<bool>(true, false, false, true))) && ((~4294967295u != arg_0.b) != true), all(!global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~arg_0.b), 19u)]), true);
    global0 = array<vec3<i32>, 14>();
    return arg_1.c;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: i32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -197f))), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), u_input.b, _wgslsmith_f_op_vec3_f32(func_2(~12899i, Struct_2(arg_0, Struct_1(arg_2, 24898u, vec3<f32>(1000f, arg_0, arg_0)), Struct_1(vec4<f32>(arg_0, 700f, 993f, arg_2.x), u_input.b, vec3<f32>(arg_2.x, arg_2.x, arg_2.x))), true))), Struct_2(-559f, Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, arg_0, -739f, -510f))), firstLeadingBit(0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -153f, -366f) * arg_2.yxw)), Struct_1(arg_2, 1u, arg_2.zyx)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + arg_0)), Struct_1(vec4<f32>(arg_2.x, -266f, arg_2.x, -1131f), u_input.b, _wgslsmith_f_op_vec3_f32(arg_2.wyz * vec3<f32>(arg_0, arg_2.x, arg_2.x))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-604f, 1440f, 808f, arg_0) - vec4<f32>(arg_0, -695f, -512f, -1374f)), ~4294967295u, _wgslsmith_f_op_vec3_f32(arg_2.www * vec3<f32>(arg_2.x, -311f, -315f)))), arg_0), func_3(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(arg_0, arg_2.x, arg_0, -1014f)), func_3(Struct_1(vec4<f32>(arg_0, arg_2.x, arg_2.x, arg_0), arg_1.x, arg_2.wzw), Struct_2(236f, Struct_1(vec4<f32>(-1407f, arg_0, arg_2.x, arg_2.x), arg_1.x, arg_2.yyy), Struct_1(vec4<f32>(118f, arg_0, -312f, -1000f), u_input.b, vec3<f32>(arg_0, arg_0, arg_2.x))), Struct_2(arg_2.x, Struct_1(vec4<f32>(arg_2.x, 225f, 173f, 546f), 0u, arg_2.wzz), Struct_1(arg_2, 10774u, arg_2.xww)), -401f).b, _wgslsmith_f_op_vec3_f32(-arg_2.xwx)), Struct_2(_wgslsmith_div_f32(1864f, arg_2.x), func_3(Struct_1(arg_2, 33467u, vec3<f32>(-574f, arg_2.x, arg_0)), Struct_2(arg_0, Struct_1(arg_2, 13668u, arg_2.wyy), Struct_1(vec4<f32>(arg_2.x, 1870f, arg_2.x, 1867f), arg_1.x, vec3<f32>(1528f, 748f, arg_0))), Struct_2(arg_2.x, Struct_1(vec4<f32>(-1737f, 367f, -1556f, 2882f), arg_1.x, arg_2.xwx), Struct_1(arg_2, arg_1.x, vec3<f32>(1921f, arg_0, arg_0))), arg_0), func_3(Struct_1(arg_2, arg_1.x, arg_2.xwy), Struct_2(-910f, Struct_1(vec4<f32>(-595f, -274f, 1578f, arg_0), u_input.b, arg_2.yyx), Struct_1(vec4<f32>(343f, arg_2.x, arg_0, 862f), u_input.b, vec3<f32>(317f, arg_0, arg_0))), Struct_2(-1118f, Struct_1(arg_2, 17189u, vec3<f32>(1767f, arg_2.x, 2012f)), Struct_1(arg_2, u_input.b, arg_2.zxz)), -777f)), Struct_2(_wgslsmith_f_op_f32(sign(-1459f)), Struct_1(vec4<f32>(arg_0, 121f, arg_0, arg_0), arg_1.x, vec3<f32>(800f, arg_2.x, -294f)), Struct_1(vec4<f32>(-1394f, arg_2.x, -857f, -2201f), arg_1.x, vec3<f32>(arg_2.x, arg_2.x, -249f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 * -325f)))), Struct_2(arg_2.x, func_3(func_3(Struct_1(vec4<f32>(-555f, 1000f, 666f, -1313f), 3144u, vec3<f32>(1292f, 422f, arg_0)), Struct_2(arg_2.x, Struct_1(arg_2, 1u, vec3<f32>(237f, -1687f, 574f)), Struct_1(vec4<f32>(arg_0, arg_0, arg_2.x, -240f), 57478u, vec3<f32>(942f, -240f, 277f))), Struct_2(arg_0, Struct_1(vec4<f32>(arg_0, arg_0, -2430f, -1196f), 63528u, arg_2.wzw), Struct_1(vec4<f32>(931f, arg_0, 1524f, -983f), arg_1.x, vec3<f32>(arg_2.x, 511f, -720f))), -931f), Struct_2(-1226f, Struct_1(vec4<f32>(-236f, 1000f, arg_0, 1545f), 4294967295u, vec3<f32>(arg_0, -1334f, arg_2.x)), Struct_1(arg_2, 4294967295u, arg_2.wxz)), Struct_2(arg_0, Struct_1(vec4<f32>(-1219f, arg_0, arg_2.x, arg_0), u_input.b, arg_2.wxx), Struct_1(arg_2, 4294967295u, arg_2.wxx)), arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -277f, -805f)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 15124u, arg_1.x), vec4<u32>(u_input.b, arg_1.x, arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.x, 795f, arg_2.x))))), Struct_2(_wgslsmith_f_op_f32(1431f + 815f), Struct_1(arg_2, _wgslsmith_clamp_u32(u_input.b, arg_1.x, 17776u), arg_2.wwy), func_3(Struct_1(arg_2, 0u, vec3<f32>(arg_2.x, -999f, arg_0)), Struct_2(-972f, Struct_1(vec4<f32>(arg_2.x, arg_2.x, -1000f, arg_2.x), 0u, arg_2.wyz), Struct_1(arg_2, 46973u, vec3<f32>(arg_0, 1548f, arg_2.x))), Struct_2(arg_2.x, Struct_1(vec4<f32>(arg_2.x, 854f, -989f, arg_2.x), u_input.b, vec3<f32>(arg_2.x, -267f, -1000f)), Struct_1(vec4<f32>(arg_2.x, 1748f, arg_2.x, 404f), 4294967295u, arg_2.zwy)), arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f * 724f)), _wgslsmith_f_op_f32(ceil(-669f)))));
    let var_1 = ~(global0[_wgslsmith_index_u32(reverseBits(0u), 14u)] | abs(min(vec3<i32>(20566i, 3227i, -1105i), ~global0[_wgslsmith_index_u32(u_input.b, 14u)])));
    var var_2 = vec3<bool>(!(!all(global1[_wgslsmith_index_u32(~u_input.b, 16u)])), true, !(!select(true, true, true) && true));
    let var_3 = arg_2.x;
    var var_4 = abs(~(vec4<u32>(0u, ~3882u, 1u, 13932u) ^ (~vec4<u32>(6132u, 94330u, 46547u, 0u) << (abs(vec4<u32>(0u, 1u, 21206u, arg_1.x)) % vec4<u32>(32u)))));
    return _wgslsmith_mod_u32(reverseBits(1u | (arg_1.x | var_0.c.b)) | arg_1.x, min(~_wgslsmith_dot_vec3_u32(vec3<u32>(32421u, 59353u, 39372u), var_4.zzy), firstLeadingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1000f, -407f, true)), _wgslsmith_div_f32(-1529f, 344f))))), ~vec2<u32>(_wgslsmith_sub_u32(0u, u_input.b), func_1(565f, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 8031u, 53267u), vec3<u32>(u_input.b, 26595u, 4294967295u)), vec4<f32>(676f, 1629f, 249f, 982f), _wgslsmith_sub_i32(-66196i, u_input.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-371f, -1002f)) + _wgslsmith_f_op_f32(f32(-1f) * -968f))), 1270f)), max(vec3<u32>(11317u, 4294967295u, 58940u) ^ ~vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(u_input.b, 1u, u_input.b) << (vec3<u32>(u_input.b, 11159u, u_input.b) % vec3<u32>(32u))) ^ vec3<u32>(~func_1(-196f, vec3<u32>(u_input.b, 0u, 4294967295u), vec4<f32>(-603f, -993f, -2704f, 427f), u_input.c), 0u, reverseBits(~1u)));
}

