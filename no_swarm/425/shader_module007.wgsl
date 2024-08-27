struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(662f, Struct_2(vec3<i32>(2147483647i, -14838i, -826i), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(-21984i, 0i, i32(-2147483648)), vec4<f32>(121f, -991f, -884f, 326f), vec2<u32>(28290u, 4294967295u), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 1u), 4294967295u, vec3<u32>(1u, 41149u, 12557u)), Struct_3(834f, Struct_2(vec3<i32>(2147483647i, -28687i, -52155i), vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(64836i, 50539i, 2147483647i), vec4<f32>(550f, 601f, -696f, -861f), vec2<u32>(50076u, 60755u), vec3<i32>(2147483647i, 0i, -28984i), 49908u), 4294967295u, vec3<u32>(18201u, 22759u, 9106u)), Struct_3(-196f, Struct_2(vec3<i32>(13527i, 0i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(4651i, 17723i, 2147483647i), vec4<f32>(2524f, -1022f, -909f, -1028f), vec2<u32>(1u, 0u), vec3<i32>(-1i, -43838i, 1445i), 0u), 32225u, vec3<u32>(1u, 12319u, 1u)), Struct_3(899f, Struct_2(vec3<i32>(1i, 19675i, -54308i), vec4<bool>(false, false, true, false)), Struct_1(vec3<i32>(22199i, 1i, 2147483647i), vec4<f32>(-682f, -591f, 312f, -257f), vec2<u32>(0u, 0u), vec3<i32>(-45770i, -12310i, 34427i), 60118u), 4294967295u, vec3<u32>(56521u, 26517u, 0u)), Struct_3(1335f, Struct_2(vec3<i32>(1i, i32(-2147483648), 1i), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-27287i, 8184i, 17828i), vec4<f32>(-673f, -1203f, 466f, 243f), vec2<u32>(8101u, 0u), vec3<i32>(39791i, 1762i, 2147483647i), 1u), 1u, vec3<u32>(9615u, 1u, 55304u)), Struct_3(648f, Struct_2(vec3<i32>(-32770i, 50935i, 2147483647i), vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(1i, 1i, 1i), vec4<f32>(1152f, 1112f, -1238f, 165f), vec2<u32>(0u, 3373u), vec3<i32>(21636i, -7752i, 0i), 10899u), 0u, vec3<u32>(4294967295u, 0u, 31502u)), Struct_3(-1769f, Struct_2(vec3<i32>(50146i, -31033i, -7206i), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-2435i, 1i, -2790i), vec4<f32>(-400f, 1930f, 945f, -589f), vec2<u32>(21330u, 43691u), vec3<i32>(-5196i, 29573i, -1i), 24629u), 39672u, vec3<u32>(8020u, 1u, 1u)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec2<u32> {
    var var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 12096u), vec2<u32>(1u, u_input.b)), firstLeadingBit(44061u)), vec2<u32>(0u, 0u));
    return _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(1u, 0u) | ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 22309u), vec2<u32>(u_input.a.x, 1u))) << (u_input.a % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, 105865u, 19734u), vec3<u32>(0u, u_input.b, arg_1))), abs(~(firstTrailingBit(vec3<u32>(88417u, 1u, arg_1)) >> (vec3<u32>(4294967295u, arg_1, 33808u) % vec3<u32>(32u)))));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(3074u, ~arg_1 >> (arg_1 % 32u)), 0u);
    return 810f;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1149f * 1084f)) + 1478f);
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, 931f, -197f))))), select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true, false, true, all(vec2<bool>(true, false))), true), vec4<bool>(false, all(vec2<bool>(true, true)) | false, all(vec4<bool>(true, true, true, false)), countOneBits(u_input.a.x) != u_input.b), vec4<bool>(true, true & all(vec3<bool>(false, false, true)), !(u_input.a.x < u_input.a.x), true)), _wgslsmith_f_op_f32(155f + _wgslsmith_f_op_f32(abs(-1390f))));
    let var_2 = _wgslsmith_div_i32(u_input.d.x, -2147483647i);
    var var_3 = vec2<bool>(any(var_1.b.xwy), var_1.b.x);
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(var_1.a - var_1.a), var_3.x)), var_1.a)), select(var_1.b, select(select(select(var_1.b, vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b), select(var_1.b, vec4<bool>(var_1.b.x, true, true, var_3.x), var_1.b.x), true), vec4<bool>(select(var_3.x, true, var_1.b.x), var_3.x, any(vec3<bool>(true, var_1.b.x, false)), var_3.x), var_3.x), any(vec4<bool>(true, !var_1.b.x, var_2 >= var_2, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1131f - -365f), _wgslsmith_f_op_f32(-var_1.a.x))) - _wgslsmith_f_op_f32(-var_1.a.x))));
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(u_input.a.x ^ ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 28063u, u_input.a.x, 13545u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), vec4<bool>(true, true, false, false)), abs(vec4<u32>(1u, 34038u, u_input.a.x, u_input.b)))), ~u_input.b, 21374u);
    global1 = array<Struct_3, 7>();
    var var_1 = ~var_0.yx;
    let var_2 = max(-2147483647i | -(_wgslsmith_div_i32(u_input.d.x, -2466i) | u_input.d.x), u_input.d.x);
    var var_3 = var_0.yz;
    var_3 = (_wgslsmith_sub_vec2_u32(var_0.wx, vec2<u32>(u_input.b | 0u, u_input.b)) | (vec2<u32>(abs(u_input.b), var_3.x) << (vec2<u32>(var_3.x | 0u, 83428u | u_input.a.x) % vec2<u32>(32u)))) >> (~(~func_1()) % vec2<u32>(32u));
    let var_4 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_2, var_3.x)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(-555f, 260f))), select(vec4<bool>(true, 1u != u_input.a.x, false, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), true, any(vec4<bool>(false, true, false, true))), all(vec2<bool>(true, true))), -1968f);
    var_1 = vec2<u32>(~37256u, func_1().x);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(~_wgslsmith_dot_vec3_u32(~var_0.xyz, _wgslsmith_clamp_vec3_u32(var_0.yxx, vec3<u32>(var_1.x, 0u, 1u), var_0.xxx)), u_input.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, -2398i, var_2), u_input.d.xxw), ~var_2) != _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, var_2), var_5, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f + -236f) + _wgslsmith_f_op_f32(-var_4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f * var_4.c) + _wgslsmith_f_op_f32(var_4.c + 1206f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-709f + -1355f), _wgslsmith_f_op_f32(ceil(-335f))))))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.c), _wgslsmith_f_op_f32(func_2(firstTrailingBit(var_5), 36385u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.c), _wgslsmith_f_op_f32(-1096f - var_4.c), true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f))))));
}

