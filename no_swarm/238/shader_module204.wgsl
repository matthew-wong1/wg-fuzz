struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: vec3<f32> = vec3<f32>(1799f, -1644f, 1551f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<u32, 8>();
    let var_0 = !vec4<bool>(arg_0.a, !(global2.x > _wgslsmith_f_op_f32(ceil(-3166f))), false, arg_0.a);
    let var_1 = ~u_input.b;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1, _wgslsmith_div_u32(~61056u, ~(~var_1)), 1u), vec4<u32>(max(19125u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_1, 41146u, 0u, 0u)), max(vec4<u32>(4294967295u, var_1, 32983u, 0u), vec4<u32>(u_input.b, 17938u, 0u, u_input.b)))), _wgslsmith_div_u32(~var_1, var_1), abs(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(63527u, 8u)], 1u ^ global0[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_div_u32(u_input.b & (4758u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9335u, 8u)], 8u)]), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 8u)] >> (1u % 32u), 8u)], 8u)], ~u_input.b))));
    var var_3 = all(var_0);
    return vec3<u32>(u_input.b >> (1u % 32u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_2.wz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], var_1), vec2<u32>(var_2.x, 4294967295u)), ~vec2<u32>(59658u, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(min(u_input.b, var_1), ~var_1), ~vec2<u32>(u_input.b, var_2.x) ^ ~vec2<u32>(u_input.b, 1u))), 1u);
}

fn func_4(arg_0: u32) -> i32 {
    var var_0 = Struct_1(any(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), ~u_input.d.x > _wgslsmith_add_i32(1i, u_input.a.x), all(vec3<bool>(false, true, false)))), vec3<i32>((~u_input.d.x & (i32(-1i) * -30783i)) << (arg_0 % 32u), _wgslsmith_add_i32(-12116i, -_wgslsmith_div_i32(u_input.d.x, -29892i)), 2147483647i));
    let var_1 = Struct_1(!(!any(vec4<bool>(true, var_0.a, false, var_0.a))), ~firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 9784i, 0i), u_input.d), -vec3<i32>(-53673i, var_0.b.x, var_0.b.x))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1945f, global2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), !var_1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1158f, -679f, global2.x), vec3<f32>(1174f, -111f, 2276f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 263f) * vec3<f32>(-1074f, global2.x, -664f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x))))))));
    var var_3 = all(select(!vec3<bool>(all(global1[_wgslsmith_index_u32(78708u, 3u)]), var_0.a, false), vec3<bool>(var_0.a, !all(vec2<bool>(true, var_0.a)), any(vec3<bool>(true, var_1.a, var_1.a))), any(vec2<bool>(true, true))));
    return var_1.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = global2.xz;
    var var_1 = func_4(~_wgslsmith_dot_vec3_u32(func_3(Struct_1(true, arg_1.yzy)), ~vec3<u32>(u_input.b, 1u, u_input.b) & ~vec3<u32>(1u, 0u, u_input.b)));
    let var_2 = Struct_2(arg_0.x, reverseBits(u_input.c), Struct_1(true || any(vec4<bool>(true, true, false, true)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(arg_0.x, u_input.a.x, -1i, 60935i)), ~0i, _wgslsmith_mult_i32(u_input.d.x, arg_0.x))));
    let var_3 = all(vec3<bool>(!(!var_2.c.a), true, any(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, ~1u), 3u)])));
    let var_4 = var_0.x;
    return vec3<bool>(all(vec3<bool>(any(select(vec4<bool>(var_2.c.a, true, var_3, true), vec4<bool>(true, var_3, var_3, false), vec4<bool>(var_3, false, var_3, var_3))), true, var_2.c.a)), any(!(!(!vec4<bool>(var_2.c.a, false, true, false)))), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>) -> u32 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, -1000f, -328f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, 234f, -2011f), vec3<f32>(-628f, 821f, -1306f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 1437f)), true)))));
    global1 = array<vec2<bool>, 3>();
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, global2.x, global2.x)), vec3<f32>(-672f, _wgslsmith_f_op_f32(trunc(-162f)), _wgslsmith_f_op_f32(-global2.x)), select(vec3<bool>(true, true, true), func_2(vec3<i32>(u_input.a.x, arg_1.x, 0i), vec4<i32>(u_input.d.x, -1i, arg_1.x, -1i)), vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.x, global2.x, global2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -442f, global2.x)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, -131f, 707f), vec3<f32>(643f, 1361f, -173f))))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1503f, -163f, -222f), vec3<f32>(global2.x, global2.x, 290f)))))))), !(!vec3<bool>(any(global1[_wgslsmith_index_u32(30038u, 3u)]), true, true))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x - global2.x), -147f, true)), 847f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(f32(-1f) * -224f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, global2.x, global2.x)))))));
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-443f, -984f, false)), _wgslsmith_f_op_f32(var_0.x - -425f)))), global2.x, _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_dot_vec3_u32(~(~arg_0.wyy), vec3<u32>(_wgslsmith_div_u32(~0u, abs(arg_0.x)), ~0u, select(max(25667u, global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_mult_u32(1u, 1u), any(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 3u)])))) << (_wgslsmith_dot_vec4_u32(select(arg_0, ~vec4<u32>(10468u, arg_0.x, 1u, 0u), vec4<bool>(false, false, false, false)) << (((arg_0 & vec4<u32>(0u, 18090u, global0[_wgslsmith_index_u32(0u, 8u)], arg_0.x)) & ~vec4<u32>(arg_0.x, 1u, 46048u, arg_0.x)) % vec4<u32>(32u)), ~vec4<u32>(~global0[_wgslsmith_index_u32(arg_0.x, 8u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.x, 1u), 8u)], global0[_wgslsmith_index_u32(~5942u, 8u)], _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 27600u), vec2<u32>(u_input.b, 4294967295u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.zy;
    global1 = array<vec2<bool>, 3>();
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1062f, -1468f, -280f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + var_0.x) - var_0.x)), 486f));
    let var_3 = !vec2<bool>(false, !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.a.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.a.x, -21501i, -1i, u_input.c)) <= u_input.d.x));
    global0 = array<u32, 8>();
    let var_4 = vec3<u32>(func_1(~(~(~vec4<u32>(u_input.b, 24051u, 4294967295u, 36859u))), u_input.d), ~_wgslsmith_sub_u32(u_input.b, ~global0[_wgslsmith_index_u32(52996u, 8u)]) ^ ~12727u, ~global0[_wgslsmith_index_u32(u_input.b | _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], 22235u, 0u), ~vec4<u32>(10386u, u_input.b, 38336u, 15907u)), 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1487f, -359f, 303f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, global2.x), global2.xy))) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(-464f))))), (_wgslsmith_div_u32(_wgslsmith_mult_u32(var_4.x, 1u), ~u_input.b) | ~86111u) << (func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 52950u, 0u, var_4.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 67110u, u_input.b, 0u), vec4<u32>(var_4.x, var_4.x, 1u, global0[_wgslsmith_index_u32(63122u, 8u)]))), _wgslsmith_div_vec3_i32(~u_input.d, u_input.d)) % 32u));
}

