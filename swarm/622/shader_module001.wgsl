struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = -1448f;
    var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_1 = Struct_4(1u, vec3<bool>(any(vec3<bool>(all(vec4<bool>(true, true, false, true)), false, any(vec3<bool>(false, false, true)))), true, all(vec2<bool>(true, true))), 76356i, !select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true))), Struct_1(vec3<u32>(19168u, 1u, 1u | u_input.a.x), all(vec3<bool>(true, true, true))));
    let var_2 = Struct_3(var_1.e, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(1682f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(arg_1.x, arg_2.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, -1087f, arg_1.x))))))));
    var_1 = Struct_4(~_wgslsmith_clamp_u32(~19731u, 1u, select(u_input.a.x, ~var_1.a, false)), var_1.b, var_1.c, var_1.b.zx, Struct_1(_wgslsmith_add_vec3_u32(arg_0.wwz, var_1.e.a), (var_1.c == ~180i) | false));
    return var_1.c;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(~(~u_input.a.x) & u_input.a.x);
    let var_1 = Struct_4(~1u, !vec3<bool>(all(vec3<bool>(false, false, true)), true, true), _wgslsmith_sub_i32(1i | func_3(vec4<u32>(0u, var_0, var_0, var_0), vec3<f32>(-256f, -259f, 590f), vec3<f32>(1000f, -946f, -762f), vec3<u32>(var_0, var_0, 4294967295u)), 0i) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 25781u), ~var_0) % 32u), select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), any(vec2<bool>(true, true))))), Struct_1(min(vec3<u32>(1u, 4294967295u, 1u) | select(vec3<u32>(4294967295u, 0u, u_input.a.x), u_input.a.zww, true), ~u_input.a.xzy), select(false, true | all(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))))));
    var var_2 = abs(vec4<i32>(func_3(max(vec4<u32>(var_1.a, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(33669u, var_0, 4294967295u, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1482f, 547f, -1475f) * vec3<f32>(1038f, 638f, 218f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1137f, -1535f) - vec3<f32>(971f, 884f, -1168f)), vec3<u32>(63151u, 0u, 0u)) ^ firstLeadingBit(0i), -1i, _wgslsmith_clamp_i32(16304i, select(var_1.c, i32(-1i) * -13754i, var_1.d.x), 8879i), ~(-_wgslsmith_clamp_i32(var_1.c, var_1.c, 2147483647i))));
    var_2 = max(~countOneBits(vec4<i32>(~(-3000i), ~var_2.x, var_1.c, var_1.c)), firstTrailingBit(reverseBits(vec4<i32>(1i, var_2.x >> (1u % 32u), -7252i, var_2.x))));
    var var_3 = ~_wgslsmith_div_vec4_i32(min(~(vec4<i32>(-1i, 2147483647i, var_1.c, var_2.x) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(var_2.x, var_2.x, var_1.c, -1i) >> (~vec4<u32>(var_0, var_1.a, 0u, 44922u) % vec4<u32>(32u))), vec4<i32>(var_1.c, var_2.x, -firstLeadingBit(var_2.x), max(~(-5796i), var_2.x)));
    return var_1.e;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -473f)))))));
    var var_1 = Struct_2(64499u, func_2(), Struct_1(_wgslsmith_mult_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 93381u, u_input.a.x), vec3<u32>(62403u, 0u, 87363u)), u_input.a.zyy << (u_input.a.wyx % vec3<u32>(32u)), true), vec3<u32>(u_input.a.x, 0u, ~4708u)), false), func_2(), func_2());
    var var_2 = firstLeadingBit(max(_wgslsmith_add_i32(arg_0.x, _wgslsmith_mod_i32(arg_0.x, arg_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, -7516i, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, arg_0.x, arg_0.x)), select(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, 9526i), var_1.c.b)), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -2147483647i, 0i, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, 49073i, 2147483647i))))));
    let var_3 = select(!select(!vec2<bool>(var_1.d.b, false), !select(vec2<bool>(var_1.e.b, false), vec2<bool>(var_1.c.b, false), var_1.d.b), any(vec2<bool>(false, true)) & func_2().b), select(select(!select(vec2<bool>(var_1.d.b, true), vec2<bool>(false, var_1.c.b), vec2<bool>(false, var_1.c.b)), vec2<bool>(true, true), var_1.e.b), !(!(!vec2<bool>(var_1.c.b, var_1.c.b))), (abs(u_input.a.x) >= countOneBits(var_1.d.a.x)) & !var_1.c.b), select(select(vec2<bool>(var_1.b.b, arg_0.x <= -32424i), !(!vec2<bool>(var_1.c.b, var_1.b.b)), any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b.b, var_1.e.b, true), vec3<bool>(false, var_1.d.b, false)))), vec2<bool>(all(select(vec4<bool>(var_1.c.b, var_1.d.b, false, true), vec4<bool>(var_1.c.b, var_1.e.b, false, false), vec4<bool>(false, false, true, true))), any(vec3<bool>(true, true, true))), -arg_0.x >= 1i));
    var_2 = _wgslsmith_dot_vec3_i32(-abs(abs(-vec3<i32>(arg_0.x, arg_0.x, -2147483647i))), _wgslsmith_mult_vec3_i32(firstTrailingBit(~vec3<i32>(arg_0.x, arg_0.x, 58411i)), vec3<i32>(arg_0.x, firstLeadingBit(arg_0.x), -(~arg_0.x))));
    return Struct_3(var_1.e, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, -376f, -1181f), vec3<f32>(313f, var_0, 403f))))), vec3<f32>(-807f, _wgslsmith_f_op_f32(1000f - var_0), -909f))))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    var var_0 = 25693u;
    let var_1 = true;
    return Struct_2(abs(1u), arg_0.a, arg_0.a, func_2(), func_2());
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_1(-vec2<i32>(23599i, 2147483647i)).b.x)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1f))))));
    let var_1 = func_1(vec2<i32>(i32(-1i) * -_wgslsmith_mult_i32(13337i, 0i), 24839i));
    let var_2 = _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~(u_input.a >> (reverseBits(u_input.a) % vec4<u32>(32u))), vec4<u32>(0u, arg_2.d.a.x, firstTrailingBit(arg_0.c.a.x), ~countOneBits(4294967295u))));
    var var_3 = _wgslsmith_f_op_f32(min(-363f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.x + var_0)))));
    var var_4 = true;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(abs(u_input.a.x), Struct_1(u_input.a.yyz, func_5(func_4(func_1(vec2<i32>(1i, 79468i)), countOneBits(-36685i)), vec4<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(false, false, true)), func_1(vec2<i32>(-39059i, -1i)).a.b), func_4(func_1(vec2<i32>(-2147483647i, 15502i)), ~(-1i)), func_4(func_1(vec2<i32>(30149i, -1i)), -49992i))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~u_input.a.x, 41598u), u_input.a.zxz), true), Struct_1(func_2().a, true), Struct_1(vec3<u32>(u_input.a.x, ~_wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.a.x), true));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 8414i, 14387i) << (vec3<u32>(36873u, var_0.a, u_input.a.x) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(1i, -20547i, 44598i))), _wgslsmith_mod_i32(firstLeadingBit(67991i), -28675i)), 13703i, max(_wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(2147483647i, 1i)), _wgslsmith_div_i32(0i, 16290i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -11645i, reverseBits(-52817i), func_3(u_input.a, vec3<f32>(990f, -194f, 679f), vec3<f32>(2270f, 146f, -1003f), var_0.c.a), abs(-7496i)), firstTrailingBit(~vec4<i32>(16950i, 72i, 28674i, -1i))));
    var var_2 = ~var_0.b.a.zy << (countOneBits(vec2<u32>(var_0.e.a.x, 1u)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(max(_wgslsmith_mod_vec2_u32(u_input.a.wz, vec2<u32>(56699u, 0u)), u_input.a.wx), firstTrailingBit(vec2<u32>(34275u, var_0.d.a.x)))), var_0.d.a.zx);
    let var_4 = firstTrailingBit(var_1.x);
    var_2 = min(reverseBits(var_0.c.a.zy) >> (var_0.e.a.zx % vec2<u32>(32u)), select(var_0.d.a.xx, ~_wgslsmith_mult_vec2_u32(var_0.b.a.yy ^ vec2<u32>(u_input.a.x, 47379u), u_input.a.yw), false));
    var var_5 = func_4(func_1(reverseBits(vec2<i32>(min(var_4, var_1.x), _wgslsmith_sub_i32(0i, -2147483647i)))), ~var_1.x ^ 54010i);
    var_3 = _wgslsmith_clamp_u32(~(~var_5.d.a.x), _wgslsmith_sub_u32(reverseBits(var_0.e.a.x) & ~var_5.d.a.x, var_0.d.a.x), var_5.e.a.x);
    var var_6 = Struct_4(abs(u_input.a.x), vec3<bool>(all(vec3<bool>(false, true, false)), !var_5.b.b, true), firstTrailingBit(var_1.x), vec2<bool>(var_0.c.b, true || (firstLeadingBit(-86562i) >= var_1.x)), var_5.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(reverseBits(var_5.e.a.x), 15822u), -1283f, reverseBits(firstLeadingBit(var_4)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, _wgslsmith_f_op_f32(step(-1008f, -176f)), _wgslsmith_f_op_f32(sign(616f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, -874f, 1271f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1511f, -411f, -746f)))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -561f))), _wgslsmith_f_op_f32(f32(-1f) * -703f)), -436f, -443f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-937f, _wgslsmith_f_op_f32(sign(413f)))) - 1000f)));
}

