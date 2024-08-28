struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global1: array<Struct_1, 22>;

var<private> global2: u32;

var<private> global3: array<Struct_1, 26>;

var<private> global4: vec2<u32> = vec2<u32>(26585u, 2356u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: u32) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = arg_3;
    global4 = _wgslsmith_sub_vec2_u32(~select(abs(arg_2), arg_2, max(u_input.d.x, -35612i) > u_input.a), vec2<u32>(var_1, ~arg_0));
    let var_2 = select(vec4<bool>(firstTrailingBit(2566i) != _wgslsmith_mult_i32(abs(u_input.d.x), _wgslsmith_sub_i32(0i, u_input.a)), all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, true))), true, arg_1.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.a.x)))), !select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))), false);
    var var_3 = max(~vec4<i32>(u_input.c, 11384i, 1i, -u_input.c), u_input.d);
    return ~((~select(vec4<u32>(0u, 4294967295u, 60869u, var_1), vec4<u32>(21511u, 0u, global4.x, 4294967295u), true) ^ vec4<u32>(4294967295u, ~arg_2.x, abs(arg_3), 0u)) >> (vec4<u32>(~(arg_2.x & 46355u), arg_2.x, 4294967295u, arg_0) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(vec3<f32>(1292f, 252f, _wgslsmith_f_op_f32(-arg_0.a.x)));
    global4 = ~arg_1.zw;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) + _wgslsmith_div_vec3_f32(arg_0.a, _wgslsmith_f_op_vec3_f32(arg_0.a + var_0.a))), arg_0.a)));
    global0 = array<vec3<bool>, 22>();
    global1 = array<Struct_1, 22>();
    return arg_0.a;
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f - -159f) - _wgslsmith_f_op_f32(trunc(arg_3.a.x))), -416f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(-1357f, -388f)))))), arg_3.a.x);
    let var_1 = vec3<i32>(1i, -_wgslsmith_div_i32(arg_2.x, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, -1i), min(2147483647i, -2147483647i))), reverseBits(_wgslsmith_clamp_i32(~(~u_input.c), ~(-12625i) ^ _wgslsmith_add_i32(-10781i, u_input.c), i32(-1i) * -arg_2.x)));
    global1 = array<Struct_1, 22>();
    global3 = array<Struct_1, 26>();
    var var_2 = ~max(vec4<u32>(u_input.b, arg_0.x, global4.x, 0u) >> (vec4<u32>(arg_0.x, u_input.b, 0u, global4.x) % vec4<u32>(32u)), vec4<u32>(reverseBits(arg_0.x), ~1u, arg_0.x, u_input.b)) | vec4<u32>(global4.x, arg_0.x, ~_wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(_wgslsmith_add_u32(global4.x, u_input.b), ~arg_0.x)));
    return select(vec4<bool>(true, any(select(select(global0[_wgslsmith_index_u32(var_2.x, 22u)], vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(global4.x, 22u)]), global0[_wgslsmith_index_u32(4294967295u, 22u)], true)), true, !any(vec4<bool>(true, true, true, true))), select(vec4<bool>(all(vec2<bool>(true, false)) & false, true, false, any(global0[_wgslsmith_index_u32(arg_0.x, 22u)])), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true)), select(vec4<bool>(all(vec2<bool>(true, false)), false, false, true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), all(vec4<bool>(false, false, false, false))), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), false, 18092i != u_input.c), vec4<bool>(false, true, all(vec2<bool>(true, true)), true)), select(true, true, true)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: f32) -> vec4<bool> {
    global2 = arg_1.x;
    let var_0 = _wgslsmith_mod_vec3_i32(~u_input.d.xzz, vec3<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-24569i, -1i, 0i), ~(~vec3<i32>(54109i, u_input.d.x, 0i))), -1226i));
    let var_1 = any(select(!select(select(vec3<bool>(false, arg_2, true), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, false, arg_2)), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(false, true, true), vec3<bool>(arg_2, false, arg_2)), true), vec3<bool>(all(vec3<bool>(false, arg_2, true)), true, arg_2), true));
    let var_2 = global3[_wgslsmith_index_u32(15107u, 26u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-798f - var_2.a.x), arg_0), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, -2058f, -1950f), var_2.a))))));
    return func_5(vec3<u32>(~33656u, u_input.b, global4.x), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(-1172f + 1000f)), vec2<i32>(-16012i, (var_0.x & 8168i) << (_wgslsmith_sub_u32(global4.x, global4.x) % 32u)) | var_0.zx, Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(var_2.a.x, var_3.a.x, 1090f)), func_3(4294967295u, Struct_1(vec3<f32>(arg_0, var_3.a.x, 476f)), arg_1.yz, arg_1.x), select(select(vec2<bool>(var_1, arg_2), vec2<bool>(false, false), var_1), select(vec2<bool>(arg_2, var_1), vec2<bool>(false, true), vec2<bool>(var_1, true)), vec2<bool>(true, false))))));
}

fn func_6(arg_0: vec4<bool>, arg_1: i32) -> vec4<f32> {
    var var_0 = arg_0;
    var var_1 = ~u_input.b;
    let var_2 = global3[_wgslsmith_index_u32((global4.x ^ ~4294967295u) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 55385u, global4.x, 16552u)), vec4<u32>(~global4.x, ~0u, ~51759u, 0u)), global4.x), 26u)];
    let var_3 = Struct_1(vec3<f32>(var_2.a.x, -507f, var_2.a.x));
    var var_4 = var_3.a.x;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -844f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 983f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec3<f32>(var_3.a.x, -855f, -3114f)), vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u), var_0.wy)).x, -287f)) * _wgslsmith_f_op_f32(-var_2.a.x)) - 1575f));
}

fn func_1(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_6(func_2(1063f, vec4<u32>(0u, 1u, u_input.b, global4.x), true, 862f), select(38137i, 0i, false))) + vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(global3[_wgslsmith_index_u32(u_input.b, 26u)], vec4<u32>(global4.x, 4294967295u, global4.x, 0u), vec2<bool>(false, false))).x, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(select(973f, 511f, true)), _wgslsmith_f_op_f32(floor(-1393f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-262f + 1309f) - _wgslsmith_f_op_f32(sign(-1011f))), -350f, _wgslsmith_f_op_f32(f32(-1f) * -1270f), 1f)), vec4<bool>(true, true, true, true)));
    global3 = array<Struct_1, 26>();
    var var_1 = reverseBits(-15222i);
    global0 = array<vec3<bool>, 22>();
    var_1 = _wgslsmith_sub_i32(u_input.a, arg_0.x);
    return 1i;
}

fn func_7(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(50918u, 22u)];
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(743f, _wgslsmith_f_op_f32(f32(-1f) * -836f), 872f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(850f, 752f, 288f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-415f, -421f, 185f), vec3<f32>(-1420f, 413f, -1000f))))))));
    var_1 = global3[_wgslsmith_index_u32(arg_3.x, 26u)];
    var var_2 = global1[_wgslsmith_index_u32(8930u, 22u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x * -537f), -1000f) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(520f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1.a.x, -290f))) - var_1.a.x)));
    return global1[_wgslsmith_index_u32(3190u, 22u)];
}

fn func_8(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = firstLeadingBit(~(~vec2<u32>(reverseBits(u_input.b), ~1u)));
    var var_1 = arg_0;
    var var_2 = arg_2;
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f)) == _wgslsmith_f_op_f32(-arg_2.a.x), false, true, !any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false), func_5(vec3<u32>(1u, 36824u, var_0.x), var_1.a.x, vec2<i32>(0i, -61772i), arg_2).yw)));
    let var_4 = vec4<bool>(any(vec2<bool>(func_5(_wgslsmith_add_vec3_u32(vec3<u32>(global4.x, 39717u, 54405u), vec3<u32>(46968u, 48453u, 1u)), arg_0.a.x, u_input.d.yw >> (var_0 % vec2<u32>(32u)), global1[_wgslsmith_index_u32(~16272u, 22u)]).x, func_5(vec3<u32>(u_input.b, var_0.x, 4294967295u), _wgslsmith_f_op_f32(-123f * var_1.a.x), _wgslsmith_div_vec2_i32(u_input.d.zw, u_input.d.zx), global1[_wgslsmith_index_u32(min(arg_3, 85135u), 22u)]).x)), true, !var_3.x, false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~u_input.d.wz, u_input.d.yy), (u_input.d.yw << (vec2<u32>(4294967295u, 18098u) % vec2<u32>(32u))) ^ vec2<i32>(1i, 1i)));
    global3 = array<Struct_1, 26>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.b), ~4294967295u), 22u)];
    let var_2 = vec4<u32>(reverseBits(4294967295u), firstTrailingBit(1u << (global4.x % 32u)), 0u, ~max(_wgslsmith_div_u32(firstLeadingBit(75648u), firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(22500u, 28096u, 10546u, global4.x), ~vec4<u32>(4294967295u, u_input.b, 1u, 0u))));
    var var_3 = _wgslsmith_f_op_f32(abs(-1026f));
    let var_4 = func_8(func_7(0i, _wgslsmith_div_vec4_i32((u_input.d ^ u_input.d) & reverseBits(u_input.d), vec4<i32>(u_input.d.x, _wgslsmith_add_i32(u_input.a, 32183i), u_input.c | u_input.c, func_1(u_input.d.zy))), var_2.xzz, var_2), -u_input.c, global3[_wgslsmith_index_u32(var_2.x << (_wgslsmith_mod_u32(~var_2.x >> ((var_2.x << (var_2.x % 32u)) % 32u), 0u) % 32u), 26u)], ~countOneBits(_wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, 1u), _wgslsmith_add_u32(60088u, 11426u))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, select(max(var_2, func_3(29375u & global4.x, global3[_wgslsmith_index_u32(u_input.b, 26u)], vec2<u32>(global4.x, 68426u), var_2.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(var_2, _wgslsmith_sub_vec4_u32(vec4<u32>(global4.x, u_input.b, global4.x, 1u), vec4<u32>(global4.x, 4294967295u, u_input.b, global4.x))), u_input.b, 0u, global4.x), vec4<bool>(true, false, _wgslsmith_dot_vec3_i32(u_input.d.yxz, vec3<i32>(-35382i, u_input.d.x, u_input.c)) > (u_input.c & u_input.a), true)));
}

