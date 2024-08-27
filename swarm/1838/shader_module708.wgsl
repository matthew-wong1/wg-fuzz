struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(4294967295u, 815u, 49881u, 0u, 1u, 53456u, 17321u, 4294967295u, 4294967295u, 0u, 4294967295u, 21383u, 1u, 0u, 17365u, 14883u, 4294967295u, 0u, 26567u, 23445u, 3338u, 11531u, 1u, 31865u, 43893u, 0u, 37175u, 1u);

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = all(vec3<bool>(!(18781i >= u_input.b.x) | any(vec3<bool>(true, arg_1.b.a, arg_2.b.d.x)), false, any(!select(arg_1.b.d.zx, vec2<bool>(arg_1.b.d.x, arg_1.b.d.x), arg_1.b.d.yx))));
    return global1.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(all(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true))), firstLeadingBit(~firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, 52272u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(f32(-1f) * -1284f)))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1646f)), arg_2.x));
    var var_1 = u_input.d.x;
    let var_2 = _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(arg_3, u_input.a.yz)), arg_0.wx | var_0.b.yx, ~vec2<u32>(~var_0.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(27436u, 4294967295u, arg_0.x), u_input.a << (u_input.a % vec3<u32>(32u)))));
    var_1 = select(func_3(firstLeadingBit(-vec2<i32>(15918i, 2147483647i)), Struct_2(u_input.b.x, Struct_1(var_0.a, arg_0.ywy, _wgslsmith_f_op_f32(arg_2.x * -238f), select(var_0.d, vec3<bool>(var_0.a, false, false), false), arg_2.wy)), Struct_2(~2147483647i, var_0), var_0), arg_3.x, true | (var_0.b.x > 1u));
    let var_3 = arg_0;
    return arg_2.x;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, -1000f, 474f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, -1000f, 198f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, 1196f)), _wgslsmith_f_op_f32(1645f * 540f), _wgslsmith_f_op_f32(round(-363f)))))));
    let var_1 = true;
    let var_2 = _wgslsmith_mult_u32(~u_input.c, ~max(~global0[_wgslsmith_index_u32(arg_0.x, 28u)] >> (u_input.c % 32u), global1.x));
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    return Struct_1(!var_1, u_input.a, _wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1158f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1519f, 155f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -846f))), vec2<u32>(_wgslsmith_sub_u32(func_3(vec2<i32>(1i, -2147483647i), Struct_2(u_input.b.x, Struct_1(var_1, u_input.a, -1145f, vec3<bool>(var_1, var_1, var_1), var_0.zy)), Struct_2(5731i, Struct_1(var_1, vec3<u32>(u_input.c, arg_0.x, 93760u), -195f, vec3<bool>(var_1, false, var_1), vec2<f32>(var_0.x, -1324f))), Struct_1(false, u_input.a, var_0.x, vec3<bool>(var_1, var_1, false), vec2<f32>(372f, var_0.x))), _wgslsmith_add_u32(27413u, var_2)), 30068u))), vec3<bool>(any(select(select(vec4<bool>(var_1, false, var_1, true), vec4<bool>(true, var_1, var_1, var_1), true), vec4<bool>(var_1, var_1, var_1, true), select(vec4<bool>(var_1, false, true, false), vec4<bool>(var_1, var_1, false, true), vec4<bool>(var_1, false, var_1, false)))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1057f)) == var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1138f, -505f))), u_input.b.x >= (-1i >> (u_input.a.x % 32u)))) * _wgslsmith_f_op_f32(var_0.c - var_0.c)) - -453f);
    global0 = array<u32, 28>();
    return max(global1.x, countOneBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(~abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)]), 28u)], select(_wgslsmith_mod_u32(4294967295u, 1u), 1u, u_input.b.x < -1i))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global1 = min(vec2<u32>(_wgslsmith_add_u32(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, u_input.d.x, u_input.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.x, global1.x, global1.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 4294967295u), vec4<u32>(global1.x, 0u, 16723u, 14796u)))), ~_wgslsmith_dot_vec3_u32(u_input.a ^ vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53780u, 28u)], 28u)], u_input.d.x), vec3<u32>(0u, global0[_wgslsmith_index_u32(global1.x, 28u)], 0u))), vec2<u32>(u_input.d.x, (67678u >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(80917u, 28u)], 63754u) % 32u)) | u_input.a.x));
    global1 = vec2<u32>(~func_5(u_input.b, func_2(~vec4<u32>(12618u, u_input.a.x, u_input.c, global1.x))), firstLeadingBit(u_input.d.x | ~(global0[_wgslsmith_index_u32(71044u, 28u)] << (56394u % 32u))));
    return Struct_2(-(~u_input.b.x ^ ~reverseBits(u_input.b.x)), func_2(firstTrailingBit(~(vec4<u32>(4294967295u, 52846u, 19042u, 37394u) << (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 28u)], 28u)], global0[_wgslsmith_index_u32(10777u, 28u)], 102807u, global0[_wgslsmith_index_u32(36596u, 28u)]) % vec4<u32>(32u))))));
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = arg_1.b.b.xz;
    var var_1 = arg_1;
    var var_2 = var_0.x;
    var_2 = (func_1(_wgslsmith_f_op_f32(-var_1.b.e.x)).b.b.x >> (~_wgslsmith_mod_u32(0u, arg_1.b.b.x) % 32u)) | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(25723u, _wgslsmith_mult_u32(26185u, 20674u), _wgslsmith_clamp_u32(0u, global1.x, 7672u)), arg_1.b.b));
    var var_3 = func_1(1041f);
    return countOneBits(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.a, _wgslsmith_clamp_i32(-3189i, var_3.a, -64815i) | 57240i), var_3.a));
}

fn func_7(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(true, vec3<u32>(~(~u_input.a.x), ~(~u_input.a.x), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1463f)), vec3<bool>(true, true, -1000f < _wgslsmith_f_op_f32(step(-493f, _wgslsmith_f_op_f32(min(-586f, 1600f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1182f, _wgslsmith_f_op_f32(-1027f - -1288f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-878f, -1959f)))))));
    global1 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(~4294967295u, ~8084u), 12296u), 35589u);
    let var_1 = reverseBits(global1.x);
    var var_2 = 107739u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 1991f, -300f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-310f, var_0.c, 980f, var_0.e.x))))))))));
    return var_0;
}

fn func_8(arg_0: Struct_1, arg_1: f32) -> StorageBuffer {
    global1 = ~(~(~vec2<u32>(21327u, 62433u)) ^ u_input.a.yz);
    return StorageBuffer(~(-2147483647i), -21861i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, !(min(-u_input.b.x, 21765i) <= u_input.b.x), !((_wgslsmith_div_u32(23917u, 1u) >> (_wgslsmith_clamp_u32(4294967295u, 1u, 3516u) % 32u)) > global1.x));
    let var_1 = 0u;
    global1 = u_input.a.yy & vec2<u32>(1u, 1u);
    let var_2 = select(global0[_wgslsmith_index_u32(reverseBits(13775u), 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], var_0.x);
    let x = u_input.a;
    s_output = func_8(func_7(~vec4<u32>(24629u, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 28u)], global0[_wgslsmith_index_u32(64241u & var_2, 28u)], 11619u), vec3<i32>(-2147483647i, u_input.b.x ^ u_input.b.x, 2147483647i) ^ _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, 8655i), vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), var_0.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x)), func_6(!(!var_0.x), func_1(_wgslsmith_f_op_f32(-240f * -926f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1009f)))));
}

