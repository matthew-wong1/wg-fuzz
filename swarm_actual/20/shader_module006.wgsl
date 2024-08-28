struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<f32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> vec4<i32> {
    let var_0 = arg_2;
    global1 = array<vec3<f32>, 8>();
    let var_1 = vec4<i32>(~(-u_input.a), _wgslsmith_mult_i32(firstLeadingBit(1i), abs(countOneBits(arg_1.d))), reverseBits(abs(-2147483647i)), abs(arg_1.d));
    let var_2 = arg_1.a;
    let var_3 = var_1;
    return vec4<i32>(10636i, 1i, var_1.x, 0i);
}

fn func_3() -> f32 {
    let var_0 = ~select(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 14697u, 4244u), ~31993u), max(countOneBits(37056u), _wgslsmith_mod_u32(1u, 4294967295u))), 43027u, true);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-183f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-457f, -339f))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, _wgslsmith_div_u32(var_0, ~22223u)), vec2<u32>(4294967295u, 10831u), ~(~vec2<u32>(var_0, ~var_0)));
    var var_2 = select(!(!all(vec2<bool>(true, true))), false, any(vec2<bool>(all(vec2<bool>(false, false)), false))) | !(!any(vec2<bool>(true, true)));
    var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, var_1.x), ~vec2<u32>(~var_0, var_0) | ~vec2<u32>(28480u, var_1.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1010f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(894f, _wgslsmith_f_op_f32(max(2216f, -1370f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(705f + -741f))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-733f)), abs(arg_1), ~(~arg_1), _wgslsmith_dot_vec3_i32(arg_0.wyx, _wgslsmith_mod_vec3_i32(-arg_0.yzw, arg_0.xyz & vec3<i32>(-1i, 31519i, arg_0.x)) ^ select(vec3<i32>(arg_0.x, -30032i, 2147483647i), -vec3<i32>(u_input.c.x, -1875i, 53338i), false)), ~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1, 0u), 1u)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(func_3()), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(2402f - -233f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), var_0.a);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1685f - _wgslsmith_f_op_f32(var_1.x * var_0.a)), 331f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))));
    global1 = array<vec3<f32>, 8>();
    var var_2 = !vec2<bool>(true, all(vec2<bool>(any(vec2<bool>(false, false)), true)));
    return select(max(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, var_0.e, var_0.e), vec4<u32>(0u, 0u, var_0.c, var_0.e), vec4<u32>(1u, 0u, 0u, 30776u)), vec4<u32>(4294967295u, 47989u, arg_1, arg_1) & vec4<u32>(11625u, 0u, arg_1, 4294967295u)) & (~vec4<u32>(1u, 9099u, var_0.c, arg_1) | ~vec4<u32>(arg_1, var_0.b, arg_1, var_0.b)), vec4<u32>(~1u, countOneBits(var_0.b), 65437u, max(var_0.e, var_0.e)) << (((vec4<u32>(var_0.b, 4294967295u, 949u, var_0.c) ^ vec4<u32>(arg_1, arg_1, 52440u, 1u)) & ~vec4<u32>(var_0.e, 0u, var_0.e, 4294967295u)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_u32(max(vec4<u32>(var_0.e, 63762u, 0u, var_0.c), ~vec4<u32>(var_0.e, var_0.e, 4294967295u, arg_1)), select(vec4<u32>(arg_1, arg_1, arg_1, 0u) | vec4<u32>(39112u, arg_1, var_0.b, var_0.e), ~vec4<u32>(arg_1, 1u, 59949u, arg_1), !var_2.x)), !((false | var_2.x) & true) || var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 8>();
    global1 = array<vec3<f32>, 8>();
    let var_0 = ~(vec4<u32>(1u, 1u, 1u, 1u) | func_2(func_1(0u, Struct_1(505f, 68033u, 0u, u_input.a, 0u), vec2<f32>(-1143f, 507f), 933f) | -vec4<i32>(u_input.a, -2147483647i, 2147483647i, 10870i), 1u));
    global1 = array<vec3<f32>, 8>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(557f)), -762f)))))), ~0u, var_0.x, u_input.c.x, var_0.x);
    var var_2 = Struct_1(var_1.a, max(var_1.c, var_1.e), min(4294967295u, var_0.x), 1i, var_0.x);
    let var_3 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~u_input.c, u_input.c), abs(i32(-1i) * -28676i));
    let var_4 = firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, -2147483647i, -9517i, -1i), vec4<i32>(1i, -3710i, 0i, -2147483647i) | vec4<i32>(var_1.d, var_3, 0i, 13368i), -vec4<i32>(5523i, 2147483647i, 1i, u_input.b)))) & ~vec4<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(var_1.d)), _wgslsmith_div_i32(0i, firstTrailingBit(u_input.a)), ~(~2708i), _wgslsmith_div_i32(var_2.d, var_3) & abs(var_3));
    var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(var_1.d, ~2147483647i));
}

