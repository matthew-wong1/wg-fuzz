struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1225f)), _wgslsmith_f_op_f32(-arg_2)) - -1163f), -175f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(223f, _wgslsmith_f_op_f32(min(-416f, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(477f + -330f), -2537f), true)));
    let var_1 = Struct_1(11800i);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_2)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) * _wgslsmith_f_op_f32(arg_2 * 586f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_1, arg_1, _wgslsmith_f_op_f32(-arg_1)) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 706f), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(arg_1, -2101f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(arg_2 * -169f), -551f, _wgslsmith_f_op_f32(f32(-1f) * -1245f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-439f, -306f, -147f, arg_2), vec4<f32>(-116f, 963f, var_0.x, -423f)))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1921f)) * _wgslsmith_f_op_f32(-arg_2)))), -924f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_2 - 495f))));
    let var_3 = vec2<u32>(u_input.c.x | ~106435u, _wgslsmith_div_u32(countOneBits(~(~0u)), _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_add_u32(reverseBits(u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)))));
    return true;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_1(arg_0);
    var var_1 = vec3<bool>(func_3(Struct_1(var_0.a), 269f, _wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x + -1000f) * _wgslsmith_div_f32(arg_1.c.x, arg_1.d)))), true, arg_1.a);
    var_1 = vec3<bool>(true, true, arg_1.a);
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(arg_1.b.x, 8707u)), select(select(arg_1.b.zz, _wgslsmith_div_vec2_u32(u_input.c.xz, vec2<u32>(3918u, arg_1.b.x)), var_1.zy), min(~vec2<u32>(39905u, u_input.c.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_1.b.x), u_input.c.yz, vec2<u32>(0u, 48000u))), 606f > _wgslsmith_div_f32(arg_1.c.x, arg_1.d))), _wgslsmith_clamp_vec2_u32(arg_1.b.xz, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c | u_input.c, ~arg_1.b), ~u_input.c.x), arg_1.b.xz));
    var_0 = Struct_1(var_0.a);
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(31589i, reverseBits(var_0.a) >> (firstTrailingBit(var_2.x) % 32u), u_input.a.x, ~0i), vec4<i32>(firstTrailingBit(firstTrailingBit(2147483647i)), select(0i, _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(-2147483647i, 2147483647i)), any(select(var_1.yx, var_1.xx, false))), max(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-34252i, 30599i), vec2<i32>(-7081i, arg_0)), min(u_input.a, u_input.a)), _wgslsmith_clamp_i32(~u_input.a.x, 1i, firstLeadingBit(-2135i))), var_0.a));
}

fn func_1() -> vec2<bool> {
    let var_0 = u_input.a;
    let var_1 = vec2<bool>(!((18738u >= u_input.c.x) && true) | !((u_input.a.x | var_0.x) != func_2(1i, Struct_2(false, u_input.c, vec4<f32>(273f, 1065f, 2382f, -2064f), 291f))), select(!(any(vec4<bool>(true, true, false, true)) && true), select(func_3(Struct_1(-1i), _wgslsmith_f_op_f32(f32(-1f) * -443f), -1538f), true, true), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1726f - -122f) * 1626f)), _wgslsmith_f_op_f32(-1f), 859f));
    let var_3 = 18911u;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -532f) >= _wgslsmith_f_op_f32(round(-694f)), abs(firstTrailingBit(u_input.c) & u_input.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-660f, var_2.x, var_2.x, var_2.x))))))), vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(1000f - 428f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) * _wgslsmith_div_f32(var_2.x, -1151f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.x)))), -1088f)), -404f);
    return select(vec2<bool>(any(!vec2<bool>(var_4.a, var_1.x)), false), vec2<bool>(select(false, !(var_1.x | var_1.x), !var_4.a), true), vec2<bool>(var_4.a, !all(select(vec2<bool>(true, false), vec2<bool>(true, var_4.a), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_i32(0i, u_input.a.x));
    let var_1 = select(select(select(select(vec2<bool>(false, false), func_1(), true), !func_1(), vec2<bool>(all(vec4<bool>(false, true, true, false)), true)), vec2<bool>(true, any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)))), func_1().x), !(!func_1()), select(vec2<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), false), vec2<bool>(true, true), select(vec2<bool>(true, true), func_1(), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_2 = Struct_1(select(20873i, _wgslsmith_clamp_i32(var_0.a, -(2147483647i << (u_input.b % 32u)), 5190i), true));
    var_2 = Struct_1(~var_2.a);
    let var_3 = Struct_1(~2147483647i);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, firstTrailingBit(max(_wgslsmith_div_vec3_u32(abs(u_input.c), ~vec3<u32>(4294967295u, 4294967295u, 1u)), ~(vec3<u32>(7408u, u_input.c.x, u_input.b) ^ u_input.c))), (((vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.b) | vec4<u32>(u_input.c.x, 26273u, u_input.c.x, u_input.c.x)) >> (~vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.c.x) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.b))) | min(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.b), vec4<u32>(36725u, u_input.b, u_input.c.x, u_input.b)), u_input.b, 0u, u_input.c.x), vec4<u32>(0u, u_input.b | 12282u, u_input.b, 39277u)));
}

