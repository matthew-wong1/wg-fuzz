struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: vec2<f32> = vec2<f32>(-509f, 251f);

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    global2 = array<vec3<f32>, 14>();
    let var_0 = arg_1;
    var var_1 = !vec2<bool>(arg_2.c, !any(vec3<bool>(true, true, true)));
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(905f * -469f))) + _wgslsmith_f_op_f32(-global0.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-147f * global0.x)), _wgslsmith_div_f32(-455f, -427f)), Struct_1(_wgslsmith_mod_i32(arg_2.a, reverseBits(global1.b.a & arg_2.a)), global1.b.b, !(~0u > global1.b.b.x)));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a), Struct_1(i32(-1i) * -(~global1.b.a), select(arg_0 << (global1.b.b % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(arg_0, arg_2.b, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_2.b.x, 1u, 25753u), vec4<u32>(0u, global1.b.b.x, global1.b.b.x, arg_2.b.x))), select(!vec4<bool>(false, arg_2.c, arg_2.c, false), vec4<bool>(global1.b.c, true, true, true), select(vec4<bool>(global1.b.c, var_1.x, true, false), vec4<bool>(false, false, false, var_1.x), global1.b.c))), 4294967295u < ~_wgslsmith_dot_vec2_u32(vec2<u32>(1321u, 100739u), vec2<u32>(arg_2.b.x, arg_2.b.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))), arg_1);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1508f), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.b.b, 146f, global1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x))), 1562f), global1.b);
    let var_1 = Struct_1(i32(-1i) * -2213i, firstTrailingBit(~var_0.b.b), !all(!(!vec3<bool>(false, global1.b.c, false))));
    global0 = global1.a.wx;
    var var_2 = Struct_2(vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-623f, -244f)))), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global1.a.x) + _wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-856f - var_0.a.x))))), Struct_1(-(~(-37073i)), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(4294967295u, var_1.b.x), ~40201u, _wgslsmith_mod_u32(global1.b.b.x, var_1.b.x), u_input.b.x ^ var_1.b.x), global1.b.b), any(select(vec3<bool>(true, false, var_0.b.c), vec3<bool>(false, false, var_0.b.c), vec3<bool>(false, true, var_1.c))) != var_0.b.c));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(abs(-countOneBits(2147483647i)), -20525i, -1i, var_2.b.a), ~max(vec4<i32>(global1.b.a, var_1.a, u_input.a, 0i) << (~vec4<u32>(49856u, 50666u, 1u, global1.b.b.x) % vec4<u32>(32u)), ~vec4<i32>(var_0.b.a, -7001i, 68369i, 1i)));
    return !select(!vec2<bool>(var_1.c, true), select(!select(vec2<bool>(true, global1.b.c), vec2<bool>(false, true), var_2.b.c), select(!vec2<bool>(global1.b.c, var_2.b.c), select(vec2<bool>(var_2.b.c, var_2.b.c), vec2<bool>(var_1.c, var_2.b.c), vec2<bool>(global1.b.c, true)), any(vec2<bool>(var_1.c, global1.b.c))), all(select(vec4<bool>(var_1.c, var_0.b.c, var_2.b.c, var_1.c), vec4<bool>(global1.b.c, false, false, true), true))), _wgslsmith_clamp_i32(0i, 0i, var_0.b.a) <= abs(~var_0.b.a));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = all(select(vec3<bool>(global1.b.c, true, func_2().x), vec3<bool>(true, arg_1.x, true), !func_2().x));
    global0 = global1.a.xx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-844f)), -719f)))));
    var var_2 = arg_1.yw;
    var var_3 = ~(abs(-vec4<i32>(global1.b.a, global1.b.a, global1.b.a, 1i)) | firstLeadingBit(vec4<i32>(countOneBits(global1.b.a), _wgslsmith_mod_i32(1i, -48924i), -2147483647i, _wgslsmith_add_i32(u_input.a, 7626i))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1932f, global0.x, _wgslsmith_f_op_f32(-global0.x), -777f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(-1329f, 1735f, arg_0.x, -115f)) - global1.a)), (1u >= arg_3) != arg_1.x)), global1.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    global2 = array<vec3<f32>, 14>();
    var var_0 = global0.x;
    let var_1 = func_4(vec3<f32>(-503f, 611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(188f))) * _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)))), vec4<bool>(any(vec2<bool>(true, true)), false, any(select(vec2<bool>(false, global1.b.c), func_2(), func_2())), all(select(select(vec4<bool>(true, global1.b.c, global1.b.c, arg_1), vec4<bool>(global1.b.c, true, false, global1.b.c), vec4<bool>(true, false, false, false)), select(vec4<bool>(global1.b.c, arg_1, arg_1, true), vec4<bool>(true, false, global1.b.c, true), false), vec4<bool>(true, false, global1.b.c, global1.b.c)))), vec2<u32>(min(u_input.b.x, 8858u), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(global1.b.b, global1.b.b)), _wgslsmith_sub_u32(1u, 1u))), global1.b.b.x);
    var var_2 = Struct_1(global1.b.a, ~abs(global1.b.b), arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, var_1.a.x)) * _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_div_f32(497f, _wgslsmith_f_op_f32(ceil(var_1.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1178f))) + global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(-24236i, u_input.c), false, global1.a.wy)))) * -1000f));
    let var_0 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a.x, global1.a.x)))) < 205f, global1.b.c);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(global1.a + global1.a), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(69823u, 14u)] * vec3<f32>(447f, global0.x, global0.x)))), !(!select(vec4<bool>(var_0.x, global1.b.c, global1.b.c, global1.b.c), vec4<bool>(false, false, true, var_0.x), vec4<bool>(false, false, false, true))), global1.b.b.zz, global1.b.b.x).b);
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f - _wgslsmith_f_op_f32(-global0.x))), 1122f));
    global0 = vec2<f32>(-958f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1210f), -308f)));
    let x = u_input.a;
    s_output = StorageBuffer(min((firstTrailingBit(-1i) >> (1u % 32u)) << (43320u % 32u), global1.b.a));
}

