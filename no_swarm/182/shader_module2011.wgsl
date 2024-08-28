struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_5, 28>;

var<private> global2: array<vec4<bool>, 13>;

var<private> global3: Struct_4;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32) -> vec4<i32> {
    let var_0 = global4.zwx;
    global3 = Struct_4(Struct_1(~global0.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global3.b, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-320f, global3.b.x, global3.b.x))))))), global3.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d + -477f) * _wgslsmith_f_op_f32(round(global3.b.x))))))), Struct_2(Struct_1(~(~global3.c.a.a))));
    var var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(~select(-58743i, global0.b.x, arg_1.x), -(~39739i)) & -select(min(vec2<i32>(u_input.a.x, 36633i), global4.zz), vec2<i32>(global0.b.x, -1121i), select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(false, false), vec2<bool>(arg_1.x, arg_1.x))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-67827i, 28414i, 0i), var_0.x), -48447i) ^ abs(select(vec2<i32>(var_0.x, global0.b.x), global4.wy, arg_1.x) & _wgslsmith_sub_vec2_i32(global0.b, vec2<i32>(-1i, 24217i))));
    var var_2 = Struct_1(vec3<u32>(min(0u, reverseBits(13857u)), arg_2, max(global3.a.a.x, global3.c.a.a.x << ((23873u ^ arg_0.a.a.x) % 32u))));
    global3 = Struct_4(arg_0.a, global3.b, global3.e, -832f, global3.c);
    return -vec4<i32>(u_input.a.x, 60003i, _wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_add_i32(33548i & _wgslsmith_dot_vec2_i32(vec2<i32>(19856i, global0.b.x), u_input.b), u_input.a.x));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_2(global3.a);
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_vec3_u32(global0.a.a << (_wgslsmith_mod_vec3_u32(vec3<u32>(451u, var_0.a.a.x, 1u), global3.a.a) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(global3.c.a.a, var_0.a.a))), _wgslsmith_mod_vec2_i32(vec2<i32>(global4.x, ~1i), vec2<i32>(0i, 1i >> (~global0.c.a.x % 32u))), global3.c.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global3.b, global3.b))) - vec3<f32>(-1832f, 556f, _wgslsmith_f_op_f32(global3.d + global3.b.x)))));
    var var_3 = Struct_5(countOneBits(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1907i, global0.b.x, 584i), vec4<i32>(global4.x, -1i, var_1.b.x, global4.x)), func_3(Struct_2(global3.c.a), vec4<bool>(false, false, false, false), 44056u))), reverseBits(-(vec3<i32>(-1i, u_input.a.x, global0.b.x) ^ -u_input.a)));
    let var_4 = global4.zx;
    return !select(vec2<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, var_0.a.a.x != global0.a.a.x), true), vec2<bool>(false, true));
}

fn func_1(arg_0: Struct_1) -> Struct_5 {
    let var_0 = any(!select(vec2<bool>(true, all(vec3<bool>(true, false, true))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_1 = -70764i;
    var var_2 = !vec2<bool>(any(func_2()), var_0);
    var_2 = !(!func_2());
    let var_3 = Struct_3(global0.a, firstLeadingBit(global0.b), Struct_1(~_wgslsmith_div_vec3_u32(~global3.c.a.a, arg_0.a)));
    return Struct_5(firstTrailingBit(global4.x), _wgslsmith_clamp_vec3_i32((_wgslsmith_mult_vec3_i32(vec3<i32>(global4.x, 26502i, -2147483647i), u_input.a) ^ firstLeadingBit(global4.yyy)) ^ abs(global4.xyy), global4.zyw, global4.wzy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(global3.a.a, global0.a.a) | global0.a.a);
    let var_1 = min(max(-vec4<i32>(-1i, -global0.b.x, 39596i, -global0.b.x), ~firstLeadingBit(vec4<i32>(global4.x, u_input.a.x, u_input.a.x, -886i))), _wgslsmith_mult_vec4_i32(min(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, -65293i, global0.b.x, 42023i), vec4<i32>(0i, -45735i, 4046i, -10253i)), vec4<i32>(2147483647i, 44059i, -2517i, u_input.a.x)) ^ ~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 31550i, -1i, -2972i), vec4<i32>(2147483647i, 2147483647i, global4.x, -2147483647i)), vec4<i32>(-abs(-62669i), global4.x, -46307i, u_input.b.x)));
    global2 = array<vec4<bool>, 13>();
    var var_2 = func_1(Struct_1(var_0.a));
    global1 = array<Struct_5, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-942f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2032f, 1119f, global3.d, -1000f), vec4<f32>(global3.d, 480f, 392f, 274f))), vec4<f32>(1000f, global3.b.x, global3.d, _wgslsmith_f_op_f32(-global3.d))))), 1u);
}

