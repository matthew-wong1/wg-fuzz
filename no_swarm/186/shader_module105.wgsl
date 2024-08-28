struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5;

var<private> global2: f32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5, arg_3: u32) -> i32 {
    global0 = _wgslsmith_mult_u32(~(4294967295u & arg_1.c.b), abs(countOneBits(0u))) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(21971u, 111484u), ~(global1.a.b >> (arg_2.a.b % 32u)));
    global1 = Struct_5(arg_2.a, vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec3<bool>(arg_2.d.x >= arg_1.a.x, true, !arg_1.b))), firstLeadingBit(~select(global1.c, global1.c, arg_2.b.x)) | ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 50274u, 42546u, 0u)), ~arg_2.c), min(arg_1.a.xz | vec2<i32>(arg_2.d.x, u_input.a.x), vec2<i32>(6158i, -global1.d.x) ^ vec2<i32>(arg_2.d.x << (arg_2.c.x % 32u), _wgslsmith_mult_i32(0i, arg_1.a.x))));
    var var_0 = vec3<f32>(-1450f, arg_2.a.a.a.a.x, arg_2.a.a.a.a.x);
    return 0i;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_5) -> bool {
    var var_0 = !global1.b;
    var var_1 = u_input.a.www;
    var var_2 = arg_1.c;
    var var_3 = arg_0;
    return true;
}

fn func_2(arg_0: bool, arg_1: f32) -> f32 {
    var var_0 = Struct_2(global1.a.a.b, Struct_1(_wgslsmith_f_op_vec4_f32(global1.a.a.a.a + global1.a.a.b.a)));
    let var_1 = !func_4(!select(!vec4<bool>(true, true, false, arg_0), !vec4<bool>(false, false, arg_0, false), arg_0), Struct_4(vec3<i32>(func_3(arg_0, Struct_4(u_input.a.xzw, arg_0, Struct_3(global1.a.a, 1u)), Struct_5(global1.a, vec3<bool>(false, arg_0, true), vec4<u32>(u_input.b.x, 4756u, 53935u, 1u), u_input.a.wy), u_input.b.x), -global1.d.x, -global1.d.x), _wgslsmith_f_op_f32(arg_1 * global1.a.a.b.a.x) <= _wgslsmith_f_op_f32(step(-1830f, arg_1)), global1.a), Struct_5(Struct_3(Struct_2(Struct_1(vec4<f32>(arg_1, var_0.b.a.x, var_0.b.a.x, -1655f)), var_0.a), u_input.b.x), global1.b, _wgslsmith_add_vec4_u32(vec4<u32>(global1.a.b, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, global1.a.b)), ~u_input.a.zz));
    let var_2 = Struct_5(global1.a, select(global1.b, !global1.b, true), global1.c, u_input.a.xx);
    let var_3 = 18528u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(234f - var_2.a.a.a.a.x), _wgslsmith_f_op_f32(-var_0.b.a.x)) + _wgslsmith_f_op_f32(step(var_2.a.a.a.a.x, _wgslsmith_f_op_f32(floor(281f))))), _wgslsmith_f_op_f32(f32(-1f) * -1344f), !(!any(vec4<bool>(false, arg_0, true, var_1)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(-242f - -1000f))), _wgslsmith_f_op_f32(exp2(global1.a.a.b.a.x)), 702f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a.b.a.x, global1.a.a.b.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global1.a.a.a.a.x * global1.a.a.a.a.x), _wgslsmith_f_op_f32(global1.a.a.b.a.x * global1.a.a.a.a.x), 934f, _wgslsmith_f_op_f32(-global1.a.a.b.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a.a.b.a) - _wgslsmith_f_op_vec4_f32(-global1.a.a.a.a)), select(select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, global1.b.x, true, false), vec4<bool>(global1.b.x, global1.b.x, false, global1.b.x)), select(vec4<bool>(true, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x), vec4<bool>(true, global1.b.x, false, true)), true | global1.b.x)))));
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.a.x - global1.a.a.b.a.x)));
    var var_1 = !select(vec4<bool>(_wgslsmith_sub_u32(global1.c.x, 4294967295u) == global1.a.b, all(!vec2<bool>(global1.b.x, true)), any(global1.b), false), vec4<bool>(all(vec3<bool>(global1.b.x, false, true)), func_4(select(vec4<bool>(true, true, false, global1.b.x), vec4<bool>(true, true, true, true), false), Struct_4(u_input.a.xwz, global1.b.x, Struct_3(Struct_2(Struct_1(vec4<f32>(-1443f, 348f, -562f, var_0.a.a.x)), Struct_1(vec4<f32>(902f, 363f, 1156f, var_0.b.a.x))), 0u)), Struct_5(global1.a, vec3<bool>(true, global1.b.x, true), vec4<u32>(4294967295u, 68276u, u_input.b.x, 0u), vec2<i32>(u_input.a.x, -75151i))), global1.b.x, all(!global1.b)), select(select(global1.d.x, global1.d.x, true) == _wgslsmith_mod_i32(2147483647i, -32067i), global1.b.x, global1.b.x));
    var var_2 = 1004f;
    let var_3 = 16125u;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(784f, 515f, global1.a.a.b.a.x, 1187f), vec4<f32>(global1.a.a.a.a.x, global1.a.a.a.a.x, global1.a.a.a.a.x, -658f)))))), func_1());
    let var_1 = vec4<u32>(~(~(~(58259u & global1.c.x))), ~20549u, 0u, ~_wgslsmith_mod_u32(16022u, select(~4294967295u, reverseBits(global1.a.b), !global1.b.x)));
    global2 = global1.a.a.b.a.x;
    let var_2 = all(select(!global1.b, !(!global1.b), !global1.b)) || true;
    var var_3 = global1.a.a.b.a.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(var_0.b.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f + var_0.b.a.x) * _wgslsmith_div_f32(global1.a.a.a.a.x, -640f)), _wgslsmith_f_op_f32(global1.a.a.b.a.x + global1.a.a.a.a.x), var_0.b.a.x, 1174f), (reverseBits(var_1.x | global1.c.x) < (firstLeadingBit(23601u) ^ u_input.b.x)) && global1.b.x));
    let var_5 = Struct_5(global1.a, select(global1.b, !global1.b, true), _wgslsmith_mult_vec4_u32(var_1, var_1), ~vec2<i32>(-20283i, i32(-1i) * -31128i) << (vec2<u32>(global1.a.b, global1.c.x) % vec2<u32>(32u)));
    var var_6 = vec2<i32>(_wgslsmith_div_i32(var_5.d.x, 2147483647i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a, ~select(vec3<i32>(0i, global1.d.x, 30687i) ^ ~vec3<i32>(global1.d.x, var_6.x, var_6.x), vec3<i32>(_wgslsmith_mult_i32(var_6.x, -1i), var_6.x, var_6.x), global1.b), -1887i);
}

