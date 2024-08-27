struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27>;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-965f, 581f), vec2<i32>(0i, 0i));

var<private> global3: u32 = 1u;

var<private> global4: Struct_1 = Struct_1(vec2<f32>(796f, -683f), vec2<i32>(0i, i32(-2147483648)));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> f32 {
    global1 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x ^ 4294967295u, ~u_input.a.x), max(min(vec4<u32>(u_input.a.x, u_input.a.x, 84603u, 0u), vec4<u32>(1u, u_input.a.x, 57640u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(28756u, u_input.a.x, u_input.a.x, 1u), vec4<u32>(1u, 1u, 1u, u_input.a.x))) << (vec4<u32>(~0u, firstLeadingBit(91454u), 27305u, u_input.a.x) % vec4<u32>(32u)));
    var var_0 = abs(~firstTrailingBit(~u_input.a.x));
    let var_1 = Struct_3(2147483647i, arg_0.b);
    var var_2 = -597f;
    var_2 = _wgslsmith_f_op_f32(trunc(global4.a.x));
    return _wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-699f, _wgslsmith_f_op_f32(-arg_0.b.a.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global4.a.x))) - _wgslsmith_f_op_f32(step(135f, -612f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global4 = arg_0;
    global2 = arg_0;
    var var_0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(-(~global0[_wgslsmith_index_u32(1u, 27u)])), vec3<i32>(select(-global2.b.x, -2147483647i, all(vec4<bool>(false, true, false, false))), global2.b.x, _wgslsmith_mod_i32(-4500i, reverseBits(arg_0.b.x))) ^ global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 43961u), 27u)]);
    let var_1 = false;
    var var_2 = vec2<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.b.x, Struct_2(arg_0)), var_1, global2.b.x)) == _wgslsmith_f_op_f32(1381f + -1060f), true, true != var_1)), var_1);
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = -806f;
    let var_1 = _wgslsmith_f_op_f32(ceil(global4.a.x));
    var_0 = global4.a.x;
    global4 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, -116f))), global4.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global2.a.x, var_1) + vec3<f32>(var_1, -833f, -322f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, global4.a.x, global2.a.x)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, var_1, -1771f) - vec3<f32>(global4.a.x, -157f, -513f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1940f, 826f, global2.a.x))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(604f, global2.a.x, global2.a.x), vec3<f32>(-994f, 821f, global2.a.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.a.x, var_1, global2.a.x)))) + vec3<f32>(1000f, -414f, 240f))));
    return Struct_2(func_2(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.xx), abs(global4.b)), _wgslsmith_f_op_vec3_f32(-var_2)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1532f, var_2.x, var_2.x), var_2)), _wgslsmith_f_op_vec3_f32(select(var_2, var_2, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), vec3<f32>(global2.a.x, _wgslsmith_f_op_f32(step(-864f, -150f)), 172f), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true))))));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    global4 = func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(func_1().a.b, ~global2.b), global2.b & (arg_1.b.a.b ^ vec2<i32>(-41562i, -2147483647i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x + 547f)))));
    global3 = reverseBits(u_input.a.x);
    var var_0 = func_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, -452f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(783f, arg_1.b.a.a.x) * vec2<f32>(-1095f, 1691f)))), abs(global4.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.a.x, arg_1.b.a.a.x, 328f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.a.x, 1000f, -2308f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(895f, global2.a.x, global2.a.x), vec3<f32>(arg_1.b.a.a.x, -388f, global4.a.x))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.a.a.x), _wgslsmith_f_op_f32(-273f * arg_1.b.a.a.x), _wgslsmith_f_op_f32(-arg_1.b.a.a.x))))).a;
    global1 = 1u;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1().a.a.x, var_0.x));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_add_u32(1u, ~u_input.a.x) & max((1u >> (u_input.a.x % 32u)) | u_input.a.x, ~abs(u_input.a.x)), Struct_3(-1i, func_1()));
    global0 = array<vec3<i32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(global0[_wgslsmith_index_u32(~(~12912u), 27u)], -global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 27u)], vec3<i32>(firstTrailingBit(1i), 16028i, ~(-2147483647i))), vec3<i32>(0i, global2.b.x, _wgslsmith_add_i32(-16767i, global4.b.x) >> (~u_input.a.x % 32u))), reverseBits(~32989u));
}

