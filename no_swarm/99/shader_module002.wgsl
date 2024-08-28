struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(-1145f, 984f, 882f, 954f)), Struct_1(vec4<f32>(-593f, 369f, -548f, 650f)), Struct_1(vec4<f32>(447f, -2010f, -566f, 1000f)), Struct_1(vec4<f32>(-1834f, -1501f, 1746f, -720f)), Struct_1(vec4<f32>(338f, -188f, 387f, 377f)), Struct_1(vec4<f32>(380f, -1066f, -203f, 1456f)), Struct_1(vec4<f32>(-1708f, -1509f, -1671f, -272f)), Struct_1(vec4<f32>(1000f, -599f, 1208f, 329f)), Struct_1(vec4<f32>(734f, -447f, -669f, -639f)), Struct_1(vec4<f32>(-975f, -1129f, 129f, 414f)), Struct_1(vec4<f32>(-1207f, 1332f, 1822f, 976f)), Struct_1(vec4<f32>(293f, -2652f, 570f, 383f)), Struct_1(vec4<f32>(1000f, -1059f, 1466f, -156f)), Struct_1(vec4<f32>(-2108f, -259f, 532f, 1984f)), Struct_1(vec4<f32>(-954f, 393f, -851f, -116f)), Struct_1(vec4<f32>(-1359f, 1469f, 1157f, -1108f)), Struct_1(vec4<f32>(736f, -1123f, -1512f, 1000f)), Struct_1(vec4<f32>(-2836f, 296f, -158f, -239f)), Struct_1(vec4<f32>(1919f, 1793f, 104f, -920f)), Struct_1(vec4<f32>(-910f, 165f, -478f, 738f)), Struct_1(vec4<f32>(-345f, 1303f, 691f, 633f)), Struct_1(vec4<f32>(-122f, 707f, 284f, -441f)), Struct_1(vec4<f32>(2294f, -441f, 409f, -1209f)), Struct_1(vec4<f32>(182f, 1825f, -626f, -1913f)), Struct_1(vec4<f32>(807f, -702f, 1136f, 730f)), Struct_1(vec4<f32>(783f, -547f, -425f, 124f)), Struct_1(vec4<f32>(917f, -1000f, -1000f, -469f)), Struct_1(vec4<f32>(1045f, -299f, 749f, -654f)), Struct_1(vec4<f32>(-1742f, -519f, 3347f, -1000f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(58171u, 5u)];
    var var_1 = u_input.a;
    var var_2 = all(vec4<bool>(var_0.a, !var_0.a, false, var_0.a));
    var var_3 = countOneBits(45385u);
    var var_4 = select(vec2<bool>(min(-2147483647i, u_input.a) <= ~_wgslsmith_div_i32(u_input.a, u_input.a), !var_0.a), vec2<bool>(((u_input.c & u_input.b.x) != reverseBits(0u)) & select(true, !var_0.a, all(vec4<bool>(false, false, var_0.a, false))), (_wgslsmith_f_op_f32(-437f * 999f) == _wgslsmith_f_op_f32(min(var_0.b.a.x, -1410f))) && (_wgslsmith_dot_vec2_u32(u_input.b, u_input.b) > u_input.b.x)), any(select(vec4<bool>(false && var_0.a, var_0.a || var_0.a, false, true), !vec4<bool>(var_0.a, var_0.a, var_0.a, true), select(!vec4<bool>(true, false, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, false, var_0.a, false), var_0.a), false))));
    return u_input.c;
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = 1165f;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_0))) - global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), _wgslsmith_f_op_f32(-arg_0), -214f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_3(), 8u)] + arg_0) + -887f)));
    let var_2 = max(vec2<u32>(u_input.b.x | 87463u, ~11390u), ~(~max(u_input.b, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(u_input.c, 23618u)))));
    let var_3 = vec2<i32>(max(-select(u_input.a, -2703i, true), 1i) & ~(i32(-1i) * -50359i), select(~firstTrailingBit(min(u_input.a, u_input.a)), _wgslsmith_add_i32(u_input.a, u_input.a), true));
    global2 = array<Struct_1, 29>();
    return Struct_3(_wgslsmith_add_u32(~(~4294967295u), ~(~u_input.b.x)) & ((_wgslsmith_div_u32(u_input.c, u_input.c) ^ 0u) ^ ~2358u));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(181f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_2.b.a);
    var var_2 = !(-1118f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(197f)) + 204f)));
    let var_3 = ~select(~_wgslsmith_div_vec3_i32(abs(vec3<i32>(43774i, 0i, 31437i)), firstLeadingBit(vec3<i32>(1i, u_input.a, -28583i))), ~(~vec3<i32>(1707i, u_input.a, u_input.a)), vec3<bool>(any(!vec4<bool>(arg_2.a, false, arg_2.a, false)), arg_2.a, false));
    let var_4 = arg_2;
    return 57896u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.c, ~u_input.b.x, 1u), 51139u, ~firstTrailingBit(22068u), _wgslsmith_sub_u32(func_1(1000f, vec2<bool>(false, true), Struct_2(true, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(75120u, 8u)], global0[_wgslsmith_index_u32(u_input.c, 8u)])), vec3<f32>(329f, -386f, 1612f))), reverseBits(4294967295u))), ~((vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 118472u) | vec4<u32>(u_input.b.x, 2727u, 1u, 37394u)) & vec4<u32>(u_input.b.x, 53890u, u_input.b.x, u_input.c))), select(vec4<u32>(u_input.c, reverseBits(4294967295u) & reverseBits(u_input.c), 30356u, 10122u), ~abs(vec4<u32>(29403u, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(13891u, 0u, 4294967295u, u_input.b.x)), vec4<bool>(true, true, u_input.c != (46903u | u_input.c), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    var var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(min(var_0.x, ~16929u), ~_wgslsmith_div_u32(var_0.x, var_0.x), select(var_0.x, 1u, false) & var_0.x) ^ select(var_0.wxz, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 22070u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(var_0.x, u_input.b.x, 4294967295u)), ~vec3<u32>(var_0.x, 4294967295u, u_input.b.x)), true), var_0.xzx, _wgslsmith_add_vec3_u32(((var_0.xzw | vec3<u32>(63205u, u_input.b.x, var_0.x)) & ~var_0.wzw) ^ ~max(var_0.wwz, var_0.wzw), abs(~(~vec3<u32>(u_input.b.x, var_0.x, 52562u)))));
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    let var_2 = func_2(-108f);
    let var_3 = true;
    let var_4 = var_1.xz;
    let var_5 = vec4<bool>(any(vec2<bool>(all(vec2<bool>(var_3, var_3)), true)) | !(var_3 || (true && var_3)), !var_3 && var_3, !(~1u <= (~0u ^ var_1.x)), true);
    let var_6 = global0[_wgslsmith_index_u32(abs(~4294967295u), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

