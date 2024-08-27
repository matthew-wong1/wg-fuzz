struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

var<private> global2: f32;

var<private> global3: f32 = -1515f;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    global0 = global1.b.b;
    let var_0 = vec2<i32>(1i, 0i);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-774f * 1564f), arg_2.b.b);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(873f, -390f, 626f, -482f))))) - vec4<f32>(-366f, arg_0.x, _wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(step(var_1.a, -118f))), 1245f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_2);
    return global0.b.x;
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = Struct_4(firstLeadingBit(_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(global1.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-40467i, u_input.d), global1.c.zy)))), global1.b, global1.c);
    return global1.b.b.b.x;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    return select(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, global0.b.x), false), !vec3<bool>(global4.x, global0.b.x, false), vec3<bool>(func_2(vec3<f32>(490f, global0.a, -315f), Struct_4(u_input.c, global1.b, vec4<i32>(arg_0, 0i, 0i, -2147483647i)), Struct_3(global1.b.a, Struct_2(-622f, global1.b.b.b), 0u, u_input.a, global1.b.e), Struct_3(vec2<f32>(global1.b.b.a, -305f), global1.b.b, u_input.b, 0i, vec2<u32>(u_input.b, u_input.b))), func_3(Struct_1(vec3<bool>(global1.b.b.b.x, global0.b.x, false), vec4<f32>(-1441f, -430f, 1583f, global1.b.b.a), 4294967295u)), global4.x)), select(!select(!vec3<bool>(global0.b.x, global0.b.x, false), select(vec3<bool>(global4.x, false, true), vec3<bool>(global4.x, global0.b.x, global4.x), global1.b.b.b.x), true), !select(vec3<bool>(true, true, true), vec3<bool>(global0.b.x, global1.b.b.b.x, false), select(vec3<bool>(global1.b.b.b.x, false, global1.b.b.b.x), vec3<bool>(global1.b.b.b.x, false, global4.x), false)), vec3<bool>(true, global1.b.b.b.x, false)), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> Struct_2 {
    global0 = global1.b.b;
    global3 = _wgslsmith_div_f32(595f, _wgslsmith_f_op_f32(abs(global1.b.a.x)));
    let var_0 = vec3<u32>(global1.b.c ^ ~4294967295u, 59296u, 18479u << ((countOneBits(u_input.b) & _wgslsmith_clamp_u32(74703u, 1u, global1.b.e.x | u_input.b)) % 32u));
    let var_1 = vec2<bool>(false, true);
    global2 = -1431f;
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1404f * global0.a), _wgslsmith_f_op_f32(-885f - global0.a)), _wgslsmith_f_op_f32(sign(-241f)))))), select(global1.b.b.b, select(!arg_0.yz, !(!vec2<bool>(global0.b.x, true)), false), vec2<bool>(false, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(-(u_input.a & -global1.b.d)), global4.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) + -467f), 689f), _wgslsmith_div_f32(var_0.a, -545f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1000f))))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, global1.b.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.a.x, -225f, global0.a))), vec3<f32>(global1.b.a.x, -1932f, _wgslsmith_div_f32(var_0.a, var_0.a))))));
    global2 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(select(1844f, 591f, func_4(func_1(u_input.d), false).b.x)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    let var_3 = Struct_4(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-global1.c.zzy, -global1.c.yyz), _wgslsmith_add_i32(u_input.c, -22530i), _wgslsmith_mod_i32(countOneBits(28074i), ~46290i)), Struct_3(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(min(657f, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.b.a, var_1.yz, global1.b.b.b))))), var_0, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(45405u, global1.b.c), vec2<u32>(39008u, 0u) & global1.b.e), u_input.d, abs(global1.b.e)), _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.c, ~(6226i >> (u_input.b % 32u)), -2147483647i | _wgslsmith_mult_i32(u_input.a, -11424i), _wgslsmith_sub_i32(-u_input.c, max(global1.b.d, global1.a))), abs(~global1.c)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a.x) + _wgslsmith_f_op_f32(select(var_0.a, 1070f, global0.b.x)));
    let var_5 = all(vec4<bool>(any(var_3.b.b.b), true, true, false));
    global1 = Struct_4(-1i, var_3.b, reverseBits(var_3.c) & (var_3.c & vec4<i32>(43789i, -var_3.c.x, firstTrailingBit(u_input.a), var_3.c.x)));
    global0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-850f, var_1.x))), true)), vec2<bool>(!(!global0.b.x), var_2 > _wgslsmith_f_op_f32(trunc(global1.b.b.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_4)), _wgslsmith_f_op_f32(f32(-1f) * -496f))), _wgslsmith_div_f32(var_2, -2447f), func_4(vec3<bool>(global4.x, false, true), global4.x).a) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), var_2, -1363f), vec3<f32>(func_4(vec3<bool>(var_3.b.b.b.x, false, global1.b.b.b.x), global0.b.x).a, _wgslsmith_f_op_f32(-var_2), 173f))), _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(-global1.b.a.x));
}

