struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(71715u, 0u, 0u, 29867u, 79551u);

var<private> global1: vec4<i32>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 7>;

var<private> global4: array<vec4<bool>, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(abs(~(~36958u)), 7u)];
    let var_1 = !any(!vec3<bool>(any(vec2<bool>(false, false)), true, all(vec2<bool>(false, false))));
    global0 = array<u32, 5>();
    let var_2 = 6517i | ((~_wgslsmith_dot_vec3_i32(global1.xzz, arg_1) << (1u % 32u)) >> (arg_0 % 32u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)) + _wgslsmith_f_op_f32(f32(-1f) * -272f)) - _wgslsmith_f_op_f32(round(-285f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(step(-1364f, -235f)))))), 547f);
    return arg_1.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = global1.x;
    var_0 = -func_3(~_wgslsmith_clamp_u32(4294967295u, u_input.a.x, abs(u_input.a.x)), -min(global1.yxx, vec3<i32>(1i, global1.x, 1i)));
    var_0 = -global1.x;
    global4 = array<vec4<bool>, 28>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 619f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(883f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-884f, 436f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1862f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-151f, -1322f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1087f, -197f, true)))))));
    return Struct_1(min(-_wgslsmith_mod_vec2_i32(-global1.yx, global1.yw), ~firstTrailingBit(vec2<i32>(arg_0.a.x, -2147483647i)) >> ((firstTrailingBit(vec2<u32>(u_input.a.x, 17513u)) & _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(59662u, 4294967295u), vec2<u32>(u_input.a.x, 1u))) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global4 = array<vec4<bool>, 28>();
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = !vec2<bool>(!var_0.x, var_0.x);
    let var_2 = firstTrailingBit(select(_wgslsmith_sub_i32(arg_0.a.x, 2147483647i), 2147483647i >> (0u % 32u), true));
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(min(253f, -494f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-755f, -1400f)))) - 350f))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1319f, -429f)), var_3.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_3.x, var_3.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -1160f));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>) -> vec4<i32> {
    var var_0 = true;
    var var_1 = ~vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11023u, 5u)], 5u)], global0[_wgslsmith_index_u32(74762u, 5u)], 0u, u_input.a.x), vec4<u32>(0u, 0u, u_input.a.x, 11049u)), 1u), 4294967295u, 4294967295u, 10753u);
    global2 = _wgslsmith_f_op_f32(-343f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-583f, 135f), _wgslsmith_f_op_f32(round(664f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1056f, -703f), _wgslsmith_f_op_f32(round(-1291f))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-167f + 589f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1579f, -372f)) - _wgslsmith_f_op_f32(select(935f, -484f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-574f, -201f) - -571f) * _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, 0u), 7u)], func_2(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 7u)]))))));
    var_0 = true;
    return ~(~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(9114i, global1.x, global1.x, 22519i), vec4<i32>(-2147483647i, global1.x, -2147483647i, global1.x)) & vec4<i32>(global1.x, 0i, global1.x, global1.x), max(~vec4<i32>(global1.x, global1.x, -1i, global1.x), vec4<i32>(27057i, -2147483647i, global1.x, 1i))));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>) -> bool {
    global2 = -1494f;
    let var_0 = func_2(func_2(func_2(Struct_1(arg_2.zz))));
    var var_1 = -1044f;
    let var_2 = vec3<i32>(countOneBits(_wgslsmith_mod_i32(arg_2.x, 38531i)), global1.x, arg_0.x);
    global4 = array<vec4<bool>, 28>();
    return (firstTrailingBit(~(~u_input.a.x)) <= _wgslsmith_div_u32(global0[_wgslsmith_index_u32(countOneBits(9323u), 5u)], ~countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))) || (arg_1 || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<i32>(global1.x | reverseBits(-30377i), -38022i, global1.x), true, func_1(vec3<bool>(true, true, true), vec4<bool>(false, true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), !any(vec3<bool>(true, false, false)))));
    global0 = array<u32, 5>();
    let var_1 = func_2(Struct_1(vec2<i32>(global1.x, abs(global1.x))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(300f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(select(u_input.a.x, 4294967295u, true), 7u)], Struct_1(vec2<i32>(0i, var_1.a.x)))))) * 2341f);
    global0 = array<u32, 5>();
    global4 = array<vec4<bool>, 28>();
    let var_2 = vec3<bool>(true, any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(false, 0u <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(98696u, 5u)], 5u)]), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false)))), ~global0[_wgslsmith_index_u32(~1u, 5u)] <= ~(~(~global0[_wgslsmith_index_u32(u_input.a.x, 5u)])));
    var var_3 = func_2(Struct_1(_wgslsmith_add_vec2_i32(~(~vec2<i32>(-30411i, global1.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.x, global1.x), var_1.a) >> (vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(54598u, 17131u, 11511u, 0u)), ~vec4<u32>(46614u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], global0[_wgslsmith_index_u32(32434u, 5u)], 43694u)), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(~u_input.a.x, u_input.a.x), 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 5u)], 34752u) | vec3<u32>(30718u, 32997u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)]), ~vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96483u, 5u)], 5u)], u_input.a.x)))), countOneBits(var_3.a.x), u_input.a, ~u_input.a.x);
}

