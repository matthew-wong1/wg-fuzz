struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, false, true, true, true, true, false, true, true, true, true, true, false, true, false, true, false, false, true, false, false);

var<private> global1: Struct_2;

var<private> global2: vec3<f32> = vec3<f32>(961f, 862f, 1095f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0;
    var var_1 = u_input.b.yxx;
    global1 = Struct_2(global1.c >= -2147483647i, vec2<i32>(~u_input.e, -min(1i, 2147483647i)) & _wgslsmith_add_vec2_i32(reverseBits(global1.b << (vec2<u32>(18241u, 39708u) % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(global1.c, -61172i))), countOneBits(-(~_wgslsmith_add_i32(u_input.c.x, 36075i))), false & any(select(vec4<bool>(global1.d, global0[_wgslsmith_index_u32(1u, 21u)], false, false), !vec4<bool>(global1.d, global1.d, true, true), false)), vec2<u32>(u_input.d, ~(~abs(u_input.d))));
    let var_2 = ~firstLeadingBit(max(vec4<i32>(10207i, 2147483647i, 29203i, -2147483647i), -vec4<i32>(u_input.c.x, 31496i, -1i, global1.b.x))) | vec4<i32>(u_input.a.x, abs(25673i), 1i, ~global1.b.x ^ (~global1.c | ~u_input.a.x));
    let var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - global2.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> u32 {
    global2 = vec3<f32>(_wgslsmith_div_f32(-1062f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.c)))))), -1929f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_0 = _wgslsmith_dot_vec4_i32(-arg_0.d, abs(max(-arg_0.d, countOneBits(vec4<i32>(-1i, u_input.e, global1.b.x, arg_2)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(arg_3.e.d));
    let var_2 = Struct_1(vec4<i32>(1i >> (1u % 32u), arg_0.e.x, -2147483647i, ~(~arg_2)), 16004u, all(!select(vec3<bool>(true, false, true), select(vec3<bool>(global1.d, false, global1.a), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b, 21u)], arg_3.b, arg_0.c), false), select(vec3<bool>(false, arg_3.b, false), vec3<bool>(global1.a, false, global1.d), global1.d))), ~arg_0.d, arg_0.e);
    var var_3 = 54440u > (var_2.b << (1u % 32u));
    return arg_0.b;
}

fn func_2() -> f32 {
    global0 = array<bool, 21>();
    var var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(14108i, 2028i) & global1.c, ~1i) > -1i, _wgslsmith_mod_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.b, u_input.c.zz), -2147483647i), -vec2<i32>(u_input.a.x, global1.b.x))), firstTrailingBit(-2147483647i), !select(global0[_wgslsmith_index_u32(min(~4294967295u, ~global1.e.x), 21u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1.e, vec2<u32>(1u, global1.e.x)), 21u)], false), _wgslsmith_mult_vec2_u32(select(global1.e, ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.e.x, 26298u), vec2<u32>(global1.e.x, global1.e.x)), !(global2.x < global2.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.x, u_input.d, 116214u, 54942u) ^ u_input.b, u_input.b), global1.e.x)));
    var var_1 = _wgslsmith_mod_u32(func_4(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 29499i, -2147483647i, 2147483647i), vec4<i32>(var_0.b.x, var_0.c, 2147483647i, var_0.b.x)) >> (u_input.b % vec4<u32>(32u)), 1u, any(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(25750u, 21u)])), firstLeadingBit(vec4<i32>(76854i, u_input.a.x, 14102i, 0i)), -vec3<i32>(global1.b.x, 50261i, -41620i)), Struct_3(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2545f, global2.x, -2103f))), ~var_0.b.x, Struct_4(global1.e, false, _wgslsmith_f_op_f32(func_3(Struct_3(global2.x, 801f, global2.x, vec3<f32>(global2.x, -1054f, global2.x)))), global1.c, Struct_3(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(384f - global2.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2557f, 920f, 687f)))))), 4294967295u);
    var_0 = Struct_2(var_0.d, -_wgslsmith_mod_vec2_i32(~select(var_0.b, var_0.b, var_0.d), u_input.c.zz), firstLeadingBit(var_0.b.x), all(select(select(vec3<bool>(true, true, var_0.d), vec3<bool>(global1.d, true, true), global0[_wgslsmith_index_u32(global1.e.x, 21u)]), vec3<bool>(true, global1.d, true), all(vec4<bool>(true, var_0.a, true, false)))) || true, ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, global1.e.x), var_0.e, global1.e))));
    var var_2 = 672f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1145f)));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(global2.x)), global2.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(354f, -526f, 1288f), vec3<f32>(1796f, 2165f, global2.x))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, global2.x, global2.x), _wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 432f), vec3<f32>(global2.x, 586f, global2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(floor(985f)), _wgslsmith_f_op_f32(-653f + global2.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(global2.x)), -129f, _wgslsmith_f_op_f32(max(global2.x, 1713f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(249f, _wgslsmith_f_op_f32(func_3(Struct_3(global2.x, global2.x, global2.x, vec3<f32>(-1242f, global2.x, -698f)))), _wgslsmith_f_op_f32(-435f * global2.x)) * vec3<f32>(global2.x, global2.x, 377f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2237f, _wgslsmith_f_op_f32(global2.x + global2.x), -2013f, _wgslsmith_div_f32(global2.x, -2124f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, 337f, 2157f), vec4<f32>(1039f, -311f, 678f, -686f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))), global2.x, _wgslsmith_div_f32(-134f, _wgslsmith_f_op_f32(-578f * global2.x)), global2.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - _wgslsmith_f_op_f32(abs(825f))) - _wgslsmith_f_op_f32(f32(-1f) * -1098f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-724f, 503f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1418f, var_0.x, global2.x, -534f), vec4<f32>(895f, -1061f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1000f, var_0.x, global2.x)))), !select(select(vec4<bool>(arg_0.x, true, arg_0.x, global1.a), vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], false), vec4<bool>(true, arg_0.x, true, global1.d)), select(vec4<bool>(arg_0.x, global1.a, false, false), vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(global1.e.x, 21u)], false, false), false), vec4<bool>(false, true, global1.a, false)))));
    global0 = array<bool, 21>();
    return Struct_2(true, select(min(u_input.a, _wgslsmith_mult_vec2_i32(global1.b, select(u_input.a, vec2<i32>(-34265i, 1i), false))), u_input.c.xx, global1.b.x <= countOneBits(u_input.c.x)), 0i, !any(!vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 21u)], global1.a)), abs(vec2<u32>(~36799u, u_input.b.x)) ^ vec2<u32>(4294967295u, ~max(55392u, u_input.b.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(u_input.b.zy, true, 755f, _wgslsmith_sub_i32(_wgslsmith_div_i32(global1.b.x & 1i, select(-12869i, 16424i, false)), firstLeadingBit(func_1(vec2<bool>(true, arg_1.a), -18332i).c)) << (0u % 32u), arg_3);
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(-343f * var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) * _wgslsmith_f_op_f32(-var_0.e.a)))) * arg_3.d);
    global1 = func_1(vec2<bool>(global1.a, !(_wgslsmith_f_op_f32(f32(-1f) * -1928f) >= _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_sub_i32(u_input.a.x ^ 0i, -1i));
    global0 = array<bool, 21>();
    let var_1 = var_0.e.d;
    return Struct_1(max(vec4<i32>(-60988i, var_0.d << (global1.e.x % 32u), _wgslsmith_mult_i32(var_0.d, -2147483647i), arg_1.c ^ 1i) ^ vec4<i32>(global1.c, _wgslsmith_mod_i32(2147483647i, -12017i), _wgslsmith_add_i32(var_0.d, global1.c), -u_input.e), vec4<i32>(var_0.d, -22425i, -1i, firstTrailingBit(var_0.d) | countOneBits(-9964i))), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, var_0.a.x), arg_1.e.x), arg_1.d, vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.c, u_input.e, 2147483647i), select(u_input.c, u_input.c, false)) >> ((16798u << (u_input.d % 32u)) % 32u), -71218i >> (0u % 32u), -1i << (u_input.b.x % 32u), ~arg_2), u_input.c);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = abs(~func_4(func_5(vec3<bool>(true, true, true), Struct_2(true, arg_2.e.yz, -2147483647i, true, u_input.b.xw), arg_3.x, arg_1), arg_1, u_input.c.x, Struct_4(~global1.e, true, _wgslsmith_f_op_f32(abs(arg_1.d.x)), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(1i, global1.c, 0i)), arg_1)));
    var_0 = abs(1u);
    var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(13368u, global1.e.x), ~(~u_input.b.x)), u_input.b.wy << (vec2<u32>(global1.e.x, _wgslsmith_mult_u32(global1.e.x, arg_2.b)) % vec2<u32>(32u))));
    global1 = func_1(vec2<bool>(arg_0.x == func_1(select(vec2<bool>(arg_0.x, true), arg_0.wy, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_sub_i32(0i, arg_3.x)).a, true), -(~_wgslsmith_mult_i32(arg_3.x, -64850i)));
    let var_1 = arg_3;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-vec4<i32>(global1.c, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c) & global1.c, u_input.e, _wgslsmith_div_i32(-2147483647i, -30511i)), u_input.b.x, !any(vec3<bool>(any(vec2<bool>(global1.a, global1.a)), true, true)), _wgslsmith_add_vec4_i32(-(_wgslsmith_add_vec4_i32(vec4<i32>(global1.b.x, global1.b.x, u_input.c.x, u_input.e), vec4<i32>(u_input.a.x, 0i, u_input.e, 2147483647i)) ^ abs(vec4<i32>(u_input.e, u_input.c.x, -2147483647i, -1i))), vec4<i32>(86895i, global1.c, abs(countOneBits(global1.b.x)), select(1i, i32(-1i) * -1i, global0[_wgslsmith_index_u32(47140u, 21u)]))), ~reverseBits(u_input.c) >> (vec3<u32>(_wgslsmith_mult_u32(u_input.d, 0u) | u_input.d, global1.e.x, 37223u) % vec3<u32>(32u)));
    global2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1291f, -606f, 441f), vec3<f32>(-639f, -511f, global2.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1424f, -164f, 1000f), vec3<f32>(316f, global2.x, -968f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -578f, global2.x)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -579f, -1069f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, -2085f, global1.d)) + _wgslsmith_f_op_f32(f32(-1f) * -967f)), _wgslsmith_f_op_f32(f32(-1f) * -1841f), global2.x))));
    var var_1 = ~0u;
    let var_2 = select(true, false, 1u <= ((_wgslsmith_mult_u32(14259u, 117150u) << ((var_0.b ^ 4294967295u) % 32u)) & _wgslsmith_clamp_u32(~10343u, _wgslsmith_clamp_u32(4294967295u, u_input.d, global1.e.x), global1.e.x)));
    let var_3 = func_6(vec4<bool>(true, all(!vec4<bool>(var_0.c, global1.d, global0[_wgslsmith_index_u32(1u, 21u)], var_2)), 496f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x + global2.x), -282f)), var_2), Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, 641f), _wgslsmith_f_op_f32(abs(global2.x))), -230f, _wgslsmith_f_op_f32(step(415f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(-1501f, 946f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, global2.x)))), func_5(!vec3<bool>(true, var_0.c, global1.d), func_1(vec2<bool>(false, !global1.d), global1.c), var_0.e.x, Struct_3(_wgslsmith_f_op_f32(trunc(global2.x)), -1384f, -181f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, global2.x, 389f)))), vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, -1i), 46985i), abs(select(~u_input.e, -var_0.d.x, select(global1.d, var_0.c, false)))));
    global1 = Struct_2(func_6(vec4<bool>(!any(vec4<bool>(false, false, true, var_3.c)), ~global1.c != 1i, global0[_wgslsmith_index_u32(var_0.b, 21u)], true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1388f, global2.x)), _wgslsmith_f_op_f32(-766f * _wgslsmith_f_op_f32(abs(-499f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2300f, global2.x, global2.x)))), func_5(select(vec3<bool>(true, global1.d, var_0.c), !vec3<bool>(var_3.c, var_0.c, var_3.c), vec3<bool>(var_2, var_2, var_3.c)), func_1(select(vec2<bool>(false, true), vec2<bool>(false, false), global0[_wgslsmith_index_u32(12274u, 21u)]), var_3.a.x), u_input.c.x, Struct_3(global2.x, -149f, 257f, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 253f) * vec3<f32>(809f, 791f, global2.x)))), abs(max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.e.x, var_0.e.x), vec2<i32>(-35737i, global1.b.x)), -vec2<i32>(-1i, u_input.e)))).c, ~(~(~_wgslsmith_add_vec2_i32(global1.b, vec2<i32>(49678i, var_3.a.x)))), _wgslsmith_div_i32(6817i, _wgslsmith_add_i32(_wgslsmith_add_i32(var_3.e.x, 2147483647i | u_input.c.x), _wgslsmith_sub_i32(countOneBits(2147483647i), select(global1.b.x, -2147483647i, false)))), !var_0.c, ~(~firstTrailingBit(~vec2<u32>(var_0.b, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.a.x, 20003i, -10986i), global2.zz, func_6(!(!vec4<bool>(true, var_2, false, global1.d)), Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(700f, global2.x), -335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(sign(503f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -577f, global2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -672f, 1580f) + vec3<f32>(-1854f, 1000f, 963f)), !global1.d))), func_6(select(!vec4<bool>(var_3.c, var_0.c, var_3.c, true), select(vec4<bool>(true, var_3.c, false, global1.d), vec4<bool>(var_0.c, var_3.c, true, false), vec4<bool>(global1.d, false, var_0.c, global0[_wgslsmith_index_u32(u_input.d, 21u)])), vec4<bool>(false, var_3.c, false, var_2)), Struct_3(_wgslsmith_f_op_f32(460f - global2.x), _wgslsmith_f_op_f32(-global2.x), -1557f, vec3<f32>(-1153f, 1639f, global2.x)), var_0, min(~vec2<i32>(var_0.a.x, var_0.e.x), u_input.a)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(0i, u_input.c.x, 23760i), -var_0.d.x), _wgslsmith_mult_i32(u_input.c.x, global1.b.x) & _wgslsmith_mult_i32(u_input.c.x, global1.b.x))).b, var_3.b);
}

