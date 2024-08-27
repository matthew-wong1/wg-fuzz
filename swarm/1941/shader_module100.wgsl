struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.a, 24759u, 86500u)) & firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.a, 4294967295u)), vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.a)) ^ ~u_input.a, ~(~min(~14112u, ~u_input.a)), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), ~26563u);
    var_0 = select(select(vec4<u32>(1u << (_wgslsmith_dot_vec2_u32(var_0.yz, var_0.zy) % 32u), ~min(var_0.x, u_input.a), select(firstTrailingBit(1u), ~u_input.a, true), 0u), vec4<u32>(reverseBits(~u_input.b), 12896u, ~(23299u & u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), abs(vec2<u32>(3737u, 33082u)))), select(vec4<bool>(all(vec3<bool>(false, true, true)), var_0.x != u_input.a, 0u != u_input.a, all(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false))), true)), ~(~min(~vec4<u32>(var_0.x, 49217u, 4294967295u, u_input.b), vec4<u32>(u_input.a, var_0.x, u_input.a, 0u) << (vec4<u32>(u_input.a, u_input.b, 4156u, u_input.b) % vec4<u32>(32u)))), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), u_input.b > u_input.b)));
    var var_1 = ~47572u;
    let var_2 = _wgslsmith_mod_vec3_u32(abs(var_0.wwy | ~var_0.zyw), ~(~firstTrailingBit(~vec3<u32>(u_input.b, 1u, var_0.x))));
    let var_3 = false;
    return vec4<i32>(_wgslsmith_sub_i32(0i, 16959i), ~(i32(-1i) * -_wgslsmith_mod_i32(u_input.c, 42429i)), 2147483647i, select(u_input.c, u_input.c, -561f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1361f - arg_0)))));
}

fn func_4(arg_0: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1023f, 1413f) * vec2<f32>(888f, 195f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1975f, -827f), vec2<f32>(-192f, -889f))))) - vec2<f32>(-592f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1406f)), -1030f))));
    let var_1 = -arg_0.x;
    let var_2 = Struct_2(Struct_1(true, ~abs(~u_input.a), (vec3<i32>(arg_0.x, -2147483647i, -24609i) << (~vec3<u32>(29900u, u_input.b, u_input.a) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 11651i, u_input.c), vec3<i32>(arg_0.x, arg_0.x, u_input.c)), ~vec3<i32>(arg_0.x, -32651i, 0i)), -vec4<i32>(u_input.c, ~28407i, select(0i, 2147483647i, false), -25292i), true), max(reverseBits(_wgslsmith_add_vec3_i32(arg_0.zyw, arg_0.xww)), arg_0.zyz) ^ max(_wgslsmith_sub_vec3_i32(vec3<i32>(20151i, arg_0.x, -55936i) ^ vec3<i32>(var_1, var_1, arg_0.x), select(arg_0.wxx, vec3<i32>(-14275i, -1i, u_input.c), false)), firstTrailingBit(arg_0.wwz & vec3<i32>(-30956i, arg_0.x, arg_0.x))), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(54745u, 4294967295u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, 19355u))), select(abs(u_input.b >> (u_input.a % 32u)), ~u_input.a << (_wgslsmith_add_u32(u_input.b, u_input.b) % 32u), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.x)))))));
    let var_3 = var_2;
    return -arg_0.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_4) -> Struct_4 {
    let var_0 = arg_3.a.c;
    let var_1 = Struct_4(arg_3.a, vec2<bool>(select(arg_3.a.a, ~arg_1 < ~var_0.x, any(vec4<bool>(false, false, arg_2.x, arg_3.b.x))), select(arg_3.b.x, any(!vec3<bool>(arg_2.x, true, false)), select(arg_3.e == arg_3.e, false, any(arg_2)))), ~firstLeadingBit(~35159i), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~12098u, 0u), max(vec2<u32>(u_input.b, arg_3.a.b), ~vec2<u32>(1u, 7141u))), arg_3.e);
    let var_2 = countOneBits(func_4(func_3(-407f)));
    let var_3 = 0u;
    var var_4 = Struct_3(_wgslsmith_mod_u32(~var_1.a.b, 4294967295u), Struct_2(var_1.a, abs(-var_0), ~(vec2<u32>(u_input.b, u_input.a) & _wgslsmith_add_vec2_u32(arg_3.d, vec2<u32>(arg_3.d.x, 67051u)))), Struct_2(arg_3.a, -var_1.a.c, ~var_1.d));
    return var_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(437f, arg_2) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-138f, arg_2), vec2<f32>(arg_2, arg_2))), vec2<f32>(173f, -1939f))))));
    let var_1 = Struct_2(func_2(_wgslsmith_add_vec2_i32(arg_1.a.c.yz, vec2<i32>(-1i) * -arg_1.a.c.zx), func_3(543f).x, arg_0.xxx, arg_1).a, ~arg_1.a.d.zwy, arg_1.d);
    var var_2 = !select(vec2<bool>(!any(arg_0), !all(vec3<bool>(false, var_1.a.a, arg_0.x))), vec2<bool>(any(vec2<bool>(arg_0.x, arg_0.x)), all(vec4<bool>(true, var_1.a.e, true, var_1.a.a))), any(select(arg_0.xxx, select(arg_0.wyw, arg_0.xxy, arg_0.wyx), arg_0.yyz)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1726f, -1111f, arg_1.e) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_2, 1404f, 1603f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, 1203f, var_0.x, -307f)))))));
    var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(272f, 166f))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -2213f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_1.e - var_0.x), -1505f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(select(arg_1.e, _wgslsmith_f_op_f32(f32(-1f) * -317f), any(arg_0.wzx))), 1000f, _wgslsmith_f_op_f32(abs(var_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1754f)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) - vec4<f32>(-238f, 170f, -533f, -1000f)), vec4<bool>(true, false, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(vec4<bool>(true, false, true, true), func_2(arg_1.zx, -1i, vec3<bool>(true, false, true), Struct_4(Struct_1(true, 1u, arg_1, vec4<i32>(1i, arg_1.x, -1i, u_input.c), false), vec2<bool>(false, true), u_input.c, vec2<u32>(65869u, 0u), arg_0)), -1067f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * 1169f))), -2347f));
    let var_1 = vec2<i32>(-2147483647i, -1i ^ u_input.c);
    return u_input.a;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(true, 15894u, -arg_0.c.b, -(~vec4<i32>(61628i, 22469i, 4997i, u_input.c)), arg_0.b.a.a | arg_1.a), -vec3<i32>(u_input.c, -1i, ~(-27108i)), ~arg_0.b.c);
    var_0 = arg_0.c;
    var_0 = Struct_2(func_2(reverseBits(_wgslsmith_mult_vec2_i32(var_0.b.xz, ~vec2<i32>(-25178i, var_0.a.c.x))), abs(arg_0.c.a.d.x), !select(!vec3<bool>(false, true, arg_1.a), vec3<bool>(var_0.a.a, arg_1.a, arg_0.c.a.e), vec3<bool>(false, true, arg_0.c.a.e)), Struct_4(Struct_1(var_0.a.a, arg_1.b, -arg_0.c.a.d.yyw, vec4<i32>(arg_1.d.x, 1i, -2147483647i, -2147483647i) & vec4<i32>(arg_1.d.x, 1i, -19308i, -3325i), all(vec2<bool>(arg_1.a, true))), select(vec2<bool>(true, true), !vec2<bool>(var_0.a.a, arg_1.a), arg_1.e), _wgslsmith_dot_vec3_i32(~arg_0.b.a.d.zxy, vec3<i32>(2147483647i, arg_1.c.x, arg_0.b.b.x)), max(var_0.c, vec2<u32>(81962u, var_0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-179f, 749f)) * -1283f))).a, -_wgslsmith_mult_vec3_i32(min(firstTrailingBit(vec3<i32>(var_0.a.d.x, arg_0.b.b.x, -6869i)), reverseBits(vec3<i32>(var_0.a.c.x, arg_1.c.x, 2147483647i))), arg_0.c.a.c & (arg_0.c.b << (vec3<u32>(u_input.b, arg_0.c.a.b, arg_1.b) % vec3<u32>(32u)))), func_2(vec2<i32>(-1749i, u_input.c) | select(vec2<i32>(2147483647i, -2147483647i), arg_1.d.yz, true), _wgslsmith_mult_i32(arg_1.c.x, arg_1.c.x), select(vec3<bool>(var_0.a.a, true, arg_1.e), !vec3<bool>(true, arg_1.e, arg_0.c.a.e), !var_0.a.a), Struct_4(func_2(var_0.b.yx, 79375i, vec3<bool>(false, false, true), Struct_4(arg_0.b.a, vec2<bool>(true, true), -1i, vec2<u32>(43767u, arg_0.b.c.x), -301f)).a, vec2<bool>(false, arg_0.b.a.a), -17920i, ~vec2<u32>(4294967295u, u_input.b), _wgslsmith_div_f32(-388f, 894f))).d >> (var_0.c % vec2<u32>(32u)));
    var var_1 = Struct_2(Struct_1(false, ~(~(~2621u)), arg_0.b.b, var_0.a.d, func_2(~vec2<i32>(arg_0.c.a.d.x, var_0.a.c.x), -arg_0.c.b.x, vec3<bool>(arg_0.b.a.e, arg_1.e, true), func_2(arg_1.c.zy, -1i, vec3<bool>(var_0.a.a, arg_1.a, true), Struct_4(Struct_1(var_0.a.a, arg_0.a, vec3<i32>(2147483647i, arg_0.c.b.x, 9688i), arg_0.b.a.d, true), vec2<bool>(var_0.a.a, arg_1.a), u_input.c, vec2<u32>(arg_1.b, arg_1.b), -1388f))).a.d.x <= _wgslsmith_dot_vec2_i32(arg_0.c.a.d.xx, vec2<i32>(-2147483647i, 10946i))), var_0.a.d.yyz, ~vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.c.c, abs(vec2<u32>(u_input.b, var_0.c.x))), ~15684u >> (_wgslsmith_mult_u32(124416u, arg_1.b) % 32u)));
    var_1 = Struct_2(var_0.a, _wgslsmith_mult_vec3_i32(arg_1.c, select(vec3<i32>(-34010i << (var_0.c.x % 32u), reverseBits(-8405i), _wgslsmith_mult_i32(var_1.a.c.x, -2147483647i)), select(vec3<i32>(-2147483647i, var_1.a.c.x, -17781i), _wgslsmith_div_vec3_i32(var_0.b, vec3<i32>(2147483647i, 0i, var_1.a.d.x)), false), vec3<bool>(true, arg_1.d.x == 0i, var_0.a.e))), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u) & (vec2<u32>(49951u, 1u) << (var_1.c % vec2<u32>(32u))), vec2<u32>(66472u, 1u), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_0.a, arg_0.a)), vec2<u32>(12303u, var_1.a.b))), vec2<u32>(firstTrailingBit(~var_1.c.x), 79354u)));
    return ~_wgslsmith_sub_u32(1u, 0u);
}

fn func_7(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = arg_1;
    var_1 = 0u;
    var_1 = firstLeadingBit(1u << (~arg_1 % 32u));
    let var_2 = ~vec4<u32>(u_input.b, ~arg_1, 24397u, arg_1 & ~42099u);
    return func_2(func_2(-countOneBits(min(vec2<i32>(u_input.c, -25496i), vec2<i32>(-1i, -1223i))), u_input.c, vec3<bool>(true, true, true), func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -953i), vec2<i32>(u_input.c, -931i)), -u_input.c, vec3<bool>(true, true, true), Struct_4(Struct_1(false, 0u, vec3<i32>(2147483647i, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, u_input.c, u_input.c), true), func_2(vec2<i32>(u_input.c, u_input.c), u_input.c, vec3<bool>(false, true, true), Struct_4(Struct_1(false, arg_1, vec3<i32>(-27806i, -1i, 11060i), vec4<i32>(u_input.c, u_input.c, u_input.c, -50017i), false), vec2<bool>(false, false), u_input.c, var_2.zy, -650f)).b, u_input.c, ~vec2<u32>(arg_1, 48423u), -166f))).a.d.ww, max(abs(func_4(vec4<i32>(1i, -1i, u_input.c, u_input.c))), u_input.c) ^ -u_input.c, !vec3<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)), true, all(vec4<bool>(true, false, true, true))), Struct_4(func_2(~(~vec2<i32>(1i, u_input.c)), -func_4(vec4<i32>(0i, u_input.c, 2147483647i, u_input.c)), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), Struct_4(func_2(vec2<i32>(-1i, u_input.c), u_input.c, vec3<bool>(true, false, true), Struct_4(Struct_1(true, var_2.x, vec3<i32>(21574i, u_input.c, u_input.c), vec4<i32>(-2147483647i, 24585i, u_input.c, -19500i), false), vec2<bool>(false, true), 15864i, var_2.xz, -2447f)).a, vec2<bool>(false, false), func_4(vec4<i32>(u_input.c, -2147483647i, 8897i, 0i)), vec2<u32>(15541u, arg_1) >> (var_2.wz % vec2<u32>(32u)), _wgslsmith_f_op_f32(arg_0 - arg_0))).a, func_2(vec2<i32>(7417i, u_input.c), 24460i, select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true)), Struct_4(Struct_1(false, 67381u, vec3<i32>(1534i, u_input.c, -70150i), vec4<i32>(u_input.c, -1896i, 1i, u_input.c), false), vec2<bool>(true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -15872i), vec2<i32>(-1i, 7770i)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 28183u), var_2.yz), _wgslsmith_f_op_f32(exp2(arg_0)))).b, -1i, ~(~(~vec2<u32>(arg_1, 7857u))), -856f)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1245f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(513f, -1422f) - -934f)))), firstLeadingBit(func_6(Struct_3(func_1(-632f, vec3<i32>(u_input.c, 27448i, u_input.c)), Struct_2(Struct_1(false, 13117u, vec3<i32>(u_input.c, -2147483647i, 0i), vec4<i32>(1i, u_input.c, u_input.c, 47659i), true), vec3<i32>(u_input.c, u_input.c, u_input.c), vec2<u32>(4294967295u, 0u)), Struct_2(Struct_1(true, 26905u, vec3<i32>(1i, -52668i, 0i), vec4<i32>(17037i, 0i, u_input.c, 50245i), false), vec3<i32>(u_input.c, 1i, u_input.c), vec2<u32>(u_input.b, 172368u))), Struct_1(true, u_input.a, ~vec3<i32>(4203i, u_input.c, u_input.c), select(vec4<i32>(1i, 29279i, u_input.c, u_input.c), vec4<i32>(-1i, u_input.c, -28870i, u_input.c), true), true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-526f, 114f, 1377f) + vec3<f32>(-2176f, 613f, 1027f)), vec3<f32>(1000f, -967f, -1076f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-149f, 1085f, 478f))))))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(382f, -1298f, -406f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1102f, 229f, -790f) * vec3<f32>(-1348f, 708f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(540f, -1458f, 1000f) * vec3<f32>(-1304f, 1719f, -1603f)), true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.c, 67907i, _wgslsmith_mult_i32(var_0.c.x, -26528i), var_0.c.x), var_0.d, ~var_0.d), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b, var_0.b, 80582u))), reverseBits(vec3<u32>(1u, var_0.b, var_0.b))), _wgslsmith_mult_u32(~var_0.b, func_6(Struct_3(1u, Struct_2(Struct_1(var_0.e, 29170u, var_0.d.yxy, var_0.d, false), vec3<i32>(u_input.c, 56698i, 2147483647i), vec2<u32>(4294967295u, var_0.b)), Struct_2(Struct_1(true, var_0.b, vec3<i32>(-2147483647i, 2147483647i, 0i), vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), true), vec3<i32>(30659i, var_0.d.x, u_input.c), vec2<u32>(15891u, var_0.b))), Struct_1(var_0.e, var_0.b, vec3<i32>(u_input.c, var_0.c.x, 40919i), var_0.d, true))) | u_input.b), var_1.x);
}

