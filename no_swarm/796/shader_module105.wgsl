struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_2, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(689f + -593f))), -1922f, _wgslsmith_f_op_f32(-1962f - -169f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, -607f, 1343f)))) - vec3<f32>(_wgslsmith_f_op_f32(112f * 317f), _wgslsmith_f_op_f32(f32(-1f) * -536f), -1642f))));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(414f + 1340f) + _wgslsmith_f_op_f32(abs(1209f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(899f + _wgslsmith_f_op_f32(ceil(-115f)))));
    var var_1 = vec4<i32>(arg_1, arg_1 & reverseBits(abs(_wgslsmith_add_i32(-1i, arg_0.a.x))), arg_1, abs(2147483647i));
    let var_2 = vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 4029u, 4294967295u), u_input.a, 13776u), _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 4294967295u, 16345u)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, 39322u, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 48994u), vec3<u32>(u_input.a, u_input.a, 58231u)))), u_input.a, abs(4294967295u));
    var var_3 = _wgslsmith_add_i32(-var_1.x, -16219i) | max(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_1.wy, firstLeadingBit(vec2<i32>(-2147483647i, u_input.b))), -24041i), arg_1);
    var var_4 = (u_input.a | u_input.a) <= ~((var_2.x >> (~17224u % 32u)) >> (~abs(var_2.x) % 32u));
    return any(vec4<bool>(global0.x | select(global0.x && false, !global0.x, global0.x), false, true, all(select(vec4<bool>(global0.x, false, global0.x, global0.x), !vec4<bool>(true, false, true, global0.x), select(false, global0.x, global0.x)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<u32>) -> vec4<bool> {
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    global0 = select(vec3<bool>(min(~arg_1.x, firstLeadingBit(4294967295u)) <= ~_wgslsmith_clamp_u32(u_input.a, 13146u, u_input.a), false, true), vec3<bool>(!select(func_3(Struct_4(vec2<i32>(-28634i, u_input.b)), 0i), 73292u < u_input.a, any(vec4<bool>(global0.x, false, global0.x, false))), true, global0.x), !global0.x == all(vec2<bool>(any(vec3<bool>(global0.x, global0.x, true)), true)));
    var var_0 = Struct_1(arg_0.x, select(select(select(vec4<bool>(false, true, global0.x, global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, true, true), true), global0.x), vec4<bool>(u_input.a >= u_input.a, true, -2147483647i < u_input.b, true), !(u_input.b > -2147483647i)), select(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(true, global0.x, true, true)), !select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, false)), select(vec4<bool>(true, true, global0.x, true), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, global0.x)), global0.x)), vec4<bool>(true, global0.x, !global0.x, select(all(vec3<bool>(global0.x, global0.x, true)), true, true))));
    let var_1 = u_input.a;
    return !select(select(var_0.b, var_0.b, global0.x), var_0.b, select(!var_0.b, vec4<bool>(u_input.b < -54069i, true, global0.x, any(vec3<bool>(true, false, true))), var_0.b.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(289f, 1802f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + _wgslsmith_f_op_f32(-255f - -495f)), -114f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -833f), arg_1.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 237f, 408f, arg_3.a.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_3.a.a.x)), _wgslsmith_f_op_f32(-arg_3.a.a.x), _wgslsmith_f_op_f32(arg_1.a - arg_3.a.a.x), func_1(arg_3.b).a.x)), select(!vec4<bool>(global0.x, true, false, arg_1.b.x), func_2(vec4<f32>(-2438f, -1900f, arg_3.a.a.x, arg_1.a), ~vec2<u32>(1u, 4294967295u)), all(vec4<bool>(arg_1.b.x, arg_0, false, true))))), vec4<f32>(865f, _wgslsmith_f_op_f32(395f - arg_1.a), func_1(_wgslsmith_sub_u32(u_input.a, select(0u, arg_3.b, arg_1.b.x))).a.x, arg_1.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1654f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -240f), 164f, 1254f, var_0.x);
    let var_2 = vec3<bool>(select(true, true, arg_1.b.x), arg_0, !arg_0);
    var_1 = _wgslsmith_f_op_f32(ceil(func_1(abs(arg_3.b)).a.x));
    return Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(10525u, arg_3.b, 1u) ^ firstLeadingBit(vec3<u32>(31621u, arg_3.b, 1u))), abs(vec3<u32>(min(u_input.a, 16892u), ~arg_3.b, arg_3.b))), 1u)], u_input.a << (max(~_wgslsmith_add_u32(69832u, u_input.a), 4312u) % 32u), _wgslsmith_add_vec3_i32(arg_3.c, abs(arg_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 1>();
    var var_0 = Struct_3(func_1(16612u), 34349u, vec3<i32>(abs(_wgslsmith_clamp_i32(u_input.b >> (u_input.a % 32u), ~u_input.b, firstLeadingBit(53885i))), 1i, u_input.b));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.a.a))));
    var var_2 = Struct_4(var_0.c.yy);
    var var_3 = -1185f;
    let var_4 = u_input.a;
    var var_5 = func_4(global0.x, Struct_1(_wgslsmith_f_op_f32(var_0.a.a.x * -669f), func_2(vec4<f32>(205f, var_1.a.x, _wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(1184f - var_1.a.x)), vec2<u32>(~u_input.a, min(11922u, 22887u)))), 2147483647i, Struct_3(func_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, var_0.b, var_4), vec3<u32>(var_0.b, 56910u, 6852u)), vec3<u32>(1u, 47119u, 4294967295u))), u_input.a, countOneBits(vec3<i32>(var_0.c.x, var_2.a.x, ~var_0.c.x))));
    var var_6 = global0.zx;
    let var_7 = ~(~vec2<u32>(var_4, var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-1i, u_input.b, 1863i, var_5.c.x), vec4<i32>(1i, u_input.b, -1i, u_input.b)), vec4<i32>(var_5.c.x, 0i, u_input.b, -2147483647i), vec4<i32>(var_2.a.x, u_input.b, var_0.c.x, -2147483647i)) >> (vec4<u32>(~83468u, firstLeadingBit(~var_0.b), ~4294967295u ^ var_5.b, max(1u | var_5.b, 9182u)) % vec4<u32>(32u)), 0u, var_5.c.x, 1u);
}

