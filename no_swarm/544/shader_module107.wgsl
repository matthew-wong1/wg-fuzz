struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<f32, 14>;

var<private> global2: array<bool, 8>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = select(!select(!select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 8u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 8u)], global2[_wgslsmith_index_u32(u_input.d, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, global2[_wgslsmith_index_u32(88175u, 8u)])), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(48542u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(22165u, 8u)], global2[_wgslsmith_index_u32(25164u, 8u)], true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 8u)], global2[_wgslsmith_index_u32(u_input.d, 8u)], global2[_wgslsmith_index_u32(0u, 8u)])), vec3<bool>(global2[_wgslsmith_index_u32(62582u, 8u)], true, global2[_wgslsmith_index_u32(u_input.d, 8u)])), !select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(71956u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(37007u, 8u)], global2[_wgslsmith_index_u32(38665u, 8u)], global2[_wgslsmith_index_u32(23361u, 8u)]), global2[_wgslsmith_index_u32(0u, 8u)])), select(vec3<bool>(any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.d, 8u)])), true, global2[_wgslsmith_index_u32(91790u, 8u)]), !(!select(vec3<bool>(global2[_wgslsmith_index_u32(2562u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 8u)], true), global2[_wgslsmith_index_u32(1u, 8u)])), -(u_input.a << (7401u % 32u)) < u_input.c), false);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)), _wgslsmith_f_op_f32(-626f * _wgslsmith_f_op_f32(select(global0.x, 1137f, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(1u, 14u)]))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global1[_wgslsmith_index_u32(u_input.d, 14u)]) - global1[_wgslsmith_index_u32(u_input.d, 14u)])))));
    global2 = array<bool, 8>();
    global2 = array<bool, 8>();
    let var_2 = Struct_3(~vec3<u32>(_wgslsmith_div_u32(u_input.d & u_input.d, ~19583u), ~55986u, 46137u), global0.x, Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 44008u), min(vec2<u32>(u_input.d, 5023u), vec2<u32>(u_input.d, u_input.d))), u_input.d), _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 14u)], -151f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-308f + global0.x), global0.x), _wgslsmith_f_op_f32(f32(-1f) * -678f)), Struct_1(reverseBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(4294967295u, u_input.d, 1u)), 4294967295u)), var_0.x, -1000f), Struct_1(select(max(firstLeadingBit(vec2<u32>(66199u, u_input.d)), reverseBits(vec2<u32>(u_input.d, 61849u))), ~select(vec2<u32>(1u, u_input.d), vec2<u32>(u_input.d, 94214u), var_0.yy), var_0.zy), (u_input.a | 2147483647i) <= min(u_input.c ^ 0i, u_input.b), global1[_wgslsmith_index_u32(~4294967295u, 14u)]));
    return _wgslsmith_f_op_f32(-var_2.c.c);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec4<bool>(arg_0.x, u_input.d >= ~_wgslsmith_add_u32(50030u, 1u), !(!(select(true, arg_0.x, true) | !global2[_wgslsmith_index_u32(u_input.d, 8u)])), global2[_wgslsmith_index_u32(u_input.d & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(30382u, 28453u, u_input.d, u_input.d), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 17847u, u_input.d), vec4<u32>(u_input.d, 47316u, 10863u, 1u))), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d, 74020u, 0u), vec4<u32>(63595u, 4294967295u, u_input.d, 1u)))), 8u)]);
    let var_1 = arg_0.x == true;
    let var_2 = Struct_4(u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3())))), Struct_2(any(!select(vec2<bool>(false, false), var_0.xy, vec2<bool>(false, true))), Struct_1(~(~vec2<u32>(u_input.d, 20152u)), any(vec4<bool>(false, var_1, var_1, true)), -429f)), Struct_2(var_0.x, Struct_1(vec2<u32>(~u_input.d, 0u), ~u_input.c <= -59150i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)))), vec3<i32>(max(u_input.b, 8242i), -2147483647i, u_input.a) >> (~(~(vec3<u32>(4294967295u, 26173u, u_input.d) ^ vec3<u32>(u_input.d, 51210u, u_input.d))) % vec3<u32>(32u)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_2.c.b.a.x, 14u)], global0.x) - _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(33132u, 14u)], 708f))))), var_2.b, -1291f);
    let var_4 = Struct_4(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~(~4294967295u), 23411u), 63352u), global1[_wgslsmith_index_u32(u_input.d, 14u)], var_2.d, Struct_2(false, Struct_1(firstLeadingBit(countOneBits(vec2<u32>(48324u, u_input.d))), any(arg_0), _wgslsmith_f_op_f32(step(113f, -114f)))), ~var_2.e);
    return select(countOneBits(~abs(1u)), 1u, 18107u >= select(13265u, firstTrailingBit(~var_4.d.b.a.x), true));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d, 14u)] * global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-446f, global0.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(354f, global0.x), vec2<f32>(global1[_wgslsmith_index_u32(8567u, 14u)], global1[_wgslsmith_index_u32(u_input.d, 14u)]), arg_1.yw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(42430u, 14u)], 140f) + vec2<f32>(-677f, 406f))))), vec2<bool>(false, global2[_wgslsmith_index_u32(25832u >> (min(_wgslsmith_add_u32(u_input.d, u_input.d), ~u_input.d) % 32u), 8u)])));
    global2 = array<bool, 8>();
    var var_0 = Struct_3(firstTrailingBit(vec3<u32>(~1u, 6907u, max(4294967295u, u_input.d))) & _wgslsmith_div_vec3_u32(vec3<u32>(~14611u, _wgslsmith_dot_vec4_u32(vec4<u32>(24472u, 56955u, 4294967295u, u_input.d), vec4<u32>(0u, 38404u, u_input.d, u_input.d)), ~1u), ~reverseBits(vec3<u32>(u_input.d, u_input.d, 413u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 14u)], 505f)) + _wgslsmith_f_op_f32(-global0.x)))), Struct_1(vec2<u32>(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(13454u, 4294967295u), u_input.d | u_input.d, select(u_input.d, u_input.d, arg_1.x))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), Struct_1(min(vec2<u32>(1u, ~119557u), abs(vec2<u32>(u_input.d, u_input.d))), !select(arg_1.x, arg_0, arg_0) && true, 239f), Struct_1(vec2<u32>(_wgslsmith_sub_u32(func_2(vec3<bool>(false, false, true)), u_input.d), u_input.d), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 14u)], -2340f))))));
    var var_1 = select(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(5527i, u_input.c, u_input.b, u_input.a), vec4<i32>(u_input.a, -15620i, -29581i, -2147483647i)), -u_input.b), abs(1i)), vec2<i32>(-1i) * -(~vec2<i32>(-6602i, u_input.b)), any(select(select(vec2<bool>(false, false), arg_1.ww, arg_1.yy), select(vec2<bool>(false, arg_1.x), arg_1.xx, false), true))) & vec2<i32>(u_input.b, u_input.a);
    let var_2 = -1640f;
    return var_0.e;
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec2<f32> {
    var var_0 = func_4(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(vec3<bool>(arg_1, global2[_wgslsmith_index_u32(u_input.d, 8u)], arg_1)), u_input.d), u_input.d), 8u)], vec4<bool>(!(!arg_1) | arg_1, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(!vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d, 8u)])), u_input.d), 8u)], all(select(select(vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 8u)], global2[_wgslsmith_index_u32(u_input.d, 8u)], false), false), vec3<bool>(global2[_wgslsmith_index_u32(9818u, 8u)], global2[_wgslsmith_index_u32(4645u, 8u)], global2[_wgslsmith_index_u32(u_input.d, 8u)]), !vec3<bool>(false, false, arg_1))), true));
    var var_1 = 0i;
    var var_2 = !select(!vec3<bool>(false, false, arg_1), vec3<bool>(any(!vec2<bool>(arg_1, global2[_wgslsmith_index_u32(var_0.a.x, 8u)])), global2[_wgslsmith_index_u32(~1u, 8u)], all(select(vec2<bool>(arg_1, global2[_wgslsmith_index_u32(var_0.a.x, 8u)]), vec2<bool>(var_0.b, global2[_wgslsmith_index_u32(4294967295u, 8u)]), arg_1))), all(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d, 8u)], false)) && (true && (var_0.b && false)));
    var var_3 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a << (4294967295u % 32u), -16661i << (abs(0u) % 32u)), vec2<i32>(firstTrailingBit(-u_input.a), _wgslsmith_sub_i32(0i << (1u % 32u), -18090i))), -_wgslsmith_sub_i32(-2147483647i, -49529i), u_input.a);
    var var_4 = ~select(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 51486i, u_input.a, 2147483647i), vec4<i32>(var_3.x, var_3.x, 34282i, 0i))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-33044i, var_3.x), u_input.b, _wgslsmith_dot_vec3_i32(var_3.zww, vec3<i32>(var_3.x, var_3.x, 12666i)), _wgslsmith_sub_i32(var_3.x, var_3.x)), max(vec4<i32>(-2147483647i, 1969i, u_input.c, -2147483647i), vec4<i32>(u_input.a, u_input.b, -2147483647i, u_input.a)) << (vec4<u32>(var_0.a.x, 41140u, 39649u, 6977u) % vec4<u32>(32u))), select(select(select(vec4<bool>(arg_1, false, false, global2[_wgslsmith_index_u32(u_input.d, 8u)]), vec4<bool>(false, true, true, true), false), !vec4<bool>(var_0.b, false, var_0.b, global2[_wgslsmith_index_u32(18077u, 8u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(var_2.x, true, var_2.x, arg_1), global2[_wgslsmith_index_u32(u_input.d, 8u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(20218u, 8u)], true, true, var_0.b), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_0.a.x, 8u)]), !var_0.b), vec4<bool>(true && var_0.b, arg_1, true, global2[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(u_input.d, 8u)], vec4<bool>(false, true, var_0.b, true)).a.x, 8u)])));
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_0, _wgslsmith_f_op_vec2_f32(ceil(arg_0)), true)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1042f, global0.x) - vec2<f32>(global1[_wgslsmith_index_u32(19836u, 14u)], -907f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, arg_0)) + vec2<f32>(-249f, _wgslsmith_f_op_f32(min(global0.x, -2089f))))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_5) -> vec2<f32> {
    let var_0 = Struct_5(arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-993f, arg_1, 1000f) - arg_2.a)) + arg_2.a)), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(max(~arg_2.c, reverseBits(arg_2.c)), ~(~vec2<u32>(u_input.d, 33660u))), arg_2.c), _wgslsmith_f_op_vec2_f32(max(arg_2.b.xz, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 14u)] - -666f)), arg_1))));
    let var_1 = arg_0;
    let var_2 = arg_2.b;
    var var_3 = !select(vec3<bool>(true, any(select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.c.x, 8u)], global2[_wgslsmith_index_u32(arg_2.c.x, 8u)], var_1, false), vec4<bool>(true, var_1, var_1, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], var_1, var_1, arg_0))), global2[_wgslsmith_index_u32(select(~u_input.d, 21967u, arg_0), 8u)]), select(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(true, true, arg_0), false), !vec3<bool>(arg_0, true, true), all(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 8u)]))), select(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_2.c.x, 8u)], true), !vec3<bool>(var_1, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(var_0.c.x, 8u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.c.x, 8u)], false)), 64478u == firstLeadingBit(u_input.d)), select(select(vec3<bool>(false, var_1, arg_0), vec3<bool>(true, arg_0, false), select(vec3<bool>(var_1, false, false), vec3<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.d, 8u)], arg_0), vec3<bool>(var_1, arg_0, global2[_wgslsmith_index_u32(var_0.c.x, 8u)]))), !select(vec3<bool>(global2[_wgslsmith_index_u32(44728u, 8u)], false, global2[_wgslsmith_index_u32(var_0.c.x, 8u)]), vec3<bool>(var_1, true, false), true), select(vec3<bool>(true, arg_0, false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 8u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 8u)], var_1, true), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.c.x, 8u)], arg_0, var_1), false))));
    var_3 = !vec3<bool>(u_input.c >= u_input.c, !(20293u > var_0.c.x) | !any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], false, false, false)), false);
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -623f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(17726u, 40929u)), u_input.d, u_input.d >> (u_input.d % 32u))), ~vec2<u32>(28937u & u_input.d, ~u_input.d)) | ~(~vec2<u32>(29888u, countOneBits(1441u)));
    let var_1 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(~(~(var_0 << (var_0 % vec2<u32>(32u)))), (var_0 >> (~vec2<u32>(1u, 42992u) % vec2<u32>(32u))) | var_0), vec2<u32>(var_0.x | u_input.d, firstTrailingBit(~u_input.d) ^ 1u));
    let var_2 = ~_wgslsmith_clamp_u32(countOneBits(36908u), 0u, var_1.x);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(global2[_wgslsmith_index_u32(17696u, 8u)], global1[_wgslsmith_index_u32(38691u, 14u)], Struct_5(vec3<f32>(1000f, global0.x, 415f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -153f, 219f)), var_1, _wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(-817f, -1259f), false))))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-906f, global0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), vec2<f32>(661f, 458f), !global2[_wgslsmith_index_u32(0u, 8u)])), false))));
    global2 = array<bool, 8>();
    var var_3 = Struct_3(vec3<u32>(firstLeadingBit(0u), 5061u, 1u), _wgslsmith_f_op_f32(sign(-840f)), Struct_1(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.d, 46972u) ^ 82978u), global2[_wgslsmith_index_u32(1u, 8u)] || false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 8u)], true, false, true)).c))), Struct_1(vec2<u32>(~_wgslsmith_mult_u32(8771u, 16207u), _wgslsmith_add_u32(108954u, var_0.x) >> (1u % 32u)), global2[_wgslsmith_index_u32(~4294967295u, 8u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_4(true, select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_2, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 8u)], true, global2[_wgslsmith_index_u32(54516u, 8u)], false), vec4<bool>(true, true, false, true))).a.x, 14u)])), Struct_1(var_0, 0u >= var_2, _wgslsmith_f_op_f32(floor(global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, abs(-reverseBits(vec3<i32>(57073i, 2147483647i, 2147483647i))), u_input.c, _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, u_input.b, u_input.b), vec3<i32>(-30270i, 81226i, u_input.a), false), vec3<i32>(u_input.a, u_input.b, 1i) >> (var_3.a % vec3<u32>(32u)))), i32(-1i) * -1i, ~(~(-4408i))), var_2);
}

