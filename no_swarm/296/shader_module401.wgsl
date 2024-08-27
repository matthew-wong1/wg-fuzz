struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_sub_i32(474i, 41750i);
    let var_1 = arg_1;
    let var_2 = !select(select(vec3<bool>(true, false, 14912u >= arg_1.c), vec3<bool>(any(arg_0), !arg_0.x, arg_0.x), vec3<bool>(arg_0.x, true, true)), select(select(vec3<bool>(false, true, false), !vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(!arg_0.x, -17721i != var_1.a, arg_0.x != arg_0.x), !vec3<bool>(false, arg_0.x, arg_0.x)), arg_0.x);
    var var_3 = (41152i | ~countOneBits(var_1.a)) != max(_wgslsmith_sub_i32(_wgslsmith_div_i32(~var_1.a, 74402i), firstTrailingBit(0i)), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(u_input.a.x, -26233i, var_1.a, -17571i)), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a, -2147483647i, -89366i, -2147483647i)), vec4<i32>(21062i, -44840i, var_1.a, u_input.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1442f, var_1.b))))), _wgslsmith_f_op_f32(-var_1.b), false)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), arg_2)), -1613f), -580f, _wgslsmith_f_op_f32(arg_0.b.b - -345f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(func_3(select(arg_0.c.b.yx, arg_0.c.b.yy, false), Struct_1(arg_0.e.a, arg_2.b, arg_0.e.c))), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-589f - arg_2.b)))));
    let var_1 = Struct_3(1000f);
    var var_2 = Struct_1(arg_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), 4294967295u);
    var_2 = Struct_1(i32(-1i) * -u_input.a.x, -1212f, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) & countOneBits(select(vec3<u32>(4294967295u, var_2.c, 5030u), vec3<u32>(3246u, 64880u, arg_2.c), false)), _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(3720u, 4294967295u, 1u), vec3<u32>(1200u, arg_2.c, var_2.c)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(arg_0.d, var_2.c, arg_2.c), vec3<u32>(u_input.b, arg_0.d, 4294967295u), arg_0.c.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.c, arg_2.c, var_2.c), vec3<u32>(5837u, 0u, arg_0.b.c))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0 - var_0)));
    return ~(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 24693u, arg_2.c), vec4<u32>(u_input.b, 1u, 0u, 3448u)))) & var_2.c;
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<bool>(true, any(vec2<bool>(!(arg_0 <= arg_0), select(true, true, true))), false);
    var_0 = select(!select(vec3<bool>(all(var_0.yz), true, true), vec3<bool>(var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), false), true), select(select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(var_0.x, true, var_0.x), true), -6258i <= u_input.a.x), vec3<bool>(var_0.x, true, var_0.x), !(!var_0.x)), select(!vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(select(var_0.x, var_0.x, true), var_0.x & false, true), false), select(vec3<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), !var_0.x, -16152i > u_input.a.x), select(!vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true))), false)), !var_0.x);
    let var_1 = Struct_3(arg_0);
    var var_2 = select(var_0.x, true, var_0.x);
    var var_3 = var_1;
    return Struct_1(firstLeadingBit(27491i), _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), Struct_1(6615i, 1541f, u_input.b))))), reverseBits(15752u));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-426f, -180f, -1000f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(771f, -912f, -149f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.e.b, -948f, arg_2.b))))))));
    var var_1 = -941f;
    var var_2 = Struct_1(-u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + 235f), arg_2.c & 1u);
    var var_3 = Struct_1(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b + -1419f), -157f), ~_wgslsmith_div_u32(var_2.c, arg_0.b.c));
    let var_4 = arg_0;
    return abs(u_input.a.zy);
}

fn func_1() -> Struct_1 {
    let var_0 = -func_5(Struct_4(u_input.a, func_4(_wgslsmith_f_op_f32(max(-1267f, 142f)), func_2(Struct_4(vec3<i32>(0i, u_input.a.x, -50721i), Struct_1(2147483647i, -300f, u_input.b), global0[_wgslsmith_index_u32(32508u, 10u)], u_input.b, Struct_1(-2147483647i, -545f, u_input.b)), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_1(2889i, 659f, 14404u))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.b & u_input.b), 10u)], max(~70608u, u_input.b), Struct_1(u_input.a.x >> (u_input.b % 32u), _wgslsmith_f_op_f32(-657f * -307f), max(u_input.b, 4294967295u))), vec3<bool>(-1i <= (u_input.a.x >> (u_input.b % 32u)), true, true), Struct_1(u_input.a.x, -777f, 0u));
    global0 = array<Struct_2, 10>();
    global1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_mult_i32(firstLeadingBit(-1i), _wgslsmith_sub_i32(u_input.a.x, var_0.x) ^ var_0.x)), _wgslsmith_add_i32(-1i, _wgslsmith_mod_i32(countOneBits(u_input.a.x), u_input.a.x >> (u_input.b % 32u))), select(1i, _wgslsmith_dot_vec3_i32(~max(u_input.a, u_input.a), select(~vec3<i32>(var_0.x, -3071i, u_input.a.x), -vec3<i32>(var_0.x, u_input.a.x, 15885i), false)), true));
    var var_1 = 85784u;
    var var_2 = Struct_4(_wgslsmith_add_vec3_i32(u_input.a, max(~firstLeadingBit(vec3<i32>(-21503i, 34730i, var_0.x)), u_input.a)), func_4(_wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-211f, -391f) - 1109f)), ~(~max(22144u, 1u))), global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_div_u32(1u, _wgslsmith_div_u32(abs(~4294967295u), firstTrailingBit(~u_input.b))), Struct_1(u_input.a.x, -985f, ~u_input.b));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-623f * -315f), vec3<bool>(false, false, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false)))));
    var var_1 = func_1();
    var var_2 = 2572u;
    let var_3 = vec3<bool>(!(!(_wgslsmith_add_i32(u_input.a.x, var_1.a) <= u_input.a.x)), true, var_0.b.x);
    let var_4 = Struct_4(u_input.a, func_1(), var_0, ~(8354u >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_1.c, u_input.b, var_1.c), vec4<u32>(4294967295u, u_input.b, 0u, 18839u)), 17326u) % 32u)), Struct_1(-33426i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))) * _wgslsmith_f_op_f32(select(974f, _wgslsmith_f_op_f32(-var_1.b), any(vec4<bool>(var_0.b.x, true, true, false))))), _wgslsmith_sub_u32(85287u << (~u_input.b % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), ~vec2<u32>(u_input.b, 11848u)))));
    let var_5 = Struct_3(-829f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b, -1045f, -1743f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-974f, var_5.a, var_0.a))))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.e.b, var_4.e.b, -1000f, var_5.a), vec4<f32>(-1260f, var_0.a, var_0.a, 391f), true)) + vec4<f32>(var_0.a, -1000f, var_1.b, 348f))))), -23155i, _wgslsmith_sub_i32(5584i, var_4.a.x));
}

