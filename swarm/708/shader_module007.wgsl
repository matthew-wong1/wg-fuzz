struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    global0 = array<u32, 15>();
    var var_0 = Struct_3(Struct_1(arg_1.d), all(vec4<bool>(arg_0.x, arg_0.x, !all(vec4<bool>(arg_0.x, arg_0.x, true, true)), true)), arg_1.b, _wgslsmith_sub_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(arg_1.b, 4294967295u, arg_1.b, arg_1.b), vec4<u32>(9235u, 35281u, 53746u, arg_1.b)), vec4<u32>(global0[_wgslsmith_index_u32(22204u, 15u)], global0[_wgslsmith_index_u32(40835u, 15u)], 1u, 38727u), reverseBits(vec4<u32>(4294967295u, 25967u, global0[_wgslsmith_index_u32(7922u, 15u)], 1u)))), ~(~firstLeadingBit(vec4<u32>(64159u, global0[_wgslsmith_index_u32(56909u, 15u)], 39817u, 0u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, -296f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-817f, -267f)))))));
    let var_1 = Struct_3(Struct_1(abs(arg_1.d & vec3<i32>(arg_1.d.x, var_0.a.a.x, var_0.a.a.x)) & -var_0.a.a), true, countOneBits(abs((var_0.d.x >> (1u % 32u)) << (global0[_wgslsmith_index_u32(abs(arg_1.b), 15u)] % 32u))), var_0.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e)))), vec2<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, var_0.e.x) * _wgslsmith_f_op_f32(-var_0.e.x))))));
    global0 = array<u32, 15>();
    var var_2 = countOneBits(countOneBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(29351u, var_0.c, global0[_wgslsmith_index_u32(34271u, 15u)], 12721u)), ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(var_0.c, 15u)], 937u, var_0.d.x))));
    return global0[_wgslsmith_index_u32(var_2.x, 15u)];
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 15>();
    let var_0 = max(~(~global0[_wgslsmith_index_u32(~(~1u), 15u)]), select(~0u & ~global0[_wgslsmith_index_u32(0u, 15u)], ~countOneBits(global0[_wgslsmith_index_u32(0u, 15u)]), select(true, false, true) & true) | global0[_wgslsmith_index_u32(~func_3(vec3<bool>(true, true, true), Struct_2(arg_0, 1u, arg_0, arg_0.a)), 15u)]);
    var var_1 = arg_0;
    global0 = array<u32, 15>();
    let var_2 = Struct_1(var_1.a);
    return Struct_1(~var_1.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_2(func_2(func_2(Struct_1(-vec3<i32>(0i, 0i, u_input.a)))), ~1u, Struct_1(arg_1.c.a), vec3<i32>((56865i ^ _wgslsmith_mod_i32(arg_1.a.a.x, 1i)) >> (52715u % 32u), u_input.a, _wgslsmith_add_i32(25659i, -2147483647i)));
    global0 = array<u32, 15>();
    global0 = array<u32, 15>();
    var_0 = arg_1;
    let var_1 = Struct_3(Struct_1(var_0.a.a), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_add_u32(~var_0.b, 58028u) >> (arg_1.b % 32u), vec4<u32>(func_3(vec3<bool>(false, true, true), Struct_2(func_2(Struct_1(vec3<i32>(u_input.a, u_input.a, -1i))), 22279u, var_0.a, arg_1.d)), _wgslsmith_add_u32(93089u, func_3(vec3<bool>(true, false, true), Struct_2(arg_1.a, var_0.b, arg_1.a, arg_1.c.a)) & (var_0.b & 0u)), abs(1u), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(~arg_0.wx, ~vec2<u32>(global0[_wgslsmith_index_u32(82341u, 15u)], 74019u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -433f), vec2<f32>(-175f, 1041f), false)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-273f, -239f), vec2<f32>(-1091f, 1272f))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -455f), vec2<f32>(722f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1288f, 1760f)))), vec2<f32>(-177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-471f)) * _wgslsmith_div_f32(105f, -358f))))));
    return countOneBits(min(~_wgslsmith_clamp_vec3_u32(arg_0.zyy ^ vec3<u32>(0u, 0u, var_1.c), min(arg_0.zxw, var_1.d.xxx), vec3<u32>(var_1.c, 64202u, arg_0.x)), arg_0.zwx & vec3<u32>(firstLeadingBit(1u), arg_1.b, ~global0[_wgslsmith_index_u32(39060u, 15u)])));
}

fn func_1() -> u32 {
    global0 = array<u32, 15>();
    var var_0 = func_4(~(~countOneBits(vec4<u32>(15879u, global0[_wgslsmith_index_u32(0u, 15u)], 39338u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20746u, 15u)], 15u)], 15u)], 15u)]))) | vec4<u32>(81419u, global0[_wgslsmith_index_u32(1u, 15u)], ~65419u, 62879u), Struct_2(Struct_1(vec3<i32>(u_input.a, _wgslsmith_mod_i32(72643i, -1i), 3959i)), ~(0u & global0[_wgslsmith_index_u32(90976u, 15u)]), func_2(Struct_1(~vec3<i32>(u_input.a, u_input.a, 26015i))), vec3<i32>(2147483647i, max(_wgslsmith_dot_vec2_i32(vec2<i32>(52269i, 1i), vec2<i32>(2147483647i, 2147483647i)), u_input.a ^ u_input.a), abs(6675i << (global0[_wgslsmith_index_u32(0u, 15u)] % 32u)))));
    let var_1 = true;
    var var_2 = -vec4<i32>(-u_input.a, (~u_input.a & (0i >> (var_0.x % 32u))) | firstLeadingBit(_wgslsmith_mult_i32(33699i, u_input.a)), -1i, 1i);
    var var_3 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_mod_u32(1u, 4294967295u)), select(~vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 15u)], 4294967295u), var_0.yx, select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(var_1, false)))), ~(~(var_0.zx | vec2<u32>(var_0.x, var_0.x))));
    return ~15660u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = abs(vec4<u32>(~func_1(), _wgslsmith_add_u32(21554u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(36707u, 15u)], 49466u), 15u)] >> ((39453u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23974u, 15u)], 15u)]) % 32u)), 4294967295u, max(~reverseBits(global0[_wgslsmith_index_u32(12457u, 15u)]), 0u)));
    global0 = array<u32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2892i, u_input.a, u_input.a, 2147483647i), vec4<i32>(0i, u_input.a, 0i, -47942i) | vec4<i32>(-17636i, -35582i, 0i, -27510i)), u_input.a << (min(0u, 60231u) % 32u)), -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1266f, -1647f, -521f, 1067f)) + vec4<f32>(781f, -1000f, -1000f, 2380f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1054f, 771f, 404f, 304f))), vec4<f32>(_wgslsmith_f_op_f32(-1689f - 1480f), 1521f, -806f, -1364f)))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(32730u, global0[_wgslsmith_index_u32(4294967295u, 15u)]), 100962u, ~(~global0[_wgslsmith_index_u32(var_0.x, 15u)]), ~49177u), min(var_0, _wgslsmith_mult_vec4_u32(var_0, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 15u)], 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 0u, 78555u)))));
}

