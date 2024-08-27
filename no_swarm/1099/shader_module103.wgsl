struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = min(~_wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 12046u), vec4<u32>(81920u, 3727u, 0u, u_input.c)), vec4<u32>(u_input.c, firstLeadingBit(u_input.c), 1u, u_input.c)), ~(~vec4<u32>(~30406u, max(87552u, u_input.c), 4294967295u, u_input.c)));
    var var_1 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, all(vec3<bool>(true, false, true)), all(vec2<bool>(true, false)), all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), all(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.b.x > -26142i, u_input.c <= var_0.x, true), true)), !(!all(vec3<bool>(false, true, true))));
    var_1 = vec4<bool>(true, !(!var_1.x), all(select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.xxx, true), var_1.xzw, select(var_1.x, false, true))), any(vec2<bool>(false, !(!var_1.x))));
    let var_2 = u_input.b.zzw;
    var var_3 = vec3<bool>(true, select(true, false, false), true);
    return u_input.c | 23774u;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -977f), -56140i, Struct_1(select(2485u ^ max(u_input.c, 1u), 18943u, 12739u >= func_3()), vec2<bool>(true, false), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(-1070f)), _wgslsmith_f_op_f32(select(589f, 1885f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1014f)))), ~(-vec2<i32>(1i, -2147483647i)) ^ firstLeadingBit(firstTrailingBit(u_input.b.zw))));
    let var_1 = !var_0.c.b.x;
    var var_2 = var_0.c;
    return var_0.c.c.x;
}

fn func_1() -> vec4<f32> {
    var var_0 = Struct_1((u_input.c & ~_wgslsmith_div_u32(0u, u_input.c)) | u_input.c, !(!vec2<bool>(any(vec3<bool>(false, false, false)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1230f, -225f, 1622f) + vec3<f32>(977f, 475f, 1378f))))), firstTrailingBit(u_input.b.xy));
    var var_1 = 55325u;
    var_0 = Struct_1(u_input.c, select(!(!var_0.b), !select(!var_0.b, var_0.b, var_0.b), var_0.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c), vec3<f32>(-355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), var_0.c.x)), countOneBits(vec2<i32>(~var_0.d.x >> (37741u % 32u), u_input.a)));
    var var_2 = min(i32(-1i) * -1647i, var_0.d.x);
    let var_3 = ~var_0.d.x;
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, 1052f)) - var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)) * _wgslsmith_f_op_f32(func_2()))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.b.yww), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-229f, 783f, -596f, 552f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-752f, -362f, 421f, 1000f)))))), vec4<f32>(1f, 1f, 1f, 1f));
}

