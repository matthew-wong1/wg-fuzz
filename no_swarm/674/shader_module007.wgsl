struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(4294967295u, 24788u), vec3<f32>(803f, -1000f, -514f), false, vec2<i32>(-6965i, -44990i), vec4<bool>(true, true, true, false));

var<private> global2: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), 146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), -1740f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x), 2099f, 1000f), global1.e))));
    var var_1 = firstLeadingBit(max(global1.a.x, global1.a.x ^ _wgslsmith_mod_u32(~global1.a.x, global1.a.x)));
    global2 = array<vec3<bool>, 32>();
    var var_2 = select(!(!select(global1.e, !global1.e, true)), global1.e, -_wgslsmith_sub_i32(-13750i, 18603i) <= (reverseBits(1i) & _wgslsmith_sub_i32(6592i ^ u_input.b.x, 0i)));
    let var_3 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_0 >> (62178u % 32u)), vec2<u32>(arg_0, ~(~73608u)), ~(vec2<u32>(1u, arg_0) | vec2<u32>(0u, arg_0))), _wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)), _wgslsmith_div_f32(global1.b.x, var_0.x))))), true, _wgslsmith_add_vec2_i32(firstTrailingBit(-global1.d << (~global1.a % vec2<u32>(32u))), abs(~vec2<i32>(-1i, 1i))), !vec4<bool>(true, min(24814u, 1u) != ~global1.a.x, all(!vec4<bool>(global1.c, true, var_2.x, global1.e.x)), var_2.x));
    return global1.d;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(max(~vec2<u32>(global1.a.x & global1.a.x, _wgslsmith_sub_u32(3137u, global1.a.x)), _wgslsmith_div_vec2_u32(~vec2<u32>(44075u, global1.a.x), global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.b.x) * global1.b)))), true, u_input.a.yx & -global1.d, vec4<bool>(any(global1.e.xzz), false, false, true));
    let var_1 = -276f;
    var var_2 = Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(60787u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, global1.a.x, 4294967295u, 4294967295u), vec4<u32>(global1.a.x, 4294967295u, 1u, 4294967295u))), (global1.a | vec2<u32>(0u, global1.a.x)) << (select(vec2<u32>(17078u, 25661u), vec2<u32>(108531u, 35121u), global1.e.wz) % vec2<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, var_0.b.x) - var_0.b.x), _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1461f), _wgslsmith_f_op_f32(round(var_0.b.x))), 410f))), global1.c, func_3(global1.a.x), global1.e);
    var var_3 = var_2.b.x;
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(var_2.a), ~_wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(var_0.a.x, 103784u)))), _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(var_2.b)))))), global1.c, vec2<i32>(_wgslsmith_clamp_i32(-8114i ^ _wgslsmith_dot_vec3_i32(u_input.a.zxz, vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x)), 1i, _wgslsmith_add_i32(u_input.a.x, 0i)), var_0.d.x), select(vec4<bool>(var_0.c, any(global1.e.zzy), global1.e.x, all(!var_2.e.ww)), select(select(!vec4<bool>(global1.c, true, true, true), vec4<bool>(true, false, var_0.e.x, var_0.c), var_2.c), select(vec4<bool>(var_2.c, global1.e.x, true, true), global1.e, select(vec4<bool>(false, var_2.c, var_2.c, false), var_2.e, false)), true), global1.e));
    return Struct_1(vec2<u32>(~_wgslsmith_mult_u32(var_4.a.x, var_4.a.x), ~1u) ^ ~max(var_0.a & var_0.a, vec2<u32>(var_2.a.x, global1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -565f) - -897f), -1206f, _wgslsmith_f_op_f32(var_4.b.x + var_2.b.x)), (u_input.a.x >= 2147483647i) & true, ~(-var_2.d | -select(var_0.d, var_2.d, var_4.e.x)), vec4<bool>(all(vec2<bool>(any(var_4.e), select(true, var_4.c, true))), true, var_4.c, var_4.e.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = arg_0.a.x;
    var var_0 = Struct_1(~arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 1f, 132f) * vec3<f32>(_wgslsmith_f_op_f32(trunc(-693f)), 1144f, _wgslsmith_f_op_f32(-arg_0.b.x)))), true, arg_0.d, global1.e);
    var var_1 = max(firstTrailingBit(~abs(countOneBits(vec4<u32>(global1.a.x, 26970u, 11u, 4294967295u)))), select(select(~vec4<u32>(var_0.a.x, arg_1.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, var_0.a.x) & ~vec4<u32>(arg_0.a.x, 1u, global1.a.x, arg_1.a.x), select(1u > var_0.a.x, true, var_0.e.x)), _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 23607u, arg_0.a.x, arg_1.a.x), vec4<u32>(22212u, 1u, global1.a.x, 1u)), max(countOneBits(vec4<u32>(30441u, var_0.a.x, 4294967295u, 41220u)), vec4<u32>(33017u, 0u, 0u, global1.a.x)), (vec4<u32>(arg_0.a.x, 4294967295u, arg_1.a.x, arg_1.a.x) & vec4<u32>(1u, 27702u, 1u, global1.a.x)) | min(vec4<u32>(55364u, 69312u, 47778u, arg_0.a.x), vec4<u32>(1u, 4294967295u, 0u, arg_1.a.x))), select(all(select(vec2<bool>(true, false), global1.e.xx, vec2<bool>(true, false))), false, false)));
    let var_2 = Struct_1(max(vec2<u32>(4294967295u & var_1.x, 1u), select(vec2<u32>(arg_1.a.x, arg_0.a.x), vec2<u32>(38587u, var_1.x), arg_1.e.xy) ^ vec2<u32>(14265u, 1u)) & func_2().a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.x, var_0.b.x, _wgslsmith_f_op_f32(max(global1.b.x, 1553f)))))), !(!any(!vec3<bool>(arg_1.c, false, var_0.e.x))), ~_wgslsmith_sub_vec2_i32(-(~u_input.a.wx), arg_0.d), arg_0.e);
    global2 = array<vec3<bool>, 32>();
    return _wgslsmith_sub_i32(12036i, i32(-1i) * -2147483647i);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(12446u, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, 0u, 0u))), 1u & select(~global1.a.x, _wgslsmith_div_u32(global1.a.x, global1.a.x), global1.c)), global1.b, _wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_dot_vec3_i32(-u_input.a.zyz, vec3<i32>(global1.d.x, -2990i, 0i)), u_input.c) < func_4(func_2(), Struct_1(firstLeadingBit(vec2<u32>(global1.a.x, 1u)), _wgslsmith_f_op_vec3_f32(abs(global1.b)), u_input.a.x >= -2147483647i, u_input.b, global1.e)), vec2<i32>(~(~u_input.c), func_2().d.x >> (~global1.a.x % 32u)), !vec4<bool>(func_2().c, true, select(any(global1.e), !global1.c, global1.e.x), any(!vec4<bool>(global1.c, global1.c, global1.c, false))));
    global1 = func_2();
    global0 = 4715u;
    var var_1 = vec3<bool>(true, !all(global2[_wgslsmith_index_u32(4294967295u, 32u)]), global1.e.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(264f)), _wgslsmith_f_op_f32(-var_0.b.x), 1658f, _wgslsmith_div_f32(var_0.b.x, -1749f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1f), global1.b.x, var_0.b.x, 963f)))));
    return Struct_1(vec2<u32>(~4294967295u, ~(var_0.a.x | 0u) | _wgslsmith_sub_u32(_wgslsmith_mult_u32(26191u, 65958u), 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_2().b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, 361f, 1387f), var_2.zyz)), var_0.e.x))), true, min(firstTrailingBit(vec2<i32>(i32(-1i) * -1i, 23359i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i >> (0u % 32u)), global1.d)), !vec4<bool>(any(var_1.zy), true && any(vec3<bool>(var_1.x, true, var_0.e.x)), false, var_1.x));
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 4294967295u), global1.a.x), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a.x, 4915u), vec2<u32>(4294967295u, global1.a.x))), arg_0.b, arg_0.c, -vec2<i32>(1i, -(329i >> (0u % 32u))), !global1.e);
    global2 = array<vec3<bool>, 32>();
    var var_1 = ~max(~(~u_input.a.zyy ^ ~u_input.a.zyz), ~u_input.a.wzw);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * arg_0.b.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b.xz + vec2<f32>(364f, -1000f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, var_2) + _wgslsmith_f_op_vec2_f32(-var_0.b.yx))));
    return _wgslsmith_sub_u32(~(~0u), func_1().a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 5665u;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b.x)) + global1.b.x))) - vec3<f32>(_wgslsmith_f_op_f32(min(global1.b.x, -1000f)), _wgslsmith_f_op_f32(floor(global1.b.x)), global1.b.x));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - _wgslsmith_f_op_f32(ceil(var_0.x)))) + global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) * -143f)))), var_0.x);
    global2 = array<vec3<bool>, 32>();
    var_1 = _wgslsmith_f_op_vec3_f32(-var_0);
    var var_2 = vec2<u32>(func_5(func_1()), ~_wgslsmith_add_u32(~global1.a.x, 0u));
    var var_3 = max(_wgslsmith_clamp_vec3_u32(vec3<u32>(40365u, var_2.x, 4294967295u), (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.x, 1u, 4294967295u), vec3<u32>(var_2.x, var_2.x, var_2.x)) >> ((vec3<u32>(0u, var_2.x, global1.a.x) & vec3<u32>(global1.a.x, 74902u, 64999u)) % vec3<u32>(32u))) >> (vec3<u32>(~80115u, ~global1.a.x, ~4294967295u) % vec3<u32>(32u)), max(~vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(var_2.x, 0u, global1.a.x)) << (((vec3<u32>(var_2.x, var_2.x, var_2.x) & vec3<u32>(global1.a.x, var_2.x, global1.a.x)) & countOneBits(vec3<u32>(48189u, global1.a.x, global1.a.x))) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global1.a.x, 1u), ~vec3<u32>(var_2.x, global1.a.x, 1u)) & max(vec3<u32>(0u, 9457u, 37828u), ~vec3<u32>(var_2.x, 18890u, global1.a.x)), vec3<u32>(~global1.a.x, 4294967295u, var_2.x) >> (vec3<u32>(5497u & var_2.x, ~var_2.x, _wgslsmith_mult_u32(var_2.x, global1.a.x)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x >> (_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -374f)))), 1000f, 4294967295u & _wgslsmith_dot_vec4_u32(vec4<u32>(max(14227u, var_3.x), var_2.x >> (4450u % 32u), global1.a.x, ~global1.a.x), ~(~vec4<u32>(0u, var_2.x, 51305u, 1u))));
}

