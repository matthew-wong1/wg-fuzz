struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global0 = -_wgslsmith_mult_vec4_i32(min(~_wgslsmith_mod_vec4_i32(vec4<i32>(-8579i, 2147483647i, 2147483647i, arg_0.x), vec4<i32>(arg_0.x, -24472i, arg_0.x, arg_0.x)), firstTrailingBit(vec4<i32>(2147483647i, arg_0.x, arg_0.x, global0.x) << (vec4<u32>(20011u, 48477u, u_input.a, 41028u) % vec4<u32>(32u)))), vec4<i32>(abs(58451i), ~(-2147483647i), 1i, 0i));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a)) * arg_1.a)) * -1427f), all(vec4<bool>(true, true, arg_2, arg_2 || any(vec3<bool>(arg_2, arg_1.b, arg_2)))));
    let var_1 = vec4<i32>(-1i) * -(~vec4<i32>(_wgslsmith_mult_i32(arg_0.x, 26955i), global0.x, 1i, -1i));
    var var_2 = _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-global0.x, -2147483647i)), global0.zx) & (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(min(arg_0, arg_0), ~var_1.xx, _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(arg_0.x, 2147483647i))));
    var var_3 = ~vec3<i32>(-2309i, -_wgslsmith_mod_i32(-var_2.x, -40456i), (abs(arg_0.x) << (select(37574u, u_input.a, false) % 32u)) << (19220u % 32u));
    return abs(~var_3.x);
}

fn func_3() -> bool {
    let var_0 = Struct_1(1330f, any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), vec3<bool>(true, all(vec2<bool>(true, false)), select(false, true, true)), vec3<bool>(any(vec3<bool>(true, false, true)), true, true))));
    global0 = ~vec4<i32>(global0.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, 11020i), min(vec3<i32>(global0.x, 1i, 2147483647i), vec3<i32>(global0.x, global0.x, global0.x)))), firstTrailingBit(_wgslsmith_clamp_i32(firstLeadingBit(global0.x), 2147483647i, global0.x >> (0u % 32u))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -1i, global0.x), global0.xwz), _wgslsmith_dot_vec4_i32(max(vec4<i32>(global0.x, global0.x, global0.x, -17741i), vec4<i32>(global0.x, -43882i, global0.x, global0.x)), abs(vec4<i32>(2147483647i, global0.x, 2147483647i, global0.x)))));
    var var_1 = global0.x;
    var var_2 = var_0;
    global0 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(global0.x >> (~u_input.a % 32u), -global0.x & -global0.x), _wgslsmith_dot_vec2_i32(global0.yx, abs(countOneBits(global0.yy))), _wgslsmith_mult_i32((global0.x >> (1u % 32u)) ^ -8336i, global0.x), global0.x));
    return all(select(vec3<bool>(all(vec3<bool>(false, true, var_2.b)), true == (var_2.b && var_0.b), var_2.b), select(vec3<bool>(true, true, any(vec3<bool>(true, var_2.b, var_0.b))), !(!vec3<bool>(var_0.b, false, false)), var_0.b), !(!(!vec3<bool>(var_2.b, var_2.b, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_clamp_vec4_i32(~(~((vec4<i32>(global0.x, global0.x, 47822i, 2147483647i) << (vec4<u32>(9602u, 17845u, 33473u, u_input.a) % vec4<u32>(32u))) << (select(vec4<u32>(16638u, 1u, 25526u, u_input.a), vec4<u32>(12284u, 78224u, 14946u, 1u), arg_0.x) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(-16501i, 26745i), ~(-10436i), _wgslsmith_dot_vec3_i32(global0.zzx, global0.yyx), 0i) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b), 1u, _wgslsmith_sub_u32(45896u, u_input.b), u_input.a) % vec4<u32>(32u)), firstTrailingBit(~vec4<i32>(global0.x, global0.x, -23831i, global0.x)), (~vec4<i32>(global0.x, global0.x, global0.x, -2147483647i) ^ min(vec4<i32>(global0.x, 3467i, global0.x, global0.x), vec4<i32>(-2147483647i, 1i, 0i, global0.x))) ^ max(vec4<i32>(38560i, -1i, -88091i, -20556i), ~vec4<i32>(1i, 0i, global0.x, -1i))), firstTrailingBit(firstLeadingBit(vec4<i32>(global0.x, 2147483647i, global0.x, -13787i) & vec4<i32>(2159i, 1i, 24534i, -1i))));
    let var_1 = arg_2.x;
    var var_2 = _wgslsmith_dot_vec2_i32(~select(-vec2<i32>(1i, var_0.x), -vec2<i32>(-27544i, -25288i), vec2<bool>(arg_0.x, arg_0.x)), var_0.wy) ^ var_0.x;
    return true;
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, ~(-20880i), global0.x, global0.x), firstTrailingBit(~vec4<i32>(global0.x, -23837i, global0.x, 20591i))), vec4<i32>(~func_2(global0.zy, Struct_1(-759f, true), false), global0.x, global0.x, -_wgslsmith_dot_vec2_i32(global0.zz, global0.xy))), vec4<i32>(-1i) * -(abs(vec4<i32>(global0.x, 2147483647i, -3310i, global0.x)) >> (~vec4<u32>(u_input.b, 4294967295u, 105618u, 0u) % vec4<u32>(32u))));
    var var_0 = Struct_1(-761f, !func_4(vec3<bool>(func_3(), false, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1744f * 623f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(273f, -270f, -1000f, -242f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(860f, -533f, 1622f, 1189f) * vec4<f32>(-257f, -159f, 448f, -1000f))))));
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1362f, var_0.a, global0.x > global0.x)))), 1071f), var_0.b);
    var var_1 = var_0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(-1793f - -722f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))))), any(vec3<bool>(var_0.b, all(!vec3<bool>(true, var_0.b, var_0.b)), var_0.b)));
    return StorageBuffer(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

