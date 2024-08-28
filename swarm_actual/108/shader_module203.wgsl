struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 2128f;

var<private> global1: vec4<f32> = vec4<f32>(-316f, 553f, -631f, -1000f);

var<private> global2: array<f32, 8> = array<f32, 8>(-1065f, -235f, 1163f, -1205f, 335f, -614f, -752f, -527f);

var<private> global3: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = global1.ywx;
    let var_1 = ~(~countOneBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 276u, 0u))));
    let var_2 = global3.e;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1.x, global1.x)))), 592f, global3.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global3.a.x)), _wgslsmith_f_op_f32(-1634f + global2[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_f_op_f32(trunc(1859f)), _wgslsmith_f_op_f32(min(global3.a.x, -211f)))), global3.b.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-691f, _wgslsmith_f_op_f32(exp2(var_0.x)))) + global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -487f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-313f, global1.x) * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_div_f32(global3.a.x, 377f), global3.c.a.x))), 791f));
    var_0 = _wgslsmith_f_op_vec3_f32(global1.xzy * global1.xzz);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(564f, var_0.x)))))));
}

fn func_2() -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1134f, global2[_wgslsmith_index_u32(15222u, 8u)], global3.a.x))))));
    var var_0 = vec4<u32>(u_input.a.x, 1u, u_input.a.x, _wgslsmith_add_u32(~(~u_input.a.x ^ ~u_input.a.x), u_input.a.x));
    var var_1 = false;
    let var_2 = Struct_1(global3.e.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(769f + -1000f), global3.a.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global3.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, global3.a.x)), true)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 275f) * global1.yx) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, var_3.x), _wgslsmith_f_op_vec2_f32(min(var_3, var_3)), vec2<bool>(var_2.a.x, global3.b.a.x)))))));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global1.xy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))), arg_0, Struct_1(select(arg_0.a, select(arg_0.a, global3.b.a, all(vec3<bool>(global3.e.a.x, global3.c.a.x, global3.c.a.x))), vec3<bool>(true, any(vec4<bool>(true, arg_0.a.x, global3.b.a.x, global3.e.a.x)), select(false, global3.e.a.x, arg_0.a.x)))), global3.d, global3.e);
    let var_1 = -(~1i);
    global3 = var_0;
    var var_2 = any(vec2<bool>(true, true));
    var var_3 = var_0;
    return vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-global1.x)) + 1192f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-101f + _wgslsmith_f_op_f32(global3.a.x - global2[_wgslsmith_index_u32(abs(4294967295u), 8u)]))), _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-1120f * _wgslsmith_f_op_f32(func_3()))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-470f, _wgslsmith_f_op_f32(trunc(global3.a.x)), -1000f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(func_1(global3.c)))) - vec4<f32>(_wgslsmith_f_op_f32(abs(-468f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -625f), _wgslsmith_f_op_vec2_f32(func_2()).x, global3.a.x)));
    var var_1 = vec3<u32>(~(~(~u_input.a.x | _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), _wgslsmith_add_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), u_input.a.x), ~_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, 13719u, 82252u, 34503u), min(vec4<u32>(1u, u_input.a.x, 0u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 46384u, 0u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(0u, 4294967295u, 31670u, 33176u), global3.e.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(10532u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(16122u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(11870u, 1u, u_input.a.x, 48761u)))));
    var_1 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(var_1.yx, vec2<u32>(u_input.a.x, 1u)), ~vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.a.x, var_1.x) ^ var_1.zx), vec2<u32>(u_input.a.x, ~u_input.a.x)), select(var_1.x, 1u, all(select(global3.c.a.zz, vec2<bool>(false, false), global3.c.a.x)) | all(select(global3.c.a.xy, vec2<bool>(false, global3.b.a.x), global3.e.a.zz))));
    var var_2 = global3.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.zx, vec3<f32>(-426f, _wgslsmith_f_op_f32(f32(-1f) * -715f), global2[_wgslsmith_index_u32(~(~u_input.a.x) | ~var_1.x, 8u)]), min(45782u & _wgslsmith_sub_u32(var_1.x, 9314u), firstTrailingBit(1u)) & var_1.x, _wgslsmith_dot_vec4_u32(~(reverseBits(vec4<u32>(1u, u_input.a.x, u_input.a.x, var_1.x)) & ~vec4<u32>(u_input.a.x, u_input.a.x, var_1.x, 67302u)), vec4<u32>(var_1.x, ~u_input.a.x, ~var_1.x, abs(var_1.x)) | ((vec4<u32>(20023u, 28568u, u_input.a.x, 36810u) & vec4<u32>(1u, 16951u, 4294967295u, 0u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 87244u, 1u, u_input.a.x), vec4<u32>(var_1.x, 8580u, 24711u, 0u)) % vec4<u32>(32u)))), global3.d.x);
}

