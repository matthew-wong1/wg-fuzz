struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 0i;
    var var_1 = Struct_5(arg_0, any(vec2<bool>(true, true)), Struct_2(Struct_1(-(arg_0.a >> (vec4<u32>(7767u, 23747u, 1u, 9486u) % vec4<u32>(32u))), arg_0.b)), 1f);
    var var_2 = Struct_4(vec2<bool>(arg_0.b < countOneBits(_wgslsmith_add_u32(0u, 33977u)), select(var_1.b, select(any(vec4<bool>(var_1.b, true, false, true)), !var_1.b, var_1.b), var_1.b)), 650f);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1531f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(453f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * 751f) + 448f))));
    return -_wgslsmith_clamp_i32(2147483647i, 7373i ^ var_1.c.a.a.x, 1i);
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = all(vec2<bool>(true, true | !(arg_1 < arg_1)));
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.b.x, func_3(Struct_1(vec4<i32>(21484i, u_input.c, 0i, -12398i), u_input.a)), ~arg_0), ~vec4<i32>(2147483647i, u_input.c, arg_0, 54447i) | min(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, -33984i, 19785i, arg_0), vec4<i32>(u_input.b.x, u_input.c, 1i, arg_0)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, -10144i, -2147483647i, u_input.b.x), vec4<i32>(-1i, arg_0, u_input.c, -2147483647i)))), -firstLeadingBit(-vec4<i32>(57332i, arg_0, 2147483647i, u_input.b.x)));
    let var_3 = ~u_input.b.x;
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(676f, 1000f)), 1145f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1000f)))))));
    return !any(vec2<bool>(all(vec4<bool>(true, true, true, false)), any(vec2<bool>(false, true)))) | (14260u < (_wgslsmith_mult_u32(u_input.a << (16829u % 32u), select(27416u, 56242u, false)) & 24204u));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = select(!(!func_2(3684i, arg_0.x)), true, false) & true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)) + _wgslsmith_f_op_f32(max(arg_0.x, -959f))) * 249f))), arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * 633f)))), _wgslsmith_f_op_f32(min(arg_0.x, 1940f)))));
    let var_2 = var_1.zz;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -562f, arg_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -1695f) - -495f)))));
    return any(select(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), vec4<bool>(true, (arg_1 & 6684u) == 58374u, true, all(vec2<bool>(true, true))), false));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: i32) -> Struct_3 {
    let var_0 = u_input.b;
    let var_1 = 1i >> (_wgslsmith_add_u32(1u, u_input.a) % 32u);
    let var_2 = -(vec4<i32>(-1i) * -abs(reverseBits(vec4<i32>(-70652i, -2147483647i, -1i, arg_1))));
    let var_3 = vec4<u32>(u_input.a, countOneBits(u_input.a), ~min(_wgslsmith_mod_u32(~u_input.a, 0u), u_input.a), _wgslsmith_sub_u32(select(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(37766u, 1u)), arg_0.a.x) & 4294967295u, u_input.a >> (~(~59976u) % 32u)));
    var var_4 = -vec3<i32>(arg_1, min(_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(28352i, -7217i, arg_2, arg_1)), u_input.c) ^ -12270i, arg_1 | _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.x, -2147483647i, arg_2) & vec3<i32>(var_0.x, var_1, -76774i)));
    return Struct_3(false, arg_0.b, Struct_2(Struct_1(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(8012i, -23854i, arg_2, var_1)), var_2), 22282u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), true), vec2<bool>(u_input.b.x == u_input.b.x, func_1(vec3<f32>(1000f, 1641f, -1393f), u_input.a, Struct_2(Struct_1(vec4<i32>(-55055i, u_input.c, 21982i, 0i), 73923u)))), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-808f)), -409f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(387f)))))), _wgslsmith_mod_i32(abs(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x & u_input.c, u_input.b.x), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 33071i, u_input.b.x), u_input.b), u_input.c))), u_input.c);
    var_0 = func_4(Struct_4(vec2<bool>(true, false), -1533f), firstTrailingBit(-(u_input.b.x >> (~3191u % 32u))), var_0.c.a.a.x);
    var var_1 = var_0.a;
    let var_2 = ~30017u;
    var_0 = func_4(Struct_4(vec2<bool>(false, true), _wgslsmith_f_op_f32(round(2287f))), firstLeadingBit(var_0.c.a.a.x), firstLeadingBit(2147483647i));
    var var_3 = Struct_5(var_0.c.a, false, func_4(Struct_4(vec2<bool>(var_0.a, false), 291f), -1i, var_0.c.a.a.x).c, -948f);
    let var_4 = vec2<u32>(4294967295u, 4294967295u);
    var var_5 = -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4, ~u_input.b.zz, abs(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 31738u, 0u, 4294967295u), vec4<u32>(var_2, 0u, 1u, var_2))) | (select(vec4<u32>(41721u, var_4.x, 69664u, var_3.a.b), vec4<u32>(0u, var_2, 6245u, var_2), var_3.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_3.a.b, u_input.a, var_3.c.a.b), vec4<u32>(1u, 17969u, var_2, 19885u)) % vec4<u32>(32u)))), select(abs(~u_input.a), var_2 ^ var_4.x, true));
}

