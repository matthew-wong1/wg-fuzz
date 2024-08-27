struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(2696u, 29216u, 1u, 1u), vec3<i32>(-1i, i32(-2147483648), -22507i));

var<private> global1: array<vec4<i32>, 6>;

var<private> global2: array<bool, 21>;

var<private> global3: array<u32, 18> = array<u32, 18>(1u, 1u, 4294967295u, 1u, 27889u, 52253u, 0u, 17036u, 4294967295u, 9192u, 4294967295u, 57406u, 1u, 23550u, 35184u, 93558u, 0u, 79470u);

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> u32 {
    global0 = Struct_1(abs(vec4<u32>(4294967295u & ~global3[_wgslsmith_index_u32(0u, 18u)], firstTrailingBit(25857u) << ((u_input.d ^ 1u) % 32u), ~50405u, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~1u, 18u)], 18u)])), reverseBits(-select(u_input.b.xxw, -u_input.b.xxw, true)));
    return global0.a.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, global0.a.x, 86u, global3[_wgslsmith_index_u32(1u, 18u)]), firstTrailingBit(vec4<u32>(1u, 18711u, arg_2, 4294967295u))), select(firstTrailingBit(_wgslsmith_add_vec4_u32(arg_1.a, vec4<u32>(arg_0.x, 1u, arg_1.a.x, arg_1.a.x))), vec4<u32>(firstLeadingBit(41495u), min(39987u, 0u), ~u_input.a, func_2()), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, global3[_wgslsmith_index_u32(global0.a.x, 18u)]), global0.a.yz) != abs(53750u))), vec3<i32>(-1i, u_input.c, u_input.e));
    global4 = u_input.b.x;
    global3 = array<u32, 18>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(134f - 657f), _wgslsmith_f_op_f32(1625f + -710f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(321f)))))));
    global4 = _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_div_i32(u_input.b.x, min(20535i << (global3[_wgslsmith_index_u32(arg_1.a.x, 18u)] % 32u), firstTrailingBit(u_input.e))));
    return arg_0.x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global2 = array<bool, 21>();
    let var_0 = vec2<bool>(any(arg_0), true);
    var var_1 = firstTrailingBit(_wgslsmith_mod_u32(~firstTrailingBit(u_input.d), func_2() << (_wgslsmith_clamp_u32(u_input.a, u_input.d, 58214u) % 32u))) > global3[_wgslsmith_index_u32(17752u, 18u)];
    global3 = array<u32, 18>();
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f), -1168f), -1000f, true));
    return Struct_1(vec4<u32>(~(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global3[_wgslsmith_index_u32(u_input.a, 18u)]), 18u)]), u_input.d, 0u, _wgslsmith_add_u32(~func_3(vec3<u32>(28795u, global3[_wgslsmith_index_u32(4294967295u, 18u)], global3[_wgslsmith_index_u32(24426u, 18u)]), Struct_1(global0.a, u_input.b.wzx), u_input.a), global0.a.x)), u_input.b.zwy >> (vec3<u32>(u_input.d, ~u_input.a, 13544u) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    global2 = array<bool, 21>();
    let var_0 = vec3<bool>(!any(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 21u)], false, global2[_wgslsmith_index_u32(u_input.a, 21u)], false), select(vec4<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.x, 18u)], 21u)], true, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(17475u, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x, 21u)], true, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(true, true, false, true)), select(vec4<bool>(global2[_wgslsmith_index_u32(67255u, 21u)], false, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_2.a.x, 21u)], true, global2[_wgslsmith_index_u32(u_input.d, 21u)], true), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3486u, 18u)], 21u)]))), true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_2(), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 23982u, global0.a.x), arg_0.a.www), _wgslsmith_add_u32(0u, 0u))) | ~(~1u), 21u)]);
    var var_1 = func_1(select(vec4<bool>(!var_0.x || true, !global2[_wgslsmith_index_u32(u_input.a | global0.a.x, 21u)], all(select(vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(u_input.a, 21u)], var_0.x), vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, global2[_wgslsmith_index_u32(9057u, 21u)], global2[_wgslsmith_index_u32(arg_2.a.x, 21u)], false))), any(vec2<bool>(false, var_0.x)) == any(var_0)), vec4<bool>(false, (u_input.b.x <= u_input.e) == global2[_wgslsmith_index_u32(arg_2.a.x, 21u)], true, global2[_wgslsmith_index_u32(u_input.a, 21u)] | global2[_wgslsmith_index_u32(54694u, 21u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(global0.a.x, 21u)], arg_2.b.x > -2147483647i, true)));
    global2 = array<bool, 21>();
    var_1 = func_1(vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(global0.a.x, 21u)], false))), global2[_wgslsmith_index_u32(arg_0.a.x, 21u)], var_0.x, any(select(vec4<bool>(var_0.x, false, global2[_wgslsmith_index_u32(0u, 21u)], var_0.x), vec4<bool>(var_0.x, global2[_wgslsmith_index_u32(global0.a.x, 21u)], var_0.x, var_0.x), vec4<bool>(true, true, true, true)))));
    return 26863u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(1u), func_4(Struct_1(global0.a, vec3<i32>(u_input.c, u_input.b.x, -2147483647i)), 1i, func_1(vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(14566u, 21u)], false, true)))), max(~func_2(), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global0.a.x, 0u), 31514u, reverseBits(0u))), _wgslsmith_dot_vec3_u32(select(global0.a.zyz, global0.a.wzz, true), ~vec3<u32>(global3[_wgslsmith_index_u32(29302u, 18u)], global0.a.x, u_input.d)), u_input.d), vec3<i32>(56461i, min(-1i, _wgslsmith_mod_i32(1i, 2147483647i) << (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30052u, 18u)], 18u)], u_input.a) % 32u)), abs(u_input.b.x)));
    var var_1 = func_1(vec4<bool>(!((global3[_wgslsmith_index_u32(26009u, 18u)] <= 4294967295u) == true), all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d >> (global3[_wgslsmith_index_u32(40663u, 18u)] % 32u), 21u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(27027u, global3[_wgslsmith_index_u32(1u, 18u)], 13224u), 21u)])), global2[_wgslsmith_index_u32(func_1(!select(vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], false, global2[_wgslsmith_index_u32(global0.a.x, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 18u)], 21u)], global2[_wgslsmith_index_u32(2244u, 21u)]), false)).a.x, 21u)], true));
    let var_2 = Struct_1(var_0.a, reverseBits(~u_input.b.zxy));
    var var_3 = 411f;
    global0 = Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(func_4(func_1(vec4<bool>(global2[_wgslsmith_index_u32(global0.a.x, 21u)], false, true, global2[_wgslsmith_index_u32(var_0.a.x, 21u)])), global0.b.x, Struct_1(vec4<u32>(var_2.a.x, global3[_wgslsmith_index_u32(var_1.a.x, 18u)], u_input.d, global3[_wgslsmith_index_u32(1u, 18u)]), var_1.b)) | 80761u, 18u)], 35318u, max(~83111u, 40899u), func_3(var_1.a.zyw, func_1(select(vec4<bool>(global2[_wgslsmith_index_u32(21179u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(global0.a.x, 21u)], false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 21u)], true, true, global2[_wgslsmith_index_u32(var_0.a.x, 21u)]))), u_input.d)), countOneBits(firstTrailingBit(func_1(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(global0.a.x, 21u)], true, false), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a.x, 21u)], true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.a.x, 18u)], 21u)]))).b)));
    let var_4 = var_0;
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-102f + -1802f), _wgslsmith_f_op_f32(-962f - -1180f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f * _wgslsmith_f_op_f32(280f + -538f))))), var_0.a.x | ~((1u ^ u_input.d) ^ func_3(vec3<u32>(var_1.a.x, var_5.a.x, 23802u), Struct_1(var_4.a, var_1.b), 4294967295u)), 16890i);
}

