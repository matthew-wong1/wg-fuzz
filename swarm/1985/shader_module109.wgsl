struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec3<u32>(28708u, 4294967295u, 1u), true);

var<private> global1: Struct_2;

var<private> global2: f32 = -810f;

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> i32 {
    let var_0 = false;
    global0 = Struct_2(select(vec3<bool>(false, var_0, any(vec2<bool>(var_0, global0.a.x))), select(!vec3<bool>(true, true, arg_3.a.x), select(vec3<bool>(false, global0.c, arg_1.a.x), global1.a, global0.a), global1.a), !(!global0.a)), _wgslsmith_clamp_vec3_u32(global1.b, ~global1.b, ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(8072u, 1u, 27857u), vec3<u32>(40817u, global0.b.x, u_input.c), vec3<u32>(1u, 4294967295u, 1u)) & ~u_input.d.ywx)), arg_3.a.x);
    let var_1 = ~(global0.b.x | global1.b.x);
    let var_2 = Struct_1(arg_0.x, reverseBits(var_1), 58308u, 29447u);
    var var_3 = arg_3;
    return _wgslsmith_mod_i32(var_2.a, arg_2);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = (vec2<i32>(u_input.a.x << (_wgslsmith_add_u32(45809u, 134361u) % 32u), func_3(u_input.a, arg_1, u_input.a.x, Struct_3(global1.a.xz, arg_1.b))) & ~vec2<i32>(_wgslsmith_div_i32(u_input.b, 1i), i32(-1i) * -1i)) << (firstLeadingBit(select(vec2<u32>(arg_0.b.x, firstLeadingBit(arg_0.b.x)), vec2<u32>(_wgslsmith_add_u32(0u, global0.b.x), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)), any(select(vec4<bool>(arg_1.a.x, global0.c, true, arg_1.a.x), global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(u_input.d.x, 20u)])))) % vec2<u32>(32u));
    let var_1 = global0.a;
    global3 = array<vec4<bool>, 20>();
    return _wgslsmith_clamp_i32(31736i, abs(~(i32(-1i) * -12163i)) >> ((_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global1.b.zz, vec2<u32>(u_input.c, global0.b.x)), reverseBits(vec2<u32>(global0.b.x, 32318u))) | 0u) % 32u), u_input.b);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = ~(u_input.a & vec3<i32>(u_input.b, -u_input.a.x, func_2(Struct_2(arg_0.a, vec3<u32>(1u, 14147u, u_input.d.x), true), Struct_3(vec2<bool>(true, global0.a.x), 475f)))) & abs(vec3<i32>(min(-20718i, 59020i), firstTrailingBit(40517i), max(u_input.a.x, 1i)) >> (_wgslsmith_div_vec3_u32(max(vec3<u32>(arg_2.b.x, arg_2.b.x, 30910u), vec3<u32>(arg_0.b.x, arg_3, 45777u)), global0.b << (vec3<u32>(79770u, 4294967295u, 2723u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_mult_i32(select(-_wgslsmith_mult_i32(u_input.b, var_0.x), -reverseBits(var_0.x | -29818i), !(!(!global0.c))), ~_wgslsmith_mult_i32(func_3(-vec3<i32>(u_input.b, u_input.b, u_input.a.x), Struct_3(arg_0.a.xx, -975f), u_input.b, Struct_3(vec2<bool>(arg_1, arg_1), -1426f)), -u_input.b << (4294967295u % 32u)));
    var_1 = ~max(_wgslsmith_add_i32(-var_0.x, 0i) ^ (var_0.x ^ -1i), -155i);
    var var_2 = global0.b << (arg_2.b % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(min(-939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(428f, 1f))) - -1408f)));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: Struct_3) -> Struct_2 {
    global3 = array<vec4<bool>, 20>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f))));
    global3 = array<vec4<bool>, 20>();
    global1 = Struct_2(global0.a, reverseBits(~(~abs(global1.b))), !(!(!global1.a.x == !global0.c)));
    global2 = _wgslsmith_f_op_f32(floor(arg_3.b));
    return Struct_2(select(!global1.a, !vec3<bool>(global1.c, true, global0.c), !(!(!vec3<bool>(global1.a.x, arg_1.a.x, arg_3.a.x)))), u_input.d.wzx, global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(!vec3<bool>(!all(vec2<bool>(true, global1.c)), true, true & global0.a.x), firstLeadingBit(~(~(~global0.b))), !global0.c);
    global3 = array<vec4<bool>, 20>();
    global3 = array<vec4<bool>, 20>();
    var var_0 = global0.c;
    global1 = func_4(_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(global1.b.x, global0.b.x))), ~global0.b.zz), Struct_3(global1.a.yy, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1303f, -1660f)), _wgslsmith_f_op_f32(func_1(Struct_2(global1.a, global1.b, global1.c), global1.c, Struct_2(global0.a, vec3<u32>(22092u, global1.b.x, 9216u), global0.c), 38625u)))))), 1i, Struct_3(select(!select(vec2<bool>(global0.c, false), vec2<bool>(false, global0.c), global0.c), vec2<bool>(true, global1.a.x), select(!global0.a.yz, global0.a.xz, select(vec2<bool>(global0.a.x, false), global1.a.yx, false))), -117f));
    global0 = func_4(3101u | (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(global0.b.x, u_input.c, 28063u, 39806u)), ~vec4<u32>(u_input.c, global1.b.x, u_input.c, global0.b.x)) >> (~1u % 32u)), Struct_3(vec2<bool>(_wgslsmith_mult_u32(global1.b.x, global0.b.x) != 58727u, global0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1519f)))))), u_input.a.x, Struct_3(!func_4(~u_input.c, Struct_3(global0.a.xz, -206f), firstTrailingBit(u_input.a.x), Struct_3(vec2<bool>(true, true), -226f)).a.xy, -866f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, -u_input.a), countOneBits(abs(select(vec3<i32>(u_input.b, u_input.b, -1i), u_input.a, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-834f, -1353f) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-274f, -1401f))))), vec2<f32>(1f, 1f)), u_input.a);
}

