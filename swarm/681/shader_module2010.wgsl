struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> Struct_2 {
    global0 = array<vec2<bool>, 25>();
    var var_0 = true;
    var_0 = (u_input.d.x & (~u_input.d.x | 18108i)) <= firstLeadingBit(1i);
    var_0 = true;
    global0 = array<vec2<bool>, 25>();
    return Struct_2(21226i);
}

fn func_3() -> i32 {
    let var_0 = -64074i;
    var var_1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, -35466i, 1i, 2147483647i), -firstLeadingBit(~vec4<i32>(2147483647i, u_input.d.x, var_0, u_input.d.x)), vec4<i32>(countOneBits(_wgslsmith_mod_i32(var_0, -7400i)), min(_wgslsmith_mult_i32(2147483647i, 1i), _wgslsmith_mod_i32(var_0, var_0)), min(-2147483647i, abs(u_input.d.x)), _wgslsmith_div_i32(1i, -var_0)));
    var var_2 = func_1();
    var_1 = ~abs(u_input.d);
    let var_3 = Struct_3(~(~(~(~u_input.b.x))), global0[_wgslsmith_index_u32(~4226u, 25u)], u_input.d.zxy, u_input.b, -select(~countOneBits(u_input.d.x), reverseBits(_wgslsmith_sub_i32(var_0, 13374i)), false));
    return -(i32(-1i) * -(1i >> (var_3.a % 32u)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(func_3(), u_input.d.x, -1i, reverseBits(48121i)), u_input.d);
    let var_1 = ~(~84303u);
    global0 = array<vec2<bool>, 25>();
    global0 = array<vec2<bool>, 25>();
    let var_2 = Struct_1(1i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-560f)) - _wgslsmith_f_op_f32(2016f * -1071f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(660f)) + _wgslsmith_div_f32(-1000f, 906f))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec2<bool>, 25>();
    let var_0 = -(i32(-1i) * -62889i);
    var var_1 = Struct_4(func_1(), abs(min(~firstLeadingBit(arg_0.x), 9173u)), abs(countOneBits(~firstLeadingBit(vec3<u32>(arg_0.x, 0u, 4294967295u)))));
    let var_2 = Struct_1(firstTrailingBit(-1i) & -var_0);
    global0 = array<vec2<bool>, 25>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 25>();
    var var_0 = Struct_4(func_1(), 1u, u_input.b);
    var var_1 = func_4(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(4294967295u, _wgslsmith_mod_u32(12058u, 4294967295u), ~var_0.b)), 50141u, var_0.b), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(800f * _wgslsmith_div_f32(-535f, -1220f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-606f)) * _wgslsmith_f_op_f32(trunc(-270f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-311f, _wgslsmith_f_op_f32(-287f - 1000f))), -635f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    let var_2 = Struct_4(func_1(), abs(max(abs(20622u), countOneBits(var_0.b))) & ~(~68853u), vec3<u32>(5550u, _wgslsmith_sub_u32(1u, var_0.b), ~(~1u)));
    var_1 = Struct_1(func_3());
    var_1 = func_4(~vec3<u32>(~(~0u), var_2.b & _wgslsmith_dot_vec2_u32(vec2<u32>(34020u, 4294967295u), var_0.c.xz), _wgslsmith_div_u32(~var_0.c.x, 14191u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(1317f)), _wgslsmith_f_op_f32(f32(-1f) * -2998f), _wgslsmith_f_op_f32(-506f + -712f), _wgslsmith_f_op_f32(182f * -247f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 1224f, 369f, -315f))))), vec4<f32>(-1420f, 833f, _wgslsmith_f_op_f32(-833f * -650f), -745f))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(vec3<i32>(~1i, 1i, 0i), ~abs(u_input.d.zzw)), ~(~u_input.a), ~(~min(select(u_input.b, u_input.b, true), _wgslsmith_mult_vec3_u32(var_2.c, vec3<u32>(1u, var_2.c.x, var_0.b)))), -214f, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(var_0.c, var_0.c), var_0.c));
}

