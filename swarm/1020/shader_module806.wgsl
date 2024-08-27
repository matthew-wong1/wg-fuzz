struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: i32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = -52482i;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 25u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_0.x, 25u)])) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 25u)]))))));
    global1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(2147483647i, reverseBits(-18407i)), _wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, -11569i, 2147483647i), vec3<i32>(1873i, -2147483647i, 18868i)), ~vec3<i32>(42003i, 14508i, 19157i))), vec2<i32>(~(-_wgslsmith_sub_i32(39567i, 53656i)), -2147483647i));
    var var_2 = -3647i > _wgslsmith_dot_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-103835i, 46743i), vec2<i32>(-1i, 8185i)), 2147483647i << (u_input.a.x % 32u), 1i, -1i), vec4<i32>(0i, -2147483647i, 1i, 22387i));
    var var_3 = _wgslsmith_f_op_f32(-var_1.x);
    return select(min(vec3<i32>(0i, max(33128i, -2147483647i), -1i), firstTrailingBit(~vec3<i32>(1i, 1i, 1i))), vec3<i32>(_wgslsmith_mod_i32(0i, 1i), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(51600i, -1i, 2147483647i, -28332i), vec4<i32>(-2147483647i, -1i, 23673i, -35609i)), firstLeadingBit(vec4<i32>(-54170i, 2147483647i, -38719i, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 1i, -9163i), ~vec4<i32>(2147483647i, -24885i, -22288i, 0i)) ^ -1i), vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, true))), true, any(vec3<bool>(global0[_wgslsmith_index_u32(50876u, 25u)] == -691f, false, true))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = max(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, abs(-7915i)), -1658i), 2147483647i, -2147483647i, reverseBits(1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(1223i, 1i, 16871i, -1i), vec4<i32>(1i, 1i, 1i, 1i)) << (~(~vec4<u32>(23062u, 10749u, u_input.a.x, u_input.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 4794u, 60777u, u_input.a.x), vec4<u32>(9431u, 0u, u_input.a.x, 5968u), vec4<u32>(u_input.a.x, 43658u, u_input.a.x, 7029u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-arg_0));
    var var_2 = u_input.a.xz;
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(53566u, var_2.x), 65688u, ~(~var_2.x) << (firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(32915u, 4294967295u), 13065u, ~u_input.a.x)) % 32u), var_2.x);
    var var_4 = var_0.x;
    return Struct_1(func_3(vec2<u32>(113703u, max(4294967295u, u_input.a.x) & 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(select(var_2.x | 51155u, abs(4294967295u), arg_0.x == 2048f), 25u)] * var_1.x))));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 25u)])), arg_0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.b, global0[_wgslsmith_index_u32(u_input.a.x, 25u)], global0[_wgslsmith_index_u32(47648u, 25u)]))))))));
    let var_2 = -85294i;
    var var_3 = countOneBits(-vec4<i32>(-(-2147483647i >> (1u % 32u)), -firstLeadingBit(var_2), arg_0.a.x, var_2));
    let var_4 = reverseBits(-28744i);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-566f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2102f)))), _wgslsmith_f_op_f32(min(-1991f, _wgslsmith_f_op_f32(f32(-1f) * -1058f))))), _wgslsmith_f_op_f32(-879f * _wgslsmith_f_op_f32(abs(-337f)))));
}

fn func_1() -> u32 {
    var var_0 = -69867i;
    global0 = array<f32, 25>();
    var_0 = _wgslsmith_clamp_i32(-1i, -_wgslsmith_mult_i32(0i, -32394i), -17625i);
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 15470u), 25u)])) * _wgslsmith_div_f32(549f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 25u)])))), global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 25u)]) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 25u)], -777f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, -548f)), -1011f)) + _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-983f, -436f), vec2<f32>(264f, var_1.x))))))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 25u)]))))) + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(func_1(), 25u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-434f, 858f, false)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1425u, 25u)] * global0[_wgslsmith_index_u32(4294967295u, 25u)])))) * global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.a.x), 25u)]));
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, 480f, -(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -59844i), vec2<i32>(32291i, 654i)) ^ ~7977i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~(~u_input.a.x), 25u)])))));
}

