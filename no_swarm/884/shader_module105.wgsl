struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_1,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = Struct_1(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - -818f), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), true), true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), false), 0u, u_input.a);
    var var_1 = 1u;
    var var_2 = select(var_0.c.xyx, select(var_0.c.yyy, select(!(!var_0.c.xwz), !var_0.c.wzy, var_0.c.x), !(!var_0.c.x)), !vec3<bool>(var_0.c.x, var_0.c.x, !(!var_0.c.x)));
    var_1 = var_0.d;
    var_2 = select(var_0.c.xxw, var_0.c.xyw, true);
    return (_wgslsmith_sub_i32(1i, -_wgslsmith_div_i32(3472i, 29197i)) << (reverseBits(~var_0.e) % 32u)) >> (1u % 32u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(688f, arg_1))), -752f, _wgslsmith_f_op_f32(abs(1384f))))));
    var var_1 = Struct_3(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 45812u), vec3<u32>(0u, u_input.b, 34703u)), abs(24408u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(181f + arg_1), _wgslsmith_f_op_f32(abs(arg_1))));
    var_1 = Struct_3(28960u, _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = Struct_2(!all(select(!vec3<bool>(arg_2.x, arg_2.x, false), !vec3<bool>(arg_2.x, true, false), true)));
    let var_3 = Struct_4(_wgslsmith_mod_i32(~func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, var_1.b, var_0.x, var_1.b) + vec4<f32>(arg_1, 909f, var_1.b, 620f))), -1i));
    return arg_1;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false, -1516f, vec2<bool>(true, false))) * _wgslsmith_f_op_f32(func_2(false, -971f, vec2<bool>(false, false)))) * 616f)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1180f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1453f)))));
    var_0 = true;
    let var_1 = Struct_5(Struct_3(min(u_input.b, 38650u), 958f), Struct_4(abs(firstLeadingBit(reverseBits(26042i)))), Struct_1(~97732u, _wgslsmith_f_op_f32(f32(-1f) * -1007f), vec4<bool>(true, true, false, false), _wgslsmith_div_u32(~arg_0 << (arg_0 % 32u), arg_0), 56929u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, -1300f) * vec2<f32>(-309f, 1094f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-545f, -857f, 216f)))))));
    var_0 = var_1.c.c.x;
    var var_2 = !var_1.c.c;
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b);
    var var_1 = Struct_1(4294967295u, 724f, !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true), u_input.a, 12616u >> (u_input.b % 32u));
    let var_2 = -1i;
    let var_3 = Struct_3(0u, var_1.b);
    var var_4 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2, -2147483647i, 1i), abs(vec4<i32>(var_2, var_2, 1i, var_2) >> (vec4<u32>(u_input.a, 1u, 1u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mod_i32(1i, var_2), firstTrailingBit(countOneBits(var_2)) >> (_wgslsmith_mult_u32(~u_input.b, 1u | var_3.a) % 32u), ~(max(var_2, 79047i) & var_2));
    var var_5 = max(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, ~var_3.a), ~firstLeadingBit(vec2<u32>(var_1.a, u_input.b))), reverseBits(vec2<u32>(39463u, _wgslsmith_clamp_u32(var_1.d, var_1.d, var_1.e) ^ 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.a ^ ~min(23627u, 4294967295u)), 70977u >> (var_5.x % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1689f, 471f, var_3.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-217f, var_3.b, 1118f) * vec3<f32>(var_3.b, var_3.b, var_1.b)))), vec3<f32>(var_1.b, _wgslsmith_f_op_f32(floor(var_1.b)), 600f))) - vec3<f32>(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -505f), -1056f)), select(-(~var_4.x), var_2, any(vec2<bool>(var_1.c.x, var_4.x < 0i))));
}

