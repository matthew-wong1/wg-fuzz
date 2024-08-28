struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    let var_0 = select(false, !(any(vec3<bool>(false, arg_0.c, false)) || arg_0.c), any(vec4<bool>(true, all(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, arg_0.c), vec2<bool>(true, arg_0.c))), false, true)));
    let var_1 = ~max(~(~min(19513u, 4294967295u)), _wgslsmith_div_u32(min(1u, 19031u), _wgslsmith_dot_vec4_u32(~vec4<u32>(59806u, 1668u, 1u, 0u), ~vec4<u32>(42635u, 1u, 20452u, 4294967295u))));
    var var_2 = _wgslsmith_clamp_u32(4294967295u, var_1 << (~var_1 % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(1u >> (0u % 32u), 9011u) >> (select(var_1 << (24886u % 32u), var_1, all(vec2<bool>(var_0, var_0))) % 32u), select(_wgslsmith_sub_u32(var_1 & var_1, ~0u), _wgslsmith_sub_u32(var_1, _wgslsmith_clamp_u32(var_1, 1u, 4294967295u)), true)));
    let var_3 = Struct_1(590f, arg_0.b, all(!(!select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, true, true, true), vec4<bool>(var_0, false, arg_0.c, var_0)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(125f, 1f, var_3.a, _wgslsmith_div_f32(arg_1.x, 761f)));
    return var_3.b.x;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-447f, -394f)), _wgslsmith_f_op_f32(max(632f, -667f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)))), vec4<i32>(u_input.a.x, -26831i, ~(~func_3(Struct_1(1000f, vec4<i32>(u_input.a.x, 2147483647i, 0i, u_input.a.x), false), vec2<f32>(175f, 395f))), _wgslsmith_sub_i32(-1i, 1i)), !(!(!all(vec3<bool>(false, false, false)))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f * _wgslsmith_f_op_f32(var_0.a - 1092f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, 829f, true)) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-1238f + _wgslsmith_f_op_f32(exp2(var_0.a))))), vec4<i32>(-1i, _wgslsmith_sub_i32(-1i, -11773i), _wgslsmith_sub_i32(u_input.a.x, countOneBits(13532i)), func_3(var_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a)))), var_0.c);
    let var_2 = countOneBits(1u);
    let var_3 = var_0;
    var var_4 = _wgslsmith_div_vec3_u32(vec3<u32>(~abs(0u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2, 4294967295u, 8545u, 1u), vec4<u32>(var_2, 29667u, var_2, 57067u), var_3.c), max(vec4<u32>(4294967295u, 1u, 3225u, var_2), vec4<u32>(57096u, var_2, var_2, var_2))), var_2), var_2), ~vec3<u32>(~1u, 4294967295u ^ var_2, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, var_2), vec2<u32>(4294967295u, 73214u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))), var_3.a))));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1184f, 411f)))) + _wgslsmith_f_op_f32(1515f - _wgslsmith_f_op_f32(func_2()))))), select(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(-49271i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 49432i, 24319i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), -(-vec4<i32>(u_input.a.x, u_input.a.x, -59442i, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), false, any(vec2<bool>(true, false)) & false)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), var_0.a, _wgslsmith_f_op_f32(abs(-113f)), var_0.a)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1148f, _wgslsmith_f_op_f32(-1105f * 453f), _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_0.a, var_0.a, -715f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_0.a, -778f, -1000f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_f_op_f32(sign(var_0.a)), _wgslsmith_f_op_f32(-var_0.a)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_0.a)), 893f, var_0.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-120f, var_0.a, var_1.x, 261f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, var_0.a, -931f, -806f) * vec4<f32>(357f, var_0.a, var_1.x, 1000f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_0.a, var_0.a, var_1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-791f, var_1.x, -1069f, var_0.a), vec4<f32>(var_1.x, -148f, var_1.x, -531f), false)), var_0.c && var_0.c)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-618f, var_0.a), vec2<f32>(var_0.a, -580f))))))));
    var var_3 = ~vec4<u32>(45966u >> (1u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(~41481u, ~4294967295u), 1u), 1u, 1u);
    return abs(~var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-52909i, _wgslsmith_div_i32(select(reverseBits(u_input.a.x), -u_input.a.x, true), select(firstTrailingBit(u_input.a.x), firstTrailingBit(4910i), true)) << (41804u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(37439u, 4294967295u), vec4<u32>(firstTrailingBit(min(func_1(), ~28890u)), ~1u, 1u, ~(~0u)));
}

