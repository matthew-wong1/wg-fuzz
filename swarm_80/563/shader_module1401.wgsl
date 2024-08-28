struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_0))))), true);
    var var_1 = Struct_4(!(!(!vec4<bool>(var_0.b, false, var_0.b, true))));
    global0 = array<vec2<bool>, 26>();
    var var_2 = _wgslsmith_f_op_f32(max(var_0.a.x, 181f));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-var_0.a.x))), var_0.a.x));
}

fn func_4(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = ~_wgslsmith_mult_vec4_i32(countOneBits(firstLeadingBit(~vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b))), countOneBits(vec4<i32>(firstTrailingBit(1i), -2147483647i, abs(u_input.b), firstLeadingBit(u_input.b))));
    let var_1 = select(!vec3<bool>(true, all(vec3<bool>(true, false, true)), !all(global0[_wgslsmith_index_u32(0u, 26u)])), select(vec3<bool>(false, any(vec2<bool>(true, false)), !any(vec4<bool>(true, true, true, false))), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), all(!(!global0[_wgslsmith_index_u32(15501u, 26u)]))), false);
    var var_2 = _wgslsmith_add_i32(select(min(~(~var_0.x), u_input.b), reverseBits(countOneBits(u_input.b)), any(var_1.xy)), _wgslsmith_mult_i32(var_0.x, _wgslsmith_mod_i32(-2147483647i | u_input.b, u_input.b)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(707f, _wgslsmith_f_op_f32(sign(arg_1)), var_1.x))), _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(-arg_1));
    var_0 = vec4<i32>(24563i, ~(-1i), reverseBits(_wgslsmith_mult_i32(~(-1i), ~(-1i))), (-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, u_input.b, 2117i)) ^ ~u_input.b) | -35048i);
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> i32 {
    var var_0 = vec2<f32>(-258f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(f32(-1f) * -1009f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_1 = vec4<i32>(-35897i, -31185i, reverseBits(_wgslsmith_mult_i32(2147483647i, -(u_input.b >> (u_input.d % 32u)))), 1i);
    let var_2 = 0u;
    global0 = array<vec2<bool>, 26>();
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(203f, -835f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 996f) + 197f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(round(var_0.x)), -929f), vec3<f32>(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(-var_0.x), 1051f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1471f, 673f, _wgslsmith_f_op_f32(abs(1314f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1462f) + vec3<f32>(233f, var_0.x, 2032f))))));
    return _wgslsmith_dot_vec3_i32(-_wgslsmith_sub_vec3_i32(arg_1.yyz, vec3<i32>(i32(-1i) * -22245i, arg_1.x, ~var_1.x)), vec3<i32>(2147483647i & u_input.b, arg_1.x, _wgslsmith_add_i32(func_4(u_input.d, _wgslsmith_f_op_f32(func_3(var_3.x))), ~u_input.b)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_1(-2147483647i);
    var var_1 = u_input.b | u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, 548f, -151f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(845f, -308f, -1244f))))))));
    var_1 = 1i;
    var var_3 = -vec3<i32>(i32(-1i) * -8296i, _wgslsmith_clamp_i32(-u_input.b, 1i, u_input.b), _wgslsmith_clamp_i32(select(-32296i, 11533i, true), 1i, 1i)) ^ ~vec3<i32>(u_input.b, func_2(4294967295u, vec4<i32>(var_0.a, u_input.b, -33707i, -1i) | vec4<i32>(u_input.b, var_0.a, 2147483647i, -23162i)), ~firstTrailingBit(var_0.a));
    return vec2<u32>(u_input.c, _wgslsmith_mult_u32(40204u, 50783u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 26>();
    let var_0 = 0u;
    global0 = array<vec2<bool>, 26>();
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(25970u, 4294967295u), vec2<u32>(abs(var_0), _wgslsmith_dot_vec2_u32(func_1(), ~abs(u_input.a.yz))));
    let var_2 = 4294967295u & ~_wgslsmith_div_u32(max(u_input.c << (var_1.x % 32u), 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_0, u_input.a.x), u_input.a) >> (1u % 32u));
    global0 = array<vec2<bool>, 26>();
    var var_3 = Struct_1(-reverseBits(-(~u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-217f, -1225f)), vec2<f32>(-226f, 149f)) - vec2<f32>(_wgslsmith_f_op_f32(-531f + 900f), -1505f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1456f, 1262f)))))))), u_input.a, 1538f);
}

