struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: bool) -> vec3<i32> {
    var var_0 = Struct_5(firstTrailingBit(~45675u));
    global1 = Struct_1(-vec3<i32>(~(-1i), ~firstTrailingBit(11333i), arg_0.c.b.x), _wgslsmith_add_vec3_i32(max(vec3<i32>(arg_0.c.b.x, global0.a.x, arg_0.c.a.x), min(global1.a, vec3<i32>(1i, arg_0.c.a.x, -2147483647i))) << (~vec3<u32>(4294967295u, 1u, var_0.a) % vec3<u32>(32u)), abs(arg_0.c.a)));
    global1 = Struct_1(select(reverseBits(vec3<i32>(~(-50252i), 0i & u_input.a.x, global0.a.x ^ arg_0.c.a.x)), _wgslsmith_div_vec3_i32(max(-vec3<i32>(global0.b.x, global0.b.x, arg_0.c.a.x), ~vec3<i32>(-15592i, global1.a.x, 1006i)), ~reverseBits(vec3<i32>(global0.a.x, 41775i, global1.a.x))), !any(vec4<bool>(false, true, false, false)) && (global1.a.x < -46850i)), abs(reverseBits(firstLeadingBit(~vec3<i32>(arg_0.c.a.x, 14816i, arg_0.c.b.x)))));
    let var_1 = -25867i;
    let var_2 = Struct_2(u_input.a.xx, arg_0.c, vec4<i32>(~arg_0.c.b.x, u_input.a.x, _wgslsmith_mod_i32(max(-10139i, _wgslsmith_sub_i32(var_1, 2147483647i)), ~(~global1.b.x)), reverseBits(0i)), false, Struct_1(~firstTrailingBit(global1.a), -abs(vec3<i32>(var_1, -1955i, var_1) ^ global1.a)));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(-20041i, ~global1.b.x, -18307i), select(vec3<i32>(~_wgslsmith_mod_i32(-67099i, var_1), 1i, i32(-1i) * -1384i), vec3<i32>(-48967i, i32(-1i) * -28641i, var_1), arg_0.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1;
    let var_1 = Struct_4(!(!(!(!vec2<bool>(arg_2.d, false)))), Struct_3(abs(select(1u, 1u, arg_0.d)), vec2<bool>(true, all(!vec3<bool>(arg_2.d, true, arg_2.d))), Struct_1(vec3<i32>(arg_0.b.a.x, global0.b.x, 1i), arg_0.c.wwz)), -1235f, arg_3);
    global0 = Struct_1(vec3<i32>(firstTrailingBit(9379i), -54742i, -2147483647i), arg_3.b);
    let var_2 = var_1.b;
    var var_3 = Struct_5(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.b.a, _wgslsmith_div_u32(var_2.a, 4294967295u) << (65984u % 32u), var_1.b.a, min(var_2.a, var_2.a)), countOneBits(firstTrailingBit(abs(vec4<u32>(var_1.b.a, var_1.b.a, 0u, var_1.b.a))))));
    return ~(-_wgslsmith_div_i32(arg_2.c.x, -50134i));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = ~arg_2;
    var var_1 = Struct_1(~select(min(global0.a, -vec3<i32>(2147483647i, global0.b.x, 9504i)), ~vec3<i32>(1i, global1.b.x, 0i), select(vec3<bool>(arg_1, arg_1, arg_1), arg_0.xxx, false)), vec3<i32>(func_4(Struct_2(firstTrailingBit(global0.a.yz), Struct_1(global0.b, global0.a), -vec4<i32>(-1i, -15463i, u_input.a.x, global1.a.x), true && arg_0.x, Struct_1(vec3<i32>(1i, u_input.a.x, global1.a.x), global0.a)), _wgslsmith_div_f32(-699f, _wgslsmith_f_op_f32(min(1878f, 1035f))), Struct_2(_wgslsmith_clamp_vec2_i32(global0.b.yx, global1.b.yz, global0.b.yy), Struct_1(global0.b, vec3<i32>(u_input.a.x, -18579i, -96928i)), firstTrailingBit(vec4<i32>(2147483647i, 1i, 0i, global0.a.x)), false, Struct_1(vec3<i32>(global1.a.x, global1.b.x, -2147483647i), vec3<i32>(0i, u_input.a.x, global1.b.x))), Struct_1(global0.a, func_3(Struct_3(arg_2, vec2<bool>(arg_0.x, arg_1), Struct_1(vec3<i32>(1i, global0.a.x, -2147483647i), vec3<i32>(16099i, global0.a.x, global1.b.x))), vec3<f32>(-273f, 365f, -559f), true))), min(_wgslsmith_mult_i32(10816i, -35932i ^ global1.b.x), global1.a.x), -2147483647i));
    let var_2 = (arg_2 ^ _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2, var_0), vec2<u32>(1u, var_0)) ^ vec2<u32>(7427u, 4294967295u), vec2<u32>(32466u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, arg_2, arg_2, 4294967295u), vec4<u32>(arg_2, 4471u, var_0, 4294967295u))))) ^ firstTrailingBit(~_wgslsmith_add_u32(arg_2, select(18388u, var_0, arg_0.x)));
    var var_3 = Struct_4(select(!vec2<bool>(true, global1.b.x >= -1i), select(select(vec2<bool>(arg_1, false), select(vec2<bool>(arg_0.x, arg_1), arg_0.yx, vec2<bool>(false, arg_1)), all(arg_0.zw)), vec2<bool>(!arg_1, true), vec2<bool>(false, arg_1)), false), Struct_3(66649u, select(!(!vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(any(arg_0.xwx), true), all(vec2<bool>(false, arg_1))), Struct_1(max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), global0.b), var_1.b), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, u_input.a.x, u_input.a.x)), abs(global1.b)))), _wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_f32(f32(-1f) * -935f)), Struct_1(global1.a, vec3<i32>(-u_input.a.x, -global1.a.x, var_1.b.x)));
    var var_4 = Struct_2(vec2<i32>(-1i, ~(-81757i)), Struct_1(vec3<i32>(39895i, _wgslsmith_mult_i32(global1.b.x, -u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(76616i, var_1.a.x), var_1.b.xx)), _wgslsmith_add_vec3_i32(vec3<i32>(-84056i, var_3.b.c.a.x, global0.a.x), vec3<i32>(var_1.a.x, 2147483647i, -var_1.a.x))), vec4<i32>(global1.a.x, ~17407i, global1.b.x, ~(-5235i)), all(vec2<bool>(arg_0.x, arg_1)), Struct_1(firstTrailingBit(_wgslsmith_div_vec3_i32(u_input.a & vec3<i32>(u_input.a.x, -12767i, global0.a.x), vec3<i32>(var_3.b.c.b.x, -2147483647i, -21327i))), countOneBits(vec3<i32>(abs(-5176i), global0.a.x, 2147483647i))));
    return var_4.e;
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(select(u_input.a.x, _wgslsmith_clamp_i32(~(-20551i), i32(-1i) * -1i, -11252i), true), func_4(Struct_2(select(vec2<i32>(43104i, 2147483647i), arg_0.b.zy, false), func_2(vec4<bool>(false, true, true, false), true, 18240u), -vec4<i32>(global0.a.x, global0.a.x, u_input.a.x, global1.b.x), true, func_2(vec4<bool>(true, false, false, true), true, 1u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2963f * 1198f), 1000f)), Struct_2(func_3(Struct_3(4294967295u, vec2<bool>(true, true), Struct_1(vec3<i32>(global0.b.x, u_input.a.x, u_input.a.x), u_input.a)), vec3<f32>(215f, -808f, 578f), false).zz, arg_0, -vec4<i32>(20052i, 2147483647i, 23074i, arg_0.a.x), true, Struct_1(u_input.a, vec3<i32>(-2147483647i, 2147483647i, u_input.a.x))), func_2(vec4<bool>(true, true, true, true), true, 1u << (0u % 32u)))), _wgslsmith_dot_vec3_i32(arg_0.b, _wgslsmith_div_vec3_i32(min(~u_input.a, firstTrailingBit(global0.b)), select(abs(vec3<i32>(-2147483647i, 1i, arg_0.b.x)), ~vec3<i32>(2147483647i, global1.a.x, 0i), vec3<bool>(true, false, true)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1204f, -1480f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-826f)) * _wgslsmith_div_f32(1066f, -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(795f + 1000f))), _wgslsmith_f_op_f32(-282f + -691f))), vec3<bool>(!all(vec4<bool>(false, true, true, false)), select(select(65424u, 1u, true), 1u, false) >= ~_wgslsmith_mod_u32(4294967295u, 1u), all(vec4<bool>(true, true, true, true)))));
    var var_2 = vec3<u32>(83952u, abs(4294967295u) | _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(6084u, 84949u, 0u, 14481u)), ~vec4<u32>(1u, 1u, 1u, 1u)), abs(_wgslsmith_add_u32(1u, 0u)) | (select(min(69570u, 46390u), ~4294967295u, true) | ~(78424u >> (0u % 32u))));
    var var_3 = Struct_1(u_input.a, -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, ~global1.b), reverseBits(u_input.a.x), -firstLeadingBit(var_0.x)));
    let var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-456f, var_1.x)))) * _wgslsmith_f_op_f32(1000f + -725f)), 543f, var_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, var_1.x, _wgslsmith_f_op_f32(min(546f, 841f)))));
    return !vec2<bool>(all(vec2<bool>(true, true)), true);
}

fn func_1(arg_0: vec4<f32>) -> vec2<bool> {
    let var_0 = global1.b.zz;
    return select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1299f)) >= 1193f), !func_5(func_2(vec4<bool>(true, false, true, false), true, 1u)), select(true, all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-187f, 1640f, -885f, 809f), vec4<f32>(-438f, 1299f, 1232f, 2433f), vec4<bool>(true, true, true, true))))), vec4<f32>(1680f, _wgslsmith_div_f32(-1052f, 409f), -1115f, -565f))));
    var var_1 = ~func_3(Struct_3(~4294967295u, !(!vec2<bool>(true, var_0.x)), Struct_1(vec3<i32>(-67432i, -2147483647i, global1.a.x) & vec3<i32>(global1.a.x, global0.a.x, -18407i), _wgslsmith_div_vec3_i32(global0.b, global1.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1206f, 1753f, -645f))), true).x;
    global1 = Struct_1(global0.a, -vec3<i32>(_wgslsmith_clamp_i32(global0.b.x, ~global0.a.x, 3034i), reverseBits(-global1.a.x), global0.a.x));
    var_1 = global1.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1024f, 770f, _wgslsmith_f_op_f32(round(231f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1009f, 361f))))));
    var var_3 = var_0.x;
    var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(565f * -919f), _wgslsmith_add_vec2_i32(global0.a.yz, ~(-(~vec2<i32>(global1.a.x, global0.b.x)))));
}

