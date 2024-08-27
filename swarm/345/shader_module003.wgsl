struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    let var_0 = select(any(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), true)), true, false);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) + -473f) * _wgslsmith_f_op_f32(sign(-2202f)))), -683f));
    let var_2 = Struct_3(Struct_1(vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_1, 2034f)))), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(182f + _wgslsmith_f_op_f32(-var_1))))), u_input.d);
    let var_3 = var_2;
    var var_4 = var_3.a;
    return var_2.a.b;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_3(arg_2.d, u_input.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -585f))), arg_2.c)), 431f, -1767f, _wgslsmith_f_op_f32(f32(-1f) * -364f));
    let var_2 = vec4<bool>(1i > _wgslsmith_sub_i32(1i, var_0.b), !(u_input.c.x > 13386u), !arg_2.e.x & any(select(!vec2<bool>(false, arg_1.x), arg_2.e, true)), arg_2.a);
    let var_3 = -arg_3.ww;
    var var_4 = u_input.b;
    return vec3<u32>(reverseBits(0u), ~(~5073u), ~_wgslsmith_div_u32(u_input.c.x, ~2641u) >> (28136u % 32u));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = select(true, false, true);
    let var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1100f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211f - -1109f) * _wgslsmith_div_f32(1083f, -263f))), 2198f), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_2(true, 725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1582f * 530f))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1017f, 1531f, 1056f, 1000f))), vec4<f32>(1000f, -1569f, -1235f, -1321f)), _wgslsmith_f_op_f32(func_3())), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.d, 2147483647i, u_input.d), u_input.d), countOneBits(reverseBits(u_input.d)), ~u_input.d, _wgslsmith_div_i32(2759i ^ u_input.d, 6320i)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(5984i, u_input.d, 23486i, u_input.d), vec4<i32>(u_input.d, -1i, u_input.d, u_input.d))) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, 0i, -41729i), ~vec4<i32>(-31188i, u_input.d, 1i, u_input.d))));
    var var_2 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(756f, -211f)))), vec2<f32>(-640f, _wgslsmith_f_op_f32(584f + 1995f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(988f, 388f)) - vec2<f32>(_wgslsmith_div_f32(-700f, -1627f), -1658f)))));
    var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(trunc(var_3.x))))), var_3.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-940f + var_3.x))), _wgslsmith_f_op_f32(-var_3.x)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1011f, _wgslsmith_div_f32(var_3.x, 722f), true && var_2.x)), var_3.x, _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(ceil(var_3.x)))), _wgslsmith_f_op_f32(select(var_3.x, var_3.x, all(var_2.yyz))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-246f, var_3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1622f)), _wgslsmith_f_op_f32(sign(var_3.x)))))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = 255f;
    var var_1 = ~u_input.a.x;
    let var_2 = Struct_2(false, _wgslsmith_f_op_f32(step(var_0, var_0)), _wgslsmith_f_op_f32(var_0 + 573f), func_2(u_input.c.x << (~_wgslsmith_mod_u32(4294967295u, 30852u) % 32u)), !select(vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), all(vec3<bool>(true, true, true))));
    let var_3 = reverseBits(min(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 36620i) >> (vec2<u32>(4294967295u, 149611u) % vec2<u32>(32u)), reverseBits(vec2<i32>(-12196i, u_input.d))), firstLeadingBit(vec2<i32>(0i, -14221i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 35339u), vec2<u32>(21078u, u_input.a.x)) % vec2<u32>(32u)))) >> (_wgslsmith_add_vec2_u32(reverseBits(reverseBits(vec2<u32>(u_input.c.x, 0u)) | func_4(1000f, var_2.e, var_2, vec4<i32>(1i, u_input.d, -10881i, 1i)).yy), abs(reverseBits(~vec2<u32>(u_input.a.x, 525u)))) % vec2<u32>(32u));
    let var_4 = select(!(!vec4<bool>(!var_2.a, all(vec3<bool>(false, true, var_2.a)), true, var_2.a)), !vec4<bool>(all(!vec3<bool>(var_2.e.x, var_2.a, false)), false, _wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.c.zy) >= u_input.b.x, true), var_2.e.x);
    return Struct_4(select(var_4.yxw, !var_4.xzz, !var_4.yzz));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_div_f32(-932f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f))))));
    var_0 = _wgslsmith_f_op_f32(func_2(1u).a.x * -181f);
    var var_1 = !(!(!vec3<bool>(false & arg_0.x, true, arg_1.a.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f) - _wgslsmith_div_f32(-950f, -139f)) + 1585f)) + _wgslsmith_f_op_f32(func_3()));
    let var_2 = Struct_2(false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1010f - _wgslsmith_div_f32(1587f, 1873f))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(-914f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_div_f32(-434f, -670f)), _wgslsmith_f_op_f32(f32(-1f) * -731f)))), Struct_1(vec4<f32>(190f, 914f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1603f, -1144f) - _wgslsmith_div_f32(-335f, 1416f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1711f))))), _wgslsmith_f_op_f32(select(-260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(883f, -1092f)) - -535f), all(!vec4<bool>(arg_1.a.x, arg_0.x, var_1.x, true))))), select(!(!vec2<bool>(arg_0.x, arg_1.a.x)), arg_1.a.zx, true));
    return ~u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47588u;
    var_0 = firstLeadingBit(~u_input.b.x) >> (select(~_wgslsmith_clamp_u32(~1u, u_input.c.x, ~27329u), u_input.c.x, false) % 32u);
    var_0 = countOneBits(max(~func_5(vec3<bool>(false, false, false), func_1(-5368i)), u_input.b.x));
    let var_1 = vec3<bool>(1u > u_input.a.x, true & (-_wgslsmith_sub_i32(u_input.d, u_input.d) < _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i), vec4<i32>(-43397i, -6397i, -10881i, 4859i)), vec4<i32>(-2147483647i, u_input.d, -14760i, u_input.d))), true);
    var var_2 = Struct_2(58513u >= (u_input.c.x >> ((0u >> (u_input.c.x % 32u)) % 32u)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(640f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(191f - -132f))))), func_2(43436u), func_1(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d, u_input.d), ~vec2<i32>(u_input.d, u_input.d)), select(vec2<i32>(1i, -13038i), vec2<i32>(u_input.d, -2147483647i), var_1.yz) & vec2<i32>(u_input.d, -26257i))).a.yz);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(func_2(_wgslsmith_dot_vec4_u32(u_input.b, u_input.c)).a, vec4<f32>(_wgslsmith_f_op_f32(-291f * 1064f), var_2.c, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(452f, -588f)), select(true, all(vec2<bool>(var_2.a, false)), var_2.a))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(u_input.d, 54590i, 0i, 26101i)), _wgslsmith_add_vec4_i32(~vec4<i32>(1i, 1i, -1i, u_input.d), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -4643i), vec4<i32>(1i, -10785i, u_input.d, u_input.d)))) >> (u_input.a.x % 32u));
}

