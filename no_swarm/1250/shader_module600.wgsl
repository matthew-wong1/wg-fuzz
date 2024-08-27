struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = !vec4<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(true, true), -10714i >= u_input.a)), (select(true, false, false) | true) | any(vec2<bool>(true, true)), false);
    var var_1 = Struct_1(~abs(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(47232u, 210u, u_input.b)), ~u_input.b, _wgslsmith_mod_u32(u_input.b, 51820u))), true, vec2<u32>(u_input.b, u_input.b), vec2<bool>(any(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(false, false, true, var_0.x), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true))), !all(var_0.xw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1191f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1151f + _wgslsmith_div_f32(569f, -692f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2031f))))));
    var_0 = select(select(!vec4<bool>(!var_1.d.x, true, any(vec4<bool>(var_0.x, var_0.x, false, false)), true), !vec4<bool>(!var_0.x, true, true, true), var_0.x), select(!(!(!vec4<bool>(var_1.d.x, var_1.d.x, true, false))), !(!(!vec4<bool>(false, var_1.d.x, var_1.b, true))), 1000f > _wgslsmith_f_op_f32(var_1.e - _wgslsmith_f_op_f32(-633f * -270f))), !select(!select(vec4<bool>(true, var_0.x, var_1.d.x, var_0.x), vec4<bool>(false, false, var_1.d.x, false), true), !vec4<bool>(var_1.b, var_1.b, false, var_1.b), !(!vec4<bool>(var_0.x, var_0.x, var_1.d.x, false))));
    var_1 = Struct_1(var_1.a, !var_1.d.x, var_1.c, select(vec2<bool>(var_1.d.x, max(u_input.c, u_input.a) >= ~(-2147483647i)), select(!(!var_1.d), select(select(vec2<bool>(var_1.b, var_0.x), vec2<bool>(false, var_1.d.x), var_0.yy), !var_0.yz, !var_1.b), select(select(var_1.d, var_0.xy, var_1.d), var_0.yz, true)), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.e, var_1.e)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e, var_1.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, 571f))), select(var_1.d, var_0.yw, all(vec3<bool>(var_1.d.x, var_1.d.x, var_0.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.e)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.e)))))));
    return vec2<u32>(~21278u, 0u) ^ min(select(vec2<u32>(u_input.b, _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b)), firstLeadingBit(var_1.a.xw | vec2<u32>(u_input.b, u_input.b)), select(vec2<bool>(var_1.b, var_1.d.x), var_0.wz, var_0.zx)), abs(abs(select(vec2<u32>(u_input.b, 26091u), vec2<u32>(0u, 1u), var_1.d))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = Struct_1(~select(arg_0.a, vec4<u32>(1u, 1u, u_input.b, ~0u), vec4<bool>(true, true, true, true)), !arg_0.d.x, func_3(), select(vec2<bool>(arg_0.b || (false == arg_0.b), any(!vec2<bool>(arg_0.d.x, arg_0.d.x))), !(!(!vec2<bool>(false, arg_0.b))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1166f))))));
    var var_1 = 6653u;
    var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~u_input.b), u_input.b, ~(arg_0.c.x ^ 1u), arg_0.a.x), ~(vec4<u32>(1058u, arg_0.a.x, _wgslsmith_mult_u32(0u, u_input.b), arg_1) & (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 17355u, var_0.a.x), vec4<u32>(arg_1, 0u, arg_0.a.x, var_0.c.x)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, var_0.a.x, 47665u, arg_1), vec4<u32>(arg_1, 6662u, 23799u, 0u)))));
    var var_2 = Struct_1(abs(arg_0.a), arg_0.d.x, max(_wgslsmith_mult_vec2_u32(vec2<u32>(abs(arg_1), _wgslsmith_sub_u32(13234u, var_0.c.x)), ~(~var_0.a.yw)), ~(~vec2<u32>(var_0.c.x, 3076u))), !select(!(!arg_0.d), select(vec2<bool>(false, true), !vec2<bool>(var_0.b, true), select(vec2<bool>(arg_0.b, arg_0.d.x), arg_0.d, var_0.b)), !(arg_0.c.x < 40830u)), -1000f);
    let var_3 = -864f;
    return -1775f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(233f, 510f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(573f, 447f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(939f, -1289f)) + 1191f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, u_input.b), true, vec2<u32>(1u, 0u), vec2<bool>(true, true), 1302f), 34983u))), _wgslsmith_f_op_f32(floor(-388f))))));
    var var_1 = 4359u;
    var var_2 = abs(select(reverseBits(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(53806u, u_input.b), vec2<u32>(u_input.b, 0u)))), select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u) | vec2<u32>(4294967295u, u_input.b), max(vec2<u32>(u_input.b, 89981u), vec2<u32>(125827u, u_input.b))), select(~vec2<u32>(0u, 9753u), ~vec2<u32>(u_input.b, u_input.b), false), vec2<bool>(true, true)), vec2<bool>(0u <= u_input.b, true)));
    let var_3 = vec4<i32>(u_input.a, max(-2147483647i, abs(u_input.a >> (_wgslsmith_sub_u32(0u, var_2.x) % 32u))), u_input.a | -35122i, ~u_input.c);
    var_1 = u_input.b;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = Struct_1(vec4<u32>(646u, _wgslsmith_div_u32(u_input.b | 19390u, 56159u), _wgslsmith_div_u32(1u, 63311u), ~17715u), true, countOneBits(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), u_input.b) << (vec2<u32>(_wgslsmith_mod_u32(u_input.b, 55864u), ~34666u) % vec2<u32>(32u))), select(vec2<bool>(-1017f <= _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(trunc(666f)) != _wgslsmith_f_op_f32(f32(-1f) * -365f)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), 109f);
    let var_2 = 4294967295u;
    let var_3 = Struct_1(~var_1.a, !(!all(var_1.d)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.a.yw, var_1.a.xy), min(u_input.b, 75698u)), 4294967295u), 0u), !(!vec2<bool>(any(vec4<bool>(var_1.d.x, var_1.d.x, false, false)), true)), var_1.e);
    let var_4 = _wgslsmith_f_op_f32(-var_3.e);
    var var_5 = _wgslsmith_div_f32(var_4, -202f);
    var_5 = _wgslsmith_f_op_f32(-var_3.e);
    var var_6 = _wgslsmith_mod_i32(u_input.c, -1i << (~max(u_input.b, ~55571u) % 32u));
    var var_7 = Struct_1(~vec4<u32>(152619u, reverseBits(var_2), var_2, ~abs(82766u)), any(!(!select(vec4<bool>(var_1.b, var_3.b, false, true), vec4<bool>(false, true, false, true), false))), ~max(vec2<u32>(var_2, var_3.c.x) ^ ~vec2<u32>(0u, var_1.a.x), ~var_1.c), !(!var_1.d), 873f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, -2246f, var_4)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2023f, var_3.e, -722f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1559f, var_1.e, var_1.e)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3.e, -232f, var_3.e)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_7.e, var_7.e, var_1.e)))))));
}

