struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: vec4<u32> = vec4<u32>(15219u, 0u, 4294967295u, 39089u);

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(-574f, -3990i, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), Struct_1(-1367f, -1i, vec2<bool>(false, false), vec4<bool>(false, true, false, false)), Struct_1(-436f, 1688i, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), Struct_1(-484f, 1i, vec2<bool>(true, false), vec4<bool>(true, true, true, false)), Struct_1(-464f, 26517i, vec2<bool>(true, true), vec4<bool>(true, true, true, true)), Struct_1(1000f, -10299i, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(572f, -1i, vec2<bool>(false, false), vec4<bool>(true, false, true, true)), Struct_1(967f, -12172i, vec2<bool>(false, false), vec4<bool>(true, true, true, true)), Struct_1(675f, i32(-2147483648), vec2<bool>(false, false), vec4<bool>(false, false, false, false)), Struct_1(-141f, i32(-2147483648), vec2<bool>(false, false), vec4<bool>(true, false, true, false)), Struct_1(-2002f, -3264i, vec2<bool>(true, true), vec4<bool>(false, false, true, false)), Struct_1(-1000f, i32(-2147483648), vec2<bool>(false, true), vec4<bool>(true, false, true, true)), Struct_1(169f, 8222i, vec2<bool>(false, false), vec4<bool>(true, false, false, false)), Struct_1(-1000f, -9728i, vec2<bool>(false, false), vec4<bool>(true, false, true, true)), Struct_1(-2377f, 37594i, vec2<bool>(true, true), vec4<bool>(true, false, false, true)), Struct_1(211f, -11249i, vec2<bool>(false, false), vec4<bool>(false, false, false, false)), Struct_1(-618f, -1i, vec2<bool>(false, false), vec4<bool>(false, true, false, false)), Struct_1(-415f, 6583i, vec2<bool>(false, false), vec4<bool>(true, true, false, true)), Struct_1(-986f, i32(-2147483648), vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_1(-543f, -1i, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), Struct_1(517f, 60994i, vec2<bool>(true, true), vec4<bool>(false, true, true, false)), Struct_1(113f, -5390i, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), Struct_1(919f, 0i, vec2<bool>(false, false), vec4<bool>(false, false, false, true)));

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> vec4<u32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_sub_u32(4294967295u, global1.x);
    global2 = array<Struct_1, 23>();
    return _wgslsmith_add_vec4_u32(firstLeadingBit(~select(u_input.a >> (u_input.a % vec4<u32>(32u)), max(u_input.a, u_input.a), !var_0.d)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(0u ^ (u_input.a.x & 16843u), var_1, var_1, var_1)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(abs(4294967295u), 54464u & global1.x, u_input.a.x & global1.x, u_input.a.x), u_input.a ^ vec4<u32>(global1.x, countOneBits(77217u), ~27379u, global1.x)) | func_3(all(select(vec2<bool>(arg_0.x, false), !vec2<bool>(arg_0.x, false), !vec2<bool>(false, arg_1.d.x))), global3[_wgslsmith_index_u32(~68914u | (_wgslsmith_dot_vec2_u32(vec2<u32>(51870u, u_input.a.x), u_input.a.xy) << (1u % 32u)), 12u)], (arg_1.b << ((u_input.a.x >> (u_input.a.x % 32u)) % 32u)) < abs(arg_1.b | arg_1.b));
    global3 = array<Struct_1, 12>();
    global2 = array<Struct_1, 23>();
    let var_0 = arg_1;
    global1 = vec4<u32>(min(u_input.a.x, global1.x), u_input.a.x, _wgslsmith_clamp_u32(max(max(global1.x, 0u), 0u), u_input.a.x, func_3(false, arg_1, select(arg_0.x, false, var_0.d.x)).x), firstTrailingBit(u_input.a.x)) >> (~firstLeadingBit(vec4<u32>(global1.x, ~u_input.a.x, _wgslsmith_sub_u32(35531u, global1.x), global1.x)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a, arg_1.a))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-379f + _wgslsmith_f_op_f32(-var_0.a)))) + _wgslsmith_f_op_f32(trunc(-1547f)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a;
    var var_1 = -2147483647i;
    var var_2 = !arg_0.d.xyw;
    global1 = firstLeadingBit(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1.x, global1.x, 1u), u_input.a), min(~u_input.a, ~vec4<u32>(global1.x, u_input.a.x, 37045u, global1.x))), countOneBits(u_input.a)));
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a)), 2147483647i, vec2<bool>(true, false), select(!var_3.d, !select(arg_0.d, vec4<bool>(arg_0.d.x, arg_0.c.x, var_3.d.x, var_2.x), var_2.x || arg_0.c.x), global0.x));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = 60496u;
    var var_1 = global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(18588u, firstLeadingBit(3507u)), _wgslsmith_mod_u32(4294967295u, u_input.a.x)), 23u)];
    global3 = array<Struct_1, 12>();
    let var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(var_1.d, vec4<bool>(false, true, var_1.c.x, true), global0.x), Struct_1(1641f, var_1.b, vec2<bool>(true, false), var_1.d), Struct_1(976f, arg_1.x, global0.yy, vec4<bool>(global0.x, true, true, var_1.d.x))))), max(countOneBits(var_1.b), -2147483647i) & -var_1.b, vec2<bool>(true, any(select(global0.wzz, vec3<bool>(false, false, global0.x), global0.x))), var_1.d));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(func_4(func_4(func_4(Struct_1(1796f, arg_1.x, var_1.c, vec4<bool>(false, true, true, true))))).a, var_2.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(min(var_1.a, 1890f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(164f)), _wgslsmith_div_f32(1039f, var_1.a))))));
    return !var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(firstTrailingBit(u_input.a.x) > global1.x, false, all(!(!(!vec2<bool>(global0.x, global0.x)))), select(select(false, global0.x, global0.x), !(_wgslsmith_dot_vec3_u32(global1.wxw, global1.wzz) <= _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), all(select(func_1(55980u, vec3<i32>(-4184i, -1i, -21104i)), global0.zx, global0.wz))));
    var var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-847f, 1000f))), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 1i), vec3<i32>(1i, 0i, 6153i))), select(vec2<bool>(global0.x, var_0.x), !var_0.yx, vec2<bool>(true, true)), !select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(global0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - 1974f) - _wgslsmith_f_op_f32(floor(-261f)))) + 552f), _wgslsmith_clamp_i32(0i, -var_1.b, 32827i), vec2<bool>(var_1.c.x, !select(true, var_1.c.x, all(vec2<bool>(var_0.x, var_1.d.x)))), !var_1.d);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.a - -1253f))), countOneBits(~var_1.b), !select(var_2.d.zy, vec2<bool>(var_2.a == var_1.a, var_1.a == 416f), vec2<bool>(any(vec4<bool>(true, false, var_0.x, var_0.x)), true)), !(!(!(!var_2.d))));
    global3 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-17548i), countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global1.x, 44318u), u_input.a.wzx)), u_input.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -200f, var_3.a, 164f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(826f, -1000f, var_1.a, 617f) - vec4<f32>(-1421f, var_3.a, var_1.a, -342f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1352f, 1141f, var_3.a, var_2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(219f, var_2.a, var_3.a, 1000f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_1.a, -2176f), vec4<f32>(-244f, -633f, var_3.a, var_1.a))))))), firstTrailingBit(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.b, var_3.b), vec2<i32>(-56027i, var_1.b)), vec2<i32>(1i, var_3.b))));
}

