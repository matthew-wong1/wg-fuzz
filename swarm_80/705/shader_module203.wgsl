struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(~114289u, abs(1u)));
    let var_1 = Struct_1(~(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, var_0.a), 1u) | ~34982u));
    let var_2 = Struct_2(var_0, arg_0.x, max(~u_input.b, u_input.b));
    let var_3 = var_0;
    let var_4 = select(vec4<bool>(var_2.b, arg_2, arg_0.x, (var_3.a >= firstLeadingBit(var_0.a)) || false), select(vec4<bool>(true, true, true, false), vec4<bool>(countOneBits(-1i) >= select(-57155i, -1i, false), true, true, true && var_2.b), !(true | all(vec2<bool>(arg_2, arg_2)))), false);
    return Struct_3(Struct_1(var_3.a));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = 36549i;
    let var_1 = !select(vec3<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), false, true), vec3<bool>(true, false, all(vec2<bool>(true, true))), true);
    var_0 = 58499i;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(195f)), -160f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(323f, -594f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(263f, -944f)) + vec2<f32>(728f, 1723f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2478f, 791f))))))));
    var_0 = u_input.a.x;
    return -vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xz));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    var var_0 = vec3<f32>(arg_1.x, -353f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))), arg_2));
    let var_1 = vec2<i32>(-1i) * -(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -18642i), vec2<i32>(u_input.a.x, arg_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1240f, 785f), vec3<f32>(var_0.x, arg_1.x, -1182f), false)) - vec3<f32>(-175f, var_0.x, arg_2)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -711f, 1110f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1242f, arg_1.x, arg_1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1000f, -1000f) * vec3<f32>(415f, var_0.x, arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -689f), var_0.x, arg_2)))));
    let var_2 = vec2<u32>(9415u, 42807u) ^ vec2<u32>(u_input.b.x | u_input.b.x, min(reverseBits(1u), _wgslsmith_dot_vec3_u32(u_input.b.xxw, u_input.b.zwz >> (u_input.b.wzw % vec3<u32>(32u)))));
    var var_3 = vec2<bool>(~abs(68425u) >= (4294967295u << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_2.x, var_2.x), vec2<u32>(82700u, var_2.x)), u_input.b.ww) % 32u)), true);
    return _wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(4294967295u, 1u, 4294967295u));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(func_2(vec2<bool>(any(vec2<bool>(false, true)), u_input.a.x <= _wgslsmith_div_i32(u_input.a.x, 0i)), _wgslsmith_div_f32(-231f, _wgslsmith_f_op_f32(abs(-755f))), true), func_4(func_3(func_2(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-987f - -898f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1093f, -1952f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2022f * _wgslsmith_f_op_f32(min(410f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f - -163f) + -564f)))), vec3<i32>(abs(29197i) >> ((11298u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 15794u), u_input.b.zxz) % 32u)) % 32u), u_input.a.x, -2147483647i), u_input.b);
    let var_1 = var_0.a;
    let var_2 = firstTrailingBit(var_0.d >> (~var_0.d % vec4<u32>(32u)));
    var var_3 = Struct_4(Struct_3(func_2(vec2<bool>(true, true), -1000f, true).a), (1u ^ _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 119596u, 1u, 1u)), vec4<u32>(15959u, 0u, 60850u, var_1.a.a))) << (var_1.a.a % 32u), var_0.c, ~u_input.b);
    var var_4 = !all(vec3<bool>(true, true, true));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * 1119f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1717f - -1280f))), _wgslsmith_f_op_f32(168f - _wgslsmith_f_op_f32(func_1()))))), -1138f, _wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-274f)), _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(sign(-284f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(933f - 628f)))));
    let var_1 = Struct_2(Struct_1(1u), !any(vec3<bool>(true, true, true)), u_input.b);
    let var_2 = Struct_3(Struct_1(4294967295u));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-123f, -1963f, var_0.x, -1672f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1561f, var_0.x, -453f, var_0.x), vec4<f32>(var_0.x, var_0.x, -605f, -1557f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(216f, var_0.x, -1000f, -1000f), vec4<f32>(var_0.x, 494f, -463f, 369f), true))))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -572f, 1423f, 436f))))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(164f - -853f) + _wgslsmith_f_op_f32(var_0.x + -375f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + 542f), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), -893f)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2148f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(353f * var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -746f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, -1155f)), 365f)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(821f, 1000f, -2071f, _wgslsmith_f_op_f32(f32(-1f) * -1214f)), vec4<f32>(252f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2363f, var_0.x, var_0.x, 1085f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(173f, var_0.x, var_0.x, var_0.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(249f))), var_0.x)), ~u_input.a.x);
}

