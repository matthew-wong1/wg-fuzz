struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, false, false);

var<private> global1: Struct_1 = Struct_1(-293f, -1535f, vec3<f32>(-205f, 339f, 2214f), vec4<u32>(71769u, 0u, 63020u, 38324u), 4294967295u);

var<private> global2: array<Struct_1, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec4<u32> {
    global1 = Struct_1(1162f, 1241f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f * 870f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(189f, -193f)))), global1.a), max(~min(~vec4<u32>(arg_1, arg_1, global1.e, 55110u), vec4<u32>(32490u, 0u, 0u, global1.d.x)), vec4<u32>(abs(4294967295u), _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1, global1.e), 0u), ~global1.d.x, 4294967295u)), _wgslsmith_sub_u32(~firstTrailingBit(~arg_1), 8417u));
    global0 = array<bool, 4>();
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0.x, arg_0.x), 59703i), u_input.a, arg_0.xy);
    let var_1 = _wgslsmith_f_op_f32(global1.c.x * global1.b);
    var_0 = ~select(select(vec2<i32>(~1i, 19973i), vec2<i32>(-2147483647i, -arg_0.x), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global1.e, 4u)])), max(-vec2<i32>(u_input.d, -35749i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], !global0[_wgslsmith_index_u32(1u, 4u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(10936u, 4u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false), global0[_wgslsmith_index_u32(~u_input.b, 4u)])));
    return select(_wgslsmith_add_vec4_u32(~max(vec4<u32>(arg_1, 9653u, global1.e, 15599u), vec4<u32>(global1.e, 0u, u_input.b, arg_1)) >> (global1.d % vec4<u32>(32u)), global1.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u << (u_input.b % 32u), 65685u, _wgslsmith_add_u32(0u, 33008u)) >> (~select(global1.d, global1.d, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 4u)], false, false)) % vec4<u32>(32u)), ~vec4<u32>(~arg_1, ~arg_1, ~u_input.b, ~u_input.b)), !(!all(!vec3<bool>(global0[_wgslsmith_index_u32(47113u, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)], false))));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(global1.b));
    global0 = array<bool, 4>();
    global1 = Struct_1(_wgslsmith_f_op_f32(-var_0), var_0, arg_1.c, (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, global1.e), global1.d) << (func_3(vec3<i32>(41299i, u_input.a.x, -1i), 36707u) % vec4<u32>(32u))) >> (~_wgslsmith_add_vec4_u32(arg_1.d, vec4<u32>(31461u, 4294967295u, global1.d.x, arg_1.e)) % vec4<u32>(32u)), ~u_input.b);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1847f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a), 261f)))));
    let var_2 = vec2<i32>(-2147483647i, 75829i);
    return global1.e;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    let var_0 = !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(func_2(!global0[_wgslsmith_index_u32(global1.d.x, 4u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), global1.d.wz), 9u)]), _wgslsmith_clamp_u32(0u << (1u % 32u), ~42701u, arg_0.d.x)), 4u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(316f, global1.c.x, _wgslsmith_f_op_f32(-608f * _wgslsmith_f_op_f32(floor(global1.a))), 1282f) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.c.x, arg_0.a, arg_1, 581f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(468f, -501f, arg_1, 355f), vec4<f32>(arg_0.c.x, global1.b, -1226f, -574f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, arg_0.a, 846f, arg_0.b))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -453f, arg_1, -615f), vec4<f32>(global1.b, arg_0.b, 1838f, global1.a), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0.e, 4u)], global0[_wgslsmith_index_u32(arg_0.e, 4u)], var_0)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(661f, global1.a, global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, arg_1, 365f, arg_0.c.x))))), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.e, firstLeadingBit(16785u)), 4u)], var_0, true, true))));
    let var_2 = global2[_wgslsmith_index_u32(1903u, 9u)];
    let var_3 = 35743u;
    let var_4 = !(!select(vec4<bool>(false, all(vec3<bool>(var_0, false, var_0)), true, !global0[_wgslsmith_index_u32(89342u, 4u)]), vec4<bool>(!global0[_wgslsmith_index_u32(var_3, 4u)], var_1.x > -953f, global0[_wgslsmith_index_u32(~7812u, 4u)], !var_0), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.e, 4u)], true, var_0), vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 4u)], var_0, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], true, global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(arg_0.d.x, 4u)]))));
    return func_2(true, Struct_1(var_2.b, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(step(arg_1, -824f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, var_1.x, arg_1), global1.c))), func_3(-_wgslsmith_mod_vec3_i32(vec3<i32>(63265i, u_input.a.x, 42475i), vec3<i32>(-11287i, u_input.d, -22159i)), _wgslsmith_dot_vec3_u32(func_3(vec3<i32>(1i, -1i, u_input.d), arg_2.x).xyx, firstTrailingBit(arg_2.xyx))), firstLeadingBit(82251u | ~arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(global1.d.wxz, global1.d.xyw);
    var var_1 = _wgslsmith_dot_vec3_u32(~(~max(max(var_0, vec3<u32>(4294967295u, 34808u, global1.e)), vec3<u32>(56864u, 1u, global1.e) ^ vec3<u32>(var_0.x, 4294967295u, u_input.b))), ~global1.d.xyy);
    let var_2 = vec2<bool>(false, false);
    let var_3 = global2[_wgslsmith_index_u32(func_1(Struct_1(global1.b, -2492f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-775f - global1.c.x), _wgslsmith_f_op_f32(512f - -1172f), 615f)), global1.d, ~0u), -759f, _wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.d.x, 4294967295u, global1.e, 10024u) ^ vec4<u32>(0u, var_0.x << (var_0.x % 32u), u_input.b, u_input.b >> (1u % 32u)), vec4<u32>(u_input.b, 4294967295u, abs(0u), ~(~global1.e)), select(vec4<u32>(var_0.x, ~16849u, var_0.x, ~41710u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 76483u, 15336u), global1.d), var_2.x))), 9u)];
    let var_4 = var_3.d.xyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b - 559f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.a, 155f)), _wgslsmith_f_op_f32(round(var_3.c.x))))), _wgslsmith_add_u32(~reverseBits(var_0.x), func_2(var_2.x, Struct_1(283f, global1.c.x, _wgslsmith_f_op_vec3_f32(min(var_3.c, global1.c)), global1.d, firstTrailingBit(1u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-620f * global1.b))), _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(ceil(-436f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global1.c.x, global0[_wgslsmith_index_u32(global1.d.x, 4u)])) + var_3.a), var_3.b, !select(global0[_wgslsmith_index_u32(4294967295u, 4u)], var_2.x, var_2.x))), select(true, !all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(var_0.x, 4u)])), global1.a <= -927f))), 19145u);
}

