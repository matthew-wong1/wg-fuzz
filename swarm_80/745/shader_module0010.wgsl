struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, vec3<f32>(668f, -961f, -316f), vec3<i32>(-1596i, -41537i, i32(-2147483648))), Struct_1(true, vec3<f32>(761f, -891f, 286f), vec3<i32>(1i, 0i, -8931i)), Struct_1(true, vec3<f32>(707f, -274f, 632f), vec3<i32>(10888i, 0i, -30031i)));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 20790u, 0u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = countOneBits(u_input.b);
    var var_1 = arg_0;
    var var_2 = any(vec4<bool>(var_1.a, false, !arg_0.a, true));
    var_2 = !arg_0.a | (_wgslsmith_f_op_f32(exp2(arg_0.b.x)) == _wgslsmith_div_f32(379f, _wgslsmith_f_op_f32(min(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))));
    var_2 = false;
    return _wgslsmith_sub_vec3_i32(countOneBits(arg_0.c), ~(-arg_0.c));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> vec4<f32> {
    let var_0 = _wgslsmith_add_vec2_i32(~(-(~vec2<i32>(0i, arg_2))), _wgslsmith_div_vec2_i32(countOneBits(min(vec2<i32>(arg_2, u_input.a), ~vec2<i32>(u_input.a, 20709i))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(0i, -2147483647i), 1i), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-7010i, 1i)), reverseBits(vec2<i32>(u_input.a, -2147483647i))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-242f))) == _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, _wgslsmith_f_op_f32(1972f + -425f), _wgslsmith_div_f32(386f, -1273f)))), ~func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.wzw, _wgslsmith_mod_vec3_u32(global2.www, global2.wxy)), 3u)]));
    let var_2 = Struct_1(~global2.x != _wgslsmith_sub_u32(select(~arg_0, ~3005u, all(vec4<bool>(var_1.a, var_1.a, true, var_1.a))), 0u), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1f), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-657f, -501f))))), ~var_1.c);
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.b.x, -407f, -133f) - vec4<f32>(var_1.b.x, var_2.b.x, var_2.b.x, -1715f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(730f, var_1.b.x, -117f, -236f))))))) * vec4<f32>(_wgslsmith_f_op_f32(1244f - _wgslsmith_f_op_f32(221f - _wgslsmith_f_op_f32(round(var_2.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.b.x), -489f)), 289f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    global2 = ~reverseBits(~global0[_wgslsmith_index_u32(global2.x, 26u)]);
    var var_0 = arg_1;
    global0 = array<vec4<u32>, 26>();
    let var_1 = vec4<bool>(true, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_2, global2.x), _wgslsmith_add_u32(arg_0 << (12600u % 32u), 76676u)) < select(u_input.b, max(~60287u, arg_0), arg_1.a), true, var_0.a);
    let var_2 = _wgslsmith_f_op_f32(-var_0.b.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(1u, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 40501u, 1u, 36533u), ~vec4<u32>(0u, 38298u, arg_2, arg_2)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_0.c.xy, var_0.c.xy), _wgslsmith_clamp_vec2_i32(arg_1.c.zx, vec2<i32>(0i, -9469i), var_0.c.zx))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_f32(-1877f + _wgslsmith_f_op_f32(-437f + 1233f)), -199f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1076f, 1000f, var_1.x)), _wgslsmith_f_op_f32(-571f + -111f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>) -> bool {
    let var_0 = vec3<f32>(937f, _wgslsmith_f_op_vec4_f32(func_1(reverseBits(arg_1.x), global1[_wgslsmith_index_u32(1u & _wgslsmith_div_u32(global2.x ^ 1761u, _wgslsmith_dot_vec2_u32(global2.ww, arg_1.yz)), 3u)], _wgslsmith_add_u32(_wgslsmith_div_u32(min(41380u, 1u), firstLeadingBit(global2.x)), arg_1.x))).x, arg_0.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -226f, 1407f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.zyy)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0, var_0, true)) - var_0)))), true));
    let var_2 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1660f) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -826f), var_1.x)), ~vec3<i32>(u_input.a, ~_wgslsmith_div_i32(14747i, u_input.a), u_input.a));
    var var_3 = global1[_wgslsmith_index_u32(~11225u, 3u)];
    global1 = array<Struct_1, 3>();
    return any(vec3<bool>(true, true, all(!vec3<bool>(true, var_3.a, false)))) | (true && var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_add_i32(18983i, _wgslsmith_mult_i32(u_input.a, 10668i)), countOneBits(u_input.a), 2147483647i, _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 78182i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)));
    var var_1 = select(!all(vec2<bool>(true, false)), _wgslsmith_dot_vec2_u32(~vec2<u32>(9569u, 7036u), global2.wy) >= 23950u, func_4(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global2.x, global2.x, 0u), vec4<u32>(75068u, 1348u, u_input.b, global2.x) & global0[_wgslsmith_index_u32(0u, 26u)]), Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-563f, -966f, 2692f)), var_0.xww), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b) & global2.wy, vec2<u32>(0u, global2.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), select(vec3<u32>(u_input.b, u_input.b, u_input.b), global2.yxw, vec3<bool>(true, true, false))) >> (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), global2.xxy), abs(vec3<u32>(u_input.b, 4294967295u, u_input.b))) % vec3<u32>(32u))));
    global0 = array<vec4<u32>, 26>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(~global2.x, Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(976f, 734f, 185f)), ~vec3<i32>(var_0.x, 0i, u_input.a)), u_input.b))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, (u_input.b | (global2.x | u_input.b)) ^ global2.x, 26120u), ~u_input.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_2.x)))), var_2.x) * var_2.wzw));
}

