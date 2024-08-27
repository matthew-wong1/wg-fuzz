struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<u32>, 9>;

var<private> global2: array<i32, 19> = array<i32, 19>(0i, i32(-2147483648), -26814i, -46845i, -42797i, 23792i, i32(-2147483648), 33633i, 8416i, -1i, 1i, -1i, 11454i, 1i, 2512i, 2147483647i, 0i, 2147483647i, i32(-2147483648));

var<private> global3: array<vec4<i32>, 1>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>) -> u32 {
    global2 = array<i32, 19>();
    global1 = array<vec4<u32>, 9>();
    global0 = ~vec2<u32>(u_input.d, u_input.a.x << (~global0.x % 32u));
    global0 = u_input.a.yy;
    global0 = firstTrailingBit(u_input.a.zz);
    return select(global0.x, ~u_input.d, true);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    global1 = array<vec4<u32>, 9>();
    var var_0 = (abs(-33758i) >> (~(~(global0.x ^ 50387u)) % 32u)) > _wgslsmith_sub_i32(~58186i, -(~abs(228i)));
    var var_1 = Struct_3(reverseBits(global1[_wgslsmith_index_u32(1u | firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), 9u)]), select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, false, true)), any(vec4<bool>(false, false, false, true)))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), true)), ~_wgslsmith_div_u32(func_3(Struct_4(vec3<f32>(-1000f, -816f, 1311f), arg_0), vec4<i32>(u_input.c, 1i, u_input.b.x, u_input.b.x)), ~(~26572u)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(759f, 2388f, false))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, 941f, -807f, 1306f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1332f, 928f, -532f, arg_0.a), vec4<f32>(arg_0.a, arg_0.a, -748f, -393f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -2047f, 168f, -511f) - vec4<f32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 329f, 1104f, arg_0.a) * vec4<f32>(-1457f, -850f, -1087f, 101f)))), select(-max(u_input.b, vec3<i32>(-13011i, -27872i, 0i)), firstTrailingBit(vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(36449u, 19u)], 5045i)), all(vec2<bool>(false, true)))), -(_wgslsmith_clamp_i32(1i, 1i, _wgslsmith_mult_i32(36501i, 1i)) << (func_3(Struct_4(vec3<f32>(-1114f, arg_0.a, arg_0.a), arg_0), global3[_wgslsmith_index_u32(abs(global0.x), 1u)]) % 32u)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(589f, -1000f, arg_0.a)))) + var_1.d.b.wyy), arg_0);
    var var_3 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(trunc(-1489f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, var_1.d.a)) - _wgslsmith_f_op_f32(select(var_2.a.x, arg_0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(trunc(var_1.d.b.x))) - arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -254f)), 1657f)), -_wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 19u)], global2[_wgslsmith_index_u32(var_1.a.x, 19u)], u_input.c)), select(u_input.b, abs(u_input.b), false)));
    return _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.xz, vec2<u32>(reverseBits(~0u), var_1.c)), var_1.a.yw);
}

fn func_1(arg_0: vec3<bool>) -> bool {
    global0 = _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(1u & u_input.d, global0.x)), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(global0.x, u_input.d | 1u)), _wgslsmith_div_vec2_u32(~func_2(Struct_2(-462f)), u_input.a.yy), abs(~(~vec2<u32>(global0.x, u_input.a.x)))));
    let var_0 = u_input.c;
    var var_1 = global3[_wgslsmith_index_u32(~global0.x, 1u)];
    return !(_wgslsmith_div_u32(0u, ~u_input.a.x) < u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(func_1(vec3<bool>(false, false, false)) | true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_1 = _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 30467i, 1i, -2147483647i) ^ (vec4<i32>(1i, u_input.b.x, global2[_wgslsmith_index_u32(32022u, 19u)], u_input.b.x) ^ vec4<i32>(global2[_wgslsmith_index_u32(u_input.d, 19u)], global2[_wgslsmith_index_u32(6515u, 19u)], -50862i, -2147483647i)), ~(-global3[_wgslsmith_index_u32(u_input.d, 1u)]))), 1i);
    global1 = array<vec4<u32>, 9>();
    global0 = ~vec2<u32>(78152u, ~_wgslsmith_dot_vec2_u32(abs(u_input.a.yy), u_input.a.yy));
    global0 = ~(~vec2<u32>(func_2(Struct_2(2327f)).x, 66855u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1161f, -547f, false)) * _wgslsmith_f_op_f32(ceil(980f))), _wgslsmith_f_op_f32(max(-289f, _wgslsmith_f_op_f32(1123f * -600f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(121f, 1018f)))))), global3[_wgslsmith_index_u32(0u, 1u)]);
}

