struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 23>;

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(1357f, -1000f, -1238f, -414f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<bool> {
    let var_0 = false;
    global0 = select(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.d, u_input.d | 0u), 23u)] > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))), var_0, all(!vec4<bool>(var_0, var_0, false, var_0)) | (((-10774i & u_input.a) << (43024u % 32u)) <= firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, u_input.a, -2147483647i))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 23u)] - global3.x))))), -1373f);
    global2 = global1[_wgslsmith_index_u32(1u, 23u)];
    let var_2 = Struct_3(28457u, Struct_2(any(select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(var_0, false, var_0))), select(!vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_0, var_0 != false))), var_0);
    return select(vec2<bool>(var_2.b.a, true), !(!select(var_2.b.b.xy, vec2<bool>(true, true), select(var_2.b.b.zy, var_2.b.b.xx, var_0))), !(!(true || var_2.b.b.x)) | var_0);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(705f)), -510f, _wgslsmith_f_op_f32(135f * 137f)), global3.yyz))) - global3.zyx);
    let var_1 = u_input.b;
    let var_2 = true;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -719f);
    global1 = array<f32, 23>();
    return Struct_2(any(func_3()), vec3<bool>(-732f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_div_f32(1419f, 859f), func_3().x)), ~32255u != _wgslsmith_sub_u32(min(32411u, arg_1.x), _wgslsmith_mult_u32(30106u, 10728u)), global1[_wgslsmith_index_u32(arg_1.x, 23u)] >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 252f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 23u)] * 296f))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_3 {
    global0 = any(!arg_1.www);
    var var_0 = Struct_1(vec3<bool>(arg_1.x, arg_1.x, false), ~(~vec4<i32>(1i, -2147483647i, select(u_input.b, 2147483647i, false), u_input.a << (arg_2.x % 32u))), arg_2.x);
    global0 = true;
    var var_1 = global3.zzx;
    let var_2 = arg_0;
    return Struct_3(u_input.c, arg_0, 66219i <= min(~u_input.b, var_0.b.x & u_input.b));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = func_4(Struct_2(arg_3.b.a, vec3<bool>(arg_3.c, !arg_3.c, any(!arg_3.b.b.yx))), select(select(select(vec4<bool>(arg_3.c, arg_3.c, true, arg_3.c), vec4<bool>(arg_3.c, false, arg_3.b.a, true), vec4<bool>(true, arg_3.c, arg_3.c, true)), vec4<bool>(arg_3.b.a, true, arg_3.c, arg_2 >= arg_2), true), vec4<bool>(select(!arg_3.c, false, arg_2 <= global1[_wgslsmith_index_u32(arg_3.a, 23u)]), all(!vec2<bool>(arg_3.c, arg_3.c)), all(select(vec4<bool>(arg_3.b.a, false, false, arg_3.c), vec4<bool>(arg_3.b.b.x, false, false, arg_3.b.a), arg_3.c)), true), all(select(vec4<bool>(true, false, arg_3.b.a, arg_3.c), vec4<bool>(true, arg_3.c, arg_3.b.a, arg_3.c), false)) & !arg_3.c), vec3<u32>(arg_1, ~abs(reverseBits(u_input.c)), 1u));
    global1 = array<f32, 23>();
    var var_1 = max(-24539i << (_wgslsmith_mod_u32(~30364u, 1u) % 32u), _wgslsmith_sub_i32(-_wgslsmith_mod_i32(-2147483647i, 2147483647i), select(reverseBits(u_input.b), u_input.b, any(var_0.b.b.yz))) | (u_input.a << (4294967295u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(751f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global3.x, global1[_wgslsmith_index_u32(arg_3.a, 23u)]), arg_0) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))) - 549f));
    var var_3 = u_input.c;
    return func_4(Struct_2(!func_2(!vec4<bool>(true, var_0.c, true, var_0.b.a), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1, var_0.a), vec4<u32>(u_input.d, 1835u, 2929u, var_0.a))).b.x, func_4(func_4(arg_3.b, !vec4<bool>(var_0.b.a, arg_3.c, arg_3.b.b.x, var_0.c), vec3<u32>(arg_1, 0u, arg_3.a)).b, select(vec4<bool>(arg_3.b.b.x, false, arg_3.c, var_0.b.b.x), select(vec4<bool>(false, true, arg_3.c, true), vec4<bool>(true, false, var_0.c, false), var_0.c), any(vec4<bool>(true, true, var_0.c, true))), select(~vec3<u32>(53314u, 1u, 76682u), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 0u, u_input.c), vec3<u32>(u_input.d, arg_1, 4294967295u)), select(arg_3.b.b, vec3<bool>(var_0.b.b.x, arg_3.b.a, arg_3.c), false))).b.b), !(!select(select(vec4<bool>(var_0.b.a, true, true, false), vec4<bool>(false, var_0.b.b.x, arg_3.c, arg_3.b.b.x), var_0.c), !vec4<bool>(true, var_0.c, false, var_0.c), !vec4<bool>(false, true, arg_3.b.b.x, var_0.c))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u) & vec3<u32>(arg_1, arg_3.a, u_input.c), vec3<u32>(1u, 14351u, 32046u), abs(vec3<u32>(88658u, arg_3.a, arg_1))) ^ firstTrailingBit(vec3<u32>(1u, 1u, 1u))));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = global3.zy;
    var var_1 = arg_2.b.xxy;
    var var_2 = vec2<bool>(func_3().x, true);
    global2 = global3.x;
    let var_3 = 2147483647i;
    return arg_0.b;
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_1 {
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1874f, global3.x, -1000f) + vec4<f32>(-1679f, global1[_wgslsmith_index_u32(24189u, 23u)], 602f, global1[_wgslsmith_index_u32(22576u, 23u)])) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, global1[_wgslsmith_index_u32(57361u, 23u)], global3.x, -1484f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-780f, global3.x, global1[_wgslsmith_index_u32(u_input.d, 23u)], 2559f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-968f, -1000f, -201f, -2333f), vec4<f32>(-1412f, -577f, -557f, global1[_wgslsmith_index_u32(arg_0.x, 23u)]), vec4<bool>(true, true, arg_1.b.x, arg_1.a))), select(vec4<bool>(arg_1.a, arg_1.b.x, arg_1.b.x, arg_1.a), vec4<bool>(true, true, false, arg_1.b.x), arg_1.a)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), -1000f, _wgslsmith_f_op_f32(-424f - global3.x), global3.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2327f, global3.x, global1[_wgslsmith_index_u32(arg_0.x, 23u)], global1[_wgslsmith_index_u32(arg_0.x, 23u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(0u, 23u)], global3.x, 288f, -598f))))))));
    var var_0 = ~arg_0;
    let var_1 = _wgslsmith_sub_vec3_i32(firstTrailingBit(-vec3<i32>(u_input.b, u_input.b, 14055i) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -14808i, u_input.a), vec3<i32>(u_input.b, 15229i, u_input.b))) ^ ~(~min(vec3<i32>(u_input.a, -2147483647i, -28663i), vec3<i32>(u_input.a, u_input.b, u_input.b))), abs(vec3<i32>(u_input.b ^ -2147483647i, _wgslsmith_div_i32(u_input.b, u_input.b), -u_input.b) & vec3<i32>(_wgslsmith_sub_i32(19060i, 2147483647i), -21903i << (var_0.x % 32u), abs(u_input.a))));
    global0 = arg_1.b.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_0.x, 23u)], -1000f))))), global1[_wgslsmith_index_u32(arg_0.x, 23u)], global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1214f * _wgslsmith_f_op_f32(162f - global3.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(47646u, 0u, arg_0.x)), 23u)]))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 653f, _wgslsmith_f_op_f32(236f + global1[_wgslsmith_index_u32(36036u, 23u)]), global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1[_wgslsmith_index_u32(31795u, 23u)], -550f, 750f) + vec4<f32>(1979f, global3.x, -297f, 2669f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -1017f, global3.x, global1[_wgslsmith_index_u32(var_0.x, 23u)]))) * vec4<f32>(global1[_wgslsmith_index_u32(arg_0.x, 23u)], -1905f, -467f, global1[_wgslsmith_index_u32(26180u, 23u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, global3.x, global1[_wgslsmith_index_u32(0u, 23u)], -2076f) - vec4<f32>(global3.x, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(18681u, 23u)], global1[_wgslsmith_index_u32(34662u, 23u)])))));
    return Struct_1(vec3<bool>(!(u_input.b >= u_input.a), !arg_1.b.x, any(!vec4<bool>(arg_1.b.x, false, arg_1.a, arg_1.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(-44639i, -14182i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.b, -6158i, 3857i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, 1i, var_1.x), vec4<i32>(0i, 1i, -13948i, -15477i)), select(~vec4<i32>(8889i, u_input.b, -2147483647i, 0i), vec4<i32>(var_1.x, -2147483647i, var_1.x, -22676i), true && arg_1.b.x)), abs(vec4<i32>(~u_input.a, abs(42570i), -1i, 1i))), 0u);
}

fn func_1(arg_0: u32) -> vec4<i32> {
    let var_0 = ~reverseBits(1u) ^ countOneBits(~firstTrailingBit(~arg_0));
    global1 = array<f32, 23>();
    var var_1 = func_7(vec2<u32>(0u, ~1u) & select(vec2<u32>(_wgslsmith_div_u32(var_0, arg_0), arg_0), ~vec2<u32>(1u, 8672u) ^ select(vec2<u32>(7496u, var_0), vec2<u32>(arg_0, u_input.d), true), false), func_6(func_5(703f, 0u & arg_0, global3.x, func_4(func_2(vec4<bool>(false, false, true, true), vec4<u32>(arg_0, u_input.c, u_input.d, 0u)), vec4<bool>(true, true, true, true), ~vec3<u32>(u_input.d, 55836u, u_input.c))), (~vec3<u32>(var_0, arg_0, arg_0) & min(vec3<u32>(1u, 618u, var_0), vec3<u32>(4294967295u, var_0, 10764u))) ^ (~vec3<u32>(65158u, arg_0, 1u) ^ vec3<u32>(54292u, var_0, var_0)), Struct_1(func_4(func_2(vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 0u, u_input.d, 1u)), vec4<bool>(true, true, true, true), firstTrailingBit(vec3<u32>(4294967295u, var_0, var_0))).b.b, -vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a) << (max(vec4<u32>(82510u, 1u, 0u, 14556u), vec4<u32>(var_0, 4294967295u, u_input.d, u_input.d)) % vec4<u32>(32u)), 1u)));
    var_1 = func_7(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 1u) << (reverseBits(vec2<u32>(arg_0, var_1.c)) % vec2<u32>(32u)), ~(vec2<u32>(var_0, var_0) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)))), max(~vec2<u32>(2437u, var_0), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c, 0u), vec2<u32>(u_input.d, var_1.c)))), func_4(Struct_2(var_1.a.x, func_5(-1000f, arg_0 ^ var_0, _wgslsmith_f_op_f32(floor(global3.x)), Struct_3(arg_0, Struct_2(var_1.a.x, var_1.a), false)).b.b), !select(vec4<bool>(true, var_1.a.x, false, true), select(vec4<bool>(true, var_1.a.x, var_1.a.x, true), vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x)), func_3().x), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, var_1.c)), max(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(33884u, 0u, 43046u)), true)).b);
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-755f * 602f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(16947u, 23u)]) * _wgslsmith_div_f32(-1145f, 1000f)))), _wgslsmith_div_f32(1f, global1[_wgslsmith_index_u32(61013u & (0u >> (arg_0 % 32u)), 23u)])), -302f, !(!var_1.a.x)));
    return select(-(~(-(var_1.b ^ var_1.b))), func_7(abs(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(14668u, 28100u), vec2<u32>(581u, 97364u)))), Struct_2(true, var_1.a)).b, !vec4<bool>(all(var_1.a.zy), false, !(false && var_1.a.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), true), true), true), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~func_1(1u), min(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, u_input.b, u_input.a), vec4<i32>(0i, u_input.a, u_input.b, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 2147483647i, -44980i, u_input.a), vec4<i32>(2147483647i, u_input.a, u_input.a, -2907i)))), min(-_wgslsmith_mult_vec4_i32(vec4<i32>(97978i, 36996i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.a, u_input.a)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(1876i, u_input.b, u_input.a, u_input.b), vec4<i32>(u_input.a, u_input.a, u_input.b, u_input.b)), vec4<i32>(1i, u_input.b, u_input.a, -37943i)))), reverseBits(~func_4(Struct_2(true, vec3<bool>(true, false, false)), vec4<bool>(false, false, false, false), vec3<u32>(0u, 88615u, u_input.c)).a ^ _wgslsmith_mult_u32(19246u & u_input.d, 0u)));
    global0 = 210f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(26120u, 23u)])) + -688f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -821f), var_0.a.x & false)) < global1[_wgslsmith_index_u32(4294967295u, 23u)]));
    global0 = 1i < ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 54824i, -2147483647i), vec3<i32>(var_0.b.x, u_input.b, u_input.b))), ~(~u_input.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(-1159f, global1[_wgslsmith_index_u32(~(~var_0.c), 23u)]))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(734f, 802f)), _wgslsmith_div_f32(global3.x, global3.x))), global3.x));
    global0 = var_0.a.x;
    global2 = 2526f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_sub_u32(11570u | ~var_0.c, 1u), 53310u, ~1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, u_input.c, u_input.d) & vec3<u32>(u_input.c, u_input.d, 39947u), vec3<u32>(u_input.c, var_0.c, u_input.c) >> (vec3<u32>(var_0.c, u_input.c, 16653u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(797f, var_1.x, var_1.x, -407f) * vec4<f32>(global3.x, global3.x, -997f, 517f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-154f, var_1.x, -1000f, 1113f), vec4<f32>(global1[_wgslsmith_index_u32(0u, 23u)], 978f, 394f, -255f), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(global3.x * global1[_wgslsmith_index_u32(var_0.c, 23u)]), _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)), 1862f, _wgslsmith_f_op_f32(f32(-1f) * -1419f)))), var_0.b, ~vec2<u32>(_wgslsmith_sub_u32(u_input.d, select(63980u, 0u, false)), reverseBits(u_input.c)), 11601u);
}

