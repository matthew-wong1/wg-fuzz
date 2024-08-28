struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_5) -> f32 {
    return 569f;
}

fn func_1() -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -197f), -1077f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_2(-1208f, vec3<i32>(u_input.b, 2147483647i, -25526i), Struct_5(Struct_1(vec4<u32>(31610u, u_input.a.x, u_input.a.x, u_input.a.x), vec2<bool>(true, false), u_input.b, vec3<bool>(true, true, false)), Struct_2(u_input.a.x, Struct_1(vec4<u32>(u_input.a.x, 39718u, 58234u, u_input.a.x), vec2<bool>(false, false), u_input.d.x, vec3<bool>(false, true, false))), false))), _wgslsmith_f_op_f32(min(var_0.x, 251f)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1219f, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -507f, 2030f, _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) + vec4<f32>(292f, var_0.x, var_0.x, 961f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(553f, 1427f, -1243f, var_0.x) - vec4<f32>(var_0.x, -272f, var_0.x, 431f)) - vec4<f32>(138f, -762f, var_0.x, -1000f)))));
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.d.zx, vec2<i32>(u_input.d.x, 0i));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -572f);
    let var_4 = _wgslsmith_f_op_f32(abs(313f));
    return abs(vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 17725u, 4294967295u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: Struct_4) -> f32 {
    var var_0 = countOneBits(vec3<u32>(u_input.a.x, ~1u, _wgslsmith_dot_vec3_u32(arg_3.d.b.a.xxw << (abs(vec3<u32>(4294967295u, u_input.a.x, arg_2.a.a.x)) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(arg_2.a.a.x, 30189u, 1u)))));
    let var_1 = arg_3.a.zxx;
    var var_2 = countOneBits(arg_1.a.zww);
    let var_3 = func_1().x;
    var_2 = arg_1.a.wzy;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_u32(u_input.a, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-2147483647i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1000f, -1537f, 2722f), Struct_1(var_0, vec2<bool>(false, true), u_input.c.x, vec3<bool>(true, false, true)), Struct_5(Struct_1(vec4<u32>(var_0.x, 0u, u_input.a.x, var_0.x), vec2<bool>(false, false), 1i, vec3<bool>(false, true, true)), Struct_2(3629u, Struct_1(u_input.a, vec2<bool>(false, false), u_input.b, vec3<bool>(false, true, true))), true), Struct_4(vec4<f32>(1630f, -1237f, 907f, 1806f), -482f, false, Struct_2(4294967295u, Struct_1(vec4<u32>(u_input.a.x, 21181u, u_input.a.x, var_0.x), vec2<bool>(true, false), u_input.c.x, vec3<bool>(false, false, true)))))) * _wgslsmith_f_op_f32(floor(804f)))), -426f, 446f, -818f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(max(264f, -795f)), vec3<i32>(u_input.c.x, 0i, u_input.d.x) ^ u_input.d, Struct_5(Struct_1(var_0, vec2<bool>(false, false), u_input.d.x, vec3<bool>(true, false, true)), Struct_2(u_input.a.x, Struct_1(var_0, vec2<bool>(false, true), -31755i, vec3<bool>(false, true, true))), false))) + _wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(f32(-1f) * -906f), 1198f));
}

