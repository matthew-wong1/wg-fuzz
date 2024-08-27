struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false));

var<private> global1: array<Struct_1, 10>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    let var_0 = 68933u;
    let var_1 = -1i;
    global1 = array<Struct_1, 10>();
    let var_2 = _wgslsmith_clamp_u32(~(~reverseBits(~0u)), countOneBits(~arg_1.x), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f + 447f))))));
    return -724f;
}

fn func_3() -> bool {
    global0 = array<vec4<bool>, 4>();
    let var_0 = 220f;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(func_2(abs(u_input.a), reverseBits(abs(max(vec4<u32>(9602u, u_input.a, u_input.a, 5018u), vec4<u32>(4294967295u, u_input.a, 20681u, u_input.a)))), _wgslsmith_div_u32(abs(u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a), vec2<u32>(50248u, 4294967295u)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-577f)), _wgslsmith_f_op_f32(-1505f + _wgslsmith_f_op_f32(f32(-1f) * -1075f)), var_0, _wgslsmith_f_op_f32(-809f * -1058f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1273f)), _wgslsmith_div_f32(var_0, var_0), 1182f, _wgslsmith_f_op_f32(f32(-1f) * -527f)) + vec4<f32>(_wgslsmith_f_op_f32(var_1 * 1783f), _wgslsmith_f_op_f32(round(-2264f)), _wgslsmith_f_op_f32(var_0 - -1167f), -883f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, -1720f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1096f + -309f), 1198f, _wgslsmith_f_op_f32(var_0 + -1331f), _wgslsmith_div_f32(166f, -1367f)))));
    let var_3 = _wgslsmith_sub_vec4_u32(firstTrailingBit(~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a, 4294967295u, 1u)), firstTrailingBit(vec4<u32>(15476u, u_input.a, 84182u, 62u)))), _wgslsmith_clamp_vec4_u32(select(select(vec4<u32>(8274u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 22951u, 0u), true), vec4<u32>(u_input.a, 40813u, 1u, 44713u), true), countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), vec4<u32>(abs(u_input.a), ~u_input.a, u_input.a, u_input.a << (35034u % 32u))) & ~min(~vec4<u32>(0u, u_input.a, 44299u, 1u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)));
    return select(!(!(_wgslsmith_f_op_f32(-var_2.x) != -164f)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))) & any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), var_0 < var_2.x)), all(vec2<bool>(false, false)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: f32) -> bool {
    global0 = array<vec4<bool>, 4>();
    let var_0 = -249f;
    var var_1 = ~vec3<u32>(1u, arg_1 & _wgslsmith_add_u32(arg_1, 0u & u_input.a), min(~31321u, 1u));
    let var_2 = _wgslsmith_f_op_f32(func_2(u_input.a, vec4<u32>(u_input.a, ~35467u, 1u, arg_1), 4294967295u));
    var var_3 = ~106815u;
    return func_3();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec3<bool>(true, all(vec3<bool>(true, true, true)), all(vec2<bool>(false, true))), vec3<bool>(true, any(vec2<bool>(false, false)), true), true), !(!vec3<bool>(func_1(vec3<i32>(1i, 0i, -60930i), u_input.a, 705f), true, true)), vec3<bool>(false, true, all(vec3<bool>(false, true, false)) & true));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    global0 = array<vec4<bool>, 4>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 10u)];
    var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(var_2.a.x), -1i, -1i), -var_2.a, var_2.a) & -_wgslsmith_sub_vec3_i32(var_1.a >> (vec3<u32>(4294967295u, var_1.b, 0u) % vec3<u32>(32u)), vec3<i32>(-4914i, -36702i, var_2.a.x) << (vec3<u32>(0u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_clamp_u32(var_2.b, 29504u, countOneBits(~u_input.a)));
    var_1 = global1[_wgslsmith_index_u32(var_1.b, 10u)];
    let var_3 = global1[_wgslsmith_index_u32(u_input.a, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-291f)), 679f), ~vec4<u32>(~(~var_1.b), 40906u, ~var_2.b, 40862u), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 0u)), 1u) << (select(~_wgslsmith_add_vec2_u32(vec2<u32>(54811u, 40711u), vec2<u32>(0u, var_1.b)), vec2<u32>(u_input.a >> (var_2.b % 32u), ~u_input.a), any(!vec3<bool>(var_0.x, var_0.x, true))) % vec2<u32>(32u)), ~(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)) >> ((firstLeadingBit(vec3<u32>(7731u, u_input.a, var_2.b)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_3.b, var_2.b, var_1.b), vec3<u32>(var_3.b, var_1.b, 1u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1435f))) * _wgslsmith_f_op_f32(f32(-1f) * -340f))));
}

