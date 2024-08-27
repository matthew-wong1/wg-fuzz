struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> i32 {
    var var_0 = arg_0.a.x;
    var var_1 = arg_3.c.wyw;
    let var_2 = Struct_1(select(vec4<bool>(false, arg_2 >= -10710i, !arg_3.b, all(arg_0.a.yyz) && false), !vec4<bool>(true, true, true, var_1.x > arg_3.c.x), arg_0.a));
    var_0 = true;
    var var_3 = arg_1;
    return abs(min(arg_2, _wgslsmith_dot_vec3_i32(countOneBits(u_input.a), -u_input.a))) & -1931i;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1140f, -164f, 633f) - vec3<f32>(-339f, -1000f, 2343f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(361f, -1422f, 1749f) - vec3<f32>(1123f, 1125f, -1391f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(740f, -406f, -373f), vec3<f32>(968f, 1168f, -938f))))));
    var_1 = vec3<f32>(-214f, var_1.x, 1020f);
    let var_2 = Struct_4(u_input.a.yz, func_3(Struct_1(arg_1), 90059u, ~u_input.a.x, Struct_4(abs(vec2<i32>(1i, u_input.a.x)), !var_0, vec4<f32>(-267f, -782f, -794f, 749f))) <= -64548i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, 513f, -471f, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-509f, var_1.x, var_1.x, 770f) * vec4<f32>(var_1.x, var_1.x, -105f, 2308f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1701f, -1067f, var_1.x, -304f), vec4<f32>(var_1.x, -695f, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1344f, 383f, var_1.x, -449f), vec4<f32>(-2040f, 1196f, 754f, 675f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1000f, -1000f), vec4<f32>(-728f, -1807f, var_1.x, -422f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2135f, -837f, 718f, 304f))), select(select(arg_1, vec4<bool>(false, false, true, arg_1.x), true), !vec4<bool>(false, arg_1.x, var_0, arg_1.x), !vec4<bool>(true, true, false, var_0))))));
    let var_3 = true;
    return arg_1.yzw;
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> Struct_4 {
    var var_0 = ~(~select(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), true));
    var var_1 = ~var_0.x;
    let var_2 = Struct_2(Struct_1(vec4<bool>(false, any(!vec4<bool>(true, arg_0.x, true, arg_0.x)), true, var_0.x == ~98308u)), select(vec4<bool>(arg_0.x, !arg_0.x, false, true), vec4<bool>(all(arg_0), all(!vec3<bool>(arg_0.x, false, false)), false, arg_0.x | false), select(select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), arg_0.x), vec4<bool>(arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x))), any(vec4<bool>(false, arg_0.x, false, false)))));
    var var_3 = Struct_4(firstLeadingBit(vec2<i32>(u_input.a.x, ~u_input.a.x)), all(vec3<bool>(any(vec3<bool>(true, false, true)), arg_0.x, (u_input.a.x < 18424i) == func_2(vec2<i32>(u_input.a.x, -6016i), var_2.b, u_input.a.xy).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), _wgslsmith_f_op_f32(max(1058f, arg_1)), _wgslsmith_f_op_f32(select(-1073f, 512f, arg_0.x)), _wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-823f, 366f, arg_1, 492f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))), all(arg_0.yz)))));
    var var_4 = vec2<f32>(arg_1, 1165f);
    return Struct_4(~_wgslsmith_sub_vec2_i32(var_3.a >> (var_0.xz % vec2<u32>(32u)), vec2<i32>(1i, -1i) & vec2<i32>(u_input.a.x, -1i)) | abs(~vec2<i32>(var_3.a.x, 1i) ^ u_input.a.xz), select(false, true || arg_0.x, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3.c))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-536f, var_3.c.x, var_3.c.x, var_4.x) + vec4<f32>(var_3.c.x, -1000f, var_3.c.x, -709f)))))));
}

fn func_1() -> bool {
    var var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-143f, 104f, false)) - _wgslsmith_f_op_f32(max(-273f, -580f)))), _wgslsmith_f_op_f32(f32(-1f) * -788f), 973f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(874f)))), -1047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f * 938f)))));
    var var_2 = Struct_4(max(~(~vec2<i32>(5853i, 70769i)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(2589i, -40856i)), -vec2<i32>(u_input.a.x, 21128i))) & ~u_input.a.yy, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, 243f, -1216f, -765f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1122f, var_1.x, 492f, -1043f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1043f, 126f, var_1.x)), vec4<bool>(true, true, false, false)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1008f, var_1.x, var_1.x)))))));
    var_2 = func_4(func_2(-abs(var_2.a), select(select(vec4<bool>(false, var_2.b, true, true), vec4<bool>(var_2.b, true, false, false), !var_2.b), select(vec4<bool>(true, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, var_2.b, true, var_2.b), all(vec4<bool>(false, true, var_2.b, false))), all(vec4<bool>(false, var_2.b, var_2.b, var_2.b))), vec2<i32>(-19382i, ~(~u_input.a.x))), var_2.c.x);
    var var_3 = Struct_3(1462f, _wgslsmith_mult_u32(firstLeadingBit(~22811u >> (~4294967295u % 32u)), 22272u), -25255i, Struct_1(!(!vec4<bool>(true, var_2.b, true, var_2.b))), 1875f);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(vec4<bool>(any(vec3<bool>(true, true, true)), true, !func_1(), !(!any(vec2<bool>(true, false)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(floor(2401f)))) * _wgslsmith_f_op_f32(1647f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(733f))))), 1u, abs(abs(abs(abs(0i)))), Struct_1(select(vec4<bool>(!var_1.a.x, false, !var_1.a.x, var_1.a.x), var_1.a, func_2(u_input.a.xy, vec4<bool>(true, var_1.a.x, true, var_1.a.x), ~u_input.a.yz).x)), _wgslsmith_f_op_f32(1000f * 299f));
    var var_3 = reverseBits(u_input.a.zx) | u_input.a.zz;
    var var_4 = !var_1.a;
    var_3 = u_input.a.xy << (~reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b, var_2.b), vec2<u32>(4294967295u, var_2.b))) % vec2<u32>(32u));
    var var_5 = _wgslsmith_add_i32(~var_3.x, 2147483647i);
    let var_6 = _wgslsmith_add_vec4_i32(~firstLeadingBit(select(vec4<i32>(46502i, var_2.c, var_2.c, var_2.c), vec4<i32>(-1i, u_input.a.x, var_3.x, u_input.a.x), true)), countOneBits(firstLeadingBit(-vec4<i32>(-26743i, 41995i, 17992i, 1i)))) | firstTrailingBit(vec4<i32>(var_3.x, min(-var_2.c, u_input.a.x), var_3.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(vec4<u32>(48262u, var_2.b, var_2.b, var_2.b)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(33574u, var_2.b, var_2.b, 26777u), vec4<u32>(var_2.b, 4294967295u, var_2.b, var_2.b), vec4<u32>(0u, var_2.b, var_2.b, 117116u)), max(~vec4<u32>(var_2.b, 0u, var_2.b, var_2.b), ~vec4<u32>(15600u, var_2.b, 0u, 60607u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a))) * -299f), var_2.a), var_2.e, abs(0i), 2147483647i);
}

