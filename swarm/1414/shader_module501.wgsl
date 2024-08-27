struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, _wgslsmith_f_op_f32(ceil(-336f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1217f, -351f), vec2<f32>(497f, -1645f)))))));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-218f, -1439f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-728f, var_0.x), vec2<f32>(1528f, var_0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-429f, var_0.x) - vec2<f32>(var_0.x, var_0.x))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2888f, -157f) * vec2<f32>(var_0.x, 1329f)) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_0.x), vec2<f32>(1553f, 1000f))))), vec2<bool>(false, all(!vec4<bool>(arg_1.x, true, arg_0.b, true))))));
    let var_1 = arg_0;
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.x) - vec2<f32>(-827f, var_0.x))))))));
    var var_2 = (vec4<u32>(abs(1u), 73726u, _wgslsmith_mod_u32(firstLeadingBit(33111u), min(31578u, 25159u)), ~u_input.c.x) | (~_wgslsmith_add_vec4_u32(vec4<u32>(50554u, 4294967295u, 12487u, u_input.d), vec4<u32>(u_input.c.x, 0u, arg_0.d, arg_0.d)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d, u_input.c.x, 0u, 89783u), vec4<u32>(u_input.c.x, u_input.d, 4029u, 4294967295u)) << (abs(vec4<u32>(var_1.d, var_1.d, u_input.c.x, arg_0.d)) % vec4<u32>(32u))) % vec4<u32>(32u)))) << (vec4<u32>(~(_wgslsmith_add_u32(5701u, 1u) | (u_input.d << (var_1.d % 32u))), ~firstLeadingBit(1u) >> (_wgslsmith_clamp_u32(u_input.c.x, var_1.d >> (u_input.d % 32u), 133738u) % 32u), ((38849u ^ u_input.d) << (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1.d, 0u, arg_0.d)) % 32u)) << ((_wgslsmith_add_u32(59489u, arg_0.d) << (abs(1u) % 32u)) % 32u), 4294967295u) % vec4<u32>(32u));
    return var_0.x;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> f32 {
    let var_0 = vec2<u32>(~(~u_input.d), reverseBits(abs(~abs(u_input.d))));
    let var_1 = arg_1.zy;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-464f + -1237f), _wgslsmith_f_op_f32(-2637f - 152f)))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~(~(~(~vec2<u32>(4294967295u, u_input.c.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, u_input.b, u_input.a)), ~vec3<i32>(-1i, u_input.a, u_input.b)), true && (u_input.d >= 52222u), _wgslsmith_mult_i32(-u_input.b, 64931i), 1u), !vec3<bool>(false, false, any(vec2<bool>(false, false))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-329f, 320f, 891f), vec3<f32>(-518f, 1490f, 344f))) - vec3<f32>(-1787f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true), vec4<i32>(u_input.a, -34014i, 23378i, 5194i))), _wgslsmith_f_op_f32(f32(-1f) * -439f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-164f, 834f, -594f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1132f, 1028f, 989f), vec3<f32>(1000f, 1719f, -642f), true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(~vec2<u32>(1u, _wgslsmith_div_u32(~u_input.d, ~u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) - _wgslsmith_f_op_vec3_f32(func_1())), Struct_3(select(all(vec2<bool>(true, true)), true, false), _wgslsmith_sub_vec3_i32(vec3<i32>(6317i, _wgslsmith_div_i32(-1i, 1i), firstTrailingBit(1i)), vec3<i32>(u_input.a << (u_input.c.x % 32u), ~u_input.b, -2147483647i)), ~u_input.d, vec2<i32>(-1i) * -(~vec2<i32>(119i, 1i)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true)));
    var var_1 = 20432u;
    let var_2 = ~u_input.d >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(_wgslsmith_mult_u32(15193u, u_input.c.x), countOneBits(u_input.d))), firstLeadingBit(min(u_input.d, 1u))) % 32u);
    var_0 = Struct_5(vec2<u32>(~_wgslsmith_div_u32(~4099u, firstLeadingBit(var_2)), 0u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, 902f, var_0.b.x), var_0.b, false)), vec3<f32>(-706f, -641f, 357f))), var_0.b), var_0.c);
    let var_3 = Struct_2(vec3<i32>(_wgslsmith_mod_i32(var_0.c.b.x, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(~0i, -u_input.a), var_0.c.b.yy), -29074i), var_0.c.e.x & any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.c.e.x, true, true), select(vec4<bool>(var_0.c.e.x, true, var_0.c.e.x, var_0.c.a), vec4<bool>(var_0.c.a, var_0.c.e.x, false, var_0.c.e.x), true))), 1i, _wgslsmith_dot_vec3_u32(~vec3<u32>(countOneBits(0u), ~30733u, firstTrailingBit(4294967295u)), u_input.c));
    let var_4 = countOneBits(~0u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.c, u_input.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(step(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(1000f * -1268f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(864f, var_0.b.x, -196f, var_0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-267f, var_0.b.x, var_0.b.x, 121f)), u_input.c.x == 32451u))))), ~var_0.c.d.x, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_3.d, u_input.c.x), vec3<u32>(1u, 10667u, var_0.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.d, 52405u, var_3.d), u_input.c)) >> (4294967295u % 32u)), _wgslsmith_add_vec3_u32(abs(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.c, u_input.c))), select(vec3<u32>(19511u, var_3.d, 1u), u_input.c << (u_input.c % vec3<u32>(32u)), all(vec4<bool>(var_0.c.e.x, false, true, false))) ^ u_input.c));
}

