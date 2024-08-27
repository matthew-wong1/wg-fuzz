struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, false, false, true, false, true, true, false, false, true, false, true, false, false, true, false, true);

var<private> global2: array<f32, 13> = array<f32, 13>(765f, 2033f, 1327f, 1788f, -1755f, 126f, -235f, -1923f, 316f, -1120f, 1262f, -893f, 1000f);

var<private> global3: i32 = 1i;

var<private> global4: array<vec4<u32>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    return -1000f;
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(276f, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_0.d.e, 1u)], global0[_wgslsmith_index_u32(18450u, 1u)]) >> (~u_input.a.x % 32u))), arg_0.d.c.x), arg_0.a.b, global2[_wgslsmith_index_u32(0u, 13u)]);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(2607f, var_0.a, var_0.a) + vec3<f32>(-421f, global2[_wgslsmith_index_u32(25256u, 13u)], arg_0.b.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-726f, -1474f, -1337f)))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1015f, var_0.c, arg_0.d.c.x))))))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)] * 1237f), 867f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a, var_0.c, 285f)))))));
    var var_2 = arg_0;
    global1 = array<bool, 18>();
    var_2 = arg_0;
    return select(arg_0.b.b.xww, var_0.b.ywz, arg_0.b.b.xyy);
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(50883u, 8244u), abs(u_input.a.x), 1u), _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, u_input.a.x), u_input.a.x), ~u_input.a.x), u_input.a.x & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(7312u, 57103u), u_input.a.x), u_input.a)), 1u)];
    let var_1 = -firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -22807i, global0[_wgslsmith_index_u32(2827u, 1u)], 2147483647i), vec4<i32>(-33040i, global0[_wgslsmith_index_u32(1u, 1u)], -45863i, 49216i)), _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(0u, 1u)]), _wgslsmith_clamp_i32(2147483647i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)])) >> (~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 40743u), vec3<u32>(4294967295u, 7837u, 4294967295u)) % vec3<u32>(32u)));
    global1 = array<bool, 18>();
    global0 = array<i32, 1>();
    var_0 = _wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(69477i), reverseBits(global0[_wgslsmith_index_u32(0u, 1u)])) << (0u % 32u), var_1.x);
    return Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~54556u, abs(34711u)), _wgslsmith_mod_u32(18538u, ~u_input.a.x), 51688u), vec3<u32>(4294967295u, ~u_input.a.x, u_input.a.x)), 13u)], select(select(vec4<bool>(func_2(Struct_3(Struct_2(-706f, vec4<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(44485u, 18u)], true), -613f), Struct_2(677f, vec4<bool>(global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], false, false), global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<bool>(true, false), Struct_1(-1938f, false, vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)]), global2[_wgslsmith_index_u32(0u, 13u)], u_input.a.x))).x, any(vec2<bool>(true, false)), !global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), !(!vec4<bool>(true, false, arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)])), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)], arg_0.x, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, false))), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(8844u, 18u)], false, arg_0.x, true), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)], arg_0.x, arg_0.x), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), !select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(arg_0.x, false, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), true), global1[_wgslsmith_index_u32(reverseBits(1u) & (26522u << (u_input.a.x % 32u)), 18u)]), select(select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(33766u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], arg_0.x, true), any(arg_0.xz)), select(!vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), true), !(true != global1[_wgslsmith_index_u32(1u, 18u)]))), global2[_wgslsmith_index_u32(~1u, 13u)]);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    global4 = array<vec4<u32>, 28>();
    global1 = array<bool, 18>();
    let var_0 = _wgslsmith_div_u32(~abs(~_wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(arg_0.d.e, 28u)], vec4<u32>(0u, 49837u, 0u, 4294967295u))), ~(~arg_1));
    let var_1 = vec2<f32>(arg_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1550f)) + -798f));
    let var_2 = vec2<bool>(func_2(arg_0).x, all(arg_0.a.b.wx));
    return arg_0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: u32) -> vec3<u32> {
    global4 = array<vec4<u32>, 28>();
    let var_0 = func_5(Struct_3(Struct_2(arg_0.x, select(!vec4<bool>(true, global1[_wgslsmith_index_u32(53821u, 18u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), !vec4<bool>(false, arg_1, arg_1, false), global1[_wgslsmith_index_u32(u_input.a.x, 18u)] & global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), global2[_wgslsmith_index_u32(~arg_3, 13u)]), func_4(func_2(Struct_3(Struct_2(-1365f, vec4<bool>(false, true, arg_1, false), global2[_wgslsmith_index_u32(1u, 13u)]), Struct_2(897f, vec4<bool>(false, true, global1[_wgslsmith_index_u32(60494u, 18u)], true), -754f), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 18u)]), Struct_1(-1000f, global1[_wgslsmith_index_u32(arg_3, 18u)], vec2<f32>(433f, 2376f), arg_0.x, u_input.a.x)))), func_4(func_2(Struct_3(Struct_2(1338f, vec4<bool>(false, true, false, true), arg_2.x), Struct_2(-324f, vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(arg_3, 18u)]), 951f), vec2<bool>(true, false), Struct_1(543f, false, vec2<f32>(arg_0.x, 1282f), arg_2.x, u_input.a.x)))).b.zx, Struct_1(arg_0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 34055u), 18u)], _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.x, -357f))))), _wgslsmith_f_op_f32(-525f + 1f), _wgslsmith_mod_u32(~4294967295u, firstLeadingBit(56317u)))), _wgslsmith_mult_u32(arg_3, 9831u ^ ~_wgslsmith_mult_u32(u_input.a.x, 46623u)));
    global4 = array<vec4<u32>, 28>();
    global3 = 0i | global0[_wgslsmith_index_u32(0u, 1u)];
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(603f, global0[_wgslsmith_index_u32((4294967295u ^ arg_3) & 4294967295u, 1u)])))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-809f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(32972u, 13u)]), _wgslsmith_f_op_f32(-arg_0.x)), global2[_wgslsmith_index_u32(arg_3, 13u)])));
    return countOneBits(vec3<u32>(1u, arg_3, 0u));
}

fn func_6(arg_0: f32, arg_1: vec3<f32>, arg_2: f32) -> bool {
    let var_0 = Struct_3(func_5(Struct_3(Struct_2(-129f, select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(global1[_wgslsmith_index_u32(33969u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false, false)), _wgslsmith_f_op_f32(max(arg_1.x, 576f))), Struct_2(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(4294967295u, 13u)], arg_2), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(65758u, 18u)], false, true, false)), _wgslsmith_f_op_f32(sign(arg_0))), func_4(select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), false)).b.ww, Struct_1(_wgslsmith_f_op_f32(trunc(arg_2)), global2[_wgslsmith_index_u32(u_input.a.x, 13u)] >= global2[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(700f, -543f) - vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], arg_2)), -1696f, ~u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x | 0u, ~(u_input.a.x << (u_input.a.x % 32u)))), func_4(vec3<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false), any(func_5(Struct_3(Struct_2(1501f, vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), Struct_2(-123f, vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], true), arg_2), vec2<bool>(true, true), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false, vec2<f32>(-230f, -901f), global2[_wgslsmith_index_u32(u_input.a.x, 13u)], 1u)), u_input.a.x).b.zx), !any(vec4<bool>(true, false, true, false)))), func_5(Struct_3(Struct_2(-502f, !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], false, global1[_wgslsmith_index_u32(11705u, 18u)], false), _wgslsmith_f_op_f32(arg_1.x - -847f)), func_4(vec3<bool>(true, true, true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], u_input.a.x >= u_input.a.x), Struct_1(_wgslsmith_f_op_f32(-arg_0), global1[_wgslsmith_index_u32(u_input.a.x, 18u)] || global1[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, -341f))), arg_0, min(u_input.a.x, 4366u))), ~u_input.a.x).b.zz, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -534f), true, vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_0, global0[_wgslsmith_index_u32(81825u, 1u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, -1000f)) + _wgslsmith_f_op_f32(arg_0 * arg_0))), -1615f, 1u));
    var var_1 = vec2<bool>(false, true);
    let var_2 = ~vec4<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~(28712u | var_0.d.e), 1u)], min(35288i, -4687i)), global0[_wgslsmith_index_u32(1u, 1u)], ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 10271i), _wgslsmith_div_i32(1i, min(global0[_wgslsmith_index_u32(~4294967295u, 1u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 1u)])));
    global0 = array<i32, 1>();
    var var_3 = countOneBits(~(~1u));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(~reverseBits(u_input.a.x)), 13u)]), global2[_wgslsmith_index_u32(~select(select(~18659u, 30223u, all(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), u_input.a.x, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], false))), 13u)]);
    var var_1 = !vec3<bool>(func_6(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(vec4<f32>(-1520f, global2[_wgslsmith_index_u32(1u, 13u)], -1085f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), global1[_wgslsmith_index_u32(u_input.a.x, 18u)], vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.x), u_input.a.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), 13u)], _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -2046f, var_0.x))), var_0.x), func_6(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 13u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(411f, -219f, 305f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1000f))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(711f + -1062f))), all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(max(461f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(345u, 13u)] - global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), -534f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, _wgslsmith_f_op_f32(f32(-1f) * -306f), global2[_wgslsmith_index_u32(1u, 13u)]))), reverseBits(reverseBits(vec3<i32>(~global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), 57329u);
}

