struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 12> = array<f32, 12>(-1635f, 101f, 1015f, -1082f, -811f, 203f, -1000f, 667f, 740f, -517f, -187f, 880f);

var<private> global2: Struct_1;

var<private> global3: vec3<f32>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    global1 = array<f32, 12>();
    global0 = _wgslsmith_add_vec2_u32(~(~u_input.a.yy) ^ vec2<u32>(_wgslsmith_div_u32(56790u, ~0u), global0.x), ~(~u_input.b));
    var var_0 = _wgslsmith_f_op_f32(-608f + global1[_wgslsmith_index_u32(~(~1u), 12u)]);
    var var_1 = Struct_2(firstTrailingBit(global4.x), vec2<u32>(~4294967295u, firstLeadingBit(_wgslsmith_clamp_u32(22163u >> (global2.a % 32u), _wgslsmith_clamp_u32(58578u, 21815u, global0.x), _wgslsmith_sub_u32(global2.a, u_input.a.x)))), abs(~_wgslsmith_div_vec4_u32(~vec4<u32>(117026u, global0.x, 1729u, 24327u), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 14668u, 1u, global0.x), vec4<u32>(35663u, global2.a, u_input.d, global0.x)))), abs(reverseBits(4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-188f, 887f, 339f), vec3<f32>(global3.x, global3.x, global3.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 12u)], 1838f, -1177f)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-402f, -1299f, global1[_wgslsmith_index_u32(global0.x, 12u)]) + vec3<f32>(-209f, global1[_wgslsmith_index_u32(u_input.d, 12u)], 277f))))))));
    let var_2 = firstLeadingBit(var_1.a | var_1.a);
    return _wgslsmith_mult_vec2_i32(abs(countOneBits(abs(~global4.zw))), ~(-vec2<i32>(0i, var_1.a) & u_input.c.zx));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = vec2<u32>(max(abs(_wgslsmith_add_u32(u_input.a.x, u_input.d)), u_input.b.x), global2.a << ((_wgslsmith_clamp_u32(0u, u_input.d, _wgslsmith_div_u32(101061u, global2.a)) & ~firstLeadingBit(u_input.a.x)) % 32u));
    var var_0 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.c.x, arg_0), ~global4.wx, -func_3(vec4<bool>(true, true, true, false)))), u_input.c.yz);
    let var_1 = Struct_1(1u);
    var var_2 = var_1;
    global2 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, global0.x, 11584u, var_2.a) << (~vec4<u32>(81775u, 9626u, global0.x, global0.x) % vec4<u32>(32u)), reverseBits(max(vec4<u32>(u_input.d, global0.x, 1u, u_input.d), vec4<u32>(global0.x, 47032u, var_2.a, 13749u)))));
    return 24351u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(func_3(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))).x, vec2<u32>(_wgslsmith_sub_u32(arg_1.x << (33120u % 32u), u_input.b.x) >> (firstLeadingBit(~global0.x) % 32u), arg_1.x), arg_1, global0.x, vec3<f32>(-1582f, _wgslsmith_f_op_f32(f32(-1f) * -432f), 933f));
    let var_1 = vec4<bool>(28235i >= _wgslsmith_mod_i32(-18194i, _wgslsmith_div_i32(u_input.c.x, 5840i) ^ (i32(-1i) * -12357i)), select(true, !select(true, all(vec2<bool>(true, false)), global3.x > var_0.e.x), !(arg_0.x < firstLeadingBit(arg_1.x))), false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, all(vec2<bool>(true, true))), vec4<bool>(true, false, all(vec3<bool>(true, false, false)), true))));
    var var_2 = (_wgslsmith_f_op_f32(max(110f, -170f)) < var_0.e.x) & (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(232f - _wgslsmith_f_op_f32(sign(global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -523f))) < 420f);
    var var_3 = var_0.e;
    let var_4 = Struct_2(2147483647i, ~(vec2<u32>(0u, 2121u) | _wgslsmith_add_vec2_u32(arg_0, u_input.b)) | abs(~vec2<u32>(4294967295u, var_0.d)), arg_1, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(~u_input.d), ~1u, ~_wgslsmith_mod_u32(u_input.d, arg_1.x)), u_input.b.x), vec3<f32>(_wgslsmith_div_f32(-983f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.c.x, 12u)])), _wgslsmith_f_op_f32(min(833f, -785f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(640f)))));
    return Struct_1(4294967295u);
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    global0 = min(vec2<u32>(~(~(~global2.a)), firstTrailingBit(global2.a)), vec2<u32>(global0.x, 1u));
    global2 = func_4(vec2<u32>(42498u, ~0u), reverseBits(vec4<u32>((1u & global0.x) << (1u % 32u), 54634u ^ (22711u << (global0.x % 32u)), func_2(global4.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 4714u), vec3<u32>(0u, u_input.b.x, u_input.b.x)) % 32u), global0.x)));
    global2 = func_4(~firstTrailingBit(vec2<u32>(global2.a ^ 0u, _wgslsmith_mult_u32(global0.x, 1u))), ~vec4<u32>(1u, _wgslsmith_div_u32(60778u, 4294967295u), 4294967295u, ~39951u) & select(abs(vec4<u32>(0u, 114386u, global0.x, 33755u) | vec4<u32>(95518u, global2.a, 77618u, global2.a)), min(firstTrailingBit(vec4<u32>(118852u, 14833u, global2.a, 0u)), vec4<u32>(4294967295u, 0u, 1u, global2.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)));
    var var_0 = _wgslsmith_f_op_f32(trunc(global3.x)) == 927f;
    global1 = array<f32, 12>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(936f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))), 479f, global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.a, 12u)] + -1155f), global3.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_div_u32(~61625u, _wgslsmith_dot_vec3_u32(u_input.a, arg_3.c.zzw));
    let var_1 = 1i;
    global3 = vec3<f32>(203f, _wgslsmith_div_f32(904f, arg_3.e.x), -246f);
    var var_2 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global4.x, var_1), firstTrailingBit(u_input.c.x)), arg_3.b, ~(~_wgslsmith_mult_vec4_u32(arg_3.c, min(arg_3.c, arg_3.c))), ~global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, 969f, global1[_wgslsmith_index_u32(4294967295u, 12u)])))))));
    return func_4(arg_3.b, arg_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global3.xz)), vec4<f32>(-569f, 115f, _wgslsmith_div_f32(543f, -1448f), global1[_wgslsmith_index_u32(38599u >> (global0.x % 32u), 12u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(43630u, 12u)], -687f, global3.x, 560f) * vec4<f32>(-1446f, global3.x, 2306f, global1[_wgslsmith_index_u32(4294967295u, 12u)])))))), false, global2.a, Struct_2(_wgslsmith_div_i32(-16267i, _wgslsmith_mod_i32(global4.x, ~(-27138i))), u_input.b, ~(vec4<u32>(global0.x, u_input.d, 0u, u_input.a.x) << ((vec4<u32>(0u, 1u, global2.a, global0.x) | vec4<u32>(global2.a, 0u, global0.x, 1u)) % vec4<u32>(32u))), ~(~_wgslsmith_sub_u32(global0.x, global2.a)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(1u >> (1u % 32u), 12u)], 382f, _wgslsmith_f_op_f32(586f + -402f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, 1138f, 631f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global2.a, 12u)], -321f, 791f)))))));
    global3 = vec3<f32>(_wgslsmith_f_op_f32(352f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.a, 12u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(u_input.c.x), ~_wgslsmith_mult_u32(global2.a, global2.a)), 12u)]));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xxy, vec3<u32>(func_5(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 12u)]), _wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), global3.x), true | all(vec4<bool>(false, true, false, false)), 0u, Struct_2(countOneBits(-136i), firstLeadingBit(vec2<u32>(global2.a, u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a, 11215u, 9885u, 48400u), vec4<u32>(global0.x, u_input.b.x, global0.x, global2.a)), global2.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(1491f, global3.x, global3.x) + vec3<f32>(global3.x, global1[_wgslsmith_index_u32(81299u, 12u)], 1050f)))).a, 1u, global2.a >> (~86738u % 32u)));
}

