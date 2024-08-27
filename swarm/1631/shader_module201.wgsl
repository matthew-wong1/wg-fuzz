struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 24> = array<u32, 24>(46682u, 4294967295u, 21726u, 4294967295u, 14406u, 12648u, 0u, 0u, 57064u, 39245u, 4294967295u, 14633u, 3325u, 40541u, 0u, 14478u, 451u, 1u, 37791u, 41269u, 16023u, 48303u, 0u, 30043u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-arg_0.a)));
    var var_1 = arg_0;
    return arg_0;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    let var_0 = !func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -228f), vec4<bool>(!arg_2, any(vec4<bool>(arg_2, true, arg_2, arg_2)), 0u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14876u, 24u)], 24u)], arg_2), ~_wgslsmith_clamp_i32(u_input.b, 1i, u_input.b), u_input.b)).b.xx;
    global0 = _wgslsmith_sub_u32(1u, arg_1.x);
    let var_1 = select(vec4<bool>(any(vec2<bool>(0u >= arg_1.x, false)), false, all(select(func_2(Struct_1(arg_0.x, vec4<bool>(arg_2, true, arg_2, var_0.x), u_input.b, -1i)).b, select(vec4<bool>(var_0.x, var_0.x, arg_2, arg_2), vec4<bool>(arg_2, true, arg_2, var_0.x), vec4<bool>(false, false, true, var_0.x)), var_0.x)), false & !arg_2), select(vec4<bool>(false, true, arg_2, true), !select(select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, var_0.x, arg_2, false), vec4<bool>(arg_2, var_0.x, var_0.x, false)), func_2(Struct_1(993f, vec4<bool>(arg_2, false, true, false), u_input.b, u_input.b)).b, func_2(Struct_1(-1000f, vec4<bool>(var_0.x, false, var_0.x, arg_2), u_input.b, -37865i)).b.x), func_2(func_2(func_2(Struct_1(arg_0.x, vec4<bool>(arg_2, true, true, arg_2), u_input.b, -1i)))).b), select(vec4<bool>(all(select(vec2<bool>(false, false), var_0, vec2<bool>(false, false))), func_2(func_2(Struct_1(-2345f, vec4<bool>(false, false, false, arg_2), u_input.b, 34951i))).b.x, arg_0.x >= 367f, any(!vec4<bool>(var_0.x, var_0.x, false, false))), select(vec4<bool>(false, !arg_2, !arg_2, arg_2), vec4<bool>(true, !arg_2, true, func_2(Struct_1(arg_0.x, vec4<bool>(true, arg_2, var_0.x, arg_2), u_input.b, u_input.b)).b.x), false), select(!vec4<bool>(true, true, arg_2, true), vec4<bool>(true, true, false, arg_2), all(select(vec3<bool>(arg_2, true, var_0.x), vec3<bool>(arg_2, var_0.x, var_0.x), arg_2)))));
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) * 247f) - 1274f), vec4<bool>(all(!var_1), !(!var_1.x), true, all(vec4<bool>(true, false, var_0.x, true))), 78701i, 1i));
    let var_3 = min(vec2<u32>(63869u, 5734u), ~(~(~_wgslsmith_clamp_vec2_u32(arg_1.zz, u_input.c.yz, vec2<u32>(2858u, arg_1.x)))));
    return -reverseBits(1i);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(select(abs(vec3<i32>(-13891i, -2147483647i, -390i)), vec3<i32>(arg_2.c, -1i, u_input.b) >> (u_input.e.xzz % vec3<u32>(32u)), !vec3<bool>(true, arg_2.b.x, arg_2.b.x)), vec3<i32>(min(-22426i, u_input.b), 0i << (u_input.d % 32u), -16232i)), _wgslsmith_add_vec3_i32(-(~vec3<i32>(arg_2.d, u_input.b, u_input.b)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, arg_2.c)))), -(vec3<i32>(arg_2.d, u_input.b, u_input.b) ^ vec3<i32>(1i, 24142i, 0i)));
    var var_1 = vec3<u32>(global1[_wgslsmith_index_u32(abs(abs(0u)), 24u)], global1[_wgslsmith_index_u32(firstLeadingBit(1u), 24u)], 116011u);
    var_1 = abs((_wgslsmith_add_vec3_u32(~u_input.c, u_input.c) >> (~abs(u_input.e.xzy) % vec3<u32>(32u))) | u_input.c);
    global1 = array<u32, 24>();
    var var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_3.x, _wgslsmith_div_f32(arg_1, 1906f)))), arg_2.b, firstTrailingBit(-(u_input.b & arg_2.c)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(15213i, _wgslsmith_clamp_i32(var_0.x, u_input.b, var_0.x)), arg_2.d, arg_2.c)));
    return func_2(Struct_1(1127f, !func_2(Struct_1(1000f, vec4<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x, false), var_2.c, 19045i)).b, -_wgslsmith_clamp_i32(-arg_2.c, 48184i, var_2.c >> (4294967295u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 0i), var_0), 21154i, -2147483647i) << (~_wgslsmith_div_u32(29992u, arg_0.x) % 32u))).a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(181f)) + -302f)), vec4<bool>((u_input.a >> (4294967295u % 32u)) >= u_input.e.x, any(vec4<bool>(false, true, true, true)), !all(vec3<bool>(true, true, false)), false), _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -38636i), vec4<i32>(-21226i, -2147483647i, u_input.b, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(3360i, -30091i, u_input.b, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, -1i, -1i, -36173i)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(6267i, min(u_input.b, u_input.b)), ~_wgslsmith_add_i32(u_input.b, u_input.b))));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(func_4(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~1u, min(0u, global1[_wgslsmith_index_u32(60792u, 24u)])), 285f, Struct_1(_wgslsmith_f_op_f32(-var_0.a), !vec4<bool>(var_0.b.x, true, var_0.b.x, true), func_3(vec3<f32>(1540f, var_0.a, var_0.a), u_input.e.yzy, false), var_0.d << (u_input.e.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -1561f) * vec2<f32>(var_0.a, var_0.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(942f, 657f))))), vec4<bool>(select(false, !var_0.b.x, var_0.b.x), select(false, true, true && var_0.b.x), var_0.b.x, var_0.b.x), u_input.b, u_input.b));
    global0 = reverseBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(3674u, 4294967295u), 24u)], ~37644u, min(global1[_wgslsmith_index_u32(68361u, 24u)], 74252u))), u_input.c));
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(global1[_wgslsmith_index_u32(0u, 24u)] >> (u_input.a % 32u)), 1u << (~global1[_wgslsmith_index_u32(u_input.a, 24u)] % 32u), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(39867u), ~global1[_wgslsmith_index_u32(4294967295u, 24u)]), 24u)], firstTrailingBit(1u)) ^ ~vec4<u32>(u_input.e.x, global1[_wgslsmith_index_u32(~u_input.e.x, 24u)], 1u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(36465u, 0u), ~(38664u | u_input.d), 25266u, ~(~24845u)), firstTrailingBit(~vec4<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 24u)], 24u)], 0u, 3872u) << (u_input.e % vec4<u32>(32u)))));
    var var_3 = vec2<f32>(2491f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_div_f32(var_0.a, -2024f)));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    global0 = min(~30594u, 50500u);
    var var_0 = u_input.c.xx;
    let var_1 = -172f;
    return firstLeadingBit(~select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, 25626i, -1i) | vec4<i32>(0i, 26678i, arg_2.d, -1i), firstLeadingBit(vec4<i32>(1i, 12622i, u_input.b, u_input.b)), select(vec4<i32>(2147483647i, arg_2.d, arg_0.d, u_input.b), vec4<i32>(2147483647i, arg_0.d, -37688i, u_input.b), vec4<bool>(false, arg_1, false, false))), -vec4<i32>(arg_0.c, -14771i, -15233i, arg_0.c), vec4<bool>(all(vec3<bool>(arg_3, arg_1, arg_2.b.x)), arg_3, arg_0.b.x, true)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_1.ww;
    global1 = array<u32, 24>();
    var var_1 = ~1u;
    global1 = array<u32, 24>();
    let var_2 = vec3<bool>(arg_2.x, any(func_1().b.ww), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(u_input.e.wyz, u_input.e.wwy)), u_input.e.ywy) == u_input.c.x);
    return Struct_1(-1473f, vec4<bool>((_wgslsmith_mod_u32(u_input.c.x, global1[_wgslsmith_index_u32(0u, 24u)]) <= 4294967295u) | var_2.x, var_2.x, false, var_2.x), func_2(func_1()).d, reverseBits(~(~_wgslsmith_add_i32(-63921i, arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(firstTrailingBit(-func_5(func_1(), true, func_2(Struct_1(245f, vec4<bool>(false, false, true, false), 1432i, -2147483647i)), true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1164f, _wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f - -339f) * _wgslsmith_f_op_f32(-1217f - -848f)), 1517f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, 253f, -1160f, -1371f)) * vec4<f32>(802f, 1651f, 270f, 126f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 670f, 1638f, 595f)), all(vec4<bool>(false, false, true, true)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true))))), vec3<bool>(func_2(Struct_1(_wgslsmith_f_op_f32(ceil(-750f)), vec4<bool>(true, true, true, true), -u_input.b, ~u_input.b)).b.x, true, true), -746f);
    let var_1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1299f)), 671f))) <= var_0.a, (40223i ^ u_input.b) < 15585i, var_0.b.x);
    var var_2 = Struct_1(-1332f, vec4<bool>(var_1.x, func_1().b.x, 539f >= var_0.a, !var_0.b.x), 1i, u_input.b);
    let var_3 = vec2<bool>((~u_input.b <= func_5(Struct_1(1000f, vec4<bool>(var_1.x, var_1.x, var_0.b.x, true), var_0.d, -1i), var_2.b.x, Struct_1(-379f, var_2.b, var_2.d, var_2.d), var_1.x).x) != var_1.x, all(select(!vec4<bool>(var_1.x, true, false, var_0.b.x), select(!vec4<bool>(var_2.b.x, var_2.b.x, var_0.b.x, var_2.b.x), vec4<bool>(true, true, var_1.x, var_2.b.x), var_2.b), var_1.x)));
    var var_4 = func_1();
    var var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(382f + var_0.a), var_2.a) + 1f) - -1000f), vec4<bool>(var_3.x, !var_2.b.x, true, -218f > var_4.a), var_4.c, -(~14384i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

