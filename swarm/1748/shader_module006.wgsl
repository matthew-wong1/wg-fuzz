struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-9168i, -16627i, 1i, 2147483647i));

var<private> global1: Struct_3;

var<private> global2: f32 = 390f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = !global1.c.b.x;
    let var_1 = ~vec4<u32>(4294967295u, u_input.c.x, 26348u ^ (_wgslsmith_div_u32(arg_1.x, 30498u) >> (1u % 32u)), ~u_input.c.x ^ arg_1.x);
    var var_2 = global1.c.a;
    let var_3 = Struct_3(~u_input.d.x, var_2.b, Struct_2(Struct_1(false, global1.c.a.b, -var_2.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(14753u, 0u, arg_1.x), vec3<u32>(var_1.x, 30448u, var_1.x), var_1.yxz), _wgslsmith_f_op_vec2_f32(floor(global1.c.c))), global1.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.e), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-177f, -841f), vec2<f32>(632f, 887f))), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(round(-1082f))));
    let var_4 = _wgslsmith_sub_u32(var_3.c.a.b.x, var_2.d.x);
    return _wgslsmith_div_u32(global1.c.a.b.x, global1.b.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = countOneBits(func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.c.x, 266f, global1.c.c.x, -255f) + vec4<f32>(738f, global1.c.a.e.x, global1.c.c.x, global1.c.a.e.x)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.d, 699f, 474f, -421f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.c.d, -945f, global1.c.c.x, -410f), vec4<f32>(328f, global1.c.a.e.x, global1.c.c.x, global1.c.a.e.x))))), u_input.c.xy | ~vec2<u32>(u_input.c.x, 0u)));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global1.c.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1185f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.e.x + global1.c.a.e.x) + _wgslsmith_f_op_f32(-global1.c.d)), global1.c.b.x)) - _wgslsmith_f_op_f32(global1.c.a.e.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.d), _wgslsmith_f_op_f32(-global1.c.c.x), global1.c.b.x)))));
    let var_1 = vec4<i32>(global1.c.a.c, 1945i, -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(~u_input.b.x, global1.c.a.c, global1.c.a.c)) & ~(-18132i));
    global1 = Struct_3(global1.c.a.d.x, arg_0 ^ select(countOneBits(global1.b) ^ vec4<u32>(arg_0.x, global1.a, 61666u, global1.a), vec4<u32>(arg_0.x << (u_input.d.x % 32u), 0u << (global1.a % 32u), ~global1.b.x, 1u), vec4<bool>(global1.c.a.a, true, true, global1.c.b.x)), global1.c);
    global0 = array<vec4<i32>, 1>();
    return Struct_3(min(arg_0.x, 61048u | (u_input.c.x & _wgslsmith_add_u32(42814u, global1.a))), global1.c.a.b, global1.c);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = func_2(reverseBits(~arg_1.b));
    global1 = var_0;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -155f);
    global2 = -415f;
    global0 = array<vec4<i32>, 1>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-899f))))) + var_0.c.c.x), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c.c.x, global1.c.a.e.x, global1.c.a.e.x), vec3<f32>(global1.c.d, global1.c.a.e.x, -1564f))))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_1(1i, global1.c.a, vec2<f32>(842f, global1.c.a.e.x))), func_2(global1.b).c.a.e.x, global1.c.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.c.x, _wgslsmith_f_op_f32(-1822f * 1000f), func_2(vec4<u32>(4294967295u, 5162u, 4294967295u, 78746u)).c.a.e.x)))), global1.c.b.x));
    var var_1 = global1.c.a;
    let var_2 = !((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-333f + -112f) - _wgslsmith_f_op_f32(-var_1.e.x)) < _wgslsmith_f_op_f32(round(var_1.e.x))) | false);
    var_1 = global1.c.a;
    let var_3 = vec3<bool>(!(!var_1.a), false, any(vec2<bool>(var_1.a, !global1.c.b.x)));
    let var_4 = global1.c;
    global2 = -629f;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.x, var_4.a.e.x)), var_4.d))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_4.c.x, -697f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-627f, var_0.x, 604f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, 559f, global1.c.c.x) * vec3<f32>(var_0.x, 729f, global1.c.d))))));
    let var_5 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(~0u, ~(~68751u), var_5.x, ~var_4.a.d.x | 4294967295u)), countOneBits(vec4<u32>(var_1.b.x, countOneBits(~u_input.c.x), reverseBits(global1.c.a.b.x) >> (1u % 32u), 0u)), u_input.b.xzy, 586f);
}

