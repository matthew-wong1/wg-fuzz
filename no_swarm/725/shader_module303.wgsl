struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = global1.x;
    global0 = array<Struct_2, 19>();
    return 23923u;
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: u32) -> f32 {
    global0 = array<Struct_2, 19>();
    let var_0 = arg_3;
    var var_1 = -778f;
    let var_2 = arg_0;
    var_1 = 993f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 1520f)), !(91208i >= var_2.d.e)))));
}

fn func_2(arg_0: vec2<bool>) -> vec2<f32> {
    let var_0 = !(!arg_0.x);
    let var_1 = Struct_5(Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-62637i, 1i, u_input.c.x, -1i), select(vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, 16782i, 1548i), var_0)), 23937i == u_input.c.x, vec3<u32>(1u, _wgslsmith_mod_u32(firstTrailingBit(1u), max(u_input.b.x, u_input.e.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(40505u, u_input.b.x, u_input.e.x, u_input.b.x)) | ~4294967295u), var_0, firstLeadingBit(-2147483647i >> (countOneBits(1u) % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), _wgslsmith_f_op_f32(func_4(Struct_3(arg_0.x, vec4<f32>(1000f, 1070f, global1.x, 1868f), global1.yz, Struct_1(u_input.a, true, vec3<u32>(u_input.e.x, 4294967295u, 23204u), false, u_input.a)), _wgslsmith_f_op_f32(global1.x + -618f), ~u_input.b.x, func_3(Struct_5(Struct_1(-7978i, var_0, u_input.e, true, u_input.a), vec2<f32>(-2261f, 929f)), Struct_1(u_input.c.x, arg_0.x, vec3<u32>(u_input.e.x, 0u, 4063u), true, u_input.c.x), vec4<f32>(1600f, -359f, 500f, global1.x)))))));
    var var_2 = Struct_1(firstLeadingBit(var_1.a.a), arg_0.x, firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(func_3(var_1, var_1.a, vec4<f32>(-1019f, -1735f, global1.x, 559f)), var_1.a.c.x, _wgslsmith_div_u32(var_1.a.c.x, 20923u)), u_input.e)), false, var_1.a.e);
    let var_3 = var_1.a;
    let var_4 = Struct_4(firstLeadingBit(abs(u_input.e)), func_3(Struct_5(var_1.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.b.x, global1.x))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, global1.x)))))), var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -1000f, -1334f, -397f), vec4<f32>(-174f, 281f, 1000f, global1.x))))), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_i32(~(~_wgslsmith_add_i32(0i, -2147483647i)), -2147483647i));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) + global1.xx) * vec2<f32>(global1.x, global1.x)) * global1.yz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.c, var_1.b.x)), vec2<f32>(_wgslsmith_f_op_f32(global1.x * 804f), -267f)))));
}

fn func_1() -> Struct_5 {
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))))));
    global1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global1.x, false)) * _wgslsmith_f_op_f32(exp2(var_0.x))) * 735f), _wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(var_0.x)))));
    let var_1 = Struct_2(~_wgslsmith_div_vec3_u32(u_input.e, ~(~vec3<u32>(u_input.e.x, u_input.b.x, u_input.b.x))), any(vec4<bool>(true, true, true, true)), Struct_1(1i, any(vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), all(vec2<bool>(false, false)))), ~firstTrailingBit(vec3<u32>(u_input.b.x, 1u, 0u)), true, ~(-1i) << (select(42531u, ~u_input.b.x, false) % 32u)), Struct_1(1i & (u_input.c.x & u_input.c.x), true, vec3<u32>(15618u, 1u | ~u_input.b.x, u_input.b.x), any(vec3<bool>(true, true, true)) && false, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-10554i, u_input.d.x, u_input.c.x), firstLeadingBit(vec3<i32>(1i, 12079i, u_input.a))))), Struct_1(u_input.d.x, !(1u != _wgslsmith_dot_vec3_u32(u_input.e, u_input.e)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(74756u, u_input.e.x, u_input.e.x) >> (u_input.e % vec3<u32>(32u)), firstTrailingBit(u_input.e)), !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)), _wgslsmith_div_i32(8500i, _wgslsmith_sub_i32(26216i, -1i))));
    var var_2 = Struct_3(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, -283f, 824f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 245f, global1.x, var_0.x), vec4<f32>(global1.x, var_0.x, global1.x, -126f)), !vec4<bool>(var_1.e.b, var_1.d.b, true, false)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * global1.x), _wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, var_1.d.d))).x, -1261f, _wgslsmith_f_op_f32(ceil(var_0.x))))), true | var_1.b)), var_0, var_1.c);
    return Struct_5(var_2.d, _wgslsmith_div_vec2_f32(var_2.c, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e;
    let var_1 = func_1();
    global1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)) - -1000f), -221f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-300f, global1.x, var_1.b.x) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, global1.x, var_1.b.x), vec3<f32>(global1.x, -915f, var_1.b.x))))))));
    var var_2 = 825f;
    let var_3 = _wgslsmith_div_u32(~4294967295u, _wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_1.a.c.x), vec2<u32>(17u, 3172u)), firstTrailingBit(var_1.a.c.x)), ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.e.yx) >> (45071u % 32u)));
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zz, 1304f, ~(~vec4<u32>(0u, 4440u, u_input.b.x, 34857u)) & ~(~(vec4<u32>(976u, 17160u, var_0.x, 19253u) | vec4<u32>(var_1.a.c.x, var_3, var_3, var_3))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))));
}

