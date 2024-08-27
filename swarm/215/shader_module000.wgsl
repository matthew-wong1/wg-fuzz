struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

var<private> global1: array<i32, 29>;

var<private> global2: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    global2 = !arg_0.c;
    var var_0 = Struct_1(countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(47589i, 45469i, 30614i), -arg_0.a)), vec2<u32>(0u, arg_0.d) & arg_0.b, true, 0u);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1529f, -554f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1082f)) + _wgslsmith_f_op_f32(-451f + -1571f))), 140f, !var_0.c)));
    return select(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b, 29u)] ^ arg_0.a.x, _wgslsmith_sub_i32(-1i, -2147483647i), ~u_input.a.x, 2147483647i >> (var_0.d % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_0.a.x, global1[_wgslsmith_index_u32(1u, 29u)], u_input.a.x), firstLeadingBit(vec4<i32>(22083i, -30550i, u_input.a.x, 31250i)))), -2147483647i, var_0.a.x), var_0.a, vec3<bool>(arg_0.c, arg_0.c, select(false, _wgslsmith_dot_vec2_u32(arg_0.b, var_0.b) >= 0u, !(var_0.c & var_0.c))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1884f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-272f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f - 1851f)))), 1000f);
    let var_1 = ~(~max(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(76408u, arg_0.b.x, u_input.b, 63254u), vec4<u32>(u_input.b, arg_3.d, 58872u, 1u)), ~vec4<u32>(u_input.b, 68001u, arg_2.b.x, arg_0.b.x)), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, arg_2.d), vec4<u32>(arg_0.b.x, 19635u, 34758u, arg_3.d)))));
    return !select(select(!(!vec2<bool>(arg_0.c, true)), vec2<bool>(true, 24751i <= arg_3.a.x), !select(vec2<bool>(false, arg_2.c), vec2<bool>(false, true), vec2<bool>(false, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_3.c, true), vec2<bool>(true, false), vec2<bool>(true, arg_2.c)), vec2<bool>(true, arg_3.c), !vec2<bool>(arg_3.c, arg_3.c)), select(!vec2<bool>(arg_2.c, arg_2.c), !vec2<bool>(false, arg_3.c), vec2<bool>(arg_0.c, true))), select(vec2<bool>(!arg_0.c, true && arg_0.c), !(!vec2<bool>(arg_0.c, true)), -436f <= var_0.x));
}

fn func_2() -> i32 {
    var var_0 = ~(~u_input.b);
    let var_1 = ~vec4<u32>(44485u, _wgslsmith_sub_u32(u_input.b | u_input.b, 1u), u_input.b, u_input.b);
    var var_2 = global0[_wgslsmith_index_u32(18910u, 12u)];
    let var_3 = select(func_4(Struct_1(func_3(Struct_1(u_input.a, vec2<u32>(var_1.x, 4294967295u), true, u_input.b)) | (vec3<i32>(global1[_wgslsmith_index_u32(46817u, 29u)], u_input.a.x, 35704i) & vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)])), vec2<u32>(~var_1.x, 4294967295u), var_2.x, firstTrailingBit(27429u)), -u_input.a.x, Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, u_input.a.x), u_input.a), vec2<u32>(28943u, u_input.b | 21714u), var_2.x, var_1.x), Struct_1(~(u_input.a >> (vec3<u32>(12299u, u_input.b, u_input.b) % vec3<u32>(32u))), var_1.wx, var_2.x, var_1.x)), !var_2.yx, !func_4(Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-21952i, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), u_input.a), firstTrailingBit(vec2<u32>(4294967295u, 0u)), true, ~u_input.b), _wgslsmith_sub_i32(0i, global1[_wgslsmith_index_u32(74808u, 29u)]) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -53385i, 1i), u_input.a), Struct_1(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], -29284i)), vec2<u32>(0u, var_1.x), false, _wgslsmith_clamp_u32(var_1.x, 0u, u_input.b)), Struct_1(reverseBits(u_input.a), firstTrailingBit(var_1.xw), u_input.a.x == global1[_wgslsmith_index_u32(19571u, 29u)], _wgslsmith_add_u32(var_1.x, 17416u))).x);
    global1 = array<i32, 29>();
    return _wgslsmith_dot_vec2_i32(~min(vec2<i32>(-6257i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.x, 0u), 29u)]), u_input.a.xz), u_input.a.xy);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec4<bool> {
    let var_0 = -(arg_0.a.x << (_wgslsmith_dot_vec2_u32(arg_0.b, vec2<u32>(4294967295u >> (u_input.b % 32u), arg_0.d)) % 32u));
    var var_1 = vec4<i32>(~56838i, min(func_2(), _wgslsmith_mult_i32(func_3(Struct_1(vec3<i32>(arg_0.a.x, 14118i, var_0), vec2<u32>(11236u, 0u), arg_0.c, 1u)).x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, var_0), vec2<i32>(-2147483647i, 1i)))), ~5445i, -31329i) ^ (vec4<i32>(max(-2147483647i, 25392i) >> (1u % 32u), 18426i, -1i, i32(-1i) * -2147483647i) << (_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(8242u, arg_0.d, 4294967295u, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d, arg_0.d, arg_0.b.x, arg_0.d), vec4<u32>(37941u, 5555u, arg_0.d, u_input.b) << (vec4<u32>(1u, arg_0.d, 0u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_sub_vec4_i32(~firstLeadingBit(-vec4<i32>(0i, -2147483647i, arg_0.a.x, -1i)), ~(~countOneBits(vec4<i32>(8079i, u_input.a.x, var_0, global1[_wgslsmith_index_u32(u_input.b, 29u)])))) ^ ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_1.x), vec2<i32>(-2147483647i, 2147483647i)), reverseBits(1i), reverseBits(var_2.a.x), _wgslsmith_sub_i32(var_2.a.x, var_1.x));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))));
    return vec4<bool>(true, true, !any(!(!vec4<bool>(arg_0.c, var_2.c, var_2.c, var_2.c))), false);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-889f, 1478f, true))) + _wgslsmith_f_op_f32(sign(-1188f))), _wgslsmith_f_op_f32(ceil(819f)))) - _wgslsmith_f_op_f32(trunc(314f)));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(521f, 1964f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1290f + 414f)))), true))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(714f + 1485f))) + _wgslsmith_f_op_f32(f32(-1f) * -1280f)))));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f + -475f) * -755f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-2085f, -862f))))))));
    var_1 = -1078f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-522f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.zy;
    var var_1 = _wgslsmith_div_f32(1096f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1102f - -990f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1813f)) - -879f))));
    let var_2 = ~30773u;
    let var_3 = 25449i;
    global1 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~(~_wgslsmith_div_i32(var_0.x, -1i)), abs(global1[_wgslsmith_index_u32(5652u, 29u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(func_1(Struct_1(vec3<i32>(-1i, var_0.x, 12584i), vec2<u32>(46286u, 1u), true, u_input.b), -786f, 790f), Struct_1(u_input.a, vec2<u32>(1u, u_input.b), false, var_2), Struct_1(u_input.a, vec2<u32>(u_input.b, 27098u), true, var_2))), _wgslsmith_f_op_f32(-1f))), 838f), _wgslsmith_div_u32(1u, 4294967295u));
}

