struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: u32;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global1 = abs(_wgslsmith_add_u32(~(54761u ^ u_input.a), _wgslsmith_sub_u32(u_input.a | (u_input.a ^ u_input.a), 54051u)));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(arg_0.a.b.xx, vec2<f32>(_wgslsmith_div_f32(1750f, -933f), _wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.c)), select(vec2<bool>(~1u > u_input.a, u_input.a <= u_input.a), vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))), true), false)));
    var var_1 = arg_0.a;
    var var_2 = Struct_2(arg_0.a);
    var var_3 = _wgslsmith_mult_u32(select(u_input.a, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 26255u, 42203u, 1u), ~vec4<u32>(2784u, 12430u, u_input.a, 0u))), _wgslsmith_f_op_f32(select(1129f, _wgslsmith_f_op_f32(max(314f, 340f)), arg_0.a.a.x < u_input.b.x)) > _wgslsmith_f_op_f32(trunc(var_1.b.x))), abs(4294967295u));
    return vec2<bool>(true, (select(true, true, any(vec3<bool>(true, false, false))) || (true || select(false, true, true))) && (16418i > u_input.b.x));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 31u)];
    let var_1 = !all(func_3(Struct_2(Struct_1(vec2<i32>(2147483647i, 31546i), vec3<f32>(1287f, 931f, -923f), -661f))));
    global1 = _wgslsmith_mod_u32(18810u ^ _wgslsmith_mult_u32(5126u ^ _wgslsmith_add_u32(45127u, u_input.a), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(4294967295u, u_input.a))), u_input.a);
    let var_2 = vec3<bool>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) <= -u_input.b.x, !(!(countOneBits(u_input.b.x) <= 1i)), false);
    let var_3 = Struct_1(vec2<i32>(-select(u_input.b.x, 1i, var_2.x) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.zy), u_input.b.x), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(1614f, var_0.x), arg_1)) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -432f))), _wgslsmith_f_op_f32(select(535f, _wgslsmith_f_op_f32(-1248f * -1195f), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 * arg_1))))), 1741f);
    return Struct_2(Struct_1(u_input.b.xx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(128f * 809f), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c * -985f))));
}

fn func_1() -> bool {
    let var_0 = 105f;
    global0 = array<vec2<f32>, 31>();
    var var_1 = func_2(-1089f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-661f)))))) + var_1.a.c), _wgslsmith_f_op_f32(-var_1.a.c));
    global2 = true;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = true;
    var var_1 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -154f), 599f);
    global1 = u_input.a;
    let var_2 = ~min(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 23122u), u_input.a, ~u_input.a) << (countOneBits(vec3<u32>(18176u, 42208u, 22766u)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(43505u, u_input.a, u_input.a)));
    global2 = !var_0;
    var var_3 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.c)) + -1000f)))).a;
    var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(var_2.x & u_input.a, var_2.x, _wgslsmith_div_u32(u_input.a, 75925u), max(u_input.a, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(var_2.x, 4294967295u, var_2.x, var_2.x)), false), _wgslsmith_f_op_f32(min(var_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-356f, 1686f, false)) * var_3.c)))));
}

