struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: u32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(-129f, 201f, 1323f, -394f), vec4<f32>(1000f, -1840f, 1091f, 950f), vec4<f32>(-1000f, -2089f, -291f, -444f), vec4<f32>(-315f, -387f, -1071f, -165f), vec4<f32>(420f, -258f, 509f, 795f), vec4<f32>(753f, -1137f, 1000f, -1030f));

var<private> global1: array<f32, 7> = array<f32, 7>(-871f, -493f, 889f, -746f, -2368f, -1054f, 1203f);

var<private> global2: Struct_3;

var<private> global3: i32 = 1i;

var<private> global4: Struct_4;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> vec3<i32> {
    global3 = global4.a.x;
    global2 = global4.d;
    global2 = global4.d;
    global1 = array<f32, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.c.b.zw * vec2<f32>(-861f, 279f)));
    return -firstLeadingBit(global4.c);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = arg_0.c.b;
    let var_1 = (func_3(vec4<bool>(any(arg_1.zx), false || arg_2.x, u_input.a == 28085i, false), select(false, !global2.b.c.a, arg_2.x)) ^ ~firstLeadingBit(~vec3<i32>(-9734i, -33240i, -2147483647i))) & vec3<i32>(-44731i, u_input.a, u_input.a);
    let var_2 = vec4<f32>(var_0.x, 435f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(490f, -1232f, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1978f - 1330f) + _wgslsmith_f_op_f32(-219f * 1280f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.b.x - global4.d.a.b.x)))), true)), var_0.x);
    return global4.d;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global1 = array<f32, 7>();
    global3 = global4.c.x ^ -_wgslsmith_dot_vec2_i32((global4.a & global4.c.zx) ^ vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(global4.a, reverseBits(global4.c.yx)));
    global2 = global4.d;
    let var_0 = func_2(global2.b, vec4<bool>(true, true, false, true), !select(!(!vec4<bool>(false, global2.b.b.x, true, false)), !vec4<bool>(global2.c.b.x, arg_0.x, global4.d.c.e.x, true), vec4<bool>(false, true, true, !global2.a.a)));
    var var_1 = func_2(global4.d.c, !select(vec4<bool>(!arg_0.x, arg_0.x, !var_0.a.a, false), select(select(vec4<bool>(true, global4.d.c.e.x, var_0.a.a, true), vec4<bool>(arg_0.x, global2.b.b.x, false, global2.a.a), global4.d.a.a), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, var_0.a.a), true), vec4<bool>(false, false, false, global4.d.c.c.a)), !select(vec4<bool>(global4.d.a.a, false, false, true), vec4<bool>(arg_0.x, true, false, false), global2.b.b.x)), select(!vec4<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(arg_0.x, false, true)), global2.a.a, true || global4.d.a.a), select(!select(vec4<bool>(var_0.c.b.x, global2.a.a, global4.d.a.a, false), vec4<bool>(false, true, false, var_0.a.a), var_0.b.b.x), vec4<bool>(all(vec3<bool>(true, global4.d.b.e.x, arg_0.x)), -638f != global2.b.c.b.x, false, arg_0.x), false), select(!select(vec4<bool>(true, var_0.a.a, arg_0.x, global4.d.b.c.a), vec4<bool>(false, var_0.c.b.x, arg_0.x, false), false), vec4<bool>(u_input.c == global2.b.a, all(global2.c.e), select(arg_0.x, global4.d.a.a, arg_0.x), global2.b.c.a), vec4<bool>(u_input.a == 7463i, all(vec3<bool>(false, true, false)), true, global4.d.c.b.x))));
    return _wgslsmith_mult_i32(u_input.a, ~(-1i));
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = any(vec2<bool>(!(!any(global2.c.e)), global2.b.c.a));
    let var_1 = ~reverseBits(_wgslsmith_div_u32(global2.c.a, 0u));
    let var_2 = func_2(global4.d.b, !vec4<bool>(!func_2(Struct_2(global2.b.a, vec3<bool>(global4.d.a.a, global4.d.a.a, global4.d.b.b.x), Struct_1(true, vec4<f32>(global1[_wgslsmith_index_u32(63298u, 7u)], -1049f, global2.b.c.b.x, global2.a.b.x)), 8370u, vec2<bool>(false, global4.d.b.c.a)), vec4<bool>(global4.d.a.a, global4.d.a.a, false, true), vec4<bool>(global4.d.c.e.x, global4.d.b.e.x, global2.b.c.a, false)).c.e.x, global2.c.b.x, global2.a.a, false), !(!(!(!vec4<bool>(true, global4.d.c.b.x, global2.b.e.x, true)))));
    let var_3 = 1327f;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(global4.d.c.c.b)) - _wgslsmith_f_op_vec4_f32(-var_2.a.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global2.c.d, 7u)]))), _wgslsmith_f_op_f32(global4.d.c.c.b.x * _wgslsmith_f_op_f32(step(global2.c.c.b.x, var_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.c.c.b.x, 1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_3, var_3))))), select(!vec4<bool>(var_2.b.b.x, var_2.b.c.a, false, false), vec4<bool>(global2.a.a, all(global2.b.b), var_2.c.e.x, true), all(!global4.d.b.e))))));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_4(func_1(vec3<bool>(!global4.d.a.a, true && global2.a.a, global2.b.e.x)) << (abs(firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 77181u))) % 32u)));
    let var_1 = func_2(func_2(Struct_2(4294967295u, vec3<bool>(func_2(Struct_2(global4.d.b.a, global4.d.b.b, Struct_1(global2.a.a, vec4<f32>(1865f, -1659f, global2.d.x, global2.d.x)), 13934u, global4.d.b.b.xy), vec4<bool>(true, true, global2.a.a, global4.d.a.a), vec4<bool>(false, global4.d.b.c.a, false, global4.d.c.b.x)).a.a, true, all(vec3<bool>(global2.c.c.a, false, global4.d.b.e.x))), func_2(global4.d.c, select(vec4<bool>(global2.a.a, false, global4.d.a.a, global2.b.b.x), vec4<bool>(global4.d.b.e.x, global2.c.e.x, global4.d.c.e.x, global2.c.c.a), global4.d.c.b.x), select(vec4<bool>(global2.c.e.x, false, true, global4.d.a.a), vec4<bool>(global4.d.a.a, global4.d.c.e.x, false, global4.d.c.c.a), vec4<bool>(global4.d.a.a, global2.b.c.a, global4.d.b.e.x, global2.a.a))).b.c, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 237u), vec2<u32>(4294967295u, 1u), vec2<u32>(global4.b, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, global2.b.d), vec2<u32>(global2.b.a, global2.b.a))), global4.d.c.e), select(select(vec4<bool>(true, global2.b.e.x, global2.c.e.x, global4.d.c.c.a), vec4<bool>(true, global4.d.a.a, global2.c.b.x, true), global2.a.a), vec4<bool>(all(vec4<bool>(global4.d.a.a, global2.a.a, false, true)), global4.d.b.b.x, global4.d.a.a, true || global2.c.b.x), select(select(vec4<bool>(true, global2.c.e.x, global2.b.c.a, false), vec4<bool>(false, true, false, global4.d.a.a), true), select(vec4<bool>(true, global2.b.e.x, true, true), vec4<bool>(global2.b.b.x, false, false, true), vec4<bool>(global4.d.c.e.x, true, true, global4.d.a.a)), !vec4<bool>(global2.a.a, false, true, global2.b.b.x))), select(!vec4<bool>(global4.d.c.c.a, global2.a.a, global4.d.a.a, global2.a.a), select(!vec4<bool>(global4.d.b.e.x, global4.d.a.a, true, global2.b.e.x), select(vec4<bool>(false, global4.d.c.b.x, global4.d.b.e.x, global2.a.a), vec4<bool>(global2.b.c.a, global2.a.a, global2.b.e.x, false), vec4<bool>(true, global2.a.a, false, global2.c.e.x)), !global2.c.c.a), !(!vec4<bool>(true, global2.b.b.x, global2.a.a, false)))).b, vec4<bool>(false, !select(global4.d.a.a, true, global2.a.a), false, true & global2.b.c.a), !(!vec4<bool>(global2.c.e.x, false, !global4.d.a.a, all(global2.c.b))));
    let var_2 = global4.c.x;
    global0 = array<vec4<f32>, 6>();
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~global4.c, global4.c) & select(func_1(vec3<bool>(false, false, false)), ~58400i, false), _wgslsmith_div_i32(_wgslsmith_div_i32(-11614i, ~u_input.a), u_input.a)) << (abs(28599u & ~abs(var_1.b.a)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(-global4.c, max(global4.c, vec3<i32>(-15387i, u_input.a, 34174i))))), ~func_2(Struct_2(~25893u, !global2.c.b, Struct_1(global4.d.c.b.x, var_1.c.c.b), select(0u, 52497u, global4.d.c.c.a), select(vec2<bool>(true, true), global2.c.e, global2.a.a)), select(select(vec4<bool>(global2.b.b.x, false, true, var_1.b.c.a), vec4<bool>(false, true, global2.a.a, global4.d.c.c.a), false), vec4<bool>(false, var_1.a.a, global2.c.c.a, global2.c.e.x), select(vec4<bool>(false, global4.d.c.e.x, global4.d.a.a, true), vec4<bool>(false, false, true, false), false)), select(!vec4<bool>(var_1.b.b.x, global2.c.b.x, true, var_1.c.b.x), vec4<bool>(var_1.b.c.a, global2.a.a, false, global2.a.a), vec4<bool>(var_1.b.e.x, false, global4.d.b.b.x, global4.d.b.e.x))).b.d, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(17738u, 7u)], var_0, var_1.c.c.a)), _wgslsmith_f_op_f32(floor(1698f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.d.c.c.b.x - _wgslsmith_f_op_f32(-var_1.d.x)), -1000f)), -vec4<i32>(u_input.a, -var_3, u_input.a, u_input.a) << (~_wgslsmith_mult_vec4_u32(select(vec4<u32>(var_1.b.d, 65670u, u_input.b, global4.b), vec4<u32>(u_input.c, global2.b.a, var_1.c.a, 4294967295u), vec4<bool>(global2.c.e.x, false, global2.a.a, global4.d.b.b.x)), select(vec4<u32>(0u, 118299u, 39145u, u_input.c), vec4<u32>(70943u, 1u, global2.c.d, global2.b.d), vec4<bool>(false, true, global4.d.a.a, true))) % vec4<u32>(32u)), _wgslsmith_mult_i32(countOneBits(max(-2147483647i, var_3)), u_input.a >> (global2.c.d % 32u)) << (global2.c.a % 32u));
}

