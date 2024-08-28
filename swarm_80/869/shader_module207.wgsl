struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: vec4<i32>,
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = Struct_4(firstLeadingBit(1u), Struct_1(min(~47531i, -(~(-16425i))), true, (select(26317u, 4294967295u, false) << (0u % 32u)) > _wgslsmith_dot_vec3_u32(min(vec3<u32>(39664u, 4294967295u, 1u), vec3<u32>(92585u, 0u, 4294967295u)), vec3<u32>(4294967295u, 36598u, 29240u))), !(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false)) || true), u_input.d, u_input.d << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(58969u, 1u, 280u))) % vec3<u32>(32u)));
    var var_1 = -firstLeadingBit(select(~(~(-1i)), var_0.e.x, all(vec3<bool>(var_0.b.b, var_0.c, var_0.b.b))));
    var_1 = select(var_0.b.a, _wgslsmith_add_i32(var_0.d.x << (4294967295u % 32u), u_input.a.x), var_0.b.b) & var_0.b.a;
    var_1 = u_input.b;
    var_1 = -u_input.c;
    return ~vec3<u32>(var_0.a, _wgslsmith_dot_vec3_u32(abs(reverseBits(vec3<u32>(4294967295u, 59417u, 0u))), min(max(vec3<u32>(var_0.a, 4294967295u, var_0.a), vec3<u32>(33751u, 68725u, 4350u)), countOneBits(vec3<u32>(1u, 4294967295u, 4294967295u)))), ~_wgslsmith_clamp_u32(7097u, 23857u, var_0.a) | _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.a, 12768u, var_0.a, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.a, var_0.a, 0u), vec4<u32>(var_0.a, var_0.a, 0u, 0u))));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f * 1774f) + _wgslsmith_f_op_f32(select(1133f, 771f, true)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-132f * 222f)))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(-2100f - var_0)) - _wgslsmith_f_op_f32(140f * _wgslsmith_f_op_f32(-1000f + 563f)))));
    var var_2 = func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f * -301f) - _wgslsmith_f_op_f32(floor(1213f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    let var_3 = all(vec4<bool>((arg_0 > 0i) | any(vec2<bool>(true, true)), false, -2147483647i > u_input.d.x, true));
    var_2 = select(~(~vec3<u32>(~1u, 1u, 25779u)), min((vec3<u32>(1u, var_2.x, 15299u) << ((vec3<u32>(8631u, 10454u, 1u) >> (vec3<u32>(var_2.x, 1u, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u))) | ~vec3<u32>(39794u, arg_1, var_2.x), vec3<u32>(var_2.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(14326u, 30223u, var_2.x, 4294967295u), vec4<u32>(72579u, 50376u, 79956u, 0u)), countOneBits(~25990u))), var_3);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(118f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) * var_0)), var_0)));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: i32) -> bool {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(func_2(u_input.c, ~reverseBits(select(11536u, 1u, arg_1.c.e.c)))));
    let var_1 = 32507u;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(855f, 1334f)));
    var var_2 = Struct_4(37788u, arg_1.b.e, all(arg_1.b.d.zz), u_input.d, u_input.d);
    return arg_1.b.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!vec2<bool>(1i >= u_input.c, true)));
    var var_1 = !(!(!vec3<bool>(true, true, func_1(-745f, Struct_3(var_0.x, Struct_2(u_input.d.xy, vec3<f32>(1088f, -168f, 1450f), 845f, vec4<bool>(false, var_0.x, false, var_0.x), Struct_1(u_input.d.x, false, false)), Struct_2(u_input.d.zy, vec3<f32>(1635f, -2189f, 939f), -1000f, vec4<bool>(false, var_0.x, true, var_0.x), Struct_1(-1i, var_0.x, var_0.x)), vec4<f32>(-1000f, -562f, -439f, -1000f)), vec3<f32>(1000f, -1000f, 1577f), -2147483647i))));
    let var_2 = Struct_4(~(~(~71932u)), Struct_1(u_input.b, all(select(select(vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x), var_1.zx), vec2<bool>(var_1.x, var_0.x), vec2<bool>(var_0.x, false))), func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1674f), _wgslsmith_f_op_f32(819f + 1769f))), Struct_3(true, Struct_2(vec2<i32>(1i, 29560i), vec3<f32>(269f, -1000f, 194f), 2142f, vec4<bool>(var_0.x, false, true, true), Struct_1(u_input.c, true, false)), Struct_2(vec2<i32>(u_input.b, u_input.c), vec3<f32>(-1050f, 925f, -616f), -667f, vec4<bool>(true, true, false, false), Struct_1(-1i, var_0.x, false)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1704f, 668f, 2435f, 1197f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1055f, -986f, 777f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1329f, 1938f, 1133f), vec3<f32>(-2003f, 462f, -1444f))))), _wgslsmith_div_i32(firstLeadingBit(u_input.d.x), _wgslsmith_sub_i32(38839i, u_input.a.x)))), true, select(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, u_input.b), reverseBits(vec3<i32>(u_input.d.x, 0i, 70421i))), u_input.d ^ ~vec3<i32>(-29574i, 1i, u_input.c), true), u_input.d, false), abs(_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.c, u_input.c, 32343i), vec3<i32>(0i, -1i, -1i)) << (vec3<u32>(1u, 10417u, 0u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.d, u_input.d))));
    var var_3 = Struct_1(var_2.e.x, var_0.x & false, true);
    let var_4 = false;
    var_3 = Struct_1(-(~var_2.d.x), u_input.c != (~(~16885i) | u_input.b), false);
    var_1 = select(!select(vec3<bool>(true, !var_4, any(vec4<bool>(var_1.x, var_0.x, var_4, var_1.x))), !(!vec3<bool>(var_1.x, var_3.b, var_2.b.c)), true), vec3<bool>(var_1.x, ((0u & var_2.a) ^ ~var_2.a) == ~(~40033u), var_2.c), select(!vec3<bool>(var_0.x, true, all(vec2<bool>(true, var_2.b.b))), !vec3<bool>(var_0.x, var_2.b.c, select(var_2.c, false, false)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a, 4294967295u, var_2.a, 87469u), ~vec4<u32>(33025u, var_2.a, 4294967295u, var_2.a)) <= 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b, _wgslsmith_mult_i32(-var_3.a, var_2.b.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(377f)))), _wgslsmith_div_f32(705f, 1495f), ~select(~(vec4<i32>(var_3.a, 0i, var_3.a, u_input.d.x) & vec4<i32>(var_2.b.a, u_input.c, var_3.a, 626i)), -(~vec4<i32>(var_3.a, var_3.a, 1i, var_3.a)), !(!var_2.c)));
}

