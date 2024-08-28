struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-12252i, i32(-2147483648), 2147483647i, 0i, 1i, -1i, 2147483647i, 1i, 0i, 1i, 2147483647i, 50040i, -35507i);

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global0 = array<i32, 13>();
    global0 = array<i32, 13>();
    return -1600f;
}

fn func_2() -> f32 {
    global0 = array<i32, 13>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -2075f);
    var var_1 = Struct_2(Struct_1(vec4<u32>(u_input.d, 27519u, countOneBits(~u_input.e), u_input.d | ~u_input.e), 1135f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(730f, global1.x)))), u_input.b, vec3<bool>(true, global0[_wgslsmith_index_u32(57994u, 13u)] <= -1i, false)));
    global0 = array<i32, 13>();
    var_1 = Struct_2(var_1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-179f - -761f))) + _wgslsmith_f_op_f32(f32(-1f) * -417f)) + _wgslsmith_f_op_f32(round(global1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), global1.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1380f - -531f), _wgslsmith_f_op_f32(-1560f + -901f)))));
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_1(firstLeadingBit(firstTrailingBit(select(vec4<u32>(0u, 1u, u_input.d, 0u), vec4<u32>(u_input.e, arg_2.x, 1u, u_input.d), vec4<bool>(true, arg_0, arg_0, arg_0)) | ~vec4<u32>(1u, 4294967295u, arg_2.x, 4294967295u))), -564f != arg_1.x, countOneBits(~global0[_wgslsmith_index_u32(1u, 13u)]), vec3<bool>(arg_0, any(select(vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, true, arg_0), arg_0)), true));
    let var_1 = false;
    let var_2 = -global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a.x), 13u)];
    let var_3 = Struct_2(Struct_1(~_wgslsmith_sub_vec4_u32(var_0.a, var_0.a) ^ var_0.a, var_0.b, ~(~21256i), var_0.d));
    global0 = array<i32, 13>();
    return Struct_2(var_3.a);
}

fn func_1(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = -710f;
    var var_1 = func_4(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 155f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0, 506f, var_0) * vec4<f32>(-2125f, global1.x, 1000f, global1.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1426f, 2462f, -1711f), vec4<f32>(global1.x, global1.x, -1134f, 1059f))))), _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(select(~arg_0.xz, firstLeadingBit(vec2<u32>(4294967295u, 100u)), true), arg_0.wx), vec2<u32>(~abs(0u), 101900u)));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 1000f) * -648f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(361f - 577f), global1.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-364f, 977f), vec2<f32>(global1.x, -396f), var_1.a.d.xz))))));
    let var_2 = var_1.a.c;
    let var_3 = _wgslsmith_mod_u32(~u_input.e, ~(~(1u ^ _wgslsmith_add_u32(1u, u_input.e))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, -525f), vec2<f32>(420f, -377f), var_1.a.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -761f) + vec2<f32>(-801f, -105f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(935f)), _wgslsmith_f_op_f32(step(1122f, -523f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, 103f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1190f, -351f) - vec2<f32>(global1.x, var_0))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec4_u32(vec4<u32>(max(u_input.d, 18066u), countOneBits(u_input.d), ~u_input.e, u_input.e | u_input.e), ~(~vec4<u32>(48516u, u_input.d, u_input.d, u_input.d)))))));
    global0 = array<i32, 13>();
    let var_0 = Struct_1(func_4((_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.e, 13u)], -17177i) < (global0[_wgslsmith_index_u32(0u, 13u)] & 2147483647i)) & all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -2412f, global1.x, -543f) + vec4<f32>(538f, global1.x, 1000f, -1888f))) - vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(-global1.x), global1.x)), abs((vec2<u32>(37081u, 4294967295u) & vec2<u32>(u_input.d, u_input.d)) >> ((vec2<u32>(u_input.e, 28176u) & vec2<u32>(27935u, 0u)) % vec2<u32>(32u)))).a.a, true, 2147483647i, vec3<bool>(true, _wgslsmith_f_op_f32(round(global1.x)) <= -1000f, true));
    var var_1 = func_4(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global1.x, 205f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.x, global1.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, global1.x))))), ~var_0.a.zw).a;
    global0 = array<i32, 13>();
    let var_2 = abs(1u);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, vec3<u32>(countOneBits(_wgslsmith_mod_u32(44393u, var_2) << (_wgslsmith_dot_vec4_u32(vec4<u32>(20842u, u_input.d, var_2, var_2), vec4<u32>(u_input.e, 10057u, 4294967295u, 32557u)) % 32u)), _wgslsmith_div_u32(4294967295u, ~(~var_1.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.e, u_input.d, u_input.d | var_1.a.x, ~u_input.e), var_0.a)), var_1.a.x);
}

