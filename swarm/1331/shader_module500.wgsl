struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-942f, -368f, arg_0.c, global1.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, 392f, global1.c, -319f) * vec4<f32>(1397f, global1.c, arg_0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, -635f, arg_0.c, arg_0.c), vec4<f32>(global1.c, 1187f, -1000f, 344f), vec4<bool>(true, false, arg_0.a, global1.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, global1.c, 1096f, -1000f), vec4<f32>(-1121f, global1.c, arg_0.c, global1.c))))))));
    global0 = abs(u_input.b.zx & u_input.b.xx);
    return 0u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, global0.x), -13851i), (2147483647i | global0.x) ^ -1i), u_input.b.x << (abs(func_3(Struct_1(arg_0, vec2<bool>(arg_0, false), global1.c))) % 32u), -1i, u_input.b.x) << (u_input.a % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2356f, _wgslsmith_f_op_f32(trunc(global1.c)))) + global1.c)));
    var var_3 = Struct_1(global1.b.x, !global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + global1.c)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(831f, -379f)), global1.c)))));
    let var_4 = 2649u;
    return Struct_1(var_3.b.x, select(!global1.b, !select(select(vec2<bool>(arg_0, var_3.a), global1.b, arg_0), !vec2<bool>(arg_0, var_3.b.x), select(var_3.b, var_3.b, arg_0)), !(!select(vec2<bool>(false, arg_0), vec2<bool>(false, global1.b.x), arg_0))), 1564f);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    global1 = func_2(global1.b.x);
    var var_0 = ~(~countOneBits(_wgslsmith_sub_u32(min(7132u, u_input.a.x), 95017u)));
    global0 = countOneBits(arg_1.zy);
    var var_1 = u_input.b.x;
    global0 = ~max(firstLeadingBit(vec2<i32>(arg_1.x, -5963i) << (min(vec2<u32>(u_input.a.x, 18230u), u_input.a.yx) % vec2<u32>(32u))), vec2<i32>(countOneBits(-2147483647i), ~(26365i | arg_3)));
    return Struct_1(!func_2(global1.a).b.x, select(global1.b, !(!(!global1.b)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-1432f + 1000f)))) + _wgslsmith_f_op_f32(arg_0 + -2773f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    global0 = _wgslsmith_sub_vec2_i32(arg_1.zw, _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.b.x, global0.x)), -vec2<i32>(u_input.b.x, arg_1.x)), u_input.b.yz));
    global0 = u_input.b.zz;
    let var_0 = firstTrailingBit(1220u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.c, arg_0.c))), arg_0.c, 642f, arg_0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, global1.c, 677f, -934f) + vec4<f32>(675f, -592f, 983f, -550f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 306f, 1692f, arg_0.c))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(-1080f * 632f), _wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, arg_0.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(607f, arg_0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1004f - arg_0.c) * _wgslsmith_f_op_f32(round(global1.c))), _wgslsmith_f_op_f32(686f + _wgslsmith_div_f32(-967f, -630f)), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(global1.c - global1.c)))));
    global1 = Struct_1(arg_0.b.x, vec2<bool>(((u_input.a.x >= 86046u) && (arg_0.c == global1.c)) && func_2(global1.b.x).a, arg_0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -907f))));
    return 1361f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(max(~vec2<u32>(reverseBits(u_input.a.x), _wgslsmith_mod_u32(1u, u_input.a.x)), firstTrailingBit(u_input.a.zw >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) ^ reverseBits(u_input.a.wz << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~(~u_input.a.wz));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_f32(global1.c + 453f), ~vec4<i32>(u_input.b.x, global0.x, -1i, u_input.b.x), _wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_sub_i32(-1i, 2147483647i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -15174i), vec4<i32>(-2147483647i, u_input.b.x, 68669i, -1i)))), 2379f, -635f, func_1(_wgslsmith_f_op_f32(global1.c * -847f), vec4<i32>(_wgslsmith_mult_i32(global0.x, u_input.b.x), ~global0.x, ~0i, -global0.x), 249f, -(~u_input.b.x)).c) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -526f, global1.c, -1045f) - vec4<f32>(global1.c, global1.c, -771f, 303f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.c, -870f, -1377f))))))));
    let var_2 = func_2(all(!vec3<bool>(global1.b.x, true, u_input.b.x < global0.x)));
    var var_3 = Struct_1(global1.a, vec2<bool>(!(!(true | global1.b.x)), var_2.b.x), -1242f);
    let var_4 = Struct_1(all(vec3<bool>(any(global1.b), false, select(var_3.b.x, func_2(true).a, any(vec4<bool>(var_2.b.x, true, false, true))))), vec2<bool>(!global1.a, !select(false, !var_3.a, true)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec4_i32(min(vec4<i32>(1i, 61875i, global0.x, -50600i) ^ vec4<i32>(u_input.b.x, global0.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -2147483647i, global0.x, global0.x)), -abs(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, global0.x))), ~vec4<i32>(~global0.x, -38469i, 2147483647i, -49499i)), var_3.c);
}

