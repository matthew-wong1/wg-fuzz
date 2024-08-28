struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(1449f, 544f));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 56694u, 3686u, 22417u), vec3<i32>(13360i, -57699i, -1i), -1i);

var<private> global2: Struct_2 = Struct_2(vec2<f32>(1476f, 921f));

var<private> global3: array<Struct_3, 25>;

var<private> global4: array<f32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-948f, 172f) - global0.a)))));
    global1 = Struct_1(vec4<u32>(~(~_wgslsmith_mult_u32(global1.a.x, 1u)), countOneBits(global1.a.x), 1u, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global1.a.x ^ u_input.b.x, ~global1.a.x))), vec3<i32>(global1.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-70846i, -35734i, 1i), max(u_input.c.wxy, global1.b)), 30668i), 7849i);
    global0 = Struct_2(global2.a);
    var var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.a.x, ~u_input.b.x), u_input.b << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, global1.a.x), global1.a) << (~global1.a.x % 32u), ~_wgslsmith_clamp_u32(0u, 12058u, 4848u)) % vec2<u32>(32u)), ~(~firstTrailingBit(reverseBits(u_input.b))));
    let var_2 = _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_div_i32(2147483647i, global1.b.x) & _wgslsmith_dot_vec2_i32(global1.b.xx, vec2<i32>(-2147483647i, u_input.a)), abs(-2147483647i), ~(~1i)), (u_input.c.zyw << (global1.a.xwz % vec3<u32>(32u))) & ~(~countOneBits(vec3<i32>(2147483647i, global1.c, global1.c))));
    return _wgslsmith_f_op_f32(ceil(var_0.a.x));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_add_vec4_u32(global1.a, global1.a), ~(~abs(global1.b)) ^ vec3<i32>(global1.c, u_input.c.x, -1i), 47667i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u << (_wgslsmith_div_u32(u_input.b.x, var_0.a.x) % 32u), ~(~var_0.a.x)), 30u)]));
    var var_2 = _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(func_3()));
    var var_3 = vec2<bool>(false, true);
    global4 = array<f32, 30>();
    return vec3<bool>(true, true, !(!var_3.x));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(70348u, 25u)];
    let var_1 = !vec4<bool>(any(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(false, false, true, arg_0), false)), false, all(!func_2()), true);
    global3 = array<Struct_3, 25>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1384f, global4[_wgslsmith_index_u32(4294967295u, 30u)], global2.a.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, global2.a.x, -303f), vec3<f32>(222f, 812f, 1550f), arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-205f, global0.a.x, global4[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<f32>(741f, 599f, global4[_wgslsmith_index_u32(var_0.a.a.x, 30u)])), vec3<bool>(true, false, var_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, -974f, -551f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 598f, global0.a.x) + vec3<f32>(393f, global4[_wgslsmith_index_u32(global1.a.x, 30u)], global0.a.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global4[_wgslsmith_index_u32(25626u, 30u)], global4[_wgslsmith_index_u32(var_0.a.a.x, 30u)]), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, global2.a.x, global0.a.x), vec3<f32>(1330f, -1353f, global0.a.x), false))) + vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(114451u, 30u)]), -717f, _wgslsmith_div_f32(1192f, 204f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-327f, -1185f, -822f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4[_wgslsmith_index_u32(global1.a.x, 30u)], global2.a.x, -1048f)))))), true | !func_2().x)));
    let var_3 = u_input.b.x;
    return select(~(~0u | reverseBits(_wgslsmith_mod_u32(4294967295u, var_3))), var_0.a.a.x, var_0.a.a.x >= _wgslsmith_sub_u32(abs(_wgslsmith_mult_u32(1u, 978u)), ~_wgslsmith_mod_u32(96854u, var_0.a.a.x)));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(global0.a + _wgslsmith_f_op_vec2_f32(trunc(global2.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-988f))))))));
    var var_1 = _wgslsmith_div_f32(305f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1052f)))));
    let var_2 = var_0.a;
    let var_3 = false;
    var var_4 = var_3;
    return global1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(global4[_wgslsmith_index_u32(~(~u_input.b.x & global1.a.x), 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1077f * global2.a.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.a.x, -361f)) * 837f)), any(vec3<bool>(true, true, true)))));
    let var_1 = func_4(Struct_1(vec4<u32>(u_input.b.x, max(firstLeadingBit(7914u), func_1(true)), ~reverseBits(1u), select(u_input.b.x, global1.a.x, true)), abs(vec3<i32>(countOneBits(global1.b.x), _wgslsmith_mult_i32(u_input.c.x, u_input.a), -27329i)), 2147483647i));
    let var_2 = !select(select(func_2(), func_2(), true), vec3<bool>(!all(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, false)), !(var_0.x >= global4[_wgslsmith_index_u32(6543u, 30u)])), true);
    var var_3 = u_input.b;
    var var_4 = vec2<bool>(var_2.x, func_2().x);
    var var_5 = global1.a.yz;
    let var_6 = global1.b.xy;
    global3 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(select(global1.b.x, abs(global1.b.x), var_2.x), 15636u, global0.a.x, _wgslsmith_mod_i32(global1.c, _wgslsmith_add_i32(-(i32(-1i) * -2147483647i), 23346i)), firstTrailingBit(vec4<i32>(global1.b.x, -_wgslsmith_clamp_i32(-31435i, -22561i, u_input.a), ~(u_input.c.x >> (47607u % 32u)), ~abs(global1.b.x))));
}

