struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(1u, 1u));

var<private> global1: vec2<u32>;

var<private> global2: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = global2.a.e.zzx;
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global2 = Struct_2(global2.a);
    var_1 = -793f;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2188f + global2.a.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1516f);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    global0 = array<vec2<u32>, 1>();
    global2 = Struct_2(global2.a);
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.e.x) * _wgslsmith_f_op_f32(sign(-227f))), -1046f)), global2.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-776f * _wgslsmith_f_op_f32(step(-471f, 442f))) + _wgslsmith_f_op_f32(func_2(-2286f >= global2.a.e.x, select(global2.a.c.xw, vec2<i32>(u_input.a.x, u_input.a.x), arg_0), _wgslsmith_f_op_vec2_f32(-global2.a.e.zz)))), 1537f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(327f, arg_1.e.x)) - _wgslsmith_f_op_f32(306f * 2142f)), -346f, _wgslsmith_f_op_f32(-320f + 161f), global2.a.b.x) * _wgslsmith_f_op_vec4_f32(floor(global2.a.a))), _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_clamp_i32(23370i, 14236i, -14070i), 32524i, u_input.a.x, 22531i), ~max(-vec4<i32>(2147483647i, global2.a.c.x, 0i, u_input.a.x), firstLeadingBit(vec4<i32>(arg_1.c.x, -17116i, -1i, arg_1.c.x)))), vec4<u32>(arg_1.d.x, firstTrailingBit(_wgslsmith_dot_vec3_u32(~global2.a.d.xyw, vec3<u32>(0u, 1u, 6885u) ^ arg_1.d.ywz)), global1.x, max(39370u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true, u_input.a, vec2<f32>(global2.a.e.x, -1125f))), _wgslsmith_f_op_f32(536f + -134f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.e.x))), -284f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(934f + -1093f) + global2.a.a.x)))));
    let var_1 = Struct_2(arg_1);
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(var_1.a.d.x), 1u)];
    return var_1.a.c;
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = countOneBits(abs(global1.x)) >> ((global1.x | 0u) % 32u);
    global0 = array<vec2<u32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(select(!select(false, true, arg_0), select(global1.x > global2.a.d.x, all(vec4<bool>(true, false, arg_0, true)), select(arg_0, true, arg_0)), arg_0), vec2<i32>(u_input.a.x, ~firstTrailingBit(0i)), global2.a.a.xx))));
    global0 = array<vec2<u32>, 1>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_0, global2.a.c.yz, vec2<f32>(var_1, global2.a.a.x))), _wgslsmith_f_op_f32(func_2(arg_0, global2.a.c.xz, global2.a.a.zy)), global2.a.a.x, 586f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.e * vec4<f32>(var_1, global2.a.e.x, var_1, var_1)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2.a.a, vec4<f32>(-1051f, 394f, 2477f, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, -142f, 1000f, -222f))), -func_3(202f >= var_1, global2.a), global2.a.d | firstLeadingBit(abs(vec4<u32>(global2.a.d.x, global2.a.d.x, 7880u, global1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, global2.a.a.x, global2.a.a.x, var_1))) * _wgslsmith_f_op_vec4_f32(exp2(global2.a.a)))));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a.e * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.a.b + global2.a.e)))), var_2.a.b, -(~var_2.a.c & min(var_2.a.c, vec4<i32>(-51232i, 1i, 44506i, 927i))), var_2.a.d, vec4<f32>(_wgslsmith_f_op_f32(-var_1), global2.a.b.x, -1782f, -608f)), vec3<bool>(global2.a.d.x < ~(~2065u), true, false));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_1(!any(arg_1.b.zz)).b.x;
    global0 = array<vec2<u32>, 1>();
    var var_1 = 41404u;
    let var_2 = 25133u < _wgslsmith_div_u32(1u, global2.a.d.x);
    let var_3 = func_1(any(vec3<bool>(true, true, true))).a;
    return func_1(all(select(select(vec4<bool>(var_2, var_0, var_0, false), select(vec4<bool>(arg_1.b.x, true, false, true), vec4<bool>(var_2, arg_1.b.x, arg_1.b.x, arg_1.b.x), var_2), vec4<bool>(arg_1.b.x, arg_3.b.x, var_0, true)), select(vec4<bool>(false, arg_1.b.x, true, arg_1.b.x), select(vec4<bool>(arg_3.b.x, true, var_0, var_2), vec4<bool>(false, true, var_0, false), var_2), any(arg_1.b)), vec4<bool>(all(vec4<bool>(arg_3.b.x, false, false, arg_1.b.x)), true & var_2, false, true)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_3(func_4(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), vec2<i32>(global2.a.c.x, global2.a.c.x)), -vec2<i32>(global2.a.c.x, 2147483647i)), 2147483647i >> (_wgslsmith_sub_u32(global1.x, global2.a.d.x) % 32u)), func_1(false), func_1(true).a, func_1(select(!var_0, all(vec3<bool>(var_0, true, var_0)), all(vec2<bool>(false, var_0))))), !(!vec3<bool>(4294967295u == global2.a.d.x, var_0, var_0)));
    let var_2 = vec4<i32>(abs(-2147483647i ^ -global2.a.c.x), -u_input.a.x, select(~func_3(select(false, true, var_1.b.x), var_1.a).x, max(var_1.a.c.x, var_1.a.c.x), var_1.b.x), -716i & -(u_input.a.x | global2.a.c.x));
    let var_3 = var_2;
    global0 = array<vec2<u32>, 1>();
    var var_4 = -1018f;
    global0 = array<vec2<u32>, 1>();
    global0 = array<vec2<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a.wx, min(max(global2.a.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a.c.x, -29188i), vec3<i32>(u_input.a.x, global2.a.c.x, 1i))), var_3.x) << ((global2.a.d.x >> (~min(global1.x, 64325u) % 32u)) % 32u), ~countOneBits(reverseBits(global0[_wgslsmith_index_u32(reverseBits(global1.x), 1u)])), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.a.x, _wgslsmith_f_op_f32(var_1.a.e.x - global2.a.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.a.x), var_1.a.a.x), _wgslsmith_f_op_f32(sign(-523f))))), vec4<i32>(var_2.x, var_1.a.c.x, -(~3563i), -(~var_1.a.c.x)) & global2.a.c);
}

