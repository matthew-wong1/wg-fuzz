struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(-373f, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_sub_vec2_i32(arg_0.a, vec2<i32>(countOneBits(u_input.a), 3783i)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))), !vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), true)), arg_0, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(768f, arg_0.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(floor(arg_0.b.x))))), ~countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(55561u, u_input.b.x, arg_2), vec3<u32>(53858u, arg_2, u_input.b.x))), _wgslsmith_mult_u32(0u, ~(~50134u)));
    var var_1 = -1085f;
    var var_2 = vec3<i32>(arg_0.a.x, -31628i, _wgslsmith_add_i32(61603i, ~(-31050i) >> ((~4294967295u >> (max(3417u, arg_2) % 32u)) % 32u)));
    var_1 = arg_0.b.x;
    var var_3 = var_0;
    return var_3.d.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = arg_1.a;
    var var_1 = ~7797u;
    let var_2 = 58353u;
    var_1 = var_2;
    var var_3 = _wgslsmith_sub_u32(20338u, 0u);
    return _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36383u, ~_wgslsmith_clamp_u32(arg_2.x, arg_1.e, 24820u), var_2, 4294967295u), abs(vec4<u32>(arg_2.x, ~var_2, ~74443u, func_3(Struct_2(arg_1.b.a, vec4<f32>(arg_3.b.x, -625f, arg_1.c.x, arg_1.b.b.x)), vec4<u32>(arg_2.x, 1u, u_input.b.x, arg_1.d.x), 14578u)))), max(countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zy), 4294967295u, ~arg_2.x, var_2)), firstLeadingBit(~vec4<u32>(u_input.b.x, arg_1.e, arg_1.e, 0u) | ~vec4<u32>(arg_1.e, 46130u, arg_1.d.x, 100385u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(-25369i, 1i ^ _wgslsmith_div_i32((-23540i ^ arg_0.x) << (2802u % 32u), _wgslsmith_mod_i32(u_input.a, ~1i)));
    let var_1 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), all(vec3<bool>(false, false, true))), !all(vec2<bool>(false, true))), vec4<bool>(false, countOneBits(58162u) >= _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), false, false));
    var var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-610f, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))))) - 2237f));
    let var_3 = Struct_3(Struct_1(arg_1.x, _wgslsmith_f_op_f32(step(arg_1.x, 1f)), ~(-vec2<i32>(24030i, -337i) >> (u_input.b.yz % vec2<u32>(32u))), !(!all(var_1)), select(select(!vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, true, true, true), false && var_1.x), !var_1, false)), Struct_2(vec2<i32>(-1i) * -(~arg_0.yy), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -474f, arg_1.x, arg_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2274f, -782f, -800f, 1000f)))))), vec2<f32>(-519f, 655f), u_input.b, 46136u);
    return 1i;
}

fn func_1() -> bool {
    var var_0 = vec4<u32>(u_input.b.x, ~(~4067u), 4294967295u, abs(4294967295u));
    var_0 = ~(~firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(56852u, var_0.x, 38094u, var_0.x), ~vec4<u32>(var_0.x, u_input.b.x, 1u, var_0.x))));
    let var_1 = 0i;
    var var_2 = -func_4(~(~vec4<i32>(-2147483647i, 0i, 340i, u_input.d) >> (func_2(vec3<bool>(false, false, false), Struct_3(Struct_1(-1191f, 635f, vec2<i32>(1i, -2147483647i), true, vec4<bool>(true, true, false, false)), Struct_2(vec2<i32>(u_input.d, var_1), vec4<f32>(-606f, -239f, -1542f, 1221f)), vec2<f32>(-461f, -1173f), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0.x), vec3<u32>(1u, var_0.x, var_0.x), Struct_2(vec2<i32>(22752i, 1i), vec4<f32>(1393f, 310f, -344f, 670f))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1638f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(599f, 192f) - vec2<f32>(-950f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -822f), -183f), false)));
    var_0 = vec4<u32>(_wgslsmith_div_u32(var_0.x, ~(_wgslsmith_dot_vec2_u32(var_0.xw, u_input.b.yy) ^ ~1u)), var_0.x, 16849u << (var_0.x % 32u), 51583u ^ ~(~var_0.x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, func_1(), true));
    var_0 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(~u_input.d, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, u_input.e)), -vec2<i32>(-26457i, u_input.d)))) >= u_input.a;
    var var_1 = ~(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.c), vec3<i32>(28121i, u_input.d, 0i)) | -u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.a), vec3<i32>(u_input.a, 0i, -27207i)))));
    var_1 = reverseBits(~(reverseBits(vec2<i32>(var_1.x, -37079i)) & _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-22002i, 2147483647i), vec2<i32>(u_input.e, 1i)), vec2<i32>(-1i, 24035i))));
    let var_2 = countOneBits(~firstTrailingBit(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x) >> ((vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 90684u) | vec4<u32>(19020u, 4289u, 4294967295u, 1u)) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(abs(1254f))))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(494f)), -1178f)));
    var_0 = true;
    var_0 = true || (false & any(vec3<bool>(false, any(vec3<bool>(false, false, true)), false)));
    var var_4 = Struct_2(select(vec2<i32>(_wgslsmith_sub_i32(u_input.d, var_1.x), abs(u_input.d)) | (~vec2<i32>(2147483647i, u_input.a) << (var_2.xw % vec2<u32>(32u))), firstTrailingBit(max(select(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(u_input.c, 0i), vec2<bool>(true, true)), vec2<i32>(var_1.x, var_1.x))), u_input.e >= min(_wgslsmith_mod_i32(-21612i, 2147483647i), abs(-276i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, var_3, -235f) + vec4<f32>(var_3, -1540f, var_3, 625f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1622f, var_3, 183f, 1306f))), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-344f, var_3, var_3, var_3)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_3, 434f, var_3) * vec4<f32>(var_3, 1104f, -237f, var_3))))) * vec4<f32>(var_3, var_3, var_3, var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, var_3) * var_4.b.yz) * vec2<f32>(170f, var_4.b.x)))))));
}

