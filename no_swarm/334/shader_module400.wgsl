struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> vec2<bool> {
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-745f))) < _wgslsmith_div_f32(227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1558f, -2629f, false)) * _wgslsmith_f_op_f32(-1000f - 1677f))), !(!(!all(vec3<bool>(false, true, false)))));
}

fn func_3() -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1315f, _wgslsmith_f_op_f32(trunc(1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-719f)) - _wgslsmith_f_op_f32(trunc(-2057f)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec2<bool>(false, !(!all(vec4<bool>(false, false, false, true)))), func_2(), !(!(!func_2())));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-926f, _wgslsmith_f_op_f32(func_3()), 3799f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-1484f, -740f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-270f, -1000f))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(201f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1892f, 770f)) + _wgslsmith_f_op_f32(f32(-1f) * -1143f)))), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1448f, 819f), _wgslsmith_f_op_f32(round(770f)))), 1000f));
    var_0 = vec2<bool>(all(vec3<bool>(var_0.x, ~(-20590i) >= ~u_input.a.x, any(vec2<bool>(true, true)))), var_0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.zyz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.wzz, _wgslsmith_f_op_vec3_f32(floor(var_1.wxx)))) + vec3<f32>(-1978f, _wgslsmith_f_op_f32(197f + 864f), _wgslsmith_f_op_f32(var_1.x - -438f)))), vec2<bool>(!any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, false), false)), var_0.x), _wgslsmith_div_f32(-1306f, -131f), select(select(!vec4<bool>(true, var_0.x, true, var_0.x), select(!vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x | true), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, false, var_0.x, false))), select(vec4<bool>(var_0.x, var_0.x | true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, false), !vec4<bool>(var_0.x, true, false, var_0.x), false), vec4<bool>(var_0.x != var_0.x, !var_0.x, true, true || var_0.x)), _wgslsmith_f_op_f32(round(-826f)) < _wgslsmith_f_op_f32(-var_1.x)), 13491i);
    let var_3 = var_0.x;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 1950f, 310f, var_0.a.x)))))), ~((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 9773i), vec2<i32>(1i, 34673i)) << (max(34493u, 0u) % 32u)) >> (~(~54935u) % 32u)), _wgslsmith_f_op_f32(floor(var_0.c)), abs(1u), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(4037u, 29202u, 1u, 0u), vec4<u32>(35973u, 1u, 99786u, 4294967295u), vec4<bool>(var_0.d.x, var_0.b.x, false, var_0.b.x)), vec4<u32>(1u, 1u, 1u, 1u)), 55695u));
}

