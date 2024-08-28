struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global2: Struct_2;

var<private> global3: vec3<f32>;

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_5, arg_2: bool, arg_3: Struct_2) -> bool {
    global0 = array<vec3<f32>, 5>();
    var var_0 = global3.x;
    let var_1 = any(vec4<bool>(!all(global2.b.xz), !(arg_0.c.x > global3.x), any(arg_3.b.zxx), global2.b.x)) == (!any(vec2<bool>(arg_2, false)) && any(!vec4<bool>(true, false, true, arg_3.b.x)));
    let var_2 = arg_0.d;
    global4 = arg_0.a.x;
    return global2.b.x;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global4 = u_input.c;
    let var_0 = u_input.c;
    let var_1 = _wgslsmith_add_u32(~(~4294967295u | arg_0) & 4294967295u, arg_0);
    var var_2 = abs(vec4<i32>(~2147483647i, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(2147483647i, -24165i)), vec2<i32>(-2147483647i, var_0)), _wgslsmith_sub_i32(-(~u_input.a), 2147483647i), select(u_input.c, _wgslsmith_clamp_i32(0i ^ var_0, ~(-10341i), select(-1i, 1i, true)), true)));
    global0 = array<vec3<f32>, 5>();
    return Struct_3(!global2.b.xw, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2374f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.x, global3.x)))))), Struct_2(!select(false, func_3(Struct_1(var_2.xx, global2.a, vec4<f32>(-1162f, 189f, -1000f, global3.x), global2.b.zwz, vec4<f32>(1000f, global3.x, 260f, -884f)), Struct_5(-17559i), false, Struct_2(global2.a, vec4<bool>(true, global2.b.x, global2.a, global2.a), global2.a)), global2.c), vec4<bool>(false && (var_1 >= var_1), any(global2.b), !(u_input.b.x != arg_0), all(select(vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), global2.b, false))), !(!all(vec3<bool>(global2.a, global2.b.x, true)))), Struct_2(false, !global2.b, !(!all(vec2<bool>(true, global2.c)))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)), -1000f, global3.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, global3.x, 719f, global3.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, -467f, global3.x, 1489f) * vec4<f32>(702f, global3.x, arg_0.b, global3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, -382f, global3.x, arg_0.b) * vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, _wgslsmith_f_op_f32(step(global3.x, 720f)), -799f, _wgslsmith_div_f32(1117f, -352f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, -690f, arg_0.b, global3.x)))) - vec4<f32>(global3.x, 346f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-arg_0.b)))));
    var var_1 = arg_0.c;
    let var_2 = func_2(u_input.b.x).c;
    global0 = array<vec3<f32>, 5>();
    var var_3 = Struct_4(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.yzz, _wgslsmith_mod_vec3_u32(u_input.b.zyx | vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), u_input.b.xxw), arg_0, Struct_2(true, !select(!vec4<bool>(false, var_2.a, true, true), var_1.b, !var_2.c), var_2.b.x), 1u);
    return arg_0.c;
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(abs(1u), 5u)];
    let var_1 = vec4<i32>(-_wgslsmith_sub_i32(u_input.c, 0i) ^ _wgslsmith_mod_i32(2147483647i, abs(_wgslsmith_mult_i32(u_input.a, 0i))), 2147483647i, _wgslsmith_dot_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(-7084i, u_input.c, u_input.a) & vec3<i32>(u_input.a, -9903i, 31147i), -vec3<i32>(u_input.c, 35794i, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(-4833i, 2147483647i, 2147483647i), vec3<i32>(u_input.a, u_input.c, 562i)), false), ~vec3<i32>(firstLeadingBit(-34716i), u_input.a, u_input.c)), 17025i);
    global4 = u_input.c;
    let var_2 = -2147483647i;
    let var_3 = u_input.b.yxy;
    return arg_3.c;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global2 = func_2(4294967295u).c;
    var var_0 = func_2(firstTrailingBit(~(~34457u)));
    return func_5(func_2(firstTrailingBit(abs(5093u) | u_input.b.x)), ~u_input.b.x, u_input.b.x, func_2(abs(41254u)));
}

fn func_1(arg_0: Struct_5, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    global2 = func_6(func_5(Struct_3(vec2<bool>(any(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(162f - -114f), func_4(func_2(u_input.b.x), -73022i & arg_0.a), func_2(_wgslsmith_add_u32(arg_2.x, arg_1)).d), u_input.b.x, arg_2.x, Struct_3(vec2<bool>(global2.b.x, arg_0.a >= -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, global3.x)), func_2(~105125u).c, Struct_2(global2.a, global2.b, true))));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(global3.x * global3.x)) - 1388f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -516f) + global3.x)));
    let var_0 = firstLeadingBit(_wgslsmith_mult_i32(abs(14575i), 4573i << (~(u_input.b.x >> (4294967295u % 32u)) % 32u)));
    global2 = func_5(func_2(~_wgslsmith_dot_vec2_u32(~vec2<u32>(5031u, arg_2.x), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, arg_1), u_input.b.xy))), ~19346u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2.x, abs(arg_2.x), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(61617u, u_input.b.x, arg_2.x, 56197u))), reverseBits(~0u)) ^ ~(~93933u), Struct_3(select(vec2<bool>(any(global2.b.yzz), true), !(!vec2<bool>(false, global2.a)), !vec2<bool>(true, global2.c)), _wgslsmith_f_op_f32(select(-159f, global3.x, func_6(func_5(Struct_3(global2.b.wy, 324f, Struct_2(true, global2.b, false), Struct_2(global2.b.x, global2.b, global2.a)), arg_1, 1u, Struct_3(global2.b.wz, global3.x, Struct_2(true, global2.b, true), Struct_2(global2.c, vec4<bool>(global2.a, false, false, true), global2.a)))).c)), func_2(u_input.b.x).d, func_6(Struct_2(true, global2.b, !global2.b.x))));
    let var_1 = Struct_2(true, !vec4<bool>(arg_2.x > arg_1, !(!global2.c), global2.b.x | true, !(!global2.a)), global2.b.x);
    return func_2(~firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.zyw, vec3<u32>(75202u, arg_1, 0u) & vec3<u32>(0u, 0u, 0u))));
}

fn func_7(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = func_1(Struct_5(u_input.a), 24585u, vec2<u32>(u_input.b.x, u_input.b.x ^ ~reverseBits(4294967295u)));
    var var_1 = Struct_5(~(~(-2147483647i)));
    var var_2 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, var_1.a, 98992i, reverseBits(u_input.a)), -reverseBits(vec4<i32>(-8550i, 29783i, var_1.a, var_1.a))), ~vec4<i32>(~u_input.a, 1i, _wgslsmith_div_i32(0i, -40663i), ~33829i));
    var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_mult_i32(1018i, u_input.c)));
    let var_3 = -vec3<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 12453i)) & firstLeadingBit(var_1.a), abs(4228i)), var_1.a, 2147483647i);
    return vec2<bool>(false, func_2(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(63769u, 0u, 11721u, u_input.b.x)), vec4<u32>(39339u, u_input.b.x, u_input.b.x, u_input.b.x) & _wgslsmith_add_vec4_u32(u_input.b, u_input.b))).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(u_input.c);
    var var_1 = var_0.a;
    global1 = array<vec3<bool>, 5>();
    let var_2 = func_7(global2.b, all(global2.b.xw), func_1(Struct_5(abs(_wgslsmith_div_i32(1i, var_0.a))), 31239u, vec2<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.b | u_input.b, vec4<u32>(58811u, u_input.b.x, u_input.b.x, u_input.b.x)))));
    var var_3 = Struct_2(all(func_2(1u).a), !global2.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x) >> (_wgslsmith_mod_vec4_u32(u_input.b, u_input.b) % vec4<u32>(32u))), vec4<u32>(~(~u_input.b.x), 0u, 0u, ~u_input.b.x)), ~(~u_input.b.x));
}

