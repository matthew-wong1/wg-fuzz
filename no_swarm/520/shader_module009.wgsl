struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(22247u, false, vec2<u32>(1u, 12727u)), Struct_1(3730u, true, vec2<u32>(41737u, 4204u)), Struct_1(55071u, false, vec2<u32>(1u, 52919u)), Struct_1(1u, false, vec2<u32>(4294967295u, 4294967295u)), Struct_1(1u, true, vec2<u32>(21116u, 0u)), Struct_1(4294967295u, true, vec2<u32>(36527u, 1u)), Struct_1(26182u, true, vec2<u32>(2584u, 0u)), Struct_1(0u, false, vec2<u32>(1u, 59u)), Struct_1(11716u, true, vec2<u32>(4294967295u, 32777u)), Struct_1(41568u, false, vec2<u32>(36886u, 37146u)));

var<private> global3: vec2<f32> = vec2<f32>(681f, 699f);

var<private> global4: array<vec4<u32>, 27>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2064f - -1677f)))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(1057f, 113f), _wgslsmith_div_f32(-833f, global3.x)))));
    var var_0 = Struct_1(u_input.a, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<u32>(~_wgslsmith_sub_u32(~u_input.a, max(25360u, 0u)), 35091u));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1037f, global3.x)))))));
    global0 = array<Struct_1, 21>();
    var var_1 = select(vec4<i32>(-30113i, u_input.d.x, ~u_input.c.x, _wgslsmith_div_i32(abs(0i), u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, countOneBits(u_input.d.x), select(3127i, u_input.c.x, true), i32(-1i) * -51674i) << ((select(vec4<u32>(1u, 1u, 0u, 20774u), global4[_wgslsmith_index_u32(5743u, 27u)], var_0.b) >> ((vec4<u32>(25640u, var_0.c.x, 1u, var_0.a) ^ global4[_wgslsmith_index_u32(var_0.c.x, 27u)]) % vec4<u32>(32u))) % vec4<u32>(32u)), min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 21774i, u_input.d.x, u_input.c.x) & vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, -27630i), ~vec4<i32>(u_input.c.x, -7404i, -1i, u_input.b.x)), firstTrailingBit(~vec4<i32>(u_input.b.x, u_input.d.x, u_input.c.x, 38894i)))), vec4<bool>(any(vec2<bool>(true, true)), var_0.b, !var_0.b, var_0.b));
    return reverseBits(24995u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global4[_wgslsmith_index_u32(11548u, 27u)]), global4[_wgslsmith_index_u32(u_input.a, 27u)]), func_3() <= 12466u, vec2<u32>(firstTrailingBit(~17271u), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, u_input.a, 8666u) | vec3<u32>(u_input.a, 18944u, u_input.a)) & firstLeadingBit(vec3<u32>(97530u, u_input.a, u_input.a)), ~min(vec3<u32>(u_input.a, 12299u, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)))));
    var var_1 = !(1u > u_input.a);
    var var_2 = 46619i;
    var var_3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -461f, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x)))));
    var var_4 = true;
    return Struct_1(max(var_0.a, abs(u_input.a)), true, var_0.c);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global4 = array<vec4<u32>, 27>();
    let var_0 = -select(_wgslsmith_mod_i32(1i, u_input.c.x), 1i, !arg_0) & -arg_3.x;
    let var_1 = select(~0u, ~u_input.a, global3.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)) - -1000f));
    let var_2 = arg_2;
    let var_3 = vec4<u32>(15711u, ~(~countOneBits(~59329u)), 1u, _wgslsmith_clamp_u32(firstLeadingBit((arg_1.x << (0u % 32u)) >> (0u % 32u)), ~1u, ~(~firstLeadingBit(var_2.a))));
    return func_2();
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) + 414f) * -1485f) != _wgslsmith_f_op_f32(1220f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(868f, -232f)))), global4[_wgslsmith_index_u32(~func_1(!arg_1.b, vec4<u32>(51022u, 4294967295u, 1u, arg_0), Struct_1(arg_0, arg_1.b, vec2<u32>(u_input.a, arg_1.c.x)), vec4<i32>(-47017i, 19377i, arg_2.x, arg_2.x)).a, 27u)] ^ (vec4<u32>(12714u, 8083u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, u_input.a, 26413u), global4[_wgslsmith_index_u32(4294967295u, 27u)]), select(u_input.a, arg_0, false)) & ((vec4<u32>(u_input.a, arg_0, arg_0, 51752u) & vec4<u32>(1706u, u_input.a, 10745u, 32425u)) ^ vec4<u32>(33217u, arg_0, 4294967295u, u_input.a))), Struct_1(1u, arg_1.b, arg_1.c), ~vec4<i32>(~1i, _wgslsmith_mod_i32(u_input.c.x, _wgslsmith_clamp_i32(40498i, 0i, 41114i)), u_input.b.x, -35538i));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = ~firstLeadingBit(select(vec2<u32>(arg_0, 30951u) ^ select(var_0.c, var_0.c, vec2<bool>(false, true)), vec2<u32>(0u, var_0.a), 38706u <= arg_1.c.x));
    global4 = array<vec4<u32>, 27>();
    let var_3 = Struct_1(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4932u, var_0.a, 1u, var_2.x) & vec4<u32>(0u, u_input.a, 4294967295u, arg_1.c.x), vec4<u32>(13766u, arg_1.c.x, var_2.x, 39273u), !vec4<bool>(false, arg_1.b, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a, var_0.a, 1u, 65802u), global4[_wgslsmith_index_u32(2439u, 27u)], global4[_wgslsmith_index_u32(u_input.a, 27u)])), var_0.b, var_0.c);
    return ~u_input.a;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, arg_1) - vec2<f32>(818f, global3.x)))))))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 10u)];
    var var_2 = func_1(func_2().b, vec4<u32>(var_1.c.x, arg_2, 41482u, ~1u), Struct_1(arg_2, !(all(vec3<bool>(true, false, arg_0)) | true), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(var_1.a, arg_2)), var_1.c)), max(~(~(-vec4<i32>(u_input.d.x, arg_3.x, u_input.c.x, -2147483647i))), countOneBits(vec4<i32>(13934i, arg_3.x, -2147483647i, arg_3.x) >> (firstLeadingBit(vec4<u32>(var_1.a, 0u, 43870u, arg_2)) % vec4<u32>(32u)))));
    var var_3 = _wgslsmith_mod_u32(16139u, ~_wgslsmith_div_u32(~(~1u), 56205u));
    let var_4 = global2[_wgslsmith_index_u32(~(~(~(18841u << (var_2.c.x % 32u)) ^ var_2.a)), 10u)];
    return global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(77196u, u_input.a), var_4.c.x)), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(0u, 10u)];
    var var_1 = func_5(true, 316f, func_4(min(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(24403u, 28129u), var_0.c)), func_1(!var_0.b, ~vec4<u32>(u_input.a, u_input.a, 4294967295u, 2307u), Struct_1(6797u, var_0.b, var_0.c), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, 0i)), countOneBits(~vec2<i32>(12341i, -1i))) & (_wgslsmith_mod_u32(_wgslsmith_sub_u32(8096u, var_0.c.x), u_input.a) | 0u), firstTrailingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(44526i, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), u_input.b), vec2<i32>(-12578i, u_input.d.x))));
    let var_2 = Struct_1(49562u, true, _wgslsmith_add_vec2_u32(var_1.c, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(45459u, 14504u, var_1.c.x), var_1.a), vec2<u32>(var_1.a ^ 46449u, 4294967295u))));
    let var_3 = _wgslsmith_f_op_f32(511f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(207f - global3.x)))) + -1165f));
    var var_4 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-938f * 933f) + _wgslsmith_f_op_f32(-750f + _wgslsmith_f_op_f32(-198f - 103f))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2439f * -666f))));
    global4 = array<vec4<u32>, 27>();
    let var_5 = var_2;
    global2 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_3), ~(-(~(~u_input.b.x))), _wgslsmith_f_op_f32(trunc(var_4.x)), vec2<u32>(func_5(!var_1.b, var_4.x, _wgslsmith_add_u32(~var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_5.a), var_1.c)), u_input.b).c.x, 4294967295u));
}

