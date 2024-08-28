struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 18>;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(22420u, 28765u, 4294967295u, 4294967295u));

var<private> global3: array<vec3<bool>, 3>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(60396u, 219u, 4294967295u, 56102u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(vec4<u32>(1u, global4.a.x, max(~33249u, _wgslsmith_dot_vec4_u32(~global4.a, _wgslsmith_mod_vec4_u32(global2.a, vec4<u32>(1u, 66558u, global2.a.x, 27272u)))), 13310u << (global2.a.x % 32u)));
    let var_1 = _wgslsmith_add_vec3_i32(u_input.a.ywx, reverseBits(vec3<i32>(-1i) * -reverseBits(u_input.a.yxx)));
    global0 = false;
    var var_2 = u_input.a.x;
    var var_3 = Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(54402u, global2.a.x | 22705u, global2.a.x, abs(4294967295u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 58268u, 55068u), vec4<u32>(4294967295u, 1u, var_0.a.x, u_input.b))))));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(28450u, countOneBits(0u)), 18u)], global1[_wgslsmith_index_u32(1u, 18u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~var_3.a.x, 18u)])) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -229f, -1102f) - vec3<f32>(global1[_wgslsmith_index_u32(global4.a.x, 18u)], global1[_wgslsmith_index_u32(global4.a.x, 18u)], -1322f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(57649u, 18u)]), _wgslsmith_f_op_f32(f32(-1f) * -835f), all(global3[_wgslsmith_index_u32(84672u, 3u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1615f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 18u)]))))), global3[_wgslsmith_index_u32(abs(global4.a.x), 3u)]));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1783f, global1[_wgslsmith_index_u32(51742u, 18u)], global1[_wgslsmith_index_u32(global4.a.x, 18u)]), vec3<f32>(1535f, global1[_wgslsmith_index_u32(1u, 18u)], -1000f), vec3<bool>(true, true, true)))))));
    global0 = !(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) || (any(vec3<bool>(false, false, true)) && !(var_0.x <= global1[_wgslsmith_index_u32(global4.a.x, 18u)])));
    let var_1 = any(!vec4<bool>(!select(true, true, false), true, true, any(select(global3[_wgslsmith_index_u32(u_input.b, 3u)], vec3<bool>(false, true, false), false))));
    let var_2 = Struct_1(global4.a);
    var var_3 = Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, ~0u, 23488u), global2.a), vec4<u32>(15007u, 67171u, global2.a.x, var_2.a.x)));
    return Struct_2(Struct_1(vec4<u32>(~64851u, ~(~global2.a.x), ~0u, _wgslsmith_mod_u32(~global4.a.x, u_input.b))), Struct_1(~(~vec4<u32>(global2.a.x, var_2.a.x, var_3.a.x, 41346u))), 0i ^ -u_input.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_2().b;
    var var_1 = Struct_2(func_2().b, Struct_1(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global4.a.x, var_0.a.x, 6516u), ~arg_1.a)), ~(2147483647i >> (global2.a.x % 32u)));
    var var_2 = -40815i;
    global4 = var_1.b;
    return func_2().b;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> vec2<f32> {
    let var_0 = func_2();
    var var_1 = 0u;
    var var_2 = ~abs(1i);
    let var_3 = Struct_1(~vec4<u32>(u_input.b | ~var_0.a.a.x, _wgslsmith_dot_vec3_u32(global2.a.xzy, ~global2.a.xyy), select(~0u, ~var_0.b.a.x, 17196i >= var_0.c), _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, 26010u, 3261u, 0u), vec4<u32>(18356u, 4356u, var_0.a.a.x, 4294967295u)), ~vec4<u32>(40479u, 1u, 0u, 4294967295u))));
    let var_4 = _wgslsmith_mod_u32(u_input.b, 17954u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(846f, global1[_wgslsmith_index_u32(1u, 18u)]) - vec2<f32>(global1[_wgslsmith_index_u32(10626u, 18u)], -866f)) + vec2<f32>(184f, global1[_wgslsmith_index_u32(var_4, 18u)])) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(33820u, 18u)], -425f) + vec2<f32>(1807f, 283f))))))));
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> Struct_2 {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1043f * arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_2.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50569u, u_input.b, u_input.b), vec3<u32>(1u, 85541u, 35196u)), 18u)]), _wgslsmith_f_op_f32(-arg_1)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1208f, -1000f, arg_2.x, arg_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 1107f, arg_2.x, -212f), _wgslsmith_div_vec4_f32(vec4<f32>(-2211f, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], -550f), vec4<f32>(global1[_wgslsmith_index_u32(global4.a.x, 18u)], -1664f, arg_2.x, global1[_wgslsmith_index_u32(21642u, 18u)])), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * 599f), _wgslsmith_f_op_f32(max(arg_1, 1000f)), global1[_wgslsmith_index_u32(~global2.a.x, 18u)], _wgslsmith_f_op_f32(abs(891f))))));
    global1 = array<f32, 18>();
    let var_1 = -((u_input.a.x | u_input.a.x) | (u_input.a.x >> (0u % 32u)));
    let var_2 = countOneBits(vec2<u32>(global4.a.x, _wgslsmith_dot_vec4_u32(~global2.a, vec4<u32>(41533u, global4.a.x, global2.a.x, 4455u))) & select(func_4(u_input.a.ww, func_4(u_input.a.yz, Struct_1(vec4<u32>(global2.a.x, u_input.b, global4.a.x, 971u)), Struct_2(Struct_1(global2.a), Struct_1(global2.a), arg_0), global4.a.wz), Struct_2(Struct_1(vec4<u32>(global2.a.x, 15704u, global2.a.x, 35553u)), Struct_1(vec4<u32>(28484u, global4.a.x, u_input.b, global4.a.x)), 36653i), global2.a.xx).a.wx, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(14351u, 0u), global2.a.yx), global2.a.x >> (96135u % 32u)), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    return func_2();
}

fn func_1() -> f32 {
    var var_0 = func_6(u_input.a.x, -351f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(u_input.a.yx | vec2<i32>(1i, 9082i), Struct_1(vec4<u32>(12255u, global4.a.x, 81624u, u_input.b)), func_2(), ~vec2<u32>(55563u, global2.a.x)), _wgslsmith_mult_u32(~4294967295u, global2.a.x), global2.a.ywx)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.a.x, 18u)], 1985f) * vec2<f32>(global1[_wgslsmith_index_u32(9537u, 18u)], 810f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2.a.x, 18u)], global1[_wgslsmith_index_u32(global2.a.x, 18u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, -743f)))))));
    let var_1 = true;
    global3 = array<vec3<bool>, 3>();
    let var_2 = countOneBits(var_0.b.a.x);
    let var_3 = vec2<bool>(all(!select(vec3<bool>(true, true, var_1), select(global3[_wgslsmith_index_u32(44866u, 3u)], global3[_wgslsmith_index_u32(1u, 3u)], var_1), global3[_wgslsmith_index_u32(1u, 3u)])), false);
    return -1000f;
}

fn func_7(arg_0: f32, arg_1: f32) -> i32 {
    global3 = array<vec3<bool>, 3>();
    global3 = array<vec3<bool>, 3>();
    global2 = Struct_1(vec4<u32>(~global2.a.x ^ _wgslsmith_mod_u32(1u, firstTrailingBit(u_input.b)), 1u, u_input.b, global4.a.x));
    global3 = array<vec3<bool>, 3>();
    var var_0 = Struct_1(vec4<u32>(1u, ~15289u, _wgslsmith_add_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 26944u, global2.a.x, global4.a.x), global4.a), 37536u, select(false, true, true)), 4294967295u), ~4294967295u));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = 30741u << (~u_input.b % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(693f)));
    var var_3 = Struct_2(Struct_1(firstTrailingBit(min(global4.a, vec4<u32>(17828u, 1u, 29230u, u_input.b)) ^ max(vec4<u32>(global4.a.x, u_input.b, 14766u, 0u), global4.a))), Struct_1(global4.a), u_input.a.x);
    var var_4 = -2147483647i;
    let var_5 = Struct_2(var_3.a, var_3.b, max(-1i, func_7(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1348f) - _wgslsmith_f_op_f32(func_1())))));
    let x = u_input.a;
    s_output = StorageBuffer(215f);
}

