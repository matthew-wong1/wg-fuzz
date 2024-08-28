struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(2902u, 1u, 85331u);

var<private> global1: vec2<f32> = vec2<f32>(-1002f, -1297f);

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = u_input.a.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(727f, global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(-1163f, global1.x)))))), global2[_wgslsmith_index_u32(global0.x, 14u)])));
    global0 = select(vec3<u32>(~6694u, max(~(1u >> (global0.x % 32u)), global0.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1u), ~vec2<u32>(4294967295u, 13157u))), vec3<u32>(global0.x, global0.x, _wgslsmith_mult_u32(57945u, global0.x)), select(vec3<bool>(any(vec3<bool>(false, true, false)), all(vec2<bool>(true, true)), true), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, false), true), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(319f, -511f))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) - vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - vec2<f32>(global1.x, 299f))))))));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-1916f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(213f)) + _wgslsmith_f_op_f32(global1.x - global1.x)))) * _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1 * var_1))))));
    return global0.x ^ _wgslsmith_mod_u32(23249u, global0.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    global1 = arg_3.d.a.yy;
    global0 = select(vec3<u32>(0u, 1u, 96047u) << ((firstTrailingBit(vec3<u32>(arg_2.d.b, 1u, 4294967295u)) << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(16347u, arg_3.b.b, arg_3.b.b), vec3<u32>(14400u, global0.x, 50065u)), vec3<u32>(1u, global0.x, arg_2.b.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(arg_3.b.b, func_3(_wgslsmith_add_i32(~2147483647i, -arg_3.c)), 4294967295u), vec3<bool>(arg_3.a.x, 4294967295u <= (func_3(1i) & _wgslsmith_div_u32(13078u, 13292u)), arg_2.a.x));
    global0 = vec3<u32>(max(arg_3.d.b, arg_3.b.b), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b.b, 1u), vec2<u32>(global0.x, 46702u) & global0.xy)), 14732u) | ~(~countOneBits(firstTrailingBit(vec3<u32>(arg_3.b.b, global0.x, arg_2.b.b))));
    global2 = array<vec2<bool>, 14>();
    var var_0 = -(u_input.a | ~(-(~vec2<i32>(u_input.a.x, -44575i))));
    return vec3<i32>(i32(-1i) * -(~2537i), _wgslsmith_mult_i32(-13969i, min(-41068i, 0i)), ~max(~_wgslsmith_dot_vec2_i32(vec2<i32>(-61149i, arg_3.c), vec2<i32>(0i, u_input.a.x)), 2950i));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = vec3<u32>(global0.x, global0.x, countOneBits(0u));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(951f - global1.x), _wgslsmith_f_op_f32(floor(-1129f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2289f, arg_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1271f, -1567f)))))) + vec2<f32>(_wgslsmith_div_f32(-903f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(458f)) - _wgslsmith_f_op_f32(f32(-1f) * -324f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f * global1.x) - _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-arg_2), !all(vec4<bool>(false, false, true, arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(-arg_1);
    global0 = var_0;
    let var_2 = global0.x;
    return Struct_2(vec3<bool>(_wgslsmith_dot_vec3_i32(func_2(vec4<f32>(308f, arg_2, global1.x, arg_2), vec4<bool>(arg_0.x, true, false, false), Struct_2(arg_0, Struct_1(vec3<f32>(global1.x, arg_2, 1645f), var_0.x), -79161i, Struct_1(vec3<f32>(global1.x, arg_2, 613f), global0.x), arg_0.yz), Struct_2(vec3<bool>(true, arg_0.x, false), Struct_1(vec3<f32>(-756f, -1000f, 1650f), var_0.x), -12351i, Struct_1(vec3<f32>(-464f, 175f, -518f), 1692u), arg_0.xz)), ~vec3<i32>(u_input.a.x, 2147483647i, 1i)) == countOneBits(u_input.b), select(any(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, ~u_input.b == -u_input.a.x), true), Struct_1(vec3<f32>(arg_2, _wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(-505f, global1.x)), 267f), 51798u), select(firstTrailingBit(u_input.b), i32(-1i) * -2147483647i, 0u != _wgslsmith_sub_u32(28396u, firstTrailingBit(global0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1443f, 313f, arg_1))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(483f, global1.x, 654f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-278f, 1396f, arg_2))))), 52934u), select(select(select(vec2<bool>(arg_0.x, false), !global2[_wgslsmith_index_u32(global0.x, 14u)], vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(-1186f != arg_2, arg_0.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.zz, vec2<u32>(var_0.x, var_0.x)), vec2<u32>(98523u, var_0.x)), 14u)]), select(!(!arg_0.xx), !vec2<bool>(false, arg_0.x), any(vec2<bool>(arg_0.x, true))), select(arg_0.xx, !(!global2[_wgslsmith_index_u32(var_0.x, 14u)]), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, 162f) + global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-312f, -678f))))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)));
    var var_1 = func_1(vec3<bool>(all(vec3<bool>(true, all(vec3<bool>(true, true, true)), true)), true, select(true, false, false)), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.x - global1.x))) + -477f)), -699f);
    var var_2 = var_1.c;
    let var_3 = Struct_2(select(!select(select(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.a, var_1.a.x), func_1(vec3<bool>(false, var_1.a.x, true), -302f, -994f).a, func_1(var_1.a, var_0.x, -127f).a), vec3<bool>(!all(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false)), all(!vec3<bool>(true, var_1.a.x, var_1.a.x)), var_1.e.x & select(var_1.a.x, false, var_1.a.x)), func_1(!vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), _wgslsmith_f_op_f32(-431f + func_1(vec3<bool>(var_1.a.x, false, var_1.a.x), var_0.x, 1539f).d.a.x), -940f).a), var_1.d, var_1.c, var_1.b, var_1.a.yz);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_3.d.b, 4294967295u, 4294967295u, 1u));
}

