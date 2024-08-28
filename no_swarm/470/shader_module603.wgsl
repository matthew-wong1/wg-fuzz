struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(0u, 77472u), vec2<u32>(43564u, 4294967295u), vec2<u32>(2118u, 0u), vec2<u32>(27492u, 1709u), vec2<u32>(62644u, 76942u), vec2<u32>(4545u, 7538u), vec2<u32>(0u, 1u), vec2<u32>(24358u, 1u));

var<private> global3: f32;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = !vec3<bool>(false, any(!(!vec4<bool>(global1.c.x, true, global4.c.x, arg_3))), false);
    let var_2 = _wgslsmith_dot_vec3_u32(~min(~abs(u_input.c), vec3<u32>(max(0u, global4.b.x), ~1u, global1.b.x)), ~global1.a);
    global4 = Struct_1(select(vec3<u32>(~79078u, 4294967295u, _wgslsmith_clamp_u32(6753u, abs(1u), 52230u & var_2)), vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a.x, 4294967295u), global4.b.yx, vec2<bool>(arg_0.x, var_1.x)), ~global1.d.zy), 22537u, ~abs(global4.d.x)), all(!vec2<bool>(true, global4.c.x))), ~select(select(~vec3<u32>(global1.d.x, 0u, global1.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_2, 4294967295u), vec3<u32>(global4.a.x, 1u, 1548u)), any(vec2<bool>(global1.c.x, false))), ~vec3<u32>(global1.a.x, 1u, 0u), true), vec2<bool>(!all(var_1), ~_wgslsmith_mult_u32(global4.d.x, global1.d.x) >= (~global1.a.x << (~4294967295u % 32u))), global4.d);
    let var_3 = vec3<bool>(true, any(global4.c), false);
    return arg_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    let var_0 = global4.c.x;
    let var_1 = vec4<f32>(546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-308f + -447f), -299f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -808f), 415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(func_2(global4.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1070f, 692f, -1118f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(934f, -968f), vec2<f32>(430f, -1095f), global1.c.x)), global1.c.x)))));
    global3 = var_1.x;
    return vec3<u32>(countOneBits(~global1.b.x), _wgslsmith_add_u32(~select(23438u, u_input.a.x, true), global4.d.x), arg_0.b.x);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_1(max(global4.a, global4.d.wxz), global1.b, vec2<bool>(!(!global1.c.x), global1.c.x), global4.d);
    global3 = _wgslsmith_f_op_f32(810f - -988f);
    let var_1 = !global4.c.x;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1790f - -2454f))));
    global2 = array<vec2<u32>, 8>();
    return global4.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global4.b, ~select(u_input.c, func_1(global0[_wgslsmith_index_u32(global4.a.x, 11u)], u_input.b.x), true) << (abs(vec3<u32>(1u, global1.b.x, global4.b.x) & vec3<u32>(48129u, global1.d.x, 21416u)) % vec3<u32>(32u)), global4.c, func_3(_wgslsmith_mod_vec3_u32(select(max(vec3<u32>(u_input.a.x, 1521u, 6130u), vec3<u32>(0u, 4294967295u, global4.b.x)), u_input.c, select(vec3<bool>(global1.c.x, global1.c.x, global4.c.x), vec3<bool>(global4.c.x, global1.c.x, true), vec3<bool>(false, true, global1.c.x))), vec3<u32>(u_input.a.x, 42268u, 0u) | (vec3<u32>(global1.a.x, global4.a.x, global4.b.x) ^ vec3<u32>(global1.b.x, 0u, 65106u))), global1.c.x, !vec4<bool>(!global1.c.x, true, all(vec4<bool>(global4.c.x, global1.c.x, global1.c.x, global1.c.x)), false)));
    let var_1 = ~reverseBits(abs(~28627u));
    global0 = array<Struct_1, 11>();
    let var_2 = Struct_1(global4.d.zwz, vec3<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 23747u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global4.a.x, u_input.a.x), ~global1.b)), ~(50334u ^ (global4.a.x << (var_1 % 32u))), 0u), vec2<bool>(true, false), firstLeadingBit(~abs(vec4<u32>(u_input.a.x, global4.b.x, global1.b.x, u_input.a.x)) << (select(~var_0.d, global4.d << (var_0.d % vec4<u32>(32u)), select(vec4<bool>(false, global1.c.x, false, global1.c.x), vec4<bool>(false, var_0.c.x, global4.c.x, false), true)) % vec4<u32>(32u))));
    global1 = var_2;
    var var_3 = !select(select(select(select(vec4<bool>(true, true, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, false, var_2.c.x), vec4<bool>(global1.c.x, false, false, var_2.c.x)), select(vec4<bool>(global1.c.x, true, true, global1.c.x), vec4<bool>(false, global4.c.x, global4.c.x, false), vec4<bool>(false, global1.c.x, var_0.c.x, true)), any(vec3<bool>(global4.c.x, var_0.c.x, true))), !select(vec4<bool>(false, var_0.c.x, false, global4.c.x), vec4<bool>(true, global4.c.x, true, false), false), global4.c.x), !select(!vec4<bool>(false, var_2.c.x, global1.c.x, false), vec4<bool>(true, true, global4.c.x, false), select(vec4<bool>(true, var_2.c.x, var_2.c.x, global4.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_2.c.x), vec4<bool>(var_0.c.x, var_2.c.x, var_0.c.x, global4.c.x))), !any(global4.c));
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, abs(-u_input.b.x)), vec2<i32>(i32(-1i) * -16681i, -_wgslsmith_dot_vec2_i32(max(u_input.b, vec2<i32>(45515i, u_input.b.x)), firstLeadingBit(vec2<i32>(u_input.b.x, 3607i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_mult_u32(~var_0.a.x, 1u));
}

