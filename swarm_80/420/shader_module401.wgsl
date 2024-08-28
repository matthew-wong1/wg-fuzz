struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 25>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(842f, -149f), vec2<f32>(-1860f, 508f), vec2<f32>(1080f, 261f), vec2<f32>(-725f, 859f), vec2<f32>(1000f, 1439f), vec2<f32>(1861f, 1031f), vec2<f32>(-886f, 1841f), vec2<f32>(1796f, -564f), vec2<f32>(664f, 601f), vec2<f32>(-942f, 1023f), vec2<f32>(1530f, 1200f), vec2<f32>(-1000f, -939f), vec2<f32>(-337f, -191f), vec2<f32>(387f, -293f), vec2<f32>(353f, 1663f), vec2<f32>(785f, -265f), vec2<f32>(-1079f, -196f), vec2<f32>(-1643f, 823f), vec2<f32>(1553f, 523f), vec2<f32>(515f, 1358f), vec2<f32>(-1553f, -966f));

var<private> global3: f32 = -1302f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(select(0i, reverseBits(42796i), true) << (u_input.a.x % 32u), 0i) & -(vec2<i32>(-1i, 0i) >> (arg_3 % vec2<u32>(32u)));
    global1 = !vec4<bool>(!arg_0, false, !arg_0, false);
    var var_1 = arg_1;
    global1 = !(!select(!vec4<bool>(false, arg_0, true, true), vec4<bool>(true, !global1.x, arg_0, arg_3.x <= arg_3.x), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_div_u32(54149u | arg_3.x, ~0u)) ^ 1u);
    return arg_2;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    global3 = _wgslsmith_f_op_f32(1130f * _wgslsmith_f_op_f32(trunc(785f)));
    let var_0 = func_1(true, Struct_1(arg_1.a), func_1(true, Struct_1(~_wgslsmith_add_u32(u_input.c.x, arg_2.a)), func_1(global1.x, arg_1, Struct_1(firstLeadingBit(1135u)), max(max(vec2<u32>(4294967295u, arg_1.a), u_input.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(6934u, arg_2.a), vec2<u32>(1u, 11350u), u_input.c.zz))), u_input.c.xz), _wgslsmith_div_vec2_u32(abs(select(vec2<u32>(arg_2.a, 0u), u_input.a, true)) | u_input.c.xy, u_input.b));
    var var_1 = Struct_1(reverseBits(countOneBits(18897u) | ~u_input.c.x));
    let var_2 = Struct_1(24458u);
    let var_3 = ~vec3<u32>(6952u, 1310u, _wgslsmith_add_u32(1u, u_input.a.x));
    return vec4<i32>(1i, _wgslsmith_mod_i32(min(-(~12108i), _wgslsmith_dot_vec2_i32(vec2<i32>(-47427i, -8465i), vec2<i32>(1i, 0i) >> (vec2<u32>(89506u, u_input.c.x) % vec2<u32>(32u)))), 1i), _wgslsmith_dot_vec2_i32(~firstLeadingBit(firstLeadingBit(vec2<i32>(1i, 26474i))), vec2<i32>(0i, 13695i)), 35228i);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(~(~(~u_input.a.x)));
    var var_1 = arg_0;
    let var_2 = func_3(-1051f, arg_0, func_1(firstLeadingBit(_wgslsmith_div_u32(var_0.a, 1u)) == arg_0.a, arg_0, arg_0, firstLeadingBit(vec2<u32>(4294967295u ^ var_0.a, ~55123u))));
    var var_3 = ~(~vec2<i32>(countOneBits(-58666i), -(~1i)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1556f), _wgslsmith_div_f32(427f, -373f)))) - _wgslsmith_f_op_f32(floor(-892f)));
    return vec2<bool>(!global1.x, min(var_2.x, 2147483647i << (~var_0.a % 32u)) != var_3.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<bool>) -> vec2<bool> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - arg_1));
    global3 = arg_1;
    global1 = vec4<bool>(true, all(vec2<bool>(func_2(arg_0).x, global1.x)), false, select(arg_2, false, 1u < _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, 1u, 68724u, u_input.b.x), select(vec4<u32>(12473u, arg_0.a, u_input.b.x, 0u), vec4<u32>(4294967295u, 0u, 1u, u_input.a.x), global1.x))));
    global0 = array<vec3<u32>, 25>();
    global3 = 836f;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(global1.x, all(func_4(func_1(global1.x, Struct_1(0u), Struct_1(u_input.b.x), u_input.c.xy), _wgslsmith_f_op_f32(round(-463f)), true, func_2(Struct_1(u_input.b.x)))), false, all(vec4<bool>(global1.x, global1.x, global1.x, true)));
    let var_0 = _wgslsmith_mod_i32(-30523i, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f + -608f))), Struct_1(u_input.b.x), Struct_1(~_wgslsmith_mod_u32(u_input.c.x, 20190u))).x);
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-731f + -349f), _wgslsmith_f_op_f32(floor(-985f))) * _wgslsmith_f_op_f32(1157f + 1177f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f - 1214f))), _wgslsmith_f_op_f32(f32(-1f) * -162f)));
    global1 = vec4<bool>(any(select(select(global1.xxw, select(global1.wyx, global1.xzy, vec3<bool>(global1.x, global1.x, false)), global1.x), global1.zwy, select(true, false, !global1.x))), false, _wgslsmith_mult_i32(var_0 | ~1i, var_0) <= var_0, -291f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -161f) * _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(abs(-219f)))));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 21u)];
    global2 = array<vec2<f32>, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1056f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 312f)), var_1.x, 690f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -608f, var_1.x, 1388f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, var_1.x, 1100f), vec4<f32>(var_1.x, var_1.x, 450f, var_1.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 149f, -358f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 120f, 666f, var_1.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_1.x, var_1.x, var_1.x))), false)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1731f, -1134f, var_1.x, var_1.x))), vec4<f32>(-1342f, 827f, var_1.x, -146f)))));
    global1 = !select(vec4<bool>(global1.x, global1.x, all(!vec3<bool>(global1.x, false, true)), true), select(!vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(var_2.x != var_1.x, all(vec3<bool>(global1.x, false, global1.x)), global1.x, global1.x || false), global1.x), vec4<bool>(global1.x, !func_4(Struct_1(u_input.c.x), var_2.x, true, vec2<bool>(false, global1.x)).x, !all(global1.xx), !any(vec4<bool>(true, global1.x, global1.x, global1.x))));
    global3 = _wgslsmith_div_f32(-161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

