struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec2<u32>(0u, 1u), vec2<u32>(20513u, 0u), Struct_1(vec2<bool>(true, false), 12360i)), Struct_4(vec2<u32>(53954u, 32828u), vec2<u32>(33036u, 69802u), Struct_1(vec2<bool>(true, true), -27994i)), Struct_4(vec2<u32>(32119u, 19830u), vec2<u32>(0u, 15949u), Struct_1(vec2<bool>(false, true), -1503i)), Struct_4(vec2<u32>(22622u, 1u), vec2<u32>(11229u, 31738u), Struct_1(vec2<bool>(true, false), 2147483647i)), Struct_4(vec2<u32>(21379u, 0u), vec2<u32>(4294967295u, 25731u), Struct_1(vec2<bool>(true, true), 64276i)), Struct_4(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), Struct_1(vec2<bool>(false, false), 26129i)), Struct_4(vec2<u32>(52182u, 0u), vec2<u32>(84687u, 4294967295u), Struct_1(vec2<bool>(true, false), -4287i)), Struct_4(vec2<u32>(0u, 8105u), vec2<u32>(53122u, 10631u), Struct_1(vec2<bool>(false, true), 31874i)), Struct_4(vec2<u32>(0u, 1u), vec2<u32>(87677u, 1u), Struct_1(vec2<bool>(true, true), -38484i)), Struct_4(vec2<u32>(0u, 44979u), vec2<u32>(30857u, 11700u), Struct_1(vec2<bool>(true, false), 66214i)));

var<private> global2: u32;

var<private> global3: vec4<i32> = vec4<i32>(10769i, -15955i, -16476i, -1i);

var<private> global4: f32 = 622f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    var var_0 = global3.xz;
    global4 = _wgslsmith_f_op_f32(-global0.a);
    global4 = global0.a;
    global4 = global0.a;
    return all(vec2<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(13616i, var_0.x, var_0.x), _wgslsmith_mult_vec3_i32(global3.zwz, vec3<i32>(global3.x, global3.x, var_0.x))) != 2147483647i, any(vec2<bool>(all(global0.b.a), true))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = 1348f;
    var var_1 = ~select(vec4<u32>(~1u, 4294967295u, u_input.b, abs(u_input.c.x) ^ abs(u_input.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b, 13104u, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(213u, 0u, 0u, 1u), ~vec4<u32>(u_input.a.x, 46418u, u_input.b, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(1095u, 0u, u_input.b, 35069u), vec4<u32>(u_input.b, 1u, u_input.b, 1u), vec4<u32>(u_input.b, 1u, 19740u, 0u)))), vec4<bool>(all(!global0.c.a), func_3(), true, arg_2));
    let var_2 = -_wgslsmith_mult_i32(2147483647i, abs(arg_1));
    global2 = abs(u_input.b);
    let var_3 = ((-1i & ~min(arg_1, 11450i)) & var_2) ^ ~(~_wgslsmith_mult_i32(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(30495i, -42760i, -15790i), vec3<i32>(18683i, arg_1, arg_0.b))));
    return _wgslsmith_div_vec4_i32(vec4<i32>(select(_wgslsmith_mult_i32(arg_1, var_2), -(~arg_1), false), firstLeadingBit(529i), countOneBits(2147483647i), -arg_0.b), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, 1237i, global0.b.b, arg_1) | (vec4<i32>(-1i, arg_0.b, -2147483647i, 1i) | vec4<i32>(var_3, var_3, var_2, 13109i)), countOneBits(vec4<i32>(-15482i, 0i, -2147483647i, arg_0.b)) | vec4<i32>(54945i, 1i, arg_1, var_2)) >> (vec4<u32>(_wgslsmith_sub_u32(~0u, 46313u), min(var_1.x, 4294967295u), 5156u, 1u) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(select(vec2<bool>(u_input.c.x < (50065u << (u_input.b % 32u)), !(arg_0.a.x | arg_0.a.x)), !(!(!global0.b.a)), vec2<bool>(global0.b.a.x, global0.c.a.x || true)), global0.c.b);
    global3 = _wgslsmith_clamp_vec4_i32(-func_2(global0.b, global0.b.b, !all(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, -776f, global0.a, global0.a)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, -1562f, global0.a, global0.a))))), vec4<i32>(global3.x, _wgslsmith_sub_i32(1i, select(-2147483647i, arg_0.b, global0.b.a.x) >> (firstLeadingBit(u_input.b) % 32u)), reverseBits(15103i), 1i), vec4<i32>(global3.x | _wgslsmith_dot_vec3_i32(~vec3<i32>(global3.x, 1i, arg_0.b), global3.xxw), _wgslsmith_div_i32(global3.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b, -2147483647i, -10291i, global3.x), vec4<i32>(0i, -3629i, var_0.b, -2147483647i)), vec4<i32>(1i, -36223i, global0.b.b, global3.x) | vec4<i32>(0i, global0.b.b, arg_0.b, global3.x))), abs(-21119i), _wgslsmith_sub_i32(~1i << (1u % 32u), -1i)));
    global0 = Struct_2(global0.a, global0.b, Struct_1(!(!select(vec2<bool>(true, false), var_0.a, var_0.a.x)), 0i));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(global0.a)), Struct_1(!arg_0.a, -2147483647i), Struct_1(vec2<bool>(true, true), func_2(Struct_1(select(var_0.a, vec2<bool>(false, var_0.a.x), vec2<bool>(false, var_0.a.x)), 2147483647i), select(-2147483647i, 1i, arg_0.a.x), ~11826u > _wgslsmith_dot_vec2_u32(u_input.a, u_input.c.zz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(461f, -201f, 136f, 1974f), vec4<f32>(751f, -684f, global0.a, 1000f)))).x));
    return ~func_2(var_1.b, ~(-global3.x), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1143f, 170f, -599f) * vec4<f32>(var_1.a, var_1.a, global0.a, global0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1651f, var_1.a, 964f))) + vec4<f32>(_wgslsmith_f_op_f32(1094f + -363f), -801f, -1040f, 230f))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global2 = ~1u;
    let var_1 = min(-vec4<i32>(-21979i, _wgslsmith_div_i32(0i, func_1(global0.c)), select(global0.b.b, ~(-1i), any(vec3<bool>(global0.b.a.x, false, global0.b.a.x))), global3.x), select(_wgslsmith_add_vec4_i32(-(vec4<i32>(52635i, -1i, -19868i, global0.c.b) >> (vec4<u32>(var_0, var_0, u_input.c.x, 39184u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global3.x, 28831i, global0.b.b) ^ vec4<i32>(46899i, global3.x, 0i, global0.b.b), ~vec4<i32>(0i, global0.c.b, global3.x, -2147483647i), countOneBits(vec4<i32>(2147483647i, -39499i, global0.b.b, -19292i)))), ~func_2(Struct_1(vec2<bool>(true, false), global3.x), 1i, true, vec4<f32>(global0.a, 2525f, global0.a, -1599f)), vec4<bool>(!(!global0.c.a.x), global0.c.a.x, any(!global0.b.a), _wgslsmith_f_op_f32(1592f + global0.a) >= _wgslsmith_f_op_f32(f32(-1f) * -960f))));
    global0 = Struct_2(968f, global0.c, global0.b);
    var var_2 = vec2<bool>(!any(select(!vec4<bool>(global0.b.a.x, true, true, false), vec4<bool>(false, false, global0.c.a.x, false), vec4<bool>(true, true, true, true))), all(!global0.c.a));
    var_2 = global0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(global3.x, var_1.x), 4294967295u, var_1.x >> (min(~(u_input.a.x | 28181u), var_0) % 32u));
}

