struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -20620i), vec2<i32>(-44860i, -1i), vec2<i32>(i32(-2147483648), 61579i), vec2<i32>(1i, -8264i), vec2<i32>(1i, -33921i));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1035f))));
    global2 = Struct_1(vec3<bool>(true, all(!select(vec4<bool>(global2.d, global2.d, true, global2.a.x), vec4<bool>(global2.a.x, false, false, global3.a.x), global3.d)), arg_0.x < arg_0.x), ~(-1i), _wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, global3.c.x, 1u)), ~reverseBits(abs(vec3<u32>(22944u, 1u, 60105u)))), true);
    var var_0 = Struct_1(select(select(vec3<bool>(true, global2.a.x, true), global2.a, false), select(global2.a, !(!global3.a), all(vec2<bool>(false, true))), global3.a), -2386i, ~u_input.a.wxw, all(vec4<bool>(!(!global3.d), true, true, global2.a.x)));
    global2 = Struct_1(global2.a, 53194i, max(vec3<u32>(~32519u, _wgslsmith_mult_u32(~19794u, abs(global3.c.x)), 0u), _wgslsmith_clamp_vec3_u32(~countOneBits(arg_0.xxx), firstLeadingBit(global2.c), global2.c)), ~(~firstLeadingBit(var_0.c.x)) != 1u);
    let var_1 = var_0.b;
    return 1f;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> bool {
    global2 = Struct_1(vec3<bool>(all(global3.a.zy), all(vec4<bool>(false, all(global2.a.yy), false, any(vec2<bool>(true, false)))), false), countOneBits((1i >> ((arg_1.c.c.x << (u_input.a.x % 32u)) % 32u)) >> (30858u % 32u)), arg_1.c.c, true);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1531f));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(~u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_1.a.x)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(sign(-2282f)), global3.a.x)), arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, -1224f, 939f)), vec4<f32>(arg_1.a.x, arg_1.a.x, -1950f, -1177f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(var_0.zx, var_0.yw));
    global3 = Struct_1(vec3<bool>(any(vec2<bool>(true, global2.a.x)), !(!(true && global3.d)), !(_wgslsmith_div_u32(4294967295u, 1u) <= arg_1.c.c.x)), firstTrailingBit((i32(-1i) * -34140i) ^ arg_0), vec3<u32>(select(global3.c.x, ~global3.c.x, false), ~_wgslsmith_clamp_u32(global3.c.x, global3.c.x, arg_1.c.c.x), 4294967295u) ^ firstLeadingBit(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(2196u, u_input.a.x, 0u)), global3.c, vec3<u32>(global3.c.x, 1u, 0u))), any(!(!vec4<bool>(false, true, true, global2.d))));
    return !(!any(vec3<bool>(all(vec4<bool>(global2.a.x, global3.a.x, false, true)), arg_1.c.d, true | global2.d)));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, -1457f)) + vec2<f32>(1f, 1f)), vec2<f32>(-259f, _wgslsmith_f_op_f32(floor(-1659f)))))), !vec3<bool>(!global3.d, !arg_1.x, func_2(select(-1i, global2.b, global2.a.x), Struct_2(vec2<f32>(411f, -718f), global3.a, Struct_1(global2.a, 2147483647i, global2.c, arg_1.x)))), Struct_1(select(global3.a, vec3<bool>(arg_1.x, true, arg_1.x), global3.d), (global3.b & 34128i) ^ -(~global2.b), vec3<u32>(u_input.a.x, arg_0, ~0u), true));
    return 1728f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(0u, global2.c.x, 4294967295u, ~0u);
    var var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.c.x, global3.a.zx)) * _wgslsmith_f_op_f32(1489f * 272f)) > -881f, true, true), global2.a, false);
    var var_2 = select(!global2.a.xy, select(select(global2.a.zz, vec2<bool>(var_1.x, false), global2.a.x), global3.a.xx, vec2<bool>(all(select(global2.a, global2.a, false)), !global3.d)), global3.d);
    global0 = -196f;
    let var_3 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -642f)), -1314f))), vec2<i32>(global2.b, ~(~_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(global2.c.x, 6u)], vec2<i32>(-2147483647i, global3.b)))));
}

