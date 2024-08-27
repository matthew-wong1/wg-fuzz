struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec4<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = Struct_3(2147483647i);
    var var_0 = ~(-(~u_input.c));
    let var_1 = global1.wyx;
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(27361u, ~0u), vec2<u32>(1u, u_input.a)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1426f)))) + 1027f);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_3(1i);
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1795f + _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(399f + arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0, arg_2))), arg_1.a))));
    let var_1 = -2119i;
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(202f, arg_0, global1.x) - vec3<f32>(479f, arg_0, arg_3.x)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3.x, arg_3.x, arg_2)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) + arg_1.a), 1000f, 159f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(793f + global1.x), _wgslsmith_f_op_f32(func_3(arg_0))))), Struct_1(_wgslsmith_f_op_f32(-arg_3.x), arg_1.b));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x - 117f) * _wgslsmith_f_op_f32(arg_3.x * global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(814f * arg_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1288f)))), -1055f)));
    return Struct_1(_wgslsmith_f_op_f32(-var_2.c.a), vec2<u32>(u_input.a, 1u));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_div_f32(-890f, _wgslsmith_f_op_f32(max(global1.x, global1.x))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(219f + global1.x) + _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-1000f * 683f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1881f + _wgslsmith_f_op_f32(f32(-1f) * -239f)) * _wgslsmith_div_f32(-1384f, global1.x)));
    global0 = Struct_3(~global0.a);
    var var_1 = Struct_5(func_2(global1.x, Struct_1(global1.x, vec2<u32>(u_input.a, u_input.a) >> ((vec2<u32>(u_input.a, 1u) ^ vec2<u32>(u_input.a, 60181u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1536f, -1033f, global1.x, global1.x) - vec4<f32>(-323f, -1654f, -997f, global1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -830f, -547f, 240f), vec4<f32>(global1.x, 1929f, global1.x, 862f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 731f, global1.x, global1.x), vec4<f32>(global1.x, global1.x, global1.x, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-328f, -2463f, -251f, -181f))))), !arg_0, select(select(select(!vec4<bool>(arg_0, arg_0, true, true), select(vec4<bool>(true, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, false), arg_0), arg_0), select(!vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, false, true, true), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, false, false, arg_0), true)), !(!vec4<bool>(false, arg_0, false, false))), vec4<bool>(arg_0, arg_0, true | arg_0, select(any(vec2<bool>(true, true)), arg_0, !arg_0)), arg_0), Struct_3(-35599i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, global1.x, 263f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1548f, -363f, -479f) * vec3<f32>(117f, var_1.a.a, global1.x)))))), global1.x, var_1.a);
    global0 = var_1.d;
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(1712f)), var_1.a.a, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(step(-653f, var_2.c.a)))))));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = arg_0.c.c;
    global1 = vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(-2432f + -1511f), 1f);
    let var_1 = arg_2.b.b.x;
    let var_2 = _wgslsmith_add_u32(u_input.a, ~var_1);
    var var_3 = _wgslsmith_mod_u32((reverseBits(0u) & ~var_1) >> (~1717u % 32u), var_2) < arg_0.b.b.x;
    return firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.c.b.x, _wgslsmith_mod_u32(arg_0.b.b.x & 65796u, 34660u), 1u), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(var_1, 1u, arg_0.c.c.b.x))) >> (~(vec3<u32>(u_input.a, arg_0.c.c.b.x, var_2) << (vec3<u32>(4294967295u, 48042u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(func_4(Struct_4(1i, Struct_1(1000f, vec2<u32>(70985u, 1u)), Struct_2(global1.xzw, 102f, Struct_1(-1418f, vec2<u32>(0u, u_input.a))), _wgslsmith_f_op_f32(global1.x * -504f), _wgslsmith_f_op_vec4_f32(func_1(false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), Struct_4(-global0.a, func_2(827f, Struct_1(1048f, vec2<u32>(1u, u_input.a)), global1.x, vec4<f32>(global1.x, global1.x, global1.x, global1.x)), Struct_2(vec3<f32>(global1.x, global1.x, 1672f), global1.x, Struct_1(global1.x, vec2<u32>(u_input.a, 46522u))), -1182f, vec4<f32>(782f, 221f, -207f, -2017f)), _wgslsmith_f_op_vec2_f32(-global1.wx)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.a, 1u), 35107u, _wgslsmith_add_u32(50942u, u_input.a)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 6778u, 34032u), vec3<u32>(u_input.a, u_input.a, 54955u))));
    global0 = Struct_3(-2147483647i);
    var var_1 = global1.xwz;
    var var_2 = _wgslsmith_f_op_f32(-438f * global1.x);
    var var_3 = Struct_5(func_2(_wgslsmith_f_op_f32(ceil(790f)), Struct_1(global1.x, countOneBits(firstLeadingBit(var_0.yz))), 1000f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(global1.x + 1261f), -986f, _wgslsmith_f_op_f32(var_1.x + var_1.x))))), false, vec4<bool>(!(all(vec4<bool>(false, true, false, true)) && any(vec2<bool>(false, false))), !(true || (var_1.x > global1.x)), true, true), Struct_3(0i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~max(countOneBits(vec3<u32>(4294967295u, 76991u, 31510u)), abs(vec3<u32>(var_3.a.b.x, var_3.a.b.x, 0u)))));
}

