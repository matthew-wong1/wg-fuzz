struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<u32, 13>;

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(1000f, 1136f, -271f, 975f));

var<private> global4: vec3<u32> = vec3<u32>(55736u, 4294967295u, 48396u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1213f, -2075f, -106f)))))) + vec3<f32>(arg_0.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1624f, -610f)) * -229f) - arg_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(232f * arg_1.x)) + -719f)));
    global1 = array<u32, 13>();
    let var_1 = min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, select(-4328i, u_input.b.x, !global0[_wgslsmith_index_u32(u_input.c, 27u)]), arg_0.b), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 57681u), 25u)]), 1i << (~arg_3.b % 32u));
    global2 = array<vec3<i32>, 25>();
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.a))))), arg_1), u_input.b.x, !(!(!(!vec2<bool>(arg_2, arg_2)))));
    return var_0.zy;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(1u), 130031u), ~(vec2<u32>(0u, 0u) | global4.zz)) ^ ~_wgslsmith_div_u32(117288u, ~global4.x), 13u)], 13u)], 25u)] << (vec3<u32>(1u, global1[_wgslsmith_index_u32(47247u, 13u)], u_input.c) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0.a.x));
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(~u_input.c, 65360u)), 25u)];
    let var_2 = 1i;
    global2 = array<vec3<i32>, 25>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1242f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(270f)), _wgslsmith_f_op_f32(max(-259f, arg_0.a.x))))) + -2209f);
}

fn func_2() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mod_u32(42415u, global4.x)), 25u)];
    var var_1 = Struct_2(reverseBits((vec4<i32>(-1i, -8249i, 0i, u_input.b.x) << (~vec4<u32>(global4.x, 1u, 7244u, 0u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, u_input.b.x, -21499i) | vec4<i32>(var_0.x, 2147483647i, 1i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, -1i))), ~1u, reverseBits(_wgslsmith_add_i32(~(var_0.x ^ var_0.x), i32(-1i) * -u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -521f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(var_1.b, 17202i, Struct_1(vec2<f32>(-1245f, var_2))), vec2<f32>(1168f, var_2), true, Struct_2(vec4<i32>(37971i, 42053i, var_0.x, -29251i), 14040u, 2147483647i))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, var_2) * vec2<f32>(var_2, var_2)))), vec2<i32>(~(-var_0.x), firstTrailingBit(var_0.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, global4.x, var_1.b), ~(vec3<u32>(u_input.c, var_1.b, global4.x) ^ vec3<u32>(16176u, global4.x, global4.x)), min(countOneBits(vec3<u32>(u_input.c, 38698u, var_1.b)), vec3<u32>(40510u, 1u, u_input.c) | vec3<u32>(var_1.b, 11323u, global4.x))))), var_2, 1401f, _wgslsmith_f_op_f32(floor(var_2)));
    var_0 = vec3<i32>(u_input.b.x, -12098i, min(2147483647i ^ -var_1.a.x, var_0.x) & _wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-42275i, u_input.b.x, ~(-48702i), _wgslsmith_dot_vec3_i32(var_1.a.zyx, var_1.a.zxy))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-449f, var_2)), _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(0u, var_1.a.x, Struct_1(var_3.yx)), var_3.wx, false, Struct_2(vec4<i32>(4846i, 0i, u_input.b.x, 0i), u_input.c, 31651i))).x, _wgslsmith_f_op_f32(-var_3.x))) - vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_4(var_1.b, 2147483647i, Struct_1(vec2<f32>(var_3.x, var_3.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(712f, var_2))), false, Struct_2(vec4<i32>(u_input.b.x, var_1.a.x, 44715i, u_input.b.x), global4.x, 2147483647i))).x, 996f)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    var var_0 = max(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global4.x, 33248u, 31279u, 63497u), vec4<u32>(global4.x, 34722u, u_input.a, 36755u), vec4<bool>(true, arg_1.c.x, arg_1.c.x, global0[_wgslsmith_index_u32(u_input.a, 27u)])), _wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, 17339u, global4.x, 11406u), vec4<u32>(global1[_wgslsmith_index_u32(11811u, 13u)], 35612u, 9763u, 0u)), abs(vec4<u32>(u_input.c, 0u, 0u, global4.x))), reverseBits(~vec4<u32>(26931u, u_input.a, 63358u, 54124u))), _wgslsmith_mod_u32(5763u, global1[_wgslsmith_index_u32(u_input.c, 13u)] << ((global4.x | global4.x) % 32u)), 4294967295u, u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global4.x << (global1[_wgslsmith_index_u32(4294967295u, 13u)] % 32u), abs(84355u), countOneBits(0u), ~u_input.c), _wgslsmith_add_vec4_u32(~vec4<u32>(global4.x, 54875u, 6535u, global4.x), abs(vec4<u32>(7203u, 4294967295u, 4294967295u, 1u)))), _wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(0u, 13u)], 146688u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 13u)], 13u)], global4.x, 41084u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 33617u, 23799u, global1[_wgslsmith_index_u32(global4.x, 13u)])), vec4<u32>(7627u, 0u, 0u, 55957u) & vec4<u32>(30803u, global4.x, 4294967295u, 4294967295u)))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    return Struct_2(_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1.b, -24789i, -2147483647i, arg_1.b), vec4<i32>(arg_2, u_input.b.x, arg_1.b, arg_1.b)), -(~(~vec4<i32>(u_input.b.x, 1i, -5892i, 0i)))), u_input.a, _wgslsmith_clamp_i32(-firstLeadingBit(arg_2) << (_wgslsmith_mod_u32(1u, ~global1[_wgslsmith_index_u32(u_input.a, 13u)]) % 32u), select(~1i, abs(0i), true), abs(u_input.b.x | 1i)));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    global2 = array<vec3<i32>, 25>();
    global4 = ~reverseBits(vec3<u32>(1u, 40326u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, ~global4.x), 13u)]));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1656f)) * -131f), _wgslsmith_f_op_f32(round(arg_0.a.x)));
    global2 = array<vec3<i32>, 25>();
    return func_5(func_2(), arg_0, 14996i);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1071f * -689f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), 1149f)), select(-2147483647i, -(~arg_2.c), arg_0.x), arg_0.xx);
    global0 = array<bool, 27>();
    let var_1 = arg_2;
    let var_2 = select(vec4<bool>(global0[_wgslsmith_index_u32(abs(38227u), 27u)], arg_0.x, ~func_5(Struct_1(vec2<f32>(arg_1.x, 1319f)), Struct_3(arg_1, arg_2.a.x, arg_0.xy), var_0.b).b <= 0u, arg_0.x), !select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.b, 27u)], var_0.c.x, true, arg_0.x), vec4<bool>(!arg_0.x, any(arg_0), arg_0.x, var_0.c.x && false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, var_0.c.x && false, true)), !select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, 0u), 27u)], true), !(!vec4<bool>(arg_0.x, false, true, var_0.c.x)), select(!vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], var_0.c.x, global0[_wgslsmith_index_u32(var_1.b, 27u)], true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global4.x, 27u)], global0[_wgslsmith_index_u32(26932u, 27u)], var_0.c.x), vec4<bool>(var_0.c.x, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(30926u, 27u)], false, var_0.c.x, arg_0.x)), true)));
    global0 = array<bool, 27>();
    return global3[_wgslsmith_index_u32(~0u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(u_input.b, abs(u_input.b))) >> (global4.xz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global4.x, 1u)])) - _wgslsmith_f_op_vec4_f32(func_6(select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(50434u, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(6488u, 27u)], false, false), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1203f, -198f)), func_1(Struct_3(vec2<f32>(-971f, 318f), 24516i, vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])), global0[_wgslsmith_index_u32(u_input.c, 27u)], global1[_wgslsmith_index_u32(1u, 13u)]))))))));
    global0 = array<bool, 27>();
    global2 = array<vec3<i32>, 25>();
    global3 = array<vec4<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_4(71469u, -22725i, Struct_1(var_1.zy)), vec2<f32>(var_1.x, var_1.x), global0[_wgslsmith_index_u32(u_input.c, 27u)], Struct_2(vec4<i32>(19541i, 0i, -11417i, -2147483647i), 4294967295u, 1i))).x, _wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.wwx - var_1.xwy), _wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, var_1.x, -840f) - vec3<f32>(-535f, var_1.x, var_1.x)), !vec3<bool>(global0[_wgslsmith_index_u32(17407u, 27u)], true, global0[_wgslsmith_index_u32(u_input.c, 27u)])))))));
}

