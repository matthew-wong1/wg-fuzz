struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -1000f, -523f, arg_0.a.b.x)))))), arg_0.a.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -3831f))), arg_0.b.x))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, var_1, -659f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_1), -550f, _wgslsmith_f_op_f32(f32(-1f) * -538f), 1000f))));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(abs(-716f)))))), _wgslsmith_f_op_f32(-203f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-392f, -192f)))), var_0.x)));
    let var_2 = !vec4<bool>(arg_0.e, true, true, !(true == (arg_0.a.b.x != var_1)));
    return !var_2.yzx;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    let var_0 = 53063u;
    var var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(arg_0.a));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(sign(2269f))))), -169f, -1719f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, 110f, -1599f)), select(select(!arg_0.c, vec3<bool>(true, false, any(vec4<bool>(false, true, var_1.x, true))), arg_0.c), vec3<bool>(arg_0.c.x, arg_0.c.x, false), select(vec3<bool>(true, -2147483647i != u_input.b, arg_0.c.x == true), select(func_3(Struct_2(arg_0, arg_0.b.yy, vec4<i32>(-18739i, -1i, arg_0.d.x, 1i), u_input.b, var_1.x)), vec3<bool>(false, var_1.x, true), false), false)), vec2<i32>(u_input.b, arg_0.d.x) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(2971u, var_0), u_input.a.xw), ~u_input.a.yw), _wgslsmith_clamp_vec2_u32(u_input.a.xw, u_input.a.yx, u_input.a.wy)) % vec2<u32>(32u)));
    var_1 = arg_0.c;
    return Struct_2(Struct_1(var_3.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_2.xxz)) - vec3<f32>(1770f, arg_0.b.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-var_3.b))), select(vec3<bool>(all(vec3<bool>(var_3.c.x, var_1.x, true)), any(vec3<bool>(false, false, true)), true), vec3<bool>(arg_0.c.x, false, true), vec3<bool>(true, u_input.b < -18115i, false)), abs(_wgslsmith_clamp_vec2_i32(arg_0.d, arg_0.d, _wgslsmith_mult_vec2_i32(arg_0.d, vec2<i32>(-31494i, var_3.d.x))))), _wgslsmith_f_op_vec2_f32(-var_2.yz), vec4<i32>(u_input.b, -27487i, countOneBits(~arg_0.d.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_0.d.x, _wgslsmith_clamp_i32(2147483647i, -25903i, 2147483647i)), u_input.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-25813i, var_3.d.x), var_3.d.x >> (u_input.a.x % 32u)), var_3.d.x, ~arg_0.d.x, u_input.b), ~max(~vec4<i32>(u_input.b, var_3.d.x, -2147483647i, 41452i), firstLeadingBit(vec4<i32>(-29994i, var_3.d.x, 1i, -2147483647i)))), any(vec4<bool>(false, true, any(vec3<bool>(var_3.c.x, true, false)) != true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_mod_i32(1i, ~_wgslsmith_mod_i32(-48343i, arg_0.a.d.x));
    var var_1 = 1118f;
    var_1 = 280f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_div_f32(-157f, -598f)) * 144f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a.a)), arg_0.a.a.yzw, arg_0.a.c, arg_0.a.d | vec2<i32>(2147483647i, ~_wgslsmith_sub_i32(43559i, var_0)));
    return -2077f;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<f32>(-955f, arg_0.x, -1202f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, true, true), vec2<i32>(2147483647i, u_input.c)), arg_0.x), arg_0.x, firstLeadingBit(arg_1), 1f))), arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, 1774f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2289f, arg_0.x)))))));
    let var_1 = Struct_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.x, var_0.x, 790f) * vec4<f32>(-626f, arg_0.x, 1000f, 1182f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -469f, arg_0.x)), func_2(Struct_1(vec4<f32>(-668f, arg_0.x, -1101f, -511f), vec3<f32>(var_0.x, -1961f, 962f), vec3<bool>(false, true, false), vec2<i32>(u_input.c, 2147483647i)), -646f).a.c, vec2<i32>(u_input.c, u_input.c)), _wgslsmith_f_op_f32(-func_2(Struct_1(vec4<f32>(163f, var_0.x, var_0.x, 479f), vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, false, false), vec2<i32>(-2147483647i, u_input.c)), var_0.x).a.a.x)).a, 999f).a, vec2<f32>(arg_0.x, arg_0.x), min(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b, 13753i, 65598i, 37347i), _wgslsmith_add_vec4_i32(vec4<i32>(41764i, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), (vec4<i32>(u_input.b, -24414i, -3566i, u_input.b) & vec4<i32>(-20119i, -1i, -25927i, 25471i)) ^ -vec4<i32>(25430i, 1i, u_input.c, u_input.c)), vec4<i32>(-2147483647i >> (arg_1 % 32u), _wgslsmith_div_i32(firstLeadingBit(u_input.c), ~1i), u_input.b, 15537i)), abs(u_input.b), any(select(func_3(Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, -1563f, var_0.x), vec3<f32>(var_0.x, 339f, 773f), vec3<bool>(true, false, false), vec2<i32>(u_input.c, u_input.b)), vec2<f32>(-391f, 1033f), vec4<i32>(-1i, -41835i, -371i, u_input.c), -2147483647i, false)).yy, select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), -23620i >= select(u_input.b, -44328i, false))));
    let var_2 = ~(~arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1695f)), _wgslsmith_f_op_f32(round(-1307f))) + var_0.x), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.a.b.x)))) * var_0.x), _wgslsmith_div_f32(2685f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_1.a.a - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a.b.x, -452f, arg_0.x, arg_0.x)))))));
    var var_4 = var_1.a.c.x;
    return _wgslsmith_sub_vec4_u32(vec4<u32>(select(reverseBits(80086u), arg_1, var_1.a.c.x), var_2, _wgslsmith_mod_u32(~63564u, _wgslsmith_dot_vec4_u32(vec4<u32>(23396u, 1u, 15734u, u_input.a.x), vec4<u32>(var_2, 4294967295u, 0u, u_input.a.x))) | firstLeadingBit(4294967295u), u_input.a.x), _wgslsmith_div_vec4_u32(u_input.a, _wgslsmith_add_vec4_u32(u_input.a | u_input.a, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 17119u, 51824u, arg_1), u_input.a)) << (u_input.a % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 30546u, ~_wgslsmith_sub_u32(u_input.a.x ^ u_input.a.x, abs(u_input.a.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, func_1(vec2<f32>(-260f, 116f), u_input.a.x >> (u_input.a.x % 32u))), u_input.a.x, _wgslsmith_add_u32(29126u << (u_input.a.x % 32u), ~u_input.a.x) & countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 72429u, u_input.a.x, u_input.a.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-233f, 912f, -833f, -744f) + vec4<f32>(1502f, -1399f, 456f, 680f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-317f, -1224f, 1253f, -1000f), true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_div_f32(404f, _wgslsmith_f_op_f32(f32(-1f) * -596f)), 331f)), vec3<bool>(!any(vec3<bool>(true, true, true)), func_3(Struct_2(func_2(Struct_1(vec4<f32>(-321f, 1723f, -330f, -1364f), vec3<f32>(673f, -494f, -1120f), vec3<bool>(false, true, false), vec2<i32>(10792i, u_input.b)), 819f).a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-407f, -762f)), vec4<i32>(0i, u_input.c, 1i, u_input.b) & vec4<i32>(u_input.b, u_input.b, u_input.c, 0i), -51949i, all(vec2<bool>(true, true)))).x, 1f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(570f)), 602f, func_3(Struct_2(Struct_1(vec4<f32>(122f, -216f, -500f, 502f), vec3<f32>(131f, 1000f, 563f), vec3<bool>(false, true, true), vec2<i32>(u_input.c, -2147483647i)), vec2<f32>(635f, -203f), vec4<i32>(2229i, u_input.b, -2147483647i, u_input.c), -2044i, false)).x))), _wgslsmith_add_vec2_i32(firstLeadingBit(reverseBits(vec2<i32>(u_input.c, u_input.c))) >> (var_0.xz % vec2<u32>(32u)), ~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(0i, -1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(13765i, u_input.b)))));
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a + var_1.a) + var_1.a)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(var_1.a, vec3<f32>(711f, var_1.a.x, var_1.b.x), var_1.c, vec2<i32>(-15856i, -39547i)), vec2<f32>(-260f, var_1.a.x), vec4<i32>(-1i, u_input.b, u_input.b, u_input.c), 3635i, var_1.c.x), 183f, u_input.a.x, var_1.b.x)), -351f))), func_2(func_2(Struct_1(var_1.a, vec3<f32>(var_1.a.x, var_1.a.x, 1437f), var_1.c, var_1.d), _wgslsmith_f_op_f32(round(-729f))).a, -1000f).a.c, -vec2<i32>(u_input.b, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec4<f32>(-1421f, 655f, 386f, var_1.b.x), var_1.b, vec3<bool>(true, var_1.c.x, true), vec2<i32>(u_input.b, var_1.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(233f, var_1.a.x) * vec2<f32>(-774f, var_1.a.x)), abs(vec4<i32>(var_1.d.x, -13193i, var_1.d.x, var_1.d.x)), _wgslsmith_add_i32(u_input.b, var_1.d.x), !var_1.c.x), 1793f, countOneBits(42805u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(580f, var_1.a.x))))));
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.ww)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.yy - var_2.a.a.yw))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(var_1.a.yx)))), func_3(Struct_2(func_2(Struct_1(var_2.a.a, vec3<f32>(var_1.b.x, 1754f, var_1.b.x), var_2.a.c, var_1.d), var_1.a.x).a, func_2(Struct_1(var_2.a.a, vec3<f32>(var_1.a.x, -293f, 1292f), vec3<bool>(true, false, var_2.e), vec2<i32>(-2127i, -26019i)), var_2.a.b.x).b, vec4<i32>(-16692i, var_2.c.x, 2147483647i, -34767i), _wgslsmith_add_i32(0i, u_input.c), var_1.c.x || false)).zz)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(-var_1.d.x, _wgslsmith_add_i32(var_2.a.d.x, reverseBits(1i))), -var_1.d.x, u_input.b), -u_input.c, !(!(var_1.a.x > _wgslsmith_f_op_f32(1128f + 730f))));
    let var_4 = var_2.a;
    var_3 = Struct_2(var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.b.x, var_4.a.x)), ~firstLeadingBit(~var_2.c), ~var_1.d.x, any(!func_3(Struct_2(Struct_1(var_1.a, var_4.b, vec3<bool>(true, false, false), var_2.a.d), vec2<f32>(var_4.a.x, -1000f), var_2.c, var_1.d.x, var_2.e))) & all(!select(vec4<bool>(true, var_1.c.x, true, var_2.e), vec4<bool>(false, true, true, var_1.c.x), vec4<bool>(var_3.e, var_2.e, var_3.e, false))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, 48875u), _wgslsmith_dot_vec4_u32(~max(vec4<u32>(var_0.x, u_input.a.x, var_0.x, u_input.a.x), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 39494u)), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, ~44166u), vec3<u32>(~11323u, ~u_input.a.x, 0u)), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(67035u, 13700u), 1u))), ~var_3.c >> (vec4<u32>(u_input.a.x, var_0.x, ~u_input.a.x, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, var_1.b.x)), var_0.x).x) % vec4<u32>(32u)), var_2.a.a.x, max(vec2<u32>(17870u, ~abs(var_0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x), max(vec4<u32>(u_input.a.x, 21655u, 5787u, u_input.a.x), u_input.a)), var_0.x)), ~var_0);
}

