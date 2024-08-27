struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = arg_1;
    global0 = Struct_1(_wgslsmith_sub_u32(~(~1u), _wgslsmith_mult_u32(global0.a ^ global0.c, global0.c)) << (~global0.a % 32u), !select(vec4<bool>(select(false, global0.b.x, false), all(global0.b.zy), global0.b.x, select(global0.b.x, global0.b.x, true)), select(vec4<bool>(global0.b.x, global0.b.x, false, false), select(global0.b, vec4<bool>(true, true, true, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), !global0.b.x), all(vec4<bool>(global0.b.x, true, true, global0.b.x))), global0.c);
    let var_1 = vec2<u32>(0u, 1u);
    let var_2 = Struct_1(~8654u, select(global0.b, !(!vec4<bool>(false, true, true, global0.b.x)), !vec4<bool>(!global0.b.x, global0.b.x || false, !global0.b.x, global0.b.x)), ~global0.c);
    let var_3 = ~(-firstLeadingBit(u_input.a.yz));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(286f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x * arg_0.x), _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(arg_0.x)))))) * _wgslsmith_f_op_vec2_f32(-arg_0.yz));
}

fn func_2() -> Struct_1 {
    let var_0 = (u_input.a.xx | vec2<i32>(41472i, abs(u_input.a.x))) | u_input.a.yx;
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-895f, 611f, -352f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-189f, 993f), vec2<f32>(-802f, -1666f))), vec2<f32>(-542f, 376f)), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -846f)), !(global0.b.x && global0.b.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-661f, _wgslsmith_f_op_f32(f32(-1f) * -1733f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(445f, -933f))))), global0.b.yz));
    var_1 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -812f, -1000f), vec4<f32>(var_1.x, 1202f, 522f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), Struct_2(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1606f)))))));
    var var_2 = ~(~_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(17808u, 1u)), vec2<u32>(1u, 1u)));
    let var_3 = -20368i;
    return Struct_1(max(~global0.c, ~42928u), select(!global0.b, !(!select(global0.b, global0.b, true)), global0.b.x), global0.c);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> u32 {
    global0 = func_2();
    var var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_2, 2386f) * vec3<f32>(arg_2, 2330f, 1560f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, 1841f, arg_2) + vec3<f32>(arg_2, arg_2, 1478f))) - vec3<f32>(899f, _wgslsmith_f_op_f32(-arg_2), arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(788f, arg_2, -192f) + vec3<f32>(-924f, arg_2, arg_2)), vec3<f32>(arg_2, arg_2, 788f))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.a)))));
    let var_1 = vec2<u32>(countOneBits(0u), ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(min(14792u, global0.a), 1u), ~_wgslsmith_sub_u32(global0.a, arg_1)));
    return _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(~arg_1, var_1.x, var_1.x)), ~(~abs(vec3<u32>(23285u, 4294967295u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-214f))) < _wgslsmith_f_op_f32(sign(-229f))), !global0.b.x, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(30692u, global0.c), global0.a) > func_1(true, 4294967295u, -109f));
    let var_1 = ~(-(i32(-1i) * -48386i));
    let var_2 = firstLeadingBit(~func_1(true, func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(509f, 1000f, 372f, 1355f), Struct_2(vec3<f32>(-398f, -1000f, 537f)))).x * -2175f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -241f), -1000f, 463f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1582f, -1286f, 828f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1409f, -638f, -978f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, 208f, 932f) - vec3<f32>(-1128f, 260f, 348f)))), !var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.a.ywz, vec3<f32>(var_3.x, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(trunc(386f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x) * 1f))), -1674f, ~1u);
}

