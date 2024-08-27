struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(1320f, -643f, -1335f, 974f)), Struct_1(vec4<f32>(-1038f, -820f, 552f, -1064f)), Struct_1(vec4<f32>(-226f, -605f, 1176f, 794f)), Struct_1(vec4<f32>(-2004f, 597f, -1447f, 1895f)), Struct_1(vec4<f32>(-557f, -1000f, -260f, 271f)), Struct_1(vec4<f32>(840f, -1467f, 494f, -163f)), Struct_1(vec4<f32>(-128f, 474f, 677f, -443f)), Struct_1(vec4<f32>(-747f, -748f, 1025f, -653f)), Struct_1(vec4<f32>(-852f, -616f, -221f, 530f)), Struct_1(vec4<f32>(732f, 1517f, -808f, 127f)), Struct_1(vec4<f32>(1427f, 845f, 889f, 770f)), Struct_1(vec4<f32>(-912f, 981f, -2835f, -1113f)), Struct_1(vec4<f32>(1221f, -1000f, -1071f, 1000f)), Struct_1(vec4<f32>(-1629f, 428f, 147f, 1614f)), Struct_1(vec4<f32>(-1000f, 251f, 799f, 1024f)), Struct_1(vec4<f32>(-1891f, -825f, -548f, -1000f)), Struct_1(vec4<f32>(-559f, -1685f, -1000f, 1000f)), Struct_1(vec4<f32>(187f, -2405f, 492f, -166f)), Struct_1(vec4<f32>(-139f, 107f, 890f, -1352f)), Struct_1(vec4<f32>(1000f, -1248f, -291f, 430f)), Struct_1(vec4<f32>(2301f, -875f, -286f, -485f)), Struct_1(vec4<f32>(1880f, -1000f, 724f, -706f)), Struct_1(vec4<f32>(-137f, 1000f, 838f, 333f)), Struct_1(vec4<f32>(1862f, 1236f, -969f, -708f)), Struct_1(vec4<f32>(-181f, -902f, 689f, -149f)), Struct_1(vec4<f32>(-1652f, -1384f, 981f, -281f)), Struct_1(vec4<f32>(1652f, 679f, 1157f, 135f)), Struct_1(vec4<f32>(-1000f, 1377f, -1216f, -431f)), Struct_1(vec4<f32>(-338f, 874f, 2184f, -266f)), Struct_1(vec4<f32>(733f, -1000f, -698f, 2396f)));

var<private> global2: vec4<i32> = vec4<i32>(-42383i, 0i, 2147483647i, 51035i);

var<private> global3: Struct_2;

var<private> global4: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = u_input.b.x << ((global3.b & ~(~_wgslsmith_clamp_u32(global3.b, u_input.a, u_input.a))) % 32u);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global3.b, 0u, global3.b), countOneBits(vec3<u32>(global3.b, global3.b, 1u))), ~countOneBits(max(vec3<u32>(0u, 18592u, 15960u), vec3<u32>(1u, global3.b, 4071u)))), firstTrailingBit(global3.b));
    let var_2 = _wgslsmith_dot_vec2_i32(firstLeadingBit(select(-global2.zx, global2.zz, !global4.yw) << (abs(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(-global2.zy, _wgslsmith_clamp_vec2_i32(u_input.c.zx, _wgslsmith_mod_vec2_i32(vec2<i32>(-19471i, 16088i), global2.zx), global2.xy)));
    var var_3 = !(!(!global4.x));
    var var_4 = any(select(select(select(vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(true, false, global4.x, global4.x), !vec4<bool>(true, false, global4.x, false)), !vec4<bool>(true, global4.x, true, false), !vec4<bool>(global4.x, global4.x, false, global4.x)), vec4<bool>(any(select(global4.xx, vec2<bool>(global4.x, global4.x), true)), false, true, global4.x & (false && global4.x)), any(select(vec4<bool>(global4.x, false, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, false, global4.x)))));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    global1 = array<Struct_1, 30>();
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1129f - arg_3.x) + 579f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global3.a.x, arg_3.x))))), _wgslsmith_f_op_f32(-global3.a.x), 847f), arg_2);
    let var_1 = ~abs(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(74374u, 5113u), _wgslsmith_add_u32(var_0.b, 38952u)), 4294967295u, 1u));
    let var_2 = global4.xxw;
    let var_3 = select(u_input.b, ~(~(~u_input.b) << (_wgslsmith_add_vec2_u32(var_1.yx, vec2<u32>(2779u, u_input.b.x)) % vec2<u32>(32u))), !vec2<bool>(all(select(vec3<bool>(global4.x, false, global4.x), global4.zzw, global4.xwx)), var_2.x));
    return !vec2<bool>(true, func_3() & global4.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global4 = select(vec4<bool>(all(global4.zwz), true, 529f > _wgslsmith_f_op_f32(sign(1f)), arg_1.b >= 33999u), select(select(!arg_3, vec4<bool>(global4.x, any(vec2<bool>(global4.x, true)), global4.x, all(vec4<bool>(global4.x, arg_3.x, arg_3.x, true))), select(!vec4<bool>(arg_3.x, true, arg_3.x, global4.x), !arg_3, vec4<bool>(false, global4.x, arg_3.x, arg_3.x))), vec4<bool>(all(func_2(u_input.d.x, global1[_wgslsmith_index_u32(u_input.a, 30u)], u_input.b.x, arg_0)), countOneBits(u_input.d.x) == -2147483647i, false, all(select(vec3<bool>(arg_3.x, global4.x, global4.x), vec3<bool>(global4.x, true, arg_3.x), arg_3.wxx))), !arg_3.x), arg_3);
    let var_0 = u_input.e.x;
    var var_1 = abs(~(_wgslsmith_mod_i32(u_input.d.x, -3646i) & -_wgslsmith_mod_i32(2147483647i, var_0)));
    let var_2 = arg_1;
    let var_3 = vec2<u32>(1u, 0u);
    return ~(arg_1.b >> (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(sign(-846f)), global3.a.x), ~(~_wgslsmith_div_u32(global3.b, global3.b)) << (~u_input.a % 32u));
    let var_1 = firstTrailingBit(vec4<u32>(49253u, ~43539u, func_1(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2176f), var_0.a.x, _wgslsmith_f_op_f32(global3.a.x + global3.a.x)), var_0, -2115f, select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), select(vec4<bool>(global4.x, global4.x, true, true), vec4<bool>(false, false, global4.x, global4.x), vec4<bool>(global4.x, false, global4.x, true)), false)), (func_1(vec4<f32>(1237f, var_0.a.x, var_0.a.x, var_0.a.x), var_0, var_0.a.x, vec4<bool>(global4.x, global4.x, global4.x, global4.x)) ^ 1u) >> (~global3.b % 32u)));
    let var_2 = var_1;
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, -2147483647i, _wgslsmith_sub_i32(~global2.x, _wgslsmith_mod_i32(-6188i, 45874i)) | _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.x, -55687i, u_input.e.x, global2.x), vec4<i32>(global2.x, global2.x, 21603i, u_input.e.x)), -vec4<i32>(global2.x, 0i, global2.x, 2147483647i))), -vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(0i, reverseBits(global2.x)), -_wgslsmith_clamp_i32(0i, 19768i, u_input.c.x)));
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -143f), -810f, _wgslsmith_f_op_f32(trunc(global3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~41383u, vec3<u32>(var_2.x, max(_wgslsmith_mod_u32(global3.b, 11031u) >> (var_0.b % 32u), min(0u, ~global3.b)), global3.b), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_3.x, 27834i, var_3.x, global2.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 0i, u_input.d.x, var_3.x), vec4<i32>(var_3.x, var_3.x, 2147483647i, -13732i)), -vec4<i32>(global2.x, 2147483647i, var_3.x, global2.x) << (~var_1 % vec4<u32>(32u))), vec3<i32>(max(-(~global2.x), -33065i), global2.x, 9581i));
}

