struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    return vec4<bool>(!any(vec2<bool>(true, true)) & true, all(vec3<bool>(true, true, true)), all(global0[_wgslsmith_index_u32(0u >> (0u % 32u), 8u)]), all(vec2<bool>(true, false)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(1u, u_input.a)), 15367u, 0u), vec3<u32>(54472u & u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_1.x, 23725u), arg_1.x), arg_1.x)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1398f * -701f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f * -422f)), func_3(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, _wgslsmith_clamp_u32(arg_1.x, 0u, u_input.a)), vec3<u32>(20180u >> (0u % 32u), select(5787u, arg_1.x, false), u_input.a ^ arg_1.x)), _wgslsmith_mult_u32(u_input.a, arg_1.x)));
    var var_1 = var_0.b.c.wy;
    var_0 = Struct_2((vec3<u32>(abs(1u), abs(u_input.a), u_input.a >> (var_0.b.d % 32u)) | ((vec3<u32>(45711u, u_input.a, 0u) << (vec3<u32>(u_input.a, var_0.a.x, u_input.a) % vec3<u32>(32u))) | (vec3<u32>(1u, 43919u, 57602u) >> (var_0.a % vec3<u32>(32u))))) ^ (abs(vec3<u32>(65334u, 0u, var_0.b.d) >> (var_0.a % vec3<u32>(32u))) ^ var_0.a), var_0.b);
    var_0 = Struct_2(reverseBits(var_0.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-655f, _wgslsmith_f_op_f32(var_0.b.a + var_0.b.b), var_0.b.c.x)) * _wgslsmith_div_f32(626f, _wgslsmith_f_op_f32(-1925f * var_0.b.b))), var_0.b.a, vec4<bool>(any(select(var_0.b.c, vec4<bool>(false, arg_0, var_1.x, var_1.x), var_1.x)), true, reverseBits(-21241i) < (arg_2.x & 32676i), (0i ^ arg_2.x) > -1i), 64046u));
    let var_2 = Struct_3(select(-1i & _wgslsmith_add_i32(_wgslsmith_div_i32(1i, 2147483647i), min(arg_2.x, 0i)), arg_2.x, false), select(vec2<bool>(arg_0, var_1.x), !vec2<bool>(false, any(vec4<bool>(var_0.b.c.x, var_1.x, false, var_1.x))), all(!(!var_0.b.c))), !var_0.b.c.wz);
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = -9364i;
    let var_1 = vec3<bool>(func_2(false != select(false, false, true), vec2<u32>(firstTrailingBit(~1u), u_input.a), firstTrailingBit(~vec2<i32>(1549i, -2147483647i))), !func_3(~u_input.a, min(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 0u))).x == (true || !func_3(u_input.a, vec3<u32>(u_input.a, 1u, u_input.a)).x), func_3(u_input.a, vec3<u32>(u_input.a, u_input.a, u_input.a)).x);
    var var_2 = Struct_2(firstLeadingBit(~vec3<u32>(u_input.a, 1u, select(u_input.a, 24506u, true))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1408f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2139f))), vec4<bool>(var_1.x, 16599i != firstLeadingBit(var_0), false, any(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))), 1u));
    let var_3 = !(!(_wgslsmith_f_op_f32(-var_2.b.b) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1940f)))));
    var_2 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(max(var_2.a, vec3<u32>(var_2.b.d, u_input.a, var_2.b.d)), countOneBits(vec3<u32>(24967u, 9281u, 1u))), var_2.a), var_2.b);
    return -select(var_0, var_0, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 8>();
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(6240u, 615u, u_input.a), vec3<u32>(u_input.a, u_input.a, 60054u) | ~vec3<u32>(u_input.a, u_input.a, 0u))), ~80511u, u_input.a, abs(~4294967295u));
    var var_1 = vec3<i32>(_wgslsmith_div_i32(~(i32(-1i) * -51280i), _wgslsmith_clamp_i32(492i, ~select(0i, -16315i, true), func_1())), -func_1(), func_1());
    global0 = array<vec3<bool>, 8>();
    var var_2 = vec3<f32>(-964f, _wgslsmith_f_op_f32(sign(-2057f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) + -1605f))) - _wgslsmith_f_op_f32(1614f - -666f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-vec3<i32>(reverseBits(68258i), -47113i >> (u_input.a % 32u), _wgslsmith_div_i32(var_1.x, -2147483647i)), vec3<i32>(func_1(), var_1.x, 40245i)), firstLeadingBit(var_1.x));
}

