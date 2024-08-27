struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> vec4<u32> {
    return ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~(vec4<u32>(1u, u_input.a.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, u_input.b.x), ~1u, countOneBits(u_input.b.x), 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x << (u_input.a.x % 32u), ~u_input.a.x, 0u), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 49845u, 52154u) << (vec4<u32>(39575u, u_input.a.x, 0u, u_input.a.x) % vec4<u32>(32u)))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = !arg_0;
    var var_1 = Struct_1(-1i, !vec3<bool>(false, true, true || any(vec3<bool>(true, true, var_0))));
    var_1 = Struct_1(countOneBits(u_input.c.x), select(!(!var_1.b), vec3<bool>(any(vec4<bool>(arg_0, arg_0, var_0, false)), ~30935u <= u_input.a.x, u_input.e < 1i), true));
    let var_2 = _wgslsmith_sub_u32(4294967295u, ~u_input.a.x) << (~(~abs(4294967295u)) % 32u);
    var var_3 = (u_input.a.x <= 4294967295u) | (var_1.a == 1i);
    return !select(vec4<bool>(true, true, all(!var_1.b), var_0), !select(select(vec4<bool>(var_0, var_1.b.x, var_0, true), vec4<bool>(var_1.b.x, arg_0, var_0, arg_0), true), select(vec4<bool>(true, var_0, arg_0, false), vec4<bool>(false, false, arg_0, var_1.b.x), vec4<bool>(true, false, var_1.b.x, false)), !var_0), !any(!vec4<bool>(false, true, var_0, var_1.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_1(u_input.c.x, vec3<bool>(55129u > arg_2, arg_3.x, -firstLeadingBit(arg_0.a) >= (u_input.e << (_wgslsmith_dot_vec3_u32(vec3<u32>(50676u, 4294967295u, 1u), vec3<u32>(u_input.b.x, 52579u, u_input.a.x)) % 32u))));
    let var_1 = Struct_1(i32(-1i) * -var_0.a, !arg_0.b);
    let var_2 = ~func_2();
    var var_3 = Struct_1(~var_0.a, vec3<bool>(false, !arg_3.x, all(select(func_3(var_0.b.x), !vec4<bool>(arg_0.b.x, var_0.b.x, false, arg_3.x), arg_0.b.x || false))));
    let var_4 = var_1;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f * 522f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-599f, 1292f)) - -178f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1401f)) + _wgslsmith_f_op_f32(f32(-1f) * -1038f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-963f, _wgslsmith_f_op_f32(sign(-1185f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 628f, -235f, 925f))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(u_input.d, vec3<bool>(false, true, false)), false, u_input.a.x, vec2<bool>(false, true)))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -608f, 1000f, -950f) - vec4<f32>(-1498f, 411f, -745f, -836f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1037f, -100f, -1474f, -721f)))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(950f)))), _wgslsmith_f_op_f32(-1594f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(603f)))), _wgslsmith_f_op_f32(max(-542f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1678f, 164f) * 1f))), -278f)));
    var var_1 = -807f;
    let var_2 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) || any(vec4<bool>(true, false, false, true)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, (~(~0u) ^ ~_wgslsmith_mod_u32(u_input.b.x, 4294967295u)) << (u_input.a.x % 32u));
}

