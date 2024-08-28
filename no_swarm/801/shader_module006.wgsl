struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global0 = max(countOneBits(global1.b.e), u_input.b);
    global1 = Struct_3(Struct_1(firstTrailingBit(select(arg_1.b.a, vec2<i32>(-2147483647i, arg_0.b.a.x), !global1.a.b.ww)), !vec4<bool>(select(true, arg_0.b.c, false), true, !arg_1.b.c, select(false, arg_1.b.b.x, false)), global1.b.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1.b.d)), _wgslsmith_div_vec4_f32(arg_1.b.d, arg_0.b.d)), arg_1.b.a.x), Struct_1(global1.a.a, !select(arg_0.b.b, select(arg_0.b.b, arg_0.b.b, arg_1.b.c), vec4<bool>(global1.d, arg_0.b.b.x, global1.b.b.x, false)), global1.d, arg_0.b.d, _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-26032i, arg_1.b.a.x, 2147483647i, -1i), vec4<i32>(u_input.b, u_input.b, arg_1.b.e, arg_0.b.e)), _wgslsmith_dot_vec3_i32(global1.c, vec3<i32>(-10249i, global1.b.a.x, u_input.b))))), ~(~(~(~vec3<i32>(0i, arg_0.b.e, -1i)))), ~(~u_input.a.x ^ _wgslsmith_add_u32(u_input.a.x, u_input.a.x)) == reverseBits(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(9097u, 18265u, 4294967295u), ~4294967295u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.b.d.x, -1000f), vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.a, 1161f, arg_0.b.c)), _wgslsmith_f_op_f32(global1.a.d.x * global1.e.x)), true)), _wgslsmith_f_op_vec2_f32(-arg_0.b.d.zy)));
    var var_0 = Struct_4(Struct_2(_wgslsmith_div_f32(arg_0.b.d.x, arg_0.a), arg_1.b), ~arg_1.b.a);
    var var_1 = arg_0.b;
    var var_2 = Struct_3(Struct_1(var_0.a.b.a, !(!vec4<bool>(false, global1.d, arg_1.b.b.x, false)), global1.a.c, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(687f, _wgslsmith_f_op_f32(sign(global1.a.d.x)), 3204f, var_1.d.x))), arg_0.b.e), arg_1.b, abs(global1.c), arg_0.b.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.d.zy)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(144f, 853f))))));
    return var_0.a.b.b.x;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(vec2<i32>(-12486i, u_input.d), global1.a.b, all(select(vec4<bool>(false, arg_2, true, global1.d), global1.b.b, select(arg_2, global1.d, global1.b.c))), vec4<f32>(-739f, -1029f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3))), -2236f), global1.a.e), global1.b, vec3<i32>(~_wgslsmith_mult_i32(u_input.c, 0i), _wgslsmith_mult_i32(0i, ~u_input.c), ~(-10916i)) | vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, global1.c.x), ~(-2147483647i), select(u_input.b, 89622i, global1.d)), select(~u_input.b, 21436i, any(global1.b.b)), 8494i ^ -global1.c.x), select(!global1.d && true, false, arg_2), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.e))));
    let var_1 = var_0.b.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_0.b.d)));
    let var_3 = Struct_3(var_0.a, global1.b, var_0.c, 16501u <= arg_0, var_0.e);
    var var_4 = ~(~4294967295u);
    return Struct_3(var_0.a, var_0.b, _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, abs(var_3.c.x), _wgslsmith_clamp_i32(u_input.c, -2423i, u_input.b)), abs(~vec3<i32>(var_0.c.x, global1.a.e, 2147483647i))), true && (func_3(Struct_2(var_3.e.x, global1.a), Struct_2(var_2.x, var_0.a)) != false), _wgslsmith_f_op_vec2_f32(var_2.yx + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a.d.x, -1141f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, -1114f) * var_0.e)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_3), var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1.b.c;
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global1.b.d.x, arg_2.a.d.x)), arg_2.e.x)), Struct_1(arg_2.b.a, select(arg_0.b.b, arg_2.a.b, vec4<bool>(false, arg_2.a.b.x, arg_1.b.c, global1.a.b.x)), func_3(Struct_2(2332f, global1.a), Struct_2(global1.e.x, global1.b)) == !arg_2.d, arg_0.a.d, -45704i)), max(vec2<i32>(-_wgslsmith_mult_i32(-57522i, -1i), ~arg_1.a.a.x), arg_1.b.a));
    var var_2 = var_1.a.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.d.zy * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.e.x, -503f), arg_0.b.d.yz))) * vec2<f32>(1905f, arg_2.e.x)))) - arg_2.a.d.zx);
    var var_4 = true;
    return Struct_1(~_wgslsmith_sub_vec2_i32(~arg_1.a.a, _wgslsmith_mod_vec2_i32(-arg_0.a.a, -vec2<i32>(-1241i, global1.c.x))), !global1.b.b, all(arg_0.b.b.xx), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.b.d.x), global1.a.d.x, _wgslsmith_f_op_f32(var_3.x * var_1.a.a), func_2(4294967295u, 82183u, false, 314f).a.d.x))))), _wgslsmith_mod_i32(arg_1.b.a.x, _wgslsmith_add_i32(abs(6678i), 0i)) << (1u % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = -20975i;
    var_0 = -1i;
    var_0 = arg_0.a.x << (34515u % 32u);
    global1 = func_2(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, u_input.a.x), all(vec2<bool>(global1.a.b.x, !global1.a.b.x)), global1.b.d.x);
    var var_1 = Struct_2(arg_0.d.x, func_2(~u_input.a.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 72293u, u_input.a.x, 20947u), vec4<u32>(u_input.a.x, 23129u, u_input.a.x, u_input.a.x)), ~(~vec4<u32>(75685u, 0u, u_input.a.x, u_input.a.x))), all(arg_0.b.wy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.d.x) + _wgslsmith_f_op_f32(global1.a.d.x + -198f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))).b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global1.a.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.d.x)) - _wgslsmith_f_op_f32(-1490f + _wgslsmith_f_op_f32(ceil(-647f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(func_5(func_4(func_2(~4294967295u, 20269u, -76219i < u_input.b, _wgslsmith_f_op_f32(-arg_0)), Struct_3(Struct_1(global1.a.a, global1.a.b, global1.a.c, global1.a.d, global1.c.x), global1.a, select(global1.c, vec3<i32>(49141i, 0i, global1.b.a.x), vec3<bool>(true, true, global1.b.b.x)), true, _wgslsmith_f_op_vec2_f32(-global1.a.d.xx)), Struct_3(global1.b, func_2(22325u, 18249u, false, -632f).a, _wgslsmith_add_vec3_i32(global1.c, vec3<i32>(u_input.c, 34201i, 2147483647i)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.d.x, 1356f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(global1.b.d, vec4<f32>(251f, -1554f, var_0, -350f))), _wgslsmith_f_op_vec4_f32(global1.b.d + vec4<f32>(var_0, var_0, -281f, 281f))))), vec4<i32>(global1.b.e, ~firstTrailingBit(global1.a.a.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, global1.a.a.x, global1.a.e, 2147483647i), vec4<i32>(-25024i, global1.b.a.x, 53609i, u_input.b))), u_input.b), Struct_1(vec2<i32>(-1i, _wgslsmith_div_i32(u_input.c, -1i)), func_2(1u, select(1u, 4294967295u, global1.a.b.x), u_input.b != 1i, var_0).b.b, global1.a.b.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2243f, global1.a.d.x, var_0, var_0), _wgslsmith_f_op_vec4_f32(-global1.a.d), select(vec4<bool>(global1.a.b.x, true, global1.b.c, global1.d), vec4<bool>(true, global1.a.b.x, true, true), vec4<bool>(false, global1.d, global1.b.c, global1.b.c)))), u_input.d))), func_2(~0u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 0u, 15984u, 4294967295u) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, arg_1.x)) % vec4<u32>(32u))), any(func_4(func_2(u_input.a.x, u_input.a.x, false, -782f), Struct_3(global1.a, global1.b, global1.c, global1.a.c, vec2<f32>(global1.e.x, -248f)), Struct_3(global1.b, Struct_1(vec2<i32>(-2147483647i, -17173i), global1.b.b, global1.a.b.x, vec4<f32>(789f, 1000f, -886f, -682f), global1.c.x), vec3<i32>(global1.c.x, global1.b.e, -1i), false, vec2<f32>(var_0, 2521f)), _wgslsmith_f_op_vec4_f32(exp2(global1.b.d))).b.wwz), _wgslsmith_f_op_f32(395f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)))).a);
    var var_2 = func_2(4294967295u, ~(_wgslsmith_div_u32(u_input.a.x ^ 18806u, ~u_input.a.x) ^ _wgslsmith_dot_vec2_u32(~arg_1.xw, vec2<u32>(4294967295u, 1u))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(var_1.a + 1166f)) + 1105f) * -1774f)).b.b.wy;
    var var_3 = _wgslsmith_div_u32(0u, 4294967295u);
    var var_4 = -vec4<i32>(4811i, var_1.b.e, countOneBits(abs(var_1.b.a.x)) | abs(_wgslsmith_sub_i32(var_1.b.a.x, var_1.b.e)), _wgslsmith_add_i32(0i, u_input.c));
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a - arg_0))), global1.b);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    var var_0 = !(arg_1 & true);
    var var_1 = ~global1.b.a;
    var var_2 = arg_0.b.a << ((u_input.a.wz & (select(vec2<u32>(u_input.a.x, u_input.a.x), ~u_input.a.xy, true) ^ ~(vec2<u32>(4294967295u, 1u) | u_input.a.xy))) % vec2<u32>(32u));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global1.b.b.zwy, !select(select(!global1.a.b.www, vec3<bool>(global1.b.c, true, true), global1.c.x < 2783i), global1.b.b.yxw, select(vec3<bool>(global1.a.c, false, global1.d), !vec3<bool>(true, false, global1.a.b.x), select(vec3<bool>(global1.b.c, global1.b.b.x, global1.a.c), vec3<bool>(true, true, true), global1.d))), false);
    var_0 = select(!select(!(!vec3<bool>(global1.d, global1.b.b.x, global1.a.b.x)), select(vec3<bool>(false, false, true), global1.a.b.zwz, var_0.x), false), global1.b.b.yyz, !global1.b.b.ywz);
    var var_1 = func_6(func_1(_wgslsmith_f_op_f32(step(-620f, _wgslsmith_f_op_f32(-global1.b.d.x))), u_input.a), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(~_wgslsmith_add_u32(27413u, 1u), 75140u), abs(vec2<u32>(~34234u, min(62552u, 59118u))), vec2<bool>((1i == global1.c.x) || false, (false == var_0.x) && (u_input.a.x >= u_input.a.x))));
}

