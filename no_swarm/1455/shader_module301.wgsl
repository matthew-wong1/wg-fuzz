struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(arg_0.xz, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(round(1390f)), _wgslsmith_f_op_f32(f32(-1f) * -1176f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.yy))))))));
    var var_1 = true;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, 64710u, ~46673u), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(7326u, 1u, _wgslsmith_mult_u32(4294967295u, 1u), 1u)), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(7602u, 41987u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56159u, 22986u))), 1u));
    let var_3 = ~u_input.a;
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-182f)), var_0.x)), var_2.x <= ~firstTrailingBit(~var_2.x), !select(vec2<bool>(4294967295u == var_2.x, var_3.x >= -1i), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(false, true), vec2<bool>(false, true), false)), _wgslsmith_add_u32(min(_wgslsmith_sub_u32(1u, var_2.x), ~28085u), 4294967295u) & ~(~var_2.x));
    return vec2<bool>(true, any(select(select(select(vec4<bool>(var_4.b, var_4.b, var_4.c.x, true), vec4<bool>(true, var_4.b, true, true), vec4<bool>(false, var_4.b, var_4.b, var_4.c.x)), vec4<bool>(var_4.c.x, false, var_4.b, var_4.c.x), !vec4<bool>(true, false, var_4.c.x, var_4.b)), !(!vec4<bool>(false, false, var_4.c.x, var_4.c.x)), any(!vec2<bool>(var_4.c.x, var_4.b)))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, arg_2.a.a.x, arg_2.a.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, -1000f, -133f)))))) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.a.a.x, _wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.b)))), _wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f + 660f)))), -vec4<i32>(u_input.b & u_input.b, _wgslsmith_mod_i32(~1i, _wgslsmith_clamp_i32(u_input.b, 41485i, 12238i)), -2147483647i, _wgslsmith_clamp_i32(-2147483647i, countOneBits(u_input.b), reverseBits(u_input.b))));
    var var_1 = u_input.a;
    var_1 = u_input.a;
    var var_2 = arg_2.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + arg_2.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(f32(-1f) * -834f)) + _wgslsmith_f_op_f32(ceil(-1000f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, 871f, false))), _wgslsmith_f_op_f32(f32(-1f) * -104f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(504f, arg_2.a.a.x, arg_2.a.a.x)))));
    return arg_2.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = arg_1.a;
    var var_1 = !vec4<bool>(true, false, true, !(func_2(var_0.b, arg_0, arg_1).c.x || true));
    var var_2 = vec4<u32>(~(~arg_0.x) & ~56837u, ~var_0.d, ~arg_1.a.d, _wgslsmith_sub_u32(~17014u, ~0u | arg_1.a.d)) >> (vec4<u32>(min(10489u, 2956u), firstTrailingBit(abs(abs(var_0.d))), countOneBits(1u ^ min(arg_1.a.d, arg_0.x)), arg_0.x) % vec4<u32>(32u));
    var var_3 = vec4<bool>(all(!select(!var_1.yyz, select(var_1.wxz, var_1.wzx, true), vec3<bool>(false, arg_3, var_1.x))), !(!select(arg_3, var_0.c.x, false) || true), all(vec2<bool>(true, var_1.x)), arg_1.a.c.x);
    var var_4 = max(1i, u_input.a.x | u_input.a.x);
    return _wgslsmith_mod_u32(13869u, ~abs(1u));
}

fn func_5(arg_0: u32, arg_1: f32) -> vec3<i32> {
    var var_0 = func_2(all(!vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, false)), select(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 58222u, arg_0, arg_0) << (vec4<u32>(arg_0, arg_0, arg_0, arg_0) % vec4<u32>(32u)), countOneBits(vec4<u32>(4294967295u, 1u, arg_0, arg_0))), firstLeadingBit(~vec4<u32>(arg_0, arg_0, arg_0, arg_0))), min(~(~vec4<u32>(arg_0, 0u, arg_0, 1u)), ~vec4<u32>(47832u, 4294967295u, 4294967295u, arg_0)), !(arg_0 >= 15188u)), Struct_2(func_2(true, vec4<u32>(~1u, 55276u, arg_0, 22743u), Struct_2(func_2(false, vec4<u32>(arg_0, 49590u, 0u, 48764u), Struct_2(Struct_1(vec2<f32>(arg_1, arg_1), true, vec2<bool>(true, false), arg_0)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1)), var_0.a.x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a) - _wgslsmith_div_vec2_f32(vec2<f32>(171f, arg_1), _wgslsmith_f_op_vec2_f32(step(var_0.a, vec2<f32>(-1000f, 1557f)))))), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-957f, 728f, var_0.a.x)))), vec4<i32>(33796i, 1i, ~(-24839i), firstLeadingBit(u_input.b))).x, func_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1267f * var_0.a.x) - -798f), -215f, arg_1), vec4<i32>(firstLeadingBit(6350i), _wgslsmith_mod_i32(-u_input.b, _wgslsmith_div_i32(-30615i, u_input.b)), _wgslsmith_clamp_i32(u_input.a.x, -66621i, -1i) << (var_0.d % 32u), u_input.b)), var_0.d);
    var_0 = func_2(func_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(482f, var_0.a.x, var_0.a.x)))), ~vec4<i32>(reverseBits(0i), -35191i, 1i, 2147483647i)).x, countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_0, 62900u, ~arg_0, 0u), ~vec4<u32>(70995u, arg_0, 4294967295u, var_0.d))), Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(round(var_0.a.x))), true && (true | var_0.b), !select(vec2<bool>(var_0.c.x, true), var_0.c, vec2<bool>(false, false)), countOneBits(arg_0))));
    var var_1 = ~_wgslsmith_sub_vec3_i32(u_input.a, u_input.a);
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-426f, arg_1), var_0.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) - var_0.a)), var_0.c.x, !select(vec2<bool>(false, var_0.b), var_0.c, var_0.c), min(_wgslsmith_add_u32(var_0.d, 4294967295u) & 0u, 8722u)));
    return -(vec3<i32>(~(~40320i), ~41153i, var_1.x) | abs(u_input.a));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = any(!(!vec3<bool>(true, all(vec2<bool>(true, true)), true)));
    var var_1 = vec4<f32>(-2012f, 1507f, _wgslsmith_f_op_f32(trunc(-952f)), _wgslsmith_f_op_f32(1884f - -378f));
    var_1 = vec4<f32>(-1567f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-889f)) + -614f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-440f + var_1.x), true)) * var_1.x))));
    var var_2 = func_5(func_4(vec4<u32>(0u, ~107993u, 0u, 1u), Struct_2(func_2(u_input.b == arg_0, vec4<u32>(5586u, 6035u, 1124u, 7925u), Struct_2(Struct_1(var_1.ww, true, vec2<bool>(false, true), 25062u)))), var_1.xyx, false), _wgslsmith_f_op_f32(f32(-1f) * -794f));
    var_2 = u_input.a;
    return (var_1.x == -583f) && true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec3<bool>(true, !any(vec2<bool>(false, true)), false));
    var var_1 = all(!(!(!vec4<bool>(var_0, false, true, var_0)))) && true;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -505f);
    var var_3 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_div_i32(min(25863i, 1i), abs(-u_input.a.x)), ~u_input.b, u_input.b));
    var var_4 = vec4<i32>(u_input.b, u_input.b, u_input.b, -9752i);
    let var_5 = var_2;
    var_1 = !(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_4.x, 2147483647i, -28445i), vec4<i32>(-14820i, -30010i, 30659i, u_input.a.x))) && (all(vec2<bool>(false, var_0)) && true)) && true;
    let var_6 = Struct_3(_wgslsmith_div_u32(func_2(true, firstLeadingBit(vec4<u32>(4294967295u, 13777u, 1u, 32991u)), Struct_2(Struct_1(vec2<f32>(1421f, var_2), var_0, vec2<bool>(false, var_0), 24272u))).d, 20646u) <= ~1u, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(200f, var_2) + vec2<f32>(-322f, var_2))), _wgslsmith_div_f32(var_2, -1337f) < var_5, func_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_5, var_2, -432f))), vec4<i32>(2147483647i, u_input.a.x, u_input.b, -23933i) & vec4<i32>(2147483647i, 0i, -31872i, u_input.a.x)), 1u)), Struct_1(vec2<f32>(var_5, -471f), !(_wgslsmith_f_op_f32(ceil(-1712f)) <= var_5), select(select(vec2<bool>(true, var_0), !vec2<bool>(var_0, true), var_0 == var_0), select(select(vec2<bool>(var_0, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), false), true), !(!vec2<bool>(true, var_0))), min(~(~1u), 60417u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(func_5(_wgslsmith_mod_u32(var_6.c.d, var_6.c.d), var_6.c.a.x), vec3<i32>(-1i) * -var_4.xzx), vec3<i32>(abs(1i), u_input.a.x, 1i)), var_6.c.a.x, select(vec2<u32>(~var_6.b.a.d, _wgslsmith_add_u32(var_6.b.a.d, var_6.c.d) << (var_6.c.d % 32u)), vec2<u32>(4294967295u, 34821u), vec2<bool>(0u > var_6.c.d, func_2(false, vec4<u32>(1u, 20752u, var_6.c.d, var_6.b.a.d), Struct_2(Struct_1(vec2<f32>(558f, var_6.c.a.x), var_6.c.b, vec2<bool>(var_6.a, var_0), 50706u))).a.x < _wgslsmith_div_f32(var_5, var_6.b.a.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1923f, -332f)), 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5)))) - -727f));
}

