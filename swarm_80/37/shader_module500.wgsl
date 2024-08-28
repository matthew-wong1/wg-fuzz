struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-19896i), Struct_1(-43338i), Struct_1(-1i), Struct_1(1i), Struct_1(24189i), Struct_1(-1i), Struct_1(-10254i), Struct_1(-31304i), Struct_1(2147483647i), Struct_1(-15822i), Struct_1(-81290i), Struct_1(282i), Struct_1(2485i), Struct_1(i32(-2147483648)), Struct_1(-34874i), Struct_1(496i), Struct_1(46420i), Struct_1(28824i), Struct_1(-71461i), Struct_1(-21366i), Struct_1(0i), Struct_1(36014i), Struct_1(2147483647i), Struct_1(0i), Struct_1(23439i), Struct_1(-35408i), Struct_1(2147483647i));

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 19>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = u_input.a;
    global1 = array<Struct_1, 27>();
    let var_1 = Struct_4(max(8030u, ~(~(global3[_wgslsmith_index_u32(51363u, 19u)] | 1u))));
    global1 = array<Struct_1, 27>();
    global2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, 1179f, 1287f)), _wgslsmith_div_vec3_f32(vec3<f32>(1120f, global2.x, global2.x), vec3<f32>(539f, 713f, -568f))))))));
    return ~abs(61815u);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> u32 {
    return _wgslsmith_mult_u32(36334u, abs(_wgslsmith_mult_u32(~(arg_1 & global3[_wgslsmith_index_u32(u_input.b, 19u)]), ~0u)));
}

fn func_2() -> Struct_4 {
    global0 = vec3<bool>(all(vec2<bool>(all(!vec3<bool>(true, true, global0.x)), false)), !(57806u > u_input.b), true);
    let var_0 = global2.x;
    global3 = array<u32, 19>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(func_4(~(~(vec3<u32>(23169u, 16111u, u_input.b) >> (vec3<u32>(global3[_wgslsmith_index_u32(40007u, 19u)], 1u, 30048u) % vec3<u32>(32u)))), global3[_wgslsmith_index_u32(func_3(), 19u)], 210u), 27u)], false);
    let var_2 = Struct_2(Struct_1(~min(u_input.a, -41442i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(58503u, 27801u, global3[_wgslsmith_index_u32(u_input.b, 19u)]), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 19u)], 21855u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], 0u, 114640u))) % 32u)), var_1.b);
    return Struct_4(4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, max(137652u, u_input.b), _wgslsmith_add_u32(u_input.b, 0u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, global3[_wgslsmith_index_u32(4294967295u, 19u)], 0u), vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 19u)], u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 0u, 4294967295u)), abs(vec4<u32>(u_input.b, 0u, u_input.b, global3[_wgslsmith_index_u32(u_input.b, 19u)])), abs(vec4<u32>(global3[_wgslsmith_index_u32(0u, 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 19u)], 19u)], global3[_wgslsmith_index_u32(87407u, 19u)], 3175u)))) % 32u));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_2 {
    let var_0 = func_2();
    var var_1 = Struct_5(arg_2, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], arg_2.c, vec2<i32>(firstTrailingBit(arg_2.d.a), _wgslsmith_div_i32(-1i, arg_2.c.a.a)));
    var var_2 = Struct_5(arg_2, _wgslsmith_mult_u32(var_1.a.a, func_3()), var_1.c, vec2<i32>(~(-(1i >> (1u % 32u))), arg_2.c.a.a));
    var var_3 = Struct_5(var_1.a, ~firstLeadingBit(var_2.a.a), Struct_2(Struct_1(_wgslsmith_clamp_i32(var_1.a.d.a, u_input.e.x, var_2.c.a.a)), any(!vec4<bool>(var_1.a.e.x, var_1.c.b, false, var_1.a.e.x)) || !var_1.a.e.x), select(~var_2.d, abs(vec2<i32>(var_1.a.b, 6662i)), !var_1.a.e.yy) >> (vec2<u32>(var_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a, global3[_wgslsmith_index_u32(var_1.a.a, 19u)], 48468u), vec3<u32>(7898u, var_2.a.a, 893u)) ^ _wgslsmith_div_u32(1u, u_input.b)) % vec2<u32>(32u)));
    var var_4 = func_2();
    return var_2.c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = ~vec4<u32>(1u, 12216u, _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)], u_input.b, arg_0.a), vec3<u32>(global3[_wgslsmith_index_u32(26158u, 19u)], u_input.b, global3[_wgslsmith_index_u32(arg_0.a, 19u)])) & u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8699u, 4294967295u, global3[_wgslsmith_index_u32(u_input.b, 19u)]) | vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b, u_input.b, arg_0.a), select(vec4<u32>(u_input.b, arg_0.a, 0u, 1u), vec4<u32>(1u, 0u, 42941u, 4294967295u), vec4<bool>(true, true, arg_1.e.x, arg_2.x)))) | _wgslsmith_mod_vec4_u32(abs(vec4<u32>(4294967295u, arg_1.a, 72118u, 51178u)) >> (select(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], 6068u, 35196u, 20929u), ~vec4<u32>(4294967295u, 1u, u_input.b, 103827u), true) % vec4<u32>(32u)), max(vec4<u32>(~arg_1.a, _wgslsmith_sub_u32(u_input.b, global3[_wgslsmith_index_u32(1u, 19u)]), min(1u, 4294967295u), 21508u), ~firstTrailingBit(vec4<u32>(1u, arg_1.a, 15624u, arg_0.a))));
    var var_1 = false != ((_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b, 4023u), _wgslsmith_add_u32(4294967295u, arg_1.a)) >> (~11216u % 32u)) < ~abs(_wgslsmith_dot_vec3_u32(var_0.www, var_0.xxw)));
    global1 = array<Struct_1, 27>();
    var var_2 = u_input.c;
    var var_3 = countOneBits(~vec4<u32>(_wgslsmith_mod_u32(~u_input.b, 0u), 1u, arg_1.a ^ 1u, global3[_wgslsmith_index_u32(countOneBits(arg_0.a), 19u)]));
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(30220u, arg_1.a), 27u)];
}

fn func_6(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_1(false, ~u_input.b >= 194u, Struct_3(global3[_wgslsmith_index_u32(4349u, 19u)], ~_wgslsmith_add_i32(-39418i, arg_1) | 0i, arg_2, arg_2.a, select(select(!vec3<bool>(false, global0.x, false), select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, global0.x, func_1(arg_2.b, arg_2.b, Struct_3(4294967295u, arg_1, Struct_2(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 19u)], 19u)], 27u)], true), arg_2.a, vec3<bool>(false, false, global0.x))).b), !select(vec3<bool>(arg_2.b, global0.x, arg_2.b), vec3<bool>(arg_2.b, true, global0.x), vec3<bool>(false, true, false))))).a;
    global0 = vec3<bool>(true, any(select(global0.xy, select(global0.xx, !vec2<bool>(arg_2.b, false), vec2<bool>(false, arg_2.b)), select(false, true, true))), true);
    global1 = array<Struct_1, 27>();
    var var_1 = func_1(!global0.x, false, Struct_3(min(min(0u, global3[_wgslsmith_index_u32(1u, 19u)]), 1u), _wgslsmith_div_i32(func_5(Struct_4(0u), Struct_3(u_input.b, arg_2.a.a, arg_2, arg_2.a, vec3<bool>(arg_2.b, false, arg_2.b)), !vec4<bool>(arg_2.b, false, true, global0.x)).a, arg_1 | u_input.d), arg_2, var_0, vec3<bool>(arg_2.b, !select(true, global0.x, arg_2.b), true))).b;
    let var_2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_sub_i32(~(var_0.a >> (func_3() % 32u)), _wgslsmith_sub_i32(arg_2.a.a, u_input.c.x)));
    return Struct_1(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1197f, _wgslsmith_f_op_f32(-global2.x), -1581f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-316f, global2.x)) * _wgslsmith_f_op_f32(2016f + -572f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(global2.x, -202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(i32(-1i) * -10763i), Struct_2(func_5(Struct_4(40161u), Struct_3(1u | global3[_wgslsmith_index_u32(5820u, 19u)], u_input.e.x, func_1(true, global0.x, Struct_3(global3[_wgslsmith_index_u32(86428u, 19u)], u_input.d, Struct_2(global1[_wgslsmith_index_u32(36290u, 27u)], true), global1[_wgslsmith_index_u32(30541u, 27u)], vec3<bool>(global0.x, true, false))), func_1(true, false, Struct_3(46374u, 1i, Struct_2(Struct_1(u_input.e.x), global0.x), global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53829u, 19u)], 27u)], vec3<bool>(true, false, true))).a, !vec3<bool>(global0.x, true, global0.x)), select(select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, true), global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x == global0.x)), global0.x));
    let var_1 = !select(true, global0.x, global0.x);
    var var_2 = Struct_1(-select(u_input.e.x, -1i, !all(vec3<bool>(global0.x, false, true))));
    var var_3 = ~(~(~(~abs(vec4<u32>(u_input.b, 1u, global3[_wgslsmith_index_u32(31009u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)])))));
    var_0 = func_5(Struct_4(1u), Struct_3(~func_4(vec3<u32>(39482u, var_3.x, 18187u), var_3.x, _wgslsmith_mod_u32(24363u, var_3.x)), ~var_2.a, func_1(true, all(!vec4<bool>(true, var_1, global0.x, global0.x)), Struct_3(0u, ~19215i, Struct_2(global1[_wgslsmith_index_u32(u_input.b, 27u)], global0.x), Struct_1(u_input.c.x), select(vec3<bool>(true, true, global0.x), vec3<bool>(var_1, global0.x, true), vec3<bool>(true, global0.x, false)))), Struct_1(reverseBits(-u_input.c.x)), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true), all(vec4<bool>(false, true, var_1, false)))), select(!vec4<bool>(true, any(vec3<bool>(false, var_1, global0.x)), var_1, global0.x && var_1), vec4<bool>(select(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 19u)], false) < (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 19u)], 19u)] << (global3[_wgslsmith_index_u32(var_3.x, 19u)] % 32u)), false, all(!vec3<bool>(false, true, var_1)), true), any(!vec4<bool>(false, false, false, var_1))));
    let var_4 = Struct_4(_wgslsmith_dot_vec3_u32(firstLeadingBit(abs(var_3.yzx)), countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 84782u, 1u, 0u), vec4<u32>(0u, u_input.b, 4294967295u, 1u)), 0u, countOneBits(global3[_wgslsmith_index_u32(u_input.b, 19u)])))));
    var var_5 = vec4<bool>(global0.x, var_1, func_1(!global0.x, global0.x != var_1, Struct_3(var_3.x, min(abs(0i), -58169i), Struct_2(global1[_wgslsmith_index_u32(~var_4.a, 27u)], true), global1[_wgslsmith_index_u32(var_4.a, 27u)], select(select(vec3<bool>(global0.x, global0.x, var_1), vec3<bool>(var_1, true, var_1), vec3<bool>(true, true, var_1)), vec3<bool>(global0.x, true, false), true))).b, !(!func_1(!var_1, !global0.x, Struct_3(0u, -1i, Struct_2(Struct_1(u_input.c.x), false), Struct_1(var_0.a), vec3<bool>(var_1, true, false))).b));
    global2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(296f)) * global2.x)), -270f, -702f)));
    let var_6 = !(_wgslsmith_dot_vec4_i32(-vec4<i32>(5547i, u_input.e.x, 0i, u_input.c.x) >> (min(vec4<u32>(var_3.x, 4605u, 1u, var_4.a), vec4<u32>(3626u, 0u, 22898u, 19785u)) % vec4<u32>(32u)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.a, -2147483647i, -2147483647i), vec4<i32>(var_2.a, -12683i, 12301i, 13144i), vec4<i32>(u_input.d, var_2.a, -16538i, -1i))) <= u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, ~var_0.a, 57240i, -49040i) >> (~countOneBits(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 19u)], 4294967295u, var_4.a)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 645f, global2.x) - vec3<f32>(global2.x, -1000f, -1536f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(144f, -776f, global2.x) * vec3<f32>(global2.x, global2.x, -302f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -712f, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, -1083f, 514f), vec3<f32>(1000f, -1891f, global2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1769f, 1058f, -1123f))))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.b, 19u)], func_4(var_3.zwz ^ var_3.ywx, u_input.b, _wgslsmith_dot_vec2_u32(var_3.zx, var_3.xz))), _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.b, 1u), ~5854u)));
}

