struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(-56774i, u_input.c.x, 2147483647i), 73707i, -2147483647i);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1188f, -1500f), vec2<f32>(-1790f, 345f), vec2<bool>(true, true))))) - vec2<f32>(427f, -534f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1914f)), _wgslsmith_f_op_f32(197f - -613f), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-690f, -545f))), vec2<f32>(_wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(f32(-1f) * -208f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -194f), 914f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), any(vec4<bool>(true, true, true, true)))), var_1.x)), abs(min(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 12474u), vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(7231u, u_input.b)), ~(~vec2<u32>(0u, u_input.b)))), var_0.yy | max(-vec2<i32>(0i, var_0.x), var_0.zz), select(select(vec3<bool>(false, all(vec4<bool>(true, false, true, false)), true), vec3<bool>(true, true, true), true || all(vec4<bool>(false, true, false, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), true), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(0i, var_0.x)), var_0.yy), vec2<i32>(var_0.x, u_input.a.x) | (vec2<i32>(2147483647i, -228i) | vec2<i32>(-6657i, u_input.c.x))), firstLeadingBit(_wgslsmith_add_vec2_i32(var_0.zy, _wgslsmith_mult_vec2_i32(var_0.yz, var_0.xz))), select(u_input.a & vec2<i32>(-26587i, u_input.a.x), ~vec2<i32>(u_input.c.x, 19773i), true) & vec2<i32>(u_input.a.x, 66327i)));
    let var_3 = select(_wgslsmith_div_vec2_i32(vec2<i32>(min(var_2.e.x, 8085i), ~(-3114i)), vec2<i32>(var_2.e.x, 1i) >> (~var_2.b % vec2<u32>(32u))) ^ ~(countOneBits(u_input.c) & var_2.e), var_0.zy, vec2<bool>(var_2.d.x, true));
    var var_4 = var_1.x;
    return 1u << (1u % 32u);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(654f, ~vec2<u32>(u_input.b, _wgslsmith_add_u32(4294967295u, func_3())), _wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.c.x << (39621u % 32u)), u_input.c), vec3<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), -41105i <= select(~u_input.a.x, 48709i, select(true, false, true))), -countOneBits(vec2<i32>(_wgslsmith_mod_i32(42702i, u_input.c.x), u_input.a.x)));
    let var_1 = vec3<u32>(4294967295u, u_input.b, select(1u, u_input.b, all(vec3<bool>(true, true, u_input.c.x > var_0.e.x))));
    let var_2 = Struct_1(var_0.a, var_0.b, _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.c.x, 1i) | vec2<i32>(u_input.c.x, var_0.c.x), var_0.e, vec2<bool>(false, true)), vec2<i32>(~u_input.c.x, -23634i)), var_0.e), vec3<bool>(all(var_0.d.xz), false, any(!(!vec4<bool>(true, false, var_0.d.x, true)))), -select(vec2<i32>(var_0.e.x, ~9717i), vec2<i32>(u_input.c.x, var_0.e.x), true));
    var var_3 = ~((i32(-1i) * -1i) << (var_1.x % 32u));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f * _wgslsmith_f_op_f32(trunc(var_0.a))))));
    return 268f;
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(354f * _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -404f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - 607f) * -1734f)));
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i | u_input.c.x), u_input.c.x), firstTrailingBit(u_input.a)), Struct_1(_wgslsmith_f_op_f32(abs(var_0)), vec2<u32>(_wgslsmith_div_u32(u_input.b << (u_input.b % 32u), ~u_input.b), ~_wgslsmith_mod_u32(u_input.b, u_input.b)), -(~(~u_input.c)), vec3<bool>(any(vec3<bool>(false, true, true)), !all(vec4<bool>(false, false, true, false)), true), _wgslsmith_clamp_vec2_i32(-(u_input.c & vec2<i32>(-50547i, u_input.c.x)), vec2<i32>(1i, u_input.a.x) & vec2<i32>(-34634i, u_input.c.x), ~(-u_input.c))), firstLeadingBit(-firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x))) ^ ~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 0i, -24606i, 1i)), (select(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b), select(false, false, true)) | (~vec2<u32>(4294967295u, u_input.b) | abs(vec2<u32>(48526u, u_input.b)))) | _wgslsmith_div_vec2_u32((vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(24802u, u_input.b) % vec2<u32>(32u))) & ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(firstTrailingBit(u_input.b), 1u ^ u_input.b)), -273f);
    let var_2 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(29873u, u_input.b, 4294967295u), firstLeadingBit(vec3<u32>(19298u, u_input.b, 0u))), _wgslsmith_add_u32(0u, _wgslsmith_sub_u32(var_1.b.b.x, 1u)), _wgslsmith_clamp_u32(~var_1.b.b.x, u_input.b, 20035u), (33742u << (u_input.b % 32u)) << ((var_1.b.b.x ^ 67638u) % 32u))) >> (~vec4<u32>(4294967295u, ~u_input.b, 126662u, ~var_1.b.b.x) % vec4<u32>(32u));
    var var_3 = abs(0u);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0), vec2<u32>(_wgslsmith_sub_u32(4294967295u, 41315u), var_2.x), vec2<i32>(abs(u_input.a.x), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(var_1.c.yxz, vec3<i32>(var_1.c.x, u_input.c.x, 45869i) & vec3<i32>(var_1.c.x, u_input.c.x, u_input.a.x)))), vec3<bool>(any(!var_1.b.d), !all(select(vec4<bool>(var_1.b.d.x, false, true, false), vec4<bool>(true, false, false, var_1.b.d.x), vec4<bool>(var_1.b.d.x, var_1.b.d.x, false, true))), !var_1.b.d.x), _wgslsmith_mod_vec2_i32(~(~_wgslsmith_mod_vec2_i32(var_1.b.e, u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -var_1.c.x), var_1.c.zw)));
    return select(2147483647i, u_input.c.x, all(!vec4<bool>(true, false, var_1.b.d.x, false))) << (~abs(~112657u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(380f + 538f), _wgslsmith_f_op_f32(1000f - 607f), all(vec2<bool>(true, false)))) + -342f)), firstLeadingBit(countOneBits(14920i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f * -394f) + _wgslsmith_f_op_f32(-2353f * 1043f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(145f + -791f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1132f, -261f, -1901f, -275f)))), select(firstLeadingBit(vec2<i32>(-5776i, u_input.a.x)), u_input.a, vec2<bool>(u_input.c.x != _wgslsmith_sub_i32(u_input.a.x, u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(57558u, u_input.b)) <= (u_input.b >> (u_input.b % 32u)))));
}

