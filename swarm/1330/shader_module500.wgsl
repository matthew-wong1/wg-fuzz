struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1000f) + _wgslsmith_f_op_f32(207f + 1520f)), -394f, _wgslsmith_f_op_f32(f32(-1f) * -728f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1779f, -192f, 1056f))), vec3<f32>(_wgslsmith_f_op_f32(min(-2010f, -1136f)), 682f, _wgslsmith_f_op_f32(-1087f - -1000f)))));
    let var_1 = Struct_1(~u_input.c, vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 15290u)), 1u, ~23406u), vec3<u32>(~4294967295u, 1u, ~12036u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, 1u, u_input.b.x)), _wgslsmith_add_vec3_u32(~u_input.b.yzx, ~vec3<u32>(u_input.b.x, 10841u, 0u))), u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, abs(-22578i)), vec2<i32>(1i, 1i) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.d), vec2<i32>(0i, 0i))) ^ u_input.a.x);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(u_input.c, reverseBits(var_1.a)), var_1.b, 0i);
    let var_3 = Struct_2(var_1, vec4<u32>(~firstLeadingBit(12015u), 4686u, 109350u, (u_input.b.x ^ u_input.b.x) | var_1.b.x) & countOneBits(var_2.b), !(!(u_input.b.x > 4294967295u)));
    let var_4 = select(var_3.a.a, ~var_2.a, true);
    return _wgslsmith_sub_i32(-37439i, ~1i);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_4 {
    let var_0 = false;
    let var_1 = Struct_3(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.c.x, -12916i), vec4<i32>(arg_0.x, -1951i, -23512i, arg_0.x)), vec4<i32>(-44317i, -7895i, ~10760i, -2147483647i)), i32(-1i) * -u_input.c.x, ~(-firstLeadingBit(65014i))), Struct_1(reverseBits(vec2<i32>(-22853i, func_3())), vec4<u32>(arg_1.x, 0u, arg_1.x << (arg_1.x % 32u), arg_1.x) ^ _wgslsmith_div_vec4_u32(u_input.b, ~u_input.b), -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, arg_0.x, -63046i, -2147483647i), vec4<i32>(u_input.a.x, arg_0.x, 1i, u_input.a.x), vec4<i32>(-10143i, u_input.c.x, -61078i, arg_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-2934i, u_input.c.x, arg_0.x, -30494i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(588f, -1135f, -828f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, 1000f, 690f))))), Struct_2(Struct_1(_wgslsmith_add_vec2_i32(select(arg_0, u_input.a.xz, vec2<bool>(var_0, arg_2)), vec2<i32>(u_input.d, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), firstTrailingBit(arg_0.x)), u_input.b | _wgslsmith_sub_vec4_u32(u_input.b, ~u_input.b), !var_0));
    var var_2 = Struct_1(-reverseBits(var_1.b.a) >> (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.x, 13627u), arg_1.xz, vec2<u32>(arg_1.x, u_input.b.x)) << (~vec2<u32>(var_1.b.b.x, var_1.d.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>((u_input.b.x & u_input.b.x) >> (1u % 32u), var_1.d.b.x, ~16006u, ~_wgslsmith_dot_vec2_u32(var_1.b.b.xx, var_1.b.b.xz)), countOneBits(vec4<u32>(firstLeadingBit(66161u), ~1u, _wgslsmith_div_u32(0u, u_input.b.x), 1u))), 54899i);
    var_2 = Struct_1(select(arg_0, countOneBits((var_2.a | vec2<i32>(22038i, -1i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(76291u, 990u), vec2<u32>(0u, 1u), var_1.b.b.xz) % vec2<u32>(32u))), !select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, false), vec2<bool>(var_0, var_1.d.c), vec2<bool>(var_0, true)), vec2<bool>(arg_2, var_1.d.c))), u_input.b, -u_input.d << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 30569u, 26442u, 114095u), var_2.b) % 32u));
    let var_3 = ~vec2<u32>(countOneBits(firstTrailingBit(0u) ^ 3449u), _wgslsmith_dot_vec3_u32(arg_1, ~countOneBits(vec3<u32>(arg_1.x, 1u, 9661u))));
    return Struct_4(~vec4<i32>(2370i, -2147483647i, var_2.a.x, firstLeadingBit(var_2.a.x)) & vec4<i32>(-arg_0.x, max(-1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-24154i, u_input.a.x, var_2.c))), ~arg_0.x ^ ~35154i, -1i), Struct_2(Struct_1(-abs(vec2<i32>(u_input.a.x, var_1.a.x)), ~vec4<u32>(var_2.b.x, 50541u, var_2.b.x, 1u), 1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 0u, var_2.b.x, var_1.b.b.x), vec4<u32>(arg_1.x, arg_1.x, var_2.b.x, 1u)) % 32u)), abs(abs(~vec4<u32>(7072u, var_3.x, 0u, var_3.x))), arg_2 || true), true);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, -272f, 443f, arg_1))), arg_0 || arg_3.c)), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(ceil(-355f)), _wgslsmith_f_op_f32(arg_1 - 125f), _wgslsmith_f_op_f32(587f * arg_1))) * vec4<f32>(arg_1, 607f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(744f, arg_1)))), 830f)));
    let var_1 = max(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c, -vec2<i32>(-36562i, -21147i)), arg_3.b.a.a.x, 1i), u_input.a), -vec3<i32>(~(~u_input.c.x), 7397i, func_3()));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1618f, -392f, -1278f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 419f, 202f, arg_1), vec4<f32>(arg_1, 610f, -420f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, arg_1, arg_1, 1763f) - vec4<f32>(arg_1, -882f, 584f, 807f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1032f, 1354f, var_0.x, arg_1) - vec4<f32>(-609f, 1000f, var_0.x, 969f))))));
    return arg_3;
}

fn func_1() -> u32 {
    let var_0 = Struct_5(all(vec4<bool>(true, true, true, true)), func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(170f + 816f), -1265f))), false, func_2(vec2<i32>(_wgslsmith_div_i32(-2147483647i, 1949i), 34753i), select(~u_input.b.wyw, vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, true)), vec2<f32>(_wgslsmith_f_op_f32(min(482f, -1733f)), _wgslsmith_f_op_f32(-613f + 1650f)))), select(vec3<bool>(true, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a) >= 1i, -u_input.c.x > reverseBits(u_input.c.x)), vec3<bool>(func_2(vec2<i32>(u_input.c.x, 34633i), min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.yww), true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-682f, -2022f)))).b.c, true, true), false), vec4<i32>(u_input.c.x, 2147483647i, -(~u_input.c.x), -12381i) << (~abs(vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)));
    let var_1 = var_0.b.b;
    var var_2 = Struct_3(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.a.c, var_0.b.a.x, -2147483647i), _wgslsmith_clamp_vec3_i32(var_0.b.a.ywy, u_input.a, vec3<i32>(var_0.d.x, 56809i, -1i))), ~firstLeadingBit(u_input.a)), reverseBits(max(func_4(var_1.c, 614f, true, var_0.b).a.wyz, ~vec3<i32>(19194i, -1i, 2147483647i)))), var_1.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-399f * 407f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + 451f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1735f))), -123f), Struct_2(var_0.b.b.a, var_0.b.b.b, all(!var_0.c.zx)));
    let var_3 = func_4(var_1.c, var_2.c.x, !(1440f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) * _wgslsmith_f_op_f32(trunc(var_2.c.x)))), Struct_4((abs(var_0.d) | -vec4<i32>(var_1.a.c, var_2.d.a.c, var_0.d.x, var_2.a.x)) >> (var_2.b.b % vec4<u32>(32u)), Struct_2(var_0.b.b.a, min(var_0.b.b.b, var_1.b >> (var_0.b.b.a.b % vec4<u32>(32u))), ~var_1.a.b.x != var_1.b.x), var_0.a));
    var var_4 = var_3;
    return ~_wgslsmith_add_u32(~20129u, ~(~5604u));
}

fn func_5(arg_0: bool, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_4) -> Struct_4 {
    let var_0 = arg_3.b.a;
    var var_1 = arg_2.b.b.a.b.x;
    var var_2 = arg_1.d.x;
    var_2 = (-64644i & (u_input.c.x ^ 1i)) << (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~20218u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.b.a.b.x, 4294967295u), vec2<u32>(1u, arg_1.b.b.a.b.x)), var_0.b.x ^ 33458u)), 0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.b.x, arg_3.b.b.x), arg_2.b.b.a.b.x) ^ arg_2.b.b.b.x) % 32u);
    let var_3 = (((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.b.b.a.b.x, arg_1.b.b.a.b.x), vec3<u32>(622u, 4294967295u, 36786u)) | ~arg_1.b.b.b.x) | (select(arg_3.b.b.x, arg_2.b.b.a.b.x, false) & 46214u)) >> (0u % 32u)) & arg_3.b.b.x;
    return func_2(vec2<i32>(arg_2.d.x, 22988i), arg_1.b.b.b.yxz << (vec3<u32>(~21537u, 4294967295u, select(arg_1.b.b.b.x, arg_1.b.b.b.x, true)) % vec3<u32>(32u)), false, vec2<f32>(_wgslsmith_f_op_f32(1608f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -747f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-376f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1424f, -971f)) + _wgslsmith_f_op_f32(f32(-1f) * -1897f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5((4294967295u << (u_input.b.x % 32u)) < (abs(func_1()) >> (~_wgslsmith_add_u32(u_input.b.x, 4294967295u) % 32u)), Struct_5(any(vec2<bool>(false, false)) & (~u_input.b.x >= abs(u_input.b.x)), Struct_4(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.c.x, u_input.a.x), u_input.d << (77855u % 32u), u_input.a.x), Struct_2(func_2(u_input.c, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), true, vec2<f32>(1482f, 489f)).b.a, vec4<u32>(u_input.b.x, 49982u, u_input.b.x, 98770u), true), u_input.a.x <= countOneBits(u_input.d)), select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(false, true, false) | (u_input.a.x == -115396i)), vec4<i32>(~(~11653i), 34277i, i32(-1i) * -17642i, _wgslsmith_sub_i32(-38130i, u_input.d))), Struct_5(select(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !(u_input.b.x < 1u)), Struct_4(vec4<i32>(-1i) * -vec4<i32>(-52653i, 35494i, u_input.d, u_input.c.x), func_4(true, _wgslsmith_f_op_f32(trunc(-1000f)), true, Struct_4(vec4<i32>(16463i, u_input.d, u_input.d, u_input.a.x), Struct_2(Struct_1(u_input.c, vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u), u_input.d), u_input.b, false), true)).b, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec4<i32>(1i, u_input.a.x | -1i, u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 6310i, -878i, -25396i), vec4<i32>(u_input.d, 30686i, u_input.a.x, -2147483647i))) >> (vec4<u32>(u_input.b.x >> (2165u % 32u), u_input.b.x | u_input.b.x, u_input.b.x ^ 4294967295u, ~1u) % vec4<u32>(32u))), func_2(-(vec2<i32>(-1i) * -u_input.c), ~vec3<u32>(~u_input.b.x, ~4294967295u, 4294967295u & u_input.b.x), !(true | all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-755f, -2413f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1471f, -149f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1111f), _wgslsmith_f_op_f32(771f * 733f)), true))));
    let var_1 = Struct_2(var_0.b.a, ~(~(~var_0.b.b)) & u_input.b, all(select(select(vec3<bool>(var_0.c, false, false), vec3<bool>(var_0.c, true, true), func_5(var_0.b.c, Struct_5(var_0.b.c, var_0, vec3<bool>(false, var_0.b.c, true), vec4<i32>(u_input.a.x, 0i, 0i, 9861i)), Struct_5(false, var_0, vec3<bool>(false, false, false), var_0.a), Struct_4(vec4<i32>(12258i, var_0.b.a.c, var_0.a.x, u_input.d), var_0.b, false)).b.c), vec3<bool>(all(vec3<bool>(false, false, var_0.c)), true, true || var_0.b.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec4_i32(select(var_0.a, vec4<i32>(var_0.b.a.a.x, -18169i, -16492i, 49058i), true), -var_0.a)), ~var_1.a.b.x, _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(~var_0.b.a.b.x, var_1.b.x, 57128u >> (u_input.b.x % 32u))), vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x), 4294967295u, var_1.b.x)));
}

