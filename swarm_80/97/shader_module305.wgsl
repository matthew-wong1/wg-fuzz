struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(false), Struct_1(true), false, Struct_1(false)));

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(-12243i, -56483i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -17998i), vec3<i32>(-11584i, 1i, -1i), vec3<i32>(-10823i, -7984i, 3793i), vec3<i32>(20287i, 19871i, 0i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1418f), _wgslsmith_f_op_f32(1228f * _wgslsmith_f_op_f32(-arg_1)))))));
    let var_1 = Struct_1(-1i >= countOneBits(firstTrailingBit(1i)));
    global1 = array<vec3<i32>, 5>();
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    return firstLeadingBit(vec4<u32>(u_input.a.x, countOneBits(22892u) ^ u_input.a.x, 4294967295u, ~u_input.a.x));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(any(vec2<bool>(true, true)));
    global1 = array<vec3<i32>, 5>();
    var var_1 = vec3<bool>(var_0.a, 1i >= ~((-52744i << (u_input.a.x % 32u)) | 1i), true);
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(func_3(Struct_4(global0[_wgslsmith_index_u32(1u, 1u)], Struct_2(Struct_1(true), Struct_1(var_1.x), true, Struct_1(true)), Struct_1(true)), 1000f, false, vec2<i32>(1i, 1i)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(u_input.a.x, 36868u, 77918u, 26922u)) >> (abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), 4294967295u));
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(13050u, 34708u), abs(u_input.a.x));
    return Struct_1(var_0.a | (abs(0u) != (~18248u ^ var_3)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    return 2147483647i;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = 4294967295u;
    let var_1 = min(select(_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(1u, 5u)], abs(global1[_wgslsmith_index_u32(arg_0.x, 5u)])), -15723i, true), ~(-(-1i << (arg_0.x % 32u)))) > reverseBits(func_4(func_2()));
    let var_2 = 1f;
    global1 = array<vec3<i32>, 5>();
    let var_3 = var_2;
    return Struct_2(Struct_1(true), Struct_1(var_1), true, Struct_1(!func_2().a));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !(firstLeadingBit(1i) != ~_wgslsmith_dot_vec4_i32(~vec4<i32>(15092i, 0i, -92492i, -1i), vec4<i32>(4436i, -2147483647i, -7661i, 0i)));
    let var_1 = firstTrailingBit((i32(-1i) * -2147483647i) | (select(i32(-1i) * -1i, select(-2147483647i, 1670i, false), !arg_0.c) | 0i));
    var var_2 = true;
    var_2 = any(select(!(!(!vec2<bool>(true, arg_2))), vec2<bool>(all(vec2<bool>(true, var_0)), any(select(vec3<bool>(true, arg_0.b.a, arg_2), vec3<bool>(false, var_0, false), vec3<bool>(true, var_0, false)))), vec2<bool>(true, arg_2 & !arg_0.d.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.yx) + vec2<f32>(arg_3.x, arg_3.x)) - _wgslsmith_f_op_vec2_f32(trunc(arg_3.zy))))));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(28016u, u_input.a.x);
    global1 = array<vec3<i32>, 5>();
    var var_1 = min(u_input.a.x, var_0);
    var var_2 = ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 16219u), ~vec2<u32>(var_0, u_input.a.x)), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.a.x, var_0), u_input.a), u_input.a)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1047f - 418f), _wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(f32(-1f) * -284f)))) - _wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, -1300f))))));
    global0 = array<Struct_2, 1>();
    let var_4 = Struct_2(Struct_1(true), func_5(func_1(max(vec2<u32>(u_input.a.x, 0u), u_input.a)), vec2<u32>(_wgslsmith_sub_u32(u_input.a.x & var_2.x, var_2.x), ~1u), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-410f, _wgslsmith_f_op_f32(select(var_3, var_3, true)), _wgslsmith_f_op_f32(-var_3)))), any(select(vec4<bool>(true, false, func_5(Struct_2(Struct_1(true), Struct_1(true), false, Struct_1(false)), vec2<u32>(u_input.a.x, 1u), false, vec3<f32>(var_3, 313f, 251f)).a, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, false)))), func_5(Struct_2(func_1(u_input.a).d, Struct_1(true), true, func_5(Struct_2(Struct_1(false), Struct_1(true), false, Struct_1(true)), u_input.a << (vec2<u32>(20951u, 37729u) % vec2<u32>(32u)), true, _wgslsmith_div_vec3_f32(vec3<f32>(-788f, -1000f, var_3), vec3<f32>(1160f, 2015f, -882f)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(655f * 867f) + _wgslsmith_f_op_f32(-var_3)) <= -267f, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(-881f + -2339f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-488f, var_3, 312f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(172f, -667f, var_3) * vec3<f32>(404f, var_3, 1000f)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(909f, var_3, var_3))), vec3<bool>(true, all(vec4<bool>(true, var_4.b.a, false, var_4.b.a)), true)))));
}

