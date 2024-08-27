struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-644f, 1073u, 1u), Struct_1(-1748f, 45284u, 60178u), Struct_1(447f, 13918u, 0u), Struct_1(175f, 4294967295u, 43157u));

var<private> global3: i32 = 1i;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> i32 {
    global3 = -30866i;
    let var_0 = vec4<bool>(false, all(!(!select(vec4<bool>(arg_0.c.x, arg_1.x, false, arg_0.c.x), vec4<bool>(arg_1.x, false, false, arg_1.x), true))), true, true);
    let var_1 = abs(~vec4<u32>(~_wgslsmith_mod_u32(u_input.c.x, global0.b), ~_wgslsmith_mult_u32(0u, arg_0.a.c), _wgslsmith_dot_vec4_u32(u_input.c | u_input.c, min(u_input.c, u_input.c)), 3883u));
    var var_2 = select(!select(arg_1, vec2<bool>(var_0.x, any(vec4<bool>(arg_1.x, false, true, arg_1.x))), true), vec2<bool>(true, any(vec4<bool>(true, false, any(vec3<bool>(true, var_0.x, arg_1.x)), any(vec2<bool>(false, arg_0.c.x))))), !select(arg_1, !select(vec2<bool>(arg_0.c.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, false)), vec2<bool>(false, true)));
    global2 = array<Struct_1, 4>();
    return ~(-u_input.b);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1563f - _wgslsmith_f_op_f32(max(-1630f, arg_2))), ~((12294u >> (1u % 32u)) | u_input.c.x), u_input.c.x), ~vec3<u32>(28155u, ~_wgslsmith_div_u32(u_input.c.x, arg_0.x), _wgslsmith_div_u32(abs(49392u), ~arg_0.x)), arg_3);
    let var_1 = vec4<u32>(var_0.b.x, 4294967295u, firstTrailingBit(reverseBits(global0.c)), ~(~(select(arg_0.x, 79u, arg_3.x) << (firstLeadingBit(global0.b) % 32u))));
    global1 = true;
    global3 = max(_wgslsmith_add_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), u_input.a.x), _wgslsmith_mult_i32(8370i, -20712i)), 1i);
    var var_2 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1470f, global0.a)), -236f), arg_0.x, arg_0.x), ~(min(vec3<u32>(0u, 41206u, var_1.x), ~var_0.b) & _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, arg_0.x, 1u)), vec3<u32>(arg_0.x, 20574u, 82542u))), select(vec2<bool>(!any(vec3<bool>(arg_3.x, var_0.c.x, true)), var_0.c.x), vec2<bool>(true, var_0.c.x), false));
    return arg_1;
}

fn func_2() -> f32 {
    var var_0 = ~(~firstTrailingBit(_wgslsmith_div_i32(-6282i, u_input.a.x))) >> (reverseBits(1u ^ ~(~global0.c)) % 32u);
    var var_1 = Struct_2(vec4<i32>(_wgslsmith_mod_i32(func_4(_wgslsmith_mod_vec2_u32(u_input.c.ww, vec2<u32>(global0.c, 4294967295u)), func_3(Struct_3(global2[_wgslsmith_index_u32(57772u, 4u)], vec3<u32>(u_input.c.x, global0.c, global0.c), vec2<bool>(true, true)), vec2<bool>(false, false)), _wgslsmith_f_op_f32(floor(global0.a)), vec2<bool>(true, true)), -(~u_input.b)), u_input.a.x, func_3(Struct_3(Struct_1(global0.a, global0.c, 33237u), vec3<u32>(4294967295u, 4294967295u, 35587u), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_mult_i32(-1i, -50756i)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(74595u, countOneBits(~1u), u_input.c.x >> (u_input.c.x % 32u))), 4u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -365f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * global0.a))), 0u, 70283u), _wgslsmith_div_vec2_u32(u_input.c.zy, ~u_input.c.ww));
    let var_2 = (u_input.a.x << (global0.b % 32u)) & -16335i;
    var_0 = u_input.b;
    var_1 = Struct_2(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(var_1.a, var_1.a) << (abs(42241u) % 32u), u_input.a.x), 8633i, 7230i, var_1.a.x), var_1.c, global2[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(8997u, global0.b), ~vec2<u32>(5922u, 4294967295u)), var_1.d));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(var_1.b.a - -439f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a + _wgslsmith_f_op_f32(floor(173f)))), select(!(!all(vec4<bool>(true, true, true, false))), -1i <= (u_input.b ^ ~var_2), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -512f))) > global0.a)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -271f, global0.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-204f, -1179f, 1079f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.b.a, global0.a, arg_2.b.a), vec3<f32>(global0.a, -798f, global0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(342f, global0.a, global0.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2139f, 159f, -378f))))));
    global2 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_f_op_f32(func_2());
    let var_2 = Struct_1(var_0.x, u_input.c.x, _wgslsmith_mult_u32(max(4294967295u, global0.b), arg_2.b.c));
    let var_3 = Struct_3(arg_2.c, u_input.c.zxx, !(!select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, true), select(vec2<bool>(arg_1, false), vec2<bool>(arg_0, arg_0), arg_0))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(601f, -1000f)))))) - var_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(2104f, global0.a), -1191f), global0.a) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, 248f))) * _wgslsmith_f_op_vec2_f32(func_1(true, false, Struct_2(vec4<i32>(u_input.b, -23060i, 1i, u_input.a.x), global2[_wgslsmith_index_u32(34940u, 4u)], global2[_wgslsmith_index_u32(global0.b, 4u)], u_input.c.zz), 1i))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a, _wgslsmith_f_op_f32(max(384f, _wgslsmith_f_op_f32(sign(var_0.x))))), var_0));
    var var_2 = vec3<bool>(all(vec4<bool>(true, any(vec3<bool>(false, true, false)) & true, _wgslsmith_f_op_vec2_f32(func_1(true, true, Struct_2(vec4<i32>(0i, u_input.b, 13570i, 2147483647i), Struct_1(global0.a, 1u, global0.b), Struct_1(global0.a, u_input.c.x, 0u), vec2<u32>(52588u, 0u)), 1i)).x >= 1314f, !all(vec4<bool>(false, true, false, false)))), select(any(vec4<bool>(true, true, true, true)), ~firstTrailingBit(37523i) < 1i, !all(vec2<bool>(false, true)) || (select(false, false, false) & true)), true);
    var var_3 = _wgslsmith_clamp_vec4_i32(~countOneBits(vec4<i32>(~1i, _wgslsmith_mult_i32(-48383i, 0i), 1i, u_input.b)), firstTrailingBit(select(~reverseBits(vec4<i32>(u_input.a.x, -1i, 33185i, -7648i)), ~(vec4<i32>(-54642i, -3533i, u_input.b, 39198i) | vec4<i32>(18142i, u_input.b, u_input.a.x, -2147483647i)), vec4<bool>(var_2.x, true, !var_2.x, var_2.x))), _wgslsmith_mult_vec4_i32((vec4<i32>(u_input.b, 1i, -2147483647i, u_input.a.x) | vec4<i32>(-1i, u_input.a.x, 19472i, u_input.b)) ^ vec4<i32>(u_input.b, u_input.b, u_input.a.x, -2147483647i), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, -27370i, 1i), vec4<i32>(u_input.a.x, -18834i, u_input.b, u_input.b), vec4<i32>(u_input.b, -20104i, -29634i, 1i)), ~vec4<i32>(-12835i, 0i, u_input.a.x, u_input.b))) ^ abs((vec4<i32>(6544i, u_input.a.x, -2147483647i, -16452i) << (vec4<u32>(u_input.c.x, 45136u, u_input.c.x, 19983u) % vec4<u32>(32u))) >> (u_input.c % vec4<u32>(32u))));
    global3 = countOneBits(u_input.a.x);
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u << (~_wgslsmith_dot_vec4_u32(vec4<u32>(117315u, 0u, u_input.c.x, global0.b), vec4<u32>(global0.c, u_input.c.x, 1u, u_input.c.x)) % 32u), 44115u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec2_u32(~(~u_input.c.wx), ~vec2<u32>(79543u, u_input.c.x)), reverseBits(vec2<u32>(var_4.c, abs(var_4.c))), var_2.x && all(vec2<bool>(var_2.x, false))));
}

