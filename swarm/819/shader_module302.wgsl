struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, false, true, false, false, true, true, false, false, true, true, false, false, true, true, true, false, false, true, false, true, true, true, true, false, true, false, true);

var<private> global1: array<u32, 14>;

var<private> global2: array<Struct_2, 30>;

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = 153f;
    let var_1 = true;
    var var_2 = global3.b.c;
    var var_3 = ~(-global3.b.a.x >> (1u % 32u));
    global1 = array<u32, 14>();
    return select(select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(global3.b.b.x, true, global0[_wgslsmith_index_u32(88041u, 30u)], true), vec4<bool>(false, global3.b.b.x, false, global3.b.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 30u)], true), vec4<bool>(false, var_1, true, false)), !var_1), !select(vec4<bool>(var_1, global0[_wgslsmith_index_u32(0u, 30u)], false, global3.b.b.x), vec4<bool>(global0[_wgslsmith_index_u32(10531u, 30u)], false, true, var_1), var_1), global3.b.b.x), vec4<bool>(true, !any(vec3<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 30u)], true, var_1)), all(vec3<bool>(true, false, var_1)), global3.b.b.x), _wgslsmith_f_op_f32(1969f - _wgslsmith_f_op_f32(trunc(global3.b.c))) >= _wgslsmith_div_f32(565f, 583f)), !(!select(select(vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(57030u, 30u)], true), vec4<bool>(global3.b.b.x, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 30u)], true, true, true)), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 30u)], false), vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(0u, 30u)]), false), select(vec4<bool>(global3.b.b.x, var_1, global3.b.b.x, global3.b.b.x), vec4<bool>(false, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 30u)], false), vec4<bool>(var_1, false, global3.b.b.x, true)))), select(!vec4<bool>(!global3.b.b.x, false, global0[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(55420u, 14u)]), 30u)], false), select(vec4<bool>(true, all(vec4<bool>(true, true, global3.b.b.x, true)), any(vec4<bool>(global3.b.b.x, false, global0[_wgslsmith_index_u32(43278u, 30u)], true)), global3.b.b.x), vec4<bool>(any(vec4<bool>(var_1, var_1, global0[_wgslsmith_index_u32(12747u, 30u)], false)), var_1 | var_1, true, !global0[_wgslsmith_index_u32(3296u, 30u)]), select(select(vec4<bool>(true, false, var_1, true), vec4<bool>(true, true, false, true), vec4<bool>(var_1, global0[_wgslsmith_index_u32(29269u, 30u)], false, true)), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, false, false, global3.b.b.x), vec4<bool>(var_1, true, global3.b.b.x, var_1)), all(vec4<bool>(var_1, global3.b.b.x, global3.b.b.x, false)))), select(vec4<bool>(false, false, all(vec3<bool>(var_1, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 14u)], 30u)])), !var_1), select(vec4<bool>(var_1, true, global3.b.b.x, true), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(7133u, 30u)], var_1, true), vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10429u, 14u)], 30u)], false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(global3.b.b.x, global3.b.b.x, true, var_1), var_1)), select(select(vec4<bool>(var_1, false, global0[_wgslsmith_index_u32(0u, 30u)], var_1), vec4<bool>(true, global0[_wgslsmith_index_u32(26249u, 30u)], global3.b.b.x, global3.b.b.x), vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40696u, 14u)], 14u)], 30u)], true)), vec4<bool>(false, global3.b.b.x, global0[_wgslsmith_index_u32(2473u, 30u)], false), global3.b.b.x))));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_4 {
    return Struct_4(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(countOneBits(1u), 14u)], 14u)], func_3());
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_3(!arg_1.b.x);
    let var_1 = Struct_3(false);
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global3.a)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, 109f, global3.a.x, 727f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.b.c, 223f, global3.a.x, global3.b.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global3.a))))));
    global0 = array<bool, 30>();
    return countOneBits(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = func_2(global3.b.c >= _wgslsmith_f_op_f32(min(global3.b.c, _wgslsmith_f_op_f32(-1f))), true);
    let var_2 = min(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.a, 1u), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 14u)], 32093u)), firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(0u, 14u)], var_1.a))), _wgslsmith_clamp_u32(~var_1.a, ~var_1.a, countOneBits(var_1.a))), global1[_wgslsmith_index_u32(~(~41426u), 14u)] >> (var_1.a % 32u)), firstLeadingBit(vec2<u32>(25496u, _wgslsmith_dot_vec2_u32(vec2<u32>(63554u, 12123u), abs(vec2<u32>(36008u, global1[_wgslsmith_index_u32(1u, 14u)]))))));
    let var_3 = var_1.b;
    let var_4 = global2[_wgslsmith_index_u32(1u, 30u)];
    return global2[_wgslsmith_index_u32(var_2.x, 30u)];
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(global3.a))));
    let var_1 = _wgslsmith_div_vec2_f32(var_0.zx, var_0.wx);
    var var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(92154u), 14u)], 30u)];
    global3 = func_5(1i, var_2.b.a.x, _wgslsmith_add_i32(func_4(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(0u, 14u)]), 14u)], func_2(var_0.x == var_2.a.x, false)), _wgslsmith_dot_vec2_i32(min(_wgslsmith_clamp_vec2_i32(u_input.a, global3.b.a.xz, vec2<i32>(45635i, u_input.a.x)), vec2<i32>(global3.b.a.x, 0i)), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-3742i, -10756i)), global3.b.d))), func_2(false, _wgslsmith_sub_i32(abs(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.a.x, var_2.b.a.x, global3.b.a.x), vec3<i32>(-1i, var_2.b.a.x, -6344i))) >= 0i));
    global2 = array<Struct_2, 30>();
    return select(select(vec4<bool>(var_2.b.b.x & (u_input.a.x >= -2147483647i), any(vec3<bool>(global3.b.b.x, false, global0[_wgslsmith_index_u32(1u, 30u)])), var_2.b.b.x, var_2.b.b.x), !func_2(global3.b.b.x, all(vec4<bool>(global3.b.b.x, global3.b.b.x, false, global3.b.b.x))).b, true), vec4<bool>(true, global3.b.b.x, all(vec2<bool>(true & global0[_wgslsmith_index_u32(4294967295u, 30u)], !global3.b.b.x)), global3.b.b.x), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)] & var_2.b.b.x, var_2.b.b.x, !global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5136u, 14u)], 30u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 81244u;
    let var_1 = _wgslsmith_f_op_f32(-global3.b.c);
    var var_2 = func_1();
    let var_3 = func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], 14u)], 30u)], false).b;
    let var_4 = -1833f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(20633u, firstLeadingBit(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))), ~vec2<u32>(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(45798u, 14u)]), 30u)], false).a, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(54044u, 14u)], 14u)], 14u)], 4294967295u)), _wgslsmith_div_vec3_f32(vec3<f32>(257f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1221f))), var_4), _wgslsmith_f_op_vec3_f32(func_5(1i, u_input.a.x, -2147483647i, func_2(var_3.x, var_3.x)).a.yxw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_4, var_4, 682f)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, global3.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-146f)), _wgslsmith_f_op_f32(sign(var_1)), var_2.x)), _wgslsmith_f_op_f32(round(-957f))))), vec2<i32>(max(global3.b.a.x, 32308i), ~(-363i)));
}

