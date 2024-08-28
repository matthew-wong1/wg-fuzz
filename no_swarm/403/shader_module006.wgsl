struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: array<i32, 15>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    return 31735u;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~u_input.b.yz, vec2<i32>(-4719i, _wgslsmith_mod_i32(_wgslsmith_add_i32(12170i, global1[_wgslsmith_index_u32(u_input.a, 15u)]), _wgslsmith_mult_i32(arg_0.x, -2147483647i)))), u_input.c);
    global0 = array<vec4<bool>, 10>();
    global0 = array<vec4<bool>, 10>();
    global1 = array<i32, 15>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2278f - -240f) + -1383f), _wgslsmith_f_op_f32(select(1000f, -919f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1372f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1804f, 779f)) + _wgslsmith_div_f32(1039f, -1152f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-379f)) - 330f) + _wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(f32(-1f) * -794f)))));
    return _wgslsmith_add_i32(~(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.a, 15u)], -2147483647i) << (~u_input.a % 32u)), -2147483647i);
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = -abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_2.a.b.x, global1[_wgslsmith_index_u32(0u, 15u)], arg_2.a.c.x), vec4<i32>(arg_2.a.a.x, -6809i, arg_2.a.b.x, global1[_wgslsmith_index_u32(39485u, 15u)])), global1[_wgslsmith_index_u32(0u, 15u)], ~arg_2.a.a.x) ^ ((u_input.b.x >> (1u % 32u)) >> (~arg_1 % 32u)));
    var var_1 = true;
    global1 = array<i32, 15>();
    var var_2 = ~vec4<i32>(2147483647i, -(~2147483647i), -(_wgslsmith_add_i32(2147483647i, global1[_wgslsmith_index_u32(arg_1, 15u)]) & -2147483647i), -2147483647i);
    var_2 = _wgslsmith_clamp_vec4_i32(select(select(vec4<i32>(-5835i << (arg_1 % 32u), arg_2.a.b.x, var_2.x ^ var_2.x, _wgslsmith_add_i32(var_2.x, global1[_wgslsmith_index_u32(0u, 15u)])), (vec4<i32>(u_input.b.x, u_input.c, -1i, global1[_wgslsmith_index_u32(u_input.a, 15u)]) ^ vec4<i32>(u_input.b.x, arg_2.a.b.x, u_input.b.x, global1[_wgslsmith_index_u32(39266u, 15u)])) >> ((vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) ^ vec4<u32>(arg_1, arg_1, 11131u, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(!arg_2.b, all(vec2<bool>(true, arg_2.b)), arg_2.b, arg_2.b)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(0i, global1[_wgslsmith_index_u32(0u, 15u)], -13711i, 2147483647i) | vec4<i32>(14999i, -2147483647i, 1i, u_input.b.x)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 15u)], var_2.x, var_2.x, var_2.x), vec4<i32>(1i, u_input.b.x, -1i, arg_2.a.c.x)))), select(select(global0[_wgslsmith_index_u32(~u_input.a, 10u)], !global0[_wgslsmith_index_u32(arg_1, 10u)], select(vec4<bool>(false, arg_2.b, false, arg_2.b), global0[_wgslsmith_index_u32(42262u, 10u)], false)), !select(global0[_wgslsmith_index_u32(u_input.a, 10u)], vec4<bool>(arg_2.b, arg_2.b, true, false), arg_2.b), select(vec4<bool>(arg_2.b, arg_2.b, false, true), global0[_wgslsmith_index_u32(arg_1 & arg_1, 10u)], vec4<bool>(false, false, true, arg_2.b)))), firstTrailingBit(select(~vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 15u)], u_input.b.x, -13230i, global1[_wgslsmith_index_u32(arg_1, 15u)]), abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], -37755i, -2147483647i)), select(global0[_wgslsmith_index_u32(arg_1, 10u)], global0[_wgslsmith_index_u32(16523u, 10u)], true))) >> (vec4<u32>(_wgslsmith_mod_u32(abs(arg_1), _wgslsmith_mod_u32(u_input.a, u_input.a)), countOneBits(~arg_1), ~u_input.a, 78006u) % vec4<u32>(32u)), ~(-countOneBits(-vec4<i32>(var_2.x, 2147483647i, -2147483647i, u_input.b.x))));
    return _wgslsmith_mult_i32(-15635i, _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, var_2.x) << (_wgslsmith_mod_u32(u_input.a, u_input.a) % 32u), 2147483647i) >> (_wgslsmith_mod_u32(select(arg_1, arg_1, false), arg_1) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (_wgslsmith_div_u32(_wgslsmith_mult_u32(50587u, u_input.a) << (~u_input.a % 32u), u_input.a) | u_input.a) ^ func_1();
    var var_1 = Struct_1(vec3<i32>((global1[_wgslsmith_index_u32(55191u, 15u)] ^ global1[_wgslsmith_index_u32(var_0, 15u)]) | 0i, max(func_2(_wgslsmith_div_vec3_i32(vec3<i32>(2097i, global1[_wgslsmith_index_u32(63519u, 15u)], u_input.c), u_input.b)), _wgslsmith_mod_i32(~global1[_wgslsmith_index_u32(4294967295u, 15u)], -22396i)), func_3(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-105f + -1632f)), 0u, Struct_2(Struct_1(vec3<i32>(0i, u_input.c, -1i), vec3<i32>(2147483647i, u_input.b.x, 2147483647i), vec3<i32>(-2147483647i, 6983i, global1[_wgslsmith_index_u32(0u, 15u)]), vec3<f32>(-932f, 641f, 1084f)), global1[_wgslsmith_index_u32(u_input.a, 15u)] != 35589i))), ~u_input.b, ~vec3<i32>(firstLeadingBit(u_input.b.x), u_input.b.x, global1[_wgslsmith_index_u32(21121u | u_input.a, 15u)] ^ 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1053f, 1000f, -208f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1120f, 635f, 1151f))))));
    global0 = array<vec4<bool>, 10>();
    let var_2 = var_1.d;
    var var_3 = Struct_2(Struct_1(select(vec3<i32>(firstTrailingBit(u_input.c), global1[_wgslsmith_index_u32(0u, 15u)] >> (u_input.a % 32u), -52726i), u_input.b, true), abs(vec3<i32>(1i, -2147483647i, 1i)), u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1161f + -251f), _wgslsmith_f_op_f32(-var_1.d.x), 763f) * vec3<f32>(_wgslsmith_div_f32(var_2.x, -1462f), var_2.x, _wgslsmith_div_f32(1497f, var_2.x)))), !(-446f == var_1.d.x));
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(-func_2(vec3<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_0, 15u)], var_1.a.x), ~9507i, _wgslsmith_div_i32(-16159i, 3340i))), -1810f);
}

