struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: array<Struct_5, 10>;

var<private> global2: array<vec4<f32>, 6>;

var<private> global3: array<bool, 8>;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    global1 = array<Struct_5, 10>();
    global3 = array<bool, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f + -495f) * -1734f), -844f, !any(vec3<bool>(false, global4.x, global0[_wgslsmith_index_u32(5936u, 1u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1465f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -534f))))));
    let var_1 = Struct_1(select(select(vec2<bool>(true, true), !vec2<bool>(global4.x, false), global0[_wgslsmith_index_u32(arg_0.x, 1u)]), vec2<bool>(~u_input.c.x >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 20662u, arg_0.x), arg_0.yyz), false), select(select(select(vec2<bool>(arg_1, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 8u)]), select(vec2<bool>(true, true), vec2<bool>(global4.x, true), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 1u)]))), select(vec2<bool>(global4.x, true), vec2<bool>(true, true), select(vec2<bool>(arg_1, global3[_wgslsmith_index_u32(u_input.a, 8u)]), vec2<bool>(global4.x, false), vec2<bool>(true, true))), select(select(vec2<bool>(global4.x, false), vec2<bool>(arg_1, false), vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 8u)], arg_1)), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 8u)], global4.x), arg_1))), all(select(select(!vec2<bool>(true, global4.x), vec2<bool>(false, false), select(global3[_wgslsmith_index_u32(4294967295u, 8u)], true, true)), vec2<bool>(true, true), true)), _wgslsmith_add_vec3_u32((vec3<u32>(1u, 22660u, arg_0.x) >> (min(vec3<u32>(arg_0.x, 33455u, 4294967295u), vec3<u32>(arg_0.x, arg_0.x, 587u)) % vec3<u32>(32u))) | vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 17833u, u_input.a), vec3<u32>(1u, 1u, 55455u)), ~4294967295u), arg_0.www));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.c.x), var_1.c.yy), _wgslsmith_add_vec2_u32(var_1.c.yy, vec2<u32>(var_1.c.x, u_input.a)))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_1.c.x, arg_0.x, arg_0.x, var_1.c.x)), select(arg_0, vec4<u32>(84245u, 39537u, arg_0.x, 71872u), true)), ~_wgslsmith_sub_u32(firstTrailingBit(var_1.c.x), countOneBits(arg_0.x))), arg_0.zxx & countOneBits(_wgslsmith_sub_vec3_u32(var_1.c, vec3<u32>(arg_0.x, 52135u, 4294967295u)))), 10u)];
    return ~4294967295u;
}

fn func_2() -> bool {
    let var_0 = vec3<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(u_input.a, 34237u), abs(27629u)), 1u)], true)), true, true);
    let var_1 = countOneBits(1i);
    var var_2 = Struct_4(u_input.b.x, vec3<u32>(min(u_input.a, u_input.a), ~u_input.a, u_input.a), vec4<i32>(reverseBits(-52214i), u_input.b.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1, u_input.b.x, var_1), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(var_1, u_input.b.x, 7175i)), firstLeadingBit(vec3<i32>(0i, u_input.b.x, u_input.b.x)))), ~(-var_1)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1031f))), _wgslsmith_div_f32(135f, -1122f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2861f - -1362f)))), -465f)));
    let var_4 = Struct_1(vec2<bool>(true, true), true, var_2.b);
    return u_input.a < func_3(vec4<u32>(var_2.b.x, var_4.c.x, _wgslsmith_add_u32(~69424u, 1067u), ~select(4294967295u, var_2.b.x, var_0.x)), true);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-1792f - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1404f, -584f))));
    let var_2 = vec4<bool>(global0[_wgslsmith_index_u32(0u, 1u)], select(global3[_wgslsmith_index_u32(u_input.a >> (u_input.c.x % 32u), 8u)], any(vec4<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(4698u, 8u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true)), 0i < arg_1, any(vec4<bool>(global4.x, true, false, global3[_wgslsmith_index_u32(1u, 8u)])), true)), select(true, func_2(), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], arg_0.x, global3[_wgslsmith_index_u32(u_input.c.x, 8u)])))), global4.x, !any(!vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], false, global0[_wgslsmith_index_u32(u_input.a, 1u)])));
    global3 = array<bool, 8>();
    var var_3 = Struct_3(vec3<u32>(~u_input.a, 19755u ^ _wgslsmith_mult_u32(~680u, _wgslsmith_sub_u32(u_input.a, 46688u)), 20897u), var_2.x, ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(34931u, u_input.c.x, u_input.a), vec3<u32>(24987u, 87981u, 1u) & vec3<u32>(u_input.a, u_input.c.x, u_input.c.x))), Struct_1(select(vec2<bool>(all(vec2<bool>(arg_0.x, false)), global4.x), select(!vec2<bool>(false, global4.x), !var_2.wx, !arg_0.x), select(select(vec2<bool>(false, false), var_2.zz, vec2<bool>(global4.x, false)), vec2<bool>(var_2.x, true), !var_2.xw)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, 1u, u_input.a), 8u)], vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33457u, u_input.c.x) ^ vec3<u32>(1u, u_input.a, 1u), vec3<u32>(1u, u_input.a, u_input.a)), abs(_wgslsmith_sub_u32(u_input.c.x, 61416u)))));
    return Struct_1(vec2<bool>(true, !global4.x), true | !any(select(var_2, vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(var_3.d.c.x, 8u)])), var_3.d.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_5 {
    let var_0 = select(!select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.c.x, 8u)], false, global4.x), vec3<bool>(true, global4.x, true), vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.c.x, 1u)])), !vec3<bool>(global4.x, global0[_wgslsmith_index_u32(arg_0.c.x, 1u)], true), all(vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]))), vec3<bool>(!global0[_wgslsmith_index_u32(arg_0.c.x, 1u)], all(arg_0.a), !global4.x), _wgslsmith_clamp_u32(4294967295u, 0u, u_input.a) > ~46350u), !(!vec3<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(72871u, 1u)], true), false, false)), all(!vec4<bool>(func_1(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.c.x, 8u)], true), 2147483647i).b, global3[_wgslsmith_index_u32(1u, 8u)], true, !arg_0.a.x)));
    let var_1 = vec3<u32>(arg_0.c.x & 24537u, firstLeadingBit(countOneBits(48069u)), _wgslsmith_sub_u32(36259u, reverseBits(arg_0.c.x)));
    return Struct_5(2345f, Struct_4(~u_input.b.x, vec3<u32>(1u, 83957u, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, -16357i), vec4<i32>(u_input.b.x, arg_1.x, -2147483647i, 32377i)) | (_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.x, u_input.b.x, 2147483647i, 13129i), vec4<i32>(u_input.b.x, u_input.b.x, 6081i, 19346i)) | (vec4<i32>(arg_1.x, -1i, u_input.b.x, -39807i) & vec4<i32>(-2147483647i, u_input.b.x, -42152i, u_input.b.x)))), select(!vec4<bool>(arg_0.a.x, false, var_0.x, global3[_wgslsmith_index_u32(min(var_1.x, 0u), 8u)]), !vec4<bool>(func_1(vec2<bool>(arg_0.b, false), -2147483647i).b, false, true, !global4.x), select(vec4<bool>(all(arg_0.a), true, !var_0.x, true), vec4<bool>(false, func_2(), global3[_wgslsmith_index_u32(firstTrailingBit(0u), 8u)], all(var_0)), !(!var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(select(vec2<bool>(!global0[_wgslsmith_index_u32(88500u, 1u)], true), vec2<bool>(true, true), select(vec2<bool>(false, global4.x), !vec2<bool>(false, global4.x), vec2<bool>(true, false))), 1i), vec3<i32>(13639i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.b.x, 5579i)), min(vec3<i32>(-27868i, -1i, 1i), vec3<i32>(-1415i, -1i, u_input.b.x))), -(u_input.b.x | u_input.b.x), u_input.b.x), u_input.b.x));
    var_0 = global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec2_u32(select(func_1(var_0.c.xw, u_input.b.x).c.zy, vec2<u32>(8678u, 5622u), vec2<bool>(true, true)), ~u_input.c)), 10u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -931f);
    let var_2 = Struct_2(var_0.c.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global2[_wgslsmith_index_u32(0u, 6u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global2[_wgslsmith_index_u32(u_input.c.x, 6u)]))))));
    global4 = vec2<bool>(all(var_0.c.yzz), !all(var_0.c.xzy));
    let var_4 = 6430i;
    var var_5 = 0i;
    global3 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.b, var_0.b.b);
}

