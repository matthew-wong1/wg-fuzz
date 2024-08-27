struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<u32, 24> = array<u32, 24>(33186u, 0u, 14568u, 14086u, 2850u, 0u, 1u, 3467u, 20684u, 0u, 29981u, 4294967295u, 0u, 1u, 25742u, 0u, 1u, 0u, 23372u, 9857u, 11619u, 49191u, 12428u, 4294967295u);

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> f32 {
    global0 = array<Struct_2, 27>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-936f))))))), _wgslsmith_f_op_f32(-808f * _wgslsmith_f_op_f32(1000f - arg_1.c.x)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -257f))));
    let var_1 = vec4<i32>(~arg_0, arg_1.b.x, 1i, 2147483647i);
    global1 = array<u32, 24>();
    global2 = var_0.xy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-954f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(-124f + -623f)))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<u32, 24>();
    global2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1785f)), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(-19774i, arg_1.x & arg_1.x), Struct_1(arg_0.a.x && arg_0.a.x, u_input.b.zxz, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, arg_3.x, -893f) + vec4<f32>(global2.x, -870f, global2.x, global2.x))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global1[_wgslsmith_index_u32(1653u, 24u)], 43812u), global1[_wgslsmith_index_u32(countOneBits(75312u), 24u)]), 27u)], 19538u)))), 234f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(325f)) + _wgslsmith_f_op_f32(arg_3.x * 545f))));
    global1 = array<u32, 24>();
    var var_1 = _wgslsmith_f_op_f32(trunc(global2.x));
    return Struct_1(arg_0.a.x, firstTrailingBit(select(~arg_1, vec3<i32>(-1i) * -arg_1, false)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3 * arg_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, -1342f, -1025f, arg_3.x))), arg_3))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<f32>) -> bool {
    return arg_0.a;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(abs(~countOneBits(arg_2.x)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 48897u, 4294967295u), vec4<u32>(arg_2.x, 1u, 71246u, 0u)))) ^ abs(arg_0);
    var var_1 = _wgslsmith_div_u32(61586u, 4294967295u);
    let var_2 = global0[_wgslsmith_index_u32(~63195u, 27u)];
    var var_3 = Struct_1((!any(vec4<bool>(false, false, false, var_2.a.x)) == any(select(vec3<bool>(var_2.a.x, false, var_2.a.x), var_2.a.xyx, var_2.a.zyz))) | func_4(func_2(global0[_wgslsmith_index_u32(4294967295u, 27u)], min(vec3<i32>(-2147483647i, u_input.d, arg_1.x), u_input.b.xxw), abs(arg_2), vec4<f32>(-2250f, -1312f, -465f, global2.x)), var_2.a.x || true, min(firstLeadingBit(vec4<i32>(u_input.b.x, arg_1.x, -16484i, u_input.c)), u_input.b), vec2<f32>(_wgslsmith_f_op_f32(166f - global2.x), 197f)), u_input.b.zwz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(158f, global2.x, 1000f, global2.x) - vec4<f32>(-207f, global2.x, global2.x, 1532f)))))));
    global2 = _wgslsmith_f_op_vec2_f32(trunc(var_3.c.zx));
    return Struct_1(any(select(var_2.a, var_2.a, select(select(var_2.a, var_2.a, false), vec4<bool>(var_3.a, false, false, false), var_3.a))), ~vec3<i32>(~(-41925i), arg_1.x, func_2(global0[_wgslsmith_index_u32(min(arg_0, 27450u), 27u)], vec3<i32>(arg_1.x, 7649i, var_3.b.x), u_input.a, vec4<f32>(global2.x, var_3.c.x, 189f, 278f)).b.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global2.x, 1018f, 959f) - vec4<f32>(-962f, var_3.c.x, global2.x, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, global2.x, 947f, var_3.c.x))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.zw));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-461f, global2.x));
    global2 = func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e, 24u)], 24u)])), global1[_wgslsmith_index_u32(0u, 24u)]), 27u)], vec3<i32>(arg_1.b.x, arg_2.b.x, u_input.c), ~firstTrailingBit(u_input.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(step(global2.x, -1233f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(263f, global2.x), _wgslsmith_f_op_f32(1392f - 586f))), var_0.x)).c.yx;
    var var_1 = Struct_1(true, -u_input.b.wzx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -366f)), -479f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(660f - 1091f), _wgslsmith_f_op_f32(var_0.x - arg_1.c.x)))), _wgslsmith_f_op_f32(-var_0.x)));
    return select(!(!arg_3.a), arg_3.a, !func_2(Struct_2(select(arg_3.a, arg_3.a, false)), select(select(var_1.b, vec3<i32>(u_input.b.x, arg_2.b.x, u_input.b.x), arg_3.a.xzy), vec3<i32>(-29993i, -26538i, arg_1.b.x), var_1.a), _wgslsmith_mult_vec3_u32(u_input.a & vec3<u32>(1210u, 33950u, global1[_wgslsmith_index_u32(1u, 24u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 8179u, u_input.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + var_1.c) - _wgslsmith_div_vec4_f32(arg_2.c, var_1.c))).a);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = arg_0.a;
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)));
    global2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c.yy) - func_2(Struct_2(vec4<bool>(arg_0.a, true, arg_0.a, true)), arg_0.b, u_input.a, arg_0.c).c.wy))))));
    let var_1 = _wgslsmith_sub_vec4_i32(~(~u_input.b), -_wgslsmith_add_vec4_i32(-min(vec4<i32>(-1i, 15026i, u_input.b.x, u_input.c), u_input.b), ~vec4<i32>(-2147483647i, 1i, 0i, arg_2)));
    var var_2 = Struct_2(!func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.c.xz)), vec2<f32>(arg_0.c.x, 936f)), arg_0, func_1(~global1[_wgslsmith_index_u32(5854u, 24u)], vec2<i32>(-10047i, var_1.x), ~vec3<u32>(u_input.e, 1u, 0u)), Struct_2(vec4<bool>(false, arg_0.a, arg_0.a, true))));
    return global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 235f == global2.x;
    let var_1 = func_6(Struct_1(all(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1518f, 1522f) + vec2<f32>(-646f, global2.x)), Struct_1(false, u_input.b.yyy, vec4<f32>(global2.x, -1134f, global2.x, 683f)), func_1(4294967295u, u_input.b.zx, vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6204u, 24u)], 24u)], u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(7564u, 27u)])), u_input.b.zzy, vec4<f32>(270f, global2.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) - -876f))), abs(vec4<u32>(_wgslsmith_mod_u32(1u, 58838u), 1u, u_input.a.x, 1u)), _wgslsmith_sub_i32(min(1i, -u_input.c & _wgslsmith_clamp_i32(u_input.d, u_input.b.x, u_input.b.x)), _wgslsmith_div_i32(~abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.c, u_input.b.x), -u_input.b))));
    var var_2 = u_input.b.yyw | vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.c, -4248i), u_input.b.zz), _wgslsmith_div_vec2_i32(u_input.b.yx, -vec2<i32>(0i, u_input.c))), _wgslsmith_dot_vec3_i32(~u_input.b.wwy, min(-vec3<i32>(-2147483647i, u_input.c, -2147483647i), vec3<i32>(-2147483647i, u_input.b.x, 59333i))));
    global1 = array<u32, 24>();
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.x * -573f), _wgslsmith_f_op_f32(max(global2.x, global2.x)), var_1.a.x && var_1.a.x))), -2063f));
    let var_3 = var_1;
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(func_2(Struct_2(var_1.a), u_input.b.yxy, vec3<u32>(u_input.e, 33562u, global1[_wgslsmith_index_u32(0u, 24u)]), vec4<f32>(global2.x, 304f, 637f, global2.x)).c.zw, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1055f, 482f), vec2<f32>(672f, -1695f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-891f, -239f) * vec2<f32>(global2.x, 629f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, -583f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) + global2.x)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, global2.x, 1113f), vec3<f32>(global2.x, -1184f, global2.x)))) + vec3<f32>(func_2(func_6(Struct_1(false, vec3<i32>(u_input.d, u_input.d, u_input.b.x), vec4<f32>(1334f, 1351f, 385f, global2.x)), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 0u, global1[_wgslsmith_index_u32(18900u, 24u)], 31280u), -2147483647i), vec3<i32>(-2147483647i, u_input.c, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, global1[_wgslsmith_index_u32(1u, 24u)], u_input.e), vec3<u32>(u_input.e, 53580u, global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec4<f32>(global2.x, 564f, global2.x, 773f)).c.x, func_1(firstLeadingBit(105630u), u_input.b.zw, ~u_input.a).c.x, _wgslsmith_f_op_f32(f32(-1f) * -1158f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b & min(u_input.b, _wgslsmith_div_vec4_i32(abs(u_input.b), vec4<i32>(20814i, -26703i, u_input.c, u_input.c))), 16982i, _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(12833u), ~4294967295u, u_input.e, _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.e, 24u)], 0u), vec3<u32>(4294967295u, u_input.e, 4294967295u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(105198u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)], global1[_wgslsmith_index_u32(75123u, 24u)])) | (vec4<u32>(1u, 4294967295u, 2958u, u_input.e) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u))), ~min(vec4<u32>(44306u, 1u, 1u, 32789u), abs(vec4<u32>(0u, global1[_wgslsmith_index_u32(4294967295u, 24u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)])))));
}

