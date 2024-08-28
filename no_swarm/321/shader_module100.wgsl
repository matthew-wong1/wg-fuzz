struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-17179i, -1i, 1i), vec3<i32>(-6277i, 0i, 13137i), vec3<i32>(-5627i, 20369i, 1i), vec3<i32>(-39197i, 14214i, 0i), vec3<i32>(-1i, 0i, -19154i), vec3<i32>(2147483647i, i32(-2147483648), -19000i), vec3<i32>(-1i, 1i, -241i), vec3<i32>(-37584i, -11169i, -408i), vec3<i32>(-10515i, 0i, -1i), vec3<i32>(-6455i, 1i, i32(-2147483648)), vec3<i32>(0i, 6766i, i32(-2147483648)), vec3<i32>(1624i, 1i, 31396i), vec3<i32>(1i, -29755i, 0i), vec3<i32>(-1i, -1i, -16305i), vec3<i32>(-20386i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, -1i, -1i));

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(7930u, 10322u), vec2<u32>(59956u, 4294967295u), vec2<u32>(0u, 39755u), vec2<u32>(19195u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 20135u), vec2<u32>(1u, 1u), vec2<u32>(26308u, 62273u), vec2<u32>(58612u, 9787u), vec2<u32>(4294967295u, 34060u), vec2<u32>(64677u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9083u, 13948u), vec2<u32>(4294967295u, 0u), vec2<u32>(99443u, 5282u), vec2<u32>(43915u, 0u), vec2<u32>(31739u, 1u), vec2<u32>(77999u, 1158u), vec2<u32>(35232u, 18378u), vec2<u32>(7368u, 4963u), vec2<u32>(0u, 64612u), vec2<u32>(1u, 17158u), vec2<u32>(77239u, 44855u), vec2<u32>(64665u, 20565u), vec2<u32>(5214u, 46276u), vec2<u32>(4294967295u, 0u), vec2<u32>(18150u, 4294967295u), vec2<u32>(21506u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.b), arg_2.xx);
    var var_1 = (_wgslsmith_dot_vec4_i32(vec4<i32>(~var_0, arg_1.c.e, countOneBits(-2147483647i), var_0 << (u_input.c % 32u)), _wgslsmith_mod_vec4_i32(min(u_input.a, u_input.a), max(u_input.a, u_input.a))) ^ arg_0) & arg_0;
    var var_2 = arg_1.c.b.zx;
    let var_3 = arg_2.x;
    global3 = array<vec2<u32>, 28>();
    return arg_2.x << (global2.x % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: f32) -> f32 {
    let var_0 = Struct_4(Struct_1(-1427f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -1178f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_div_f32(arg_2, arg_2)), vec2<bool>(true, false), _wgslsmith_div_f32(1033f, -410f), _wgslsmith_mod_i32(func_3(-2147483647i, Struct_2(false, Struct_1(arg_2, vec4<f32>(1252f, arg_2, 288f, arg_2), vec2<bool>(true, false), arg_2, arg_1.x), Struct_1(1614f, vec4<f32>(965f, -1756f, 1606f, arg_2), vec2<bool>(true, true), 567f, arg_0.x), vec2<i32>(-40775i, u_input.e)), ~u_input.a.wxz, 4294967295u), (arg_1.x ^ -45937i) >> (0u % 32u))), Struct_2(!(~u_input.c < 36596u), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - arg_2), _wgslsmith_f_op_f32(arg_2 + -188f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -326f, -196f, -717f)) - vec4<f32>(arg_2, 1318f, -784f, arg_2)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), -170f, -35143i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -206f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2) + vec4<f32>(1818f, arg_2, arg_2, 383f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, 338f, -991f, arg_2) - vec4<f32>(arg_2, arg_2, arg_2, -1798f))), vec2<bool>(true, true), arg_2, -(~arg_0.x)), ~(~vec2<i32>(arg_0.x, 0i))));
    global0 = _wgslsmith_div_f32(var_0.b.c.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1880f)))));
    global2 = min(vec3<u32>(1u, ~(~firstTrailingBit(global2.x)), 12984u), _wgslsmith_add_vec3_u32(vec3<u32>(~(~50768u), u_input.c, 0u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 21075u, 1u) >> (vec3<u32>(global2.x, 4294967295u, 71473u) % vec3<u32>(32u)), ~vec3<u32>(57845u, 31826u, 1u))));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - -1000f), !select(true, false, false))), var_0.a.b, select(vec2<bool>(true, var_0.a.c.x), var_0.a.c, var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(349f))), 1i), Struct_2(true, var_0.b.c, Struct_1(416f, var_0.a.b, select(var_0.b.b.c, var_0.b.b.c, var_0.a.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1161f)))), -2147483647i), select(vec2<i32>(1i, _wgslsmith_mult_i32(arg_1.x, -1i)), vec2<i32>(~var_0.b.c.e, arg_0.x), all(vec3<bool>(true, true, true)))));
    let var_2 = true;
    return _wgslsmith_f_op_f32(abs(-997f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_u32(~4294967295u >> (select(_wgslsmith_div_u32(4294967295u, max(global2.x, 4944u)), _wgslsmith_sub_u32(firstLeadingBit(global2.x), u_input.c), !(-24133i <= arg_1.d.x)) % 32u), 1u);
    let var_1 = -u_input.a;
    let var_2 = Struct_4(arg_2.b, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -594f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.c.d)), _wgslsmith_f_op_f32(-arg_1.b.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), arg_3, select(!vec2<bool>(arg_1.b.c.x, false), arg_2.c.c, false | arg_2.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1336f, arg_1.b.a)), -566f), (12157i ^ arg_1.d.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(27149i, 24082i, u_input.e), vec3<i32>(arg_2.b.e, u_input.d, 13780i))), arg_1.b, arg_2.d));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(283f + 252f)) * -334f), _wgslsmith_f_op_f32(func_2(vec2<i32>(_wgslsmith_mult_i32(arg_2.c.e, -38672i), min(var_2.a.e, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(-1i, var_2.b.b.e), var_2.a.e, _wgslsmith_sub_i32(u_input.b.x, arg_2.b.e), ~(-17606i)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(-963f, arg_0.x))))), !all(vec4<bool>(false, false, arg_1.c.c.x, arg_2.b.c.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(478f, -1417f) - arg_1.c.b.zx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, -160f) * arg_2.c.b.yx))))))));
    return Struct_3(var_1, var_2.a, Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1367f, arg_1.c.d, _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_div_f32(-1136f, 1069f))), select(!var_2.a.c, var_2.a.c, false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1619f)))))), arg_1.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.b.b.xx) + _wgslsmith_f_op_vec2_f32(arg_1.b.b.zx + vec2<f32>(_wgslsmith_f_op_f32(-1168f - arg_1.b.b.x), -782f))), countOneBits(_wgslsmith_sub_vec4_i32(select(abs(u_input.a), select(vec4<i32>(arg_1.c.e, u_input.e, var_1.x, var_1.x), u_input.a, arg_2.a), select(false, arg_1.a, var_2.b.a)), -var_1)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_4 {
    let var_0 = Struct_4(Struct_1(-922f, _wgslsmith_f_op_vec4_f32(exp2(arg_0.c.b)), vec2<bool>(arg_0.c.c.x, true | (arg_1.b.c.x | arg_1.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b.x) * _wgslsmith_f_op_f32(-arg_0.d.x))), u_input.e), Struct_2(arg_0.c.c.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.b.x), -1458f), arg_1.b.b, vec2<bool>(true, true), 428f, _wgslsmith_sub_i32(u_input.e, -2147483647i) << (firstTrailingBit(u_input.c) % 32u)), Struct_1(_wgslsmith_f_op_f32(min(arg_1.d.x, _wgslsmith_f_op_f32(trunc(arg_1.c.a)))), arg_1.c.b, arg_0.c.c, arg_0.c.d, -2316i), _wgslsmith_mod_vec2_i32(~max(vec2<i32>(arg_1.a.x, arg_0.b.e), vec2<i32>(arg_1.b.e, 27948i)), reverseBits(max(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-60884i, arg_0.b.e))))));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_0.c.b.wwz, _wgslsmith_f_op_vec3_f32(max(arg_1.c.b.xzw, vec3<f32>(-1000f, -955f, var_0.a.a))))) * vec3<f32>(_wgslsmith_f_op_f32(step(-734f, arg_0.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -1054f), -1000f)))), var_0.b, Struct_2(true, Struct_1(_wgslsmith_f_op_f32(min(204f, _wgslsmith_f_op_f32(-var_0.a.b.x))), arg_1.b.b, var_0.b.c.c, -695f, arg_0.b.e), arg_1.c, arg_1.e.zy), _wgslsmith_f_op_vec4_f32(-arg_0.b.b)).b;
    let var_2 = arg_0.d.x;
    let var_3 = (arg_1.a & firstTrailingBit(arg_0.e)) & ~_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(arg_0.e.x, -1i, 873i, -1i)) ^ countOneBits(u_input.a), -u_input.a, abs(abs(arg_1.e)));
    let var_4 = -1i;
    return Struct_4(var_1, Struct_2(false, arg_1.b, Struct_1(1056f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), -506f, -1678f, -1000f), !select(var_0.a.c, vec2<bool>(var_1.c.x, var_0.b.b.c.x), arg_1.c.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1300f, -756f)))), ~(var_0.a.e ^ 2147483647i)), u_input.a.yw));
}

fn func_1() -> bool {
    var var_0 = func_5(Struct_3(firstLeadingBit(-abs(u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1910f, 416f))), vec4<f32>(-1166f, _wgslsmith_f_op_f32(1771f * 1387f), _wgslsmith_f_op_f32(465f * 1900f), -1428f), vec2<bool>(true, true), _wgslsmith_f_op_f32(1f + -236f), -1i), Struct_1(578f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, 973f, 437f, 768f) + vec4<f32>(-974f, 130f, -1640f, -361f)), vec4<f32>(817f, 491f, -1320f, 605f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-462f + 355f)), 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-833f, -692f))) + vec2<f32>(_wgslsmith_f_op_f32(671f * 1000f), _wgslsmith_f_op_f32(2857f * 1777f))), u_input.a), func_4(vec3<f32>(1f, _wgslsmith_f_op_f32(func_2(~vec2<i32>(u_input.e, u_input.b.x), ~vec4<i32>(u_input.a.x, 38997i, u_input.d, u_input.e), 964f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1301f))), Struct_2(all(vec4<bool>(true, false, true, true)), Struct_1(_wgslsmith_f_op_f32(floor(-1218f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1385f, -844f, 644f, 125f), vec4<f32>(1774f, -1000f, 1632f, -2376f))), vec2<bool>(false, false), _wgslsmith_f_op_f32(step(-1555f, 434f)), _wgslsmith_div_i32(u_input.e, u_input.d)), Struct_1(-635f, _wgslsmith_f_op_vec4_f32(vec4<f32>(671f, 604f, 701f, 1506f) - vec4<f32>(-1213f, -211f, 1000f, -634f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), -859f, u_input.b.x), ~(~vec2<i32>(-25853i, -2147483647i))), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-2128f - -210f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1139f, -945f, -854f, -494f) - vec4<f32>(895f, -1229f, 1000f, -764f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -1569f), 3937i), Struct_1(_wgslsmith_f_op_f32(1614f + -1571f), _wgslsmith_div_vec4_f32(vec4<f32>(-928f, 314f, -363f, -1000f), vec4<f32>(497f, 322f, 322f, -898f)), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -972f), i32(-1i) * -63096i), _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.b.x, 27081i)), vec2<i32>(u_input.b.x, -2147483647i))), _wgslsmith_div_vec4_f32(vec4<f32>(-1062f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_f_op_f32(f32(-1f) * -1550f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2414f, 719f, 760f, 549f)))))));
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.d)), _wgslsmith_div_f32(-947f, _wgslsmith_f_op_f32(-var_1.b.a))), _wgslsmith_f_op_f32(floor(-782f))), var_0.b.c.b.wy);
    return var_0.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(u_input.a.x >= (u_input.e ^ 2147483647i), !(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, global2.x), ~u_input.c, 69615u ^ u_input.c) >= 4294967295u), false, func_1());
    global2 = ~vec3<u32>(u_input.c, 0u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(70001u, global2.x, global2.x, 25182u), vec4<u32>(50130u, 1u, 0u, u_input.c), false) & vec4<u32>(u_input.c, global2.x, 50728u, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, global2.x, u_input.c, u_input.c), reverseBits(vec4<u32>(u_input.c, 76798u, 20844u, u_input.c)))));
    var var_1 = var_0.zw;
    global1 = array<vec3<i32>, 16>();
    global2 = vec3<u32>(min(1u, ~17652u), _wgslsmith_add_u32(15890u, u_input.c << (u_input.c % 32u)), 188u);
    let var_2 = func_5(Struct_3(~vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.b.x), u_input.a.xzz), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, u_input.b.x, 85527i), u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.a.xy, u_input.a, 224f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-525f, 457f, 736f, 1881f) * vec4<f32>(457f, 1345f, 1136f, -1277f))), !func_5(Struct_3(u_input.a, Struct_1(-1395f, vec4<f32>(-403f, 588f, 490f, -346f), var_0.xz, -920f, -46671i), Struct_1(647f, vec4<f32>(443f, 551f, 1510f, 796f), vec2<bool>(true, true), -2255f, -5384i), vec2<f32>(-801f, 2175f), u_input.a), Struct_3(u_input.a, Struct_1(1227f, vec4<f32>(1512f, 1800f, 1428f, -165f), vec2<bool>(var_1.x, false), -1586f, 0i), Struct_1(1834f, vec4<f32>(-804f, 440f, -947f, 549f), vec2<bool>(false, var_0.x), -1144f, u_input.a.x), vec2<f32>(1622f, 1190f), vec4<i32>(u_input.a.x, 0i, u_input.b.x, u_input.b.x))).b.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -1155f) - _wgslsmith_f_op_f32(f32(-1f) * -413f)), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, u_input.b.x), 2147483647i)), func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), -376f, _wgslsmith_f_op_f32(-764f + 822f)), func_5(func_4(vec3<f32>(539f, 1322f, 1000f), Struct_2(var_0.x, Struct_1(1939f, vec4<f32>(-356f, 148f, 749f, -287f), vec2<bool>(var_1.x, true), 680f, -2147483647i), Struct_1(-517f, vec4<f32>(-412f, -1594f, -711f, -812f), var_0.yx, 1172f, u_input.a.x), u_input.b), Struct_2(false, Struct_1(-350f, vec4<f32>(1531f, -707f, -379f, -448f), var_0.xx, -1852f, 1875i), Struct_1(-585f, vec4<f32>(587f, 775f, -1696f, 1563f), var_0.zx, 1348f, u_input.e), u_input.b), vec4<f32>(-171f, 192f, -677f, 525f)), func_4(vec3<f32>(-1319f, 1216f, 1004f), Struct_2(var_1.x, Struct_1(1631f, vec4<f32>(-727f, -1029f, -177f, -354f), vec2<bool>(var_1.x, var_0.x), 617f, 1i), Struct_1(1202f, vec4<f32>(1087f, -1000f, 207f, 1000f), var_0.xx, -2082f, u_input.b.x), vec2<i32>(u_input.a.x, 85964i)), Struct_2(var_1.x, Struct_1(-101f, vec4<f32>(1000f, -474f, 1156f, -1000f), var_0.yz, 596f, 2147483647i), Struct_1(1186f, vec4<f32>(-2151f, 560f, -1013f, -947f), vec2<bool>(true, var_1.x), 342f, u_input.d), vec2<i32>(u_input.b.x, u_input.e)), vec4<f32>(290f, 136f, -615f, -502f))).b, func_5(func_4(vec3<f32>(-1440f, -1109f, 1087f), Struct_2(var_0.x, Struct_1(-592f, vec4<f32>(-1000f, 259f, -505f, 792f), var_0.zy, 468f, -19921i), Struct_1(-383f, vec4<f32>(-1000f, 1548f, 1064f, -638f), var_0.yw, 945f, u_input.e), u_input.b), Struct_2(var_0.x, Struct_1(416f, vec4<f32>(-335f, -384f, -216f, 131f), var_0.wx, -1602f, u_input.a.x), Struct_1(-552f, vec4<f32>(-1515f, -569f, 1311f, 1768f), var_0.yz, -264f, -73136i), vec2<i32>(-29871i, u_input.e)), vec4<f32>(505f, -807f, 324f, 625f)), Struct_3(vec4<i32>(52110i, u_input.a.x, -18553i, u_input.b.x), Struct_1(-691f, vec4<f32>(-124f, 764f, 1004f, 1000f), vec2<bool>(var_1.x, true), 666f, -2147483647i), Struct_1(-230f, vec4<f32>(520f, -248f, -1287f, -892f), var_0.yx, 726f, u_input.e), vec2<f32>(911f, -1423f), vec4<i32>(u_input.b.x, u_input.d, -14211i, u_input.e))).b, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(f32(-1f) * -657f), -878f, 630f)).b, vec2<f32>(163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a.x, u_input.d), u_input.a, 1441f)) - _wgslsmith_f_op_f32(f32(-1f) * -1912f))), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(2147483647i), func_3(u_input.b.x, Struct_2(var_0.x, Struct_1(2248f, vec4<f32>(-115f, 195f, 356f, 2021f), var_0.zz, -302f, u_input.e), Struct_1(-1000f, vec4<f32>(-1442f, 446f, 1184f, 1000f), vec2<bool>(true, true), -854f, 14950i), vec2<i32>(u_input.d, u_input.b.x)), u_input.a.wxw, global2.x), abs(u_input.e)), u_input.d, countOneBits(-2147483647i) << (min(global2.x, 2197u) % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(2147483647i, 1i)), 1i))), Struct_3(-vec4<i32>(reverseBits(u_input.d), firstLeadingBit(-29565i), abs(u_input.d), -35965i), Struct_1(607f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(494f, -1000f, -227f, 1659f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(911f, -1017f, -1849f, 1008f))), vec2<bool>(true, var_1.x), 707f, -22326i), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 954f, 1088f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(279f, -832f, 928f) * vec3<f32>(-204f, 1825f, -1310f))), Struct_2(false, Struct_1(-1232f, vec4<f32>(-278f, 304f, -434f, 608f), var_0.xy, 708f, -20024i), Struct_1(-1443f, vec4<f32>(1000f, -610f, -1493f, -1000f), vec2<bool>(true, true), 264f, u_input.e), -vec2<i32>(u_input.a.x, u_input.d)), Struct_2(true, Struct_1(-1000f, vec4<f32>(167f, 443f, -515f, -1604f), vec2<bool>(false, false), -1295f, 44773i), Struct_1(-590f, vec4<f32>(-103f, -1494f, -1076f, 1019f), vec2<bool>(true, var_1.x), -821f, u_input.b.x), -u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, -300f, 789f, -1000f) * vec4<f32>(1891f, 1000f, 811f, -1000f)))).b, vec2<f32>(396f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1000f, 1000f)), _wgslsmith_f_op_f32(select(250f, 1512f, var_0.x))))), _wgslsmith_mod_vec4_i32(countOneBits(u_input.a), _wgslsmith_add_vec4_i32(u_input.a >> (vec4<u32>(global2.x, 0u, global2.x, u_input.c) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -3623i, -1i, 1i)))));
    let var_3 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, -2054f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1577f, 266f) * _wgslsmith_f_op_f32(var_2.a.a * 1105f)))), var_2.b, Struct_2(false, Struct_1(var_2.b.b.a, vec4<f32>(396f, _wgslsmith_f_op_f32(floor(var_2.a.a)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(-538f, var_2.a.d)), var_0.wz, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(421f, 1175f)), _wgslsmith_f_op_f32(420f - var_2.a.a))), 1i), var_2.a, var_2.b.d), func_4(_wgslsmith_f_op_vec3_f32(var_2.a.b.wzx + _wgslsmith_f_op_vec3_f32(-var_2.b.c.b.wwy)), func_5(Struct_3(-vec4<i32>(var_2.b.c.e, -2147483647i, 31429i, u_input.b.x), Struct_1(var_2.b.b.b.x, vec4<f32>(var_2.b.b.d, 234f, 200f, var_2.a.a), vec2<bool>(var_1.x, var_2.b.a), var_2.a.a, 2147483647i), var_2.b.c, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b.c.a, var_2.b.b.a), var_2.a.b.yx)), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, 2147483647i, -67038i, u_input.a.x), vec4<i32>(0i, 27300i, -1i, -1i))), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(1566f, 671f, 431f), var_2.b.b.b.ywx), func_5(Struct_3(u_input.a, Struct_1(var_2.a.a, vec4<f32>(-884f, var_2.b.c.a, var_2.b.c.a, 432f), var_0.ww, 1247f, var_2.a.e), Struct_1(var_2.b.b.b.x, vec4<f32>(var_2.b.c.d, -112f, var_2.a.a, var_2.a.d), vec2<bool>(true, false), 602f, u_input.d), vec2<f32>(803f, -1355f), u_input.a), Struct_3(vec4<i32>(0i, 2633i, u_input.d, var_2.a.e), var_2.a, Struct_1(-354f, var_2.b.c.b, var_0.wz, var_2.b.c.b.x, u_input.d), vec2<f32>(var_2.b.c.b.x, var_2.b.b.d), u_input.a)).b, var_2.b, _wgslsmith_div_vec4_f32(var_2.b.b.b, var_2.b.b.b))).b, func_5(func_4(vec3<f32>(var_2.b.c.a, var_2.a.d, 1273f), var_2.b, func_5(Struct_3(vec4<i32>(u_input.e, u_input.d, u_input.b.x, -29737i), var_2.a, Struct_1(var_2.a.d, vec4<f32>(-1270f, var_2.a.a, -1228f, var_2.a.b.x), var_0.xy, var_2.b.c.a, -13465i), vec2<f32>(var_2.a.b.x, var_2.b.c.d), u_input.a), Struct_3(u_input.a, Struct_1(var_2.b.b.b.x, var_2.a.b, vec2<bool>(false, var_2.a.c.x), 1776f, -2773i), Struct_1(-224f, var_2.b.c.b, var_0.xz, -329f, var_2.b.d.x), var_2.a.b.yw, vec4<i32>(-4335i, -2147483647i, 2147483647i, u_input.b.x))).b, vec4<f32>(991f, 950f, var_2.b.b.d, 539f)), Struct_3(-vec4<i32>(-20303i, 40148i, u_input.e, 0i), func_5(Struct_3(vec4<i32>(var_2.b.b.e, u_input.e, 37675i, var_2.a.e), var_2.b.c, Struct_1(var_2.a.a, var_2.a.b, vec2<bool>(var_2.b.b.c.x, false), var_2.b.b.a, u_input.a.x), vec2<f32>(var_2.a.a, 1239f), u_input.a), Struct_3(u_input.a, Struct_1(1149f, vec4<f32>(1278f, -877f, -493f, -377f), var_0.zx, var_2.a.d, var_2.b.d.x), Struct_1(-582f, var_2.b.b.b, var_0.zy, var_2.b.b.a, 4239i), var_2.b.c.b.xx, vec4<i32>(-42003i, 2147483647i, 2147483647i, 248i))).b.c, Struct_1(var_2.b.b.d, var_2.a.b, var_0.yy, var_2.a.b.x, var_2.b.c.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, var_2.a.b.x)), -vec4<i32>(u_input.d, var_2.b.c.e, var_2.a.e, 20141i))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b.c.b.x, 753f, 598f, -215f))))).c.b);
    global1 = array<vec3<i32>, 16>();
    var var_4 = Struct_3(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.b.b.wyy))), Struct_2(var_0.x, func_4(_wgslsmith_f_op_vec3_f32(select(var_3.b.b.zzw, vec3<f32>(var_2.b.b.b.x, var_2.b.b.a, -1691f), vec3<bool>(true, false, var_0.x))), var_2.b, Struct_2(var_0.x, Struct_1(var_3.b.d, vec4<f32>(var_3.b.a, var_2.a.a, -1647f, var_3.c.a), vec2<bool>(false, false), -456f, u_input.d), var_2.b.c, var_3.a.xw), vec4<f32>(-1055f, 515f, 1000f, var_2.b.c.d)).c, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-581f, var_3.b.a, var_2.b.c.a), vec3<f32>(-478f, 712f, var_3.d.x)), var_2.b, var_2.b, _wgslsmith_div_vec4_f32(var_2.b.c.b, vec4<f32>(var_2.a.b.x, -1073f, -267f, var_3.c.d))).c, var_3.e.zz), var_2.b, _wgslsmith_f_op_vec4_f32(ceil(var_2.b.c.b))).e, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_3.b.b.zxz, var_2.b, var_2.b, var_3.b.b).d.x * _wgslsmith_f_op_f32(-626f * -236f))), _wgslsmith_f_op_vec4_f32(-var_2.a.b), var_2.b.b.c, var_3.d.x, _wgslsmith_mult_i32(27866i & var_2.a.e, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_3.a.x, 1i, 53856i)), abs(vec3<i32>(u_input.e, -2147483647i, u_input.e))))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_3.b.b.xzy), vec3<f32>(var_3.d.x, -1790f, var_2.b.c.d)))), func_5(var_3, var_3).b, var_2.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_3.c.b * var_3.c.b), vec4<f32>(var_3.c.a, var_3.c.a, 489f, var_3.b.a)))))).b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.b.b.x, -493f))))) * vec2<f32>(var_2.a.d, var_3.d.x)), _wgslsmith_mult_vec4_i32(select(-var_3.e, ~(vec4<i32>(-69505i, 19848i, -8372i, var_2.a.e) ^ vec4<i32>(var_2.a.e, var_3.e.x, 2735i, 12401i)), select(!vec4<bool>(var_0.x, true, false, var_3.c.c.x), !vec4<bool>(true, var_3.b.c.x, var_3.c.c.x, var_2.a.c.x), vec4<bool>(false, false, var_2.a.c.x, true))), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(select(vec4<i32>(11416i, var_3.c.e, var_2.a.e, 0i), vec4<i32>(-30847i, 0i, var_3.b.e, var_2.a.e), var_1.x), select(vec4<i32>(-2147483647i, 60901i, -34938i, var_4.b.e), var_4.e, false)));
}

