struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: f32) -> vec2<f32> {
    let var_0 = 0i;
    let var_1 = vec4<i32>(var_0, u_input.e, 60105i, 0i | var_0) >> (vec4<u32>(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mult_u32(u_input.c, 47928u), min(1u, 9913u)), u_input.c, firstTrailingBit(max(u_input.c, 1u)), 1u) % vec4<u32>(32u));
    let var_2 = Struct_1(arg_0.a.b.xz, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_0.a.d, 796f) - vec4<f32>(arg_3, arg_3, -1000f, -767f))) + _wgslsmith_f_op_vec4_f32(-arg_0.a.b)))), arg_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1292f))), arg_0.a.b.x)), _wgslsmith_sub_vec2_i32(select(-var_1.yy, vec2<i32>(~u_input.d.x, -1i), arg_2), arg_0.a.c.xy << (_wgslsmith_add_vec2_u32(~vec2<u32>(29104u, u_input.c), ~vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))));
    var var_3 = var_2;
    var var_4 = Struct_2(var_2);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1380f, _wgslsmith_f_op_f32(arg_0.a.d * var_3.a.x))), _wgslsmith_f_op_f32(abs(var_3.b.x))) - var_2.a);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(Struct_1(vec2<f32>(1181f, 1000f), vec4<f32>(949f, 1000f, -1000f, 1000f), vec3<i32>(u_input.e, 12159i, -56286i), -755f, arg_0)), u_input.a, true, 536f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))), max(vec3<i32>(abs(arg_0.x ^ arg_0.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(-32351i, -58543i, u_input.e, u_input.e), vec4<i32>(arg_0.x, -1i, u_input.d.x, 1i)), u_input.b.x), -_wgslsmith_mult_vec3_i32(~u_input.a.xxw, vec3<i32>(0i, 11966i, -44244i) & u_input.a.wxz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - 794f)), min(-min(arg_0, vec2<i32>(arg_0.x, 16599i) & arg_0), _wgslsmith_add_vec2_i32(-u_input.a.xw & (vec2<i32>(0i, -2147483647i) | vec2<i32>(109077i, arg_0.x)), vec2<i32>(u_input.d.x, u_input.a.x))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(var_0), vec4<i32>(var_0.e.x, arg_0.x, -1i, -9294i) << (vec4<u32>(0u, 17259u, 46676u, 1u) % vec4<u32>(32u)), true, _wgslsmith_f_op_f32(-var_0.a.x))).x * -866f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(374f - var_0.a.x) * _wgslsmith_f_op_f32(1549f - -1682f)), var_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -363f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_f32(1317f * _wgslsmith_f_op_f32(var_0.b.x - 471f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a.x, var_0.d, 2074f, 230f))), _wgslsmith_f_op_vec4_f32(max(var_0.b, vec4<f32>(-1396f, var_0.d, var_0.a.x, 1093f)))) * _wgslsmith_f_op_vec4_f32(select(var_0.b, var_0.b, true)))), u_input.a.yzy, 1628f, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(var_0.c ^ var_0.c, -vec3<i32>(arg_0.x, 2147483647i, 1i)), select(var_0.c.x, 1i, any(vec3<bool>(false, false, false)))), -vec2<i32>(var_0.c.x << (u_input.c % 32u), ~(-2696i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, arg_0.x) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), u_input.a.yx)));
    let var_2 = u_input.e;
    return Struct_2(var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: i32) -> bool {
    let var_0 = arg_1;
    var var_1 = func_2(vec2<i32>(_wgslsmith_mult_i32(var_0.a.c.x, abs(var_0.a.c.x)), i32(-1i) * -_wgslsmith_mod_i32(var_0.a.e.x, -2147483647i))).a;
    var var_2 = true;
    let var_3 = -31622i;
    let var_4 = 60262u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(arg_1, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_0.a.e.x, var_1.e.x, 0i, -1i)), arg_2.x < var_4, _wgslsmith_f_op_f32(-arg_1.a.d))).x - _wgslsmith_f_op_f32(f32(-1f) * -2436f))) <= -161f;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = Struct_1(arg_3.a.b.zw, _wgslsmith_div_vec4_f32(arg_3.a.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_3.a.b)))), u_input.a.zyw, 1000f, firstLeadingBit(_wgslsmith_div_vec2_i32(~u_input.d, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-15398i, var_0), vec2<i32>(arg_3.a.c.x, u_input.b.x)), u_input.a.zz))));
    var var_2 = u_input.d;
    let var_3 = ~countOneBits(~(~69255u));
    let var_4 = Struct_1(vec2<f32>(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.b.x, arg_3.a.a.x) * _wgslsmith_f_op_f32(-arg_3.a.b.x)), arg_2, arg_1))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(arg_3.a.b - _wgslsmith_f_op_vec4_f32(-var_1.b)), vec4<f32>(arg_3.a.d, _wgslsmith_f_op_f32(var_1.b.x * var_1.d), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(254f, -1357f)))))), select(var_1.c, vec3<i32>(abs(i32(-1i) * -14534i), _wgslsmith_div_i32(-24220i, 10666i), min(_wgslsmith_mult_i32(var_0, -17335i), _wgslsmith_sub_i32(var_1.c.x, u_input.d.x))), !vec3<bool>(arg_1, false, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))) * -415f), -449f)), var_1.e);
    return Struct_1(var_1.a, vec4<f32>(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x + 1212f) + 557f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f - arg_2) + _wgslsmith_f_op_f32(arg_3.a.a.x - var_4.d))), var_4.b.x, arg_3.a.b.x), ~func_2(-vec2<i32>(1i, var_0)).a.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b.x))), _wgslsmith_f_op_f32(-arg_3.a.a.x))), -arg_3.a.e);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec3<i32>(~(-2147483647i), ~countOneBits(firstLeadingBit(0i)) ^ _wgslsmith_add_i32(arg_0 & arg_3.a.c.x, ~(~(-1i))), _wgslsmith_sub_i32(~(-u_input.b.x) | max(~arg_3.a.e.x, 0i), u_input.e << (~(~85566u) % 32u)));
    let var_1 = arg_3.a.c.x;
    var var_2 = Struct_2(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, 0u)), abs(vec2<u32>(65618u, u_input.c))), func_4(true, func_2(vec2<i32>(arg_3.a.c.x, 11916i) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))), ~vec2<u32>(10327u, 1u), u_input.b.x), arg_3.a.d, Struct_2(arg_3.a)));
    var var_3 = vec3<i32>(i32(-1i) * -(_wgslsmith_clamp_i32(1i, arg_0, 16072i) & (15184i >> (u_input.c % 32u))), 1i, ~func_5(select(vec2<u32>(0u, u_input.c) & vec2<u32>(57400u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(119361u, 4294967295u), vec2<u32>(u_input.c, 4294967295u)), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_mod_u32(u_input.c, 4820u) >= u_input.c, arg_3.a.d, arg_3).c.x);
    let var_4 = arg_3.a;
    return func_2(~arg_3.a.c.yz);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = !any(vec2<bool>(true | any(vec3<bool>(true, false, false)), false));
    let var_1 = true;
    let var_2 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 22188u, 1u, u_input.c) << (vec4<u32>(u_input.c, 79365u, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<u32>(153439u, 1u, u_input.c, 21508u)), ~1u), u_input.c & ~abs(u_input.c), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), firstLeadingBit(vec2<u32>(0u, u_input.c))), u_input.c));
    let var_3 = Struct_2(arg_0.a);
    var var_4 = vec3<f32>(-1204f, arg_1.a.d, func_1(_wgslsmith_mult_i32(38079i, arg_0.a.e.x & -u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.d - arg_1.a.b.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1473f, arg_0.a.a.x) - func_2(vec2<i32>(-40149i, u_input.b.x)).a.a.x), arg_0.a.d), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-439f, -1248f) + vec2<f32>(arg_1.a.d, -1610f)), _wgslsmith_f_op_vec4_f32(var_3.a.b + vec4<f32>(1515f, var_3.a.b.x, -466f, -671f)), firstLeadingBit(vec3<i32>(-2147483647i, -1i, -37461i)), _wgslsmith_f_op_f32(min(415f, -270f)), arg_2.a.e))).a.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1467f * func_5(vec2<u32>(u_input.c, u_input.c), true, arg_0.a.d, arg_0).d) + 1660f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), -1000f, !var_1)) + _wgslsmith_f_op_f32(901f + _wgslsmith_div_f32(-1587f, 638f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(~(7254i | u_input.d.x), 1i, u_input.b.x, 24150i)), 122948u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1581f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(-2248f - 1849f), _wgslsmith_f_op_f32(func_6(func_1(-37192i, 574f, vec3<f32>(-338f, -2615f, -775f), Struct_2(Struct_1(vec2<f32>(1173f, 931f), vec4<f32>(-1215f, 325f, -1179f, 2426f), u_input.a.xzx, -2326f, vec2<i32>(u_input.a.x, u_input.d.x)))), Struct_2(Struct_1(vec2<f32>(2285f, -540f), vec4<f32>(2149f, -2094f, 1264f, 1213f), vec3<i32>(-538i, u_input.d.x, u_input.b.x), -977f, vec2<i32>(u_input.e, u_input.d.x))), func_1(u_input.d.x, 903f, vec3<f32>(887f, 365f, -558f), Struct_2(Struct_1(vec2<f32>(1472f, -958f), vec4<f32>(-1093f, -893f, -1000f, 541f), u_input.a.zwy, -403f, u_input.a.zw))))), -969f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(310f)), _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1313f * 392f)))));
}

