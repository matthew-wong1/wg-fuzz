struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> f32 {
    var var_0 = ~(~_wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, arg_1, 4294967295u), vec4<u32>(arg_0.c.b, u_input.a.x, 69584u, 32857u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, u_input.a.x, 1u, 65828u) & vec4<u32>(4294967295u, arg_1, arg_1, 1u), reverseBits(vec4<u32>(arg_0.c.b, arg_0.c.b, arg_1, u_input.a.x)))));
    let var_1 = 4294967295u;
    let var_2 = var_0.xx;
    let var_3 = Struct_4(602f);
    let var_4 = -16121i;
    return 1f;
}

fn func_2() -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-424f * 632f), 1648f)), ~_wgslsmith_clamp_u32(u_input.a.x, 10873u, 34928u))), u_input.a.x, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1974f))), _wgslsmith_f_op_f32(-503f + 1068f)))));
    let var_1 = Struct_2(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(all(vec2<bool>(true, true)), false, false, any(vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(943f, var_0), vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1331f) + vec2<f32>(263f, var_0)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0, -304f), vec2<f32>(var_0, 319f))))))), Struct_1(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), any(vec4<bool>(false, false, false, true)))), ~26904u | u_input.a.x));
    let var_2 = Struct_2(var_1.a, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0), var_0, false)), 1118f), var_1.c);
    return Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c.a * _wgslsmith_f_op_f32(-1608f + var_1.c.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-396f, 270f))))), abs(vec3<u32>(min(_wgslsmith_mod_u32(111077u, var_1.c.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.b, var_1.c.b, 1u), vec3<u32>(u_input.a.x, 9336u, u_input.a.x))), countOneBits(u_input.a.x) ^ (var_1.c.b & 0u), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a * var_0) - _wgslsmith_f_op_f32(func_3(var_1, 1u, Struct_4(964f)))))) - var_1.b.x), var_2, var_1.a.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2470f)))) - 846f);
    let var_1 = func_2();
    let var_2 = func_2().d.c;
    var var_3 = var_2;
    var var_4 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(34534u, _wgslsmith_add_u32(4294967295u, u_input.a.x)), func_2().b.yz);
    return Struct_2(vec2<bool>(var_1.d.a.x, false), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a, 725f))), _wgslsmith_f_op_vec2_f32(sign(var_1.a)), vec2<bool>(var_1.e, false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_1.d.c.a)))))), func_2().d.c);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec3<bool>(func_1(_wgslsmith_mult_i32(-7175i << (u_input.a.x % 32u), u_input.b.x >> (u_input.a.x % 32u))).a.x || arg_0.a.x, arg_0.a.x, func_1(_wgslsmith_div_i32(-40247i, 1i)).a.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -299f)), arg_0.c.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-855f + _wgslsmith_f_op_f32(f32(-1f) * -228f)) * _wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(trunc(-1047f)))) * _wgslsmith_f_op_f32(-func_2().d.b.x)) * arg_0.b.x);
    var_2 = _wgslsmith_div_f32(-2038f, -895f);
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(func_2().d.b, arg_0.b))));
    return func_2().d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = arg_1.a.x;
    var_0 = any(select(select(vec4<bool>(true, func_4(Struct_2(arg_1.a, vec2<f32>(877f, arg_0.a), Struct_1(-825f, arg_1.c.b))).a.x, arg_1.a.x & false, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, true, any(vec4<bool>(true, arg_1.a.x, arg_1.a.x, arg_1.a.x))), !(!vec4<bool>(false, true, arg_1.a.x, arg_1.a.x))), select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), select(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, false, arg_1.a.x, true), vec4<bool>(false, arg_1.a.x, false, false)), !vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x)), vec4<bool>(select(arg_1.a.x, arg_1.a.x, false), true, any(vec2<bool>(false, arg_1.a.x)), arg_1.a.x), vec4<bool>(!arg_1.a.x, false, arg_1.a.x, true)), all(vec3<bool>(any(vec3<bool>(false, arg_1.a.x, true)), true, arg_0.a < 109f))));
    var var_1 = u_input.b.x;
    var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~arg_2.x, arg_3.x & arg_0.b, 4294967295u, 1u), ~(max(vec4<u32>(4294967295u, 0u, arg_0.b, u_input.a.x), vec4<u32>(0u, arg_3.x, 0u, arg_1.c.b)) << (vec4<u32>(8660u, arg_0.b, 4294967295u, 1u) % vec4<u32>(32u)))) < ~countOneBits(_wgslsmith_mult_u32(arg_3.x, 4294967295u));
    var_0 = !((false | (_wgslsmith_f_op_f32(func_3(arg_1, 1u, Struct_4(1000f))) > -1242f)) && !arg_1.a.x);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(countOneBits(-(u_input.b.x << (1u % 32u))), func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -401f), 15591u), func_4(func_1(-2147483647i)), u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), ~countOneBits(-15017i) | u_input.b.x), u_input.b.x, abs(-(u_input.b.x & -2792i)), i32(-1i) * -21572i);
    var var_1 = func_4(func_4(func_1(select(select(-1i, u_input.b.x, true), 2147483647i, true))));
    let var_2 = any(!(!(!vec4<bool>(false, var_1.a.x, var_1.a.x, true))));
    var var_3 = Struct_3(func_4(Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(var_1.b * var_1.b), Struct_1(var_1.c.a, u_input.a.x))).c, u_input.a.x ^ u_input.a.x, vec4<bool>(any(!(!vec4<bool>(true, true, var_2, var_1.a.x))), false, false, var_1.a.x), !var_1.a.x, func_2().d.c);
    let var_4 = ~_wgslsmith_sub_i32(abs(0i) >> (~(1u | var_3.a.b) % 32u), u_input.b.x);
    var var_5 = Struct_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1032f + 795f))), _wgslsmith_f_op_f32(select(var_1.c.a, -558f, select(var_1.a.x, var_1.a.x, true))))), _wgslsmith_mult_u32(1u, ~u_input.a.x)), var_3.e.b, !select(!vec4<bool>(false, true, var_3.d, true), vec4<bool>(var_0.x <= -1i, func_2().d.a.x, true, !var_2), var_3.c), true, Struct_1(1018f, ~_wgslsmith_clamp_u32(var_3.b, ~var_1.c.b, _wgslsmith_clamp_u32(3251u, var_1.c.b, 1u))));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(543f, -1000f))))))), func_1(firstTrailingBit(14373i)).a)), func_4(func_1(var_4)).c);
    var_1 = func_1(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~0u)) & ~(~_wgslsmith_div_u32(var_5.b, u_input.a.x)), 10856i, ~u_input.b.x);
}

