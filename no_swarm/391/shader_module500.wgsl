struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13>;

var<private> global1: array<vec4<f32>, 20>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32> = vec3<u32>(1103u, 23314u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    let var_0 = select(select(vec4<bool>(any(!vec4<bool>(global2.b.x, global2.b.x, true, false)), true, global2.b.x, global2.b.x), !vec4<bool>(false, global2.b.x, global2.d >= 2147483647i, u_input.a > 2147483647i), select(vec4<bool>(global2.b.x, false, !global2.b.x, true), !vec4<bool>(global2.b.x, global2.b.x, true, global2.b.x), all(vec2<bool>(global2.b.x, false)))), select(!(!select(vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(global2.b.x, global2.b.x, true, false), global2.b.x)), !vec4<bool>(true, all(vec3<bool>(false, false, global2.b.x)), global2.a.x < 20986i, select(true, global2.b.x, true)), true), true);
    var var_1 = all(vec2<bool>(false, select(all(var_0), true, false || global2.b.x)));
    global3 = vec3<u32>(global2.c, select(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(41352u, 4294967295u, 0u, global2.c), vec4<u32>(global3.x, global2.c, 27231u, 65865u)), ~vec4<u32>(global3.x, 0u, 22539u, global3.x) & ~vec4<u32>(global2.c, 4294967295u, global2.c, 1u)), global3.x, true), global3.x);
    let var_2 = firstLeadingBit(global2.a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(390f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-842f - -280f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1000f)), 542f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(942f, 1497f))))))));
    return -(~u_input.a);
}

fn func_2() -> bool {
    global2 = Struct_1(min(-vec4<i32>(func_3(), _wgslsmith_mult_i32(-1i, -17541i), 2147483647i, reverseBits(-1i)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(global2.a, global2.a) | ~global2.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, u_input.a, -41049i, -20647i), vec4<i32>(global2.a.x, -1i, u_input.a, 146i)), -global2.a, global2.a ^ vec4<i32>(-1i, u_input.a, u_input.a, -1i)))), !vec2<bool>(false, any(global2.b)), max(6767u, _wgslsmith_sub_u32(global2.c, 5421u)) >> (~abs(global2.c) % 32u), global2.d);
    let var_0 = Struct_5(global2.b);
    var var_1 = all(select(select(select(vec3<bool>(global2.b.x, false, var_0.a.x), vec3<bool>(true, true, true), true), vec3<bool>(false, var_0.a.x, global2.b.x), true), vec3<bool>(true, true, !(var_0.a.x && global2.b.x)), !(!(!vec3<bool>(false, var_0.a.x, global2.b.x)))));
    let var_2 = Struct_1(vec4<i32>(reverseBits(u_input.a), global2.d | _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a, global2.d), -62310i, global2.d), vec2<bool>(var_0.a.x, global2.b.x), 29413u, ~_wgslsmith_dot_vec2_i32(-reverseBits(vec2<i32>(18882i, 0i)), global2.a.yy << (select(vec2<u32>(11949u, global2.c), vec2<u32>(global3.x, global2.c), vec2<bool>(var_0.a.x, true)) % vec2<u32>(32u))));
    var var_3 = ~(~countOneBits(abs(vec3<u32>(4294967295u, global2.c, 0u) << (vec3<u32>(41175u, global2.c, global2.c) % vec3<u32>(32u)))));
    return true;
}

fn func_1() -> i32 {
    let var_0 = Struct_5(vec2<bool>(!global2.b.x, false));
    let var_1 = ~select(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global3.x, 4294967295u, 0u) ^ vec4<u32>(global2.c, 1u, global3.x, global2.c), firstTrailingBit(vec4<u32>(global2.c, global2.c, global2.c, global2.c))), ~reverseBits(vec4<u32>(global2.c, 1u, 42126u, 33818u)), func_2());
    var var_2 = !global2.b.x;
    var var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f + _wgslsmith_f_op_f32(-915f + 1618f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-128f, 983f)) - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(-868f - 992f)))), false, _wgslsmith_div_i32(i32(-1i) * -1i, u_input.a) | (u_input.a >> (~(18203u & global3.x) % 32u)), Struct_2(vec3<u32>(global3.x, global2.c, 36840u), Struct_1(vec4<i32>(-1i) * -global2.a, !(!global2.b), ~_wgslsmith_mod_u32(76702u, global3.x), global2.a.x), ~17534i));
    return _wgslsmith_clamp_i32(1i >> (global2.c % 32u), global2.d, var_3.d.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(i32(-1i) * -(~(-global2.a.x)), -abs(u_input.a) & countOneBits(global2.d), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global2.a.x, -51579i), 2147483647i, func_1()));
    var var_1 = Struct_5(global2.b);
    global2 = Struct_1(vec4<i32>(var_0.x, -36868i | ~var_0.x, 30204i, ~_wgslsmith_sub_i32(u_input.a, 66181i)), vec2<bool>(!((-43228i ^ var_0.x) <= abs(var_0.x)), true), _wgslsmith_mult_u32(global2.c, global2.c) & global2.c, ~(~abs(1i)));
    let var_2 = vec4<bool>(true, any(select(var_1.a, select(!global2.b, global2.b, global2.b), vec2<bool>(false, true & var_1.a.x))), func_2() && true, !global2.b.x);
    var_0 = select(abs(global2.a.yyw), ~vec3<i32>(_wgslsmith_add_i32(var_0.x, countOneBits(u_input.a)), 0i, -19590i), !(!(!(!vec3<bool>(global2.b.x, var_2.x, var_2.x)))));
    global1 = array<vec4<f32>, 20>();
    var var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-392f, 1333f, 325f) - vec3<f32>(-2510f, -753f, -1822f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(round(690f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1200f, -132f)), _wgslsmith_f_op_f32(max(-446f, -511f)), var_1.a.x)))), !any(!select(var_1.a, vec2<bool>(var_1.a.x, global2.b.x), true)), u_input.a, Struct_2(vec3<u32>(96111u, 6372u, 11127u), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(1375i, 36858i, 0i, -2147483647i), ~vec4<i32>(var_0.x, -1i, u_input.a, var_0.x)), !select(var_1.a, vec2<bool>(false, global2.b.x), vec2<bool>(true, global2.b.x)), global2.c, -1237i), 1i));
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.a.xx), min(-1i, i32(-1i) * -14509i), i32(-1i) * -(~(~var_0.x)));
}

