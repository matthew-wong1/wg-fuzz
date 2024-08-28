struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(1470f, 1193f, 989f), vec3<f32>(-632f, -581f, 438f), vec3<f32>(-1172f, 753f, -838f), vec3<f32>(426f, -179f, -838f), vec3<f32>(1809f, 331f, 965f));

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<Struct_1, 24>;

var<private> global4: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = Struct_1(true, vec4<bool>(any(vec3<bool>(!arg_1, true, !arg_1)), false, arg_1, arg_1), !select(vec3<bool>(true, !arg_1, true), vec3<bool>(all(vec4<bool>(arg_1, true, true, arg_1)), any(vec4<bool>(false, arg_1, false, arg_1)), arg_1), arg_1), !any(select(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(arg_1, true, false), true)), vec4<f32>(-1226f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(376f, arg_0.x)), 135f))));
    global3 = array<Struct_1, 24>();
    return vec4<i32>(u_input.a & _wgslsmith_dot_vec4_i32(max(max(vec4<i32>(31348i, 1i, 2147483647i, u_input.a), vec4<i32>(-1i, u_input.a, u_input.a, 0i)), -vec4<i32>(u_input.a, 991i, u_input.a, u_input.a)), -countOneBits(vec4<i32>(u_input.a, 9206i, 54337i, u_input.a))), 1i, u_input.a, u_input.a);
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = true;
    global1 = array<vec3<f32>, 5>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_2 = Struct_1(var_0, vec4<bool>(!var_0, true, true, select(!all(vec4<bool>(var_0, var_0, true, false)), var_0, var_0)), vec3<bool>(true, !(any(vec2<bool>(false, false)) || var_0), !(!var_0)), false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-862f)), _wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_f_op_f32(-416f + arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 1412f, -1961f, 342f) * vec4<f32>(arg_0.a, arg_0.a, -1261f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 178f))))))));
    var var_3 = arg_0;
    return vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(func_3(_wgslsmith_f_op_vec2_f32(var_2.e.zy + vec2<f32>(var_3.a, var_3.a)), !var_0, vec2<f32>(-592f, arg_0.a)), reverseBits(~vec4<i32>(u_input.a, 0i, u_input.a, 45772i))) | (28891i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(39787u, 13211u), vec2<u32>(27376u, 1u)) % 32u)), _wgslsmith_add_i32(u_input.a | -(~(-19671i)), 2147483647i), select(_wgslsmith_mod_i32(func_3(_wgslsmith_f_op_vec2_f32(var_2.e.xx * vec2<f32>(1000f, 626f)), var_2.d, _wgslsmith_f_op_vec2_f32(var_2.e.zx + var_2.e.yy)).x, _wgslsmith_add_i32(u_input.a >> (1u % 32u), 1i)), u_input.a, all(select(vec3<bool>(true, var_2.a, var_2.b.x), !vec3<bool>(true, var_0, var_0), vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    global2 = array<Struct_2, 16>();
    global3 = array<Struct_1, 24>();
    global0 = array<vec3<u32>, 5>();
    var var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    return Struct_2(_wgslsmith_f_op_f32(arg_2.a - -1000f));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<u32>) -> Struct_1 {
    global1 = array<vec3<f32>, 5>();
    let var_0 = func_4(Struct_2(294f), ~func_2(global2[_wgslsmith_index_u32(arg_2.x & 1u, 16u)]) >> (arg_2 % vec4<u32>(32u)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_div_f32(141f, 375f))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(-448f)));
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-8505i, -40i), 33321i, u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a & u_input.a)), vec4<i32>(2147483647i, u_input.a, 0i, u_input.a)), select(abs(vec4<i32>(u_input.a, -2147483647i, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_div_vec4_i32(func_2(func_4(global2[_wgslsmith_index_u32(25339u, 16u)], vec4<i32>(u_input.a, -23609i, 1i, u_input.a), var_0)), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -4579i, -1i, u_input.a), vec4<i32>(8480i, u_input.a, 36972i, -19057i))), vec4<bool>(true, true, true, true)));
    let var_3 = arg_0;
    return Struct_1(!arg_0 | false, !vec4<bool>(false, !all(vec4<bool>(var_3, true, arg_1.x, arg_0)), -1i < _wgslsmith_dot_vec3_i32(var_2.yxw, var_2.zxw), true), select(vec3<bool>(arg_0, arg_0 && arg_1.x, var_3), !(!vec3<bool>(arg_0, false, arg_0)), false), select(arg_1.x, all(vec4<bool>(arg_1.x, arg_0, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, var_3, arg_1.x)))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_1.a, var_0.a, var_1.a) * vec4<f32>(var_0.a, var_0.a, 542f, var_1.a)), vec4<f32>(195f, var_0.a, -1476f, 841f)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(global2[_wgslsmith_index_u32(~(~1u), 16u)]).xxx;
    var var_1 = select(~(max(select(vec2<i32>(-3058i, u_input.a), vec2<i32>(40086i, 2147483647i), arg_1.b.x), ~vec2<i32>(u_input.a, 1i)) << (vec2<u32>(~43817u, _wgslsmith_dot_vec2_u32(vec2<u32>(42026u, 4294967295u), vec2<u32>(6453u, 0u))) % vec2<u32>(32u))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.e.wx, vec2<f32>(arg_2.a, arg_1.e.x)) - vec2<f32>(-924f, -478f))), true, arg_1.e.wy).yz, false);
    var_1 = var_0.zz;
    global3 = array<Struct_1, 24>();
    var var_2 = !func_1(!all(vec2<bool>(arg_1.d, false)) && arg_1.c.x, func_1(false, func_1(true, vec2<bool>(false, false), ~vec4<u32>(1u, 20684u, 1u, 97093u)).b.xz, ~select(vec4<u32>(4294967295u, 4294967295u, 40831u, 28439u), vec4<u32>(4294967295u, 61319u, 0u, 54216u), true)).c.yx, max(vec4<u32>(~0u, select(0u, 8738u, arg_1.c.x), 4294967295u, countOneBits(0u)), firstLeadingBit(max(vec4<u32>(3859u, 39876u, 66653u, 688u), vec4<u32>(0u, 0u, 15970u, 29043u))))).c.xz;
    return func_4(Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1977f)))))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(17409i, var_0.x, 20453i, var_0.x), abs(vec4<i32>(21541i, 1i, -6009i, u_input.a))), ~(~vec4<i32>(2147483647i, u_input.a, -1i, -12996i))) << (min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_sub_u32(48292u, 1u), 114683u, _wgslsmith_clamp_u32(1u, 0u, 4294967295u), 0u)) % vec4<u32>(32u)), arg_0);
}

fn func_6(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_sub_vec4_i32(select(select(vec4<i32>(u_input.a, u_input.a, -132851i, -19877i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(~u_input.a, 22571i & u_input.a, ~2147483647i, min(u_input.a, u_input.a)), true), countOneBits(-(~vec4<i32>(u_input.a, 56282i, -15262i, u_input.a))), func_1(!arg_0.x, select(arg_0.xz, func_1(arg_1, vec2<bool>(arg_1, false), vec4<u32>(105515u, 63109u, 4463u, 22230u)).c.yx, u_input.a <= 2147483647i), ~(~vec4<u32>(0u, 7316u, 1u, 37069u))).b), _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(u_input.a, 1i), u_input.a | -47618i, u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 2147483647i, u_input.a, u_input.a) & min(vec4<i32>(1i, -1i, u_input.a, u_input.a), vec4<i32>(2745i, -16607i, 2147483647i, u_input.a)), countOneBits(vec4<i32>(0i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-9112i, -1i, 0i, u_input.a)), vec4<i32>(countOneBits(u_input.a), -u_input.a, 0i, countOneBits(u_input.a)))));
    var var_1 = -1i;
    let var_2 = global3[_wgslsmith_index_u32(1u, 24u)];
    var var_3 = var_0.wz;
    return 1i > _wgslsmith_mult_i32(-13459i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(select(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a)), min(reverseBits(-u_input.a), reverseBits(16340i)), func_6(vec3<bool>(true, any(vec3<bool>(true, true, false)), true), true, global2[_wgslsmith_index_u32(1u, 16u)], func_5(Struct_2(2173f), func_1(true, vec2<bool>(true, false), vec4<u32>(1u, 4294967295u, 8635u, 40094u)), Struct_2(-417f)))), reverseBits(u_input.a) & u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_u32(vec2<u32>(35358u, 73115u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u))), _wgslsmith_mod_u32(24787u, 12715u)) & _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(31816u, 4294967295u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(54143u, 0u), vec2<u32>(0u, 1u))), ~(~(~vec4<u32>(4294967295u, 4294967295u, 46456u, 81846u))) ^ vec4<u32>(60568u, ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(15946u, 5u)]), 12756u, ~firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(66417u, 1u, 104829u), 5u)]))), global1[_wgslsmith_index_u32(1u, 5u)], true)));
}

