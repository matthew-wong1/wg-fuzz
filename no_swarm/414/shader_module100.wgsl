struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(626f, 961f), vec2<f32>(395f, 777f));

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, true, true, false, false, true, false, false, true, false, false, true, true, true, true, true, true, true, false, false, false, false, true, true, true, true, false, true);

var<private> global2: array<f32, 5>;

var<private> global3: vec3<u32> = vec3<u32>(3652u, 42521u, 27472u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1801f - global2[_wgslsmith_index_u32(global3.x, 5u)])));
    global2 = array<f32, 5>();
    global1 = array<bool, 30>();
    let var_1 = 110f;
    global0 = array<vec2<f32>, 2>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], var_1, arg_0.x, arg_0.x)) + vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(step(1057f, -749f))))));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = false;
    global0 = array<vec2<f32>, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 5u)], -154f, 523f, 192f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(206f, -1146f, global2[_wgslsmith_index_u32(1u, 5u)], -645f) - vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 5u)], 204f, global2[_wgslsmith_index_u32(arg_0.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(712f, global2[_wgslsmith_index_u32(global3.x, 5u)], 1222f, -929f), vec4<f32>(global2[_wgslsmith_index_u32(0u, 5u)], -305f, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, global2[_wgslsmith_index_u32(3802u, 5u)], 1000f, global2[_wgslsmith_index_u32(global3.x, 5u)])))))));
    var var_2 = ~abs(~_wgslsmith_div_u32(~global3.x, arg_0.x | 4294967295u));
    var_2 = 4294967295u;
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(~arg_0.x, _wgslsmith_dot_vec2_u32(u_input.a, global3.yz))), arg_0.yy), 5u)];
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    global3 = ~(_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(30734u, 1u, global3.x), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), vec3<u32>(64526u, global3.x, 1u)) | vec3<u32>(1u, 32070u, ~(~u_input.a.x)));
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(~u_input.a.x, 2u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1809f), -1074f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-265f, global2[_wgslsmith_index_u32(global3.x, 5u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global2[_wgslsmith_index_u32(0u, 5u)])))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.a.x, 0u, 59018u)))))), _wgslsmith_f_op_f32(abs(293f)), ~_wgslsmith_mod_i32(select(-2147483647i, ~arg_0.x, any(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global3.x, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)]))), 1i), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-33936i, 19471i, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, 24918i, arg_0.x, -53313i)), ~vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_0.x))), -select(~vec4<i32>(-32303i, arg_0.x, arg_0.x, arg_0.x), -vec4<i32>(24075i, arg_0.x, -1i, arg_0.x), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(global3.x, 30u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(global3.x, 30u)], false, global1[_wgslsmith_index_u32(global3.x, 30u)]), global1[_wgslsmith_index_u32(u_input.a.x, 30u)])), ~(vec4<i32>(-1i) * -vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))));
    global0 = array<vec2<f32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, 4294967295u, 14219u), vec3<u32>(73290u, 59824u, global3.x)), ~vec3<u32>(0u, 57155u, u_input.a.x)), 5u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(floor(1154f))))))).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -223f), arg_1))));
    let var_2 = -(_wgslsmith_div_vec2_i32(var_0.e.wz, -(var_0.e.wx ^ vec2<i32>(arg_0.x, 11170i))) | (_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e.x, -50114i) | arg_0, -arg_0) >> ((vec2<u32>(39987u, u_input.a.x) << (countOneBits(u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_2(var_0.e.x, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, -115f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - global2[_wgslsmith_index_u32(u_input.a.x, 5u)])))), arg_1, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(arg_0.x, var_0.e.x, var_0.e.x), var_0.e.wzw, false), countOneBits(var_0.e.wxy ^ vec3<i32>(2147483647i, 1i, -1i))), var_0.e));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(12136i, arg_3.a.b.e.x), arg_3.a.b.e.xx)), func_2(-vec2<i32>(35077i, -5214i), _wgslsmith_f_op_f32(-1373f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(828f - global2[_wgslsmith_index_u32(1u, 5u)])))).b);
    global0 = array<vec2<f32>, 2>();
    var var_1 = func_2(_wgslsmith_mod_vec2_i32(arg_3.a.b.e.zz, var_0.b.e.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 5u)])))) * _wgslsmith_f_op_f32(-308f * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 1u), 5u)]))).a;
    var var_2 = Struct_4(func_2(~(var_0.b.e.wy ^ var_0.b.e.wy) << ((_wgslsmith_sub_vec2_u32(global3.zz, vec2<u32>(1u, arg_2)) >> (vec2<u32>(arg_1, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.a.b.c).b, Struct_2(reverseBits(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, var_0.b.d), var_0.b.d, 57618i)), func_2(_wgslsmith_clamp_vec2_i32(var_0.b.e.wy, vec2<i32>(var_0.a, -23404i), arg_3.a.b.e.wx), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, u_input.a.x, global3.x, arg_0), ~vec4<u32>(33593u, arg_0, arg_2, u_input.a.x)), 5u)]).b), vec3<bool>(false, global1[_wgslsmith_index_u32(abs(arg_1 >> (~4294967295u % 32u)), 30u)], !(!any(vec2<bool>(arg_3.b, arg_3.b)))));
    var var_3 = countOneBits(abs(abs(~var_0.b.e.x))) < (-(-1i << (_wgslsmith_mult_u32(48368u, 0u) % 32u)) & var_0.b.e.x);
    return Struct_1(arg_3.a.b.a, _wgslsmith_f_op_f32(min(-683f, _wgslsmith_f_op_f32(f32(-1f) * -780f))), arg_3.a.b.a.x, var_0.b.d, arg_3.a.b.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec4<bool> {
    return vec4<bool>(select(arg_3.d, true, !arg_3.b.x), any(vec4<bool>(true, any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], true, true, global1[_wgslsmith_index_u32(0u, 30u)])), arg_3.c.x == 2147483647i, !global1[_wgslsmith_index_u32(global3.x, 30u)])) & true, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_1(vec2<f32>(1079f, _wgslsmith_f_op_f32(select(-1359f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)] - 859f), true))))), func_5(func_4(26991u, _wgslsmith_div_u32(global3.x, u_input.a.x), ~global3.x | ~0u, Struct_5(func_2(vec2<i32>(-24277i, -35511i), global2[_wgslsmith_index_u32(global3.x, 5u)]), false | global1[_wgslsmith_index_u32(global3.x, 30u)], _wgslsmith_div_u32(global3.x, 0u))), func_2((vec2<i32>(74947i, 1i) << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(global3.x), 5u)])).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global3.x, 5u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(4294967295u, 5u)])))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(40840u, 5u)]) - vec4<f32>(1582f, global2[_wgslsmith_index_u32(37566u, 5u)], global2[_wgslsmith_index_u32(global3.x, 5u)], global2[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-371f, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]) + vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 5u)], -785f, -442f, -1583f)), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 30u)], false))), vec4<bool>(global3.x > global3.x, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global3.x, 30u)], true), vec2<i32>(1i, 1i), !(global1[_wgslsmith_index_u32(62446u, 30u)] || false), 849f)), countOneBits(vec2<i32>(_wgslsmith_clamp_i32(64606i, -10560i, -2147483647i), -34149i) | ~(-vec2<i32>(-33595i, 0i))), global1[_wgslsmith_index_u32(~global3.x, 30u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 24162u), 5u)]);
    let var_1 = func_2(~abs(var_0.c | (var_0.c >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~u_input.a.x, 5u)], global2[_wgslsmith_index_u32(~u_input.a.x, 5u)]))).b;
    var var_2 = !((global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global3.x) ^ u_input.a.x, 30u)] & var_0.d) || global1[_wgslsmith_index_u32(global3.x, 30u)]);
    var var_3 = -abs(firstLeadingBit(_wgslsmith_mod_vec2_i32(var_1.e.wx, var_1.e.wx)));
    global2 = array<f32, 5>();
    global0 = array<vec2<f32>, 2>();
    var var_4 = global2[_wgslsmith_index_u32(global3.x, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(41301u, 376f, var_1.e.xwx, _wgslsmith_div_f32(485f, var_1.c), -var_0.c);
}

