struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(-49546i, -35212i, -1i), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(2147483647i, -30970i, 1i), vec3<i32>(-1i, 22082i, 6370i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 81080i, 38308i), vec3<i32>(-27466i, 21073i, 2147483647i), vec3<i32>(2147483647i, -33422i, 3710i), vec3<i32>(1i, -1i, 7084i), vec3<i32>(1i, -32616i, -1i));

var<private> global1: f32 = -1000f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = (1u << (select(u_input.a.x, ~4294967295u, false) % 32u)) <= 0u;
    global0 = array<vec3<i32>, 11>();
    var var_1 = Struct_3(Struct_1(!(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, var_0), var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(255f, 888f, _wgslsmith_f_op_f32(max(arg_0, -479f)), 1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, 994f, 2106f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -675f, arg_0, arg_0) * vec4<f32>(-398f, arg_0, arg_0, arg_0)) - vec4<f32>(arg_0, -739f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -511f, arg_0, arg_0))))), Struct_2(Struct_1(vec3<bool>(var_0 | var_0, var_0, any(vec3<bool>(var_0, var_0, false))))), -1597f);
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, countOneBits(-2147483647i)) >> (firstLeadingBit(u_input.a.x) % 32u), _wgslsmith_dot_vec3_i32(max(vec3<i32>(30971i, -1i, 10146i), global0[_wgslsmith_index_u32(1u, 11u)]), vec3<i32>(0i, -38031i, 1i)) | _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 19014i, 11973i), countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), -2147483647i), ~_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 11u)], -vec3<i32>(1i, 13075i, 1i)), reverseBits(countOneBits(global0[_wgslsmith_index_u32(4294967295u, 11u)]))));
    let var_3 = Struct_2(var_1.a);
    return var_1.b.x > -132f;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(!func_3(-645f), _wgslsmith_f_op_f32(f32(-1f) * -1116f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(172f))), !arg_0.x & true));
    var var_1 = -firstTrailingBit(max(_wgslsmith_div_i32(-2147483647i, 1i), -78409i));
    var var_2 = Struct_3(Struct_1(!(!select(var_0.a, vec3<bool>(var_0.a.x, false, arg_1.x), vec3<bool>(true, var_0.a.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), -126f, _wgslsmith_div_f32(610f, 785f), _wgslsmith_f_op_f32(round(-1585f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -1000f, 216f, -704f)))), Struct_2(Struct_1(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x));
    global1 = var_2.d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b.x)) + _wgslsmith_f_op_f32(round(-742f)));
}

fn func_4(arg_0: u32, arg_1: f32) -> bool {
    let var_0 = true;
    let var_1 = Struct_3(Struct_1(vec3<bool>(!var_0, false, var_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2301f, arg_1, 1000f, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-436f, arg_1, 313f, arg_1)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-179f, -1434f, -691f, arg_1), vec4<f32>(arg_1, arg_1, arg_1, arg_1))))))), Struct_2(Struct_1(!(!vec3<bool>(var_0, var_0, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1338f)));
    var var_2 = Struct_2(var_1.a);
    var var_3 = arg_0 & 1u;
    var_2 = Struct_2(var_2.a);
    return true;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(sign(arg_1.x));
    let var_0 = reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, 1u) >> (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u))), select(~u_input.a.xww, vec3<u32>(u_input.a.x, 39836u, 4294967295u), vec3<bool>(false, arg_0.x, arg_3.a.x))), u_input.a.wwz));
    var var_1 = arg_1.x;
    var var_2 = u_input.a.zw;
    let var_3 = ~(_wgslsmith_clamp_i32(4068i, -36748i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(82140i, 2147483647i), vec2<i32>(-1i, -1i)))) << (_wgslsmith_sub_u32(8417u, _wgslsmith_dot_vec4_u32(abs(u_input.a), vec4<u32>(var_2.x, 23827u, 1u, u_input.a.x) << (vec4<u32>(14947u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)))) % 32u));
    return arg_2;
}

fn func_1() -> bool {
    var var_0 = func_5(vec4<bool>(false, true, func_4(select(~u_input.a.x, 4294967295u << (u_input.a.x % 32u), select(false, true, false)), _wgslsmith_f_op_f32(-218f * _wgslsmith_f_op_f32(func_2(vec2<bool>(false, true), vec2<bool>(true, false))))), true), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1051f * _wgslsmith_f_op_f32(min(1050f, -206f))), _wgslsmith_f_op_f32(abs(-589f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(365f))), 970f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1671f) + -299f) * -273f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(138f)))))), Struct_2(Struct_1(vec3<bool>(true, true, true))), Struct_1(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, true)), true)));
    var_0 = func_5(select(vec4<bool>(false, true, func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 70371u, 0u), u_input.a), _wgslsmith_f_op_f32(min(167f, -2167f))), any(var_0.a.a.xy)), !vec4<bool>(select(false, true, var_0.a.a.x), var_0.a.a.x == var_0.a.a.x, select(true, false, var_0.a.a.x), false), select(!(!vec4<bool>(var_0.a.a.x, true, false, false)), !vec4<bool>(var_0.a.a.x, false, false, var_0.a.a.x), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, _wgslsmith_f_op_f32(func_2(var_0.a.a.zx, func_5(vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, true), vec4<f32>(851f, -430f, 300f, -144f), Struct_2(var_0.a), var_0.a).a.a.yy)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1309f, 1050f, var_0.a.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -242f)))), Struct_2(Struct_1(!(!vec3<bool>(var_0.a.a.x, false, true)))), func_5(!(!(!vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, -675f, -1021f, 587f) * vec4<f32>(163f, -1381f, -294f, -604f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(259f, 933f, -411f, 306f)))), func_5(select(select(vec4<bool>(false, var_0.a.a.x, true, var_0.a.a.x), vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, true), var_0.a.a.x), select(vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, true), vec4<bool>(var_0.a.a.x, true, true, var_0.a.a.x), vec4<bool>(false, true, true, var_0.a.a.x)), true), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -542f), -207f, -1590f, _wgslsmith_f_op_f32(f32(-1f) * -1187f)), Struct_2(Struct_1(var_0.a.a)), var_0.a), func_5(vec4<bool>(var_0.a.a.x || true, var_0.a.a.x, !var_0.a.a.x, !var_0.a.a.x), vec4<f32>(_wgslsmith_f_op_f32(sign(-764f)), -502f, _wgslsmith_f_op_f32(sign(-956f)), -874f), Struct_2(func_5(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false), vec4<f32>(-546f, -150f, 1368f, -1326f), Struct_2(var_0.a), Struct_1(vec3<bool>(var_0.a.a.x, var_0.a.a.x, true))).a), func_5(vec4<bool>(true, true, var_0.a.a.x, var_0.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, 180f, -1212f, 1435f)), func_5(vec4<bool>(false, var_0.a.a.x, true, var_0.a.a.x), vec4<f32>(486f, 1475f, -837f, 550f), Struct_2(Struct_1(vec3<bool>(false, true, false))), var_0.a), var_0.a).a).a).a);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1329f)) + _wgslsmith_f_op_f32(f32(-1f) * -106f));
    global1 = _wgslsmith_f_op_f32(sign(-1000f));
    var_0 = Struct_2(Struct_1(vec3<bool>(any(select(vec4<bool>(false, var_0.a.a.x, false, var_0.a.a.x), vec4<bool>(false, var_0.a.a.x, true, true), vec4<bool>(var_0.a.a.x, true, false, var_0.a.a.x))), true, var_0.a.a.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(vec4<bool>(22949u >= u_input.a.x, true, false, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true), true), true), vec4<bool>(func_1(), true, true, firstLeadingBit(-1i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -10553i), vec2<i32>(-31643i, -2147483647i))), false);
    var var_1 = ~abs(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(1u, firstTrailingBit(4294967295u)), 8410u));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, -565f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1160f * -1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-854f))))));
    var var_2 = func_5(!var_0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), func_5(!(!select(var_0, vec4<bool>(var_0.x, false, false, var_0.x), var_0)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1652f - 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1002f - 1461f))), _wgslsmith_f_op_f32(1466f + -266f), _wgslsmith_f_op_f32(floor(282f))), Struct_2(Struct_1(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, false), false))), Struct_1(vec3<bool>(var_0.x, true, func_1()))), Struct_1(select(!var_0.wyz, func_5(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-822f, 1000f, -326f, 1009f) + vec4<f32>(-439f, -439f, -1186f, -1000f)), func_5(var_0, vec4<f32>(-186f, 1280f, 231f, -1119f), Struct_2(Struct_1(vec3<bool>(var_0.x, false, false))), Struct_1(vec3<bool>(false, var_0.x, var_0.x))), Struct_1(var_0.zzy)).a.a, var_0.x))).a;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(867f, 505f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1128f), !var_2.a.x)) - 432f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1269f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(105f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-626f, 285f, false))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1799f, -1855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -392f))), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(0u, u_input.a.x, 17687u)) >> (~(vec3<u32>(24486u, var_1.x, 111286u) & u_input.a.zxz) % vec3<u32>(32u)), u_input.a.zxz), select(vec3<u32>(u_input.a.x, 4294967295u, var_1.x), max(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.a.zzx, u_input.a.wzw), _wgslsmith_div_u32(var_1.x, 1u), _wgslsmith_mult_u32(var_1.x, 1u)), _wgslsmith_mod_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.a.x, 1535u, 1u))), var_2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(78008i, -45257i), max(1i, -16901i), 19537i, -1i), countOneBits(reverseBits(vec4<i32>(-1i, 1751i, 52326i, -2147483647i)))) >> ((_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 4294967295u) ^ u_input.a.x) % 32u), -335f);
}

