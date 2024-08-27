struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<bool, 22>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(-select(-u_input.a.x, u_input.e.x, true) != (abs(28587i) | u_input.d.x), _wgslsmith_sub_vec3_u32(select(select(u_input.c, countOneBits(u_input.c), select(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(58289u, 22u)])), vec3<u32>(0u, 80396u ^ u_input.c.x, 54148u), all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), true))), u_input.c), _wgslsmith_sub_vec3_i32(u_input.d.ywx, countOneBits(~(-u_input.d.yyy))), 17746i, _wgslsmith_f_op_f32(f32(-1f) * -1560f));
    var var_1 = Struct_3(select(var_0.a, (_wgslsmith_clamp_u32(0u, var_0.b.x, u_input.c.x) | ~u_input.c.x) == 1u, global2[_wgslsmith_index_u32(~(~(u_input.c.x & 11171u)), 22u)]), Struct_2(global1[_wgslsmith_index_u32(var_0.b.x, 24u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, 385f) * vec2<f32>(var_0.e, -1205f))))), false, Struct_1(abs((var_0.c >> (u_input.c % vec3<u32>(32u))) | u_input.b), -1661f, countOneBits(~(-var_0.c.x))), global1[_wgslsmith_index_u32(0u, 24u)]);
    global2 = array<bool, 22>();
    var var_2 = var_1.e;
    var var_3 = ~(-_wgslsmith_mult_vec2_i32(u_input.b.yz, max(vec2<i32>(1486i, var_2.c), u_input.d.yw))) ^ vec2<i32>(-(_wgslsmith_sub_i32(26367i, -9220i) >> (var_0.b.x % 32u)), 4776i);
    return var_0.d;
}

fn func_2() -> Struct_2 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(abs(func_3()), u_input.d.x), _wgslsmith_div_i32(~(-firstLeadingBit(u_input.d.x)), -1i));
    let var_1 = u_input.c.x;
    let var_2 = Struct_4(true, reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, var_1, var_1), u_input.c)), vec3<i32>(1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(49729u, u_input.c.x, 971u, u_input.c.x), max(vec4<u32>(u_input.c.x, var_1, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, var_1, var_1, var_1))) % 32u), 1i, 24761i), -56345i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1007f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, var_2.e, var_2.e, var_2.e)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, var_2.e, var_2.e, -1267f) + vec4<f32>(var_2.e, -1000f, -381f, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(475f, 733f, 556f, var_2.e))))))));
    let var_4 = -1226f;
    return Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(-(u_input.b ^ var_2.c), ~(~var_2.c)), -896f, 28776i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1834f, 1306f)))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2282f, 304f) * _wgslsmith_f_op_f32(-222f + 518f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1041f)) * 1129f), true)))), _wgslsmith_f_op_f32(1595f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-625f, 590f), _wgslsmith_f_op_f32(sign(1096f)))))));
    var var_1 = func_2();
    var_1 = Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, var_1.a.b) + vec2<f32>(667f, 588f)) - var_0.xz)))));
    let var_2 = (u_input.c.x >> (~25070u % 32u)) >> (~u_input.c.x % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(130f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(680f, 1317f) + _wgslsmith_f_op_f32(ceil(-1156f))))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.e.x);
    var var_1 = Struct_3(!(!(!any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], true)))), func_1(), any(select(vec4<bool>(select(false, false, false), !global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false))), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(25821u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(68011u, 22u)]), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), global2[_wgslsmith_index_u32(1u, 22u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(41863u, 22u)], true, true), false), true), global2[_wgslsmith_index_u32(28103u, 22u)])), func_1().a, global1[_wgslsmith_index_u32(abs(~11317u), 24u)]);
    var var_2 = u_input.b;
    let var_3 = func_1().a;
    global3 = global2[_wgslsmith_index_u32(u_input.c.x, 22u)] || (false | !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, reverseBits(u_input.c.x)), 22u)]);
    let var_4 = Struct_3(var_1.c, Struct_2(Struct_1(~vec3<i32>(-9709i, var_2.x, u_input.b.x), -1106f, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_3.c, 0i), vec2<i32>(var_3.a.x, -1i) ^ vec2<i32>(var_2.x, u_input.e.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.b)) * vec2<f32>(var_3.b, -445f))), true, func_2().a, global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(max(4294967295u, 81970u), firstLeadingBit(23466u))), 24u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-(~reverseBits(~var_1.e.a)));
}

