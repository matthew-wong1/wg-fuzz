struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-28776i, 2147483647i, -62909i, -18799i, -59327i, 1i, -1i, -1277i, -22247i, -41182i, 0i, i32(-2147483648), 2147483647i, 9908i, 1i, 53560i, -1i, -7412i, 2147483647i, 47582i, -1i, 1i, -8243i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> f32 {
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    let var_0 = Struct_4(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(min(~vec4<u32>(4294967295u, arg_3, arg_0.b.x, arg_3), vec4<u32>(arg_0.b.x, arg_0.b.x, 92592u, 4294967295u)), (vec4<u32>(38947u, arg_3, 4294967295u, arg_3) >> (vec4<u32>(arg_0.b.x, 27646u, arg_3, arg_3) % vec4<u32>(32u))) ^ (vec4<u32>(arg_0.b.x, arg_3, arg_0.b.x, 21027u) | vec4<u32>(21597u, arg_0.b.x, arg_0.b.x, arg_3))), _wgslsmith_add_vec4_u32(~vec4<u32>(103901u, arg_3, 0u, 0u) | _wgslsmith_add_vec4_u32(vec4<u32>(arg_3, 18107u, 1u, arg_0.b.x), vec4<u32>(arg_0.b.x, 48325u, 9512u, 29188u)), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, arg_3, 0u), _wgslsmith_div_u32(1u, 26662u), arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.b.x, 0u, arg_3), vec4<u32>(arg_3, 0u, 0u, 0u))))));
    global0 = array<i32, 23>();
    return _wgslsmith_f_op_f32(-arg_1.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: i32) -> vec4<u32> {
    let var_0 = Struct_4(vec4<u32>(1u, ~1u, ~countOneBits(~4315u), 67022u));
    var var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(933f))), _wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(max(-368f, -139f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-166f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(154f, -507f))), -1381f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1215f)) + 239f)))), var_0, vec2<bool>(arg_0.x, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1136f) - _wgslsmith_f_op_f32(-831f - -1306f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2002f, -194f) - vec2<f32>(-1000f, 1132f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1503f, -2053f)))))), !vec2<bool>(arg_0.x, true))), vec2<i32>(-2147483647i, _wgslsmith_div_i32(-(i32(-1i) * -1i), firstLeadingBit(global0[_wgslsmith_index_u32(var_0.a.x, 23u)]) << ((var_0.a.x & var_0.a.x) % 32u))));
    let var_2 = Struct_3(-1000f, _wgslsmith_f_op_f32(func_3(Struct_2(-2147483647i, vec3<u32>(91268u, ~1u, 1u)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1.a.x)))), _wgslsmith_f_op_vec4_f32(-var_1.a), Struct_1(-arg_1)), -1i, 5018u)), vec4<f32>(-236f, -1658f, -725f, _wgslsmith_f_op_f32(round(-976f))), Struct_1(-u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-989f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(f32(-1f) * -1297f))))), _wgslsmith_f_op_vec2_f32(var_2.c.zw - vec2<f32>(1f, _wgslsmith_f_op_f32(step(1044f, var_2.c.x)))), vec2<bool>(false, !(!all(vec3<bool>(var_1.c.x, false, arg_0.x))))));
    var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1862f - _wgslsmith_div_f32(var_2.b, var_1.d.x))), _wgslsmith_div_f32(1040f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1033f * -545f), var_1.d.x))), var_3.x, _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, var_1.d.x, var_1.c.x))))), var_1.b, arg_0.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.c.zz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1299f, -978f)) + var_3))), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(18699i, 0i, var_1.e.x), vec3<i32>(var_1.e.x, var_2.d.a, var_2.d.a)), firstLeadingBit(0i) & arg_1) ^ _wgslsmith_mod_vec2_i32(~(~u_input.a), var_1.e));
    return ~var_0.a;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<u32>) -> Struct_4 {
    return Struct_4(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(~arg_0.a.x, arg_0.a.x << (4294967295u % 32u), 1u, arg_1.x), func_2(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), 2147483647i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    global0 = array<i32, 23>();
    let var_0 = -601f;
    global0 = array<i32, 23>();
    var var_1 = arg_2;
    var var_2 = arg_1;
    return 60468u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(12355u, 2170u, 2701u))) & 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 1u), ~vec2<u32>(0u, 40516u)), vec2<u32>(reverseBits(100201u), abs(4294967295u))), 23u)], global0[_wgslsmith_index_u32(func_4(Struct_2(u_input.a.x, vec3<u32>(3574u, 1u, 20358u)), Struct_5(vec4<f32>(-286f, -157f, -1213f, -423f), func_1(Struct_4(vec4<u32>(1u, 0u, 18400u, 0u)), vec2<u32>(2855u, 43782u)), vec2<bool>(false, false), vec2<f32>(1f, 1f), u_input.a), Struct_3(-668f, _wgslsmith_f_op_f32(round(349f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(370f, -597f, -666f, -260f))), Struct_1(16168i))), 23u)] >> (reverseBits(~0u) % 32u), ~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -27956i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(84109u, 23u)], global0[_wgslsmith_index_u32(5584u, 23u)], -53833i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a.x, global0[_wgslsmith_index_u32(1u, 23u)]))) | vec2<i32>(-39846i, _wgslsmith_sub_i32(max(-1i, global0[_wgslsmith_index_u32(30985u, 23u)]), abs(u_input.a.x))), ~(~vec2<u32>(firstTrailingBit(49535u), ~49935u)));
}

