struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

var<private> global1: array<u32, 5>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-1696f));
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    global1 = array<u32, 5>();
    let var_1 = ~_wgslsmith_add_u32((4294967295u ^ global1[_wgslsmith_index_u32(0u, 5u)]) << (~abs(global1[_wgslsmith_index_u32(20681u, 5u)]) % 32u), global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), 5u)]);
    return var_0;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> f32 {
    global1 = array<u32, 5>();
    var var_0 = arg_2.c.a.yx;
    global1 = array<u32, 5>();
    global1 = array<u32, 5>();
    let var_1 = arg_2.c;
    return _wgslsmith_f_op_f32(round(-1335f));
}

fn func_2() -> f32 {
    global1 = array<u32, 5>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-827f, 860f, -558f) - vec3<f32>(1360f, -172f, 432f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-693f, 381f, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1150f, 1000f, -1169f))))))), true, countOneBits(max(vec3<u32>(15589u, 69585u, 3672u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(0u, 5u)], 0u)) ^ ~reverseBits(vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29329u, 5u)], 5u)], 5u)]))));
    global0 = array<vec4<i32>, 31>();
    let var_1 = ~(-(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -1972i, u_input.a), vec3<i32>(u_input.a, 40442i, 1i), vec3<i32>(u_input.a, 1i, u_input.a)), vec3<i32>(u_input.a, u_input.a, -5637i)) >> (firstLeadingBit(var_0.c << (var_0.c % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_2 = var_0.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-_wgslsmith_sub_i32(u_input.a >> (61839u % 32u), 1i), var_0.c.x, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), var_0.b, var_0.c & vec3<u32>(var_0.c.x, 0u, global1[_wgslsmith_index_u32(55090u, 5u)])), -50915i, Struct_1(var_0.a, true, var_0.c), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(var_0.c.x, 5u)], 74070u) << (~vec4<u32>(global1[_wgslsmith_index_u32(var_0.c.x, 5u)], 1u, 1u, 1u) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-1058f - -309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - -2502f)), false, ~(~vec3<u32>(global1[_wgslsmith_index_u32(~1u, 5u)], firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 5u)]), _wgslsmith_div_u32(global1[_wgslsmith_index_u32(11781u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52030u, 5u)], 5u)]))));
    var var_1 = vec3<u32>(~40156u, _wgslsmith_div_u32(58620u, 1u ^ ~var_0.c.x), 4294967295u);
    let var_2 = var_0;
    var var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(var_0.a.x, 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.a.x * var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), (11558i >> (_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_1.x), vec3<u32>(64116u, var_2.c.x, var_2.c.x)), var_2.c.x) % 32u)) > -10478i, vec3<u32>(~_wgslsmith_sub_u32(1u, var_3.c.x), global1[_wgslsmith_index_u32(~23202u, 5u)], (~global1[_wgslsmith_index_u32(10798u, 5u)] ^ _wgslsmith_div_u32(var_0.c.x, 4294967295u)) | ~(~109797u)));
    let var_5 = var_4;
    let var_6 = !select(select(select(!vec3<bool>(true, var_4.b, false), select(vec3<bool>(var_0.b, false, var_5.b), vec3<bool>(true, var_4.b, true), var_2.b), false), vec3<bool>(false, true, var_4.a.x != var_0.a.x), !(!vec3<bool>(var_4.b, true, true))), vec3<bool>(true, 1684u != var_0.c.x, true), select(vec3<bool>(var_0.b, var_2.b, !var_0.b), vec3<bool>(!var_3.b, u_input.a > u_input.a, false), any(select(vec4<bool>(false, var_5.b, var_5.b, var_5.b), vec4<bool>(var_3.b, true, var_0.b, false), vec4<bool>(var_0.b, var_4.b, var_0.b, var_2.b)))));
    let var_7 = max(global0[_wgslsmith_index_u32(116412u, 31u)], ~select(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> ((vec4<u32>(var_2.c.x, 4294967295u, var_4.c.x, 4294967295u) & vec4<u32>(var_4.c.x, var_1.x, var_2.c.x, global1[_wgslsmith_index_u32(var_1.x, 5u)])) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(firstLeadingBit(global0[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(13122u, 31u)], vec4<i32>(2147483647i, u_input.a, -14762i, -37711i))), any(select(vec2<bool>(var_4.b, var_2.b), var_6.zz, var_6.yx))));
    var var_8 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.a.x * var_5.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x)))))));
}

