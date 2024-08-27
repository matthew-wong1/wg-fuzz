struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    return arg_0;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> bool {
    let var_0 = ~firstTrailingBit(vec3<i32>(~(-28613i), _wgslsmith_clamp_i32(abs(1i), arg_0 ^ -6884i, _wgslsmith_add_i32(22068i, 0i)), -1i));
    let var_1 = ~_wgslsmith_add_vec3_i32(var_0, ~(vec3<i32>(var_0.x, 0i, u_input.a.x) ^ vec3<i32>(arg_0, arg_0, var_0.x)));
    let var_2 = Struct_3(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), select(true, true, false), !(!any(vec2<bool>(false, true))), all(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(sign(-726f))) - 1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1187f, -1000f)))))), Struct_2(vec4<u32>(abs(arg_2.x), arg_1, arg_1, 1u) | vec4<u32>(~u_input.b.x, 1u, 71182u, ~arg_1), func_2(func_2(Struct_2(arg_2, Struct_1(vec2<f32>(975f, 767f), -3046f, 810f, vec2<u32>(11940u, u_input.b.x)), Struct_1(vec2<f32>(-875f, 533f), -109f, 634f, vec2<u32>(1u, 1u)), arg_0))).b, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-804f, -1000f)), 2677f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(507f)))), arg_2.wy), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(220i | u_input.a.x, arg_0, ~(-37961i)), firstLeadingBit(_wgslsmith_sub_i32(1i, -24337i)))), vec4<bool>(true, _wgslsmith_add_u32(max(1u, arg_2.x), 1064u) < ~0u, !(true & all(vec4<bool>(false, false, false, false))), true || all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
    var var_3 = ~vec4<i32>(~_wgslsmith_add_i32(-14271i, select(-1i, var_0.x, false)), -42747i, -u_input.a.x & -(-36425i & u_input.a.x), -abs(~var_0.x));
    return _wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.a.x, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_3.x, -21673i, ~arg_0, 4719i), reverseBits(vec4<i32>(-42544i, -2925i, arg_0, 1i)))) != var_0.x;
}

fn func_1() -> Struct_3 {
    let var_0 = func_2(Struct_2(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(8943u, 4294967295u, 39897u, 59222u)), vec4<u32>(~u_input.b.x, ~u_input.b.x, u_input.b.x, ~43631u)), Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-747f + 138f)), 1241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f * -1407f)), ~vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec2<f32>(-1906f, _wgslsmith_f_op_f32(1681f * -766f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2236f)), _wgslsmith_f_op_f32(1758f * _wgslsmith_div_f32(1807f, -619f)), vec2<u32>(~u_input.b.x, abs(u_input.b.x))), _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(2147483647i, u_input.a.x) & ~u_input.a.x)));
    var var_1 = func_3(~(-2147483647i), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.a.x, 4851u), ~(~(4294967295u >> (1u % 32u)))), ~select(vec4<u32>(1u, 7841u, abs(40535u), 1u), ~var_0.a, true));
    var_1 = _wgslsmith_f_op_f32(select(-423f, -1650f, !all(vec2<bool>(true, true)))) < var_0.b.b;
    return Struct_3(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), func_3(abs(u_input.a.x), 3583u, vec4<u32>(var_0.a.x, u_input.b.x, 4294967295u, u_input.b.x))), 1f, func_2(func_2(func_2(func_2(Struct_2(vec4<u32>(var_0.c.d.x, u_input.b.x, 0u, u_input.b.x), var_0.b, Struct_1(var_0.b.a, var_0.b.c, -1498f, u_input.b), u_input.a.x))))), vec4<bool>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zy), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)) <= ~(-43807i), false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = all(vec2<bool>(true, true));
    var var_2 = min(_wgslsmith_div_vec4_u32(select(select(select(vec4<u32>(u_input.b.x, 49090u, 0u, 12919u), vec4<u32>(u_input.b.x, 8402u, u_input.b.x, 15324u), vec4<bool>(var_1, false, var_1, var_1)), vec4<u32>(58624u, 36781u, 60364u, 0u) & vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 42816u), !var_1), min(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(0u, 113922u, u_input.b.x, u_input.b.x)), var_1), ~vec4<u32>(u_input.b.x, 0u, abs(u_input.b.x), 0u | u_input.b.x)), min(firstTrailingBit(~(~vec4<u32>(4294967295u, 58094u, u_input.b.x, u_input.b.x))), abs(~(vec4<u32>(46872u, u_input.b.x, 40334u, 17616u) << (vec4<u32>(u_input.b.x, 105549u, 71902u, 23488u) % vec4<u32>(32u))))));
    var var_3 = func_1();
    let var_4 = Struct_1(vec2<f32>(-1207f, _wgslsmith_f_op_f32(var_3.c.c.c - func_1().b)), var_3.c.c.a.x, var_3.c.c.b, max(~vec2<u32>(func_2(var_3.c).a.x, abs(u_input.b.x)), ~var_2.zy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-19299i, var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -376f))), var_3.c.c.d.x, ~(~vec2<u32>(1u, _wgslsmith_sub_u32(22952u, 1u))));
}

