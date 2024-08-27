struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2457i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global0 = _wgslsmith_mult_i32(abs(u_input.a), u_input.a);
    var var_0 = true;
    var var_1 = true;
    var var_2 = ~(select(u_input.c, ~vec2<u32>(0u, u_input.c.x), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))) << (u_input.d % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2750f) - -1337f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1478f)) * -589f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(664f, 1611f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(508f, 763f, 1000f))))), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)))), vec3<f32>(_wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1114f + -848f)))), -219f, 1650f), vec3<bool>(true, true, true)));
    return select(vec3<i32>(_wgslsmith_mult_i32(26951i, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 1i, -49513i)), vec3<i32>(0i, -6764i, u_input.a) >> (vec3<u32>(54229u, 33710u, 1u) % vec3<u32>(32u)))), _wgslsmith_add_i32(max(u_input.a, u_input.a), -26989i) | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(21279i, u_input.a, 66676i, 2147483647i)), vec4<i32>(0i, u_input.a, 4752i, u_input.a) | vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), _wgslsmith_mult_i32(min(-66761i, u_input.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, 0u), vec3<u32>(0u, 0u, 65307u)) % 32u), ~0i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a >> (u_input.d.x % 32u), -1181i, -2147483647i) ^ select(vec3<i32>(u_input.a, -82035i, u_input.a) >> (vec3<u32>(4294967295u, u_input.b.x, u_input.d.x) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, 2147483647i, 94919i), true), -vec3<i32>(-38091i, 37043i, abs(u_input.a))), !(select(true, true, var_3.x < var_3.x) & true));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_3(16160i, _wgslsmith_sub_vec3_i32(select(vec3<i32>(-23522i, u_input.a, 2147483647i), firstTrailingBit(vec3<i32>(u_input.a, u_input.a, u_input.a)), true) << (select(min(vec3<u32>(19548u, 27087u, arg_0.x), vec3<u32>(u_input.b.x, arg_0.x, 1u)), reverseBits(vec3<u32>(0u, arg_0.x, 0u)), true) % vec3<u32>(32u)), func_3()), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(909f, -454f, 622f))), Struct_1(_wgslsmith_div_i32(-28545i, _wgslsmith_sub_i32(u_input.a, u_input.a)) <= _wgslsmith_clamp_i32(~u_input.a, select(u_input.a, u_input.a, true), ~(-24324i)), vec3<i32>(u_input.a, firstLeadingBit(-2147483647i), countOneBits(u_input.a >> (arg_0.x % 32u))), (i32(-1i) * -u_input.a) > abs(_wgslsmith_add_i32(7179i, -41328i)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1188f, -293f, 233f, -211f) * vec4<f32>(-1129f, -1000f, -622f, -564f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-451f, -576f, 1867f, -1273f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1266f)), _wgslsmith_div_f32(-1543f, -1601f)))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, u_input.a, var_0.d.b.x), var_0.b);
    global0 = u_input.a;
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, _wgslsmith_sub_i32(26759i << (arg_0.x % 32u), i32(-1i) * -2147483647i)), -23002i, 11360i), var_0.b);
    var_1 = vec3<i32>(firstTrailingBit(select(~_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, 1i), vec2<i32>(var_1.x, var_1.x)), var_0.d.a)), 1i, -var_0.d.b.x >> (~min(firstLeadingBit(4294967295u), arg_0.x << (4294967295u % 32u)) % 32u));
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = func_2(u_input.d).d;
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(_wgslsmith_f_op_f32(-func_2(u_input.b).c.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2198f, var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1526f * -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(686f + _wgslsmith_f_op_f32(-var_0.e.x)), _wgslsmith_f_op_f32(-arg_3.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-1828f, -1238f)), _wgslsmith_f_op_f32(arg_3.d.e.x * var_0.d.x), true)) - _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_div_f32(var_0.d.x, -314f)))), _wgslsmith_f_op_f32(-var_0.d.x))));
    var var_2 = func_2(max(reverseBits(_wgslsmith_clamp_vec2_u32(u_input.b, ~vec2<u32>(u_input.b.x, 1u), vec2<u32>(0u, u_input.b.x))), _wgslsmith_clamp_vec2_u32(vec2<u32>(5846u, 0u) << (u_input.d % vec2<u32>(32u)), abs(vec2<u32>(u_input.b.x, u_input.d.x)), vec2<u32>(3317u, 1u)) ^ select(u_input.d, ~u_input.b, vec2<bool>(arg_3.d.c, var_0.c))));
    var var_3 = 5937i;
    var_1 = var_2.d.d;
    return vec3<i32>(var_2.d.b.x ^ _wgslsmith_sub_i32(reverseBits(1i), min(arg_1.x, func_3().x)), -1i, i32(-1i) * -(_wgslsmith_div_i32(1i, -2147483647i) ^ min(var_0.b.x, 1i)));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global0 = -max(~_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a);
    global0 = -14605i & (u_input.a ^ 37825i);
    let var_0 = Struct_3(2147483647i, func_4(vec2<bool>(true, true), ~select(-vec4<i32>(49462i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, -2147483647i, 0i, -6107i), true), 2531f, func_2(vec2<u32>(~u_input.b.x, 1u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(582f, 784f, -941f) + vec3<f32>(-1009f, 1385f, -260f))))), Struct_1(max(-13467i, ~2147483647i) > _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -31556i, 2147483647i), vec4<i32>(u_input.a, u_input.a, -10598i, u_input.a)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, -1i), 1i, u_input.a), ~u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)), true, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1133f, -664f, -462f, 1279f) - vec4<f32>(-230f, -417f, 1424f, -253f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f * 1000f)), _wgslsmith_f_op_f32(-1214f + _wgslsmith_f_op_f32(round(1000f))))));
    return !(!vec3<bool>(!var_0.d.a && false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~reverseBits(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -27435i, u_input.a), vec3<i32>(-40796i, u_input.a, u_input.a)))));
    var var_0 = -105f;
    var var_1 = ~abs(select(_wgslsmith_add_u32(1u, u_input.c.x), u_input.c.x ^ 20173u, true)) & _wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(u_input.b.x, u_input.c.x, 45549u) << (vec3<u32>(62681u, 0u, 4294967295u) % vec3<u32>(32u))), select(firstTrailingBit(vec3<u32>(98770u, u_input.d.x, u_input.c.x)), ~vec3<u32>(u_input.d.x, 33443u, u_input.c.x), func_1(38878u))), vec3<u32>(reverseBits(70388u), u_input.c.x, u_input.c.x) << (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d.x, u_input.d.x, 84890u), vec3<u32>(25461u, u_input.d.x, u_input.c.x)) % vec3<u32>(32u)));
    var_1 = 28891u;
    var var_2 = -1000f;
    var var_3 = func_2(vec2<u32>(~u_input.d.x << (u_input.b.x % 32u), ~54220u)).d;
    var var_4 = vec4<f32>(var_3.e.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e.x, -1445f))), var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(46155u, ~vec4<u32>(u_input.b.x, _wgslsmith_mod_u32(u_input.d.x | 4294967295u, ~u_input.d.x), _wgslsmith_add_u32(~84815u, u_input.c.x & u_input.c.x), ~0u));
}

