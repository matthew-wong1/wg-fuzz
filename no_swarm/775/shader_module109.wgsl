struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec4<bool>;

var<private> global3: array<f32, 29> = array<f32, 29>(111f, -309f, -927f, -771f, 844f, -2244f, 1843f, -1007f, -1753f, 313f, 199f, -325f, -742f, 1060f, -821f, -200f, -257f, -239f, -113f, -826f, 1501f, 101f, 909f, -1096f, -1258f, 823f, -381f, 1564f, 635f);

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> vec4<i32> {
    let var_0 = vec3<u32>(arg_1.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(73735u, 67606u, 1u, 1u) >> (vec4<u32>(global4.x, u_input.a, global4.x, arg_1.a) % vec4<u32>(32u))), ~u_input.c >> (_wgslsmith_mod_vec4_u32(u_input.c, global1[_wgslsmith_index_u32(17240u, 6u)]) % vec4<u32>(32u))), vec4<u32>(global4.x, u_input.a, 49980u, ~arg_1.a >> (arg_1.a % 32u))), ~u_input.b.x);
    let var_1 = -2241f;
    let var_2 = 66218u;
    var var_3 = Struct_1(abs(~(~countOneBits(arg_1.a))), select(arg_1.b, arg_1.b, vec4<bool>(!(!global2.x), false, false, any(!vec2<bool>(global2.x, false)))), vec4<i32>(arg_2, firstTrailingBit(-21488i), _wgslsmith_sub_i32(1i, reverseBits(arg_1.c.x)) >> ((0u & _wgslsmith_mult_u32(global4.x, arg_1.a)) % 32u), -(u_input.d.x ^ arg_2)));
    let var_4 = var_0.x;
    return vec4<i32>(-var_3.c.x, arg_1.c.x, u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_3.c.x, arg_2, u_input.d.x, -2147483647i), u_input.d, var_3.b), var_3.c ^ u_input.d), -(~u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-9849i, arg_1.c.x, -2147483647i), firstTrailingBit(var_3.c.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, arg_2, -1i), vec3<i32>(0i, -1i, -17950i)), -arg_2)), vec4<i32>(~74239i, firstLeadingBit(firstTrailingBit(0i)), abs(1i), var_3.c.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    global4 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(10034u, 6u)], vec4<u32>(34667u, arg_3.a, 4294967295u, arg_2.a)), reverseBits(51593u)), 4294967295u), _wgslsmith_add_u32(40094u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9614u, arg_3.a) & vec2<u32>(arg_1, u_input.b.x), abs(u_input.b.zy)), global4.x)));
    var var_0 = arg_3;
    var var_1 = Struct_1(~1010u, select(!select(vec4<bool>(true, false, global2.x, true), !arg_2.b, arg_2.b), select(!arg_3.b, !(!var_0.b), all(arg_0)), vec4<bool>(!(true & arg_3.b.x), all(vec4<bool>(arg_2.b.x, arg_3.b.x, false, arg_0.x)), any(!vec3<bool>(arg_0.x, global2.x, false)), true)), vec4<i32>(-23585i, 1i, 0i >> (u_input.c.x % 32u), -_wgslsmith_mult_i32(0i, -arg_2.c.x)));
    var var_2 = -4383i > u_input.d.x;
    let var_3 = u_input.d.zwy;
    return (u_input.c.zy ^ vec2<u32>(var_1.a, 4294967295u)) << (~_wgslsmith_clamp_vec2_u32(u_input.c.zw, vec2<u32>(global4.x, 1u) << (u_input.c.xx % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.b.wx), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, u_input.a), vec2<u32>(1u, 1u), u_input.c.yx))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = ~(-16670i);
    global4 = _wgslsmith_mod_vec2_u32(u_input.c.xy, _wgslsmith_add_vec2_u32(abs(abs(max(u_input.c.yw, u_input.b.yy))), func_4(vec4<bool>(global2.x || global2.x, true, true, true), ~0u, Struct_1(global4.x, !arg_2.b, func_3(global3[_wgslsmith_index_u32(global4.x, 29u)], global0[_wgslsmith_index_u32(38503u, 5u)], var_0)), global0[_wgslsmith_index_u32(u_input.b.x, 5u)])));
    var var_1 = ~(~u_input.d.x);
    let var_2 = u_input.d;
    var var_3 = arg_2;
    return firstLeadingBit(_wgslsmith_add_u32(~4294967295u, abs(global4.x)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    var var_0 = 10668i;
    var var_1 = abs(~u_input.b.yzy);
    global0 = array<Struct_1, 5>();
    var_0 = -_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.d.x, _wgslsmith_add_i32(~arg_1.c.x, _wgslsmith_clamp_i32(-13825i, 2147483647i, 2147483647i))), ~0i);
    var var_2 = arg_2;
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.b.xzx, min(vec3<u32>(59987u, _wgslsmith_div_u32(u_input.b.x, 4294967295u), 1u), vec3<u32>(108434u, global4.x | global4.x, global4.x & global4.x))), !vec4<bool>(true, all(!vec4<bool>(false, true, global2.x, global2.x)), global2.x, !(-2147483647i >= u_input.d.x)), ~min(~(~u_input.d), -(vec4<i32>(2147483647i, -1i, 1i, 40272i) & vec4<i32>(-1i, u_input.d.x, u_input.d.x, u_input.d.x))));
    global2 = select(select(var_0.b, vec4<bool>(global2.x, var_0.b.x, var_0.b.x, !all(vec4<bool>(false, var_0.b.x, global2.x, global2.x))), !var_0.b), select(select(!(!vec4<bool>(global2.x, var_0.b.x, true, var_0.b.x)), vec4<bool>(global2.x, !global2.x, any(var_0.b.yy), all(global2.xww)), false), var_0.b, var_0.b), false);
    var var_1 = func_5(u_input.d.yx << (~vec2<u32>(var_0.a, var_0.a) % vec2<u32>(32u)), Struct_1(~u_input.b.x, vec4<bool>(!(!var_0.b.x), true & any(vec2<bool>(true, var_0.b.x)), global2.x, var_0.b.x), var_0.c), Struct_1(_wgslsmith_mult_u32(~global4.x, _wgslsmith_add_u32(1u, var_0.a)) << (~func_2(var_0.b.zx, u_input.d.wxx, Struct_1(0u, var_0.b, vec4<i32>(0i, u_input.d.x, 10828i, u_input.d.x))) % 32u), select(var_0.b, var_0.b, var_0.b.x), var_0.c), vec3<bool>(abs(u_input.d.x) != -var_0.c.x, !any(select(vec2<bool>(global2.x, true), vec2<bool>(true, var_0.b.x), true)), !var_0.b.x));
    global3 = array<f32, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], 271f, global3[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(31362u, 29u)], -175f, 1393f)), false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1488f, -212f, global3[_wgslsmith_index_u32(var_0.a, 29u)])) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-917f, global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(11600u, 29u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(912f, 892f, global3[_wgslsmith_index_u32(u_input.c.x, 29u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(0u, 29u)], 1392f, global3[_wgslsmith_index_u32(14560u, 29u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(151f, 1619f, global3[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<f32>(849f, 415f, global3[_wgslsmith_index_u32(var_0.a, 29u)]))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-499f, global3[_wgslsmith_index_u32(0u, 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)])))))), false));
    return Struct_1(~1u, select(select(var_0.b, vec4<bool>(all(vec2<bool>(false, false)), global3[_wgslsmith_index_u32(4294967295u, 29u)] < -340f, !var_0.b.x, !global2.x), var_0.b.x), vec4<bool>(!(false || var_0.b.x), global2.x, _wgslsmith_f_op_f32(max(-969f, var_2.x)) != -961f, true), vec4<bool>(var_0.b.x, global4.x > u_input.a, var_0.b.x, any(!global2.xyy))), firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, -19559i), var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 29>();
    global4 = vec2<u32>(36669u, ~countOneBits(_wgslsmith_clamp_u32(57474u, u_input.b.x, 86661u) | 1u));
    let var_0 = func_1();
    let var_1 = var_0.c.x;
    let var_2 = -1470f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-57672i, _wgslsmith_sub_i32(1i, abs(0i)), -56422i), 75977i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, _wgslsmith_f_op_f32(round(725f)), -255f) + vec3<f32>(-691f, global3[_wgslsmith_index_u32(reverseBits(u_input.a), 29u)], _wgslsmith_f_op_f32(abs(var_2)))))));
}

