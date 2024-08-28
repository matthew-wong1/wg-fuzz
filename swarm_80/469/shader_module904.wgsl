struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(71654u, 0u, 4294967295u), vec3<u32>(1u, 28999u, 78761u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec4<bool>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)), vec2<f32>(arg_1.a.x, 1000f))), all(select(vec3<bool>(arg_2.x, false, false), arg_2.yyy, vec3<bool>(arg_2.x, true, arg_2.x))))) + vec2<f32>(_wgslsmith_f_op_f32(step(541f, _wgslsmith_f_op_f32(-1000f + -697f))), 1380f)), ~_wgslsmith_clamp_u32(1u, min(26848u, arg_1.c), 0u), 43483u);
    global0 = array<vec3<u32>, 2>();
    var var_1 = Struct_2(var_0.a, ~arg_1.c, min(abs(firstTrailingBit(_wgslsmith_add_u32(arg_1.c, arg_1.c))), 11424u));
    var var_2 = select(true, true || select(true, arg_2.x, all(vec3<bool>(true, false, true))), arg_2.x & arg_2.x);
    var_1 = Struct_2(vec2<f32>(-242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), 63707u, ~_wgslsmith_dot_vec3_u32(abs(u_input.d.xwy) << ((global0[_wgslsmith_index_u32(u_input.e, 2u)] << (u_input.d.yzw % vec3<u32>(32u))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(1u, arg_1.b), _wgslsmith_clamp_u32(4294967295u, 4294967295u, arg_1.c), false), 2u)]));
    return arg_2.x;
}

fn func_2(arg_0: f32) -> vec2<f32> {
    global0 = array<vec3<u32>, 2>();
    let var_0 = select(firstTrailingBit(-abs(vec4<i32>(19183i, 2147483647i, -12573i, -23670i))), ~(-vec4<i32>(1i, 1i, 1i, 1i)), select((func_3(47815i, Struct_2(vec2<f32>(arg_0, 831f), u_input.d.x, u_input.d.x), vec4<bool>(true, true, false, true)) != true) || (arg_0 <= arg_0), any(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), all(vec4<bool>(any(vec2<bool>(false, true)), true, true, true))));
    let var_1 = Struct_1(select(vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), true & any(vec4<bool>(false, false, false, true))), vec2<bool>(any(vec4<bool>(false, true, true, true)), false), 1f > arg_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), arg_0)), (~firstLeadingBit(var_0.x) | -abs(61588i)) & min(_wgslsmith_dot_vec3_i32(var_0.zzy, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x))), ~var_0.x));
    var var_2 = ~max(u_input.d.x, ~reverseBits(56300u));
    var var_3 = 38077u;
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) - 1000f), arg_0))));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    global0 = array<vec3<u32>, 2>();
    let var_0 = ~(~(~u_input.b));
    var var_1 = countOneBits(~(u_input.b >> (u_input.b % 32u)));
    var var_2 = Struct_1(arg_0, -217f, -2147483647i);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_2.b))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(968f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2016f, var_2.b)) * _wgslsmith_f_op_f32(max(var_2.b, var_2.b)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -339f), all(vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) + 459f))), ~_wgslsmith_mult_u32(select(~u_input.c, ~24878u, true), func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), reverseBits(108069u));
    global0 = array<vec3<u32>, 2>();
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_div_f32(424f, -611f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2047f))))), 1u, 20660u);
    global0 = array<vec3<u32>, 2>();
    var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(max(319f, var_1.a.x)), var_1.a.x), 0u, ~(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zw, u_input.d.xx), ~u_input.d.zz) >> (28963u % 32u)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(1011f, 1094f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + vec2<f32>(-1448f, var_1.a.x)))), ~(~_wgslsmith_mult_u32(var_1.b, 25171u) >> (~var_1.b % 32u)), var_0);
    let var_3 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3), -825f, var_3) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1042f, 547f, 380f) + vec3<f32>(318f, 472f, var_3))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 291f, 2614f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 1087f, var_3) + vec3<f32>(var_2.a.x, -108f, var_1.a.x))))), _wgslsmith_f_op_f32(651f + var_3), firstTrailingBit(~(-39867i)), _wgslsmith_div_vec4_i32(vec4<i32>(31083i, 1i, ~firstTrailingBit(-14722i), 1i | firstTrailingBit(-2147483647i)), vec4<i32>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, -54717i), vec4<i32>(-830i, 16602i, 1i, -2147483647i)), 1i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-9111i, -2147483647i), vec2<i32>(10167i, 26348i)), _wgslsmith_add_i32(18980i, 0i)), 1i, select(_wgslsmith_mult_i32(22607i, 0i), 2147483647i, true))));
}

