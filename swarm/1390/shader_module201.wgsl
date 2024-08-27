struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-1362i, 0i), vec2<i32>(-42110i, 17904i), vec2<i32>(-63243i, -1i), vec2<i32>(-53315i, 1i), vec2<i32>(-27596i, -9501i), vec2<i32>(0i, 10984i), vec2<i32>(937i, -63052i), vec2<i32>(-24499i, 17642i), vec2<i32>(-19886i, 0i), vec2<i32>(-8204i, -59910i), vec2<i32>(2147483647i, 346i), vec2<i32>(4752i, -70481i), vec2<i32>(1i, 1i), vec2<i32>(-75822i, 0i), vec2<i32>(i32(-2147483648), -24706i), vec2<i32>(0i, -4939i), vec2<i32>(i32(-2147483648), -32458i), vec2<i32>(i32(-2147483648), 3579i), vec2<i32>(-25244i, 0i), vec2<i32>(3313i, 2147483647i), vec2<i32>(0i, 39375i), vec2<i32>(-1i, 62400i), vec2<i32>(41827i, i32(-2147483648)), vec2<i32>(-8371i, 1i), vec2<i32>(-17749i, -1i), vec2<i32>(-1i, -7995i), vec2<i32>(-1i, -4827i), vec2<i32>(10365i, 13961i), vec2<i32>(-41247i, 0i), vec2<i32>(1i, -34728i));

var<private> global1: f32 = -415f;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(false, 22393u, vec4<u32>(0u, 9408u, 44616u, 0u), -2257f, 2147483647i), Struct_1(true, 34976u, vec4<u32>(0u, 1u, 25814u, 4294967295u), 325f, 0i), Struct_1(true, 0u, vec4<u32>(1u, 0u, 29949u, 14380u), -1176f, -10472i)), Struct_2(Struct_1(true, 9589u, vec4<u32>(4294967295u, 40820u, 28353u, 0u), 1000f, 2147483647i), Struct_1(true, 4294967295u, vec4<u32>(103821u, 4294967295u, 4294967295u, 5685u), -1414f, -44557i), Struct_1(false, 35833u, vec4<u32>(4294967295u, 149932u, 37019u, 8751u), -147f, 0i)), Struct_2(Struct_1(false, 9384u, vec4<u32>(4294967295u, 4294967295u, 14524u, 92149u), 2076f, -3883i), Struct_1(false, 1678u, vec4<u32>(0u, 4294967295u, 132417u, 16740u), -1636f, 34363i), Struct_1(false, 52543u, vec4<u32>(1u, 1u, 1u, 1u), 356f, 1i)), Struct_2(Struct_1(true, 0u, vec4<u32>(75507u, 22042u, 61963u, 1544u), -281f, -24954i), Struct_1(false, 28008u, vec4<u32>(79826u, 0u, 0u, 4294967295u), 1245f, -30992i), Struct_1(false, 4294967295u, vec4<u32>(0u, 4294967295u, 15150u, 62754u), -471f, -5138i)), Struct_2(Struct_1(false, 29842u, vec4<u32>(38388u, 34990u, 4294967295u, 448u), 1000f, -39524i), Struct_1(false, 97707u, vec4<u32>(8269u, 1u, 18355u, 4294967295u), 260f, -39518i), Struct_1(false, 0u, vec4<u32>(1u, 36465u, 0u, 4294967295u), -378f, 1i)), Struct_2(Struct_1(false, 32956u, vec4<u32>(4294967295u, 1u, 1u, 25327u), 1760f, 1i), Struct_1(false, 1u, vec4<u32>(0u, 29961u, 4294967295u, 4294967295u), 435f, -6408i), Struct_1(false, 4294967295u, vec4<u32>(10261u, 1u, 1u, 1u), -1038f, 1i)));

var<private> global3: vec4<f32> = vec4<f32>(-1861f, -1690f, -1986f, -1209f);

var<private> global4: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(-65559i, 0i), Struct_4(-58380i, -45813i), Struct_4(-50306i, -1i), Struct_4(-1121i, 4691i), Struct_4(2147483647i, 2147483647i), Struct_4(1i, 20357i), Struct_4(45232i, -5938i), Struct_4(5625i, 2147483647i), Struct_4(-1i, 0i), Struct_4(-30658i, -28412i), Struct_4(0i, 2147483647i), Struct_4(-15364i, 2147483647i), Struct_4(-66262i, -6939i), Struct_4(32590i, -14465i), Struct_4(1i, -1i), Struct_4(-11795i, 5756i), Struct_4(62420i, 59672i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = select(reverseBits(vec4<i32>(u_input.c, -62550i, 0i, ~(-37834i))), firstTrailingBit(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(0i, u_input.c, 18221i, 2147483647i), vec4<i32>(-17100i, u_input.c, -2147483647i, u_input.c), vec4<bool>(false, false, arg_0.x, arg_0.x)), -(~vec4<i32>(-2147483647i, -16961i, u_input.c, u_input.c)))), vec4<bool>(!(!all(vec3<bool>(arg_0.x, false, arg_0.x))), arg_0.x, !(!(!arg_0.x)), !(false | all(vec4<bool>(true, arg_0.x, true, arg_0.x)))));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-983f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, global3.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-141f, _wgslsmith_f_op_f32(f32(-1f) * -134f))), 974f), global3.x, 954f);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f)))));
    let var_2 = arg_0.yz;
    var var_3 = ~vec4<u32>(1u, 83176u, _wgslsmith_div_u32(14761u, u_input.b.x << (~u_input.b.x % 32u)), 27227u);
    return vec2<bool>(true, var_2.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    var var_0 = arg_1.x;
    let var_1 = Struct_4(arg_0.b.c.e, u_input.c);
    var_0 = arg_0.b.a.e;
    global4 = array<Struct_4, 17>();
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.a.d, -197f, arg_0.c, arg_0.c), vec4<f32>(1433f, 425f, 1464f, 354f), arg_0.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(813f, -909f, global3.x, arg_0.c) * vec4<f32>(270f, arg_0.b.b.d, 1000f, -651f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-826f, 364f, 926f, arg_0.b.b.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, arg_0.c, global3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.d, global3.x, 256f, arg_0.c)) + vec4<f32>(1016f, global3.x, 936f, global3.x)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.b.c.d, 139f, 1562f) * vec4<f32>(global3.x, arg_0.b.a.d, global3.x, arg_0.b.b.d))))), !(!vec4<bool>(arg_0.a.x, arg_2, false, true)))));
    return countOneBits(countOneBits(24110u));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    global0 = array<vec2<i32>, 30>();
    let var_0 = Struct_1(!(!arg_2), func_4(Struct_3(vec3<bool>(arg_2, all(vec2<bool>(arg_2, false)), true), Struct_2(Struct_1(arg_2, 0u, vec4<u32>(arg_1.x, 41782u, arg_0.x, arg_1.x), 1275f, u_input.c), Struct_1(arg_2, arg_1.x, u_input.b, global3.x, 32787i), Struct_1(arg_2, 41838u, vec4<u32>(0u, arg_1.x, 0u, 47376u), -1571f, -60027i)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, global3.x) - 555f), reverseBits(abs(-6270i))), vec4<i32>(1i, max(1i, u_input.c), u_input.c, -7505i), any(func_3(!vec3<bool>(false, true, arg_2), _wgslsmith_f_op_vec3_f32(vec3<f32>(871f, global3.x, global3.x) + global3.xzx)))), _wgslsmith_add_vec4_u32(u_input.b, ~(u_input.b & firstLeadingBit(u_input.b))), global3.x, -29277i);
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1651f, _wgslsmith_f_op_f32(exp2(var_0.d)), _wgslsmith_f_op_f32(abs(2813f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1255f, var_0.d, var_0.d, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 376f, var_0.d)), select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(true, var_0.a, false, var_0.a))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-386f, var_0.d, var_0.d, 1000f), vec4<f32>(-1556f, -261f, var_0.d, 334f), vec4<bool>(arg_2, arg_2, arg_2, true))))))));
    let var_1 = Struct_4(1i, var_0.e);
    var var_2 = Struct_2(var_0, var_0, var_0);
    return Struct_1(_wgslsmith_f_op_f32(-var_2.a.d) < -251f, ~var_2.a.b, ~firstTrailingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b, var_0.b, arg_0.x, 8795u), vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u))), -111f, 2147483647i);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<bool>) -> f32 {
    let var_0 = i32(-1i) * -38155i;
    let var_1 = var_0;
    let var_2 = Struct_3(select(!vec3<bool>(arg_3.x, false, arg_0.a.x), arg_3, !(!arg_0.b.c.a) & true), Struct_2(Struct_1(arg_0.a.x, 30095u, min(vec4<u32>(u_input.b.x, 51443u, 1u, u_input.b.x), min(u_input.b, arg_0.b.c.c)), -1081f, 1i), func_2(vec3<u32>(arg_1.x, 1u, 7709u), ~vec2<u32>(19485u, 0u), any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_3.x, arg_3.x), true))), arg_0.b.a), global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a.e >> (arg_0.b.c.b % 32u), 2147483647i, max(-6057i, -2147483647i)) ^ vec3<i32>(81370i, -2147483647i, 1i), -countOneBits(vec3<i32>(var_1, 1i, -2147483647i))));
    global1 = func_2(min(u_input.b.wwy, min(~vec3<u32>(arg_1.x, 39828u, 25502u), ~arg_0.b.a.c.xxw) | ~u_input.a), ~firstLeadingBit(u_input.a.xx), all(!select(!vec2<bool>(false, var_2.b.a.a), vec2<bool>(arg_3.x, var_2.a.x), vec2<bool>(false, false)))).d;
    global4 = array<Struct_4, 17>();
    return var_2.b.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -611f), -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f), global3.x));
    let var_0 = -_wgslsmith_clamp_i32(select(abs(u_input.c), u_input.c, true) | u_input.c, -_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(0u, 30u)], vec2<i32>(u_input.c, -4327i))), u_input.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(abs(global3.x))) + -878f))));
    global2 = array<Struct_2, 6>();
    var var_2 = u_input.a;
    var_2 = ~u_input.b.wzx;
    global4 = array<Struct_4, 17>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f - var_1.x)), 455f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(12157u, 6u)], var_1.x, var_0), var_2.xy, var_2.x, vec3<bool>(true, false, true))) - _wgslsmith_div_f32(-756f, 1792f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, _wgslsmith_f_op_f32(select(global3.x, -664f, true)), _wgslsmith_f_op_f32(f32(-1f) * -340f), var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(34422i, _wgslsmith_mult_i32(_wgslsmith_div_i32(var_0, 0i), 2147483647i >> (u_input.a.x % 32u)), -2147483647i, _wgslsmith_add_i32(i32(-1i) * -1i, -25065i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-241f, var_1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global3.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, var_1.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global3.wx * global3.xx))), vec2<bool>(true, true))), global3.xx, true)));
}

