struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 15337i, 45255i);

var<private> global1: array<f32, 12>;

var<private> global2: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(-12827i, Struct_1(vec4<i32>(0i, 1i, -21388i, 2147483647i), -7558i, vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-46420i, i32(-2147483648), 1435i), true)), Struct_2(1i, Struct_1(vec4<i32>(1i, 2147483647i, -1i, 2147483647i), -210i, vec3<i32>(-1i, 37039i, 743i), vec3<i32>(-62040i, -20257i, i32(-2147483648)), false)));

var<private> global3: u32 = 121236u;

var<private> global4: array<vec2<f32>, 27>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: i32) -> u32 {
    let var_0 = arg_2.b.b;
    global4 = array<vec2<f32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(326f, global1[_wgslsmith_index_u32(u_input.d.x, 12u)])) * _wgslsmith_f_op_f32(arg_2.c.x + arg_2.a)) - arg_1.x) + 1298f) >= global1[_wgslsmith_index_u32(0u << (1u % 32u), 12u)];
    var var_2 = Struct_1(arg_2.b.b.a << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.d.x, u_input.d.x), ~u_input.c) % vec4<u32>(32u)), -7578i, -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global0.x, var_0.c.x, arg_2.b.b.c.x), -u_input.e.xzz & ~var_0.d), var_0.a.xyy, false);
    var var_3 = arg_1;
    return ~(~1u);
}

fn func_2() -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(~u_input.d.x << ((_wgslsmith_add_u32(u_input.c.x, _wgslsmith_mod_u32(~u_input.a, u_input.b.x >> (0u % 32u))) & _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, u_input.b.x), reverseBits(func_3(true, vec4<f32>(global1[_wgslsmith_index_u32(8677u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(u_input.d.x, 12u)], global1[_wgslsmith_index_u32(u_input.a, 12u)]), Struct_4(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global2[_wgslsmith_index_u32(u_input.a, 2u)], vec3<f32>(-1000f, -1338f, -356f)), global0.x)))) % 32u), 2u)];
    global3 = ~u_input.b.x;
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 2u)];
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1096f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global1[_wgslsmith_index_u32(~u_input.b.x, 12u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 12u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 12u)])) - global1[_wgslsmith_index_u32(u_input.b.x, 12u)])), !(-2518f > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)]))));
    let var_3 = _wgslsmith_dot_vec3_u32(~u_input.c.zxw, _wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(51486u, u_input.d.x, 1u), u_input.c.zxx), ~vec3<u32>(func_3(var_0.b.e, vec4<f32>(-510f, 423f, 285f, -1551f), Struct_4(550f, global2[_wgslsmith_index_u32(1249u, 2u)], vec3<f32>(-267f, 132f, -1000f)), u_input.e.x), 1u, 4294967295u & u_input.d.x), u_input.d));
    return global2[_wgslsmith_index_u32(firstTrailingBit(~(~func_3(var_0.b.e, vec4<f32>(var_2, 1000f, global1[_wgslsmith_index_u32(var_3, 12u)], -1208f), Struct_4(2016f, global2[_wgslsmith_index_u32(4294967295u, 2u)], vec3<f32>(-1088f, 1585f, var_2)), ~u_input.e.x))), 2u)];
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_2), func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1485f, 343f, -642f) * vec3<f32>(1010f, -937f, arg_2)))))));
    var var_1 = vec4<i32>(~var_0.b.b.a.x, select(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 2147483647i), min(vec2<i32>(-31081i, arg_1.b.d.x), var_0.b.b.a.xw)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e.zzz, var_0.b.b.d), firstTrailingBit(0i))), max(~abs(var_0.b.a), -arg_1.b.c.x ^ func_2().a), var_0.b.b.e), arg_0.x, arg_0.x);
    global4 = array<vec2<f32>, 27>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2))))), global2[_wgslsmith_index_u32(77567u, 2u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2030f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * -612f) - _wgslsmith_div_f32(-1570f, 583f)), _wgslsmith_f_op_f32(-arg_2))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-575f, var_0.c.x)), _wgslsmith_f_op_f32(-var_0.a), var_1.x < u_input.e.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(392f)))))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x - -1242f), -558f), global1[_wgslsmith_index_u32(~u_input.d.x, 12u)]))), -299f);
    return u_input.c.x & _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(0u, u_input.d.x), _wgslsmith_sub_u32(u_input.b.x, ~0u)), abs(vec2<u32>(_wgslsmith_add_u32(1u, 2105u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 12>();
    var var_0 = ~_wgslsmith_dot_vec3_u32(min(vec3<u32>(func_1(vec2<i32>(global0.x, global0.x), global2[_wgslsmith_index_u32(u_input.d.x, 2u)], -1491f), 4294967295u, 1u), ~(~vec3<u32>(0u, 24104u, 29729u))), ~vec3<u32>(0u, ~101922u, u_input.d.x));
    global4 = array<vec2<f32>, 27>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.yy, u_input.b), 4294967295u), 12u)])), Struct_2(~global0.x, func_2().b), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(543f, global1[_wgslsmith_index_u32(0u, 12u)], 908f))) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], -2131f, -249f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1161f, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])))))));
    var var_2 = 44475u;
    var var_3 = func_2();
    var var_4 = ~u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(reverseBits(u_input.d.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.b.x, 3593u), firstLeadingBit(u_input.d.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.d.x, 1u)), ~vec2<u32>(u_input.d.x, 37859u), ~vec2<u32>(10389u, u_input.c.x)), max(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.a, u_input.b.x)))), 1i, global4[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), 27u)]);
}

