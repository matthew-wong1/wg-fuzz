struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<u32>;

var<private> global2: i32;

var<private> global3: array<Struct_3, 31>;

var<private> global4: array<i32, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-736f + -1271f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1103f))))), ~23509u, _wgslsmith_add_vec4_i32(abs(u_input.c), vec4<i32>(-10099i, -_wgslsmith_sub_i32(-5972i, u_input.a.x), abs(global4[_wgslsmith_index_u32(~u_input.b, 5u)]), u_input.d.x)), u_input.c.yww | vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(4170i, u_input.d.x)), u_input.d.x, _wgslsmith_mult_i32(-global4[_wgslsmith_index_u32(global1.x, 5u)], u_input.c.x)), global1.x > 0u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + _wgslsmith_f_op_f32(select(var_0.a, -251f, var_0.e))) * _wgslsmith_f_op_f32(round(var_0.a))))));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: i32) -> vec4<i32> {
    global2 = ~_wgslsmith_clamp_i32(-1i, 38429i, 57372i);
    var var_0 = !select(arg_2.x, arg_2.x, false != arg_2.x);
    var var_1 = global4[_wgslsmith_index_u32(u_input.b, 5u)];
    let var_2 = arg_2.yxy;
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(703f, _wgslsmith_f_op_f32(step(arg_0.a, -1308f)))))), 180f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a - 574f), _wgslsmith_f_op_f32(min(-730f, arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_f_op_f32(arg_0.a - arg_0.a)))));
    return vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.c.x) >> (_wgslsmith_mult_u32(63223u, _wgslsmith_mod_u32(0u, abs(global1.x))) % 32u), -2147483647i, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(8011u), 23995u), 5u)], global4[_wgslsmith_index_u32(35085u, 5u)]);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(476f, ~abs(~_wgslsmith_div_u32(u_input.b, global1.x)), _wgslsmith_sub_vec4_i32(-u_input.c, vec4<i32>(-1i) * -func_2(Struct_3(332f), vec3<i32>(1i, 33095i, 89215i), vec4<bool>(true, true, true, false), -16564i)), vec3<i32>(arg_0, abs(~global4[_wgslsmith_index_u32(~u_input.b, 5u)]), select(1i, 7374i, true)), !(~countOneBits(u_input.b) == ~_wgslsmith_div_u32(3763u, 1u)));
    global2 = -60020i;
    var var_1 = global3[_wgslsmith_index_u32(0u, 31u)];
    global0 = _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec3_u32(global1.zwz, select(global1.xxw, vec3<u32>(1u, global1.x, global1.x), vec3<bool>(false, var_0.e, true)) ^ ~vec3<u32>(u_input.b, global1.x, 1u))), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1421f), u_input.b, min(vec4<i32>(_wgslsmith_mult_i32(-1i, arg_0), _wgslsmith_mod_i32(firstLeadingBit(8147i), _wgslsmith_mod_i32(u_input.a.x, -8227i)), abs(-1220i), 2147483647i), abs(var_0.c)), u_input.c.xzw, var_0.e);
    return Struct_1(2743f, ~(~_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.x, 0u), ~4294967295u)), -var_0.c, vec3<i32>(0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(~19110i, max(-2147483647i, -27100i)), ~(-u_input.d.x), ~(-34840i)), (~u_input.c.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.b, 5u)], -17192i), vec3<i32>(u_input.c.x, 15644i, arg_0))) | 2147483647i), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, u_input.d.x)) << (16242u % 32u), u_input.c.x));
    global0 = 1u;
    global0 = ~1u;
    var var_1 = -543f;
    var var_2 = -func_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~9830u, var_0.b, u_input.b) << (~59743u % 32u), 31u)], u_input.c.zwx, vec4<bool>(var_0.e, var_0.e, (var_0.c.x & 50125i) <= global4[_wgslsmith_index_u32(~var_0.b, 5u)], var_0.e), 0i ^ ~u_input.c.x).x;
    let var_3 = Struct_2(func_1(21100i), func_1(-2147483647i & firstTrailingBit(u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, 848f, -494f, var_0.a) + vec4<f32>(-730f, var_0.a, 652f, 498f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1253f, 1229f, var_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -1000f, var_0.a))))));
    let var_4 = select(((~global1.x >> (43749u % 32u)) & _wgslsmith_sub_u32(global1.x, 4294967295u)) > ~4294967295u, var_3.a.e, !(!select(any(vec2<bool>(true, true)), var_3.b.e && var_3.b.e, var_3.a.e && var_0.e)));
    global1 = ~min(~vec4<u32>(abs(u_input.b), var_3.b.b, 1u, global1.x & 31971u), ~vec4<u32>(1u, 4294967295u ^ var_3.a.b, _wgslsmith_div_u32(var_3.b.b, 93836u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_3.c.zwy * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.c.xxy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c.x, 625f, var_0.a)))))), ~reverseBits(vec2<i32>(-29976i, var_3.b.c.x) & -vec2<i32>(var_3.a.c.x, var_3.b.c.x)));
}

