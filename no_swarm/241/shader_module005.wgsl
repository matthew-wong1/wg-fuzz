struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1336f;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec4<f32>(-981f, -171f, -787f, 388f), vec3<bool>(false, true, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global1 = ~((10934u >> (~4294967295u % 32u)) >> ((_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), global2.b.xy), vec2<u32>(1u, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), max(vec2<u32>(0u, 38305u), vec2<u32>(1u, 65232u))) % 32u)) % 32u));
    var var_0 = global2.a.x;
    let var_1 = reverseBits(firstLeadingBit(select(~vec2<u32>(31205u, 4294967295u), ~vec2<u32>(26931u, 1u), !global2.b.xx))) >> ((countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(12397u, 83477u))) << (vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(0u, 54629u)), ~_wgslsmith_clamp_u32(3339u, 0u, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(var_1.x, var_1.x)), var_1.x, _wgslsmith_sub_u32(var_1.x | var_1.x, var_1.x & var_1.x)), reverseBits(countOneBits(reverseBits(vec3<u32>(6463u, 30319u, var_1.x))))) << (115745u % 32u);
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1f + 739f), global2.a.x)));
    return var_1.x;
}

fn func_2() -> Struct_2 {
    var var_0 = global2.b.yx;
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(481f, 980f))), global2.a.x, !all(vec4<bool>(false, global2.b.x, true, global2.b.x)))), _wgslsmith_f_op_f32(ceil(-852f)), global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1120f)), select(vec3<bool>(true, _wgslsmith_f_op_f32(sign(886f)) <= 393f, !(-486f == global2.a.x)), vec3<bool>(false, any(select(global2.b.zy, vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, global2.b.x))), true), vec3<bool>(-300f < global2.a.x, global2.b.x, -589f <= global2.a.x)));
    let var_2 = 572f;
    let var_3 = _wgslsmith_div_i32(-_wgslsmith_sub_i32(reverseBits(u_input.a), u_input.b), u_input.c.x) | 21098i;
    var var_4 = Struct_4(Struct_1(_wgslsmith_div_i32(77432i, ~27422i), false, -_wgslsmith_mult_vec4_i32(-vec4<i32>(32240i, -2147483647i, 0i, -23242i), vec4<i32>(11036i, var_3, var_3, 41879i) ^ vec4<i32>(0i, 0i, 2147483647i, 2147483647i))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(780f - -291f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1196f * var_1.a.x) * -201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(exp2(var_2)))), select(select(select(global2.b, global2.b, global2.b), vec3<bool>(true, false, true), var_3 != 0i), vec3<bool>(any(global2.b), var_1.b.x, true), select(true, global2.b.x & false, var_1.b.x))), -(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.c.x, u_input.b, 13768i, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-5964i, -26884i, u_input.a, var_3), vec4<i32>(-2147483647i, u_input.c.x, 2147483647i, var_3))) >> (max(vec4<u32>(39749u, 0u, 1u, 4294967295u), vec4<u32>(41932u, 22388u, 37154u, 1u)) % vec4<u32>(32u))), global2.a.x > _wgslsmith_f_op_f32(f32(-1f) * -1005f), vec4<u32>(~_wgslsmith_mod_u32(38468u, 61465u), ~_wgslsmith_mod_u32(22465u, 1u), 1u, func_3() >> (14429u % 32u)) & ~firstLeadingBit(max(vec4<u32>(72708u, 104006u, 0u, 1u), vec4<u32>(1u, 28895u, 30099u, 4294967295u))));
    return var_4.b;
}

fn func_1() -> i32 {
    var var_0 = u_input.a;
    global2 = func_2();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1811f - _wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1186f), 1767f);
    let var_2 = ~0u;
    let var_3 = abs(~(~0u));
    return ~u_input.b << ((4294967295u & var_2) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, global2.a.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.yw), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(932f, 331f), global2.a.wx, global2.b.xz)))))) + _wgslsmith_f_op_vec2_f32(global2.a.xy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global2.a.xz - global2.a.wz))))));
    let var_1 = select(vec3<bool>(true, !(true & global2.b.x), true), vec3<bool>(global2.b.x, true, true), vec3<bool>(true, any(!vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x)) && any(global2.b.xx), any(!select(global2.b.zz, vec2<bool>(false, false), false))));
    global0 = _wgslsmith_f_op_f32(1466f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(global2.a.x))))));
    let var_2 = _wgslsmith_sub_vec2_i32(u_input.c, vec2<i32>(u_input.b, -_wgslsmith_add_i32(1i, func_1())));
    var var_3 = Struct_4(Struct_1(var_2.x, global2.b.x, -vec4<i32>(-var_2.x, u_input.b, var_2.x, var_2.x)), Struct_2(vec4<f32>(-2096f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2902f)) - global2.a.x), -589f, func_2().a.x), select(!global2.b, vec3<bool>(true, var_1.x || false, var_0.x > var_0.x), var_1)), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.a, var_2.x, var_2.x, var_2.x)), _wgslsmith_sub_vec4_i32(max(-vec4<i32>(0i, -2147483647i, u_input.b, var_2.x), vec4<i32>(u_input.b, -6886i, var_2.x, u_input.b)), vec4<i32>(reverseBits(var_2.x), var_2.x, max(var_2.x, -1i), var_2.x))), var_1.x, select(~abs(~vec4<u32>(30789u, 23554u, 56668u, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 126u, 9492u, 23727u), countOneBits(select(vec4<u32>(78563u, 1u, 4294967295u, 82767u), vec4<u32>(36783u, 4294967295u, 46485u, 15559u), vec4<bool>(true, true, true, var_1.x)))), vec4<bool>(true, true, false, func_2().b.x)));
    var var_4 = _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(select(min(vec4<i32>(42101i, var_2.x, -60947i, u_input.b), vec4<i32>(-2147483647i, -3649i, var_2.x, var_2.x)), vec4<i32>(var_2.x, u_input.c.x, -1i, -18293i), vec4<bool>(false, global2.b.x, var_1.x, true)))), ~var_3.c);
    var var_5 = _wgslsmith_mod_i32(_wgslsmith_add_i32(var_3.a.c.x, var_3.c.x), reverseBits(2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-337f - -231f), _wgslsmith_f_op_f32(-var_0.x)), var_3.b.a.x)) - 959f), reverseBits(vec2<i32>(2147483647i ^ (-48714i ^ var_2.x), -var_3.c.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(899f, -1665f))), u_input.b);
}

