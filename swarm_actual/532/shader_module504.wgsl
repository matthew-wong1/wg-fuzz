struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: u32 = 0u;

var<private> global2: u32 = 1u;

var<private> global3: f32 = -597f;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1132f)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-353f, -293f, 1504f, 164f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1591f, -641f, 449f, 938f), vec4<f32>(199f, -233f, 1079f, -1623f), global4.c))))))), _wgslsmith_div_i32(0i, u_input.a.x), arg_0.x);
    global1 = 53798u;
    global1 = _wgslsmith_sub_u32(~global4.d, arg_1);
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a.wyz);
    return vec4<f32>(var_1.a.x, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(823f * 691f), _wgslsmith_f_op_f32(select(1992f, -680f, false)))))), _wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, -3117i, u_input.a.x) << (vec3<u32>(36348u, u_input.b, 15608u) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, 1i, 1i)), ~(1u ^ (global4.b << (global4.b % 32u))))), 4493i & abs(u_input.a.x ^ 66481i), u_input.a.x);
    global2 = 4294967295u;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_0.a.x, var_0.a.x, var_0.a.x), vec4<f32>(-1000f, -1527f, arg_0.a.x, -1065f), true)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_div_f32(688f, -843f), arg_0.a.x, _wgslsmith_f_op_f32(ceil(arg_0.a.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, var_0.a.x), vec4<f32>(arg_0.a.x, 888f, 696f, -1000f)), vec4<bool>(all(arg_1.yyw), !global0.x, false, true)))), ~u_input.a.x, -abs(1i) | var_0.b);
    let var_2 = Struct_1(global4.a, max(_wgslsmith_add_u32(global4.b, ~(0u << (global4.d % 32u))), 4294967295u), true, _wgslsmith_dot_vec2_u32(vec2<u32>(~24362u & u_input.b, _wgslsmith_sub_u32(global4.d, global4.b)), reverseBits(vec2<u32>(1u, 35483u) & global4.a.yw)));
    var var_3 = vec2<i32>(-max(46255i, 1i), var_1.b);
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    global3 = arg_2;
    global2 = 254u;
    global1 = global4.d;
    global4 = arg_1;
    let var_0 = _wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a, abs(firstTrailingBit(u_input.a)))), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(min(2147483647i, 16396i), u_input.a.x)), -vec2<i32>(62565i, -u_input.a.x)));
    return -(_wgslsmith_sub_i32(_wgslsmith_add_i32(~1i, _wgslsmith_mult_i32(-15008i, u_input.a.x)), -2147483647i) ^ u_input.a.x);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> vec3<f32> {
    global3 = -1000f;
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.a.x, -func_4(_wgslsmith_f_op_f32(floor(arg_2)), func_2(Struct_2(vec4<f32>(arg_2, 1031f, 1143f, 1202f), -2147483647i, -1i), vec4<bool>(false, false, arg_1, global4.c), vec2<bool>(global4.c, false)), arg_2, 1u)), vec2<i32>(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(~12654i, arg_0, arg_0 ^ 10977i, 22073i), vec4<i32>(arg_0 << (0u % 32u), ~(-16856i), select(31619i, arg_0, global4.c), -arg_0))));
    global4 = func_2(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2)))), vec4<f32>(arg_2, _wgslsmith_div_f32(1807f, arg_2), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(2625f + 2043f))), arg_0, u_input.a.x), select(vec4<bool>(global0.x, -arg_0 < _wgslsmith_div_i32(arg_3.x, arg_3.x), true, func_2(Struct_2(vec4<f32>(arg_2, -326f, arg_2, arg_2), var_0.x, arg_0), !vec4<bool>(true, arg_1, true, global4.c), vec2<bool>(arg_1, true)).c), vec4<bool>(any(select(vec2<bool>(arg_1, false), vec2<bool>(global0.x, true), global0.xy)), true, all(vec2<bool>(false, global0.x)), arg_1), global4.c), global0.yx);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)));
    let var_2 = Struct_2(vec4<f32>(-1332f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(490f)))), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(786f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(var_1 * -722f), true))))), func_4(-978f, func_2(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2423f, 796f, 341f), vec4<f32>(var_1, var_1, var_1, -1665f)), _wgslsmith_mult_i32(u_input.a.x, arg_0), arg_0 & u_input.a.x), select(vec4<bool>(global0.x, global4.c, true, false), vec4<bool>(global0.x, global0.x, global4.c, false), vec4<bool>(true, true, true, true)), select(global0.zy, vec2<bool>(true, global0.x), global0.yz)), _wgslsmith_f_op_f32(var_1 * arg_2), ~16389u), arg_3.x);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(873f, _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x)) * _wgslsmith_f_op_vec3_f32(min(var_2.a.wzw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, var_2.a.x, 951f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-var_2.a.zwy)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = vec3<bool>((!all(vec2<bool>(true, true)) || any(global0.zy)) | (_wgslsmith_clamp_i32(-24955i, max(arg_1, u_input.a.x), abs(u_input.a.x)) == _wgslsmith_div_i32(u_input.a.x, arg_1)), arg_2.c, !arg_2.c);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -295f);
    var var_0 = _wgslsmith_mult_i32(-30706i, abs(arg_1));
    global0 = vec3<bool>(all(select(!select(vec4<bool>(arg_2.c, global0.x, global4.c, global4.c), vec4<bool>(global0.x, global4.c, true, arg_2.c), global0.x), select(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(true, true, arg_2.c, true), vec4<bool>(arg_2.c, global4.c, true, true)), select(vec4<bool>(false, global4.c, false, true), vec4<bool>(arg_2.c, arg_2.c, true, global4.c), vec4<bool>(arg_2.c, global4.c, false, false)), true), arg_2.c)), arg_2.c, global0.x);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, u_input.a.x, -1i), vec3<i32>(-5431i, -9840i, 1i), vec3<i32>(-8174i, arg_1, 2147483647i) << (vec3<u32>(27364u, 0u, 0u) % vec3<u32>(32u))), 1u)).x, arg_0.x, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -39354i), vec3<i32>(-32453i, u_input.a.x, 25862i)), arg_2.a.x)).zxw))));
    return 673f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, _wgslsmith_sub_u32(abs(0u), ~u_input.b) <= 4294967295u, reverseBits(~u_input.b) >= ~(~11470u)), !(!(!(!vec3<bool>(global4.c, global0.x, true)))), !(all(vec2<bool>(true, true)) | true));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1373f + 1216f) + _wgslsmith_f_op_f32(1882f + 353f)) * 663f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -162f) * -121f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(746f - -770f))));
    let var_1 = _wgslsmith_div_f32(var_0.x, var_0.x);
    global1 = _wgslsmith_mod_u32(u_input.b, ~abs(~_wgslsmith_dot_vec2_u32(global4.a.zy, vec2<u32>(u_input.b, 1u))));
    var var_2 = select(vec2<bool>(true, _wgslsmith_sub_u32(_wgslsmith_mod_u32(93853u, global4.b), ~52960u) <= ~(~46138u)), vec2<bool>(global4.c, any(select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global4.c, global0.x), true))), true);
    var var_3 = !(!select(!(!vec3<bool>(global4.c, global0.x, false)), vec3<bool>(var_2.x, true, select(global0.x, true, true)), select(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, global0.x, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, true), vec3<bool>(false, global4.c, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(func_1(-1i, var_2.x, _wgslsmith_f_op_f32(abs(var_1)), ~vec3<i32>(38039i, u_input.a.x, u_input.a.x))), 1268i, Struct_1(global4.a, abs(global4.b), all(vec3<bool>(var_2.x, var_3.x, true)), _wgslsmith_sub_u32(98852u, global4.d)))))), _wgslsmith_div_vec2_i32(-firstTrailingBit(~vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a), countOneBits(u_input.a.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, ~(i32(-1i) * -2147483647i), 1i), vec3<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 23755i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -39216i)), -20885i), u_input.a.x, ~(-88721i))));
}

