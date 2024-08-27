struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<f32, 28> = array<f32, 28>(1515f, 2070f, 1000f, 682f, -1445f, 656f, 1897f, -787f, 1000f, 866f, -138f, 863f, 1679f, -1000f, 1041f, 1000f, 1078f, -107f, 1000f, 2251f, -157f, 617f, -1000f, -1038f, -890f, 230f, 1257f, 1400f);

var<private> global2: array<f32, 2>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.d, u_input.b.x, u_input.d, u_input.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, 10632u, 73270u) >> (vec4<u32>(1u, u_input.d, 101016u, u_input.d) % vec4<u32>(32u)), ~vec4<u32>(800u, 4294967295u, 0u, 4294967295u) | abs(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x))), reverseBits(vec4<u32>(~u_input.d, ~1u, _wgslsmith_mod_u32(u_input.b.x, 11554u), firstTrailingBit(u_input.d)))) >> (vec4<u32>(u_input.d, _wgslsmith_div_u32(36966u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, u_input.b.x), ~4294967295u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 124694u, u_input.d), vec3<u32>(1u, 1u, u_input.b.x) >> (vec3<u32>(u_input.b.x, 1u, 18119u) % vec3<u32>(32u))), firstLeadingBit(u_input.b.x)), u_input.b.x) % vec4<u32>(32u));
    global1 = array<f32, 28>();
    let var_1 = u_input.a;
    var var_2 = select(!select(vec3<bool>(true, select(global0.x, global0.x, false), false | global0.x), !vec3<bool>(global0.x, global0.x, global0.x), global0.x), !vec3<bool>(false, false, true | global0.x), global0.x);
    let var_3 = true;
    return any(select(vec3<bool>(false, true, var_2.x), select(vec3<bool>(global0.x, any(vec3<bool>(var_2.x, false, var_3)), global0.x), select(!vec3<bool>(true, var_3, false), select(vec3<bool>(var_2.x, false, global0.x), vec3<bool>(var_3, true, var_3), vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(var_3, var_2.x, var_3)), vec3<bool>(!global0.x, global1[_wgslsmith_index_u32(0u, 28u)] <= global2[_wgslsmith_index_u32(11057u, 2u)], select(true, false, var_3))), select(!(!vec3<bool>(true, global0.x, var_2.x)), !(!vec3<bool>(global0.x, global0.x, true)), true)));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 2u)] * global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)]))));
    var var_1 = Struct_2(-761f, select(select(vec2<bool>(func_3(), true), vec2<bool>(true, true), select(vec2<bool>(false, arg_1.x), arg_1.xz, all(vec4<bool>(true, arg_1.x, global0.x, false)))), arg_1.yx, select(!vec2<bool>(true, global0.x), vec2<bool>(0i <= arg_0, !arg_1.x), global0.yy)));
    let var_2 = ~select(min(vec3<u32>(u_input.d, 1u, firstTrailingBit(u_input.b.x)), ~select(vec3<u32>(41401u, 21794u, 49306u), vec3<u32>(46208u, 16724u, u_input.b.x), true)), abs(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d, 1u), vec3<u32>(114526u, 1u, u_input.d)), vec3<u32>(u_input.b.x, 75970u, 1u))), vec3<bool>(false, select(true | var_1.b.x, true, global0.x), true));
    let var_3 = select(!var_1.b, !select(select(select(vec2<bool>(true, false), var_1.b, var_1.b), vec2<bool>(global0.x, true), !vec2<bool>(arg_1.x, var_1.b.x)), select(!vec2<bool>(global0.x, true), arg_1.yx, !vec2<bool>(arg_1.x, arg_1.x)), !(arg_0 < u_input.c.x)), func_3());
    var var_4 = Struct_2(-847f, global0.zx);
    return ~u_input.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = !arg_0.b.zyw;
    global0 = !vec3<bool>(true, !select(true, global0.x | true, select(true, true, arg_1.e.x)), true);
    global0 = !(!select(!select(arg_0.b.wzx, vec3<bool>(global0.x, true, arg_0.b.x), arg_0.b.yxx), !(!vec3<bool>(arg_1.b, arg_0.b.x, arg_1.e.x)), !(!arg_0.b.zzw)));
    var var_0 = global0.x;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(46209u, 28u)], -1734f), vec2<f32>(global2[_wgslsmith_index_u32(36660u, 2u)], -716f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -1038f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(833f, global1[_wgslsmith_index_u32(arg_1.d, 28u)]) + vec2<f32>(global1[_wgslsmith_index_u32(1u, 28u)], 502f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, 1224f) + vec2<f32>(104f, global2[_wgslsmith_index_u32(40641u, 2u)])))));
    return Struct_1(27682u, !select(all(vec2<bool>(true, true)), all(vec4<bool>(arg_0.b.x, false, false, false)), !arg_0.b.x) && true, ~vec3<i32>(countOneBits(_wgslsmith_mod_i32(-26540i, u_input.a)), _wgslsmith_clamp_i32(1i, ~arg_1.c.x, arg_1.c.x), arg_1.c.x), min(func_2(9131i, arg_0.b.zxw, -vec2<i32>(0i, 0i), 1i), countOneBits(arg_0.a | 4294967295u)) & ~u_input.b.x, arg_1.e);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1020f * -468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-472f, -666f))), -404f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(3027f, global1[_wgslsmith_index_u32(1u, 28u)]))), 2030f, 349f))));
    var var_1 = func_4(Struct_3(45051u, vec4<bool>(all(!vec4<bool>(false, global0.x, global0.x, false)), global0.x, all(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, global0.x), global0.x)), all(!vec4<bool>(global0.x, false, true, global0.x))), ~126954u), Struct_1(func_2(44287i, vec3<bool>(u_input.c.x > u_input.c.x, all(global0.xz), !global0.x), vec2<i32>(2147483647i, -25690i), _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(-12612i, u_input.c.x))), all(!select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, false, false, false), global0.x)), _wgslsmith_mod_vec3_i32(~reverseBits(u_input.c), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, u_input.c), vec3<i32>(u_input.a, u_input.c.x, 2147483647i))), 1u, !(!(!global0.xx))), firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.d, 29774u, 18262u), firstLeadingBit(firstLeadingBit(vec4<u32>(u_input.d, u_input.d, 31192u, u_input.b.x))))));
    global2 = array<f32, 2>();
    global2 = array<f32, 2>();
    global2 = array<f32, 2>();
    return _wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(~49845u, ~var_1.a), ~u_input.b.x)), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(select(~(~(~vec3<u32>(1u, u_input.b.x, u_input.b.x))), ~vec3<u32>(127748u >> (u_input.b.x % 32u), abs(u_input.b.x), u_input.b.x), all(select(vec4<bool>(true, false, true, global0.x), select(vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x)), select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(global0.x, false, true, global0.x), global0.x)))), ~(vec3<u32>(u_input.d, _wgslsmith_add_u32(46996u, 0u), 4294967295u ^ u_input.d) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(10029u, 0u, u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.b.x), vec3<u32>(u_input.d, u_input.b.x, 8264u))) % vec3<u32>(32u))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_u32(u_input.b.x, func_1()), global1[_wgslsmith_index_u32(0u, 28u)]);
}

