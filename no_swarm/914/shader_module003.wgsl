struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(2179u, 4294967295u, 0u, 1u, 0u, 0u);

var<private> global1: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<i32>(-12149i, -42483i, -9412i, -6238i), 7810u, 65650u, false, vec4<i32>(-15772i, 0i, -30906i, -1i)), -587f, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec4<i32>(48174i, 0i, -1i, 2147483647i), 1u, 79952u, true, vec4<i32>(-1i, -1i, 31248i, -23796i)), 1000f, vec3<bool>(false, true, false)));

var<private> global2: array<vec3<i32>, 19>;

var<private> global3: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_4(911u, Struct_1(vec4<i32>(u_input.c.x, -(-62361i << (global0[_wgslsmith_index_u32(4294967295u, 6u)] % 32u)), -1i, 1i), global3.b, (1u & global3.b) >> (1u % 32u), global3.c.d, u_input.c));
    var var_1 = -u_input.b;
    let var_2 = !global3.a.c.yx;
    var_0 = Struct_4(0u, global3.c);
    var var_3 = vec3<i32>(_wgslsmith_clamp_i32(min(u_input.a.x, ~(-62272i)), abs(var_1.x) >> (~global3.a.a.c % 32u), var_0.b.e.x), var_0.b.a.x, _wgslsmith_div_i32(u_input.b.x, u_input.a.x));
    return vec4<bool>(var_0.b.d, !global3.a.a.d, !(!global3.e), !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -978f)) != global3.d.x));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = 4294967295u;
    global3 = Struct_3(global3.a, arg_0.b, arg_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(ceil(-1062f)), global3.d.x) + arg_0.d), arg_0.c.d);
    var_0 = 1u;
    global3 = arg_0;
    let var_1 = arg_0;
    return vec4<bool>(var_1.e, false, false, global3.a.c.x);
}

fn func_1() -> f32 {
    let var_0 = select(func_2(_wgslsmith_f_op_vec2_f32(-global3.d.yz)), !(!func_3(Struct_3(global3.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], Struct_1(u_input.c, u_input.d.x, 4294967295u, global3.c.d, u_input.c), global3.d, true))), false);
    var var_1 = select(any(select(func_2(global3.d.xx).yzx, var_0.wzz, var_0.zyx)), !(!any(vec4<bool>(false, true, true, false))), var_0.x) & false;
    let var_2 = Struct_4(~(~min(global3.b, global0[_wgslsmith_index_u32(87490u, 6u)])) << (56169u % 32u), Struct_1(abs(~u_input.c | global3.a.a.e), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global3.c.b, 0u), 6u)], global0[_wgslsmith_index_u32(~global3.c.b, 6u)]), global3.c.c, true, global3.c.e));
    var var_3 = var_2;
    var_3 = Struct_4(var_2.b.c, var_2.b);
    return global3.a.b;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = !all(!select(vec4<bool>(false, true, false, false), func_3(Struct_3(global1[_wgslsmith_index_u32(4133u, 2u)], u_input.d.x, arg_0, vec3<f32>(global3.a.b, arg_1, -167f), global3.a.c.x)), global3.e));
    var var_1 = arg_0;
    var var_2 = select(vec4<bool>(var_1.d, global3.c.d, true, true), func_3(Struct_3(Struct_2(Struct_1(vec4<i32>(global3.c.a.x, var_1.e.x, u_input.a.x, arg_0.e.x), 67777u, 23265u, true, arg_0.a), global3.a.b, vec3<bool>(arg_0.d, false, global3.a.c.x)), ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25798u, 6u)], 6u)]), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1411f, -465f))), true)), false);
    var var_3 = arg_1;
    global2 = array<vec3<i32>, 19>();
    return Struct_4(firstLeadingBit(~(~19800u)), global3.c);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(abs(-firstTrailingBit(arg_0)), func_4(func_4(Struct_1(arg_2.b.a, global0[_wgslsmith_index_u32(arg_2.a, 6u)], 35904u, true, u_input.c), 556f).b, 237f).b.a.x, -63454i, arg_0), ~firstTrailingBit(0u), 69346u, true, global3.a.a.e);
    var var_1 = vec4<bool>(!(func_4(global3.a.a, -111f).b.e.x >= arg_2.b.a.x) & false, true, !func_3(Struct_3(global1[_wgslsmith_index_u32(var_0.b, 2u)], var_0.b, func_4(Struct_1(arg_2.b.a, 1u, var_0.c, arg_2.b.d, u_input.c), arg_3.x).b, _wgslsmith_div_vec3_f32(vec3<f32>(global3.a.b, arg_3.x, arg_3.x), vec3<f32>(arg_3.x, 651f, arg_1)), false)).x, true);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c, ~var_0.c) ^ u_input.d.x, 6u)];
    var_1 = vec4<bool>(true, func_4(var_0, _wgslsmith_f_op_f32(-1661f * _wgslsmith_f_op_f32(exp2(arg_1)))).b.d, all(select(global3.a.c, !var_1.wxx, func_3(Struct_3(Struct_2(global3.a.a, 1534f, var_1.yyx), arg_2.b.b, global3.a.a, global3.d, false)).zxz)) || arg_2.b.d, any(vec4<bool>(any(vec2<bool>(false, true)) || any(global3.a.c), any(!vec4<bool>(arg_2.b.d, var_0.d, var_1.x, global3.c.d)), select(func_2(arg_3).x, false, arg_2.b.d), true)));
    global2 = array<vec3<i32>, 19>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 6>();
    let var_0 = Struct_4(26171u, func_5(global3.a.a.a.x, _wgslsmith_f_op_f32(global3.a.b + 431f), func_4(Struct_1(~vec4<i32>(-46434i, 10863i, -40806i, global3.c.a.x), 4294967295u, countOneBits(2317u), true, vec4<i32>(u_input.b.x, 2147483647i, u_input.c.x, global3.a.a.a.x)), _wgslsmith_f_op_f32(func_1())), vec2<f32>(_wgslsmith_f_op_f32(-1f), global3.d.x)));
    let var_1 = global3.d.x;
    global0 = array<u32, 6>();
    global3 = Struct_3(global3.a, u_input.e.x, Struct_1(_wgslsmith_mod_vec4_i32(max(_wgslsmith_div_vec4_i32(var_0.b.e, vec4<i32>(4628i, 1i, 50151i, 28711i)), _wgslsmith_clamp_vec4_i32(global3.a.a.a, vec4<i32>(-28257i, -1i, -19439i, var_0.b.a.x), global3.a.a.e)), vec4<i32>(1i, abs(global3.c.e.x), u_input.b.x, func_5(u_input.c.x, global3.a.b, Struct_4(global0[_wgslsmith_index_u32(65293u, 6u)], global3.a.a), vec2<f32>(global3.d.x, global3.d.x)).a.x)), u_input.e.x, abs(var_0.b.b), !var_0.b.d, -select(u_input.c, -var_0.b.e, func_3(Struct_3(global3.a, var_0.a, Struct_1(u_input.c, 93152u, u_input.e.x, false, vec4<i32>(u_input.a.x, var_0.b.a.x, 4424i, global3.a.a.e.x)), vec3<f32>(1031f, global3.a.b, global3.a.b), var_0.b.d)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global3.d * global3.d)))))), !((i32(-1i) * -u_input.c.x) > u_input.a.x));
    var var_2 = max(~u_input.e.yx, (~(~vec2<u32>(4294967295u, u_input.e.x)) ^ select(~u_input.d, firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], var_0.a)), true)) >> (u_input.e.zz % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(_wgslsmith_dot_vec2_i32(u_input.b.yz ^ u_input.c.yw, _wgslsmith_add_vec2_i32(~vec2<i32>(global3.c.a.x, -1i), vec2<i32>(u_input.c.x, var_0.b.a.x))), _wgslsmith_f_op_f32(-global3.a.b), func_4(global3.c, global3.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.b, global3.a.b))).a.x, _wgslsmith_sub_i32(-u_input.a.x, -2147483647i | var_0.b.a.x), vec2<u32>(~1u, _wgslsmith_div_u32(112450u, ~48506u)), vec4<i32>(0i, _wgslsmith_div_i32(-var_0.b.a.x, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-5564i, u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.c.e.x, global3.c.a.x, 15544i), global2[_wgslsmith_index_u32(var_0.a, 19u)])), ~(-vec3<i32>(2147483647i, 55012i, 1i))), func_4(func_4(Struct_1(vec4<i32>(var_0.b.e.x, -1i, 1i, 18159i), 1u, 42063u, global3.e, vec4<i32>(var_0.b.e.x, global3.a.a.e.x, global3.c.a.x, global3.a.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -240f)).b, global3.d.x).b.a.x));
}

