struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 23>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 23>();
    var var_0 = vec3<u32>(1u, 103134u, _wgslsmith_add_u32(14882u << (u_input.a % 32u), _wgslsmith_mult_u32(~(~30238u), 1u | u_input.a)));
    global0 = array<vec2<i32>, 23>();
    var var_1 = 0i;
    global0 = array<vec2<i32>, 23>();
    return !(all(vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true)) || (((1u <= var_0.x) || true) | false));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec4<i32>(u_input.b, 0i << (0u % 32u), -(~61427i) >> (u_input.a % 32u), 0i);
    let var_1 = Struct_1(-1423f);
    global0 = array<vec2<i32>, 23>();
    var var_2 = Struct_4(Struct_3(_wgslsmith_clamp_i32(firstTrailingBit(select(2147483647i, 16219i, false)), 2147483647i, u_input.b)), max(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a) ^ ~vec3<u32>(1u, 1u, 34799u), vec3<u32>(u_input.a, u_input.a, 15938u) ^ (vec3<u32>(u_input.a, 1u, 44560u) & vec3<u32>(0u, u_input.a, 1u))), ~vec3<u32>(u_input.a, _wgslsmith_div_u32(0u, 1u), abs(1u))), ~_wgslsmith_mod_vec3_u32(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 1u), vec3<u32>(29272u, 1u, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 65166u, 0u), vec3<u32>(4294967295u, u_input.a, u_input.a)), true), ~min(vec3<u32>(u_input.a, 56733u, u_input.a), vec3<u32>(u_input.a, 10013u, u_input.a))), true);
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1155f * -163f), _wgslsmith_f_op_f32(var_1.a + 303f)))), _wgslsmith_f_op_f32(var_1.a * var_1.a)));
    return vec2<bool>(!var_2.d, var_2.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec2<i32> {
    global0 = array<vec2<i32>, 23>();
    var var_0 = Struct_1(1088f);
    var_0 = arg_0.a;
    let var_1 = vec3<f32>(-1673f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(622f - arg_0.a.a))));
    global0 = array<vec2<i32>, 23>();
    return _wgslsmith_div_vec2_i32(countOneBits(min(u_input.c.wx, countOneBits(vec2<i32>(2147483647i, arg_2.x)))), ~min(global0[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(8303i, arg_2.x), arg_2.yw, global0[_wgslsmith_index_u32(41179u, 23u)]))) & abs(~vec2<i32>(arg_2.x, ~arg_2.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = ~0i;
    var_0 = _wgslsmith_sub_i32(arg_1, -_wgslsmith_dot_vec2_i32(u_input.c.zx, func_4(arg_2, func_3(), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1, -1i, 0i), u_input.c), select(arg_2.c, arg_2.c, vec4<bool>(true, true, false, arg_2.c.x)))));
    return any(vec2<bool>(func_3().x, select(false, !all(arg_2.c.wy), any(arg_2.c.xzy))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 23>();
    let var_0 = vec4<bool>(func_1(), func_2(vec2<u32>(4294967295u & select(1u, 17319u, true), 1u), u_input.b, Struct_2(Struct_1(1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, -756f, -1000f)), vec4<bool>(true, true, true, true))), true, true);
    var var_1 = Struct_4(Struct_3(u_input.c.x), vec3<u32>(u_input.a, 30204u, min(~u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(21761u, u_input.a, 4294967295u, 45266u))))), firstTrailingBit(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))), true);
    global0 = array<vec2<i32>, 23>();
    var_1 = Struct_4(var_1.a, select(var_1.b ^ vec3<u32>(_wgslsmith_div_u32(1608u, 12099u), var_1.b.x, u_input.a), var_1.c, vec3<bool>(!all(var_0.wz), !any(vec2<bool>(var_0.x, var_1.d)), var_1.d)), abs(vec3<u32>(var_1.c.x, _wgslsmith_clamp_u32(~55223u, 25190u, var_1.b.x), abs(1u) | (u_input.a | 39906u))), !func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(var_1.c.yx, vec2<u32>(u_input.a, firstTrailingBit(var_1.b.x))) << (firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(var_1.b.x, 4294967295u), 83720u)) % vec2<u32>(32u)));
}

