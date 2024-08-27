struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(true, false), vec3<u32>(23158u, 10066u, 0u), vec3<f32>(1130f, -909f, -115f), vec3<f32>(2028f, -425f, -702f)), Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 18691u), vec3<f32>(-711f, -327f, 210f), vec3<f32>(813f, -1149f, -2286f)), Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 24982u, 0u), vec3<f32>(-780f, 735f, -1809f), vec3<f32>(482f, -1045f, 839f)), Struct_1(vec2<bool>(true, true), vec3<u32>(57642u, 68322u, 0u), vec3<f32>(639f, 1309f, 1651f), vec3<f32>(-1386f, 933f, 369f)), Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 4294967295u, 79751u), vec3<f32>(663f, -573f, 1016f), vec3<f32>(-257f, 102f, -434f)));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u ^ global1.b.x, 1u, abs(_wgslsmith_sub_u32(~global1.b.x, ~31164u)), max(~(~21198u), 46467u)), firstTrailingBit(vec4<u32>(~global1.b.x & _wgslsmith_div_u32(0u, 1u), ~global1.b.x, reverseBits(42189u), _wgslsmith_dot_vec2_u32(vec2<u32>(36824u, u_input.b.x) & vec2<u32>(u_input.b.x, 108430u), ~vec2<u32>(1u, 59452u)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(select(vec2<u32>(61809u, 1u), global1.b.xx, vec2<bool>(true, true))), firstLeadingBit(~global1.b.yy)), 5u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.xwx, vec3<u32>(select(global1.b.x, var_1.b.x, global1.a.x) << (~3806u % 32u), 31163u, ~_wgslsmith_clamp_u32(31327u, var_0.x, global1.b.x))), var_0.yzw), 5u)];
    return !(!vec3<bool>(!all(vec4<bool>(var_2.a.x, true, global1.a.x, false)), all(select(vec3<bool>(var_2.a.x, false, true), vec3<bool>(true, global1.a.x, var_2.a.x), false)), !var_2.a.x));
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_div_i32(0i, -2147483647i), select(vec3<bool>(true, _wgslsmith_sub_u32(u_input.b.x, arg_2.x) <= 0u, true), select(vec3<bool>(false, global1.a.x, all(global1.a)), !func_3(), select(vec3<bool>(true, global1.a.x, true), vec3<bool>(true, true, true), func_3())), select(vec3<bool>(global1.a.x, true, global1.b.x <= global1.b.x), vec3<bool>(true, global1.c.x <= -1105f, false || global1.a.x), !vec3<bool>(false, global1.a.x, global1.a.x))), global0[_wgslsmith_index_u32(19639u, 5u)], !func_3(), global0[_wgslsmith_index_u32(u_input.b.x, 5u)]);
    var var_1 = func_3().yy;
    let var_2 = global1.a.x;
    global0 = array<Struct_1, 5>();
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-815f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.c.d.x))))));
    return Struct_1(global1.a, vec3<u32>(~arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.b.x, 0u, ~arg_2.x, ~u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 1u, arg_2.x, u_input.b.x), select(arg_2, vec4<u32>(61997u, u_input.b.x, 8085u, 106519u), var_0.b.x))), 1u), vec3<f32>(-241f, global1.d.x, global1.c.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(var_0.e.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.c.x + global1.c.x))), 288f));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = arg_0.e;
    return i32(-1i) * -_wgslsmith_sub_i32(-1i, arg_0.a ^ arg_0.a);
}

fn func_1() -> Struct_1 {
    var var_0 = vec3<i32>(u_input.a, func_4(Struct_2(firstLeadingBit(~u_input.a), vec3<bool>(false, !global1.a.x, global1.b.x >= 10347u), func_2(i32(-1i) * -2147483647i, ~u_input.c.xxx, vec4<u32>(u_input.b.x, 1u, 3221u, global1.b.x)), vec3<bool>(any(vec3<bool>(false, true, global1.a.x)), !global1.a.x, all(vec4<bool>(global1.a.x, global1.a.x, true, true))), Struct_1(vec2<bool>(true, global1.a.x), countOneBits(vec3<u32>(global1.b.x, global1.b.x, 0u)), global1.c, global1.c)), all(vec3<bool>(true, true, any(vec4<bool>(global1.a.x, true, true, global1.a.x))))), 24737i);
    var_0 = u_input.c.xzw;
    var_0 = u_input.c.xww;
    var_0 = -vec3<i32>(select(_wgslsmith_clamp_i32(var_0.x, ~var_0.x, ~46179i), -8343i, any(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x))), min((i32(-1i) * -1i) | (-2147483647i << (u_input.b.x % 32u)), -reverseBits(1i)), var_0.x);
    global0 = array<Struct_1, 5>();
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~7308u, 1u), 5u)];
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_2(~_wgslsmith_div_i32(u_input.a, ~(i32(-1i) * -15230i)), u_input.c.xww, abs(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.x, 0u, u_input.b.x, u_input.b.x) | vec4<u32>(1u, 4294967295u, 0u, 1u), select(vec4<u32>(0u, u_input.b.x, 17687u, arg_1.b.x), vec4<u32>(arg_1.b.x, 29979u, arg_1.b.x, arg_1.b.x), global1.a.x)))));
    var_0 = Struct_1(select(vec2<bool>(false, arg_1.a.x), var_0.a, vec2<bool>(u_input.c.x != _wgslsmith_sub_i32(-2147483647i, u_input.a), true)), var_0.b, arg_1.c, _wgslsmith_f_op_vec3_f32(-func_1().d));
    var_0 = func_1();
    let var_1 = -u_input.c.x;
    return Struct_2(u_input.a, func_3(), Struct_1(select(vec2<bool>(func_1().a.x, 4294967295u <= global1.b.x), global1.a, global1.a), ~var_0.b, _wgslsmith_f_op_vec3_f32(var_0.d + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -243f), 473f, _wgslsmith_f_op_f32(arg_0 - arg_1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(232f, arg_0, var_0.d.x) * vec3<f32>(-993f, arg_0, -212f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(872f, 997f, global1.c.x)), arg_1.a.x)))), select(!(!vec3<bool>(global1.a.x, global1.a.x, arg_1.a.x)), select(vec3<bool>(func_1().a.x, var_0.a.x, true), !vec3<bool>(false, arg_1.a.x, global1.a.x), true), !(var_0.a.x || arg_1.a.x)), Struct_1(!(!var_0.a), _wgslsmith_sub_vec3_u32(global1.b, global1.b), _wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> StorageBuffer {
    global0 = array<Struct_1, 5>();
    global1 = func_1();
    let var_0 = Struct_1(global1.a, vec3<u32>(global1.b.x, ~35770u, 0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.e.c * global1.d), vec3<f32>(arg_0.e.c.x, arg_0.c.d.x, -1100f), vec3<bool>(false, arg_0.b.x, false))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, 1502f, -810f))))), _wgslsmith_f_op_vec3_f32(-global1.c));
    var var_1 = Struct_2(-abs(~_wgslsmith_sub_i32(59471i, 2147483647i)), vec3<bool>(true & (-11695i > u_input.c.x), global1.a.x, true), func_1(), arg_0.d, var_0);
    var var_2 = vec2<i32>(var_1.a, 22850i);
    return StorageBuffer(16369u, u_input.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(1442f, func_1()), u_input.a);
}

