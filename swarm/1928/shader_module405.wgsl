struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 3>;

var<private> global2: array<bool, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    global2 = array<bool, 16>();
    let var_0 = Struct_1(!any(arg_0.c.zx), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), arg_0.b.x, -110f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_3.b.x, 561f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, 251f, arg_3.b.x), vec3<f32>(1000f, -831f, arg_3.d.x), true))) - _wgslsmith_f_op_vec3_f32(-arg_3.b))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], arg_3.c.x, u_input.a == 1u, all(arg_0.c)), arg_3.c, arg_3.c), arg_0.c, select(vec4<bool>(!global1[_wgslsmith_index_u32(16260u, 3u)], all(vec3<bool>(true, arg_0.a, false)), global2[_wgslsmith_index_u32(arg_1.x & u_input.a, 16u)], select(false, global1[_wgslsmith_index_u32(u_input.a, 3u)], arg_3.c.x)), vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), 16u)], !arg_0.c.x, true, false), vec4<bool>(true, all(arg_3.c), false, global1[_wgslsmith_index_u32(19414u, 3u)] == global1[_wgslsmith_index_u32(27323u, 3u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_3.b.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_3.d)) + vec2<f32>(-823f, arg_0.b.x))))));
    let var_1 = min(vec2<i32>(arg_2, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2, -25439i, 34296i), ~vec3<i32>(-98129i, arg_2, arg_2))), vec2<i32>(-arg_2, -2147483647i));
    let var_2 = 0u;
    let var_3 = -reverseBits(_wgslsmith_sub_i32(-arg_2, arg_2 & ~var_1.x));
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<bool, 16>();
    let var_0 = arg_1;
    var var_1 = Struct_1(true, var_0.b, select(select(vec4<bool>(var_0.c.x, true, true, false), !select(var_0.c, vec4<bool>(global1[_wgslsmith_index_u32(11429u, 3u)], true, arg_1.a, true), var_0.c), !(arg_1.b.x <= -1356f)), !select(arg_1.c, !var_0.c, var_0.c), _wgslsmith_f_op_f32(-var_0.b.x) >= -350f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -670f))), -127f));
    var var_2 = arg_1;
    global1 = array<bool, 3>();
    return select(var_2.c, vec4<bool>(true, arg_1.c.x, false, true), all(func_3(arg_1, vec2<u32>(45924u, 4294967295u), _wgslsmith_div_i32(-1i, _wgslsmith_clamp_i32(0i, -34406i, 1i)), arg_1)));
}

fn func_1() -> Struct_1 {
    global2 = array<bool, 16>();
    var var_0 = global1[_wgslsmith_index_u32(~u_input.a, 3u)];
    var_0 = select(true, all(vec2<bool>(!global1[_wgslsmith_index_u32(49451u, 3u)], any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 16u)], true, global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.a, 16u)])))) & global1[_wgslsmith_index_u32(~(~min(u_input.a, u_input.a)), 3u)], !any(!func_2(0u, Struct_1(global1[_wgslsmith_index_u32(u_input.a, 3u)], vec3<f32>(-1015f, -1000f, -1696f), vec4<bool>(global1[_wgslsmith_index_u32(34557u, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], true, false), vec2<f32>(1000f, -1218f)))));
    var var_1 = Struct_1(false, _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(782f, -1000f, 363f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, 1033f, -1424f) - vec3<f32>(-1150f, -195f, -1066f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-373f, -230f, -443f) * vec3<f32>(197f, 1029f, -1316f))))), func_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(3844u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 48969u, 57232u))), u_input.a), Struct_1(_wgslsmith_f_op_f32(sign(328f)) >= -910f, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1889f, -505f, 1378f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, -1345f, -1538f) - vec3<f32>(688f, 919f, 3128f))), !func_3(Struct_1(global2[_wgslsmith_index_u32(68957u, 16u)], vec3<f32>(-1690f, 492f, -874f), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(0u, 3u)], false, global2[_wgslsmith_index_u32(15613u, 16u)]), vec2<f32>(-258f, 1025f)), vec2<u32>(u_input.a, 32673u), -17201i, Struct_1(false, vec3<f32>(709f, -1383f, 275f), vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(26768u, 16u)], true), vec2<f32>(1723f, -1738f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-317f, 1335f), vec2<f32>(-1488f, 360f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1266f * 459f) + -285f), _wgslsmith_f_op_f32(-2040f - _wgslsmith_f_op_f32(f32(-1f) * -1608f)))));
    let var_2 = -select(~firstLeadingBit(vec3<i32>(-32949i, 0i, 0i)), -vec3<i32>(0i, _wgslsmith_clamp_i32(-1i, 0i, -41739i), 1i), vec3<bool>(!func_3(Struct_1(false, vec3<f32>(447f, var_1.b.x, var_1.b.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], var_1.a, global1[_wgslsmith_index_u32(u_input.a, 3u)], false), vec2<f32>(var_1.b.x, var_1.b.x)), vec2<u32>(4294967295u, u_input.a), 1i, Struct_1(true, vec3<f32>(var_1.b.x, var_1.d.x, var_1.b.x), var_1.c, var_1.b.xz)).x, true, true));
    return Struct_1(true, vec3<f32>(511f, var_1.b.x, -481f), !var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.d + var_1.b.zz) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1104f, var_1.d.x)))), var_1.b.xz, vec2<bool>(false, all(vec3<bool>(global2[_wgslsmith_index_u32(13891u, 16u)], true, global2[_wgslsmith_index_u32(u_input.a, 16u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32((0u << (u_input.a % 32u)) << (u_input.a % 32u), 3u)];
    global1 = array<bool, 3>();
    let var_1 = 14212u << (0u % 32u);
    let var_2 = func_1();
    var var_3 = Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), -226f, _wgslsmith_f_op_f32(-var_2.b.x)), select(vec4<bool>(true, all(var_2.c), !(!global1[_wgslsmith_index_u32(var_1, 3u)]), func_1().a), !vec4<bool>(1u == var_1, var_1 >= u_input.a, true, global1[_wgslsmith_index_u32(reverseBits(var_1), 3u)]), vec4<bool>(true, any(!var_2.c), all(vec2<bool>(global1[_wgslsmith_index_u32(var_1, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])) & global1[_wgslsmith_index_u32(firstLeadingBit(0u), 3u)], any(var_2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.zz)));
    var var_4 = Struct_1(!(22607i > _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-29087i, 15606i), vec2<i32>(-2147483647i, 26090i)), select(-24962i, -2222i, false))), vec3<f32>(-542f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.d.x - -559f)))), var_3.d.x), vec4<bool>(true, false, all(var_2.c.zyz), all(func_1().c.ww)), _wgslsmith_f_op_vec2_f32(abs(var_3.d)));
    let var_5 = _wgslsmith_f_op_f32(ceil(var_3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b.x, var_2.b.x, _wgslsmith_f_op_f32(trunc(var_5)), -741f))))), select(vec3<i32>(1i, 1i, 1i), _wgslsmith_div_vec3_i32(abs(vec3<i32>(-16046i, -56241i, 1i)), abs(vec3<i32>(-1i, -11067i, -1i))), true) << (~_wgslsmith_sub_vec3_u32(min(vec3<u32>(var_1, 4294967295u, 1u), vec3<u32>(var_1, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 9775u, var_1), vec3<u32>(var_1, 0u, 33951u))) % vec3<u32>(32u)), abs(vec3<u32>(u_input.a, _wgslsmith_mult_u32(1u, var_1), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 0u, u_input.a, 3043u), vec4<u32>(9232u, u_input.a, var_1, var_1))) >> (~vec3<u32>(var_1, var_1, 0u) % vec3<u32>(32u))), var_1, reverseBits(min(vec2<u32>(~u_input.a, max(u_input.a, u_input.a)), vec2<u32>(_wgslsmith_clamp_u32(1u, 18276u, 4393u), firstTrailingBit(0u)))));
}

