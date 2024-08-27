struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = vec4<u32>(_wgslsmith_add_u32(4294967295u, firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 4934u))) >> (abs(0u) % 32u), global0.c.x, global0.b.b.x, ~global0.c.x);
    var var_1 = arg_0.b.e.xyx;
    var_1 = arg_1.b.e.yyy;
    global0 = Struct_5(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b.c, 252f, arg_1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c, -526f, arg_1.b.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(403f, arg_0.b.c, arg_1.a)))), arg_0.b.d)))), global0.b, firstLeadingBit(vec4<u32>(1u, ~abs(59406u), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.x, 71879u), firstTrailingBit(1u)), var_0.x)));
    return max(_wgslsmith_div_i32(u_input.a.x & ~(~2147483647i), 0i << (1u % 32u)), 2147483647i);
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    global0 = Struct_5(global0.b.c.a, Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(arg_0.a.x, -959f, global0.a.x)))), _wgslsmith_f_op_f32(-global0.b.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.b.a.a.x) * -1008f), -1876f <= _wgslsmith_f_op_f32(global0.b.a.a.x - 2030f), !(!arg_0.e)), global0.b.b, arg_0, global0.b.d, ~_wgslsmith_mod_i32(u_input.a.x, func_3(Struct_2(750f, global0.b.a), Struct_2(arg_0.c, Struct_1(vec3<f32>(global0.b.d.x, 702f, 471f), global0.a.x, -1931f, arg_0.e.x, vec4<bool>(global0.b.a.e.x, global0.b.a.e.x, true, arg_0.d)))))), global0.c);
    let var_0 = vec3<u32>(0u, _wgslsmith_dot_vec2_u32(firstLeadingBit(~global0.c.yz), vec2<u32>(global0.b.b.x, 76512u)) << (global0.c.x % 32u), ~firstLeadingBit(global0.b.b.x));
    var var_1 = global0.b;
    let var_2 = reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(global0.c.x, global0.b.b.x)), global0.b.b.x), _wgslsmith_mod_u32(var_1.b.x, ~global0.c.x)));
    var var_3 = var_1.a;
    return Struct_4(select(~u_input.a.yz, vec2<i32>(_wgslsmith_sub_i32(-9854i, u_input.a.x), ~64189i), !select(select(global0.b.a.e.xw, var_1.a.e.xw, vec2<bool>(global0.b.a.e.x, true)), !global0.b.c.e.yx, vec2<bool>(true, var_3.d))));
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.a.a.yx) * global0.a.zx), vec2<f32>(_wgslsmith_f_op_f32(arg_0.b.a.c * 420f), _wgslsmith_f_op_f32(-global0.b.a.c)), arg_0.b.c.e.yz)));
    var var_1 = arg_0.c.wx;
    var var_2 = func_2(global0.b.c);
    var var_3 = -814f;
    var var_4 = arg_0.c >> (_wgslsmith_sub_vec4_u32(~arg_0.c, vec4<u32>(reverseBits(global0.c.x), 29905u, 1u, ~4294967295u) ^ vec4<u32>(global0.c.x, _wgslsmith_div_u32(51845u, 1u), reverseBits(var_1.x), _wgslsmith_mult_u32(8639u, arg_0.b.b.x))) % vec4<u32>(32u));
    return global0.b.a;
}

fn func_4(arg_0: Struct_5) -> f32 {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(global0.b.b.x, select(arg_0.c.x, 0u, true)) >> (~_wgslsmith_dot_vec3_u32(arg_0.c.wzy, arg_0.c.xyw) % 32u), ~_wgslsmith_dot_vec3_u32(global0.c.zxz ^ vec3<u32>(0u, global0.c.x, global0.b.b.x), arg_0.c.wxx | global0.c.yyy)), ~(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(56671u, arg_0.b.b.x), arg_0.b.b.x ^ 1u, 1u)), _wgslsmith_clamp_u32(1u, countOneBits(arg_0.b.b.x), _wgslsmith_mod_u32(4294967295u, global0.b.b.x)));
    let var_1 = vec4<i32>(firstLeadingBit(global0.b.e), ~arg_0.b.e, _wgslsmith_mod_i32(~u_input.a.x, 22478i), func_2(func_1(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, arg_0.a.x, 322f)), Struct_3(Struct_1(arg_0.a, global0.b.a.c, 1000f, global0.b.c.e.x, vec4<bool>(arg_0.b.a.d, false, false, false)), arg_0.c.xw, Struct_1(global0.b.d.wwz, global0.b.a.a.x, arg_0.a.x, global0.b.a.e.x, global0.b.a.e), arg_0.b.d, 2147483647i), abs(vec4<u32>(arg_0.b.b.x, arg_0.c.x, global0.c.x, global0.c.x))))).a.x);
    let var_2 = false;
    var var_3 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(36534u, arg_0.b.b.x, 0u, var_0.x), max(global0.c, arg_0.c)), global0.c);
    var var_4 = reverseBits(_wgslsmith_div_vec2_i32(~(~vec2<i32>(-1i, 0i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_0.b.e), _wgslsmith_sub_vec2_i32(u_input.a.xw, var_1.zz)), ~firstLeadingBit(u_input.a.yz))));
    return -1172f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1094f, -1726f, global0.b.c.c), global0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(1537f, 616f, global0.b.c.b), vec3<f32>(-165f, 2131f, -2000f)))), Struct_3(func_1(Struct_5(vec3<f32>(491f, 1239f, 493f), global0.b, global0.c)), ~global0.b.b, Struct_1(global0.b.a.a, 367f, global0.a.x, global0.b.c.d, global0.b.a.e), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, global0.a.x, -1305f, -126f))), u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, 27066u, global0.b.b.x, global0.b.b.x), reverseBits(global0.c))))));
    var_0 = global0.b.d.x;
    var_0 = -575f;
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy >> (global0.b.b % vec2<u32>(32u)), u_input.a.zy), 1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a));
    let var_2 = ~_wgslsmith_div_vec4_u32(select(vec4<u32>(62511u, global0.b.b.x << (53629u % 32u), 8921u ^ global0.c.x, 1u), global0.c, !select(global0.b.a.e, vec4<bool>(global0.b.c.e.x, global0.b.c.d, true, true), false)), _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(global0.c.xxz, vec3<u32>(global0.b.b.x, global0.b.b.x, 23345u)), 4294967295u, 1u), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(1u, global0.b.b.x, global0.c.x, 0u)), global0.c)));
    global1 = array<Struct_1, 9>();
    let var_3 = !global0.b.a.e.zy;
    let var_4 = Struct_2(1406f, Struct_1(func_1(Struct_5(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(354f, global0.a.x, global0.a.x)), global0.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(48303u, var_2.x, global0.b.b.x, 1u), vec4<u32>(60793u, var_2.x, var_2.x, var_2.x), global0.c))).a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.c) - _wgslsmith_f_op_f32(round(469f))), _wgslsmith_f_op_f32(global0.b.a.a.x * -551f)), true, global0.b.c.e));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, -22157i), vec3<i32>(-47271i, -1i, -1i)), i32(-1i) * -var_1.x));
}

