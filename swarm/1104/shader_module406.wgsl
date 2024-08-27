struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = arg_1.c;
    global0 = array<bool, 4>();
    return _wgslsmith_dot_vec4_i32(~u_input.b, _wgslsmith_div_vec4_i32(select(u_input.b, vec4<i32>(2147483647i, _wgslsmith_div_i32(var_0.c.b.x, u_input.b.x), u_input.b.x, 43681i ^ var_0.c.b.x), !select(vec4<bool>(arg_1.b, false, arg_1.b, arg_2.x), vec4<bool>(arg_2.x, false, arg_2.x, false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]))), u_input.b));
}

fn func_3() -> u32 {
    let var_0 = ~u_input.d << (1u % 32u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = !global0[_wgslsmith_index_u32(select(u_input.a.x, 38845u, abs(var_0 & 113239i) >= -reverseBits(u_input.b.x)), 4u)];
    let var_3 = Struct_3(!(_wgslsmith_f_op_f32(trunc(var_1)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -1103f))), any(select(vec4<bool>(global0[_wgslsmith_index_u32(~106607u, 4u)], any(vec2<bool>(false, false)), any(vec4<bool>(global0[_wgslsmith_index_u32(55090u, 4u)], false, true, global0[_wgslsmith_index_u32(24065u, 4u)])), global0[_wgslsmith_index_u32(min(u_input.a.x, u_input.a.x), 4u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)], false, global0[_wgslsmith_index_u32(27668u, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], true)), !(u_input.c.x != u_input.c.x))), Struct_2(select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(global0[_wgslsmith_index_u32(17984u, 4u)], false), global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec2<bool>(false, false)), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(u_input.c.x, 4u)])), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 4u)] & global0[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_1(-1217f, ~(~u_input.b.zw), ~firstLeadingBit(u_input.c.x), u_input.a), Struct_1(_wgslsmith_f_op_f32(-var_1), vec2<i32>(_wgslsmith_mult_i32(-3256i, var_0), firstTrailingBit(0i)), ~u_input.c.x | ~u_input.a.x, vec2<u32>(u_input.a.x, 42005u)), var_1, Struct_1(-1158f, u_input.b.zy, _wgslsmith_mult_u32(_wgslsmith_sub_u32(11658u, u_input.a.x), u_input.c.x), u_input.c)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-838f + -388f) - _wgslsmith_f_op_f32(-var_1)), ~firstTrailingBit(u_input.b.zw), u_input.c.x, _wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x & 0u), _wgslsmith_clamp_vec2_u32(u_input.c, max(u_input.a, vec2<u32>(0u, u_input.a.x)), vec2<u32>(u_input.a.x, 11798u)))), u_input.a.x >> (_wgslsmith_mod_u32(abs(u_input.a.x) | 1u, u_input.c.x) % 32u));
    global0 = array<bool, 4>();
    return max(firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(3428u, 0u, var_3.e), vec3<u32>(35210u, u_input.a.x, var_3.c.b.d.x)) ^ u_input.c.x)), ~65244u);
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<bool, 4>();
    let var_0 = Struct_2(vec2<bool>(_wgslsmith_mult_i32(~arg_0, func_2(vec3<f32>(-601f, 1410f, -1000f), Struct_3(false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(5433u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(388f, vec2<i32>(1i, u_input.b.x), u_input.c.x, u_input.a), Struct_1(828f, u_input.b.xw, 65417u, u_input.c), -1002f, Struct_1(634f, vec2<i32>(arg_0, -2147483647i), u_input.c.x, u_input.a)), Struct_1(-1000f, u_input.b.yz, u_input.a.x, vec2<u32>(u_input.a.x, 34902u)), 0u), vec3<bool>(global0[_wgslsmith_index_u32(58268u, 4u)], true, global0[_wgslsmith_index_u32(55071u, 4u)]), Struct_1(924f, vec2<i32>(21072i, -1i), 6247u, u_input.c))) >= u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), Struct_1(275f, vec2<i32>(arg_0, -31967i), ~func_3(), vec2<u32>(u_input.a.x, ~u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -300f)), _wgslsmith_mult_vec2_i32(-u_input.b.xw, select(u_input.b.wy, vec2<i32>(u_input.b.x, 1i) << (vec2<u32>(9902u, u_input.a.x) % vec2<u32>(32u)), true)), func_3(), _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(1u, u_input.c.x)), ~(~u_input.c))), -150f, Struct_1(1000f, vec2<i32>(-1i, -36413i), 1u, vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 66749u)), _wgslsmith_mod_u32(u_input.c.x, 1u) ^ u_input.a.x)));
    var var_1 = Struct_4(vec4<i32>(u_input.d, -1i, -5810i, u_input.b.x), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.e.d.x, 4u)], !global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.c.d.x, 4u)], global0[_wgslsmith_index_u32(16958u, 4u)]))), !select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.c, 4u)], true, global0[_wgslsmith_index_u32(var_0.c.d.x, 4u)], false), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(4294967295u, 4u)]), global0[_wgslsmith_index_u32(4294967295u, 4u)]), select(vec4<bool>(false, true, false, var_0.a.x), vec4<bool>(global0[_wgslsmith_index_u32(7760u, 4u)], true, global0[_wgslsmith_index_u32(1u, 4u)], true), true), !global0[_wgslsmith_index_u32(var_0.e.c, 4u)]), var_0.a.x), vec3<f32>(-1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1175f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) - var_0.e.a)))), Struct_2(var_0.a, Struct_1(var_0.d, vec2<i32>(arg_0, 11778i), var_0.e.c, ~min(vec2<u32>(6379u, u_input.a.x), vec2<u32>(40181u, 35483u))), var_0.b, var_0.b.a, Struct_1(var_0.b.a, vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(4661i, var_0.c.b.x, u_input.d, 1i)), var_0.c.b.x), func_3(), vec2<u32>(~4294967295u, ~1u))), 0u);
    global0 = array<bool, 4>();
    let var_2 = _wgslsmith_f_op_f32(floor(var_0.d));
    return _wgslsmith_f_op_f32(floor(-1898f));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(vec4<i32>(~(-4332i), 1i, ~(~1i), u_input.b.x | abs(-15494i)), !arg_2.b, _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2021f)) * _wgslsmith_f_op_f32(min(1196f, arg_1)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 781f, 450f)) + _wgslsmith_f_op_vec3_f32(arg_2.c - arg_2.c)), arg_2.c))), Struct_2(vec2<bool>(true, true), arg_2.d.e, arg_2.d.e, arg_0, arg_2.d.c), arg_2.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_0, -372f, -566f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-119f, 237f, 826f, 1000f))));
    global0 = array<bool, 4>();
    let var_2 = (((arg_2.d.e.c ^ (arg_2.d.b.d.x | 12755u)) & _wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.d.b.d.x, var_0.e), vec2<u32>(arg_2.e, arg_2.e)))) & ~(~(~220u))) & u_input.c.x;
    let var_3 = Struct_4(-(_wgslsmith_add_vec4_i32(var_0.a, arg_2.a) ^ firstTrailingBit(arg_2.a)) ^ ~var_0.a, !vec4<bool>(false, -67891i == (arg_2.a.x | 1i), _wgslsmith_mult_u32(var_2, 0u) != firstLeadingBit(u_input.a.x), !all(var_0.b)), var_1.wyw, Struct_2(vec2<bool>(true, all(vec4<bool>(true, var_0.d.a.x, arg_2.d.a.x, false))), var_0.d.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.e.a) - _wgslsmith_f_op_f32(f32(-1f) * -995f)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.b.yx | arg_2.d.b.b), ~4294967295u, _wgslsmith_sub_vec2_u32(max(vec2<u32>(1u, var_2), vec2<u32>(arg_2.d.c.d.x, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(49832u, 75748u), arg_2.d.c.d))), _wgslsmith_f_op_f32(arg_2.c.x * -396f), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.d.c.a))), vec2<i32>(var_0.d.c.b.x, 2147483647i) & ~vec2<i32>(arg_2.d.e.b.x, arg_2.d.c.b.x), var_2, arg_2.d.c.d)), _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(1u, 1u, 4294967295u) & _wgslsmith_sub_u32(62537u, var_0.e)), var_0.d.e.d.x));
    return var_3.d;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.e.a, arg_0.e.a, _wgslsmith_f_op_f32(-arg_0.d), -1376f)));
    var var_1 = 22605u | u_input.a.x;
    var var_2 = 0i;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 696f)) - arg_0.b.a), min(arg_0.e.b, u_input.b.wz), 40260u, ~(~u_input.c & arg_0.b.d));
    let var_4 = _wgslsmith_add_i32(~(-21619i), u_input.b.x);
    return Struct_1(1000f, func_4(-1150f, 1049f, Struct_4(u_input.b, !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], false, true, arg_0.a.x)), vec3<f32>(-346f, _wgslsmith_f_op_f32(-var_0.x), 478f), func_4(var_3.a, _wgslsmith_div_f32(var_0.x, arg_0.b.a), Struct_4(u_input.b, vec4<bool>(arg_0.a.x, false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false), var_0.ywx, arg_0, 1u)), arg_0.e.c | 12073u)).e.b, max(_wgslsmith_clamp_u32(~(~u_input.c.x), var_3.c | arg_0.b.d.x, var_3.d.x), var_3.d.x), vec2<u32>(33169u, u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1480f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(1i))), -74127i >= select(0i, u_input.b.x, false))), 1f, Struct_4(u_input.b, vec4<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 4u)])), true, false || global0[_wgslsmith_index_u32(u_input.a.x, 4u)], any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(320f, 2701f, 2397f))), Struct_2(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(17077u, 4u)]), Struct_1(793f, vec2<i32>(0i, u_input.d), 50994u, vec2<u32>(4294967295u, 1u)), Struct_1(1000f, vec2<i32>(12737i, u_input.d), u_input.c.x, vec2<u32>(31446u, u_input.a.x)), -1171f, Struct_1(-396f, vec2<i32>(0i, -4185i), 4294967295u, vec2<u32>(u_input.c.x, 4294967295u))), max(_wgslsmith_sub_u32(u_input.c.x, 1u), 1u))));
    var var_1 = vec3<u32>(~u_input.c.x & abs(var_0.d.x), _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, ~(~6124u), _wgslsmith_sub_u32(var_0.c, 67833u), abs(var_0.d.x)), vec4<u32>(29389u, u_input.c.x, _wgslsmith_mult_u32(74058u << (1u % 32u), 1u), 6072u)));
    var var_2 = Struct_2(!select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false), vec2<bool>(true, !global0[_wgslsmith_index_u32(1u, 4u)]), func_4(var_0.a, _wgslsmith_f_op_f32(var_0.a * var_0.a), Struct_4(vec4<i32>(3535i, -1i, 53625i, 1353i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], true, global0[_wgslsmith_index_u32(var_1.x, 4u)], false), vec3<f32>(-251f, var_0.a, var_0.a), Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(34248u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_1(var_0.a, vec2<i32>(2147483647i, 0i), u_input.a.x, vec2<u32>(var_0.c, var_0.d.x)), Struct_1(-2516f, var_0.b, var_0.d.x, u_input.a), 1000f, Struct_1(var_0.a, vec2<i32>(u_input.d, u_input.d), 4294967295u, var_1.yx)), 4294967295u)).a), func_4(var_0.a, 598f, Struct_4(max(u_input.b, abs(vec4<i32>(0i, 0i, 1i, var_0.b.x))), select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.c, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)], true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 4u)], true, global0[_wgslsmith_index_u32(1u, 4u)], true)), !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)], false, global0[_wgslsmith_index_u32(4294967295u, 4u)])), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1733f, 185f, var_0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-694f, var_0.a, -1322f)), select(false, false, global0[_wgslsmith_index_u32(67848u, 4u)]))), func_4(1172f, -1225f, Struct_4(u_input.b, vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], false), vec3<f32>(var_0.a, var_0.a, 359f), Struct_2(vec2<bool>(false, false), Struct_1(var_0.a, u_input.b.zz, u_input.a.x, vec2<u32>(1u, 4294967295u)), Struct_1(var_0.a, vec2<i32>(var_0.b.x, -1i), u_input.a.x, var_1.zy), var_0.a, Struct_1(var_0.a, u_input.b.wx, 1u, u_input.c)), u_input.c.x)), ~(~25059u))).b, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1428f) + _wgslsmith_f_op_f32(-var_0.a)) + var_0.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(~2147483647i, u_input.b.x), u_input.b.yw, vec2<i32>(var_0.b.x, firstTrailingBit(-2147483647i))), 0u, ~(~_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, var_1.x)))), var_0.a, Struct_1(var_0.a, var_0.b ^ _wgslsmith_sub_vec2_i32(u_input.b.zz, vec2<i32>(u_input.d, 0i)), ~1u, ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.x, 1u), ~vec2<u32>(var_1.x, var_0.d.x))));
    let var_3 = ~67341u;
    let var_4 = !select(!vec3<bool>(func_4(-537f, var_0.a, Struct_4(vec4<i32>(1i, 63850i, 0i, var_2.c.b.x), vec4<bool>(false, var_2.a.x, false, global0[_wgslsmith_index_u32(var_3, 4u)]), vec3<f32>(var_0.a, var_0.a, var_0.a), Struct_2(vec2<bool>(true, false), var_2.c, var_2.b, 893f, var_2.c), var_1.x)).a.x, true, false), select(select(vec3<bool>(false, var_2.a.x, true), vec3<bool>(true, true, false), select(var_2.a.x, global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(var_1.x, 4u)])), !select(vec3<bool>(var_2.a.x, global0[_wgslsmith_index_u32(7525u, 4u)], false), vec3<bool>(var_2.a.x, false, global0[_wgslsmith_index_u32(13815u, 4u)]), var_2.a.x), true), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(23999u, 4u)], false), vec4<bool>(false, var_2.a.x, true, var_2.a.x))));
    var var_5 = func_4(_wgslsmith_f_op_f32(-var_2.b.a), var_0.a, Struct_4(u_input.b, select(!select(vec4<bool>(true, false, true, var_2.a.x), vec4<bool>(var_2.a.x, false, var_2.a.x, true), vec4<bool>(true, false, true, false)), !vec4<bool>(var_2.a.x, true, true, true), vec4<bool>(true, false, var_2.e.b.x > u_input.d, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1312f, 546f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1694f, -1167f, 1000f) * vec3<f32>(var_2.e.a, var_2.d, var_0.a)))), Struct_2(vec2<bool>(true, true), func_5(func_4(-1103f, 151f, Struct_4(vec4<i32>(var_2.c.b.x, 1i, -18123i, -1i), vec4<bool>(var_4.x, false, var_4.x, false), vec3<f32>(var_2.c.a, 2228f, var_2.e.a), Struct_2(var_2.a, Struct_1(-1777f, vec2<i32>(6192i, -5240i), 101050u, var_2.e.d), var_2.b, 625f, var_2.e), var_0.c))), Struct_1(_wgslsmith_div_f32(-477f, 2029f), vec2<i32>(49248i, -4327i), ~var_2.c.d.x, ~var_0.d), -627f, Struct_1(_wgslsmith_f_op_f32(var_0.a * -715f), ~vec2<i32>(34347i, -13837i), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 1u, 88644u, 32156u), vec4<u32>(1u, 77768u, var_3, var_1.x)), vec2<u32>(u_input.a.x, u_input.a.x))), 23955u)).e;
    var var_6 = ~(vec4<i32>(-1i) * -vec4<i32>(var_2.b.b.x, firstTrailingBit(11560i), 1i, _wgslsmith_mod_i32(var_2.b.b.x, var_2.b.b.x)));
    var_1 = _wgslsmith_mult_vec3_u32(min(~(vec3<u32>(45941u, 1u, 4294967295u) >> (~vec3<u32>(var_1.x, var_3, u_input.a.x) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 35109u, var_2.e.c), firstTrailingBit(vec3<u32>(25207u, var_1.x, var_0.d.x)), vec3<u32>(var_1.x, u_input.a.x, var_1.x) >> (vec3<u32>(25712u, var_5.d.x, 42558u) % vec3<u32>(32u)))), vec3<u32>(var_3, var_2.c.c, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -471f), vec4<i32>(max(min(-2697i, 15729i), var_5.b.x), var_6.x, var_6.x, var_6.x) & abs(vec4<i32>(u_input.b.x, 1i, func_2(vec3<f32>(-954f, 1776f, 2290f), Struct_3(true, global0[_wgslsmith_index_u32(25423u, 4u)], Struct_2(vec2<bool>(true, false), var_2.c, Struct_1(-1126f, vec2<i32>(-232i, var_5.b.x), 54454u, var_0.d), -1319f, var_2.b), Struct_1(-1363f, var_2.e.b, var_0.c, u_input.a), var_1.x), vec3<bool>(true, var_2.a.x, var_2.a.x), var_2.e), -var_2.e.b.x)));
}

