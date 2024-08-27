struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(228f, 410f, -431f, 2035f, -1101f, -1000f, -759f, -391f, 1231f, -304f, 595f, -1925f, -744f, 1293f, -134f, 1419f, -1612f, 1928f, -1000f, -482f, -537f, -249f, -331f, -1224f, -745f, -1397f, -1452f, 1379f, -855f, 601f, -201f, 878f);

var<private> global1: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec2<bool>(!(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), true);
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec4<bool>(func_3(arg_1), true, all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true)), select(true, !(arg_3.x >= (-21783i >> (u_input.c % 32u))), any(vec2<bool>(func_3(Struct_1(vec2<f32>(arg_0.x, arg_0.x), global1.b)), true))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, vec2<f32>(var_1.a.x, arg_0.x))))));
    var_1 = arg_2;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 32u)], 1000f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(206f, 1000f)))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(-703f - var_2.x))), _wgslsmith_f_op_f32(exp2(var_2.x)));
}

fn func_1() -> vec3<bool> {
    global0 = array<f32, 32>();
    var var_0 = u_input.d.zy;
    let var_1 = Struct_1(global1.a, -353f);
    global0 = array<f32, 32>();
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1511f, _wgslsmith_f_op_f32(1287f + _wgslsmith_f_op_f32(-489f + 382f)), -1642f)), var_1, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, _wgslsmith_f_op_f32(ceil(global1.a.x)))), global1.a.x), -min(vec3<i32>(-1i) * -vec3<i32>(u_input.e, 1i, -42933i), vec3<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -2831i), vec2<i32>(50462i, u_input.e)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(26379i, u_input.a)))));
    return vec3<bool>(false, true, !(!any(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<f32, 32>();
    global0 = array<f32, 32>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b)))));
    var var_1 = ~(~5094u);
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(global1.a)), vec2<f32>(global1.b, 706f))), vec2<f32>(-253f, -298f))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7639u, 32u)]), _wgslsmith_div_f32(456f, 757f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b))))), _wgslsmith_f_op_f32(-global1.b));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a, 37067i), countOneBits(-u_input.e)), countOneBits(~(vec2<i32>(0i, u_input.a) >> (u_input.d.xy % vec2<u32>(32u))))) ^ min(vec2<i32>(_wgslsmith_mult_i32(u_input.e, 1i) ^ _wgslsmith_div_i32(u_input.e, u_input.a), 2147483647i), firstTrailingBit(vec2<i32>(-u_input.a, u_input.a)));
    var var_1 = global1.a;
    global1 = func_4(~_wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(62755u, u_input.b, u_input.b, 14638u)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c, 1u, 1u, u_input.b)))), !select(vec3<bool>(false, true, true), !func_1(), !select(false, false, false)), vec2<u32>(countOneBits(min(1u, u_input.b)) ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8586u, u_input.d.x, 5309u), vec4<u32>(8020u, u_input.c, u_input.c, 34860u)) | ~64009u), ~u_input.c), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + -1547f)), select(!(u_input.a == -1i), func_3(Struct_1(global1.a, -771f)), func_1().x), true));
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1073f, -189f, 1000f)), _wgslsmith_div_vec3_f32(vec3<f32>(198f, global0[_wgslsmith_index_u32(20674u, 32u)], global0[_wgslsmith_index_u32(14184u, 32u)]), vec3<f32>(global1.a.x, -888f, global1.b)), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(35124u, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, 158f, global0[_wgslsmith_index_u32(0u, 32u)]))))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-486f + 1000f), _wgslsmith_f_op_f32(global1.a.x * -2024f))))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(753f, var_1.x, 1162f), vec3<f32>(527f, 332f, 1075f))))), vec3<f32>(1347f, var_1.x, var_1.x)), Struct_1(global1.a, global1.b), Struct_1(vec2<f32>(func_2(vec3<f32>(345f, global1.a.x, var_1.x), Struct_1(global1.a, global1.b), Struct_1(global1.a, global1.b), vec3<i32>(var_0.x, 0i, var_0.x)).a.x, _wgslsmith_div_f32(353f, 1483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(465f + global0[_wgslsmith_index_u32(14973u, 32u)]) - -491f)), vec3<i32>(min(-26799i, u_input.a), 57993i, -26427i)), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(643f, -109f, 1047f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 1000f, 1075f))))), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], -230f, 253f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1474f, -3538f, 164f), vec3<f32>(-1824f, 258f, -584f))))), func_4(vec4<u32>(u_input.c, u_input.b, 25827u, u_input.d.x), vec3<bool>(true, true, true), firstLeadingBit(vec2<u32>(4294967295u, u_input.b)), vec3<bool>(true, true, true)), func_4(vec4<u32>(1u, 0u, 1u, 0u) >> (vec4<u32>(11145u, u_input.d.x, u_input.c, 0u) % vec4<u32>(32u)), vec3<bool>(true, true, true), u_input.d.yz << (u_input.d.zz % vec2<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), -vec3<i32>(var_0.x, u_input.a, 1i) | _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, u_input.a, 1i), vec3<i32>(-40890i, -21775i, -2147483647i))), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-124f, 901f, global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(316f, -1000f, -972f)), vec3<bool>(true, true, true))), func_2(vec3<f32>(global1.b, var_1.x, 813f), func_4(vec4<u32>(u_input.c, 4294967295u, u_input.b, u_input.c), vec3<bool>(true, false, true), u_input.d.zx, vec3<bool>(false, true, false)), func_4(vec4<u32>(7866u, u_input.c, 4294967295u, 60659u), vec3<bool>(false, true, true), u_input.d.zy, vec3<bool>(true, false, false)), abs(vec3<i32>(var_0.x, 1i, 1i))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], 938f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 32u)])), -(~vec3<i32>(34955i, -20521i, var_0.x))), vec3<i32>(40264i, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, -1i, 1i), vec3<i32>(-77142i, 65478i, 1i) >> (u_input.d % vec3<u32>(32u))), reverseBits(7600i))), vec3<i32>(u_input.a | min(u_input.a, u_input.a), ~u_input.a, _wgslsmith_div_i32(var_0.x << (u_input.d.x % 32u), reverseBits(u_input.e)) ^ ~abs(-13642i)));
    let var_2 = func_4(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(1u, u_input.c, 66730u, u_input.b)), vec4<u32>(u_input.c, 112593u, u_input.c, ~0u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(u_input.d.x), _wgslsmith_div_u32(u_input.d.x, u_input.c), 64881u, u_input.d.x), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.c, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(20377u, 43054u, 0u, 0u), vec4<u32>(4592u, 58526u, u_input.b, 43425u)))) % vec4<u32>(32u)), vec3<bool>(true, false, select(false, true & (3075i <= var_0.x), true)), u_input.d.xz, select(func_1(), func_1(), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), func_1()), vec3<bool>(all(vec3<bool>(true, true, true)), true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(363f);
}

