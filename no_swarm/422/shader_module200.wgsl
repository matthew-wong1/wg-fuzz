struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    return select(!select(select(select(vec3<bool>(arg_1.e.x, true, arg_1.e.x), vec3<bool>(false, false, arg_1.e.x), vec3<bool>(false, true, arg_1.e.x)), !vec3<bool>(arg_1.e.x, true, true), vec3<bool>(arg_1.e.x, arg_1.e.x, true)), vec3<bool>(true, all(vec2<bool>(arg_1.e.x, false)), !arg_1.e.x), select(!vec3<bool>(arg_1.e.x, true, arg_1.e.x), vec3<bool>(arg_1.e.x, arg_1.e.x, arg_1.e.x), !vec3<bool>(true, arg_1.e.x, false))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(arg_1.e.x, arg_1.e.x, false), vec3<bool>(arg_1.e.x, true, false)), select(vec3<bool>(false, false, arg_1.e.x), vec3<bool>(true, arg_1.e.x, true), arg_1.e.x)), vec3<bool>(false, u_input.a == -2147483647i, arg_1.a >= arg_1.b), vec3<bool>(true, true, false)), vec3<bool>(false, all(select(arg_1.e, !arg_1.e, false)), !any(select(vec4<bool>(arg_1.e.x, true, true, false), vec4<bool>(true, arg_1.e.x, arg_1.e.x, true), arg_1.e.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> vec3<bool> {
    let var_0 = Struct_4(~15441u, 6850u);
    let var_1 = _wgslsmith_mult_i32(arg_1, abs(36785i));
    let var_2 = false;
    var var_3 = ~vec3<u32>(~var_0.b >> (abs(7119u) % 32u), 1u, reverseBits(global1[_wgslsmith_index_u32(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3, 13u)], 13u)]), 13u)]));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_div_f32(-1587f, _wgslsmith_f_op_f32(arg_2.x * arg_2.x))), -743f, 33074u | arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_2.x), arg_0), Struct_1(-517f, _wgslsmith_f_op_f32(arg_2.x + -1000f), reverseBits(max(~var_3.x, ~arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1693f, -1008f)) - arg_2.x), vec2<bool>(true, all(select(vec4<bool>(var_2, var_2, true, arg_0.x), vec4<bool>(true, var_2, true, var_2), var_2)))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_0.b, global1[_wgslsmith_index_u32(1u, 13u)]), var_3.x), _wgslsmith_mod_u32(1u & arg_3, ~(~global1[_wgslsmith_index_u32(50247u, 13u)]))), 10u)], firstTrailingBit(var_3.yy));
    return func_3(var_0, global2[_wgslsmith_index_u32(55508u, 10u)], _wgslsmith_mult_vec4_u32(vec4<u32>(25809u, var_3.x, _wgslsmith_add_u32(63096u, 55880u), var_0.b << (13300u % 32u)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(38371u, 28552u, 78834u, 1u), vec4<u32>(48136u, 22633u, 1u, var_0.a)) % vec4<u32>(32u)), ~vec4<u32>(~104706u, 1u, 8295u, ~11289u)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_1, 10>();
    var var_0 = arg_3;
    var var_1 = arg_0;
    let var_2 = func_2(vec2<bool>((-arg_0 >= -2147483647i) | true, arg_2.a.e.x), ~_wgslsmith_add_i32(-29698i, 0i) >> (~var_0.b % 32u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.d, 343f, -1000f) - vec3<f32>(arg_1, 663f, 871f))))), var_0.a);
    global0 = arg_2.a.c;
    return _wgslsmith_f_op_f32(floor(arg_1));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = vec3<f32>(1000f, -459f, 486f);
    global2 = array<Struct_1, 10>();
    global0 = 43763u;
    global2 = array<Struct_1, 10>();
    global1 = array<u32, 13>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(267f))))), arg_0 >= _wgslsmith_f_op_f32(-774f + -182f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(-2402f, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 13u)], 28935u), firstLeadingBit(vec2<u32>(38240u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33245u, 13u)], 13u)], 13u)], 13u)]))), vec2<u32>(18638u << (1u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(70450u, 13u)], 13u)] & 0u)), ~vec2<u32>(~global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(38805u, 13u)] ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 13u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1508f, 918f)), vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.a, 622f, Struct_3(Struct_1(787f, 675f, 0u, 828f, vec2<bool>(false, true))), Struct_4(0u, 35467u))), _wgslsmith_f_op_f32(1531f + -418f)))))));
    global2 = array<Struct_1, 10>();
    global2 = array<Struct_1, 10>();
    var var_1 = abs(vec3<i32>(u_input.a, 1i, u_input.a) ^ -vec3<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i, -u_input.a));
    global0 = 3068u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(300f * _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * _wgslsmith_f_op_f32(min(-718f, -688f))), _wgslsmith_f_op_f32(-var_0), false)) + _wgslsmith_f_op_f32(1580f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~16749u, 13u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26081u, 13u)], 13u)]), 1u), 13u)], _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0, 537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(-var_0), select(true, false, true)))))));
}

