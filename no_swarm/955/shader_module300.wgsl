struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, 18987i, 0i);

var<private> global1: array<u32, 10>;

var<private> global2: Struct_4 = Struct_4(Struct_3(vec4<f32>(-583f, 151f, 871f, 431f), true, vec2<f32>(-825f, -1000f)));

var<private> global3: array<u32, 16> = array<u32, 16>(4294967295u, 24417u, 1u, 4294967295u, 33951u, 1u, 4294967295u, 4294967295u, 13209u, 0u, 11982u, 103919u, 12260u, 64643u, 12589u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    let var_0 = global2.a.c.x;
    global3 = array<u32, 16>();
    global0 = vec3<i32>(u_input.b, global0.x, global0.x);
    var var_1 = !vec2<bool>(select(all(vec3<bool>(false, global2.a.b, true)), arg_1.c.x, !select(global2.a.b, false, arg_2.x)), select(true, false, all(arg_2.yxx)));
    var var_2 = arg_2.x;
    return var_1.x;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32) -> vec4<u32> {
    global2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.c.x, global2.a.c.x, global2.a.a.x, global2.a.a.x), vec4<f32>(-1332f, -334f, -609f, global2.a.a.x), vec4<bool>(global2.a.b, global2.a.b, true, global2.a.b))), _wgslsmith_f_op_vec4_f32(-global2.a.a)))), !(!all(vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(global2.a.a.yw)), global2.a.a.xy, select(vec2<bool>(false, true), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(true, false)))) * global2.a.a.zz)));
    global2 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(580f, global2.a.c.x, 763f, 2356f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global2.a.a - global2.a.a)))), 113f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.c.x * -176f)), global2.a.c));
    let var_0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(~arg_0), ~43468i), vec3<i32>(arg_1, countOneBits(~arg_2), -63660i), select(firstTrailingBit(u_input.c.xzx), u_input.c.xyy | vec3<i32>(-11728i, global0.x, global0.x), !global2.a.b));
    let var_1 = _wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(0u, 16u)] & u_input.a.x), 10u)], ~reverseBits(4294967295u)), ~0u, 32138u));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(global2.a.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.a.a), global2.a.a, !(!vec4<bool>(false, global2.a.b, global2.a.b, true))))), select(any(select(vec4<bool>(global2.a.b, global2.a.b, true, false), select(vec4<bool>(true, true, global2.a.b, true), vec4<bool>(global2.a.b, global2.a.b, global2.a.b, global2.a.b), global2.a.b), vec4<bool>(global2.a.b, global2.a.b, global2.a.b, false))), global2.a.b, global2.a.b), global2.a.a.xy);
    return vec4<u32>(~firstLeadingBit(5375u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, ~var_1.x), 0u), ~(~min(16688u, 41399u))), ~(~1u), 1u);
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_1(0u, global3[_wgslsmith_index_u32(u_input.a.x, 16u)] << ((_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(reverseBits(global3[_wgslsmith_index_u32(65106u, 16u)]), 16u)], ~3514u) ^ ~6661u) % 32u), !vec3<bool>(global2.a.b, select(func_2(global2.a.a.wxy, Struct_1(global3[_wgslsmith_index_u32(0u, 16u)], u_input.a.x, vec3<bool>(global2.a.b, global2.a.b, false)), vec4<bool>(global2.a.b, global2.a.b, false, false)), !global2.a.b, global2.a.b), false));
    global0 = _wgslsmith_div_vec3_i32(-u_input.c.yxz, ~(~select(~u_input.c.xyw, reverseBits(u_input.c.xxy), var_0.c.x | true)));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_mod_vec4_u32(countOneBits(func_3(0i, ~u_input.b, _wgslsmith_mod_i32(32317i, -2147483647i))) | vec4<u32>(abs(u_input.a.x >> (1u % 32u)), u_input.a.x ^ ~1u, ~u_input.a.x, ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(46924u, 10u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65002u, 10u)], 10u)])), ~(~select(~vec4<u32>(1u, u_input.a.x, 61150u, 46381u), ~vec4<u32>(var_0.b, 0u, 0u, 36745u), true)));
    var var_3 = countOneBits(select(vec3<i32>(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 1i, global0.x), u_input.c.wwy) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0), vec2<i32>(-1669i, 58664i)), ~0i), vec3<i32>(-_wgslsmith_div_i32(2147483647i, -42146i), -(~(-1i)), firstLeadingBit(-10515i)), var_0.c));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 10>();
    global3 = array<u32, 16>();
    global2 = Struct_4(global2.a);
    var var_0 = ~global0.x;
    var var_1 = func_1(-30978i);
    let var_2 = Struct_4(Struct_3(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.a.x, var_1.c.x)), var_1.a.x, var_1.a.x), global2.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.a.zx + vec2<f32>(global2.a.a.x, 1462f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.c * global2.a.a.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, global2.a.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1296f, var_2.a.a.x, var_2.a.a.x), var_2.a.a.xyw, var_2.a.b)) - vec3<f32>(global2.a.c.x, -461f, -1943f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.a.x, -362f, var_2.a.c.x) - vec3<f32>(-1353f, var_2.a.a.x, -1522f)) - var_2.a.a.ywx)), func_1(20061i).a.xzx)), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(u_input.a.x), 17361u), min(u_input.a.yy, countOneBits(u_input.a.zx)) ^ _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(19286u, 16u)])), _wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(global3[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 10u)])))), ~vec4<u32>(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~0u, 16u)], 10u)], _wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(false, global2.a.b, var_2.a.b)), u_input.a), 28879u, global1[_wgslsmith_index_u32(35930u, 10u)]), countOneBits(~func_3(-2147483647i, u_input.b, global0.x) | vec4<u32>(114133u << (global1[_wgslsmith_index_u32(8405u, 10u)] % 32u), 4294967295u, 0u, firstLeadingBit(u_input.a.x))), global3[_wgslsmith_index_u32(abs(1u ^ _wgslsmith_sub_u32(64869u, _wgslsmith_mod_u32(25266u, u_input.a.x))), 16u)]);
}

