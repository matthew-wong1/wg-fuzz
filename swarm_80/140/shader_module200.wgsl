struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec3<u32> = vec3<u32>(71353u, 107110u, 36668u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: Struct_4) -> i32 {
    var var_0 = false;
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_3.a.x, u_input.a.x, 1i, -60572i)), countOneBits(vec4<i32>(arg_0.a, -2147483647i, u_input.a.x, arg_3.a.x))), ((arg_0.a ^ u_input.c) << (~global1.x % 32u)) | u_input.c);
    var_0 = !(4294967295u <= firstTrailingBit(49895u));
    let var_2 = arg_2.b.x;
    let var_3 = _wgslsmith_mult_u32(~u_input.b, ~u_input.b);
    return ~arg_2.a.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_div_i32(2147483647i | u_input.c, 49030i);
    let var_1 = -2147483647i;
    let var_2 = !(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, true, true))));
    var var_3 = Struct_4(max(vec3<i32>(var_1, 35144i, reverseBits(var_1)), vec3<i32>(~_wgslsmith_add_i32(u_input.d, 29445i), _wgslsmith_clamp_i32(var_0, reverseBits(2147483647i), func_3(Struct_3(var_0), -365f, Struct_4(vec3<i32>(0i, 33539i, u_input.d), vec2<f32>(global0[_wgslsmith_index_u32(1376u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)])), Struct_4(vec3<i32>(-68101i, var_1, var_1), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -841f)))), -u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 2u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-653f, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec2<f32>(1000f, -176f))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(60603u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 2u)], global0[_wgslsmith_index_u32(46383u, 2u)]), false))))));
    global0 = array<f32, 2>();
    return ~((global1.zx >> (abs(~global1.xy) % vec2<u32>(32u))) >> (~(~countOneBits(global1.yz)) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = firstLeadingBit(func_2());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1021f), _wgslsmith_f_op_f32(f32(-1f) * -803f))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u << (global1.x % 32u), 2u)] + 399f))), ~countOneBits(_wgslsmith_dot_vec2_u32(var_0 << (global1.xx % vec2<u32>(32u)), vec2<u32>(global1.x, 4294967295u) & vec2<u32>(1u, 4294967295u))));
    var var_2 = -9645i;
    var var_3 = -(~min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -10663i), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), ~1i));
    let var_4 = -_wgslsmith_add_vec4_i32(~max(~vec4<i32>(1i, u_input.a.x, u_input.d, u_input.d), vec4<i32>(0i, -2147483647i, 10840i, u_input.d) & vec4<i32>(u_input.d, u_input.d, -1i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 1i, -1i), select(vec4<i32>(0i, 2737i, 3982i, u_input.d) ^ vec4<i32>(u_input.a.x, -23691i, -1i, u_input.c), vec4<i32>(u_input.d, -2147483647i, 59689i, -19884i) ^ vec4<i32>(1i, u_input.d, u_input.a.x, -16251i), select(true, arg_0.x, arg_0.x))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(max(_wgslsmith_clamp_i32(~u_input.d, -2147483647i, ~u_input.c) & func_1(vec3<bool>(true, true, true)), min(_wgslsmith_div_i32(func_3(Struct_3(u_input.c), -375f, Struct_4(vec3<i32>(-20492i, u_input.d, 4555i), vec2<f32>(global0[_wgslsmith_index_u32(global1.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)])), Struct_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec2<f32>(global0[_wgslsmith_index_u32(45993u, 2u)], global0[_wgslsmith_index_u32(45003u, 2u)]))), -u_input.a.x), firstLeadingBit(firstLeadingBit(1i)))));
    var var_1 = _wgslsmith_dot_vec2_u32(~global1.zy, vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 19765u, 39649u), ~vec3<u32>(49381u, u_input.b, global1.x)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b, 37377u, 1u)), vec3<u32>(31155u, 105783u, global1.x)) | 31729u));
    var var_2 = Struct_3(0i);
    let var_3 = Struct_2(-var_2.a);
    let var_4 = vec3<bool>(true == all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), (u_input.b >= ~(~4294967295u)) && true, !(749f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.x, 2u)]))));
    global1 = ~(~(vec3<u32>(u_input.b, global1.x, 31888u) | vec3<u32>(0u, global1.x, u_input.b))) >> (vec3<u32>(global1.x, 1u, _wgslsmith_div_u32(global1.x, func_2().x)) % vec3<u32>(32u));
    var var_5 = Struct_4(-u_input.a ^ u_input.a, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 2u)]), -566f, true)))));
    var var_6 = var_4;
    var var_7 = max((vec4<u32>(24475u, _wgslsmith_add_u32(0u, 0u), _wgslsmith_add_u32(u_input.b, 1u), countOneBits(u_input.b)) | countOneBits(select(vec4<u32>(42677u, 13839u, 1u, u_input.b), vec4<u32>(global1.x, 4294967295u, global1.x, u_input.b), var_6.x))) ^ (select(~vec4<u32>(u_input.b, u_input.b, 14238u, 31922u), vec4<u32>(u_input.b, global1.x, 4294967295u, 75132u), select(vec4<bool>(var_4.x, var_4.x, var_6.x, var_6.x), vec4<bool>(var_4.x, false, true, var_4.x), true)) ^ ~vec4<u32>(1u, u_input.b, global1.x, u_input.b)), vec4<u32>(max(5502u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 14447u, 50340u) >> (vec3<u32>(52459u, 0u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 4705u, u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(36817u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(82900u, 4294967295u, global1.x), vec3<u32>(26769u, u_input.b, 32710u)), _wgslsmith_dot_vec2_u32(global1.yz, global1.zz)), select(~vec4<u32>(u_input.b, global1.x, 608u, u_input.b), vec4<u32>(global1.x, 56304u, global1.x, global1.x), vec4<bool>(false, var_4.x, false, var_4.x))), global1.x & ~4294967295u, ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_7.zzy, vec3<u32>(4294967295u, _wgslsmith_mod_u32(func_2().x, 15711u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) << (var_7.yz % vec2<u32>(32u)), ~var_7.wx))), func_2().x, -206f, var_5.b.x, -u_input.a.zz);
}

