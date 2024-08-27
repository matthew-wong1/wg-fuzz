struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(1u, 4294967295u, 54674u, 77568u), -1062f, -899f, vec2<i32>(51041i, -2644i)), Struct_1(vec4<u32>(1u, 14444u, 47690u, 22339u), 309f, -1315f, vec2<i32>(4497i, 17349i)), Struct_1(vec4<u32>(112666u, 4294967295u, 0u, 0u), -154f, 716f, vec2<i32>(2147483647i, 68659i)), Struct_1(vec4<u32>(37139u, 32573u, 18964u, 0u), -1000f, 660f, vec2<i32>(0i, 12399i)), Struct_1(vec4<u32>(53106u, 40505u, 1u, 81023u), -616f, -415f, vec2<i32>(-24904i, 1816i)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 38314u), 444f, 474f, vec2<i32>(1i, -48739i)), Struct_1(vec4<u32>(24110u, 1u, 34385u, 68202u), -1422f, 1245f, vec2<i32>(351i, 18601i)), Struct_1(vec4<u32>(47064u, 4294967295u, 30797u, 1u), -389f, -658f, vec2<i32>(i32(-2147483648), -7844i)), Struct_1(vec4<u32>(26539u, 3329u, 94414u, 4294967295u), 415f, 2384f, vec2<i32>(67077i, 1i)), Struct_1(vec4<u32>(68315u, 4294967295u, 0u, 4294967295u), -1316f, -930f, vec2<i32>(3306i, 9798i)), Struct_1(vec4<u32>(1u, 50628u, 1996u, 12829u), -208f, 174f, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 1u), -1200f, -573f, vec2<i32>(2147483647i, 26958i)), Struct_1(vec4<u32>(11766u, 2867u, 0u, 4294967295u), 738f, -569f, vec2<i32>(0i, 4065i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.b.c))), arg_1.d, _wgslsmith_f_op_f32(trunc(-225f)));
    var var_1 = arg_1.c;
    var_1 = Struct_1(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 24042u, 16405u), var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + -702f)) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - 1000f)), vec2<i32>(-countOneBits(-36897i), i32(-1i) * -20230i));
    let var_2 = true;
    return (i32(-1i) * -2147483647i) < (i32(-1i) * -min(~40260i, var_1.d.x));
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    return select(vec4<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(14348u, 66602u), vec2<u32>(12075u, u_input.a.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))) != u_input.a.x, false != !any(vec2<bool>(false, true)), true, !((u_input.b != -10729i) || func_3(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), Struct_2(-1i, Struct_1(vec4<u32>(u_input.a.x, 88606u, 30582u, u_input.a.x), -1619f, arg_0.x, vec2<i32>(2147483647i, u_input.b)), Struct_1(vec4<u32>(32842u, u_input.a.x, 0u, u_input.a.x), -485f, arg_0.x, vec2<i32>(u_input.b, 2147483647i)), arg_0.x)))), vec4<bool>(firstLeadingBit(select(u_input.b, u_input.b, false)) != u_input.b, 54879i == ~firstTrailingBit(u_input.b), true, any(vec2<bool>(u_input.b <= 2147483647i, true))), vec4<bool>(true, select(517f >= _wgslsmith_f_op_f32(step(2162f, 1101f)), any(vec3<bool>(false, false, true)), !(u_input.b > 1i)), true, true));
}

fn func_4(arg_0: vec4<bool>) -> bool {
    global0 = array<Struct_1, 13>();
    var var_0 = ~abs(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(70565u, u_input.a.x, 46255u, 0u), vec4<u32>(0u, 0u, 105163u, 1u)))));
    var var_1 = firstTrailingBit(_wgslsmith_div_i32(1i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(38410i, -2147483647i)), -vec2<i32>(2147483647i, u_input.b))));
    let var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(max(abs(vec4<u32>(61159u, 27055u, u_input.a.x, 38810u)), select(vec4<u32>(var_0.x, 139719u, 35248u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x), arg_0)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a.x, 32342u, 4294967295u), vec4<u32>(var_0.x, u_input.a.x, var_0.x, 0u)) & (vec4<u32>(4294967295u, var_0.x, 28299u, 64497u) >> (vec4<u32>(var_0.x, 4294967295u, 0u, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-289f * _wgslsmith_f_op_f32(903f - -356f))), _wgslsmith_f_op_f32(floor(-365f)), reverseBits(-vec2<i32>(u_input.b, -1i) | -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(31895i, u_input.b))));
    var var_3 = true;
    return true;
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 13>();
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-692f, -1225f, -513f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-177f, -1063f, 271f) - vec3<f32>(-275f, 265f, 842f))) - vec3<f32>(-690f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -876f))));
    var_0 = !(!func_4(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(firstTrailingBit(reverseBits(1i ^ select(45792i, u_input.b, true))), global0[_wgslsmith_index_u32(29104u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], -2072f);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(247f, var_1.d, 326f, -739f) * vec4<f32>(-853f, var_1.c.c, var_1.b.b, 987f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1291f, 732f, var_1.b.c, 399f), vec4<f32>(233f, -1000f, 684f, 569f), true))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_1.d, -364f)), -828f, _wgslsmith_f_op_f32(-var_1.d), 313f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(649f, var_1.d, 918f, var_1.c.c))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(1402f - -1000f), var_1.b.b, _wgslsmith_f_op_f32(var_1.c.c - var_1.c.c))))));
    return 29500u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_add_i32(~countOneBits(10025i), (u_input.b ^ u_input.b) | ~(-2147483647i)) & (_wgslsmith_sub_i32(u_input.b, 14249i) ^ u_input.b), global0[_wgslsmith_index_u32(func_1(), 13u)], Struct_1(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 75729u, 1u, u_input.a.x)), ~countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 119068u, u_input.a.x))), _wgslsmith_div_f32(1406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1558f, 458f)) + _wgslsmith_f_op_f32(sign(1260f)))), 1f, vec2<i32>(-1i) * -abs(vec2<i32>(64914i, 28298i))), _wgslsmith_div_f32(-533f, -1135f));
    let var_1 = 1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, firstTrailingBit(1u)), select(u_input.a, u_input.a, vec2<bool>(true, true)) & ~firstLeadingBit(vec2<u32>(4294967295u, 101439u)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.b, _wgslsmith_f_op_f32(f32(-1f) * -1013f))))));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(select((vec4<i32>(8760i, u_input.b, u_input.b, var_0.c.d.x) & vec4<i32>(15001i, u_input.b, var_0.b.d.x, -34439i)) & select(vec4<i32>(2147483647i, 19803i, var_0.b.d.x, u_input.b), vec4<i32>(u_input.b, -28388i, 19165i, var_0.a), true), ~(~vec4<i32>(var_0.c.d.x, var_0.a, -16212i, 2147483647i)), vec4<bool>(true, true, true, true)) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(var_0.c.d.x, 10620i, u_input.b, 604i), vec4<i32>(-2147483647i, u_input.b, ~var_0.b.d.x, -var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.b), -206f)), var_2, var_2) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_0.b.b) - vec3<f32>(var_0.b.b, var_0.c.c, 509f))))), u_input.b);
}

