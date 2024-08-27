struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = vec3<i32>(i32(-1i) * -(u_input.c.x & min(-15258i, -46666i)), (7016i | _wgslsmith_mult_i32(u_input.c.x, firstTrailingBit(u_input.c.x))) ^ -2602i, ~u_input.c.x);
    var_0 = _wgslsmith_mod_vec3_i32(~countOneBits(~abs(vec3<i32>(12794i, 58838i, -1i))), abs(vec3<i32>(_wgslsmith_clamp_i32(1656i, var_0.x, u_input.c.x), _wgslsmith_mod_i32(u_input.c.x, var_0.x), 31852i | u_input.c.x) & (_wgslsmith_add_vec3_i32(vec3<i32>(5106i, -68122i, -3011i), vec3<i32>(u_input.c.x, -3389i, 2147483647i)) << (vec3<u32>(105116u, 0u, u_input.b) % vec3<u32>(32u)))));
    var_0 = ~max(~(vec3<i32>(var_0.x, var_0.x, u_input.c.x) ^ vec3<i32>(u_input.c.x, var_0.x, 1i)) ^ (vec3<i32>(var_0.x, 18809i, 0i) & (vec3<i32>(1i, var_0.x, var_0.x) << (vec3<u32>(u_input.d.x, u_input.d.x, 1u) % vec3<u32>(32u)))), ~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -11404i, -1i), select(vec3<i32>(u_input.c.x, -77065i, -2147483647i), vec3<i32>(u_input.c.x, 31132i, var_0.x), true)));
    var_0 = ~((firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 15167i), vec3<i32>(u_input.c.x, 39934i, -2147483647i))) >> (u_input.a.ywy % vec3<u32>(32u))) | vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.yy & var_0.zy, _wgslsmith_clamp_vec2_i32(var_0.yy, vec2<i32>(0i, 0i), var_0.zx)), -22785i, ~58946i));
    var_0 = -vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(u_input.c.x), -1i), 51676i, -19545i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1068f)));
}

fn func_2() -> vec3<bool> {
    let var_0 = true;
    var var_1 = true;
    var var_2 = -117f;
    let var_3 = _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(func_3()));
    let var_4 = ~(~(~(~3511i)) << (0u % 32u));
    return select(select(!(!(!vec3<bool>(true, false, var_0))), !(!vec3<bool>(false, var_0, true)), select(select(select(vec3<bool>(false, var_0, var_0), vec3<bool>(false, false, var_0), false), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0, var_0), false), true), vec3<bool>(var_0, false, false), var_0)), vec3<bool>(any(!(!vec2<bool>(var_0, var_0))), var_0 | var_0, any(!select(vec3<bool>(false, true, var_0), vec3<bool>(false, var_0, var_0), var_0))), !(!(!var_0)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    var var_0 = !select(arg_0.c, func_2(), vec3<bool>(all(vec4<bool>(false, arg_0.a, arg_0.a, arg_0.c.x)), any(!vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(round(-1017f)) <= -870f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1725f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(596f)))));
    var var_2 = -14362i;
    let var_3 = vec2<bool>(true, true);
    var var_4 = arg_0;
    return ~(~_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(_wgslsmith_mod_u32(69696u, arg_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a.x);
    var_0 = (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.d.x), ~u_input.d >> ((u_input.a.xx << (vec2<u32>(86989u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (u_input.b % 32u)) & u_input.b;
    var_0 = ~select(u_input.b, min(_wgslsmith_div_u32(u_input.a.x, 10667u), 11852u) >> (~(~28626u) % 32u), all(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    let var_1 = Struct_1(select(-566f > _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(657f, -255f), -325f, true)), false, _wgslsmith_clamp_u32(u_input.d.x, 0u, 1u) >= abs(func_1(Struct_1(false, 57904u, vec3<bool>(true, true, false), vec3<i32>(1i, u_input.c.x, u_input.c.x)), vec4<u32>(u_input.b, u_input.d.x, 6962u, u_input.b)))), ~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 49354u), vec3<bool>(min(u_input.c.x, u_input.c.x) <= max(~u_input.c.x, ~(-39199i)), all(vec2<bool>(any(vec2<bool>(false, true)), true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), vec3<i32>(~849i, -_wgslsmith_clamp_i32(0i, 3102i, u_input.c.x ^ 5152i), -countOneBits(23460i) ^ _wgslsmith_mult_i32(firstTrailingBit(u_input.c.x), ~(-2147483647i))));
    let var_2 = reverseBits(vec3<u32>(~(~u_input.d.x), firstTrailingBit(97026u), u_input.a.x)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x ^ 12900u, 1u, firstTrailingBit(1u)), _wgslsmith_add_vec3_u32(vec3<u32>(13346u, 1u, 56796u), ~u_input.a.zww)) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f - -282f)) + _wgslsmith_f_op_f32(select(-1112f, _wgslsmith_f_op_f32(step(-1855f, 856f)), true))))) + _wgslsmith_f_op_f32(f32(-1f) * -284f));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(2147483647i), -281f, -8924i, ~_wgslsmith_mult_vec4_u32(u_input.a, reverseBits(~u_input.a)), var_1.d.x);
}

