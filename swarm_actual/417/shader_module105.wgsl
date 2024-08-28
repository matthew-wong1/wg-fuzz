struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global0.zw, ~vec2<i32>(1i, u_input.d.x)), ~global0.xw & vec2<i32>(u_input.d.x, 1i)), _wgslsmith_mult_i32(select(~19894i, 1i, true), _wgslsmith_div_i32(_wgslsmith_div_i32(56051i, u_input.b), ~u_input.b))), -u_input.d.x, -(u_input.b | _wgslsmith_dot_vec2_i32(select(global0.wz, vec2<i32>(u_input.b, -1i), arg_0), vec2<i32>(global0.x, global0.x))), ~_wgslsmith_add_i32(~u_input.b << ((0u << (u_input.c.x % 32u)) % 32u), u_input.d.x));
    global0 = countOneBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), max(-2147483647i, 0i)), global0.x, u_input.d.x, ~(-40916i)) | u_input.d);
    let var_0 = Struct_5(-26727i, true, u_input.d.x);
    let var_1 = Struct_2(abs(u_input.c), -select(select(countOneBits(vec3<i32>(var_0.a, var_0.a, 53508i)), global0.wxy, vec3<bool>(true, arg_0, false)), -abs(u_input.d.yzy), all(vec4<bool>(var_0.b, true, var_0.b, arg_0))), Struct_1(global0.xyw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), _wgslsmith_f_op_f32(f32(-1f) * -722f), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(362f, -1718f, 155f)))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-166f)) + _wgslsmith_f_op_f32(min(1000f, -418f)))), ~vec3<i32>(global0.x, i32(-1i) * -2147483647i, ~(-1i)), !vec2<bool>(any(vec2<bool>(var_0.b, arg_0)), arg_0)), Struct_1(global0.yyy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, 800f, -1044f))) - vec3<f32>(1000f, _wgslsmith_f_op_f32(round(307f)), -466f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1298f) - _wgslsmith_f_op_f32(max(-1214f, 195f))))), -firstTrailingBit(vec3<i32>(31582i, u_input.b, u_input.d.x)), select(!vec2<bool>(var_0.b, true), vec2<bool>(true, true), true && select(arg_0, false, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1691f, 576f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1769f, -1267f) - vec2<f32>(-1000f, -754f))))));
    global0 = ~(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.d.x, u_input.b, 1i, -2147483647i), vec4<i32>(-19688i, 1i, _wgslsmith_mult_i32(global0.x, 0i), _wgslsmith_dot_vec2_i32(var_1.c.a.yz, u_input.d.wx))) & reverseBits(u_input.d));
    return var_1.d.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32) -> Struct_3 {
    var var_0 = 1i != _wgslsmith_add_i32(47322i, countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i, arg_0.x), vec2<i32>(2147483647i, -2147483647i))));
    let var_1 = Struct_1(arg_0.xxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(833f, 1153f, true)), -880f, 1f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-336f - _wgslsmith_f_op_f32(sign(-220f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-322f)), _wgslsmith_f_op_f32(ceil(-1083f))), (0i == u_input.d.x) & true)))), u_input.d.xyw, !vec2<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), !all(vec2<bool>(false, false))));
    var_0 = (_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -7188i, 0i, -31370i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(-3324i, arg_1, -1i, -1i)), reverseBits(vec4<i32>(u_input.b, var_1.d.x, 0i, 56i))) | 19195i) >= arg_1;
    global0 = u_input.d;
    global0 = max(vec4<i32>(reverseBits(_wgslsmith_dot_vec3_i32(select(u_input.d.zyw, vec3<i32>(2147483647i, var_1.a.x, global0.x), false), firstLeadingBit(var_1.d))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, -2147483647i, 1038i), u_input.d), var_1.d.x), var_1.d.x, 11739i), arg_0);
    return Struct_3(Struct_1(global0.yxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * var_1.b), var_1.b)), var_1.b.x, firstTrailingBit(arg_0.yxw), !(!(!vec2<bool>(var_1.e.x, false)))), Struct_2(~u_input.c, -(~var_1.d), Struct_1(var_1.d, var_1.b, -1042f, reverseBits(~vec3<i32>(2147483647i, -1i, global0.x)), vec2<bool>(select(false, var_1.e.x, false), var_1.e.x)), Struct_1((var_1.d | var_1.d) ^ (u_input.d.zzy | vec3<i32>(4210i, 19616i, arg_0.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(var_1.e.x)))), -1772f, abs(select(arg_0.yxy, vec3<i32>(-50456i, global0.x, 18165i), var_1.e.x)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(var_1.b.x - var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(681f, var_1.b.x) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(601f, var_1.c))))))), vec3<u32>(43108u, ~u_input.c.x, 108482u));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = arg_0.b.a.wzw;
    var var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(27019i, select(arg_1.b.x, func_2(vec4<i32>(0i, -52657i, 0i, -1i), global0.x).b.c.a.x, false), -7074i), vec3<i32>(abs(~_wgslsmith_sub_i32(arg_1.d.d.x, global0.x)), select(-1i, arg_0.a.d.x, true | (arg_1.d.e.x & true)), _wgslsmith_div_i32(2147483647i, 32256i)));
    var_1 = firstLeadingBit(abs(u_input.d.zxz));
    var var_2 = any(select(vec4<bool>(false, !any(vec4<bool>(arg_1.c.e.x, arg_0.b.c.e.x, arg_0.a.e.x, arg_0.b.c.e.x)), true, true), vec4<bool>(true, !(!arg_0.b.c.e.x), false, select(true, true, arg_1.d.e.x == false)), _wgslsmith_f_op_f32(round(arg_1.c.b.x)) > arg_1.e.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.b.x, -1327f)), arg_1.e)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.e.x, -864f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(arg_1.e, vec2<f32>(arg_1.c.b.x, arg_0.a.c))), arg_0.b.e)), arg_1.d.e.x)) - vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_0.a.e.x)).x, -1771f)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.d.c))), _wgslsmith_f_op_f32(arg_1.c.b.x - _wgslsmith_f_op_f32(step(-1185f, arg_1.d.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(1i, -2147483647i, -25221i, var_1.x), -30667i).b.e + _wgslsmith_f_op_vec2_f32(-arg_1.e)))) + _wgslsmith_f_op_vec2_f32(arg_0.a.b.xy * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-753f - -1191f))))));
}

fn func_5(arg_0: vec2<f32>) -> vec4<i32> {
    global0 = u_input.d;
    var var_0 = Struct_4(vec2<bool>(false, false), Struct_1(abs(~min(global0.wzz, vec3<i32>(global0.x, global0.x, 1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1131f, -284f, -437f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1377f, arg_0.x, arg_0.x), vec3<f32>(434f, arg_0.x, arg_0.x)))), -367f, _wgslsmith_add_vec3_i32(max(vec3<i32>(6559i, 17583i, global0.x) | vec3<i32>(-9474i, 0i, 10155i), reverseBits(vec3<i32>(0i, global0.x, global0.x))), ~(-vec3<i32>(u_input.b, u_input.b, global0.x))), func_2(~u_input.d, u_input.d.x).b.d.e), func_2(vec4<i32>(-global0.x << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), u_input.b, ~global0.x << (~4294967295u % 32u), _wgslsmith_dot_vec4_i32(-u_input.d, u_input.d)), _wgslsmith_dot_vec3_i32(u_input.d.wxz, vec3<i32>(i32(-1i) * -1i, firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(global0.x, 35851i)))).b.d);
    let var_1 = 19988i;
    global0 = _wgslsmith_mod_vec4_i32(~u_input.d, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, 2147483647i, var_0.b.d.x, global0.x), u_input.d, vec4<bool>(false, true, var_0.b.e.x, var_0.a.x)), u_input.d) << ((u_input.c << ((u_input.c ^ vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(~1i, -1i, reverseBits(_wgslsmith_clamp_i32(-3352i, var_0.b.a.x, 3188i)), firstLeadingBit(global0.x))));
    var var_2 = ~(-vec4<i32>((i32(-1i) * -1333i) << (u_input.a % 32u), _wgslsmith_sub_i32(~global0.x, _wgslsmith_div_i32(-5946i, var_1)), 21172i, -3041i));
    return vec4<i32>(-1i, -var_1, u_input.b, -var_1);
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> f32 {
    var var_0 = -45235i;
    global0 = _wgslsmith_clamp_vec4_i32(abs(~_wgslsmith_div_vec4_i32(countOneBits(u_input.d), u_input.d << (vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.c.x) % vec4<u32>(32u)))), min(u_input.d, vec4<i32>(arg_1.c, (2147483647i & arg_2) >> (20077u % 32u), arg_2, arg_1.a & global0.x)), func_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, 732f))), _wgslsmith_f_op_vec2_f32(func_4(func_2(u_input.d, 34620i), func_2(vec4<i32>(-11830i, global0.x, 4779i, 15310i), global0.x).b))))));
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_vec3_f32(func_3(true)).x;
    var_1 = arg_0;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -395f))), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(316f, Struct_5(38558i, true, -5366i), -3089i)))))));
    var var_1 = func_2(u_input.d, firstLeadingBit(firstTrailingBit(-abs(-2147483647i)))).a;
    var_1 = Struct_1(~vec3<i32>(1i & ~u_input.d.x, ~_wgslsmith_mod_i32(var_1.a.x, global0.x), max(-68919i, _wgslsmith_mult_i32(global0.x, -78583i))), _wgslsmith_f_op_vec3_f32(select(var_1.b, var_1.b, select(!select(vec3<bool>(true, var_1.e.x, true), vec3<bool>(true, var_1.e.x, true), vec3<bool>(false, true, true)), vec3<bool>(true, false | var_1.e.x, var_1.e.x), var_1.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c))), -(~_wgslsmith_sub_vec3_i32(firstTrailingBit(global0.xww), ~u_input.d.xwx)), vec2<bool>(true, true));
    var var_2 = -var_1.a.zx;
    var var_3 = Struct_2(u_input.c, -(min(vec3<i32>(global0.x, -6544i, var_2.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, var_1.a.x, var_2.x), global0.xzx)) & vec3<i32>(~(-44852i), abs(2147483647i), -8328i)), func_2(countOneBits(abs(u_input.d)), 2147483647i).a, Struct_1(~firstTrailingBit(vec3<i32>(global0.x, 0i, -37376i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(var_1.b.x, var_1.b.x, 656f)))), -466f, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.d, u_input.d.ywx), u_input.d.ywy) & reverseBits(global0.yzw), !(!func_2(u_input.d, -1i).b.c.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.xz) + _wgslsmith_f_op_vec2_f32(-var_1.b.yx)));
    var var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(74854u, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(1735i), abs(var_3.c.d.x), var_1.d.x), vec3<i32>(_wgslsmith_mult_i32(1i, 1i), _wgslsmith_clamp_i32(u_input.b, var_2.x, var_2.x), 1i)), -8379i, abs(reverseBits(var_1.a.x)) ^ -20760i, _wgslsmith_sub_i32(func_2(-vec4<i32>(u_input.b, -1i, -2147483647i, 0i), var_3.d.a.x).b.b.x, ~func_2(u_input.d, 2147483647i).b.b.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1048f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) + 1270f)))), ~max(select(~u_input.c.zzy, abs(vec3<u32>(56286u, u_input.c.x, 68426u)), vec3<bool>(true, false, false)), _wgslsmith_mult_vec3_u32(~var_3.a.yzx, ~vec3<u32>(44695u, u_input.a, u_input.c.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, ~u_input.b, var_1.d.x) << (abs(var_3.a.xxy) % vec3<u32>(32u)), max(u_input.d.yzx, global0.yzy >> (vec3<u32>(49612u, var_3.a.x, 78847u) % vec3<u32>(32u))) ^ vec3<i32>(-var_3.d.a.x, abs(u_input.d.x), _wgslsmith_dot_vec3_i32(var_3.b, vec3<i32>(var_2.x, -39333i, 3726i)))));
}

