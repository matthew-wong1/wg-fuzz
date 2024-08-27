struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<f32, 13> = array<f32, 13>(1746f, -1134f, -410f, 2139f, 2698f, 890f, 1211f, -2364f, -1183f, 805f, 1904f, -649f, 954f);

var<private> global2: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec3<f32>) -> bool {
    global1 = array<f32, 13>();
    var var_0 = vec4<i32>(_wgslsmith_clamp_i32(~firstLeadingBit(0i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(3805i, 30241i))) << (reverseBits(~u_input.a) % 32u)), min(21551i, _wgslsmith_sub_i32(0i, ~46825i)), i32(-1i) * -12402i, 0i);
    let var_1 = -389f;
    let var_2 = var_0.wz;
    var var_3 = vec4<bool>(all(vec4<bool>(true, arg_1.x && arg_1.x, arg_1.x & arg_1.x, arg_1.x)) && true, select(!((arg_0.x < var_1) | true), false, false), false, select(false, false, (1i < var_0.x) || false));
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global2 = !any(vec4<bool>(true, true, true, true)) & false;
    global2 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(~arg_2.c.d, 13u)], -1677f, _wgslsmith_f_op_f32(min(-1146f, arg_1.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 13u)])) - _wgslsmith_f_op_f32(-676f + -1443f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, 639f, arg_0.c.a, -641f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1079f, arg_0.c.a, arg_2.c.a, 498f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1604f, global1[_wgslsmith_index_u32(50013u, 13u)], -626f, global1[_wgslsmith_index_u32(arg_0.c.d, 13u)])) * vec4<f32>(1275f, -515f, 1256f, -2073f)))));
    global1 = array<f32, 13>();
    global1 = array<f32, 13>();
    return -8052i;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, ~37966i, firstLeadingBit(-2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(28951i, -14786i, -2147483647i, 2147483647i))), 1i, ~(~func_3(global0[_wgslsmith_index_u32(4294967295u, 26u)], Struct_2(vec2<i32>(34375i, 22516i), Struct_1(-620f, 1i, 0i, u_input.a), Struct_1(global1[_wgslsmith_index_u32(18910u, 13u)], 1i, -36399i, u_input.a), -1i, u_input.a), Struct_2(vec2<i32>(1i, 2147483647i), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 13u)], -1i, -1254i, u_input.a), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 13u)], 2147483647i, 32517i, 2750u), -1i, arg_0.x))), -(~1i)));
    var var_1 = max(0i, var_0.x);
    global2 = all(select(vec4<bool>(!all(arg_2), arg_3, !arg_1.x, any(arg_1) || true), vec4<bool>(select(global1[_wgslsmith_index_u32(7749u, 13u)] > -531f, arg_2.x || arg_2.x, true), arg_1.x, false, !(!arg_3)), vec4<bool>(arg_1.x, true, arg_1.x, !(!arg_3))));
    let var_2 = arg_0;
    var var_3 = vec4<bool>(true, true, (19530u >> (_wgslsmith_clamp_u32(arg_0.x << (arg_0.x % 32u), 4294967295u, _wgslsmith_div_u32(46533u, arg_0.x)) % 32u)) > (_wgslsmith_mod_u32(select(arg_0.x, 4294967295u, arg_2.x), 13148u) & _wgslsmith_mod_u32(48373u, u_input.a)), arg_2.x);
    return global0[_wgslsmith_index_u32(u_input.a, 26u)];
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>) -> vec2<i32> {
    global1 = array<f32, 13>();
    var var_0 = func_2(vec2<u32>(arg_0.b.d, u_input.a), select(vec3<bool>(-1i < ~arg_0.c.c, true | !arg_1, func_1(_wgslsmith_f_op_vec2_f32(min(arg_2.wx, vec2<f32>(-2159f, -585f))), select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a, arg_0.c.a, arg_2.x)))), select(!vec3<bool>(true, arg_1, true), vec3<bool>(any(vec2<bool>(arg_1, true)), any(vec2<bool>(arg_1, true)), arg_1), !arg_1), !(!select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, true, false)))), vec3<bool>(all(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.a, arg_2.x) - 423f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(exp2(arg_2.x))), all(vec2<bool>(true, true)) || !any(vec3<bool>(true, arg_1, arg_1))), select(arg_1 && true, arg_1, true)).c;
    global1 = array<f32, 13>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_0.b.a * 622f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-134f * global1[_wgslsmith_index_u32(0u, 13u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 * arg_2)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1107f)) - arg_2.x) + arg_0.b.a), -619f, arg_2.x, -585f), any(vec2<bool>(true, true)) | any(!select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(true, false, true), arg_1))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(round(-1000f))) + vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(123f * -535f), -2268f))));
    return func_2(vec2<u32>(var_0.d, ~firstLeadingBit(var_0.d)) >> (_wgslsmith_div_vec2_u32(~(~vec2<u32>(20499u, 4861u)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.b.d, u_input.a) ^ vec2<u32>(arg_0.e, 18u), max(vec2<u32>(3551u, 70605u), vec2<u32>(var_0.d, 1u)))) % vec2<u32>(32u)), !vec3<bool>(false, arg_1, false), !select(select(!vec3<bool>(arg_1, arg_1, false), select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_1, true), arg_1), vec3<bool>(arg_1, true, arg_1)), !select(vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true)), select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(true, false, arg_1), vec3<bool>(false, true, false), vec3<bool>(arg_1, arg_1, true)))), true).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!((_wgslsmith_div_f32(-337f, 522f) > _wgslsmith_f_op_f32(-248f + global1[_wgslsmith_index_u32(u_input.a, 13u)])) & !all(vec4<bool>(true, true, false, true))));
    global0 = array<Struct_2, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(1158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]) * _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 13u)], -1691f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f))))), countOneBits(_wgslsmith_mult_i32(-(-45256i >> (1u % 32u)), -1i)), -abs(-_wgslsmith_add_i32(2147483647i, -21666i)), ~(59340u | u_input.a));
    let var_1 = Struct_2(func_4(func_2(~vec2<u32>(1u, 22224u), vec3<bool>(var_0.d != 0u, true, true), vec3<bool>(true, true, true), select(true, func_1(vec2<f32>(-827f, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(true, true), vec3<f32>(global1[_wgslsmith_index_u32(var_0.d, 13u)], 727f, var_0.a)), false)), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], var_0.a, -628f, var_0.a))) - vec4<f32>(var_0.a, var_0.a, var_0.a, -496f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, -546f, -164f, 626f))))), var_0, var_0, _wgslsmith_add_i32((var_0.c & (var_0.c >> (44708u % 32u))) ^ var_0.b, _wgslsmith_add_i32(48593i, _wgslsmith_add_i32(-var_0.b, -17481i))), u_input.a);
    global0 = array<Struct_2, 26>();
    let var_2 = func_2(vec2<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(var_0.d, 1u)), var_0.d), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(-var_1.c.a) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) * _wgslsmith_f_op_f32(f32(-1f) * -870f))))).b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_1.c.c, 1i, 36593i)), -vec3<i32>(var_0.b, var_2.c, 1i)), vec3<i32>(-1i, var_2.c, select(var_2.c, -17610i, false))), -1i, vec4<u32>(abs(24103u), ~(~u_input.a), 16326u << (1u % 32u), ~((0u | var_1.e) ^ ~4294967295u)));
}

