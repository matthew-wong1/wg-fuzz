struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), vec3<i32>(1i, -26846i, 2147483647i), vec3<i32>(2147483647i, -14638i, i32(-2147483648)), vec3<i32>(-78043i, 0i, 2147483647i), vec3<i32>(-37304i, i32(-2147483648), 28347i), vec3<i32>(-31352i, 1i, -26701i), vec3<i32>(-35343i, 1i, -845i), vec3<i32>(i32(-2147483648), 22263i, -49092i), vec3<i32>(89793i, 0i, 9492i), vec3<i32>(3338i, 63679i, 10155i), vec3<i32>(2147483647i, -1i, 32685i), vec3<i32>(-2471i, -4219i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 25119i), vec3<i32>(-27948i, i32(-2147483648), -1i), vec3<i32>(-92849i, i32(-2147483648), -45469i), vec3<i32>(23823i, -16383i, 20483i), vec3<i32>(0i, -14401i, -1i), vec3<i32>(-444i, -1i, -1i), vec3<i32>(2147483647i, -1i, -44615i), vec3<i32>(32047i, -46357i, -8980i));

var<private> global1: i32;

var<private> global2: array<f32, 5> = array<f32, 5>(397f, 159f, 1490f, 705f, -492f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_sub_i32(countOneBits(-2147483647i), abs(-15610i));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 5u)], 863f), global2[_wgslsmith_index_u32(~u_input.b, 5u)]));
    var var_1 = u_input.a;
    var var_2 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c, 0u), ~44375u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), u_input.d.zwz));
    let var_3 = true;
    return firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~14931u), _wgslsmith_mod_u32(~1u, 1u), _wgslsmith_div_u32(4294967295u, ~0u), 46785u), ~u_input.d));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x) | vec4<i32>(-33647i, 2147483647i, 2051i, u_input.a.x), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i)) >> (~u_input.d % vec4<u32>(32u))), -(0i << (arg_1 % 32u))), u_input.a.x);
    global2 = array<f32, 5>();
    var_0 = u_input.a;
    var_0 = u_input.a;
    let var_1 = Struct_1(u_input.b, firstLeadingBit(vec3<u32>(arg_1, func_3(), ~46513u)), -(~(i32(-1i) * -2147483647i)), u_input.d.ww);
    return var_1;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-773f, 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * global2[_wgslsmith_index_u32(~1u, 5u)]));
    var var_1 = func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_0) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40235u, 5u)])), -419f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(175u, 5u)] - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 5u)] - -1640f))), 33687u ^ reverseBits(u_input.c));
    var var_2 = global0[_wgslsmith_index_u32(var_1.d.x, 20u)];
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(376f, -581f) + vec2<f32>(arg_0, -110f)))))), u_input.b);
    global1 = arg_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-621f + 1341f) + arg_0) >= arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !any(select(vec4<bool>(u_input.a.x <= 45068i, u_input.b > 1u, true, true), vec4<bool>(select(true, false, false), any(vec4<bool>(false, false, true, false)), false, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false))));
    let var_1 = Struct_1(~49300u, ~firstLeadingBit(u_input.d.yww), max(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, -4261i), global0[_wgslsmith_index_u32(u_input.c, 20u)])), -1i), vec2<u32>(u_input.d.x, u_input.b));
    let var_2 = !(false & !func_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(56244u, 5u)], global2[_wgslsmith_index_u32(var_1.a, 5u)]), 2147483647i, true));
    var_0 = true;
    var var_3 = u_input.b;
    var var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(~_wgslsmith_div_i32(39852i, u_input.a.x)), -2147483647i, var_1.c), ~(vec3<i32>(abs(2147483647i), abs(-83133i), firstTrailingBit(63101i)) >> (vec3<u32>(~12508u, ~17330u, 93890u << (1u % 32u)) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(~var_1.a, 20u)] | select(select(-global0[_wgslsmith_index_u32(var_1.b.x, 20u)], vec3<i32>(var_1.c, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), ~select(vec3<i32>(2147483647i, var_1.c, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, -11736i), var_2), !select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, var_2, var_2), var_2)));
    var var_5 = Struct_2(select(!var_2, true, true), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_2, var_2, var_2), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(72342u, 5u)], 101f, var_2)))), _wgslsmith_f_op_f32(round(1673f)), 811f)), select(select(vec4<bool>(true, all(vec3<bool>(var_2, var_2, true)), var_2 || true, var_1.d.x < 3122u), select(!vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(false, true, var_2, false), var_4.x < var_4.x), all(!vec4<bool>(var_2, false, true, true))), select(vec4<bool>(var_2, all(vec4<bool>(false, var_2, var_2, var_2)), global2[_wgslsmith_index_u32(var_1.b.x, 5u)] == -2143f, true), select(select(vec4<bool>(true, false, var_2, var_2), vec4<bool>(var_2, true, false, var_2), true), select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, var_2, var_2), var_2), any(vec2<bool>(true, var_2))), vec4<bool>(true, var_2, var_2 | true, select(var_2, false, var_2))), !all(select(vec3<bool>(var_2, false, false), vec3<bool>(var_2, false, var_2), vec3<bool>(false, true, var_2)))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(10489u, 5u)] * 1000f))), -818f), u_input.a, var_4.xx, var_1.d.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_5.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, -1308f, -834f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(468f)), global2[_wgslsmith_index_u32(u_input.d.x, 5u)], 1373f))));
}

