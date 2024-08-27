struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<u32, 17>;

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec2<f32> = vec2<f32>(-1411f, -473f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global2 = array<Struct_1, 23>();
    var var_0 = Struct_1(arg_1.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20519u, 17u)], 17u)] ^ ~_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6458u, 17u)], 17u)], ~42962u), 0u);
    let var_1 = -1310f;
    global3 = _wgslsmith_f_op_vec2_f32(arg_1.a.zx + arg_1.a.wy);
    global1 = array<u32, 17>();
    return arg_1.a.x;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_i32(-global0.x & _wgslsmith_sub_i32(14280i, 12855i), -1i, _wgslsmith_sub_i32(global0.x ^ 1i, min(u_input.c, -1i)))) | (global0.x ^ -2147483647i);
    var var_1 = Struct_1(arg_3.a, 0u, select(2242u, select(1u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(29023u, 17u)], 1u), any(vec2<bool>(true, false))), !any(select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    let var_2 = -_wgslsmith_mod_i32(-(i32(-1i) * -1i), u_input.c) >= -8153i;
    let var_3 = 69244u;
    var var_4 = u_input.c;
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(select(reverseBits(arg_1.x), _wgslsmith_sub_u32(0u, arg_3.b), true), ~(~var_1.b)), abs(firstLeadingBit(0u)) ^ u_input.a) >> (countOneBits(114262u) % 32u);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    var var_0 = vec3<bool>(true, !arg_2, true & (852f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * -167f))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, -856f, _wgslsmith_f_op_f32(abs(arg_1.a.x)), _wgslsmith_f_op_f32(-423f * 213f)))), abs(min(0u, ~arg_1.c)) | ~0u, ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 28461u, u_input.b)), select(vec3<u32>(global1[_wgslsmith_index_u32(6799u, 17u)], 4294967295u, 37374u), vec3<u32>(4294967295u, 52011u, arg_0.c), false) | select(vec3<u32>(arg_1.b, 2370u, 3727u), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c, 17u)], 17u)], 53503u), vec3<bool>(false, var_0.x, var_0.x))));
    global0 = vec3<i32>(u_input.c, ~5064i, global0.x);
    global2 = array<Struct_1, 23>();
    global2 = array<Struct_1, 23>();
    return ~1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~(vec2<u32>(35197u & arg_1.b, ~31280u) << (min(~vec2<u32>(1u, arg_0.c), vec2<u32>(0u, 73223u) & vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_mod_u32(abs(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b, ~1u), ~(global1[_wgslsmith_index_u32(4294967295u, 17u)] | 1u))), func_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.a + vec4<f32>(-1148f, 1000f, arg_1.a.x, global3.x)) * arg_1.a), func_4(_wgslsmith_f_op_f32(func_3(false, arg_2)), ~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(66665u, 17u)], arg_0.b), _wgslsmith_f_op_f32(trunc(-434f)), arg_1), ~(~arg_2.b)), arg_1, -1568f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, 1000f, false)), 507f), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, global3.x <= arg_2.a.x, true, true), true)));
    var var_2 = select(!(!vec4<bool>(any(vec3<bool>(true, false, true)), global0.x != global0.x, true, true)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), arg_1.a.x > global3.x), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, false, true, !all(vec3<bool>(false, false, false))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))), select(vec4<bool>((arg_1.a.x < -516f) & true, all(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false), abs(arg_0.b) < (1u >> (global1[_wgslsmith_index_u32(6848u, 17u)] % 32u)))));
    var var_3 = -1000f;
    let var_4 = all(vec4<bool>((arg_0.c | 1u) >= 40464u, _wgslsmith_f_op_f32(-530f + _wgslsmith_f_op_f32(round(arg_2.a.x))) < arg_0.a.x, all(select(var_2.zx, vec2<bool>(false, true), !vec2<bool>(var_2.x, true))), all(vec2<bool>(var_2.x, 1u > var_0.x))));
    return arg_0;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), ~global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(22411u, 17u)], 0u)), 17u)], 30577u);
    var var_1 = vec2<bool>(true, true);
    global2 = array<Struct_1, 23>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 725f, 972f, _wgslsmith_f_op_f32(564f - -233f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(527f)), _wgslsmith_f_op_f32(arg_1.a.x - global3.x), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_div_f32(var_0.a.x, arg_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, global3.x, -988f, global3.x)))))), var_0.c, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(42012u, 1u) >> (vec2<u32>(var_0.c, u_input.a) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(arg_1.b, 1u))), ~(~vec2<u32>(u_input.b, var_0.c)))));
    var_0 = func_2(arg_1, arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-117f, 2760f, -691f, 700f) + var_2.a)) * vec4<f32>(-1454f, arg_1.a.x, _wgslsmith_f_op_f32(floor(global3.x)), -1000f)), arg_1.c, var_2.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) < var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x));
    let var_1 = !select(vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), (10343i <= global0.x) & any(vec2<bool>(true, false))), vec2<bool>(any(vec3<bool>(true, true, true)), func_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, -653f), vec2<f32>(-333f, 1269f)), Struct_1(vec4<f32>(-762f, -1691f, global3.x, global3.x), 0u, u_input.b))), false);
    global1 = array<u32, 17>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) - _wgslsmith_f_op_f32(step(1496f, global3.x)));
    global0 = -(~(vec3<i32>(-10538i, u_input.c, global0.x) | _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.c, global0.x), vec3<i32>(26621i, 24484i, global0.x)))) >> ((vec3<u32>(~0u << (global1[_wgslsmith_index_u32(~4294967295u, 17u)] % 32u), reverseBits(~4294967295u), firstLeadingBit(u_input.b)) << (vec3<u32>(global1[_wgslsmith_index_u32(0u, 17u)], 1364u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.x)), -110f, var_0, -1246f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1335f, var_0, var_0, var_0), vec4<f32>(var_2, -1108f, var_2, var_0)) + vec4<f32>(-1744f, global3.x, var_2, 716f)))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(5157u, u_input.a, 0u) ^ vec3<u32>(1u, 1u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(39389u, 17u)], 24802u, u_input.a) | ~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 17u)], global1[_wgslsmith_index_u32(64265u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34883u, 17u)], 17u)])), 17u)], 4294967295u);
    global3 = _wgslsmith_f_op_vec2_f32(-var_3.a.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_3.a.xx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_3.a.zx, var_3.a.xw), _wgslsmith_f_op_vec2_f32(var_3.a.zw + var_3.a.wy), false)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_3.a.x, -522f, true)), -411f) * vec2<f32>(global3.x, _wgslsmith_f_op_f32(-var_3.a.x))))), ~(~(~u_input.b) ^ var_3.b));
}

