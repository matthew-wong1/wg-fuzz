struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(2147483647i, 1i, -15560i), vec3<i32>(22989i, 0i, 2147483647i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(2147483647i, -16417i, 1i), vec3<i32>(-18925i, -17304i, 45593i), vec3<i32>(-1i, 39008i, 27156i), vec3<i32>(i32(-2147483648), 12988i, 82343i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-1i, -15011i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), -33397i), vec3<i32>(-1i, 14963i, 2147483647i), vec3<i32>(1i, 1i, 3430i), vec3<i32>(0i, 1i, -57770i), vec3<i32>(41155i, -38215i, 0i), vec3<i32>(1i, 31724i, 2147483647i), vec3<i32>(32819i, -10948i, 2147483647i), vec3<i32>(-22593i, 25066i, 25510i), vec3<i32>(-5776i, -1i, -1i), vec3<i32>(22294i, i32(-2147483648), 2147483647i), vec3<i32>(-154i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, -23685i, -48560i), vec3<i32>(i32(-2147483648), 6628i, -33202i), vec3<i32>(33878i, i32(-2147483648), 1i), vec3<i32>(53099i, 1i, 2631i), vec3<i32>(-46565i, i32(-2147483648), 13567i), vec3<i32>(0i, -1i, -1i), vec3<i32>(5318i, -23193i, 0i), vec3<i32>(25278i, i32(-2147483648), 2147483647i), vec3<i32>(-10665i, i32(-2147483648), -21401i));

var<private> global3: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(2147483647i, 2147483647i, -44567i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), -39989i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(-1i, 1800i, -1i));

var<private> global4: array<Struct_1, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    return ~u_input.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = global4[_wgslsmith_index_u32(arg_3.a.x, 23u)];
    var var_1 = _wgslsmith_mod_vec4_u32(~min(~vec4<u32>(72532u, arg_0.a.x, 4294967295u, arg_1.x), ~vec4<u32>(1u, 1u, 24355u, var_0.a.x)) >> ((countOneBits(abs(vec4<u32>(var_0.a.x, 32096u, arg_1.x, 24244u))) | vec4<u32>(~var_0.a.x, var_0.a.x, 25301u, _wgslsmith_div_u32(110128u, 1u))) % vec4<u32>(32u)), vec4<u32>(~(_wgslsmith_mod_u32(var_0.a.x, arg_0.a.x) | arg_1.x), _wgslsmith_add_u32(arg_1.x, abs(1u)), _wgslsmith_mult_u32(4294967295u, arg_3.a.x), _wgslsmith_mod_u32(arg_1.x, arg_0.a.x)));
    global0 = countOneBits(_wgslsmith_sub_i32(0i, func_2()));
    global1 = array<vec4<bool>, 9>();
    global3 = array<vec3<i32>, 5>();
    return var_0.b.yyy;
}

fn func_3() -> vec2<f32> {
    var var_0 = global4[_wgslsmith_index_u32(63702u, 23u)];
    global2 = array<vec3<i32>, 29>();
    global0 = 31836i >> (~(var_0.a.x >> ((abs(var_0.a.x) << (_wgslsmith_mod_u32(27798u, var_0.a.x) % 32u)) % 32u)) % 32u);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~min(vec3<i32>(1i, 1i, 2147483647i), ~global3[_wgslsmith_index_u32(var_0.a.x, 5u)]), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a.x >> (var_0.a.x % 32u), -6293i), -global3[_wgslsmith_index_u32(var_0.a.x >> (3252u % 32u), 5u)])), ~(var_0.d | u_input.a.x));
    var var_2 = global4[_wgslsmith_index_u32(var_0.a.x, 23u)];
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, 752f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-559f, 469f) * vec2<f32>(-1000f, 371f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, 1000f))), false))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 2055f), vec2<f32>(-569f, -1385f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(805f, 510f) * vec2<f32>(1000f, -269f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(730f, -364f) + _wgslsmith_div_vec2_f32(vec2<f32>(366f, -853f), vec2<f32>(-352f, -781f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-252f * -205f))), 1147f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 29>();
    global3 = array<vec3<i32>, 5>();
    var var_0 = vec3<bool>(~(-27333i) < u_input.a.x, true || !all(func_1(Struct_1(vec3<u32>(16588u, 42162u, 0u), global1[_wgslsmith_index_u32(0u, 9u)], false, 0i), vec3<u32>(1u, 0u, 13130u), global1[_wgslsmith_index_u32(0u, 9u)], Struct_1(vec3<u32>(1u, 1u, 0u), vec4<bool>(false, false, false, true), false, 0i))), !(_wgslsmith_f_op_f32(trunc(-575f)) != -1379f) & !any(vec2<bool>(true, true)));
    global4 = array<Struct_1, 23>();
    var_0 = !vec3<bool>(true, any(!(!vec3<bool>(true, true, var_0.x))), true);
    global4 = array<Struct_1, 23>();
    global2 = array<vec3<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_3()), ~vec4<i32>(_wgslsmith_mod_i32(1i, -27832i), firstLeadingBit(1i), u_input.a.x, ~(-u_input.a.x)));
}

