struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<f32, 27>;

var<private> global2: Struct_3 = Struct_3(Struct_2(vec3<u32>(6197u, 1u, 38407u)), vec4<i32>(16820i, -1i, 0i, 44528i), vec4<i32>(-1124i, 0i, 1i, -11542i), Struct_2(vec3<u32>(54409u, 33680u, 41393u)), vec3<u32>(4294967295u, 0u, 67321u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c, 27u)] + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(arg_1.a, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -1441f)))), _wgslsmith_f_op_f32(abs(1741f)), global1[_wgslsmith_index_u32(84671u, 27u)]);
    global0 = -u_input.d.yy;
    let var_2 = u_input.b;
    var var_3 = !vec3<bool>(var_0, var_0, false | !select(var_0, var_0, var_0));
    return -u_input.d;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> bool {
    global0 = abs(vec2<i32>(-1i) * -(~(-global2.c.wz)));
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(0u, 1u)), arg_1.d.a.x) << (52352u % 32u));
    let var_1 = 5142u;
    var var_2 = -664f;
    let var_3 = arg_0.x;
    return !(u_input.a <= reverseBits(_wgslsmith_sub_i32(global2.b.x, 2147483647i))) | select(var_3, (!arg_0.x != var_3) | !arg_0.x, true);
}

fn func_1() -> vec2<i32> {
    var var_0 = global2.a;
    global2 = Struct_3(global2.d, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.d, _wgslsmith_mod_vec4_i32(-vec4<i32>(global2.b.x, global0.x, u_input.d.x, 13496i), func_2(vec4<f32>(global1[_wgslsmith_index_u32(14171u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), Struct_1(global2.e.x)))), u_input.d), vec4<i32>(global2.b.x << ((global2.d.a.x ^ ~var_0.a.x) % 32u), ~global0.x, abs(global0.x), abs(firstTrailingBit(i32(-1i) * -2147483647i))), Struct_2(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.c, u_input.c, u_input.c), min(vec3<u32>(48521u, global2.d.a.x, 7666u), var_0.a), func_3(vec4<bool>(true, true, true, true), Struct_3(global2.d, vec4<i32>(global2.c.x, 104497i, 0i, -1i), vec4<i32>(-5934i, global2.b.x, 2867i, global2.b.x), global2.a, global2.a.a))), ~var_0.a)), ~reverseBits(vec3<u32>(~36823u, global2.e.x, 4294967295u)));
    var var_1 = 1i;
    var var_2 = Struct_1(u_input.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a, 27u)]), _wgslsmith_f_op_f32(floor(-968f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1329f) + global1[_wgslsmith_index_u32(~u_input.c, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1756f * -236f) * global1[_wgslsmith_index_u32(~4294967295u, 27u)])))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(849f, -180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42550u, 27u)])), _wgslsmith_f_op_f32(floor(299f))))));
    return u_input.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(6640u, global2.e.x) >> (abs(u_input.c >> ((u_input.c | 0u) % 32u)) % 32u);
    var var_1 = any(vec4<bool>(true, true, true, true));
    var var_2 = true;
    let var_3 = abs(-1i);
    global0 = _wgslsmith_mod_vec2_i32(func_1(), u_input.d.yw);
    var_0 = min(reverseBits(0u), abs(4294967295u));
    var var_4 = -1299f;
    var var_5 = Struct_1(~global2.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(~global2.b.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(global2.a.a.x, abs(1u)) & ~abs(var_5.a), 4294967295u, min(var_5.a, reverseBits(min(u_input.c, var_5.a)))), vec2<u32>(~(~global2.a.a.x), firstTrailingBit(abs(u_input.c))));
}

