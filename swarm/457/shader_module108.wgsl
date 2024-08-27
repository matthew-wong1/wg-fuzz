struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<bool>(true, true, true, false), 2147483647i, vec2<f32>(-1365f, 1146f), vec3<i32>(1i, 33048i, 88130i), -1000f), Struct_1(vec4<bool>(true, true, false, true), 1i, vec2<f32>(691f, 111f), vec3<i32>(-15972i, i32(-2147483648), 1i), 1407f), Struct_1(vec4<bool>(true, false, true, true), 1i, vec2<f32>(-248f, 788f), vec3<i32>(-1i, 2147483647i, -40425i), -752f), Struct_1(vec4<bool>(true, true, false, true), 0i, vec2<f32>(-456f, 168f), vec3<i32>(-75778i, 1i, 77746i), 1705f));

var<private> global1: array<i32, 1> = array<i32, 1>(-48918i);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), 0i, vec2<f32>(2533f, -197f), vec3<i32>(i32(-2147483648), -18968i, 0i), -300f);

var<private> global3: array<u32, 30> = array<u32, 30>(1u, 6161u, 4294967295u, 12079u, 32443u, 1u, 17786u, 1u, 0u, 17876u, 4294967295u, 43646u, 0u, 4294967295u, 4294967295u, 13202u, 2261u, 4294967295u, 1u, 111729u, 1u, 28928u, 1u, 38520u, 0u, 0u, 1u, 25842u, 12830u, 1u);

var<private> global4: vec4<f32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global2 = Struct_1(vec4<bool>(global2.a.x == global2.a.x, any(!(!vec4<bool>(false, true, arg_2.a.x, global2.a.x))), false, true), 0i, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(664f + 1628f), global2.e)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2045f), arg_1.x))))), ~(-vec3<i32>(_wgslsmith_mult_i32(arg_3.b, 1i), ~global2.d.x, 0i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(422f - global2.c.x), global4.x)))));
    let var_0 = arg_3;
    global0 = array<Struct_1, 4>();
    global3 = array<u32, 30>();
    global3 = array<u32, 30>();
    return arg_3;
}

fn func_3(arg_0: vec3<f32>) -> vec3<u32> {
    let var_0 = ~(~vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57832u, 30u)], 30u)], 1u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 30u)], 30u)], 30u)], 1u)]), global2.d), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(31324u, 1u)], 2147483647i, -1i)), 1i, _wgslsmith_sub_i32(~(-14989i), 39089i), ~(global2.b ^ 44312i)));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2.e, global4.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), 1539f))), _wgslsmith_f_op_f32(global2.e + global2.c.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -434f))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, global2.e, true))))))));
    global0 = array<Struct_1, 4>();
    let var_1 = 1u;
    let var_2 = global0[_wgslsmith_index_u32(54192u, 4u)];
    return max(u_input.b, _wgslsmith_sub_vec3_u32(u_input.b, ~vec3<u32>(4294967295u, _wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = 1676f;
    var var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(func_3(_wgslsmith_f_op_vec3_f32(-global4.yxz)), reverseBits(u_input.b)), vec3<u32>(_wgslsmith_sub_u32(~0u, u_input.b.x), u_input.b.x, global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(min(0u, 1u), 1u)), 30u)]));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-arg_1.c.x), any(vec2<bool>(true, false)))), arg_1.c.x, _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1107f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, -313f, -180f, var_0))))), true)));
    var var_3 = !func_1(~(~(~vec2<u32>(2455u, global3[_wgslsmith_index_u32(var_1.x, 30u)]))), arg_1.c, func_1(~(u_input.b.yx | var_1.xz), arg_0.c, arg_1, func_1(_wgslsmith_add_vec2_u32(var_1.xy, vec2<u32>(global3[_wgslsmith_index_u32(1u, 30u)], 17517u)), _wgslsmith_div_vec2_f32(global2.c, var_2.zy), Struct_1(vec4<bool>(false, true, true, false), arg_2.x, arg_0.c, arg_2.ywy, global2.e), func_1(u_input.b.yz, arg_0.c, arg_1, arg_0))), func_1(vec2<u32>(4294967295u, countOneBits(u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.c, arg_0.c))), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(u_input.b.x, u_input.b.x), 30u)], 4u)], func_1(_wgslsmith_sub_vec2_u32(u_input.b.yy, var_1.xy), _wgslsmith_f_op_vec2_f32(-global2.c), Struct_1(arg_1.a, 2147483647i, global4.zy, vec3<i32>(arg_2.x, global2.d.x, arg_1.b), -1088f), func_1(var_1.yz, global4.zz, arg_1, Struct_1(vec4<bool>(arg_0.a.x, global2.a.x, global2.a.x, true), global2.b, var_2.yw, global2.d, arg_0.e))))).a.yx;
    var_1 = select(min(min(u_input.b, vec3<u32>(_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 30u)], 30u)]), ~0u, ~4294967295u)), vec3<u32>(~(~var_1.x), _wgslsmith_dot_vec4_u32(max(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10976u, 30u)], 30u)], 30u)], 1u, global3[_wgslsmith_index_u32(var_1.x, 30u)], 8585u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u)), vec4<u32>(42723u, u_input.b.x, var_1.x, u_input.b.x)), ~u_input.b.x ^ 10270u)), ~_wgslsmith_sub_vec3_u32(select(u_input.b << (u_input.b % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 43518u, global3[_wgslsmith_index_u32(53161u, 30u)]), !arg_1.a.zzy), u_input.b), false);
    return 1538f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1077f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(func_1(vec2<u32>(0u, u_input.b.x), vec2<f32>(-1427f, -835f), Struct_1(vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x), global2.b, vec2<f32>(-1127f, global2.c.x), vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 30u)], 1u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53500u, 30u)], 30u)], 1u)]), global4.x), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48185u, 30u)], 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, global3[_wgslsmith_index_u32(32920u, 30u)]), 4u)], _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global2.d.x, global2.d.x, global2.d.x), vec4<i32>(-33294i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], 1i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * 972f) + -1540f), true)), _wgslsmith_f_op_f32(1343f + 532f), _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.x)))))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(u_input.b, u_input.b), countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 30u)]))) >> (abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 30u)] ^ 4294967295u, 30u)]) % 32u), _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 0u, global3[_wgslsmith_index_u32(0u, 30u)]), vec3<u32>(34958u, global3[_wgslsmith_index_u32(0u, 30u)], u_input.b.x)), vec3<u32>(~u_input.b.x, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 30u)], u_input.b.x), ~u_input.b.x))), global3[_wgslsmith_index_u32(94847u, 30u)]);
    global2 = Struct_1(global2.a, -_wgslsmith_add_i32(_wgslsmith_mod_i32(global2.b | global1[_wgslsmith_index_u32(12494u, 1u)], ~global1[_wgslsmith_index_u32(53892u, 1u)]), global2.b), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -740f))))), _wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(-var_0.x))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))));
    let var_2 = ~(~vec3<u32>(4294967295u, 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), u_input.b), abs(global3[_wgslsmith_index_u32(u_input.b.x, 30u)]))));
    var var_3 = global2.b;
    let var_4 = global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
    var var_5 = u_input.a.x & global2.b;
    let var_6 = global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(~(-24124i), firstTrailingBit(17370i)), min(~select(vec2<i32>(var_6.b, var_6.b), vec2<i32>(global2.b, 2147483647i), global2.a.x), -vec2<i32>(-1i, 1i)), func_1(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 30u)], 30u)]), u_input.b.zx), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global4.x, var_0.x))), Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(global2.a.x, global2.a.x, var_6.a.x, var_4.a.x), global2.a), -6036i << (global3[_wgslsmith_index_u32(0u, 30u)] % 32u), vec2<f32>(114f, global2.c.x), reverseBits(u_input.a), -1000f), Struct_1(var_4.a, 2147483647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(107f, 957f) + vec2<f32>(-254f, -1557f)), countOneBits(var_6.d), _wgslsmith_f_op_f32(1000f - var_4.e))).d.xx), ~_wgslsmith_clamp_vec3_i32(-global2.d, var_6.d, vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, var_4.b, global2.d.x)), _wgslsmith_add_i32(-19510i, _wgslsmith_add_i32(-1i, 2147483647i)));
}

