struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 26>;

var<private> global2: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(563f, -1383f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = Struct_1(firstLeadingBit(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, global0.a.x, 32523u), firstTrailingBit(reverseBits(u_input.a.x)), global0.a.x)), -u_input.c, vec2<u32>(max(0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), select(~30021u, 1u, !arg_1)), u_input.a, _wgslsmith_sub_vec4_i32(global0.e, select(max(-global0.e, vec4<i32>(-2147483647i, u_input.c.x, 1i, u_input.b.x) | vec4<i32>(1i, 1i, -11760i, u_input.b.x)), ~(global0.e << (vec4<u32>(48049u, global0.a.x, u_input.a.x, 9760u) % vec4<u32>(32u))), _wgslsmith_clamp_i32(-2147483647i, global0.e.x, global0.e.x) < -5962i)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-764f)), _wgslsmith_f_op_f32(-1410f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))));
    var var_3 = firstTrailingBit(_wgslsmith_add_vec3_u32(~(vec3<u32>(16874u, u_input.a.x, u_input.a.x) | vec3<u32>(20716u, 1u, var_0.d.x)) >> (vec3<u32>(u_input.a.x, ~98728u, ~var_0.d.x) % vec3<u32>(32u)), var_0.d));
    global2 = array<vec2<f32>, 1>();
    return var_3.x;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~41314u, 26u)];
    global0 = global1[_wgslsmith_index_u32(~func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1004f)), _wgslsmith_f_op_f32(-arg_0.x))), 1u >= var_0.d.x, 1000f), 26u)];
    global1 = array<Struct_1, 26>();
    var var_1 = 53389u;
    var var_2 = -1366f;
    return select(global0.a, u_input.a, all(!vec4<bool>(true, true, -525f >= arg_0.x, false)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(abs(9864u), 1u)], _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1251f, -1933f)))))).zx, vec2<u32>(~u_input.a.x, 4294967295u));
    global2 = array<vec2<f32>, 1>();
    global0 = arg_2;
    global2 = array<vec2<f32>, 1>();
    global2 = array<vec2<f32>, 1>();
    return u_input.c.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: i32) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1036f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1205f))))), -1530f));
    var var_1 = _wgslsmith_add_i32(-reverseBits(~1022i) & firstTrailingBit(arg_1.x), abs(~(-41268i)) << (1u % 32u));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-975f))))) * _wgslsmith_f_op_f32(ceil(464f)));
    global2 = array<vec2<f32>, 1>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(618f))), _wgslsmith_f_op_f32(f32(-1f) * -1537f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-351f, -541f)), 1f, true)))));
    return vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1473f)) + _wgslsmith_div_f32(-248f, 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(115f, 1871f, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1778f * _wgslsmith_f_op_f32(floor(-502f))) + 1f)));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_5(vec2<u32>(~10958u, u_input.a.x), vec2<i32>(_wgslsmith_clamp_i32(-1i, global0.e.x, u_input.c.x), i32(-1i) * -3976i), func_4(func_2(vec2<f32>(-644f, 390f)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), global1[_wgslsmith_index_u32(u_input.a.x, 26u)]))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1662f, -686f))), _wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(f32(-1f) * -1232f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(174f, 682f, 839f) + _wgslsmith_f_op_vec3_f32(func_5(u_input.a.xz, vec2<i32>(u_input.c.x, global0.b.x), u_input.c.x)))))));
    let var_1 = firstLeadingBit(global0.e.xxz);
    global1 = array<Struct_1, 26>();
    let var_2 = global1[_wgslsmith_index_u32(0u, 26u)];
    var var_3 = global1[_wgslsmith_index_u32(~abs(~max(_wgslsmith_mod_u32(56579u, u_input.a.x), firstLeadingBit(global0.a.x))), 26u)];
    return firstLeadingBit(countOneBits(u_input.a.x));
}

fn func_6(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 26>();
    let var_0 = vec2<u32>(46073u, ~45445u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(max(arg_0, arg_0)))));
    global2 = array<vec2<f32>, 1>();
    var var_2 = true;
    return ~(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 1>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(847f, 269f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-314f - 1321f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~func_6(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(704f, 475f, 2271f, -1016f))), -198f, global1[_wgslsmith_index_u32(global0.a.x, 26u)], global1[_wgslsmith_index_u32(func_1(), 26u)])) | u_input.a.x, 26u)];
    var var_2 = Struct_1(var_1.a, -select(vec2<i32>(~var_1.b.x, 36051i), vec2<i32>(var_1.e.x & 0i, ~(-1i)), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), vec2<u32>(global0.c.x, 1u) << (~(~u_input.a.zx) % vec2<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, (global0.c.x << (var_1.a.x % 32u)) & abs(global0.a.x)), ~global0.c.x, abs(var_1.a.x)), countOneBits(-min(var_1.e, global0.e)));
    var var_3 = global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~var_2.c.x, 1u) >> (((min(var_2.d.x, 30466u) >> (~var_2.d.x % 32u)) | u_input.a.x) % 32u)), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-337f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(805f - -1000f))) - _wgslsmith_f_op_f32(select(-1451f, _wgslsmith_f_op_f32(sign(-417f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(153f, -195f))) + -301f)));
}

