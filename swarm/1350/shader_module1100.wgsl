struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 99942u;

var<private> global1: vec3<u32>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-1i, 2147483647i, -28475i, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = ~4294967295u == _wgslsmith_div_u32(4294967295u, arg_2.x);
    global2 = Struct_3(~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, global2.a & vec4<i32>(5139i, -28718i, arg_0.x, u_input.d.x)), u_input.d));
    var var_1 = true;
    var var_2 = arg_3;
    var var_3 = vec2<f32>(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f + 1435f) - var_2.a));
    return select(!vec4<bool>(true, all(vec3<bool>(false, false, false)), false, true), select(vec4<bool>(true | all(vec3<bool>(true, true, true)), true && all(vec2<bool>(true, true)), true, false), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true))), !vec4<bool>(true, -5744i <= min(arg_0.x, 1i), true, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: i32) -> Struct_2 {
    let var_0 = !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), all(select(vec4<bool>(true, true, true, true), func_3(u_input.d.zwx, arg_1.a.x, vec3<u32>(u_input.c.x, arg_1.a.x, 8212u), Struct_2(-1023f, vec4<f32>(-778f, 1197f, 2055f, 765f))), vec4<bool>(true, true, true, true))));
    var var_1 = select(i32(-1i) * -global2.a.x, -2147483647i, !(8678u > (u_input.c.x << (u_input.c.x % 32u))));
    var var_2 = Struct_4(-364f, Struct_2(_wgslsmith_f_op_f32(ceil(-1011f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, -616f, 1000f, -405f) + vec4<f32>(-231f, 216f, 1000f, 332f)) + vec4<f32>(-162f, -229f, -362f, -784f)))), var_0.x, Struct_3(-global2.a), !all(var_0.xyw) & var_0.x);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b.x - -329f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a, var_2.b.a))))), Struct_2(_wgslsmith_f_op_f32(max(-255f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), 1071f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1806f, 472f, -726f, -1000f) + vec4<f32>(-436f, var_2.b.b.x, -1699f, var_2.b.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1321f, var_2.b.a, var_2.b.b.x, var_2.b.a) + vec4<f32>(var_2.a, 574f, var_2.a, -1420f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.a, var_2.a, 1000f, -389f) - var_2.b.b))))), var_0.x, var_2.d, var_2.e || (select(var_0.x || var_2.c, true, true) != true));
    let var_4 = vec4<i32>(-1i) * -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(24740i, 1i, arg_2, var_3.d.a.x), vec4<i32>(arg_2, 82482i, -32373i, -34429i), vec4<i32>(-54545i, 15491i, -14688i, var_3.d.a.x)) << (countOneBits(~vec4<u32>(16493u, u_input.c.x, 116117u, 45261u)) % vec4<u32>(32u)));
    return var_2.b;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1757f, _wgslsmith_f_op_f32(sign(-901f))))), func_2(global2.a.xwx, Struct_5(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 97481u, global1.x), max(vec3<u32>(30622u, 1u, global1.x), vec3<u32>(u_input.c.x, 59222u, global1.x)))), ~global2.a.x), true, Struct_3(u_input.d), true);
    var var_1 = var_0.d.a.x == 20321i;
    var var_2 = u_input.d.wzx;
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.d, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global2.a.x, -2147483647i, 1i, u_input.d.x)), vec4<i32>(var_0.d.a.x, u_input.d.x, global2.a.x, 10615i) & vec4<i32>(var_0.d.a.x, u_input.b.x, -39615i, var_0.d.a.x))), vec4<i32>(0i, -1i, -(global2.a.x >> (0u % 32u)), 1i)), var_0.d.a.x);
    var_2 = vec3<i32>(21753i, firstTrailingBit(_wgslsmith_sub_i32(var_2.x, 17090i)), 0i);
    return func_2(select(~global2.a.wxx, vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-38837i, -72740i, 2147483647i)), global2.a.yyw), ~_wgslsmith_add_i32(u_input.a, -1i), -abs(global2.a.x)), !select(!var_0.c, var_0.e, true)), Struct_5(abs(~(~vec3<u32>(global1.x, u_input.c.x, 1u)))), reverseBits(~((global2.a.x & 624i) ^ countOneBits(var_3.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<f32>) -> Struct_3 {
    global0 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(~(~4294967295u), 1u), global1.x & ~firstTrailingBit(_wgslsmith_div_u32(global1.x, global1.x)));
    global2 = arg_0.d;
    global2 = arg_0.d;
    global2 = arg_0.d;
    var var_0 = arg_0.b;
    return Struct_3(vec4<i32>(arg_0.d.a.x, -27489i, global2.a.x ^ ((i32(-1i) * -2147483647i) >> (1u % 32u)), u_input.b.x));
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global1 = select(reverseBits(vec3<u32>(~u_input.c.x, 54016u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(27868u, u_input.c.x), global1.x))), ~(~(~vec3<u32>(26388u, u_input.c.x, u_input.c.x))), select(!vec3<bool>(all(vec2<bool>(true, false)), arg_0 < arg_0, u_input.c.x < global1.x), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_0 = ~1u | _wgslsmith_div_u32(_wgslsmith_add_u32(5480u, ~(u_input.c.x ^ 0u)), global1.x);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) + arg_0))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, -201f, arg_0)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-952f, -1642f, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 927f, arg_0, 1425f), vec4<f32>(1102f, 1989f, arg_0, -163f), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-435f, 1062f, arg_0, -3005f), vec4<f32>(arg_0, -336f, arg_0, arg_0))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1179f - arg_0) - -771f) >= -1000f)));
    var var_2 = vec4<i32>(global2.a.x, ~_wgslsmith_mod_i32(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, u_input.d.x), vec2<i32>(arg_1.a.x, arg_1.a.x))), -2147483647i, _wgslsmith_mod_i32(abs(u_input.b.x ^ global2.a.x), 1i)) >> (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(countOneBits(u_input.c.x), _wgslsmith_mult_u32(global1.x, global1.x)), 14084u, 4294967295u), global1.x, ~min(global1.x, global1.x), reverseBits(4294967295u)) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)) * _wgslsmith_f_op_f32(func_2(vec3<i32>(-43960i, -46799i, global2.a.x), Struct_5(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)), global2.a.x).a - _wgslsmith_div_f32(-471f, -548f)))) - -2393f);
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> Struct_3 {
    var var_0 = arg_2;
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) * _wgslsmith_f_op_f32(400f - -533f)) - -566f) + _wgslsmith_f_op_f32(-func_1().a)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(219f)), _wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_f_op_f32(round(299f)), false)), -850f, _wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 694f, false))));
    var var_3 = Struct_3(vec4<i32>(-15821i, -(0i ^ var_1.a.x), -2147483647i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, u_input.b.x), vec3<i32>(0i, u_input.d.x, 8525i))));
    return func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(-func_1().b.x)), all(!func_3(vec3<i32>(global2.a.x, 2147483647i, var_1.a.x), 83548u, vec3<u32>(global1.x, u_input.c.x, 4294967295u), var_2)))), Struct_3(vec4<i32>(_wgslsmith_div_i32(-1i, ~0i), var_1.a.x, 2147483647i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1239f + -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f))), func_4(Struct_4(_wgslsmith_f_op_f32(round(-1026f)), func_1(), true, Struct_3(u_input.d), all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1262f, 942f, -546f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1370f, 1464f, 2038f), vec3<f32>(1351f, -1000f, 1185f))))), _wgslsmith_add_i32(u_input.a, global2.a.x), all(select(vec4<bool>(true, true, true, global1.x > 1u), vec4<bool>(true, true, true, true), true)));
    global1 = ~_wgslsmith_add_vec3_u32(min(abs(vec3<u32>(global1.x, global1.x, 7521u)) << (firstLeadingBit(vec3<u32>(4294967295u, 48422u, global1.x)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 33840u, 1u), vec4<u32>(17028u, global1.x, 96135u, global1.x)))), min(~(~vec3<u32>(33411u, u_input.c.x, u_input.c.x)), firstLeadingBit(vec3<u32>(u_input.c.x, 40551u, global1.x))));
    var var_0 = u_input.b.x;
    let var_1 = firstLeadingBit(u_input.d);
    var var_2 = vec2<i32>(31220i, var_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-662f)), _wgslsmith_f_op_f32(-555f * -638f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-985f, 287f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1234f, 255f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1864f, 1451f) + vec2<f32>(1000f, -1324f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(266f, -333f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(592f, 1125f)) - vec2<f32>(1098f, 386f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1828f, -927f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(723f, 134f)))))));
    let var_4 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1055f * -392f), reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.c.x, 55543u, u_input.c.x), vec3<u32>(global1.x, 5422u, 38099u), true), firstLeadingBit(vec3<u32>(87248u, u_input.c.x, var_4)))) & abs(49719u), _wgslsmith_add_u32(_wgslsmith_mult_u32(34735u, countOneBits(var_4)) ^ var_4, var_4), _wgslsmith_mod_i32(_wgslsmith_mod_i32((var_2.x & 2615i) & func_6(Struct_3(global2.a), -1i, false).a.x, ~_wgslsmith_mult_i32(-19656i, 0i)), -(~firstTrailingBit(0i))));
}

