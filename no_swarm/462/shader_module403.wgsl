struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 41606i, -20907i), vec3<f32>(821f, 924f, 2272f), vec2<bool>(true, false), false, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: i32) -> vec3<u32> {
    var var_0 = max(arg_1, global1.a.x);
    let var_1 = arg_0;
    var_0 = abs(_wgslsmith_sub_i32(-25424i, arg_1));
    var var_2 = Struct_1(vec3<i32>(25951i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), ~(~global1.a.xy)), _wgslsmith_mod_i32(arg_1 ^ arg_1, ~global1.a.x) >> (~(~64628u) % 32u)), global1.b, global1.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global0[_wgslsmith_index_u32(17489u, 18u)], u_input.b), vec3<u32>(~global0[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x, global0[_wgslsmith_index_u32(42932u, 18u)] >> (global0[_wgslsmith_index_u32(4294967295u, 18u)] % 32u))) >= select(~(9094u & u_input.b), 12909u, true), any(vec4<bool>(all(global1.c), true, (20633u & u_input.a.x) != _wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_sub_u32(61830u, 0u) != u_input.a.x)));
    var var_3 = Struct_2(arg_0, ~firstLeadingBit(~(u_input.a.x ^ 24773u)), Struct_1(vec3<i32>(~(~37869i), ~(-9156i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, -1i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(2147483647i, global1.a.x))), _wgslsmith_f_op_vec3_f32(global1.b * var_2.b), select(vec2<bool>(true, false), global1.c, !select(global1.c, vec2<bool>(true, true), false)), any(select(select(vec4<bool>(true, global1.e, true, var_2.d), vec4<bool>(var_2.c.x, true, true, false), true), select(vec4<bool>(global1.c.x, global1.d, var_2.e, true), vec4<bool>(false, true, true, global1.d), false), vec4<bool>(global1.d, false, global1.c.x, var_2.d))), arg_1 == arg_1));
    return vec3<u32>(abs(1u), u_input.a.x, ~global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(u_input.a.x, 18u)] ^ 1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 122075u), vec2<u32>(1u, 77241u)), 18u)]) >> (~((_wgslsmith_sub_vec3_u32(vec3<u32>(29982u, 4294967295u, 65773u), vec3<u32>(var_3.b, u_input.b, 0u)) | vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15500u, 18u)], 18u)])) & select(vec3<u32>(26852u, 3079u, u_input.b) & vec3<u32>(u_input.a.x, 4294967295u, 43921u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], var_3.b, 11673u), !vec3<bool>(false, var_2.e, true))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> vec3<i32> {
    global1 = Struct_1(vec3<i32>(-min(global1.a.x, global1.a.x), 1i, -_wgslsmith_div_i32(global1.a.x, 0i)) | (vec3<i32>(global1.a.x, global1.a.x, _wgslsmith_mult_i32(16054i, global1.a.x)) << (min(~arg_1, ~arg_1) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), 1810f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.b.x) + vec3<f32>(-1478f, -971f, 691f))) + _wgslsmith_f_op_vec3_f32(ceil(arg_0.xyy))))), select(select(vec2<bool>(global1.d, 33567u != arg_1.x), !vec2<bool>(global1.e, true), !all(vec4<bool>(false, true, false, false))), global1.c, all(vec3<bool>(false, global1.e, all(vec4<bool>(global1.c.x, true, true, global1.d))))), true & select(any(vec3<bool>(false, global1.d, true)), any(!vec2<bool>(global1.e, global1.c.x)), arg_0.x > _wgslsmith_f_op_f32(global1.b.x + 877f)), global1.c.x);
    global0 = array<u32, 18>();
    let var_0 = Struct_1(~(-(global1.a >> (vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(0u, 18u)]) % vec3<u32>(32u)))) ^ vec3<i32>(1i, 0i, global1.a.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.x, arg_0.x, 175f)))))))), vec2<bool>(global1.c.x, !any(!vec3<bool>(global1.c.x, global1.e, false))), !all(!select(global1.c, global1.c, global1.d)), !global1.c.x);
    global0 = array<u32, 18>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-750f, global1.b.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.x)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.b.x)), global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))));
    return ~(-var_0.a);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(arg_2.xxy, max(arg_2.wyw, vec3<u32>(1u, arg_2.x, u_input.b)))), ~4294967295u, ~65150u, ~78328u);
    global1 = Struct_1(func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1057f) + vec4<f32>(global1.b.x, -1541f, 479f, 899f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.x, 18u)], 4294967295u, var_0.x), func_3(global1.b.x, global1.a.x))) << (~vec3<u32>(33694u << (global0[_wgslsmith_index_u32(var_0.x, 18u)] % 32u), 15980u, abs(var_0.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * vec3<f32>(global1.b.x, 1000f, global1.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, 1092f, global1.b.x))))), !select(select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, false)), global1.c, !arg_1), !(!global1.c), global1.d), select(-895f != global1.b.x, true, arg_1), false);
    global1 = Struct_1(select(max(countOneBits(global1.a), countOneBits(func_4(vec4<f32>(-1079f, -1675f, global1.b.x, 1077f), var_0.zxw))), ~vec3<i32>(global1.a.x, 1i, global1.a.x) | vec3<i32>(_wgslsmith_clamp_i32(global1.a.x, global1.a.x, global1.a.x), -1i << (0u % 32u), global1.a.x), select(select(!vec3<bool>(false, global1.d, false), select(vec3<bool>(true, true, arg_1), vec3<bool>(true, arg_1, false), vec3<bool>(global1.c.x, false, global1.c.x)), !arg_1), !select(vec3<bool>(arg_1, global1.c.x, arg_1), vec3<bool>(global1.d, global1.e, global1.e), vec3<bool>(global1.e, false, false)), vec3<bool>(false, arg_1, !arg_1))), global1.b, global1.c, all(select(vec3<bool>(any(vec3<bool>(arg_1, arg_1, false)), 274f >= global1.b.x, any(vec3<bool>(false, arg_1, true))), vec3<bool>(!arg_1, !arg_1, global1.e != arg_1), !vec3<bool>(arg_1, true, true))), !all(!vec2<bool>(global1.c.x, arg_1)) != (min(0u ^ global0[_wgslsmith_index_u32(var_0.x, 18u)], ~u_input.b) != ~arg_2.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-global1.b.x), max(~4294967295u, 0u), Struct_1(_wgslsmith_mod_vec3_i32(-global1.a, -(~global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(511f, _wgslsmith_div_f32(global1.b.x, -481f), _wgslsmith_f_op_f32(max(180f, 101f)))), !vec2<bool>(any(vec3<bool>(true, global1.c.x, arg_1)), arg_1), !arg_1, !any(vec4<bool>(false, arg_1, true, false))));
    return Struct_1(select(global1.a, select(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_1.c.a.x, -1i, var_1.c.a.x)), vec3<i32>(-61143i, 2147483647i, global1.a.x)), var_1.c.a, vec3<bool>(true, true, select(false, true, arg_1))), true & var_1.c.d), var_1.c.b, select(vec2<bool>(false, true), vec2<bool>(~15182u < ~var_1.b, var_1.c.c.x & all(vec3<bool>(false, true, arg_1))), var_1.c.c.x), false, global1.c.x);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(623f)))))), u_input.a.x, arg_1);
    var var_1 = -678f;
    var_0 = Struct_2(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(round(arg_1.b.x))), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, var_0.b), _wgslsmith_mult_u32(u_input.b, 61453u)), global0[_wgslsmith_index_u32(4294967295u, 18u)]), func_2(global0[_wgslsmith_index_u32(20531u, 18u)], any(!vec3<bool>(var_0.c.d, var_0.c.d, arg_2)), ~vec4<u32>(~1u, _wgslsmith_mod_u32(var_0.b, 4294967295u), 67336u, 59884u)));
    let var_2 = global1.b.x;
    var_0 = Struct_2(var_0.a, ~global0[_wgslsmith_index_u32(~4668u, 18u)] & ~94608u, var_0.c);
    return func_2(~_wgslsmith_clamp_u32(~_wgslsmith_div_u32(u_input.a.x, 4294967295u), 79273u, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21882u, 18u)], 18u)], 18u)]), ~38212i == -min(reverseBits(var_0.c.a.x), 1i), vec4<u32>(var_0.b, ~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), 18u)] >> (abs(var_0.b) % 32u)), ~_wgslsmith_mult_u32(1u, u_input.b), firstTrailingBit(~global0[_wgslsmith_index_u32(var_0.b, 18u)] | ~4294967295u)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(global1.b.x, func_2(17457u, !(!global1.d | true), ~(vec4<u32>(27865u, 82442u, u_input.b, 3022u) & ~vec4<u32>(1u, 67180u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), global1.e);
    let var_1 = !(!(!vec3<bool>(var_0.c.x, false, var_0.d)));
    let var_2 = _wgslsmith_div_u32(104067u, _wgslsmith_sub_u32(select(~(0u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] % 32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~u_input.b), 18u)], 18u)], true), firstTrailingBit(_wgslsmith_add_u32(17896u, max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], global0[_wgslsmith_index_u32(56193u, 18u)])))));
    let var_3 = reverseBits(select(_wgslsmith_add_u32(select(countOneBits(4294967295u), 6861u, var_0.c.x), ~_wgslsmith_sub_u32(40909u, 33991u)), countOneBits(~u_input.a.x) ^ countOneBits(1u), var_0.c.x));
    let var_4 = var_3;
    return func_2(~func_3(-2077f, var_0.a.x).x ^ _wgslsmith_div_u32(~4294967295u, _wgslsmith_mult_u32(u_input.a.x << (var_4 % 32u), _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(1u, 18u)], var_4))), false, ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x << (0u % 32u), 32147u, var_4, reverseBits(var_2)), ~select(vec4<u32>(111877u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 0u), vec4<u32>(27082u, 8287u, 32728u, 0u), vec4<bool>(var_0.c.x, false, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(countOneBits(~vec3<i32>(-1i, abs(var_0.a.x), global1.a.x)), vec3<f32>(1738f, 874f, var_0.b.x), !vec2<bool>(global1.c.x, true), false, var_0.d);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(765f * _wgslsmith_f_op_f32(-675f - global1.b.x)));
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 808f)), var_0.c, all(vec2<bool>(var_0.d, true)) & !(57944u == firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 18u)])), true);
    var var_3 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(max(global1.a.x, var_0.a.x >> (88334u % 32u)), var_0.a.x, select(global1.a.x, var_0.a.x, func_5(1038f, Struct_1(vec3<i32>(var_0.a.x, global1.a.x, var_2.a.x), var_2.b, var_0.c, true, true), false).d)), firstLeadingBit((global1.a | vec3<i32>(27097i, var_2.a.x, global1.a.x)) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(72689u, 18u)], 18u)], u_input.b, global0[_wgslsmith_index_u32(0u, 18u)]) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-345f, _wgslsmith_f_op_f32(1000f + var_1), var_1))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(-477f, -489f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))), var_2.e)), !vec2<bool>(true, reverseBits(u_input.a.x) <= ~14238u), !var_2.d, true);
    let var_4 = Struct_1(~vec3<i32>(~var_2.a.x, global1.a.x, func_5(global1.b.x, Struct_1(var_3.a, vec3<f32>(-320f, 966f, global1.b.x), vec2<bool>(var_0.e, false), true, true), var_2.c.x).a.x) << (vec3<u32>(reverseBits(6298u), global0[_wgslsmith_index_u32(4294967295u, 18u)], firstTrailingBit(_wgslsmith_mult_u32(1u, 62282u))) % vec3<u32>(32u)), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), 162f), !select(vec2<bool>(any(var_3.c), var_0.d), var_3.c, false), any(!(!vec3<bool>(var_3.c.x, var_3.d, var_0.d))), all(vec4<bool>(global1.e, var_0.e, all(select(vec3<bool>(true, false, var_0.e), vec3<bool>(true, var_2.c.x, true), false)), all(!vec3<bool>(false, global1.e, global1.e)))));
    global1 = var_4;
    var var_5 = ~(var_3.a.yx >> (vec2<u32>(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 18u)], u_input.b), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b, 18u)], global0[_wgslsmith_index_u32(9933u, 18u)])) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(101992u, 18u)], 4294967295u), countOneBits(vec3<u32>(2887u, 0u, 110544u)))), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(46110u, u_input.a.x, 0u) ^ vec3<u32>(u_input.b, 54790u, u_input.a.x)), select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 39768u, u_input.a.x) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 5898u, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]) % vec3<u32>(32u)), ~vec3<u32>(62313u, 4294967295u, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 18u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)]), vec3<u32>(1u, 36525u, 35436u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(9923u, u_input.b, u_input.a.x), vec3<u32>(70392u, 1u, 8310u), vec3<u32>(4294967295u, 51650u, u_input.b))), var_4.d)), var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(256f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-589f + var_1), var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x)))))), -26404i);
}

