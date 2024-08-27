struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: vec2<u32>;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_1(_wgslsmith_div_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(global1.wx, firstLeadingBit(global1.yz))), global1.yw));
    global0 = vec2<u32>(global0.x, 1u);
    let var_2 = any(vec4<bool>(!(!(!var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -794f) > _wgslsmith_f_op_f32(trunc(1307f)), var_0.x, var_0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1625f, -244f, -521f))))))));
    return !var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(u_input.a.x, arg_1, -18685i, -2147483647i) | vec4<i32>(u_input.a.x, 26780i, 177i, 25414i), select(vec4<i32>(15369i, arg_1, -1i, arg_1), vec4<i32>(arg_1, arg_1, arg_1, -1i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), reverseBits(vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, arg_1))) & vec4<i32>(~0i, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, firstTrailingBit(-17608i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 1i, 0i, -6180i), vec4<i32>(arg_1, u_input.a.x, arg_1, -1i))), ~_wgslsmith_mod_vec4_i32(-(vec4<i32>(-1731i, -32073i, 7655i, arg_1) << (vec4<u32>(2940u, 4294967295u, 0u, global1.x) % vec4<u32>(32u))), select(-vec4<i32>(-8899i, arg_1, arg_1, 0i), vec4<i32>(-1i, arg_1, arg_1, arg_1), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1130f)), _wgslsmith_div_f32(-1172f, -1107f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1151f, -203f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(696f, 889f) * vec2<f32>(-722f, -798f)))))));
    let var_2 = Struct_1(select(~(vec2<u32>(global0.x, global1.x) | global1.xx), ~(~vec2<u32>(31708u, global1.x)), select(arg_0, vec2<bool>(false, false), true)) << (max(select(global1.wx, ~global1.wy, true), (vec2<u32>(global1.x, global0.x) >> (global1.zy % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(vec2<u32>(global1.x, global0.x), vec2<u32>(global1.x, 42081u))) % vec2<u32>(32u)));
    let var_3 = ~max(_wgslsmith_add_vec4_u32(vec4<u32>(33096u, ~global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, global1.x, 35108u), vec3<u32>(127391u, global0.x, global0.x)), 1u), firstLeadingBit(countOneBits(vec4<u32>(var_2.a.x, 69883u, var_2.a.x, 1u)))), ~max(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, 0u, 4294967295u, var_2.a.x), vec4<u32>(var_2.a.x, 1u, global1.x, global0.x)), vec4<u32>(4294967295u, 1540u, var_2.a.x, 4294967295u)));
    var_0 = vec4<i32>(-45275i, var_0.x | u_input.a.x, var_0.x, _wgslsmith_mod_i32(~(u_input.a.x ^ 0i), -97006i)) & (_wgslsmith_mod_vec4_i32(max(max(vec4<i32>(-41327i, -12623i, u_input.a.x, var_0.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 58178i)), vec4<i32>(-33938i, 1i, 1781i, u_input.a.x)), vec4<i32>(53143i, countOneBits(2147483647i), _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zz), ~(-1i))) >> ((vec4<u32>(global1.x, abs(70640u), ~var_2.a.x, global1.x) ^ var_3) % vec4<u32>(32u)));
    return var_3.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<i32> {
    global0 = global1.zz;
    let var_0 = true;
    var var_1 = func_4(select(func_3(~_wgslsmith_div_u32(global0.x, arg_2.a.x)), arg_1, -4006i >= (countOneBits(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(11906u, arg_2.a.x)) % 32u))), 0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f * -436f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -1025f))), 575f, -798f))));
    var var_3 = arg_2;
    return u_input.a.zx >> (arg_2.a % vec2<u32>(32u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = abs(u_input.a);
    var_0 = _wgslsmith_mod_vec3_i32(~firstTrailingBit(u_input.a | (vec3<i32>(u_input.a.x, u_input.a.x, var_0.x) << (global1.zxy % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(min(arg_1.yyz, abs(-arg_1.wyx)), abs(arg_1.yzz)));
    var_0 = -_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_1.x & -765i, 18053i, u_input.a.x), ~u_input.a);
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(global1.xxw, vec3<u32>(6896u, 53261u, 13281u)), 0u, global0.x, arg_3.a.x);
    return arg_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(!vec4<bool>(true, false, true, _wgslsmith_sub_i32(27553i, 77734i) <= ~u_input.a.x), vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 9154i) | u_input.a.zx, _wgslsmith_clamp_vec2_i32(select(u_input.a.yy, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true)), max(u_input.a.zy, u_input.a.xx), func_2(Struct_1(vec2<u32>(34384u, global0.x)), vec2<bool>(true, true), Struct_1(vec2<u32>(4294967295u, global1.x))))), u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a << ((vec3<u32>(1u, global0.x, global1.x) >> (global1.xyy % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-1i) * -u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(929f)) * 1518f), 583f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(894f, -560f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)))), Struct_1(vec2<u32>(_wgslsmith_mult_u32(global1.x, ~global1.x), 45243u)));
    global0 = ~global1.wx;
    global0 = _wgslsmith_mod_vec2_u32(abs(firstTrailingBit(~(global1.yz | var_0.a))), _wgslsmith_mult_vec2_u32(vec2<u32>(~global0.x, 4294967295u), var_0.a));
    var var_1 = Struct_1(~global1.yx);
    var var_2 = Struct_1(var_0.a);
    return Struct_1(select(var_2.a, _wgslsmith_mult_vec2_u32(countOneBits(global1.xw), ~var_1.a), (u_input.a.x >> (select(var_0.a.x, 20617u, false) % 32u)) >= 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1677f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1162f) * 495f)) * 205f));
}

