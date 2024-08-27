struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(785f, -1000f);

var<private> global1: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(-1000f, -667f), vec2<f32>(-1000f, 666f), vec2<f32>(392f, -1221f), vec2<f32>(-930f, 408f), vec2<f32>(1076f, 1180f), vec2<f32>(1290f, 1363f), vec2<f32>(-2419f, 279f), vec2<f32>(-224f, 2546f), vec2<f32>(1000f, -1181f), vec2<f32>(-777f, -667f), vec2<f32>(-195f, -1000f), vec2<f32>(-251f, 399f), vec2<f32>(-2149f, -1400f), vec2<f32>(1036f, -244f), vec2<f32>(690f, -1913f), vec2<f32>(-465f, -2000f), vec2<f32>(-638f, 1185f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_1(select(!select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, arg_0, true)), !vec3<bool>(arg_0, true, false), !arg_0), select(select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), u_input.b.x != 1i), !vec3<bool>(true, arg_0, false), arg_0), vec3<bool>(true, arg_0 == true, arg_0 || false)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_1.x, _wgslsmith_sub_u32(u_input.a, u_input.a), ~arg_1.x), ~(vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(u_input.a, u_input.a, 55310u))), vec3<u32>(~_wgslsmith_div_u32(0u, 17303u), 1534u, abs(6780u) & max(arg_1.x, arg_1.x)), !select(vec3<bool>(false, arg_0, false), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), false), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, false, arg_0), vec3<bool>(false, true, arg_0)))));
    var var_1 = -133f;
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~1u, 17u)])))));
    let var_2 = var_0;
    let var_3 = 21343i;
    return firstLeadingBit(~vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_3, 19298i, 42766i, u_input.b.x), ~vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, var_3)), 3426i));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global0.x;
    let var_1 = countOneBits(func_3(any(vec4<bool>(false, false, true, u_input.a > 5108u)), select(~(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(48477u, u_input.a)), max(~vec2<u32>(u_input.a, 9029u), vec2<u32>(9992u, 18167u) & vec2<u32>(u_input.a, 69800u)), false)));
    let var_2 = vec3<bool>(true, true, true);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)))), global1[_wgslsmith_index_u32(abs(4294967295u), 17u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(407f, global0.x) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(782f, 889f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - global0.x))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1152f + -114f))), global0.x);
    return Struct_1(var_2, countOneBits(abs(firstTrailingBit(reverseBits(vec3<u32>(u_input.a, 1u, 8673u))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = ~(~(-48502i) << (firstLeadingBit(func_2(global0.x).b.x) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(13526u, u_input.a), 1u, ~30844u) | arg_0.b, select(~firstLeadingBit(arg_0.b), vec3<u32>(u_input.a, 11715u, ~0u), arg_1)) % 32u);
    var_0 = select(-firstLeadingBit(u_input.b.x), ~select(u_input.b.x, _wgslsmith_add_i32(~u_input.b.x, _wgslsmith_sub_i32(-6088i, u_input.b.x)), arg_1), !func_2(_wgslsmith_f_op_f32(-2136f - global0.x)).a.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(floor(-1000f)));
    let var_2 = vec2<u32>(arg_0.b.x, _wgslsmith_sub_u32(min(_wgslsmith_div_u32(~arg_0.b.x, arg_0.b.x >> (22151u % 32u)), _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(14740u, 1u, u_input.a))), u_input.a));
    let var_3 = !vec4<bool>(any(select(vec2<bool>(false, arg_0.a.x), func_2(global0.x).a.xy, vec2<bool>(arg_1, arg_0.a.x))), any(arg_0.a) | false, !arg_1, arg_0.a.x);
    return _wgslsmith_sub_u32(arg_0.b.x, firstLeadingBit(93304u));
}

fn func_1() -> vec2<u32> {
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), _wgslsmith_div_f32(global0.x, global0.x)))), global1[_wgslsmith_index_u32(1u, 17u)], vec2<bool>(true, true))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(159f + global0.x))), global1[_wgslsmith_index_u32(u_input.a, 17u)])));
    return vec2<u32>(~(~(firstTrailingBit(u_input.a) & ~u_input.a)), func_4(func_2(_wgslsmith_f_op_f32(floor(global0.x))), !all(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(arg_0.x, 17u)] * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 17u)]))))), global1[_wgslsmith_index_u32(~11986u, 17u)]));
    global1 = array<vec2<f32>, 17>();
    let var_0 = arg_2;
    let var_1 = all(!select(select(vec4<bool>(true, true, var_0, arg_2), vec4<bool>(arg_2, true, true, true), vec4<bool>(arg_2, arg_2, false, var_0)), !select(vec4<bool>(false, var_0, arg_2, true), vec4<bool>(var_0, var_0, arg_2, false), arg_2), !select(vec4<bool>(var_0, arg_2, false, false), vec4<bool>(var_0, false, true, true), vec4<bool>(var_0, var_0, var_0, false))));
    let var_2 = vec3<bool>(all(select(select(select(vec4<bool>(var_0, var_1, false, var_1), vec4<bool>(true, var_1, arg_2, true), vec4<bool>(var_0, var_1, true, true)), select(vec4<bool>(arg_2, var_1, var_1, var_0), vec4<bool>(var_0, var_0, false, false), arg_2), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, arg_2, var_1, false), vec4<bool>(var_0, false, var_1, arg_2), true), arg_2)), arg_2, any(func_2(global0.x).a) & true);
    return Struct_2(vec4<u32>((~arg_0.x ^ arg_1.x) << (u_input.a % 32u), max(1u, ~(1u << (u_input.a % 32u))), 1u, arg_0.x), false, select(var_2.zx, select(select(!var_2.yy, !vec2<bool>(false, var_2.x), var_2.yx), var_2.zy, !var_1), arg_2), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1406f)), _wgslsmith_f_op_f32(924f - global0.x))), global0.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b.x, -30737i, u_input.b.x) & vec4<i32>(u_input.b.x, 23500i, -2147483647i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x))), vec4<i32>(~(-9701i), reverseBits(u_input.b.x), 12654i, ~2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 0i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)) >> (vec4<u32>(arg_0.x | u_input.a, 1u, arg_0.x, func_4(Struct_1(var_2, arg_1.wxw), var_2.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 17>();
    global1 = array<vec2<f32>, 17>();
    let var_0 = func_5(~_wgslsmith_mult_vec2_u32(vec2<u32>(21688u, _wgslsmith_sub_u32(u_input.a, 52457u)), func_1()), min(select(~max(vec4<u32>(u_input.a, 97742u, 47397u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a | u_input.a, 4294967295u, firstTrailingBit(u_input.a), ~1u), vec4<bool>(true, all(vec3<bool>(false, false, false)), u_input.b.x == u_input.b.x, true)), ~(~(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 50472u, 0u, u_input.a)))), false);
    var var_1 = func_5(vec2<u32>(7670u, 41608u) & _wgslsmith_div_vec2_u32(min(vec2<u32>(4294967295u, 4294967295u), var_0.d.b.yy), ~var_0.d.b.yy), var_0.a, any(var_0.c));
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-(var_0.e.x ^ firstTrailingBit(u_input.b.x)), var_0.e.x, var_0.e.x), var_0.e.yxy);
    global1 = array<vec2<f32>, 17>();
    let var_3 = _wgslsmith_sub_vec4_u32(abs(~(vec4<u32>(1070u, 0u, 69205u, var_0.a.x) << (vec4<u32>(4294967295u, var_1.a.x, 17317u, 0u) % vec4<u32>(32u)))), select(var_0.a, ~var_1.a >> (var_0.a % vec4<u32>(32u)), vec4<bool>(any(!var_0.d.a.yz), true, !(true | var_0.d.a.x), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, countOneBits(vec3<u32>(countOneBits(4294967295u), func_2(global0.x).b.x, ~_wgslsmith_dot_vec4_u32(var_3, vec4<u32>(var_0.a.x, var_0.d.b.x, 4294967295u, var_3.x)))), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(max(var_1.e.x, 0i), _wgslsmith_add_i32(var_2.x, u_input.b.x), countOneBits(-1i)), u_input.b.x), 5248u, global0.x);
}

