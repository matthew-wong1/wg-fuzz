struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(971f + arg_2.a.b.c.x), _wgslsmith_f_op_f32(abs(arg_0)))), arg_2.a.b.c.x, 2068f, -379f);
    let var_1 = arg_2.a.b.a.x;
    var var_2 = _wgslsmith_sub_vec3_i32(u_input.c.zyw, -select(arg_2.a.b.a, -(arg_2.a.b.a | u_input.c.xzw), all(vec4<bool>(arg_1.x, false, arg_1.x, true))));
    var var_3 = Struct_3(Struct_1(_wgslsmith_div_vec3_i32(u_input.c.xyz, _wgslsmith_add_vec3_i32(arg_2.a.b.a, arg_2.a.b.a)) & abs(arg_2.a.b.a << (vec3<u32>(0u, 4294967295u, arg_2.a.c) % vec3<u32>(32u))), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(floor(534f)), arg_2.a.a))), _wgslsmith_f_op_f32(ceil(var_0.x)), vec2<u32>(~4294967295u, arg_2.a.c));
    var_2 = arg_2.a.b.a;
    return countOneBits(arg_2.a.b.a);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(3682i, _wgslsmith_mult_i32(~arg_1, 1i)), u_input.b, countOneBits(firstLeadingBit(_wgslsmith_sub_i32(-37703i, arg_1)))), any(select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(true, true), !vec2<bool>(arg_2, false), !arg_2), arg_0 != arg_0)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0, 1f))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_div_f32(arg_0, arg_0), !all(vec2<bool>(true, arg_2))))));
    let var_1 = ~(-var_0.a);
    var var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -371f) - _wgslsmith_f_op_f32(floor(-332f))) + _wgslsmith_f_op_f32(floor(var_0.c.x))), Struct_1(-func_3(arg_0, vec2<bool>(var_0.b, var_0.b), Struct_4(Struct_2(var_0.c.x, var_0, 1u))), all(vec4<bool>(var_0.b, var_0.b, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) * vec2<f32>(759f, 764f))), abs(28073u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, arg_0), -748f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1120f * 1643f) + -1211f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1122f)), _wgslsmith_f_op_f32(abs(1028f))))))));
    let var_4 = Struct_1(var_0.a, true, var_2.a.b.c);
    return var_2.a;
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0.a;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(abs(2669f)), var_0.b, 12999u));
    var var_2 = Struct_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), min(0i, -15691i), true, var_1.a.c));
    var var_3 = Struct_3(var_0.b, -520f, ~(~vec2<u32>(~var_0.c, 1u << (1u % 32u))));
    var var_4 = !(!arg_2);
    return Struct_3(func_2(_wgslsmith_f_op_f32(abs(391f)), var_1.a.b.a.x, var_3.a.b, arg_0.a.c | _wgslsmith_div_u32(~arg_0.a.c, 64704u)).b, 424f, firstTrailingBit(~(~(~var_3.c))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.c.x), _wgslsmith_f_op_f32(min(arg_1.b, arg_1.b)), 1077f, _wgslsmith_f_op_f32(f32(-1f) * -1099f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, arg_1.b, 184f, -1531f)))))));
    let var_1 = ~arg_1.c.x == _wgslsmith_sub_u32(arg_1.c.x, max(arg_0.x, arg_0.x));
    let var_2 = ~(~(~(~vec4<u32>(1u, arg_1.c.x, 1u, 74338u)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(16221u, arg_1.c.x, 56289u, arg_1.c.x), vec4<u32>(4294967295u, arg_0.x, 0u, 1u)) | _wgslsmith_div_vec4_u32(vec4<u32>(45556u, arg_0.x, 7004u, arg_1.c.x), vec4<u32>(arg_1.c.x, arg_0.x, 69351u, arg_1.c.x))) % vec4<u32>(32u))));
    let var_3 = ~(min(func_4(Struct_4(Struct_2(arg_1.a.c.x, Struct_1(vec3<i32>(0i, arg_3.x, -30604i), true, vec2<f32>(arg_1.b, 1124f)), var_2.x)), -1766f, arg_1.a.b, _wgslsmith_f_op_vec2_f32(exp2(arg_1.a.c))).c.x, firstTrailingBit(~53436u)) | 37775u);
    var var_4 = Struct_4(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))), arg_1.a, 4294967295u));
    return func_4(Struct_4(var_4.a), arg_1.b, true, func_4(Struct_4(var_4.a), _wgslsmith_f_op_f32(-var_4.a.a), true, vec2<f32>(-1603f, _wgslsmith_f_op_f32(f32(-1f) * -919f))).a.c).a;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(-218f)), func_5(select(firstLeadingBit(countOneBits(vec3<u32>(1u, 13740u, 4294967295u))), ~(~vec3<u32>(21787u, 51516u, 9967u)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), func_4(Struct_4(func_2(394f, 34377i, false, 34925u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(930f, 1000f) * _wgslsmith_div_f32(-724f, -1284f)), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, -1296f))), select(false, true, false), vec2<i32>(~(-25019i), 0i)), ~0u);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, 317f)) * var_0.a), _wgslsmith_div_i32(u_input.a, 1i), false, abs(var_0.c)).b.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_0.b.c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-845f, -103f)))), !var_0.b.b));
    let var_2 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.c, 1u), vec2<u32>(0u, 55426u) | vec2<u32>(var_0.c, 27586u)), vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_clamp_u32(1u, ~(var_0.c ^ var_0.c), 0u), 4294967295u);
    var_1 = _wgslsmith_f_op_vec2_f32(var_0.b.c - vec2<f32>(_wgslsmith_f_op_f32(-1021f - 654f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(418f - -175f)))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.c, vec2<f32>(1f, _wgslsmith_f_op_f32(min(628f, -986f)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * var_0.b.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_0.b.c.x)))));
    return select(var_0.c, _wgslsmith_add_u32(_wgslsmith_add_u32(var_2.x, var_0.c), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, var_0.c, var_2.x), vec3<u32>(1u, var_2.x, 52649u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = ~(~vec3<u32>(1u, _wgslsmith_div_u32(1u, countOneBits(4294967295u)), ~func_1()));
    var var_2 = Struct_2(208f, func_4(Struct_4(Struct_2(1906f, func_2(-1053f, -2957i, var_0, var_1.x).b, ~12345u)), _wgslsmith_f_op_f32(f32(-1f) * -438f), !func_4(Struct_4(Struct_2(-2208f, Struct_1(u_input.c.wwx, var_0, vec2<f32>(2320f, 718f)), var_1.x)), _wgslsmith_f_op_f32(trunc(-1000f)), select(var_0, false, var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, -927f))).a.b, func_5(select(var_1, var_1, var_0) >> (vec3<u32>(var_1.x, var_1.x, 4080u) % vec3<u32>(32u)), func_4(Struct_4(Struct_2(232f, Struct_1(u_input.c.yxw, var_0, vec2<f32>(-1234f, -129f)), var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -184f), any(vec3<bool>(var_0, var_0, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1053f, 1041f))), all(vec4<bool>(true, var_0, true, var_0)), vec2<i32>(~1i, min(-2147483647i, -17726i))).c).a, ~select(var_1.x, var_1.x, var_0));
    let var_3 = var_2.c;
    var var_4 = ~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, var_2.c), var_1.yz), _wgslsmith_add_vec2_u32(var_1.yz, var_1.xx)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.c, 36990u), var_1.zy) << (_wgslsmith_div_vec2_u32(var_1.zy, var_1.xx) % vec2<u32>(32u))) >> (1u % 32u));
    var_2 = Struct_2(_wgslsmith_f_op_f32(-var_2.b.c.x), Struct_1(vec3<i32>(firstLeadingBit(countOneBits(52720i)), _wgslsmith_mult_i32(-u_input.a, min(-5952i, 0i)), 65363i), true, _wgslsmith_f_op_vec2_f32(abs(var_2.b.c))), 4294967295u);
    var var_5 = func_4(Struct_4(Struct_2(222f, Struct_1(u_input.c.yyw << (vec3<u32>(var_1.x, var_2.c, var_1.x) % vec3<u32>(32u)), var_2.b.b, var_2.b.c), var_2.c)), var_2.b.c.x, all(select(select(vec3<bool>(var_0, false, true), vec3<bool>(true, true, var_0), true), select(vec3<bool>(var_2.b.b, var_2.b.b, false), vec3<bool>(false, false, true), true), false && var_0)) || var_2.b.b, _wgslsmith_f_op_vec2_f32(func_4(Struct_4(func_2(-437f, u_input.b, var_2.b.b, 1u)), _wgslsmith_f_op_f32(1f * 775f), (var_0 | true) || (506f < var_2.b.c.x), vec2<f32>(_wgslsmith_f_op_f32(sign(-102f)), _wgslsmith_f_op_f32(-var_2.a))).a.c * _wgslsmith_f_op_vec2_f32(max(var_2.b.c, _wgslsmith_f_op_vec2_f32(exp2(func_5(var_1, Struct_3(Struct_1(vec3<i32>(-1i, var_2.b.a.x, var_2.b.a.x), false, var_2.b.c), var_2.a, vec2<u32>(4294967295u, 1u)), var_2.b.b, u_input.c.yx).c))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.a.c.x))), _wgslsmith_f_op_f32(var_2.b.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1157f - var_2.a), _wgslsmith_f_op_f32(var_5.b * -544f))))));
}

