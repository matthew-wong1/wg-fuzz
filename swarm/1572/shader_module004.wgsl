struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false));
    var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(-561f * _wgslsmith_f_op_f32(-var_0.a)))))), var_0.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2304f, var_0.a, _wgslsmith_f_op_f32(317f + -1250f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.a, var_0.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1859f))), var_0.b.a.wzx))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(648f, var_1.x, var_0.b.a.x)), _wgslsmith_f_op_f32(361f + -1164f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 589f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(2618f, 738f)), 211f) + _wgslsmith_f_op_vec2_f32(select(var_1.zz, _wgslsmith_f_op_vec2_f32(-var_1.yx), all(vec2<bool>(var_0.b.a.x, var_0.b.a.x))))))));
    var var_3 = all(select(select(!var_0.b.a.yw, vec2<bool>(!var_0.b.b, var_0.b.a.x), true), vec2<bool>(!(var_0.b.a.x & true), var_0.b.a.x), var_0.b.a.x));
    return ~min(~u_input.d.x, firstTrailingBit(4294967295u));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = ~(((~vec4<u32>(u_input.e.x, u_input.e.x, 13505u, u_input.d.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.b, u_input.e.x), vec4<u32>(21533u, u_input.d.x, 35125u, u_input.d.x), vec4<u32>(u_input.b, 75036u, u_input.b, 1623u)) % vec4<u32>(32u))) | ~(~vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, 31029u))) ^ (vec4<u32>(countOneBits(0u), abs(u_input.e.x), 14272u, u_input.e.x) & ~vec4<u32>(20307u, u_input.b, u_input.b, u_input.b)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3063f + 1825f) * -1702f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a - -575f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.a, arg_0.x, true)), _wgslsmith_f_op_f32(select(219f, 1000f, true)))))), arg_1);
    return _wgslsmith_mod_u32(min(~4294967295u, abs(u_input.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(22214u, func_3(abs(u_input.d.yy), 68090u, ~vec3<u32>(u_input.b, u_input.d.x, 60306u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 0u, var_0.x), reverseBits(u_input.d.x), _wgslsmith_dot_vec4_u32(var_0, var_0)), u_input.b), ~firstLeadingBit(vec4<u32>(var_0.x, 1u, 1u, 76750u))));
}

fn func_1() -> f32 {
    var var_0 = true;
    var var_1 = vec2<bool>(~func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-500f, -1206f, 1286f, -834f)), Struct_1(vec4<bool>(true, true, true, false), false), Struct_2(-867f, Struct_1(vec4<bool>(true, false, false, true), false)), u_input.a) < ~(~4294967295u & u_input.b), any(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), select(all(vec4<bool>(true, true, false, false)), select(false, false, false), true))));
    let var_2 = Struct_1(vec4<bool>(select(true, (47363u >= u_input.b) && any(vec2<bool>(var_1.x, var_1.x)), select(all(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x, true)), true, -1025f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(503f)) + _wgslsmith_f_op_f32(min(2469f, 1630f))), var_1.x), var_1.x);
    var var_3 = 88740i;
    let var_4 = select(vec3<bool>(true, select(true, true, !any(var_2.a)), var_2.b), select(var_2.a.xyx, select(!select(vec3<bool>(var_2.b, var_1.x, false), vec3<bool>(true, var_1.x, var_2.a.x), true), var_2.a.www, any(!var_2.a.xy)), _wgslsmith_div_f32(-507f, -1275f) <= _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(1000f, 878f, false)))), select(!var_2.a.wxz, select(var_2.a.wwy, var_2.a.wyx, var_2.a.x), false));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1014f)) + -379f) * _wgslsmith_f_op_f32(step(-402f, _wgslsmith_f_op_f32(min(-1000f, -1313f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1027f))), _wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f + -1154f)))), 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), -17679i);
}

