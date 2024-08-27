struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(-157f, _wgslsmith_f_op_f32(1733f - 1000f))), _wgslsmith_f_op_f32(min(594f, _wgslsmith_f_op_f32(-1958f + 1551f))))))));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x & ~u_input.c, ~u_input.a.x), 1u & _wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.c, u_input.a.x), max(~4294967295u, 78568u << (u_input.c % 32u))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-552f)) * var_0.x), 143f);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -986f)))));
    let var_3 = Struct_1(var_2);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1096f, var_2) * var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f - -390f) * 444f))), -524f, -575f));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    let var_0 = firstTrailingBit(vec2<u32>(61409u, _wgslsmith_sub_u32(~1u, ~4294967295u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(arg_0.yyw))))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, var_1.x, 605f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1250f, 160f, -712f) * vec4<f32>(183f, 1484f, -1321f, -223f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, var_1.x, 1553f, var_1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -752f, 194f, 1647f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, var_1.x, -398f, var_1.x)))))));
    let var_2 = 26963u < ((_wgslsmith_clamp_u32(var_0.x, u_input.c, 1u) ^ countOneBits(u_input.a.x & 16373u)) >> (reverseBits(1u) % 32u));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(168f, var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return !vec3<bool>(select(all(arg_0), false, all(select(vec3<bool>(arg_0.x, var_2, arg_0.x), arg_0.zzx, vec3<bool>(true, arg_0.x, false)))), (~u_input.a.x >= _wgslsmith_sub_u32(u_input.c, 1u)) != any(arg_0.zzx), true | all(select(arg_0.xyz, vec3<bool>(arg_0.x, true, true), arg_0.zxx)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = vec2<u32>(u_input.c, ~reverseBits(~0u) << (_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~19428u), _wgslsmith_div_u32(4294967295u, firstTrailingBit(u_input.a.x))) % 32u));
    let var_1 = true;
    let var_2 = all(select(func_2(vec4<bool>(true, u_input.c <= var_0.x, true, any(vec4<bool>(var_1, false, false, false)))), vec3<bool>(!(!var_1), all(vec3<bool>(false, false, true)), true), var_1));
    var_0 = ~(vec2<u32>(select(u_input.c, 26383u, var_1), u_input.c) << (vec2<u32>(u_input.a.x, 35922u) % vec2<u32>(32u))) & vec2<u32>(~abs(u_input.c), ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, var_0.x), select(1u, var_0.x, false)));
    let var_3 = all(select(select(!vec4<bool>(var_1, true, var_2, var_1), !vec4<bool>(true, var_1, true, true), var_1), select(vec4<bool>(arg_0.a < arg_0.a, arg_2.a == arg_2.a, false, arg_1 >= 19635i), !vec4<bool>(var_1, var_1, var_2, true), !vec4<bool>(false, true, var_1, var_2)), true));
    return all(!select(!vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(!var_2, all(vec3<bool>(true, false, false)), false, !var_1), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.b.x >= (-(~1i) << (~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u))) & func_1(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(414f + 1517f)))), max(0i, _wgslsmith_div_i32(u_input.b.x, -u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f) - 106f)));
    var var_1 = 782f;
    let var_2 = Struct_1(1017f);
    let var_3 = ~(~select(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 0u), ~22404u), u_input.a.x, !all(vec4<bool>(true, true, false, false))));
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_i32(countOneBits(1i), _wgslsmith_add_i32(-21500i, u_input.b.x)), -1i), -203f, u_input.a.x);
}

