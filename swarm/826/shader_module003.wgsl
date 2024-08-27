struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<f32>(-822f, -182f, 1157f, -360f), false, -81413i, vec2<bool>(true, false), 945f), Struct_1(vec4<f32>(1644f, 262f, -1137f, -666f), false, 2147483647i, vec2<bool>(true, true), 1360f), Struct_1(vec4<f32>(-1000f, -433f, -660f, -271f), true, 7061i, vec2<bool>(true, true), 947f), Struct_1(vec4<f32>(-330f, 772f, 450f, -1796f), true, -8589i, vec2<bool>(false, false), 820f), Struct_1(vec4<f32>(-751f, 1001f, -451f, -722f), true, -21406i, vec2<bool>(false, false), 1165f), Struct_1(vec4<f32>(-343f, 196f, -1546f, -1350f), true, -15583i, vec2<bool>(false, false), 507f), Struct_1(vec4<f32>(-2263f, 2130f, -2524f, -1000f), false, 0i, vec2<bool>(false, true), -483f), Struct_1(vec4<f32>(1000f, 788f, -186f, -202f), true, 44035i, vec2<bool>(true, false), 3280f), Struct_1(vec4<f32>(-649f, -291f, -533f, 1075f), false, i32(-2147483648), vec2<bool>(false, false), -120f), Struct_1(vec4<f32>(249f, 784f, -457f, -1000f), false, 61026i, vec2<bool>(false, false), -1000f), Struct_1(vec4<f32>(1000f, -1518f, -847f, 1989f), true, -42729i, vec2<bool>(true, false), 1000f), Struct_1(vec4<f32>(-1000f, -971f, 1070f, -1541f), false, 0i, vec2<bool>(true, true), 654f), Struct_1(vec4<f32>(1000f, 1884f, -661f, 312f), true, i32(-2147483648), vec2<bool>(false, false), -1476f), Struct_1(vec4<f32>(1059f, 136f, -1195f, 1862f), false, 0i, vec2<bool>(true, true), 623f), Struct_1(vec4<f32>(-245f, 944f, 609f, -496f), true, i32(-2147483648), vec2<bool>(true, true), 2749f), Struct_1(vec4<f32>(222f, -983f, -1106f, 1298f), true, 0i, vec2<bool>(false, false), 660f), Struct_1(vec4<f32>(-376f, -1000f, -617f, -592f), false, 2147483647i, vec2<bool>(false, true), 128f), Struct_1(vec4<f32>(-1887f, 1000f, -1172f, -886f), true, 36018i, vec2<bool>(true, true), 776f), Struct_1(vec4<f32>(1308f, -433f, 643f, -802f), false, 16954i, vec2<bool>(false, true), -238f), Struct_1(vec4<f32>(-364f, -208f, -1563f, 1000f), true, 21571i, vec2<bool>(false, false), -1505f), Struct_1(vec4<f32>(965f, -202f, 205f, -795f), false, -9749i, vec2<bool>(false, false), 1847f), Struct_1(vec4<f32>(-494f, 1000f, 914f, -155f), false, 59925i, vec2<bool>(false, false), -1643f), Struct_1(vec4<f32>(225f, -229f, 534f, -773f), true, -5763i, vec2<bool>(true, false), 1000f), Struct_1(vec4<f32>(203f, -1179f, 436f, -175f), true, -1i, vec2<bool>(false, true), -858f));

var<private> global3: vec3<f32> = vec3<f32>(1000f, 981f, -987f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<vec3<i32>, 2>();
    let var_0 = _wgslsmith_f_op_vec4_f32(round(global1.a));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = 11264i;
    var var_1 = -3448i;
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1429f, 1568f)), global1.a.x), _wgslsmith_f_op_vec3_f32(min(arg_3.a.wwx, _wgslsmith_div_vec3_f32(vec3<f32>(1091f, global1.e, -495f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.e, -697f, global3.x) - vec3<f32>(1109f, 739f, 705f)))))));
    let var_2 = func_2(global2[_wgslsmith_index_u32(14062u, 24u)], _wgslsmith_f_op_vec2_f32(-arg_3.a.zy));
    global3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2)));
    return u_input.d.zy;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>) -> u32 {
    global3 = _wgslsmith_f_op_vec3_f32(func_2(func_2(Struct_1(global1.a, !global1.b, -2147483647i, vec2<bool>(arg_1.x, arg_1.x), 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global3.x) + global3.yy)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(557f, -824f)))))).a.zxx * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.wyw)), _wgslsmith_f_op_vec3_f32(-global1.a.xzx))));
    let var_0 = u_input.a.xww;
    global2 = array<Struct_1, 24>();
    var var_1 = vec3<u32>(0u, _wgslsmith_mod_u32(arg_0.x, _wgslsmith_clamp_u32(~0u, arg_0.x, 65852u)) & arg_0.x, 1u);
    var var_2 = ~min(abs(arg_0.xzy << (vec3<u32>(u_input.c, var_1.x, 1u) % vec3<u32>(32u))), u_input.d);
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec2<u32>(~_wgslsmith_clamp_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.b, u_input.c), vec4<u32>(1u, 5600u, u_input.d.x, 0u)), min(4294967295u, 5401u)), 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>((u_input.d.x ^ u_input.c) >> (4294967295u % 32u), u_input.d.x >> (u_input.d.x % 32u)), _wgslsmith_mult_vec2_u32(u_input.d.yx, u_input.d.xy)));
    global2 = array<Struct_1, 24>();
    var_0 = ~_wgslsmith_div_vec2_u32(u_input.d.zy, max(func_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(25111u, u_input.b), 24u)], vec4<u32>(0u, 0u, 4294967295u, u_input.d.x) << (vec4<u32>(u_input.d.x, 1u, u_input.b, var_0.x) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(global1.a.yyy, global1.a.wzy), Struct_1(global1.a, false, 6065i, global1.d, global3.x)), u_input.d.yy));
    var var_1 = global2[_wgslsmith_index_u32(var_0.x, 24u)];
    var_0 = ~(~_wgslsmith_clamp_vec2_u32(min(min(vec2<u32>(var_0.x, u_input.b), u_input.d.xy), u_input.d.zz << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), vec2<u32>(func_3(vec4<u32>(80945u, u_input.d.x, 2338u, 30383u), vec3<bool>(false, false, global1.d.x)), 76653u), ~(~vec2<u32>(1u, 1u))));
    global3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, var_1.a.x, _wgslsmith_f_op_f32(min(global3.x, 1765f)))), vec3<f32>(-287f, global3.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-309f - global1.e), global3.x))), vec3<bool>(func_2(Struct_1(var_1.a, false, global1.c, var_1.d, global1.a.x), var_1.a.wy).d.x, any(!vec4<bool>(true, global1.b, var_1.b, true)), all(!vec4<bool>(false, global1.b, true, true)))))));
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(min(0u, var_0.x), var_0.x) | (var_0.x << (0u % 32u)), 1u, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u | firstLeadingBit(u_input.c), 37945u, 1u), (select(u_input.d, vec3<u32>(u_input.b, 18344u, u_input.b), false) ^ select(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(11580u, var_0.x, 21234u), true)) & (vec3<u32>(var_0.x, u_input.d.x, u_input.b) | ~vec3<u32>(12274u, 1u, 4294967295u))));
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1258f + _wgslsmith_f_op_f32(-var_1.e))));
}

