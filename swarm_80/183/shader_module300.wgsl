struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.d.c.x, arg_1.d.c.x, arg_1.c))))));
    let var_1 = u_input.a.yz;
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(-12491i, reverseBits(max(u_input.a.x, u_input.a.x)), 2147483647i, ~arg_0.b.a.x), max(vec4<i32>(~var_1.x, var_1.x, ~arg_1.b, arg_0.b.a.x) >> (vec4<u32>(firstLeadingBit(u_input.b), _wgslsmith_div_u32(0u, u_input.c.x), 1u, min(arg_1.d.b, 0u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(var_1.x, 1i), _wgslsmith_dot_vec3_i32(arg_0.b.a, arg_1.d.a), arg_0.b.a.x, _wgslsmith_div_i32(0i, u_input.a.x) ^ u_input.a.x)), vec4<i32>(i32(-1i) * -24497i, u_input.a.x, reverseBits(1i & arg_0.b.a.x), firstTrailingBit(-var_1.x >> (u_input.c.x % 32u))));
    let var_3 = -(u_input.a ^ (~(-var_2) ^ _wgslsmith_add_vec4_i32(max(u_input.a, vec4<i32>(-1i, 0i, var_2.x, 38220i)), u_input.a)));
    let var_4 = vec4<bool>(false, false, arg_1.e.x, _wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - arg_0.b.c.x) - _wgslsmith_f_op_f32(-arg_1.d.c.x))) < arg_1.d.c.x);
    return u_input.b;
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(abs(u_input.c.x), func_3(Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(75971u, u_input.b, 6521u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) >> (~u_input.c % vec3<u32>(32u)), Struct_1(u_input.a.zyz, u_input.c.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, 1000f, arg_0.x), vec4<f32>(arg_0.x, 281f, -735f, 511f), vec4<bool>(true, false, false, true))))), Struct_3(true, ~_wgslsmith_dot_vec3_i32(u_input.a.xxz, vec3<i32>(-26675i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(u_input.a.xyz, 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -258f, -238f))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1411f, -411f)) * 611f);
    let var_2 = Struct_2(firstLeadingBit(u_input.c), Struct_1(~(~_wgslsmith_add_vec3_i32(u_input.a.xyz, u_input.a.zyw)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0, u_input.c.x, var_0, 1u)), ~(~vec4<u32>(17781u, 43696u, 15463u, 9750u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-144f, var_1, var_1, arg_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-474f, var_1, arg_0.x, 1882f), vec4<f32>(493f, 1192f, var_1, 102f))), any(vec3<bool>(true, false, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, var_1, var_1, -953f), vec4<f32>(501f, 811f, 765f, var_1))))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.c.x))));
    var_3 = -1678f;
    return !(!vec3<bool>(select(any(vec4<bool>(true, false, true, true)), true, false), !all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.c.x, _wgslsmith_f_op_f32(-arg_1.c.x), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.c.x)), _wgslsmith_f_op_f32(arg_1.c.x - -404f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x))) * arg_1.c));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.ww * arg_1.c.wy);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), arg_1.c.x, true))), arg_1.c.x, _wgslsmith_f_op_f32(sign(var_1.x)));
    var var_2 = any(arg_0.zx);
    var var_3 = 1u;
    return Struct_2(u_input.c, arg_1);
}

fn func_1() -> f32 {
    let var_0 = func_4(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2(vec3<f32>(-416f, -155f, -1246f)), false), select(vec3<bool>(true, true, false), func_2(vec3<f32>(-351f, -517f, 587f)), true)), !(!func_2(vec3<f32>(1151f, -1000f, 2034f))), any(vec4<bool>(true, true, true, true))), Struct_1(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(u_input.a.x, -16466i, u_input.a.x)) << (~(vec3<u32>(u_input.b, u_input.c.x, u_input.b) | u_input.c) % vec3<u32>(32u)), 28301u, vec4<f32>(-1785f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(944f, 1202f))), _wgslsmith_f_op_f32(f32(-1f) * -938f), 599f)));
    var var_1 = func_4(vec3<bool>(true, false && func_2(var_0.b.c.yzy).x, select(true, func_2(var_0.b.c.zzy).x, true) & (48856i != var_0.b.a.x)), Struct_1(~(~_wgslsmith_mod_vec3_i32(var_0.b.a, vec3<i32>(-46989i, -1i, u_input.a.x))), var_0.a.x, _wgslsmith_f_op_vec4_f32(-var_0.b.c))).b;
    var var_2 = var_0.b;
    var_1 = var_0.b;
    var var_3 = var_0;
    return -1210f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1()), -379f));
    var var_1 = func_4(vec3<bool>(true, true, true), func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, 1040f, 360f))), func_4(vec3<bool>(false, false, true), Struct_1(-vec3<i32>(41911i, 1i, u_input.a.x), u_input.b, func_4(vec3<bool>(false, true, false), Struct_1(vec3<i32>(u_input.a.x, -29289i, u_input.a.x), 4294967295u, vec4<f32>(795f, -755f, 1000f, -232f))).b.c)).b).b).b;
    var_1 = func_4(select(vec3<bool>(false, true & (var_1.c.x <= var_1.c.x), true), vec3<bool>(all(vec4<bool>(true, false, false, true)), false, true), vec3<bool>(true, !func_2(var_1.c.zyw).x, select(true, false, false))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~(-355i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -19328i, u_input.a.x), vec4<i32>(var_1.a.x, u_input.a.x, 2147483647i, var_1.a.x)), -2147483647i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 7955i, var_1.a.x), vec4<i32>(u_input.a.x, -4598i, 2147483647i, u_input.a.x)), var_1.a.x, i32(-1i) * -1i)), 53815u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(var_1.c))))))).b;
    let var_2 = select(vec3<bool>(false, true, all(func_2(vec3<f32>(701f, var_1.c.x, var_1.c.x)).xx)), !select(func_2(_wgslsmith_f_op_vec3_f32(var_1.c.ywx + var_1.c.zwx)), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, var_1.c.x, 1057f))), vec3<bool>(any(vec2<bool>(false, false)), all(vec3<bool>(false, false, false)), true)), !(!(!any(vec2<bool>(true, true)))));
    let var_3 = Struct_3(true, ~(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), reverseBits(0i)) | _wgslsmith_mult_i32(-17627i, var_1.a.x)), var_1.c.x, func_4(var_2, func_4(vec3<bool>(var_2.x, select(true, var_2.x, false), !var_2.x), Struct_1(vec3<i32>(-2147483647i, var_1.a.x, var_1.a.x) >> (vec3<u32>(u_input.c.x, u_input.b, u_input.c.x) % vec3<u32>(32u)), func_3(Struct_2(vec3<u32>(1u, var_1.b, var_1.b), Struct_1(vec3<i32>(u_input.a.x, 9986i, u_input.a.x), 0u, vec4<f32>(1462f, 679f, 556f, var_1.c.x))), Struct_3(true, u_input.a.x, var_1.c.x, Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), var_1.b, vec4<f32>(491f, var_1.c.x, -380f, var_1.c.x)), vec4<bool>(true, false, false, var_2.x))), _wgslsmith_f_op_vec4_f32(-var_1.c))).b).b, vec4<bool>(var_2.x, false, var_2.x, !(!(false == var_2.x))));
    let var_4 = ~(max(~vec4<u32>(u_input.c.x, var_1.b, var_1.b, var_3.d.b), min(abs(vec4<u32>(0u, 1u, 30201u, var_3.d.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, 0u), vec4<u32>(var_3.d.b, u_input.c.x, var_3.d.b, 12157u)))) | (min(~vec4<u32>(var_1.b, 0u, 4294967295u, 29193u), ~vec4<u32>(65722u, var_3.d.b, var_1.b, u_input.c.x)) ^ (vec4<u32>(var_1.b, var_1.b, 1u, 0u) >> (vec4<u32>(4294967295u, var_3.d.b, 21627u, u_input.b) % vec4<u32>(32u)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(422f, _wgslsmith_f_op_f32(var_3.c * _wgslsmith_f_op_f32(-222f - 1f))) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1296f * func_4(vec3<bool>(var_2.x, true, var_3.e.x), var_3.d).b.c.x), var_3.d.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(select(1175f, var_1.c.x, false)))))))));
    var_0 = _wgslsmith_f_op_f32(exp2(var_1.c.x));
    let var_5 = _wgslsmith_mult_vec4_u32(var_4 ^ vec4<u32>(0u, _wgslsmith_div_u32(u_input.c.x, var_3.d.b), countOneBits(~u_input.c.x), var_3.d.b), var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~func_4(var_3.e.yxx, var_3.d).a.x, 1u, 21310u), _wgslsmith_mod_vec4_u32(select(firstLeadingBit(var_5), vec4<u32>(0u, 98882u, var_1.b, 26448u), !var_3.e), var_5)));
}

