struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = u_input.c.x;
    return true;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    let var_0 = arg_0.x;
    return min(u_input.b.x, ~(~(~arg_2.x)) & arg_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = select(vec3<i32>(u_input.a.x, abs(min(u_input.a.x, u_input.a.x)), 1i), ~(-vec3<i32>(0i, u_input.a.x, u_input.a.x)) & vec3<i32>(~u_input.a.x, _wgslsmith_add_i32(-38030i, u_input.a.x), -u_input.a.x), select(select(!vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(false, arg_1.x, true)), !(!vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), false)) >> (~vec3<u32>(_wgslsmith_mod_u32(6163u, var_0.c), func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, arg_0.b, arg_0.a))), 1i, _wgslsmith_mult_vec2_u32(u_input.b.wz, u_input.b.zz), true), 1u) % vec3<u32>(32u));
    var_0 = Struct_1(-1711f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1202f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2847f))))), 48452u);
    var_0 = Struct_1(_wgslsmith_div_f32(839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -690f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2297f - arg_0.a) - _wgslsmith_div_f32(arg_2.b, var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), (func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, arg_0.a, 1000f)), firstTrailingBit(var_1.x), ~u_input.c.xz, true) & _wgslsmith_mult_u32(~0u, ~arg_2.c)) << (abs(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.c.zz) ^ max(1u, 0u)) % 32u));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(678f, arg_0.b) * _wgslsmith_f_op_f32(f32(-1f) * -740f))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: f32) -> u32 {
    var var_0 = -_wgslsmith_dot_vec3_i32(u_input.a, ~(~vec3<i32>(-14792i, 63168i, -5393i))) < 1i;
    var var_1 = false;
    var_1 = all(!select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, select(true, false, false), false), vec4<bool>(select(false, false, true), false, select(true, false, false), arg_2 <= -400f)));
    var var_2 = ~(-75789i);
    let var_3 = vec2<f32>(-407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -180f))))));
    return ~(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(~24326u, arg_1.x), ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-131f, -350f, true)))) + -292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1347f, _wgslsmith_f_op_f32(1371f + 656f)), -423f))), u_input.c.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-450f, var_0.a))))), var_0.b, func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c, u_input.b.x, 21554u), select(max(u_input.c.wyw, u_input.c.zxx), vec3<u32>(72954u, 0u, var_0.c), func_1(Struct_1(-505f, var_0.b, 0u)))), ~vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b.x), var_0.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(261f, _wgslsmith_f_op_f32(f32(-1f) * -976f)) - _wgslsmith_div_f32(939f, _wgslsmith_f_op_f32(func_2(Struct_1(1627f, 1358f, 94307u), vec2<bool>(true, true), Struct_1(var_0.b, var_0.a, 14474u)))))));
    var_0 = Struct_1(var_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1086f, var_0.b))))), min(~firstTrailingBit(~var_0.c), _wgslsmith_mod_u32(0u, 67292u)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-905f)))), _wgslsmith_f_op_f32(1777f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f + -848f)))), var_1.c);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-356f, _wgslsmith_f_op_f32(-var_0.b)), var_2.a)), var_0.b, _wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(u_input.b.x, (u_input.c.x >> (7646u % 32u)) << (_wgslsmith_mult_u32(var_2.c, 43211u) % 32u), _wgslsmith_mod_u32(abs(var_2.c), reverseBits(u_input.b.x))), ~firstLeadingBit(_wgslsmith_add_u32(3790u, var_1.c))));
    let var_3 = u_input.a.x;
    var_0 = Struct_1(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -193f), 4294967295u);
    let var_4 = Struct_1(var_2.b, _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(var_0.a * var_1.b)), ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(vec3<u32>(var_1.c, var_0.c, var_0.c) ^ u_input.b.yxz)), var_1.a);
}

