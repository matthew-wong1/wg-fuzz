struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2536f;

var<private> global1: array<f32, 28>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true));

var<private> global3: array<u32, 18> = array<u32, 18>(24968u, 4294967295u, 31521u, 4294967295u, 53155u, 4294967295u, 31957u, 2530u, 28634u, 28355u, 8191u, 2430u, 16717u, 1u, 0u, 40075u, 61694u, 74861u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.zz);
    var var_1 = vec2<bool>(!any(vec3<bool>(true, arg_1.x, true)) == (arg_1.x == arg_1.x), false);
    var var_2 = 1i;
    var_2 = -_wgslsmith_clamp_i32(u_input.a.x, arg_0.c.a, arg_0.b.a) << (~88918u % 32u);
    var var_3 = Struct_3(-40067i << (_wgslsmith_mod_u32(select(countOneBits(16075u), 44374u, all(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_2.x, 18u)], 12u)])), abs(select(arg_3, 4294967295u, true))) % 32u), vec4<u32>(arg_2.x, 46150u, firstLeadingBit(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32992u, 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(arg_3, 18u)])), firstTrailingBit(arg_2.x)), _wgslsmith_div_u32(_wgslsmith_sub_u32(~reverseBits(56363u), max(arg_2.x, ~4294967295u)), ~(~_wgslsmith_mult_u32(1u, 108440u))), vec2<bool>(!all(vec2<bool>(arg_1.x, var_1.x)), arg_1.x));
    return 40738u;
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(62317u, 28u)])) * _wgslsmith_f_op_f32(arg_0.c.b - global1[_wgslsmith_index_u32(1u, 28u)])))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) * _wgslsmith_div_f32(arg_0.c.b, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], 28u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1211f + global1[_wgslsmith_index_u32(4294967295u, 28u)])), -328f)));
    let var_1 = ~select(vec2<u32>(func_3(arg_0, vec2<bool>(true, false), select(vec4<u32>(73662u, 4294967295u, 1u, 23648u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25985u, 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57409u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)]), global2[_wgslsmith_index_u32(36700u, 12u)]), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(39297u, 18u)], 18u)]), max(1u, global3[_wgslsmith_index_u32(0u, 18u)]) | (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17611u, 18u)], 18u)] >> (global3[_wgslsmith_index_u32(0u, 18u)] % 32u))), vec2<u32>(_wgslsmith_mod_u32(~global3[_wgslsmith_index_u32(0u, 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(73279u, 18u)], 18u)], 18u)], 4294967295u, 1u, 3094u), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62432u, 18u)], 18u)], 18u)], global3[_wgslsmith_index_u32(46428u, 18u)]))), select(32952u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 0u), 91142i < u_input.a.x)), -1i < abs(~u_input.a.x));
    var var_2 = Struct_4(-u_input.a >> (~abs(vec3<u32>(global3[_wgslsmith_index_u32(25900u, 18u)], var_1.x, 24055u)) % vec3<u32>(32u)), arg_0, Struct_3(-(~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), ~(~abs(vec4<u32>(59266u, 1u, global3[_wgslsmith_index_u32(35955u, 18u)], 1u))), var_1.x & max(~global3[_wgslsmith_index_u32(19872u, 18u)], 4294967295u), vec2<bool>(true, true)), _wgslsmith_add_i32(arg_0.c.a, ~u_input.a.x), ~var_1.x);
    global1 = array<f32, 28>();
    return all(!select(select(select(vec3<bool>(var_2.c.d.x, false, var_2.c.d.x), vec3<bool>(var_2.c.d.x, true, var_2.c.d.x), vec3<bool>(var_2.c.d.x, var_2.c.d.x, var_2.c.d.x)), select(vec3<bool>(var_2.c.d.x, var_2.c.d.x, var_2.c.d.x), vec3<bool>(var_2.c.d.x, false, var_2.c.d.x), vec3<bool>(false, true, var_2.c.d.x)), select(vec3<bool>(false, var_2.c.d.x, var_2.c.d.x), vec3<bool>(true, var_2.c.d.x, true), vec3<bool>(var_2.c.d.x, false, true))), vec3<bool>(true, true, var_2.c.d.x), any(!vec3<bool>(var_2.c.d.x, var_2.c.d.x, var_2.c.d.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    var var_0 = !(!select(!select(vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<bool>(arg_1.d.x, arg_1.d.x, false), vec3<bool>(arg_1.d.x, false, true)), select(select(vec3<bool>(arg_1.d.x, true, arg_1.d.x), vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<bool>(arg_1.d.x, true, arg_1.d.x)), !vec3<bool>(arg_1.d.x, true, true), vec3<bool>(false, arg_1.d.x, arg_1.d.x)), (arg_0 >> (global3[_wgslsmith_index_u32(149404u, 18u)] % 32u)) <= 1u));
    global3 = array<u32, 18>();
    var var_1 = _wgslsmith_div_f32(534f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.c, 28u)] + global1[_wgslsmith_index_u32(1u << (arg_1.b.x % 32u), 28u)])))));
    var_0 = vec3<bool>(!(!(!(true & var_0.x))), var_0.x & var_0.x, func_2(arg_2));
    var var_2 = Struct_1(-7867i, global1[_wgslsmith_index_u32(29924u, 28u)]);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 0u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_1.c, global3[_wgslsmith_index_u32(arg_0, 18u)], arg_1.c) << (vec3<u32>(global3[_wgslsmith_index_u32(arg_1.c, 18u)], 12426u, global3[_wgslsmith_index_u32(0u, 18u)]) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(arg_1.b.xzx, arg_1.b.zzx)), arg_1.b.zzz)), arg_1.b.wyz ^ ((firstTrailingBit(vec3<u32>(0u, arg_1.c, 0u)) | (arg_1.b.yyw & arg_1.b.zwx)) >> (~vec3<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(arg_1.c, 18u)]) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(func_1(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], Struct_3(-48211i, vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], global3[_wgslsmith_index_u32(0u, 18u)], global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(32817u, 18u)]), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], vec2<bool>(true, true)), Struct_2(vec3<f32>(328f, 322f, global1[_wgslsmith_index_u32(4294967295u, 28u)]), Struct_1(u_input.a.x, 347f), Struct_1(-1i, global1[_wgslsmith_index_u32(4294967295u, 28u)]))), _wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], 14000u), min(40267u, 4294967295u)), vec3<u32>(1u, _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(1320u, 18u)], 1u) & ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 28726u)), 28u)] - _wgslsmith_div_f32(1752f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f + global1[_wgslsmith_index_u32(28670u, 28u)]) + _wgslsmith_f_op_f32(step(-295f, 1000f))))));
    let var_1 = select(select(90158u, 4294967295u, all(vec3<bool>(true, true, true))) & global3[_wgslsmith_index_u32(countOneBits(global3[_wgslsmith_index_u32(27612u | global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)]), 18u)], _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~4294967295u ^ global3[_wgslsmith_index_u32(~select(4294967295u, 0u, false), 18u)], 18u)], 18u)], ~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27820u, 18u)], 18u)] << (0u % 32u)) & global3[_wgslsmith_index_u32(~1u, 18u)]), true);
    var var_2 = -48406i;
    global3 = array<u32, 18>();
    global3 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(6691u, 0u, 50360u, global3[_wgslsmith_index_u32(32278u, 18u)]), vec4<u32>(0u, 35665u, 51056u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(84498u, 18u)], 18u)], 18u)])))), ~30875u, ~14494u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2175f, 1000f, global1[_wgslsmith_index_u32(var_1, 28u)], var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1, 18u)], 18u)], 18u)], 28u)], global1[_wgslsmith_index_u32(113377u, 28u)], 666f, -1000f))))));
}

