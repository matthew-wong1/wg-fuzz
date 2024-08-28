struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    let var_0 = any(select(!vec4<bool>(true, false, arg_0 == 12481u, true), vec4<bool>(true, true, true, true), (_wgslsmith_f_op_f32(step(715f, -290f)) > -594f) && !all(vec4<bool>(false, true, false, false))));
    let var_1 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(0u, 32288u))), ~(14940u << (_wgslsmith_mod_u32(4294967295u, arg_0) % 32u)), arg_0 ^ firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(0u, arg_0, 23378u, arg_0)), vec4<u32>(~arg_0, ~56288u, arg_0 & arg_0, arg_0 ^ 86329u)));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-249f, 647f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 304f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f + -1651f)))))));
    var var_3 = vec3<u32>(~(~arg_0), arg_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.ww), var_1.wz) & _wgslsmith_mod_u32(var_1.x, min(11598u, var_1.x)), ~16449u));
    var var_4 = Struct_4(var_2.a.x <= -755f, var_2.b, var_2, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, 368f)), -1148f, 1158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1177f, _wgslsmith_div_f32(var_2.a.x, 880f))) * 800f)), var_2);
    return !vec2<bool>(false, var_0);
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1167f)))));
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(582f - var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-661f - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_f32(round(var_0.x))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(-var_1.a.b));
    let var_2 = -15013i;
    var var_3 = vec3<bool>(true, false, any(!func_3(firstTrailingBit(29912u))));
    return _wgslsmith_f_op_f32(-var_1.a.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(abs(arg_2.x)), arg_0.b)) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1140f, arg_1.a.x)) * 383f), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(abs(arg_1.b))), _wgslsmith_f_op_f32(func_2(~1u, _wgslsmith_mod_u32(0u, 1u)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | !(!(false | (2147483647i <= u_input.b.x)));
    var var_1 = vec4<bool>(true, (_wgslsmith_clamp_u32(~36101u, 1u << (1u % 32u), ~1u) < 4294967295u) | any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), all(vec4<bool>(func_1(Struct_1(vec3<f32>(-1000f, -304f, 720f), 946f), Struct_1(vec3<f32>(-854f, -393f, 1709f), 1000f), vec3<f32>(836f, 775f, -1106f)) && any(vec4<bool>(true, true, true, true)), false, true, true)), true);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1859f, -1528f, -1000f, 681f), vec4<f32>(345f, 1786f, -1888f, -1443f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, -909f, -807f, -1668f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -963f), _wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_div_f32(-664f, 510f), _wgslsmith_f_op_f32(sign(1834f)))))) + vec4<f32>(1f, -1886f, _wgslsmith_f_op_f32(select(534f, 787f, select(var_2, var_2, !var_1.x))), -223f));
    let var_4 = vec4<u32>(~abs(reverseBits(~4294967295u)), abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 53500u, 14410u), vec4<u32>(10977u, 4294967295u, 4294967295u, 4294967295u)))) & ~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(~4289u, reverseBits(~4294967295u), _wgslsmith_mod_u32(~25554u, 1u)), ~(select(vec3<u32>(1u, 0u, 23278u), vec3<u32>(42537u, 1u, 0u), true) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 23792u, 4294967295u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 53258u, 4294967295u)))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, 1u), ~(~(~4294967295u)), select(1u, 1u, !(!var_2))));
    var var_5 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(759f, var_3.x)), _wgslsmith_f_op_f32(453f * 1038f), _wgslsmith_f_op_f32(var_3.x + -896f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -629f)), !var_1.zyw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(func_2(8747u, var_4.x))), 579f))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.ywx * var_3.wwy)), var_3.x)), false, true);
    var var_6 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(abs(4294967295u), ~var_4.x, var_4.x));
    let var_7 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.b, 571f, var_3.x)), var_3.zwx);
    var_6 = _wgslsmith_clamp_u32(reverseBits(1u << (_wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_add_u32(var_4.x, var_4.x)) % 32u)), 98217u, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_5.c.a.b, _wgslsmith_f_op_f32(-var_7.x), var_5.a.b, var_5.b), ~(var_4.wwx & vec3<u32>(var_4.x >> (64092u % 32u), ~var_4.x, firstTrailingBit(1u))), _wgslsmith_dot_vec2_i32(~u_input.b, ~reverseBits(vec2<i32>(1i, -1i)) << (vec2<u32>(var_4.x, var_4.x) % vec2<u32>(32u))));
}

