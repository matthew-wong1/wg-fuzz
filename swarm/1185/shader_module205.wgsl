struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<i32>(-21609i, -1i, -11421i, -54178i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(0i, -82207i, 19209i, 23475i), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(8548i, 3141i, -88094i, -1i), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(-36378i, 1i, 1i, -1i), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(48616i, 13366i, -1i, -1i), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(1i, 1i, -1i, -38230i), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(6577i, -19658i, 0i, 1i), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-1i, 2148i, -1i, 1i), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -25254i, 52226i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(1829i, i32(-2147483648), -32016i, -8289i), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(5832i, i32(-2147483648), 3771i, 9597i), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(2147483647i, -1i, i32(-2147483648), -22860i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -39381i, 0i), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(-14235i, i32(-2147483648), -1i, 19746i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-18038i, -27527i, i32(-2147483648), -17477i), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(33578i, -8681i, 6073i, -1i), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-61587i, 1i, i32(-2147483648), -24413i), vec3<bool>(false, false, true)), Struct_1(vec4<i32>(38226i, -1i, -9530i, -18988i), vec3<bool>(true, false, true)), Struct_1(vec4<i32>(0i, 0i, -8333i, -1i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-45044i, -33238i, -3832i, 0i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-15376i, -1i, 29972i, 1i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-6928i, i32(-2147483648), 2147483647i, -6261i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(-39800i, i32(-2147483648), 0i, -14869i), vec3<bool>(false, true, true)), Struct_1(vec4<i32>(54983i, -1i, 1i, 1i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(1498i, -4661i, i32(-2147483648), 2147483647i), vec3<bool>(false, true, false)), Struct_1(vec4<i32>(-11514i, -1511i, -1i, -1i), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(-10404i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(vec4<i32>(1i, -1i, -45857i, 2147483647i), vec3<bool>(false, false, false)), Struct_1(vec4<i32>(2147483647i, 0i, 1i, -32054i), vec3<bool>(false, false, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global0 = array<vec4<bool>, 26>();
    let var_0 = ~vec2<u32>(firstLeadingBit(~59982u), reverseBits(0u));
    global0 = array<vec4<bool>, 26>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-728f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f + 600f) - _wgslsmith_f_op_f32(abs(250f))), -499f, false))) * -607f);
    global1 = select(vec3<u32>(_wgslsmith_div_u32(countOneBits(48324u), _wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.a.x) >> (firstLeadingBit(var_0.x) % 32u)), 0u, u_input.a.x), vec3<u32>(0u, 12431u, 0u), !(!(!arg_0.b)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(613f * var_1), -430f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * _wgslsmith_div_f32(var_1, var_1))), vec2<f32>(var_1, _wgslsmith_f_op_f32(-var_1)), all(!select(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(17651u, 26u)], arg_0.b.x)))));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    global2 = array<Struct_1, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_1, -(~(-11246i))))) * vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(arg_1.a, arg_1.b), -650i ^ arg_1.a.x)).x)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~0i);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(-202f)), -1316f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(124f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(742f)), _wgslsmith_f_op_f32(-813f - 487f))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -489f), Struct_1(-vec4<i32>(var_0, var_0, var_0, var_0), vec3<bool>(false, true, true)))))), vec2<bool>(true, true | (any(vec3<bool>(true, false, false)) != all(vec3<bool>(true, true, true))))));
    var var_2 = Struct_1(_wgslsmith_mult_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(13939i, -44380i, var_0, var_0), _wgslsmith_add_vec4_i32(vec4<i32>(var_0, -61621i, var_0, 20346i), vec4<i32>(var_0, 0i, -18206i, -4860i)))), abs(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(44960i, -3053i, var_0, -2147483647i), vec4<i32>(var_0, var_0, -25270i, var_0), vec4<i32>(-16895i, var_0, var_0, var_0)), countOneBits(vec4<i32>(-10746i, var_0, -2147483647i, var_0))))), !(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, true))));
    let var_3 = Struct_2(var_1.x, Struct_1(var_2.a, !(!select(var_2.b, var_2.b, var_2.b.x))), var_1.x);
    var var_4 = abs((_wgslsmith_add_i32(-3906i, -39320i) | _wgslsmith_dot_vec2_i32(var_3.b.a.xx, min(var_3.b.a.xz, vec2<i32>(25768i, var_0)))) >> (u_input.b.x % 32u));
    return global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(countOneBits(_wgslsmith_clamp_i32(14301i, -1i, -48319i) | ~70828i), _wgslsmith_mult_i32(52523i ^ (21329i >> (u_input.b.x % 32u)), 63888i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-29892i, 11229i)), 1i));
    global1 = ~vec3<u32>(global1.x, countOneBits(~25502u), ~0u);
    global0 = array<vec4<bool>, 26>();
    let var_1 = var_0;
    var var_2 = func_1();
    global0 = array<vec4<bool>, 26>();
    global1 = select(u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(31760u, firstLeadingBit(u_input.a.x)), abs(~global1.x), 4294967295u), countOneBits(abs(u_input.a & u_input.b.yww)), u_input.a), var_2.b);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-785f, _wgslsmith_div_f32(883f, -2423f))) - -1000f), global2[_wgslsmith_index_u32(global1.x, 29u)])).x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, 0u) >> (u_input.b.zzw % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 24558u, u_input.a.x)), select(19978u, 0u, true) << (global1.x % 32u)) ^ ~(~(~13062u)), 29u)], _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(max(651f, _wgslsmith_f_op_f32(f32(-1f) * -1263f))), Struct_1(var_2.a | vec4<i32>(var_2.a.x, 12942i, var_2.a.x, 0i), vec3<bool>(var_2.b.x, var_2.b.x, true)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(-1i, _wgslsmith_dot_vec2_i32(~var_1.xy, ~var_0.xz), var_2.b.x)));
}

