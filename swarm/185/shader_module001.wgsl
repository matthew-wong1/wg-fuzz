struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-2023f, -773f, 798f, -1311f, 484f, -1067f, 1000f, -1421f, -977f, 445f, 1333f, -273f, -151f, -1160f, -291f);

var<private> global1: array<Struct_2, 10>;

var<private> global2: i32 = -17643i;

var<private> global3: array<f32, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 4u)]))));
    let var_2 = ~(~(~(~vec2<u32>(var_0.a.a.x, 4294967295u)))) << (var_0.a.a.zy % vec2<u32>(32u));
    global1 = array<Struct_2, 10>();
    global2 = -u_input.c.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1378f * global0[_wgslsmith_index_u32(u_input.a.x, 15u)])))), _wgslsmith_f_op_f32(min(1281f, 105f)));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global3 = array<f32, 4>();
    var var_0 = _wgslsmith_mod_vec4_u32(reverseBits(~abs(abs(vec4<u32>(116122u, 87360u, arg_0.x, 0u)))), ~(~vec4<u32>(65445u, 0u, 23610u, 4849u) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 0u, 44664u, 1u), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_add_i32(u_input.b.x, ~u_input.c.x) < u_input.c.x;
    let var_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, u_input.a.x, 23493u, ~29811u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)] - global3[_wgslsmith_index_u32(arg_0.x, 4u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(30184u, var_0.x), 15u)]))), select(reverseBits(u_input.b.x), -2147483647i, _wgslsmith_f_op_f32(func_3()) > global3[_wgslsmith_index_u32(arg_0.x ^ 24844u, 4u)]), 0i), select(select(vec2<bool>(true, any(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, false, false, false)) || false), !vec2<bool>(any(vec4<bool>(false, false, true, false)), true), !(true && all(vec3<bool>(false, true, true)))));
    var var_3 = var_2.a;
    return 67211u;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_2, 10>();
    var var_0 = max(_wgslsmith_clamp_u32(~func_2(vec3<u32>(u_input.a.x, arg_1, u_input.a.x)), u_input.a.x, 4294967295u), 0u);
    global2 = _wgslsmith_mult_i32(u_input.b.x, 1i);
    var var_1 = arg_3;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_1, arg_1), 28801u) << (~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, u_input.a.x), 37747u) % 32u);
    return Struct_1(vec4<u32>(abs(_wgslsmith_div_u32(arg_1, func_2(vec3<u32>(0u, 59283u, 30035u)))), 1u, _wgslsmith_add_u32(u_input.a.x, 1u), 52282u), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(87342u, 4u)])), global3[_wgslsmith_index_u32(abs(8812u), 4u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 1254f), vec2<f32>(-930f, -758f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, global3[_wgslsmith_index_u32(arg_1, 4u)]))))))), global0[_wgslsmith_index_u32(~u_input.a.x | ((4294967295u | _wgslsmith_mult_u32(arg_1, arg_1)) >> (arg_1 % 32u)), 15u)], -2147483647i, firstLeadingBit(((u_input.b.x & u_input.b.x) >> (~arg_1 % 32u)) & ~u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -u_input.c.x | u_input.c.x;
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 10u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.b.x * 937f) * _wgslsmith_f_op_f32(min(-1579f, -684f)))) - var_0.a.b.x), global3[_wgslsmith_index_u32(var_0.a.a.x, 4u)], var_0.a.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(38666u, 4u)] - global0[_wgslsmith_index_u32(21990u, 15u)]), 575f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)])))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.xw + var_0.a.b) * var_0.a.b))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(228f, 221f), _wgslsmith_f_op_f32(-1650f + var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, global0[_wgslsmith_index_u32(var_0.a.a.x, 15u)]))))));
    var var_3 = var_1.zwz;
    let var_4 = Struct_2(var_0.a, vec2<bool>(u_input.a.x != var_0.a.a.x, var_0.b.x));
    var var_5 = func_1(vec4<bool>(true, true, all(!vec4<bool>(var_0.b.x, false, false, var_4.b.x)), false), _wgslsmith_mod_u32(u_input.a.x, max(u_input.a.x, ~(~0u))), any(select(!vec4<bool>(var_0.b.x, false, true, true), vec4<bool>(false, true, var_4.b.x, true), all(var_4.b))) & !all(vec4<bool>(var_4.b.x, var_4.b.x, true, var_0.b.x)), var_0.b);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.a.x, vec4<i32>(2299i >> (_wgslsmith_div_u32(4294967295u, u_input.a.x) % 32u), select(-2147483647i, ~(~var_4.a.e), true), _wgslsmith_mult_i32(var_0.a.d, -reverseBits(-2147483647i)), abs(-2147483647i | var_4.a.d)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_6.a.c, global3[_wgslsmith_index_u32(36923u, 4u)], var_5.b.x, -912f), vec4<f32>(-895f, var_5.c, -629f, -823f), vec4<bool>(false, false, var_4.b.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(718f, 1227f, 788f, -305f))))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -275f), var_3.x)), _wgslsmith_f_op_f32(var_2.x + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_f_op_f32(step(func_1(vec4<bool>(true, var_4.b.x, true, false), 45001u, true, var_0.b).b.x, _wgslsmith_f_op_f32(ceil(1649f))))))));
}

