struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 702u, 9310u, 1u), vec4<u32>(4294967295u, 1u, 0u, 5122u), vec4<u32>(4294967295u, 32966u, 0u, 48102u), vec4<u32>(4294967295u, 0u, 4294967295u, 77991u), vec4<u32>(41839u, 49349u, 96127u, 62855u), vec4<u32>(1u, 20070u, 5030u, 1u), vec4<u32>(33761u, 59551u, 0u, 4294967295u), vec4<u32>(10545u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 18173u, 4294967295u), vec4<u32>(23069u, 20811u, 115434u, 7563u), vec4<u32>(4294967295u, 0u, 44367u, 0u), vec4<u32>(54550u, 1u, 1u, 28483u), vec4<u32>(1u, 96223u, 0u, 102923u), vec4<u32>(5290u, 13145u, 0u, 54829u), vec4<u32>(81138u, 49500u, 1u, 4294967295u), vec4<u32>(17740u, 4294967295u, 1u, 324u), vec4<u32>(18873u, 1u, 4294967295u, 4294967295u), vec4<u32>(1168u, 4294967295u, 26588u, 0u), vec4<u32>(52685u, 0u, 4294967295u, 0u), vec4<u32>(18464u, 4294967295u, 42905u, 14835u), vec4<u32>(109386u, 0u, 1u, 0u), vec4<u32>(4294967295u, 20007u, 51638u, 41848u), vec4<u32>(0u, 16544u, 1u, 15627u), vec4<u32>(4294967295u, 10885u, 1u, 4294967295u), vec4<u32>(4294967295u, 1831u, 23126u, 1u), vec4<u32>(37373u, 2777u, 1u, 10397u), vec4<u32>(17816u, 0u, 70379u, 28031u), vec4<u32>(1u, 32909u, 4294967295u, 1u), vec4<u32>(37422u, 0u, 0u, 55116u), vec4<u32>(8161u, 34420u, 26134u, 42985u), vec4<u32>(11640u, 22459u, 48063u, 1u), vec4<u32>(53543u, 1u, 56457u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(514f - arg_2), _wgslsmith_f_op_f32(max(arg_2, 536f)))) * global1[_wgslsmith_index_u32(48166u, 9u)]));
    let var_1 = var_0;
    global0 = array<Struct_1, 30>();
    var var_2 = u_input.a;
    var var_3 = 0u;
    return u_input.d;
}

fn func_3() -> u32 {
    var var_0 = ~(~u_input.d.x);
    let var_1 = ~max(u_input.c, _wgslsmith_div_vec4_i32(vec4<i32>(~2147483647i, u_input.c.x | 1i, -17610i, firstLeadingBit(u_input.e)), ~(~vec4<i32>(u_input.e, 8778i, 7470i, u_input.c.x))));
    global2 = array<vec4<u32>, 32>();
    var_0 = u_input.d.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-2274f)), -1453f, false)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1550f, -1092f) * 1129f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1576f, -432f))), firstTrailingBit(u_input.d.x) != u_input.a.x))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2451f + -888f), _wgslsmith_div_f32(-421f, 218f)))))));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global1 = array<vec2<f32>, 9>();
    global0 = array<Struct_1, 30>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1570f, 791f)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(u_input.b.x, 9u)], arg_0.a, false)), arg_0.a, true)))));
    let var_1 = 1000f;
    global2 = array<vec4<u32>, 32>();
    return ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.d.x, u_input.b.x >> (53642u % 32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, 78234u, u_input.d.x), ~vec3<u32>(u_input.d.x, u_input.b.x, 60155u))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(~(~firstLeadingBit(0u)), select(-10414i, 0i, all(vec2<bool>(true, true))), 925f) | _wgslsmith_mod_vec3_u32(~arg_0.zzx, ~u_input.d);
    global1 = array<vec2<f32>, 9>();
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(firstTrailingBit(16641u), 9u)]);
    var var_2 = global0[_wgslsmith_index_u32(abs(u_input.b.x), 30u)];
    let var_3 = global0[_wgslsmith_index_u32(func_4(global0[_wgslsmith_index_u32(func_3(), 30u)], Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)), var_1.a)))), 30u)];
    return global0[_wgslsmith_index_u32(u_input.b.x, 30u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = func_1(global2[_wgslsmith_index_u32(0u & u_input.a.x, 32u)]);
    global0 = array<Struct_1, 30>();
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(2118f, arg_1), arg_0.a));
    var var_3 = -(~select(vec4<i32>(u_input.e ^ u_input.c.x, firstLeadingBit(1i), _wgslsmith_mod_i32(2147483647i, u_input.c.x), firstLeadingBit(u_input.c.x)), -u_input.c, (u_input.d.x | 1u) >= 1u));
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(countOneBits(abs(abs(vec4<i32>(arg_1.x, 21264i, arg_1.x, u_input.c.x)))), -select(u_input.c, -vec4<i32>(0i, arg_1.x, u_input.c.x, -16666i), 4294967295u == u_input.d.x), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))))) & -(~vec4<i32>(-2147483647i, -2147483647i, -2147483647i, _wgslsmith_sub_i32(arg_1.x, 40866i)));
    let var_1 = -1360f;
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28233u, u_input.b.x) | u_input.b, select(u_input.a, u_input.b, vec2<bool>(true, false))), 9u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_1(vec2<f32>(1787f, -859f)), _wgslsmith_f_op_f32(select(1138f, -121f, false)), func_1(global2[_wgslsmith_index_u32(21409u, 32u)]))) + global1[_wgslsmith_index_u32(func_2(func_3(), _wgslsmith_mod_i32(34083i, -44957i), -1107f).x, 9u)])), vec2<i32>(-u_input.c.x ^ countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-10712i, u_input.e, 1i, 5399i), vec4<i32>(29842i, u_input.e, u_input.e, 48914i))), reverseBits(u_input.c.x)), global0[_wgslsmith_index_u32(abs(4294967295u), 30u)], func_1(vec4<u32>(~3152u, _wgslsmith_add_u32(4294967295u, u_input.a.x >> (1u % 32u)), _wgslsmith_mod_u32(~1u, u_input.a.x), _wgslsmith_sub_u32(~u_input.b.x, ~u_input.d.x))));
    var var_1 = Struct_1(var_0.a);
    global0 = array<Struct_1, 30>();
    var var_2 = u_input.d;
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.d.x), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, 1u), u_input.d.yx), ~var_2.yx, any(vec4<bool>(true, false, true, false)))), ~u_input.a.x, _wgslsmith_mult_u32(1u, u_input.b.x));
}

