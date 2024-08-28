struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_3,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<f32, 19> = array<f32, 19>(1509f, -829f, -609f, 528f, 1313f, -159f, 1221f, 1906f, 838f, -1276f, -378f, -874f, 116f, 850f, -1115f, 1134f, -1000f, 1421f, -366f);

var<private> global2: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32) -> u32 {
    global0 = 11919i;
    var var_0 = Struct_5(Struct_2(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.c, 30022i)), vec2<i32>(1i, 1i), vec2<i32>(12660i, -33064i)), ~(vec2<i32>(0i, u_input.a) | vec2<i32>(u_input.a, u_input.c))), abs(~u_input.b >> (firstLeadingBit(0u) % 32u))), Struct_1(u_input.b, _wgslsmith_mult_i32(1i, u_input.a), ~u_input.c), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 56408u), 19u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 19u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1192f, -800f, -1998f, global1[_wgslsmith_index_u32(1u, 19u)]))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(27148u, 19u)], -2531f, global1[_wgslsmith_index_u32(u_input.b, 19u)], -237f))))))), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(max(u_input.a, 1i), _wgslsmith_mod_i32(u_input.a, 43079i), abs(u_input.c), 23074i)), (_wgslsmith_add_vec4_i32(vec4<i32>(18432i, 0i, u_input.c, u_input.c), vec4<i32>(u_input.c, 2147483647i, 50907i, u_input.a)) | -vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)) ^ firstLeadingBit(vec4<i32>(1i, 2147483647i, 38644i, -2147483647i)), -(~reverseBits(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)))));
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    let var_1 = Struct_5(var_0.a, var_0.b, var_0.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.d)), var_0.d)))), _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.a, var_0.e.x, true), max(-1i, 0i) & var_0.a.a.x, (i32(-1i) * -1i) << ((arg_0 << (1u % 32u)) % 32u), -_wgslsmith_sub_i32(-38336i, 909i)), ~(-var_0.e) | -firstLeadingBit(vec4<i32>(42634i, 1i, 1i, -77161i))));
    return var_1.b.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec4<f32>(-836f, global1[_wgslsmith_index_u32(~func_3(select(u_input.b, _wgslsmith_mult_u32(u_input.b, 19815u), true)), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -594f), global1[_wgslsmith_index_u32(4294967295u, 19u)], all(vec4<bool>(false, true, true, false)))) + global1[_wgslsmith_index_u32(~u_input.b, 19u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1824f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 19u)]) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 19u)] + 1170f)))));
    var var_1 = Struct_1(reverseBits(u_input.b), arg_0.x, ~select(u_input.a, 25432i ^ _wgslsmith_clamp_i32(arg_0.x, -2147483647i, arg_0.x), true));
    global1 = array<f32, 19>();
    global2 = select(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(var_1.a, 4294967295u, u_input.b, 4294967295u), ~vec4<u32>(u_input.b, u_input.b, 41594u, u_input.b), global1[_wgslsmith_index_u32(4294967295u, 19u)] <= var_0.x), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(3297u, 8943u, var_1.a, 57671u)), max(vec4<u32>(79820u, 4294967295u, 0u, 34427u), vec4<u32>(u_input.b, 958u, u_input.b, 77402u)))), u_input.b ^ func_3(var_1.a ^ var_1.a)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(101504u, var_1.a, 1u), vec3<u32>(73307u, 64244u, 4503u), vec3<bool>(true, false, false)) >> (vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b, 4294967295u), ~8701u) % vec3<u32>(32u)), select(~vec3<u32>(var_1.a, 1u, 0u), select(vec3<u32>(var_1.a, 63307u, u_input.b), vec3<u32>(4294967295u, 79169u, 1u), vec3<bool>(true, true, true)), true) & (select(vec3<u32>(0u, 21318u, 17335u), vec3<u32>(39786u, var_1.a, 0u), vec3<bool>(true, false, false)) & vec3<u32>(0u, u_input.b, u_input.b))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, false)) * var_0.x));
    var var_2 = Struct_5(Struct_2(vec2<i32>(24341i, u_input.c) | vec2<i32>(1i, 5922i), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_1.a, u_input.b), select(min(vec3<u32>(0u, var_1.a, var_1.a), vec3<u32>(var_1.a, 34463u, 32131u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a, var_1.a, 4294967295u), vec3<u32>(u_input.b, u_input.b, 58749u)), false))), Struct_1(~var_1.a, ~countOneBits(var_1.c), _wgslsmith_mod_i32(abs(arg_0.x), 0i) ^ _wgslsmith_add_i32(-1i, min(arg_0.x, 56903i))), Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8858u, 19u)])))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] - global1[_wgslsmith_index_u32(13869u, 19u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(69239u, 19u)], var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -675f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 398f, global1[_wgslsmith_index_u32(u_input.b, 19u)], 317f)) - vec4<f32>(var_0.x, var_0.x, global1[_wgslsmith_index_u32(u_input.b, 19u)], var_0.x)))), select(vec4<i32>(_wgslsmith_sub_i32(~50206i, u_input.c), arg_0.x | var_1.c, arg_0.x, ~(i32(-1i) * -30812i)), countOneBits(-vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.a)), all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), false))));
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    var var_0 = firstLeadingBit(max(vec2<u32>(u_input.b, _wgslsmith_dot_vec2_u32(arg_1.wx, arg_1.xw)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.x, u_input.b), arg_1.zw))) ^ ~arg_1.xw;
    global0 = 36512i;
    var var_1 = func_2(countOneBits(~vec2<i32>(2147483647i, u_input.c)) << (vec2<u32>(max(_wgslsmith_mod_u32(4294967295u, 13584u), max(arg_1.x, arg_1.x)), ~arg_1.x) % vec2<u32>(32u)));
    let var_2 = vec4<u32>(arg_1.x, var_0.x, reverseBits(22531u << (_wgslsmith_mod_u32(1u, ~var_0.x) % 32u)), _wgslsmith_div_u32(arg_1.x, _wgslsmith_dot_vec2_u32(~(~arg_1.zy), arg_1.wy)));
    let var_3 = 1000f;
    return u_input.a;
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = array<f32, 19>();
    let var_0 = Struct_4(Struct_1(countOneBits(9612u), u_input.c, -firstLeadingBit(-2147483647i)), !(!select(select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0)), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, true, true))), Struct_3(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-636f + global1[_wgslsmith_index_u32(15484u, 19u)]) + -1000f))));
    global2 = _wgslsmith_clamp_u32(var_0.a.a, func_3(1u), u_input.b);
    global0 = ~(-(1i >> (_wgslsmith_div_u32(~u_input.b, 2449u) % 32u)));
    let var_1 = Struct_5(Struct_2(~vec2<i32>(arg_1.x & arg_2.x, -4272i), var_0.a.a), var_0.a, var_0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.a, 19u)], 1089f, 1812f, global1[_wgslsmith_index_u32(var_0.a.a, 19u)]), vec4<f32>(var_0.c.a, global1[_wgslsmith_index_u32(4294967295u, 19u)], 2129f, var_0.c.a)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.a, 1372f, -185f, global1[_wgslsmith_index_u32(1u, 19u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(8161u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), false))))))), -vec4<i32>(u_input.a, arg_2.x, arg_2.x ^ ~u_input.c, var_0.a.c ^ ~var_0.a.c));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_4(true, vec4<i32>(func_1(i32(-1i) * -23692i, vec4<u32>(81010u, u_input.b, 61342u, 12508u)), _wgslsmith_add_i32(func_2(vec2<i32>(u_input.a, u_input.a)).a.x, ~u_input.c), u_input.a, 0i), vec4<i32>(u_input.a, ~(-40731i), max(-29236i, 0i), i32(-1i) * -2147483647i) ^ select(-vec4<i32>(-14912i, -15263i, -22110i, u_input.c), ~vec4<i32>(u_input.c, u_input.a, 0i, u_input.a), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), false))), Struct_1(func_4(true, firstTrailingBit(vec4<i32>(-50228i, u_input.a, 0i, u_input.a) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 49263u) % vec4<u32>(32u))), ~(-vec4<i32>(u_input.a, 1i, 8322i, u_input.a))).b, abs(-23699i), -func_4(true, vec4<i32>(-66651i, u_input.c, -17467i, 58123i) << (vec4<u32>(0u, 1u, 0u, u_input.b) % vec4<u32>(32u)), max(vec4<i32>(29121i, u_input.a, 1i, -7941i), vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.c))).a.x), Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(69583u, ~1u), 19u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], -456f, global1[_wgslsmith_index_u32(0u, 19u)], 132f) * vec4<f32>(global1[_wgslsmith_index_u32(17281u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], -202f))))), vec4<i32>(-17956i, ~select(u_input.c, max(-8397i, -2147483647i), any(vec3<bool>(false, true, true))), ~u_input.c, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -45914i, -26092i, -1i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))));
    global1 = array<f32, 19>();
    global2 = (4294967295u | u_input.b) | ~(~(_wgslsmith_add_u32(0u, 16468u) >> (1u % 32u)));
    let var_1 = vec3<u32>(var_0.b.a, 0u, u_input.b);
    var_0 = Struct_5(func_2(~_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.a.a, var_0.a.a), _wgslsmith_sub_vec2_i32(var_0.a.a, vec2<i32>(-80648i, -41977i)))), var_0.b, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.d)))), -abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.a.a.x, 1i, 2147483647i), var_0.e)));
    global2 = ~_wgslsmith_sub_u32(145037u, func_2(vec2<i32>(1i, 23110i)).b);
    let var_2 = Struct_2(-var_0.e.yx, var_0.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(var_2.b, var_2.b, 20381u, var_1.x)) << (select(~vec4<u32>(u_input.b, var_2.b, var_1.x, u_input.b), select(vec4<u32>(var_1.x, 0u, 1u, var_1.x), vec4<u32>(1u, var_0.b.a, 344u, 82715u), vec4<bool>(false, true, true, true)) ^ (vec4<u32>(1u, var_0.b.a, 47650u, 0u) >> (vec4<u32>(13048u, 39676u, 1u, var_2.b) % vec4<u32>(32u))), vec4<bool>(all(vec4<bool>(true, false, true, false)), -1167f >= global1[_wgslsmith_index_u32(var_0.a.b, 19u)], all(vec4<bool>(true, true, true, true)), false)) % vec4<u32>(32u)), var_0.e.x, ~abs(_wgslsmith_div_vec3_i32(var_0.e.wxw, -var_0.e.zwy)));
}

