struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(3556i, 4294967295u, 540f, -125f, true), Struct_1(-1i, 1u, -2090f, -2029f, true), Struct_1(75041i, 1u, 437f, 1596f, true), Struct_1(-1i, 1u, -2173f, 585f, false), Struct_1(17381i, 4496u, 1000f, 824f, false), Struct_1(2147483647i, 1u, 333f, -2529f, false), Struct_1(-17470i, 0u, 1000f, 1270f, true), Struct_1(13647i, 65201u, 1225f, -1692f, false), Struct_1(1i, 6065u, 1832f, 538f, false), Struct_1(-27640i, 1u, 1000f, 1379f, false));

var<private> global1: bool = false;

var<private> global2: vec2<u32>;

var<private> global3: array<f32, 1> = array<f32, 1>(769f);

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-2147483647i, firstLeadingBit(~countOneBits(65854u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(800f, _wgslsmith_f_op_f32(min(-1403f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(0u, 1u)])))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(5259u, 1u)])) * _wgslsmith_f_op_f32(-354f + -170f))))), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(global4.x, 1u)])), true);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1684f), _wgslsmith_f_op_f32(890f - global3[_wgslsmith_index_u32(4294967295u, 1u)])))))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(var_1.d + var_1.d)));
    var_1 = var_0;
    return ~(_wgslsmith_mod_i32(-u_input.a, countOneBits(1i)) & -min(u_input.a, _wgslsmith_add_i32(var_1.a, 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32, arg_3: f32) -> vec4<u32> {
    let var_0 = vec3<i32>(u_input.a, _wgslsmith_mod_i32(~u_input.a, func_3()), u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(268f, _wgslsmith_f_op_f32(round(-1302f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, global3[_wgslsmith_index_u32(arg_2, 1u)])), any(vec2<bool>(false, true)) != true)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, global3[_wgslsmith_index_u32(77509u, 1u)]) * vec2<f32>(-1136f, arg_0.x)), vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 1u)], global3[_wgslsmith_index_u32(global2.x, 1u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(global2.x, 1u)], -358f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(517f, 2606f))))))));
    return vec4<u32>(0u, 17090u, _wgslsmith_add_u32(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, global2.x), vec3<u32>(arg_2, 0u, global4.x) & vec3<u32>(global4.x, arg_1, u_input.b))), u_input.b);
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    global4 = _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, global4.x, arg_0.x, 9471u)), vec4<u32>(reverseBits(89156u), u_input.b, _wgslsmith_add_u32(22077u, 1u), ~2023u) << (~firstLeadingBit(vec4<u32>(global4.x, arg_0.x, global2.x, global2.x)) % vec4<u32>(32u))) >> (~abs(_wgslsmith_div_vec4_u32(func_2(vec3<f32>(349f, global3[_wgslsmith_index_u32(global4.x, 1u)], global3[_wgslsmith_index_u32(0u, 1u)]), 54686u, global4.x, global3[_wgslsmith_index_u32(0u, 1u)]), ~vec4<u32>(4294967295u, global4.x, 12168u, 32785u))) % vec4<u32>(32u));
    global1 = !all(vec4<bool>(!(global3[_wgslsmith_index_u32(1236u, 1u)] >= -271f), false, all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), -u_input.a <= -1i));
    var var_0 = false;
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 1u)]), 1295f, 2607f))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.a, -12544i), 1i ^ u_input.a) >> (vec2<u32>(firstTrailingBit(global4.x), ~1u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, 42157i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 37805i))) ^ -(vec2<i32>(u_input.a, 0i) | vec2<i32>(51346i, -2764i))), _wgslsmith_f_op_f32(abs(-1467f)), reverseBits(u_input.a));
    let var_2 = _wgslsmith_add_vec2_i32(var_1.b | ~var_1.b, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~var_1.b, vec2<i32>(-1i) * -var_1.b), vec2<i32>(var_1.b.x, abs(0i))));
    return ~global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec3<f32>(global3[_wgslsmith_index_u32(28643u, 1u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -991f)), global3[_wgslsmith_index_u32(~func_1(vec3<u32>(60311u, 94373u, 22851u)), 1u)])), global3[_wgslsmith_index_u32(global4.x, 1u)]), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 31937i), vec2<i32>(u_input.a, u_input.a) << (countOneBits(vec2<u32>(global4.x, global4.x)) % vec2<u32>(32u))) & abs(-(vec2<i32>(1i, 12842i) & vec2<i32>(u_input.a, u_input.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f * _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(83593u, 1u)]))))), u_input.a);
    let var_1 = -(~abs(_wgslsmith_mult_i32(1i, ~1i)));
    let var_2 = select(!vec4<bool>(!all(vec4<bool>(true, true, true, true)), select(true, true, true), all(vec3<bool>(false, true, true)), !all(vec3<bool>(true, true, false))), select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, false, true), any(vec4<bool>(true, true, true, true))), vec4<bool>(false, true, true, u_input.a > 0i), all(vec4<bool>(false, true, false, true))), !vec4<bool>(!any(vec3<bool>(true, true, false)), !all(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true)), true));
    var var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -538f, -476f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(2058f, var_0.a.x, -583f) + vec3<f32>(var_0.c, var_0.c, 1346f))))))));
    var var_4 = -1797f;
    let var_5 = select(select(select(select(vec4<bool>(var_2.x, true, true, false), var_2, var_2), select(vec4<bool>(var_2.x, true, true, var_2.x), var_2, vec4<bool>(var_2.x, var_2.x, var_2.x, true)), false), vec4<bool>(var_2.x, false, !any(vec3<bool>(false, false, var_2.x)), false), !var_2), !vec4<bool>(true, true, var_2.x, false), vec4<bool>(countOneBits(~var_0.d) != -2147483647i, global4.x != ~566u, var_2.x, true));
    global2 = _wgslsmith_add_vec2_u32(select(~global4.zw, firstLeadingBit(abs(select(vec2<u32>(global2.x, 21510u), vec2<u32>(u_input.b, global2.x), false))), var_2.x), global4.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-351f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x * 971f), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 1u)])), all(var_5))))), ~(-(vec3<i32>(var_0.b.x, 1i, u_input.a) << (vec3<u32>(943u, 60188u, global4.x) % vec3<u32>(32u)))) >> (vec3<u32>(4294967295u, global4.x, u_input.b) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 45656i, 1i), vec3<i32>(u_input.a, u_input.a, -17417i)), ~firstLeadingBit(vec3<i32>(60118i, 61836i, var_1))), vec3<i32>(~var_1, -49795i, -var_1) ^ vec3<i32>(9748i, select(6883i, 1i, false), ~(-45262i))), 1u);
}

