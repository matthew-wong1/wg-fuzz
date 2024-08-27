struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec3<f32>(908f, -497f, 2396f), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(-421f, -1032f, 259f), vec3<bool>(false, false, false)), vec3<f32>(-1000f, 1000f, 313f)), Struct_3(Struct_2(vec3<f32>(400f, 1425f, 210f), vec3<bool>(false, true, true)), Struct_2(vec3<f32>(1312f, -1736f, 128f), vec3<bool>(false, false, true)), vec3<f32>(171f, -1000f, 1000f)), Struct_3(Struct_2(vec3<f32>(1199f, -263f, 531f), vec3<bool>(true, true, true)), Struct_2(vec3<f32>(-972f, -1099f, 1674f), vec3<bool>(true, true, true)), vec3<f32>(-836f, -902f, 2449f)), Struct_3(Struct_2(vec3<f32>(1338f, -431f, 196f), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(817f, 1078f, -488f), vec3<bool>(true, true, true)), vec3<f32>(1000f, 167f, 1375f)));

var<private> global2: array<f32, 1> = array<f32, 1>(-252f);

var<private> global3: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = ~(~(~abs(17207u)));
    global3 = false;
    var var_1 = Struct_4(7916u, firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, 2147483647i, 0i), vec4<i32>(1i, 823i, u_input.d, arg_2.x)) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_2.x, arg_2.x, -2147483647i), vec4<i32>(arg_2.x, -1i, u_input.d, 0i))));
    global3 = !arg_0.x;
    var var_2 = 5323u;
    return ~firstTrailingBit(var_1.a);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a >> (u_input.b.x % 32u), 1u)])), global2[_wgslsmith_index_u32(~(~u_input.b.x), 1u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 1u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1992f + _wgslsmith_f_op_f32(select(-920f, -374f, arg_0.x))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    var var_2 = ~_wgslsmith_div_vec2_i32(~(-vec2<i32>(var_1.b, var_1.b) << (vec2<u32>(25064u, 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(var_1.b, 1i)), vec2<i32>(u_input.d, var_1.b)), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i) << (u_input.b.zy % vec2<u32>(32u)), vec2<i32>(-8299i, -21051i))));
    let var_3 = -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -2672i, max(u_input.d, ~(-2147483647i))), _wgslsmith_mult_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, var_1.b, u_input.d), vec3<i32>(1i, 61332i, -2147483647i)), firstLeadingBit(vec3<i32>(u_input.d, var_1.b, var_1.b))), vec3<i32>(-1i) * -vec3<i32>(var_2.x, 14685i, -14579i)));
    let var_4 = u_input.c.x | u_input.a;
    return var_4;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(286f, global2[_wgslsmith_index_u32(u_input.a, 1u)], 1694f), arg_3.b.a)) * vec3<f32>(1838f, global2[_wgslsmith_index_u32(77336u, 1u)], -1000f)))), !(!arg_3.a.b));
    global0 = array<Struct_1, 5>();
    global1 = array<Struct_3, 4>();
    var var_1 = 4294967295u;
    global3 = !select(select(false, arg_2, all(arg_3.a.b)), true, !any(vec4<bool>(var_0.b.x, arg_3.a.b.x, var_0.b.x, var_0.b.x)) & select(true, false, true));
    return Struct_4(arg_0 & _wgslsmith_sub_u32(arg_1.x, 4663u), ~vec4<i32>(-1i, _wgslsmith_add_i32(u_input.d, 1i), min(5471i, u_input.d | u_input.d), -1630i));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = false;
    let var_1 = func_4(select(func_2(select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 1686f, -504f, global2[_wgslsmith_index_u32(0u, 1u)])) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -1000f, -446f, arg_0.x), arg_0))), -vec2<i32>(1i, -29052i), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.a, u_input.a, u_input.a)), vec4<u32>(11482u, u_input.b.x, 4294967295u, u_input.c.x))), func_3(vec3<bool>(var_0 || var_0, var_0, true == var_0), true), any(vec2<bool>(all(vec2<bool>(true, false)), true))), abs(u_input.b ^ vec3<u32>(u_input.b.x, ~0u, ~4294967295u)), var_0, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(arg_0.xzw)))), vec3<bool>(var_0, true, false)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_1 - -1426f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.c.x, 4874u), vec4<u32>(47946u, 1u, 4294967295u, u_input.b.x)), 1u)]), vec3<bool>(any(vec4<bool>(var_0, false, var_0, var_0)), var_0, true)), _wgslsmith_f_op_vec3_f32(-arg_0.xxx)));
    var var_2 = -2147483647i;
    global2 = array<f32, 1>();
    let var_3 = vec2<bool>(true, true);
    return firstTrailingBit(~(~var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~select(6014u, _wgslsmith_mod_u32(max(u_input.b.x, u_input.c.x), func_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 584f), global2[_wgslsmith_index_u32(u_input.c.x, 1u)])), true) >> (73525u % 32u);
    let var_1 = func_4(u_input.a, vec3<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(~u_input.b), _wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<u32>(u_input.c.x, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b))), u_input.c.x, u_input.b.x), any(vec3<bool>(~4254i == min(u_input.d, 1i), !any(vec3<bool>(false, true, false)), false)), Struct_3(Struct_2(vec3<f32>(global2[_wgslsmith_index_u32(max(61476u, u_input.c.x), 1u)], _wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 1u)])), vec3<bool>(false, true, -103085i > u_input.d)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2[_wgslsmith_index_u32(13704u, 1u)], 2582f, global2[_wgslsmith_index_u32(0u, 1u)]), vec3<f32>(global2[_wgslsmith_index_u32(31261u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(16613u, 1u)])))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<f32>(1039f, global2[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(4294967295u, 1u)])) - _wgslsmith_div_f32(-971f, global2[_wgslsmith_index_u32(24859u, 1u)])))));
    let var_2 = 30648i ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_1.b.x, var_1.b.x), max(0i << (var_1.a % 32u), _wgslsmith_mod_i32(var_1.b.x, 16879i)) << (~(~var_1.a) % 32u), _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(u_input.d, 0i))), min(-var_1.b.wz, var_1.b.xz << (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-974f, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -227f, global2[_wgslsmith_index_u32(0u, 1u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], global2[_wgslsmith_index_u32(u_input.b.x, 1u)])))))));
    var var_4 = func_4(~var_1.a, ~min(~u_input.b, vec3<u32>(var_1.a, 0u, 10294u)) & ~(~firstTrailingBit(u_input.b)), all(vec3<bool>(true, false, !select(true, true, false))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(660f, 1413f, -2241f))), vec3<f32>(global2[_wgslsmith_index_u32(110742u, 1u)], var_3.x, var_3.x))), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), Struct_2(var_3.zzy, vec3<bool>(var_2 == u_input.d, true, var_2 > var_2)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.wyx))) * _wgslsmith_f_op_vec3_f32(var_3.wzz - _wgslsmith_f_op_vec3_f32(step(var_3.wzx, var_3.yyy))))));
    var var_5 = global2[_wgslsmith_index_u32(u_input.c.x, 1u)];
    let var_6 = global0[_wgslsmith_index_u32(54893u, 5u)];
    var_4 = func_4(var_4.a, _wgslsmith_add_vec3_u32(select(vec3<u32>(1u, u_input.c.x | var_1.a, 29310u), u_input.b, var_6.a), vec3<u32>(~14474u | ~u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b.x, 0u), firstLeadingBit(var_4.a)), 4294967295u)), !all(!select(vec4<bool>(var_6.a, var_6.a, false, var_6.a), vec4<bool>(false, false, true, true), false)), global1[_wgslsmith_index_u32(var_1.a, 4u)]);
    var var_7 = vec3<i32>(abs(-2147483647i), _wgslsmith_mod_i32(-9562i, _wgslsmith_mult_i32(countOneBits(select(-45626i, 20673i, var_6.a)), _wgslsmith_mod_i32(var_1.b.x, var_4.b.x) | max(var_6.b, 42971i))), _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(2147483647i, -7810i), -(_wgslsmith_dot_vec4_i32(var_1.b, var_1.b) | reverseBits(8854i))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_sub_u32(25540u, var_1.a), u_input.c);
}

