struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: vec2<f32> = vec2<f32>(602f, -197f);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> u32 {
    global0 = array<bool, 7>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(297f + _wgslsmith_f_op_f32(f32(-1f) * -1799f))))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, 160f) * vec2<f32>(arg_0.c, -716f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1411f);
    var var_1 = 0u;
    var var_2 = Struct_3(vec4<bool>((2147483647i ^ _wgslsmith_div_i32(u_input.b.x, -22563i)) >= ((i32(-1i) * -7893i) & u_input.a.x), true, true, global0[_wgslsmith_index_u32(72724u, 7u)] || false), Struct_2(arg_0.b.x, ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.b, vec3<u32>(96005u, u_input.c, 1u)), firstLeadingBit(arg_0.b)), arg_0.c));
    return 4792u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_3) -> vec2<f32> {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-903f)), 251f);
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b.c - -460f) * global1.x)), _wgslsmith_f_op_f32(arg_0.c + arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(arg_3.b.c))));
    var var_0 = _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i) * -vec2<i32>(0i, 0i), vec2<i32>(-1i) * -u_input.b, vec2<bool>(true, arg_1.x)) << (arg_0.b.xy % vec2<u32>(32u)), min(~firstTrailingBit(~vec2<i32>(41883i, u_input.b.x)), vec2<i32>(~u_input.b.x ^ (6576i << (1u % 32u)), _wgslsmith_sub_i32(u_input.a.x, -23098i))), vec2<i32>(-u_input.b.x | (i32(-1i) * -40116i), u_input.b.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-330f))) == 1014f;
    let var_2 = true;
    return _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_0.c)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, 1026f)))))));
}

fn func_2() -> bool {
    global0 = array<bool, 7>();
    global1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_mult_u32(func_3(Struct_2(2819u, vec3<u32>(0u, u_input.c, u_input.c), -626f), select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<bool>(true, false), false)), u_input.c), _wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c) >> (vec3<u32>(1u, u_input.c, 5518u) % vec3<u32>(32u)), select(vec3<u32>(28263u, 8458u, u_input.c), vec3<u32>(u_input.c, 0u, u_input.c), global0[_wgslsmith_index_u32(39467u, 7u)]), ~vec3<u32>(u_input.c, u_input.c, 1u))), global1.x), vec3<bool>(false | global0[_wgslsmith_index_u32(~u_input.c, 7u)], true, any(vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(43243u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], true)), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 7u)], true, global0[_wgslsmith_index_u32(reverseBits(u_input.c), 7u)]))), _wgslsmith_f_op_f32(-global1.x), Struct_3(select(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(0u, 7u)], false), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c, 7u)], false), global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<bool>(true, true, !global0[_wgslsmith_index_u32(51462u, 7u)], global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 7u)]), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 7u)], false, false, false))), Struct_2(1u, ~vec3<u32>(4294967295u, 1145u, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(864f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(177f, global1.x, global0[_wgslsmith_index_u32(3861u, 7u)]))), 116f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1521f * 1306f), global1.x))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(min(-272f, 2166f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(385f + -813f) * -936f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x))));
    let var_0 = Struct_5(75147u, any(vec2<bool>(global0[_wgslsmith_index_u32(42976u, 7u)], !all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 7u)], true)))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c & u_input.c, ~0u, u_input.c, 4294967295u) >> ((abs(vec4<u32>(0u, 13439u, u_input.c, u_input.c)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 76860u, u_input.c, u_input.c), vec4<u32>(4294967295u, u_input.c, 0u, u_input.c))) % vec4<u32>(32u)), abs(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, u_input.c, 0u, 81639u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~vec4<u32>(1u, 1u, 1u, u_input.c)))), !select(!vec3<bool>(global0[_wgslsmith_index_u32(60101u, 7u)], true, false), vec3<bool>(all(vec2<bool>(true, false)), global1.x >= global1.x, any(vec4<bool>(false, false, false, true))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 0u, 0u, 12202u), ~vec4<u32>(4294967295u, 36507u, u_input.c, 48176u)), 7u)]));
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))))));
    return all(vec3<bool>(abs(_wgslsmith_mult_i32(u_input.a.x, 0i)) < countOneBits(-1i), all(vec2<bool>(global0[_wgslsmith_index_u32(~0u, 7u)], true)), !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~69031u, 43568u >> (var_0.c % 32u)), 7u)]));
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = Struct_2(countOneBits(arg_0.x) & 18197u, vec3<u32>(_wgslsmith_mod_u32(~4294967295u, _wgslsmith_mult_u32(0u, abs(u_input.c))), 0u, u_input.c), 1990f);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1037f - 100f), global1.x))));
    let var_1 = vec2<bool>(any(vec4<bool>(func_2(), global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(arg_0.x, 7u)], all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(23443u, 7u)])))), select(u_input.a.x, u_input.b.x, false) < 1i);
    let var_2 = u_input.a.x;
    var var_3 = firstTrailingBit(vec2<u32>(~_wgslsmith_div_u32(53326u, 4702u), arg_0.x));
    return _wgslsmith_f_op_f32(exp2(var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(u_input.c, !all(!select(vec3<bool>(global0[_wgslsmith_index_u32(41620u, 7u)], true, global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(15599u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(23477u, 7u)], global0[_wgslsmith_index_u32(48334u, 7u)]))), 0u, !(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(37251u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)], false), vec3<bool>(global0[_wgslsmith_index_u32(29238u, 7u)], false, global0[_wgslsmith_index_u32(u_input.c, 7u)]), global0[_wgslsmith_index_u32(u_input.c, 7u)]))));
    var var_1 = vec3<bool>(306f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~vec2<u32>(u_input.c, var_0.a)))), true, min(_wgslsmith_add_i32(abs(2147483647i), -274i), u_input.b.x) == u_input.a.x);
    global0 = array<bool, 7>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -686f) * vec2<f32>(-475f, 1811f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1801f, -138f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, -1978f))))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(872f, global1.x), vec2<f32>(-462f, global1.x)) - vec2<f32>(global1.x, -620f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-642f, global1.x))))));
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec2<u32>(_wgslsmith_add_u32(0u, 78127u), u_input.c)), var_0.a ^ u_input.c);
}

