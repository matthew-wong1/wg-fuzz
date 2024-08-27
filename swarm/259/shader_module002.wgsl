struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_3,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.c.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(select(-2053f, 737f, true)))))));
    global0 = array<vec2<bool>, 5>();
    var var_1 = _wgslsmith_add_u32(reverseBits(arg_2.c.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(60879u, arg_2.a.x)), arg_0 << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 29244u, u_input.b), arg_2.c.a.wyy) % 32u)), 4294967295u));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(628f, arg_2.c.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(106f)) + _wgslsmith_div_f32(-1263f, var_0)), var_0) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c.b.a.wwy + arg_1))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 517f, arg_1.x), arg_1)), _wgslsmith_f_op_vec3_f32(-arg_2.c.b.a.yxw), arg_2.c.b.b))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(arg_1)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, var_0, arg_1.x))))))));
    let var_3 = arg_2.c.b;
    return _wgslsmith_div_vec4_u32(arg_2.c.a, vec4<u32>(4294967295u, select(~1u, firstLeadingBit(30089u), -1000f < var_2.x) ^ abs(arg_2.a.x), arg_2.a.x, u_input.b));
}

fn func_2(arg_0: Struct_5, arg_1: bool) -> u32 {
    var var_0 = 57253u;
    var var_1 = ~(u_input.e | reverseBits(min(vec4<i32>(u_input.e.x, arg_0.c.x, u_input.c, -35857i), u_input.e) << (func_3(17907u, vec3<f32>(682f, arg_0.a.b.a.x, 188f), Struct_3(arg_0.a.a, vec4<i32>(u_input.d.x, arg_0.c.x, u_input.c, arg_0.c.x), arg_0.a)) % vec4<u32>(32u))));
    var_1 = ~_wgslsmith_mult_vec4_i32(max(-u_input.e, select(-u_input.e, u_input.e, arg_1)), _wgslsmith_mod_vec4_i32(u_input.e, ~u_input.e));
    let var_2 = Struct_2(arg_0.a.a, arg_0.a.b, all(select(!select(vec2<bool>(arg_0.b.x, true), arg_0.b, true), vec2<bool>(arg_1, all(vec2<bool>(arg_1, false))), !arg_0.b)));
    let var_3 = Struct_3(arg_0.a.a, u_input.e, var_2);
    return 29205u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = Struct_2(~_wgslsmith_clamp_vec4_u32(vec4<u32>(12769u, 287u, u_input.b, u_input.a) >> ((vec4<u32>(4294967295u, 9591u, 104579u, 12311u) & vec4<u32>(arg_1, u_input.a, arg_1, arg_0.x)) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(arg_0, arg_0), ~vec4<u32>(arg_1, arg_0.x, 35291u, arg_1)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(487f, -909f, -1000f, -662f) + vec4<f32>(468f, 1234f, 571f, 1384f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1222f, 1267f, -171f, 270f), vec4<f32>(-457f, 1423f, 298f, 1402f))))), true), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b.a)))), !var_0.b.b);
    var var_2 = u_input.e;
    let var_3 = u_input.e.wz;
    let var_4 = vec4<u32>(arg_1, 1u, _wgslsmith_dot_vec4_u32(arg_0, select(vec4<u32>(4294967295u, var_0.a.x, arg_1 ^ arg_0.x, 1u), var_0.a, false)), reverseBits(arg_1) | arg_1);
    return -862f;
}

fn func_1() -> i32 {
    let var_0 = vec4<i32>(-3903i, _wgslsmith_mult_i32(6825i, _wgslsmith_mod_i32(6800i << (u_input.b % 32u), u_input.d.x)), u_input.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(5442i, ~(-45746i), min(0i, u_input.e.x), 2768i), -u_input.e));
    let var_1 = _wgslsmith_f_op_f32(func_4(~vec4<u32>(abs(func_2(Struct_5(Struct_2(vec4<u32>(0u, 24100u, 13275u, u_input.b), Struct_1(vec4<f32>(-1145f, 704f, 167f, 1351f), false), true), vec2<bool>(true, false), vec3<i32>(-47191i, u_input.d.x, 59661i), 4294967295u, false), true)), func_3(1u | u_input.b, vec3<f32>(-1013f, 1283f, -355f), Struct_3(vec4<u32>(u_input.b, u_input.a, u_input.b, 23837u), vec4<i32>(-2147483647i, 13608i, u_input.e.x, -2147483647i), Struct_2(vec4<u32>(32045u, 62345u, 9683u, 69096u), Struct_1(vec4<f32>(614f, -1180f, 1000f, -671f), true), true))).x, 43059u >> (_wgslsmith_mod_u32(2349u, u_input.b) % 32u), u_input.b & ~4294967295u), abs(u_input.a), any(!(!select(global0[_wgslsmith_index_u32(36973u, 5u)], vec2<bool>(true, true), vec2<bool>(true, true))))));
    global0 = array<vec2<bool>, 5>();
    global0 = array<vec2<bool>, 5>();
    global0 = array<vec2<bool>, 5>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!global0[_wgslsmith_index_u32(~1u, 5u)]));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.d.zz, _wgslsmith_sub_vec2_i32(~(-u_input.d.yx), vec2<i32>(_wgslsmith_mult_i32(u_input.e.x | 14906i, func_1()), firstTrailingBit(1i))));
    global0 = array<vec2<bool>, 5>();
    let var_2 = 21220u ^ func_3(4225u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(638f, -132f, 494f), vec3<f32>(725f, 895f, 320f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(393f, -498f, -904f))))), Struct_3(~(~vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.b)), vec4<i32>(-var_1, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.e.x, var_1), u_input.e.ywy), u_input.d.x, 2147483647i), Struct_2(~vec4<u32>(30672u, u_input.b, u_input.a, 4294967295u), Struct_1(vec4<f32>(228f, 1166f, -120f, 2120f), true), var_0))).x;
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1198f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-730f + -935f), _wgslsmith_div_f32(1014f, -312f)) + _wgslsmith_f_op_f32(-1f))), vec2<f32>(_wgslsmith_f_op_f32(1307f - _wgslsmith_f_op_f32(-720f - _wgslsmith_f_op_f32(ceil(-1340f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(717f + 464f), _wgslsmith_f_op_f32(677f - -1443f)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(countOneBits(u_input.e.x), _wgslsmith_sub_i32(var_1, -27961i))), select(-var_1, ~(-17152i), true) ^ 2147483647i, 34529i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(768f, var_3.x, var_3.x, 308f) * vec4<f32>(1949f, 896f, -1155f, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 1095f, 922f)), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(abs(-1058f)))), _wgslsmith_div_u32(var_2, var_2));
}

