struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = arg_3.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-939f)));
    return any(vec3<bool>(arg_1.x, arg_1.x, true));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> vec4<bool> {
    var var_0 = 1323f;
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = !select(vec2<bool>(true, true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true)));
    let var_2 = Struct_1(1076f);
    var_0 = -371f;
    return vec4<bool>(true, true || (true & var_1.x), all(select(!select(vec4<bool>(var_1.x, false, false, false), vec4<bool>(var_1.x, true, true, false), vec4<bool>(true, false, true, true)), !(!vec4<bool>(true, var_1.x, var_1.x, true)), vec4<bool>(true, var_1.x & false, select(false, false, var_1.x), any(var_1)))), !((1280f >= arg_0.x) | !var_1.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_2(false, true, !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(3149f, 172f, 420f)), arg_0.x), ~max(abs(-840i), _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, -2147483647i), 2147483647i)));
    var_0 = Struct_2(_wgslsmith_div_i32(~(-1i), ~0i << ((0u >> (1u % 32u)) % 32u)) >= var_0.d, true, select(vec4<bool>(true, true, var_0.a, !select(false, var_0.a, var_0.a)), select(var_0.c, !func_3(vec3<f32>(638f, -1000f, 272f), arg_1), !select(var_0.c, vec4<bool>(var_0.c.x, var_0.a, true, true), vec4<bool>(var_0.c.x, var_0.a, false, false))), var_0.a), 1i);
    let var_1 = _wgslsmith_clamp_i32(firstLeadingBit(-1i), ~var_0.d, _wgslsmith_div_i32(-var_0.d, var_0.d)) << (arg_0.x % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -693f) - -721f));
    var_0 = Struct_2(true, var_0.b, select(!(!var_0.c), !vec4<bool>(true, var_0.b, true, func_1(4294967295u, vec2<bool>(true, var_0.b), vec4<i32>(-9440i, -1i, var_1, -1i), vec2<i32>(var_0.d, var_1))), (~arg_1 >> ((arg_0.x >> (0u % 32u)) % 32u)) >= ~4294967295u), firstTrailingBit(reverseBits(abs(var_0.d)) << (25976u % 32u)));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(1026f - -1465f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, (1i > _wgslsmith_clamp_i32(-28553i, 1i, -2147483647i)) || true), vec3<bool>(4294967295u >= _wgslsmith_mod_u32(max(u_input.a.x, u_input.a.x), u_input.a.x), !any(vec4<bool>(true, true, true, true)), !func_1(u_input.a.x ^ u_input.a.x, select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec4<i32>(1i, 1i, 1i, 1i), vec2<i32>(1i, 1i))), vec3<bool>(false, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))));
    let var_1 = func_2(vec2<u32>(14714u, _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x) ^ _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), ~u_input.a.x);
    let var_2 = _wgslsmith_div_f32(var_1.a, var_1.a);
    var var_3 = true;
    let var_4 = func_2(vec2<u32>(_wgslsmith_mult_u32(1u, reverseBits(1u)), u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), select(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), var_0.x)) & select(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 29476u, u_input.a.x), false), abs(select(abs(u_input.a.x), u_input.a.x, var_0.x))));
    var_3 = any(select(var_0, vec3<bool>(var_0.x, false, true), select(var_0.x, false != all(var_0), true)));
    var_3 = any(select(vec2<bool>(all(vec4<bool>(false, false, false, var_0.x)) & true, func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(429f, -1656f, var_4.a) * vec3<f32>(-533f, -2638f, var_1.a)), ~53767u).x), !var_0.yy, vec2<bool>(true, var_0.x)));
    let var_5 = u_input.a;
    let var_6 = countOneBits(55348u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(_wgslsmith_clamp_i32(-17104i, 2147483647i, 11544i), 1i, var_0.x)) >> (~(~u_input.a.x) % 32u), firstLeadingBit(max(~abs(-33520i), -_wgslsmith_div_i32(-2147483647i, 10101i))));
}

