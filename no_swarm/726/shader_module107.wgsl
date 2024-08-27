struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-1i, -35270i), Struct_2(54910i, Struct_1(9982i, i32(-2147483648), 1959f), i32(-2147483648)), false, vec4<f32>(-1909f, 850f, 359f, -714f));

var<private> global1: array<u32, 18> = array<u32, 18>(0u, 4294967295u, 44494u, 0u, 1u, 84330u, 22735u, 53682u, 7337u, 9176u, 1u, 57928u, 1u, 11039u, 11148u, 47382u, 4294967295u, 67312u);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(29816i, -30087i, -2344f), Struct_1(-13161i, -72644i, 1700f), Struct_1(2147483647i, 0i, -1329f), Struct_1(32380i, 0i, 1175f), Struct_1(0i, 1i, -1365f), Struct_1(-7440i, 2147483647i, 137f));

var<private> global3: vec4<i32> = vec4<i32>(0i, 1i, -30679i, 69343i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(firstTrailingBit(~arg_1.c) >> (_wgslsmith_add_u32(22345u, 0u) % 32u)) & (arg_1.c & (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.c), vec2<u32>(global1[_wgslsmith_index_u32(arg_1.c, 18u)], global1[_wgslsmith_index_u32(1u, 18u)])), ~arg_1.c) ^ max(4294967295u, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1967u, 18u)], 4294967295u))));
    var var_1 = 1u;
    var var_2 = Struct_3(~_wgslsmith_add_vec2_i32(select(vec2<i32>(global0.b.b.a, global3.x), ~global0.a, select(true, false, false)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 0i, global3.x), vec4<i32>(47325i, 2147483647i, 2147483647i, arg_1.a.c)), global0.b.c)), arg_1.a, true, global0.d);
    global2 = array<Struct_1, 6>();
    var var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-213f - 756f))) - -1231f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = max(vec2<i32>(i32(-1i) * -2147483647i, -1i), vec2<i32>(~firstLeadingBit(i32(-1i) * -30348i), -2147483647i));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_3.d.wz)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(global0.a.x, u_input.a, 5516i, global0.a.x) >> (arg_0 % vec4<u32>(32u)), Struct_5(Struct_2(u_input.a, Struct_1(6038i, u_input.a, arg_3.b.b.c), global0.b.a), vec3<i32>(-2147483647i, 1901i, 2147483647i), global1[_wgslsmith_index_u32(54649u, 18u)]), global0.b.b))), _wgslsmith_f_op_f32(arg_3.d.x - 160f)));
    let var_2 = Struct_4(select(vec2<bool>(true, _wgslsmith_f_op_f32(abs(arg_3.b.b.c)) > _wgslsmith_div_f32(389f, var_1.x)), select(select(select(vec2<bool>(false, global0.c), vec2<bool>(true, arg_3.c), true), vec2<bool>(global0.c, false), vec2<bool>(true, false)), select(!vec2<bool>(global0.c, arg_3.c), select(vec2<bool>(global0.c, arg_3.c), vec2<bool>(global0.c, false), vec2<bool>(true, false)), 1u != arg_0.x), any(select(vec3<bool>(true, true, true), vec3<bool>(global0.c, false, false), false))), vec2<bool>(true, false)), global0.b.b.c);
    var_1 = global0.d.wx;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_3.d.yzy))));
    return 32999u;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> Struct_3 {
    global2 = array<Struct_1, 6>();
    var var_0 = ~vec3<u32>(~_wgslsmith_clamp_u32(~7980u, _wgslsmith_sub_u32(arg_2.x, 1u), 24794u), func_2(arg_0, arg_0.wz, arg_0, Struct_3(select(global3.yy, vec2<i32>(-37309i, global0.a.x), vec2<bool>(arg_1, global0.c)), global0.b, arg_1, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_3, arg_3, arg_3, arg_3), vec4<f32>(arg_3, 246f, 1118f, global0.d.x))))), min(global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(arg_2.x, 18u)], _wgslsmith_div_u32(1u, 59185u), global0.c), 18u)], _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, vec4<u32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], 0u, arg_2.x, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 43814u, arg_0.x, 43651u), vec4<u32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], 54711u, 13750u, 4294967295u)))));
    global2 = array<Struct_1, 6>();
    var var_1 = Struct_2(abs(-u_input.a), global2[_wgslsmith_index_u32(1u, 6u)], ~(-global0.a.x));
    let var_2 = vec3<u32>(arg_2.x ^ ~(~32122u), 1u, _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(38101u, 18u)])) | select(arg_0.wzz, ~_wgslsmith_div_vec3_u32(select(vec3<u32>(17349u, 23020u, 0u), vec3<u32>(arg_0.x, 91282u, arg_2.x), vec3<bool>(true, arg_1, global0.c)), ~vec3<u32>(arg_0.x, 24342u, 0u)), select(!vec3<bool>(true, true, arg_1), vec3<bool>(all(vec3<bool>(global0.c, global0.c, global0.c)), !arg_1, arg_1), select(!vec3<bool>(global0.c, arg_1, global0.c), select(vec3<bool>(global0.c, global0.c, global0.c), vec3<bool>(global0.c, arg_1, false), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(global0.c, arg_1, arg_1), vec3<bool>(global0.c, arg_1, true), false))));
    return Struct_3(global0.a << (vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(22161u, 18u)], arg_2.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(13337u, 4294967295u)))) % vec2<u32>(32u)), Struct_2(0i, Struct_1(global0.b.a, var_1.b.b, 533f), ~global0.b.c), false, vec4<f32>(246f, _wgslsmith_f_op_f32(func_3(-_wgslsmith_add_vec4_i32(vec4<i32>(global0.b.c, u_input.a, -1i, global0.b.c), vec4<i32>(u_input.a, 1i, var_1.a, 2147483647i)), Struct_5(Struct_2(global0.a.x, Struct_1(u_input.a, u_input.a, -1458f), -28817i), vec3<i32>(2147483647i, -1i, global3.x), _wgslsmith_add_u32(8005u, 0u)), Struct_1(global0.a.x, _wgslsmith_sub_i32(-34841i, u_input.a), _wgslsmith_f_op_f32(1000f + 1000f)))), -1597f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(-15800i, var_1.c, global0.b.a, global3.x), Struct_5(global0.b, global3.yyw, 6385u), global0.b.b))), 591f)));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_4 {
    global0 = func_4(vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_div_u32(func_2(firstLeadingBit(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c)), ~vec2<u32>(9007u, arg_2.c), firstLeadingBit(vec4<u32>(arg_2.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25778u, 18u)], 18u)], 18u)], 0u, arg_2.c)), Struct_3(arg_0.zy, Struct_2(-2147483647i, Struct_1(global3.x, global0.a.x, arg_1), arg_0.x), global0.c, arg_3)), _wgslsmith_mod_u32(1u, 1u)), global1[_wgslsmith_index_u32(~(~max(31122u, 83129u)), 18u)], 1u | global1[_wgslsmith_index_u32(50653u, 18u)]), global0.c, ~vec3<u32>(firstLeadingBit(arg_2.c) ^ reverseBits(4294967295u), _wgslsmith_div_u32(~arg_2.c, 13765u >> (global1[_wgslsmith_index_u32(arg_2.c, 18u)] % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12856u, 23149u), vec3<u32>(1u, 71126u, 1u) << (vec3<u32>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 52620u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(func_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(21239i, arg_2.a.c, u_input.a, -2147483647i), vec4<i32>(global3.x, arg_0.x, arg_0.x, u_input.a)) << (select(countOneBits(vec4<u32>(0u, 40168u, 4294967295u, 15871u)), vec4<u32>(global1[_wgslsmith_index_u32(0u, 18u)], 18865u, 4294967295u, arg_2.c) & vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.c, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 1688u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)) % vec4<u32>(32u)), Struct_5(global0.b, -(arg_2.b >> (vec3<u32>(31497u, global1[_wgslsmith_index_u32(4294967295u, 18u)], arg_2.c) % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(0u, 18u)]), 18u)]), global0.b.b)));
    let var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_i32(i32(-1i) * -28632i, u_input.a, 34921i) & 1i;
    var var_2 = var_0.c;
    let var_3 = func_4(~(select(min(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 18u)], arg_2.c, 4294967295u), vec4<u32>(var_0.c, 0u, arg_2.c, arg_2.c)), vec4<u32>(4294967295u, 33946u, 1u, global1[_wgslsmith_index_u32(59273u, 18u)]) >> (vec4<u32>(4294967295u, var_0.c, 92358u, 49840u) % vec4<u32>(32u)), !global0.c) ^ (select(vec4<u32>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<u32>(0u, 13721u, arg_2.c, var_0.c), vec4<bool>(global0.c, false, true, global0.c)) << (~vec4<u32>(var_0.c, 0u, arg_2.c, 24104u) % vec4<u32>(32u)))), global0.c, _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(var_0.c, arg_2.c, arg_2.c), vec3<u32>(1u, var_0.c, var_0.c), vec3<bool>(false, true, global0.c)), vec3<u32>(var_0.c, arg_2.c, var_0.c) << (vec3<u32>(9308u, arg_2.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25290u, 18u)], 18u)]) % vec3<u32>(32u)), vec3<u32>(global1[_wgslsmith_index_u32(41561u, 18u)], global1[_wgslsmith_index_u32(2980u, 18u)], 0u) | vec3<u32>(1u, arg_2.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 18u)], 18u)], 18u)], 18u)], 18u)])), ~_wgslsmith_mod_vec3_u32(vec3<u32>(13516u, 10676u, var_0.c), ~vec3<u32>(4294967295u, 34015u, arg_2.c))), _wgslsmith_f_op_f32(global0.b.b.c + _wgslsmith_f_op_f32(arg_2.a.b.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(210f + global0.b.b.c), _wgslsmith_f_op_f32(var_0.a.b.c - 160f)))))).b.b;
    return Struct_4(vec2<bool>(global0.c, true), _wgslsmith_f_op_f32(var_3.c * -1000f));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> f32 {
    return arg_1.b;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = arg_1.b;
    var var_1 = func_1(global3.zzw, _wgslsmith_f_op_f32(-1477f + _wgslsmith_f_op_f32(max(arg_0.x, arg_1.b))), Struct_5(global0.b, vec3<i32>(global3.x, -11264i | global3.x, global0.a.x) ^ reverseBits(vec3<i32>(2399i, 2147483647i, u_input.a)), select(~arg_2.x & global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 0u, arg_2.x), 18u)], _wgslsmith_mod_u32(4294967295u, arg_2.x) | reverseBits(arg_2.x), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * global0.b.b.c), 1060f, global0.d.x, _wgslsmith_f_op_f32(step(-156f, -167f))), global0.d)));
    global1 = array<u32, 18>();
    global0 = func_4(~(min(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(7021u, 18u)], 18u)], 18u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98357u, 18u)], 18u)]), reverseBits(vec4<u32>(106076u, 4294967295u, 53396u, 74256u))) << (vec4<u32>(0u, ~global1[_wgslsmith_index_u32(arg_2.x, 18u)], global1[_wgslsmith_index_u32(arg_2.x, 18u)], max(global1[_wgslsmith_index_u32(arg_2.x, 18u)], arg_2.x)) % vec4<u32>(32u))), global0.c, ((min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52664u, 18u)], 18u)], arg_2.x), vec3<u32>(arg_2.x, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)])) << ((vec3<u32>(13015u, 50785u, arg_2.x) & vec3<u32>(11782u, global1[_wgslsmith_index_u32(0u, 18u)], 27611u)) % vec3<u32>(32u))) & (vec3<u32>(0u, 4294967295u, arg_2.x) & ~vec3<u32>(0u, 4294967295u, 1507u))) << (vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], arg_2.x, global1[_wgslsmith_index_u32(1u, 18u)]), vec3<u32>(0u, arg_2.x, global1[_wgslsmith_index_u32(arg_2.x, 18u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.x, 33100u), 18u)], !arg_1.a.x), ~1u << (~arg_2.x % 32u), 92851u) % vec3<u32>(32u)), -673f);
    var var_2 = Struct_5(Struct_2(46024i, func_4(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(31945u, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66684u, 18u)], 18u)]), min(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.x, 18u)], 1u, global1[_wgslsmith_index_u32(135362u, 18u)], 4294967295u), vec4<u32>(arg_2.x, arg_2.x, global1[_wgslsmith_index_u32(arg_2.x, 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]))), all(vec4<bool>(arg_1.a.x, global0.c, global0.c, true)), ~vec3<u32>(arg_2.x, global1[_wgslsmith_index_u32(22747u, 18u)], 0u) ^ vec3<u32>(69323u, 23355u, arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))).b.b, _wgslsmith_dot_vec2_i32(global0.a, _wgslsmith_clamp_vec2_i32(countOneBits(global3.yy), vec2<i32>(global0.a.x, -15859i) << (arg_2 % vec2<u32>(32u)), reverseBits(vec2<i32>(39385i, arg_3.x))))), arg_3.xzz >> (~(~_wgslsmith_add_vec3_u32(vec3<u32>(12757u, global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(arg_2.x, 18u)]), vec3<u32>(1u, arg_2.x, 26928u))) % vec3<u32>(32u)), ~(~abs(38329u)));
    return Struct_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(abs(_wgslsmith_add_vec3_i32(var_2.b, vec3<i32>(arg_3.x, u_input.a, var_2.a.b.b)))), abs(vec3<i32>(var_2.b.x, _wgslsmith_dot_vec2_i32(arg_3.yx, vec2<i32>(59363i, -1i)), ~arg_3.x))), Struct_1(max(min(1i, min(75077i, var_2.b.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(var_2.b, vec3<i32>(var_2.b.x, global0.b.a, -33243i)), -2147483647i)), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f))), 1i);
}

fn func_7(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(func_4(_wgslsmith_div_vec4_u32(select(vec4<u32>(131440u, 61922u, 11766u, 0u), vec4<u32>(80330u, 0u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(30396u, 18u)]), vec4<bool>(true, true, global0.c, global0.c)), select(vec4<u32>(6405u, global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(1828u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9516u, 18u)], 18u)], 18u)], 18u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(40102u, 18u)]), true)), true, vec3<u32>(_wgslsmith_sub_u32(4294967295u, 1u), ~global1[_wgslsmith_index_u32(842u, 18u)], global1[_wgslsmith_index_u32(~1u, 18u)]), arg_1.b.c).d.x, _wgslsmith_f_op_f32(arg_1.b.c + _wgslsmith_f_op_f32(arg_1.b.c - _wgslsmith_f_op_f32(f32(-1f) * -2092f))))), 272f, arg_1.b.c);
    var var_1 = Struct_5(Struct_2(global3.x, Struct_1(2147483647i, -countOneBits(u_input.a), _wgslsmith_f_op_f32(arg_1.b.c * -1870f)), 29617i), select(vec3<i32>(_wgslsmith_dot_vec3_i32(global3.zyy, vec3<i32>(u_input.a, -16679i, -85089i)), u_input.a, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(48275i, global3.x, 4407i), global3.wzy ^ arg_0.zwx) & arg_0.xwy, global0.c), 1u);
    let var_2 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(9815u, firstTrailingBit(4294967295u), 54029u), 18u)], _wgslsmith_div_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 18u)], 22805u), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 18u)], 18u)])), ~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c, 4294967295u), vec2<u32>(var_1.c, 18465u)) | select(vec2<u32>(var_1.c, 1u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8956u, 18u)], 18u)], 18u)], 18u)], var_1.c), global0.c)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(14649u, reverseBits(global1[_wgslsmith_index_u32(var_1.c, 18u)])), firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(78985u, 18u)], global1[_wgslsmith_index_u32(79073u, 18u)]) & vec2<u32>(global1[_wgslsmith_index_u32(var_1.c, 18u)], var_1.c)), vec2<u32>(~var_1.c, var_1.c ^ 0u)), ~reverseBits(vec2<u32>(global1[_wgslsmith_index_u32(32733u, 18u)], global1[_wgslsmith_index_u32(36239u, 18u)])), func_1(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_0.x, arg_1.b.a), arg_0.xzy)), _wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec4_i32(arg_0, arg_0, arg_0), Struct_5(Struct_2(4287i, Struct_1(u_input.a, global0.b.c, 1088f), arg_0.x), vec3<i32>(arg_1.b.b, 5562i, -57137i), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61649u, 18u)], 18u)]), Struct_1(2147483647i, 15484i, 1000f))), Struct_5(func_4(vec4<u32>(21752u, 0u, global1[_wgslsmith_index_u32(112386u, 18u)], 25684u), false, vec3<u32>(global1[_wgslsmith_index_u32(var_1.c, 18u)], global1[_wgslsmith_index_u32(18890u, 18u)], global1[_wgslsmith_index_u32(var_1.c, 18u)]), arg_1.b.c).b, select(vec3<i32>(14182i, u_input.a, 2147483647i), vec3<i32>(u_input.a, arg_0.x, var_1.a.b.a), global0.c), ~1u), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(global0.d, global0.d, vec4<bool>(false, true, global0.c, global0.c)))))).a.x));
    var var_3 = vec2<bool>(true, all(!(!vec2<bool>(global0.c, global0.c))));
    var var_4 = 1f;
    return Struct_3(~global0.a, func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.c, var_0.x, _wgslsmith_f_op_f32(trunc(arg_1.b.c))) * global0.d.yzw), Struct_4(!vec2<bool>(global0.c, var_3.x), var_1.a.b.c), vec2<u32>(28994u, 23427u), firstTrailingBit(-(~vec4<i32>(global3.x, global3.x, global0.a.x, global0.b.b.b)))), true, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.b.c, -1404f)), var_0.x)), var_1.a.b.c, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(var_1.a.a, -10022i, arg_0.x, arg_1.b.b), Struct_5(Struct_2(u_input.a, global2[_wgslsmith_index_u32(var_2.x, 6u)], -52053i), vec3<i32>(global3.x, global0.b.a, -1i), var_2.x), global0.b.b)) + var_1.a.b.c), -1260f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(~1u), global1[_wgslsmith_index_u32(8520u, 18u)]), 18u)], 18u)];
    var_0 = firstTrailingBit(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1[_wgslsmith_index_u32(69784u, 18u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(83688u, 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(64949u, 18u)], 18u)])) & 1u, 20649u));
    global0 = func_7(vec4<i32>(78380i, _wgslsmith_div_i32(1i, -global3.x) >> (abs(0u) % 32u), 0i, global0.a.x), func_6(vec3<f32>(584f, _wgslsmith_f_op_f32(func_5(func_1(vec3<i32>(global0.b.a, 66204i, u_input.a), global0.b.b.c, Struct_5(global0.b, vec3<i32>(1i, -2147483647i, u_input.a), 19136u), vec4<f32>(-716f, 171f, global0.b.b.c, global0.b.b.c)), Struct_4(vec2<bool>(global0.c, false), global0.b.b.c), 0i << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)] % 32u))), global0.b.b.c), Struct_4(!select(vec2<bool>(true, global0.c), vec2<bool>(false, false), true), global0.d.x), ~vec2<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(29518u, 18u)]), 1u), -(-vec4<i32>(2667i, u_input.a, global0.b.c, 18191i) >> (min(vec4<u32>(52772u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58339u, 18u)], 18u)], 18u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56182u, 18u)], 18u)], 1u), vec4<u32>(3209u, 18557u, global1[_wgslsmith_index_u32(2060u, 18u)], global1[_wgslsmith_index_u32(2751u, 18u)])) % vec4<u32>(32u)))));
    global3 = ~max(abs(firstLeadingBit(vec4<i32>(global3.x, global3.x, global3.x, 1i))), vec4<i32>(u_input.a, 5971i, global0.b.b.a, 0i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(14839i, -42022i, -173i, -2147483647i), vec4<i32>(-2147483647i, global3.x, -30169i, global3.x))) >> (firstLeadingBit(vec4<u32>(24178u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(~4294967295u, 18u)]), 18u)], 18u)], global1[_wgslsmith_index_u32(~0u, 18u)], _wgslsmith_mod_u32(1u, 1u))) % vec4<u32>(32u));
    var_0 = _wgslsmith_sub_u32(select(~abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2664u, 18u)], 18u)]), reverseBits(0u), !(global0.c & !global0.c)), countOneBits(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)] ^ global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 67710u), 18u)], _wgslsmith_mult_u32(countOneBits(global1[_wgslsmith_index_u32(37665u, 18u)]), ~1u))));
    let var_1 = Struct_3(global3.xw, global0.b, global0.c, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-936f + global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(349f, global0.b.b.c, true))))), 978f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x * global0.d.x), global0.b.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6570u, 18u)], 18u)])) & 4294967295u);
}

