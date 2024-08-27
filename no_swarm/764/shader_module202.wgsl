struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: Struct_4 = Struct_4(0i, 2147483647i, 20997u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = arg_3;
    var_0 = !(!any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
    var var_2 = !vec3<bool>(any(vec4<bool>(true, false, false, true)), any(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true);
    let var_3 = false;
    return -24115i;
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_4 {
    let var_0 = Struct_4(u_input.a, u_input.a, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1319f)));
    global0 = array<Struct_2, 14>();
    global1 = Struct_4(select(_wgslsmith_div_i32(u_input.a, i32(-1i) * -11953i), ~global1.b << (_wgslsmith_div_u32(u_input.b, var_0.c) % 32u), ~2569i == abs(var_0.a)) | 2147483647i, u_input.a, var_0.c);
    var var_2 = min(_wgslsmith_mult_vec4_i32(~firstTrailingBit(min(vec4<i32>(u_input.a, -1i, 2147483647i, -1i), vec4<i32>(u_input.a, -1i, var_0.a, 11142i))), vec4<i32>(_wgslsmith_sub_i32(26892i, global1.b) >> (~var_0.c % 32u), 1i, (-11465i & var_0.a) & _wgslsmith_add_i32(-30376i, var_0.a), _wgslsmith_sub_i32(0i, -u_input.a))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-14738i, var_0.a), select(vec2<i32>(global1.a, var_0.b), vec2<i32>(u_input.a, -71131i), true)), u_input.a, countOneBits(func_2(0i, vec4<u32>(1u, u_input.c, 4294967295u, var_0.c), var_0.a, Struct_1(vec3<u32>(12164u, u_input.e, 53006u)))), (global1.a >> (7799u % 32u)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 18109i, 7333i), vec4<i32>(var_0.a, 25537i, u_input.a, var_0.a))));
    return var_0;
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, arg_0.c), vec2<u32>(global1.c, u_input.e))) << (1u % 32u), Struct_2(Struct_1(~(~vec3<u32>(global1.c, 4294967295u, 4294967295u))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_vec3_u32(vec3<u32>(~0u, 29949u, 0u), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(41207u, 19715u, 1u)))), countOneBits(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 78484u, 36835u), vec3<u32>(u_input.e, global1.c, 53787u))))), true, Struct_2(Struct_1(~(~vec3<u32>(1u, 4294967295u, arg_0.c))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-324f + 1f))), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(32860u, 0u, u_input.d), vec3<u32>(4294967295u, u_input.d, 4326u))) ^ ~(~vec3<u32>(10997u, global1.c, u_input.e)), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.e) | vec3<u32>(u_input.b, 74913u, arg_0.c), ~vec3<u32>(1u, 99798u, u_input.c))), vec4<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec4<bool>(false, true, false, 4294967295u == global1.c)), true, !(!all(vec2<bool>(true, false)))));
    var_0 = Struct_3(~_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(var_0.a, var_0.d.a.a.x) | 72744u), var_0.d, all(!vec2<bool>(false, var_0.e.x && true)), var_0.b, vec4<bool>(all(select(select(vec2<bool>(true, var_0.b.b.x), var_0.e.zz, false), select(vec2<bool>(true, var_0.d.b.x), var_0.b.b.yx, false), any(var_0.d.b.xx))), any(vec4<bool>(!var_0.e.x, !var_0.d.b.x, var_0.c, var_0.b.b.x)), any(vec2<bool>(any(vec2<bool>(true, var_0.b.b.x)), true)), var_0.c));
    var var_1 = select(-select(select(vec3<i32>(u_input.a, arg_0.b, global1.b), ~vec3<i32>(global1.a, u_input.a, -19018i), true), reverseBits(vec3<i32>(u_input.a, 0i, global1.a)), var_0.d.b), -max(vec3<i32>(-2147483647i, 0i, u_input.a) & vec3<i32>(-2147483647i, 1i, 39419i), abs(~vec3<i32>(31334i, 1i, global1.a))), any(select(vec2<bool>(true, true), vec2<bool>(true, !var_0.d.b.x), !var_0.e.yx)));
    let var_2 = select(1u, 31613u, all(!var_0.e));
    global0 = array<Struct_2, 14>();
    return Struct_1(var_0.b.a.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 14>();
    global1 = Struct_4(_wgslsmith_mod_i32(func_1(!(u_input.a <= global1.b), max(arg_0.a.yz, vec2<u32>(11187u, global1.c)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), any(vec2<bool>(false, true)))).a, firstLeadingBit(global1.b)), _wgslsmith_dot_vec2_i32(-(~arg_1.xz) << (arg_0.a.xy % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(global1.b, arg_1.x)), vec2<i32>(~arg_1.x, -1i), _wgslsmith_mod_vec2_i32(countOneBits(arg_1.xy), vec2<i32>(-1i, -2147483647i)))), 8328u);
    let var_0 = select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_clamp_u32(arg_0.a.x, global1.c, u_input.e) < arg_0.a.x), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), vec2<bool>(true, true), true), !(26398i != arg_1.x) & false), vec2<bool>(any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), 2147483647i >= arg_1.x)), true), select(vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(true, true && all(vec4<bool>(true, true, true, false))), true));
    var var_1 = Struct_3(~1u, global0[_wgslsmith_index_u32(4294967295u, 14u)], false, Struct_2(Struct_1(vec3<u32>(func_1(true, arg_0.a.yy, vec3<bool>(false, true, true)).c, global1.c, 4789u)), !(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-455f)) - 1673f), vec3<u32>(arg_0.a.x, _wgslsmith_div_u32(37308u, ~1u), global1.c), arg_0.a), select(vec4<bool>(true, true, true, all(!vec4<bool>(true, false, true, var_0.x))), !select(!vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(false, all(var_0), var_0.x, var_0.x)));
    let var_2 = !vec3<bool>(any(select(select(vec3<bool>(true, false, false), var_1.e.xwz, vec3<bool>(var_1.d.b.x, true, var_1.c)), select(var_1.d.b, var_1.e.zzz, var_1.b.b.x), !var_1.e.www)), true, !var_0.x);
    return Struct_1(_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(global1.c, 1u, arg_0.a.x)), firstTrailingBit(countOneBits(firstLeadingBit(vec3<u32>(global1.c, global1.c, u_input.b))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_4 {
    let var_0 = firstLeadingBit(firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(global1.b, -16557i), _wgslsmith_div_i32(-2147483647i, i32(-1i) * -10970i), global1.b)));
    var var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(floor(-238f)) < arg_2), any(!select(vec3<bool>(true, arg_3, false), vec3<bool>(arg_3, true, false), vec3<bool>(true, arg_3, arg_3))), all(vec2<bool>(true, false)) || (~u_input.c >= 1u), arg_3), !(!select(select(vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, true, arg_3, false)), select(vec4<bool>(true, arg_3, true, arg_3), vec4<bool>(true, true, false, arg_3), vec4<bool>(true, false, arg_3, false)), select(vec4<bool>(true, arg_3, arg_3, false), vec4<bool>(false, true, true, false), true))), !vec4<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(arg_3, true, arg_3), vec3<bool>(true, arg_3, false))), true, all(vec3<bool>(arg_3, arg_3, arg_3)) || false));
    var var_2 = -(-vec4<i32>(~u_input.a, global1.b & -1538i, func_1(false, vec2<u32>(31348u, 73211u), vec3<bool>(true, var_1.x, false)).b, _wgslsmith_div_i32(1i, u_input.a)) ^ min(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, global1.a, global1.a, u_input.a)), vec4<i32>(45474i, var_0.x, global1.a, var_0.x)), vec4<i32>(i32(-1i) * -30917i, min(20709i, 17597i), ~global1.a, global1.b ^ -2147483647i)));
    let var_3 = func_1(any(select(select(select(vec4<bool>(true, true, false, arg_3), vec4<bool>(false, var_1.x, arg_3, var_1.x), false), !vec4<bool>(false, var_1.x, false, true), !vec4<bool>(arg_3, arg_3, false, arg_3)), !select(vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(arg_3, true, var_1.x, var_1.x), arg_3), all(select(vec3<bool>(var_1.x, true, false), var_1.yxz, var_1.zxw)))), ~func_3(func_1(arg_3, arg_0.a.yx, vec3<bool>(arg_3, true, false))).a.yz, select(select(vec3<bool>(!arg_3, true, arg_3 & arg_3), select(vec3<bool>(arg_3, var_1.x, var_1.x), var_1.xxy, select(var_1.zyz, var_1.xyx, false)), !(!var_1.x)), var_1.ywy, false));
    var var_4 = 1336f;
    return func_1(false, arg_0.a.yz, vec3<bool>(true, !all(var_1.zx), arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true == !(u_input.e > ~_wgslsmith_div_u32(global1.c, global1.c));
    let var_1 = ~(-vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 0i), abs(-2137i)));
    global0 = array<Struct_2, 14>();
    let var_2 = func_5(func_4(func_3(func_1(all(vec3<bool>(var_0, false, false)), ~vec2<u32>(7795u, 60847u), vec3<bool>(var_0, false, var_0))), vec3<i32>(2147483647i, -19335i, -40225i >> (countOneBits(u_input.d) % 32u))), global1.b, -1180f, var_0);
    global1 = func_1(var_0, _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 74810u, 24638u), ~var_2.c)), ~vec2<u32>(1u, 1u)), select(!vec3<bool>(true, true, select(var_0, var_0, var_0)), vec3<bool>(all(select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0))), true, true), select(vec3<bool>(!var_0, var_0, all(vec4<bool>(var_0, var_0, var_0, var_0))), select(!vec3<bool>(false, false, var_0), select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, var_0, false), vec3<bool>(true, false, var_0)), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec2<bool>(var_0, false)), true))));
    global1 = var_2;
    let var_3 = Struct_3(func_5(func_3(Struct_4(-u_input.a, _wgslsmith_div_i32(1i, global1.b), 1u)), _wgslsmith_dot_vec2_i32(abs(~vec2<i32>(25864i, 976i)), var_1), -572f, true).c, Struct_2(Struct_1(min(~vec3<u32>(u_input.e, 8761u, 4294967295u), firstTrailingBit(vec3<u32>(global1.c, 0u, var_2.c)))), !select(vec3<bool>(false, var_0, false), select(vec3<bool>(false, var_0, true), vec3<bool>(false, true, false), vec3<bool>(var_0, true, var_0)), !vec3<bool>(var_0, var_0, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(503f, 1505f), _wgslsmith_f_op_f32(trunc(-1176f)))), vec3<u32>(0u, 11436u, reverseBits(~8704u)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(52729u, var_2.c, var_2.c), vec3<u32>(1u, 4294967295u, var_2.c)), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.c, var_2.c, 0u), countOneBits(vec3<u32>(4294967295u, u_input.b, global1.c))))), false, global0[_wgslsmith_index_u32(1u, 14u)], vec4<bool>(true, false && select(var_2.a < -14130i, !var_0, true), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(-1i), ~(-10342i), false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d.c, 1156f, var_3.d.c, 545f), vec4<f32>(var_3.d.c, -574f, -443f, var_3.b.c))) + vec4<f32>(var_3.d.c, _wgslsmith_f_op_f32(var_3.b.c * 515f), var_3.b.c, _wgslsmith_f_op_f32(var_3.b.c + 392f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1288f, var_3.d.c, -855f, var_3.d.c))))))), ~firstTrailingBit(global1.b), ~vec4<i32>(~max(2147483647i, 2147483647i), ~(-global1.b), func_5(var_3.d.a, u_input.a, _wgslsmith_f_op_f32(-var_3.b.c), var_0).b, u_input.a), vec4<i32>(36283i, ~_wgslsmith_dot_vec2_i32(var_1, ~vec2<i32>(global1.a, global1.a)), -min(_wgslsmith_mod_i32(global1.b, var_1.x), u_input.a), 1i));
}

