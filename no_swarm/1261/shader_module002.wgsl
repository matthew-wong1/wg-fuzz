struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(1008f, -407f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(152f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(!any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 2u)])) > _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 2u)]), !(global0[_wgslsmith_index_u32(u_input.d, 2u)] < 1000f), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, u_input.a.x > 12292u, true, true), true)), ~(~2147483647i), -(~abs(vec4<i32>(1i, 1i, 1i, 1i))), vec4<u32>(~(~13356u), 76139u, ~u_input.c.x, 0u));
    global0 = array<f32, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a, global0[_wgslsmith_index_u32(u_input.b.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(411f, -217f, var_0.a)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -147f, global0[_wgslsmith_index_u32(u_input.d, 2u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(636f, global0[_wgslsmith_index_u32(var_0.e.x, 2u)], var_0.a)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1004f, -140f, 1000f), vec3<f32>(552f, -1751f, global0[_wgslsmith_index_u32(u_input.c.x, 2u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1926f, var_0.a, global0[_wgslsmith_index_u32(u_input.d, 2u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(1321f, -1280f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 2u)]), global0[_wgslsmith_index_u32(~var_0.e.x, 2u)]))));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_2() -> Struct_2 {
    global0 = array<f32, 2>();
    let var_0 = Struct_1(556f, vec4<bool>(all(vec4<bool>(true, true, true, true)), true, select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 2u)]) == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 2u)] - 430f), any(vec3<bool>(false, false, true)) & select(false, false, false), true), true), firstTrailingBit(~_wgslsmith_add_i32(abs(-25468i), 1i)), -vec4<i32>(1i, 1i, 1i, 1i), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 7502u, 0u, u_input.b.x) | vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.c.x), vec4<u32>(u_input.a.x, 92921u, 4294967295u, 66052u) ^ vec4<u32>(u_input.a.x, 4294967295u, 4253u, u_input.a.x))));
    let var_1 = vec4<f32>(-169f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 2u)] * 816f), _wgslsmith_f_op_f32(func_3()), -538f);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 2u)], -1154f), _wgslsmith_div_f32(-1553f, global0[_wgslsmith_index_u32(3538u, 2u)]))) * global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.e.x, 4294967295u, ~max(4294967295u, 0u)), 2u)]), select(var_0.b, select(select(select(vec4<bool>(var_0.b.x, true, var_0.b.x, false), var_0.b, var_0.b), var_0.b, all(vec3<bool>(true, var_0.b.x, true))), var_0.b, var_0.b), vec4<bool>(any(select(var_0.b, var_0.b, var_0.b)), any(vec4<bool>(var_0.b.x, false, true, var_0.b.x)), all(!var_0.b.zxx), false)), -(reverseBits(var_0.d.x) >> (select(_wgslsmith_mult_u32(25488u, var_0.e.x), countOneBits(16251u), var_0.b.x) % 32u)), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 41734i), vec3<i32>(var_0.c, 1i, -7467i)), -_wgslsmith_div_i32(1i, -27542i), -(~var_0.d.x)) | vec4<i32>(abs(max(0i, var_0.c)), ~max(var_0.c, -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d.x, var_0.d.x), vec2<i32>(-49294i, 1i), var_0.d.wz), vec2<i32>(var_0.c, 33802i) | var_0.d.xy), abs(countOneBits(-7670i))), var_0.e);
    global0 = array<f32, 2>();
    return Struct_2(Struct_1(-943f, vec4<bool>(any(var_2.b), _wgslsmith_f_op_f32(f32(-1f) * -238f) < _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_2.e.x, 2u)], 775f), min(var_2.e.x, 46893u) > 4294967295u, !any(vec2<bool>(false, false))), -var_0.d.x, var_0.d, vec4<u32>(32748u, var_2.e.x, 60515u, 1u)), var_0.b.x || select(any(var_0.b.wyx), var_0.b.x, true));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(countOneBits(26100u), 2u)])), -422f);
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_1 = 2147483647i;
    let var_2 = arg_0;
    return func_2().b;
}

fn func_1() -> Struct_2 {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_0 = vec4<bool>(select(func_4(func_2()), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))), true), (_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(0i, 2147483647i, 2147483647i), 2147483647i << (u_input.a.x % 32u)) > (-43262i | select(0i, 1i, true))) | !func_2().b, true, select(true, true, !select(true, all(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, false)))));
    global0 = array<f32, 2>();
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = func_1().a;
    global0 = array<f32, 2>();
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(815f, var_0.a, global0[_wgslsmith_index_u32(57279u, 2u)], -745f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, 306f, 691f), vec4<f32>(arg_0.a.a, -1048f, -1429f, var_0.a), false))) * vec4<f32>(_wgslsmith_div_f32(var_0.a, global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(-arg_0.a.a), arg_0.a.a, global0[_wgslsmith_index_u32(~arg_0.a.e.x, 2u)])))), vec4<f32>(arg_0.a.a, -378f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(arg_0.a.a - -710f)))), arg_0.a.a)));
    let var_2 = !arg_0.a.b;
    let var_3 = u_input.c.yx;
    return func_1().a;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    return func_5(arg_2, _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(arg_2.a.d.wy, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.d.x, arg_2.a.c), vec2<i32>(arg_3.d.x, arg_3.c))), arg_3.d.x ^ _wgslsmith_clamp_i32(~17822i, ~(-2147483647i), arg_2.a.c)), arg_1.e.yzy).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<i32>(1i, 1i);
    global0 = array<f32, 2>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_6(!(u_input.c.x != 26171u), func_5(func_1(), _wgslsmith_add_i32(var_0.x, -2147483647i), ~u_input.c), func_1(), func_1().a)), select(func_5(Struct_2(Struct_1(819f, vec4<bool>(false, false, true, false), 11589i, vec4<i32>(13334i, 94287i, var_0.x, 12799i), vec4<u32>(1u, u_input.b.x, 47074u, u_input.c.x)), false), countOneBits(var_0.x), ~u_input.b).b, func_5(func_2(), ~var_0.x, vec3<u32>(u_input.b.x, 24531u, 26172u) << (u_input.c % vec3<u32>(32u))).b, vec4<bool>(true, true, true, true)), countOneBits(-1i), _wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x, var_0.x, var_0.x, 1i), func_2().a.d ^ -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(41463u, 64265u, 75809u, u_input.a.x), vec4<u32>(u_input.d, 953u, 0u, u_input.c.x))), all(vec2<bool>(true, true)));
    var var_2 = var_1.a;
    let var_3 = var_1.a.a;
    var var_4 = var_2.d.xzw;
    var var_5 = var_1.a.b;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2.e.x), vec4<i32>(1i, ~var_6.a.c, min(select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.d.x, var_4.x, -2147483647i, 2147483647i), vec4<i32>(-2147483647i, var_2.d.x, var_0.x, var_6.a.c)), ~(-30072i), true), 2147483647i), func_1().a.d.x), _wgslsmith_sub_i32(var_4.x, ~(-1i)), 2404u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(Struct_2(Struct_1(-395f, vec4<bool>(false, var_5.x, var_1.b, var_6.b), -2602i, var_6.a.d, vec4<u32>(57086u, var_6.a.e.x, var_6.a.e.x, u_input.b.x)), var_2.b.x), abs(var_0.x), ~u_input.c).a, -1000f, _wgslsmith_f_op_f32(func_3()))));
}

