struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(124f, -1584f))), _wgslsmith_f_op_f32(f32(-1f) * -172f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(258f, 166f), _wgslsmith_f_op_f32(-1000f - -2321f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f + -176f) - _wgslsmith_f_op_f32(149f - 964f))))), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(537f * 366f) * _wgslsmith_f_op_f32(floor(-233f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(min(1169f, var_0.c)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2625f, var_0.a))), var_0.b, var_0.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(414f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - var_0.c), _wgslsmith_f_op_f32(var_0.a - var_1.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1895f, -1348f)) - _wgslsmith_f_op_f32(floor(var_1.c)))))));
    let var_3 = var_1;
    let var_4 = var_3;
    return vec3<bool>(var_4.b.x | all(!var_1.b), !var_0.b.x, any(!select(var_0.b.yz, !vec2<bool>(var_0.b.x, var_0.b.x), var_1.b.x)));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(-639f)), arg_0.b, _wgslsmith_f_op_f32(-1556f * -540f));
    return !(~(~0u) >= ~(~(~u_input.b)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(Struct_1(1000f, func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -214f) + _wgslsmith_f_op_f32(-1000f - -1465f))));
    let var_1 = abs(firstTrailingBit(4294967295u));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-127f, _wgslsmith_f_op_f32(398f * 743f)))), 772f), vec3<bool>(any(func_3()), true, max(var_1, ~4294967295u) <= 1u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-629f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(209f, 736f), -1504f)), var_0)))));
    var var_3 = func_3();
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, _wgslsmith_f_op_f32(340f - var_2.a), 1355f, _wgslsmith_f_op_f32(var_2.c * 1000f))))));
    return Struct_1(_wgslsmith_f_op_f32(select(var_4.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(535f, _wgslsmith_f_op_f32(-var_2.c), func_3().x)))), true)), var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -738f))))));
}

fn func_1() -> u32 {
    let var_0 = func_2(vec4<i32>(u_input.c, -u_input.c | 1i, -(_wgslsmith_div_i32(2147483647i, u_input.c) ^ select(1i, 2147483647i, false)), -_wgslsmith_sub_i32(_wgslsmith_add_i32(9152i, u_input.c), u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(9618i, u_input.c, -1681i)), _wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(-2147483647i, u_input.c, u_input.c))), _wgslsmith_mult_vec3_i32(-vec3<i32>(-31425i, u_input.c, u_input.c), abs(vec3<i32>(75760i, 21994i, -1i)) >> (u_input.a.ywy % vec3<u32>(32u)))));
    var var_1 = var_0.b.x;
    let var_2 = var_0;
    let var_3 = Struct_1(var_0.c, vec3<bool>(var_0.b.x, func_4(var_0), all(vec4<bool>(false, var_0.b.x, true, any(vec4<bool>(true, true, var_2.b.x, true))))), _wgslsmith_f_op_f32(max(func_2(select(vec4<i32>(-19213i, -1i, u_input.c, u_input.c), abs(vec4<i32>(u_input.c, 11955i, u_input.c, u_input.c)), true), vec3<i32>(-1i, u_input.c & u_input.c, select(u_input.c, u_input.c, true))).a, _wgslsmith_f_op_f32(trunc(-1275f)))));
    var_1 = true;
    return 35132u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.yz;
    let var_1 = 103334u << ((_wgslsmith_mult_u32(var_0.x ^ 25624u, ~1u) ^ u_input.a.x) % 32u);
    var_0 = u_input.a.yx >> (_wgslsmith_add_vec2_u32(vec2<u32>(func_1(), u_input.b) >> ((countOneBits(vec2<u32>(4294967295u, 21940u)) & (u_input.a.xw >> (u_input.a.xz % vec2<u32>(32u)))) % vec2<u32>(32u)), vec2<u32>(1u, select(var_1, 1u, true)) >> (vec2<u32>(94732u, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = 2147483647i;
    var var_3 = u_input.a;
    var var_4 = 56319i;
    var var_5 = Struct_1(-1434f, vec3<bool>(true, true, true & (_wgslsmith_sub_u32(var_1, var_1) <= 1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -2090f)))))));
    var_3 = firstLeadingBit(_wgslsmith_add_vec4_u32(select(select(vec4<u32>(u_input.b, 5607u, u_input.a.x, 4294967295u), vec4<u32>(8408u, var_1, 0u, 63461u), true), ~vec4<u32>(0u, var_0.x, var_3.x, 1u), true), select(firstLeadingBit(vec4<u32>(0u, 0u, u_input.a.x, var_0.x)), ~u_input.a, select(vec4<bool>(var_5.b.x, var_5.b.x, var_5.b.x, var_5.b.x), vec4<bool>(var_5.b.x, false, var_5.b.x, true), var_5.b.x))) | _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 5107u, var_0.x, var_1), countOneBits(vec4<u32>(var_1, 63456u, 58090u, 47839u))), vec4<u32>(1u, 0u, countOneBits(u_input.b), ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-37677i, i32(-1i) * -u_input.c, countOneBits(~u_input.c)), ~_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.wz & vec2<u32>(var_0.x, 0u)), vec2<u32>(4294967295u, var_1)), ~((68353u >> (var_3.x % 32u)) << ((4315u << (var_3.x % 32u)) % 32u)) >> (~(var_3.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_3.x, 86384u, 4294967295u), vec4<u32>(54380u, var_0.x, var_1, var_1))) % 32u), firstLeadingBit(vec2<i32>(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 52072i), vec2<i32>(-2147483647i, -6269i)))));
}

