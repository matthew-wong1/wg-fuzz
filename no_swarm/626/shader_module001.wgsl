struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<f32, 16>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global3: vec2<f32>;

var<private> global4: array<bool, 31> = array<bool, 31>(true, true, false, true, true, true, false, true, true, true, true, true, true, false, false, true, true, false, true, true, false, false, true, false, false, false, false, true, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    global1 = array<f32, 16>();
    return 0u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(func_3() | (u_input.a.x >> (u_input.a.x % 32u)), 26u)];
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-453f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(global3.x + -720f)))), _wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 242f) * 157f) <= global3.x))));
    global2 = array<Struct_1, 26>();
    let var_2 = 1i;
    var var_3 = -(~min(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(27111u, 19u)], 1i, u_input.c.x), vec3<i32>(16264i, var_2, 5679i)), 0i)) | abs(-firstLeadingBit(u_input.d));
    return Struct_2(Struct_1((u_input.a.x >> (u_input.a.x % 32u)) >= u_input.a.x), false);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = u_input.a.x | ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 51890u), ~49173u), u_input.a);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.x), -319f, _wgslsmith_f_op_f32(exp2(arg_0.x)))) - arg_0));
    return 93628u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(func_1(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstLeadingBit(67150u), 16u)]), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(188f - -1624f), -1016f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.x))))), 26u)], global4[_wgslsmith_index_u32(~firstLeadingBit(~(~108281u)), 31u)]);
    var_0 = Struct_2(var_0.a, all(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 19u)] <= select(-10944i, 12607i, false), var_0.b)));
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(802f, global3.x)))) * vec2<f32>(_wgslsmith_f_op_f32(max(-731f, 225f)), _wgslsmith_f_op_f32(sign(global3.x)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(251f + -1004f), _wgslsmith_f_op_f32(640f - global1[_wgslsmith_index_u32(55146u, 16u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) + _wgslsmith_f_op_f32(-global3.x))) * vec2<f32>(1779f, _wgslsmith_f_op_f32(f32(-1f) * -209f))));
    global4 = array<bool, 31>();
    let var_1 = -1i >= -_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1493i, -1i, u_input.b.x), select(vec3<i32>(-4396i, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.b.x), vec3<i32>(1i, -2147483647i, u_input.d), false)), _wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), u_input.c.x));
    let var_2 = func_2(vec3<f32>(1659f, _wgslsmith_f_op_f32(-258f - 300f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - -1175f), -1168f)));
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a.x, 26u)];
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global3.x, global1[_wgslsmith_index_u32(38241u, 16u)]) - _wgslsmith_div_vec3_f32(vec3<f32>(-605f, global3.x, global3.x), vec3<f32>(-1193f, global3.x, 442f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global3.x)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 1042f, 273f))), global4[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 31u)] & true))));
    var var_4 = countOneBits(vec4<i32>(u_input.d, u_input.d, _wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(2147483647i), global0[_wgslsmith_index_u32(u_input.a.x & 4516u, 19u)]) >> (~(~16297u) % 32u), -_wgslsmith_add_i32(50930i, global0[_wgslsmith_index_u32(max(52557u, u_input.a.x), 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], select(~(~(~vec4<u32>(1u, u_input.a.x, 31300u, u_input.a.x))), ~(~vec4<u32>(4294967295u, 4294967295u, 16801u, u_input.a.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 86361u, 42615u, 42368u), vec4<u32>(1u, u_input.a.x, 59789u, u_input.a.x)) % vec4<u32>(32u))), select(!(u_input.a.x > 0u), var_0.a.a, var_3.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-479f, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.x, -1526f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1931f, global3.x) + vec2<f32>(570f, global1[_wgslsmith_index_u32(0u, 16u)])))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)])))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 16u)], global3.x) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], -1523f))))), !(!select(vec2<bool>(global4[_wgslsmith_index_u32(23148u, 31u)], global4[_wgslsmith_index_u32(36326u, 31u)]), vec2<bool>(var_3.a, false), vec2<bool>(true, var_0.b))))));
}

