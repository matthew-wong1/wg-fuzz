struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, false, true, true, false, false, false, false, false, true, true, false, false, false, true, true, false, false, false, true);

var<private> global1: Struct_1 = Struct_1(59843u, vec3<f32>(665f, 390f, -754f), false, vec3<u32>(4294967295u, 26507u, 0u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(4294967295u << (u_input.e % 32u), 4294967295u), u_input.e, 1u, ~u_input.e);
    let var_1 = u_input.d.yxx;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f + _wgslsmith_f_op_f32(trunc(-311f))) * _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(exp2(global1.b.x)))) - _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, global1.b.x) + _wgslsmith_f_op_f32(-global1.b.x)))) * _wgslsmith_f_op_f32(-312f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -103f) * _wgslsmith_f_op_f32(max(global1.b.x, -1598f))))));
    global1 = Struct_1(u_input.e, global1.b, select(!(var_1.x <= (-5174i & var_1.x)), global0[_wgslsmith_index_u32(~u_input.e, 20u)], global0[_wgslsmith_index_u32(15652u, 20u)]), (vec3<u32>(1u, var_0.x, u_input.b) >> (abs(vec3<u32>(var_0.x, global1.d.x, 10008u)) % vec3<u32>(32u))) | ~(global1.d << (global1.d % vec3<u32>(32u))));
    let var_3 = var_2;
    return vec3<bool>(true, global0[_wgslsmith_index_u32(74098u, 20u)], !(!global0[_wgslsmith_index_u32(38437u, 20u)] & global0[_wgslsmith_index_u32(global1.d.x, 20u)]) & global1.c);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(min(~u_input.b, firstTrailingBit(11401u)), 1u), firstLeadingBit(_wgslsmith_add_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global1.a), vec2<u32>(44152u, u_input.c.x))))), global1.b, !(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, min(70001u, global1.d.x)), 20u)]), select(u_input.c, u_input.c, !func_3()));
    var var_1 = u_input.c.x;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(185f, _wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(-1214f * global1.b.x), _wgslsmith_f_op_f32(trunc(-1724f)), 1339f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.b.x)), -1930f, var_0.c)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    var var_0 = arg_2.c;
    global1 = arg_2.c;
    var var_1 = abs(1i);
    var var_2 = arg_2;
    global1 = arg_2.c;
    return _wgslsmith_div_vec3_i32(vec3<i32>(~select(~u_input.a, 20831i & arg_1, true), ~reverseBits(-1i << (1u % 32u)), 1i), min(select(u_input.d.zyy, countOneBits(vec3<i32>(u_input.a, 54691i, arg_2.d)), true), u_input.d.yxw) ^ u_input.d.xxy);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_2 {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = vec3<i32>(~(1i ^ ~u_input.a), reverseBits(~arg_0.x), arg_0.x >> (17859u % 32u));
    var var_1 = -max(51947i, arg_0.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))));
    return Struct_2(_wgslsmith_f_op_f32(-var_2.x) <= global1.b.x, 22665i, Struct_1(41321u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(global1.b.x, -231f, global1.c)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -884f)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(global1.b.x - var_2.x)))), (firstLeadingBit(u_input.c.x) << ((u_input.b & u_input.e) % 32u)) < u_input.e, ~firstTrailingBit(vec3<u32>(u_input.c.x, global1.a, 23122u))), -44832i, Struct_1(global1.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, var_2.x, _wgslsmith_f_op_f32(-global1.b.x))), global1.c, vec3<u32>(~18143u, ~u_input.e, ~4294967295u) ^ vec3<u32>(u_input.c.x, 1u, firstTrailingBit(u_input.e))));
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x * global1.b.x) * _wgslsmith_f_op_f32(min(arg_0, 213f)))), -2147483647i, Struct_2(global0[_wgslsmith_index_u32(u_input.b, 20u)], u_input.d.x, Struct_1(select(global1.a, global1.d.x, false), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-844f, arg_0, 1172f))), true, _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, global1.d.x, global1.d.x), global1.d, u_input.c)), 16932i, Struct_1(16986u, vec3<f32>(-234f, -1106f, arg_0), false, countOneBits(u_input.c))), firstLeadingBit(min(75489u, ~1u))), !(!(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(10783u, 20u)]), vec2<bool>(global1.c, true), false))));
    var var_1 = global1.b;
    var var_2 = func_5(select(_wgslsmith_add_vec3_i32(vec3<i32>(-53007i, -20739i, u_input.a) & u_input.d.xxx, (u_input.d.zzx << (vec3<u32>(0u, u_input.e, 1u) % vec3<u32>(32u))) << (var_0.c.d % vec3<u32>(32u))), u_input.d.yyx, !(!func_3())), select(!select(!vec2<bool>(var_0.e.c, true), !vec2<bool>(global1.c, false), all(vec3<bool>(global1.c, true, true))), vec2<bool>(true, true), true));
    let var_3 = Struct_1(18650u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) + _wgslsmith_f_op_f32(var_0.c.b.x - _wgslsmith_f_op_f32(f32(-1f) * -494f))), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.e.b.x)))), false, u_input.c);
    var var_4 = func_4(-2090f, -var_2.b, func_5(u_input.d.yzz, !(!(!vec2<bool>(false, var_3.c)))), ~(~(~select(var_3.a, u_input.c.x, true))));
    return any(!(!vec2<bool>(global1.c | var_3.c, func_5(u_input.d.xzx, vec2<bool>(false, false)).a)));
}

fn func_6(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_i32(u_input.d, u_input.d);
    global0 = array<bool, 20>();
    global1 = Struct_1(arg_1.x, vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b.x)) + -844f), 1000f), all(select(arg_0.yy, vec2<bool>(any(vec4<bool>(true, false, true, true)), u_input.d.x >= var_0.x), arg_0.x)), ~select(firstLeadingBit(~vec3<u32>(arg_1.x, global1.a, 51301u)), vec3<u32>(_wgslsmith_sub_u32(15531u, arg_1.x), 4294967295u ^ arg_1.x, _wgslsmith_dot_vec2_u32(global1.d.zx, global1.d.xx)), vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 20u)], arg_0.x, global1.c)), arg_0.x, global0[_wgslsmith_index_u32(32225u, 20u)])));
    let var_1 = var_0.yy;
    let var_2 = func_5(_wgslsmith_mod_vec3_i32(u_input.d.xzw, var_0.wxy), vec2<bool>(global0[_wgslsmith_index_u32(global1.d.x, 20u)], func_5(_wgslsmith_add_vec3_i32(var_0.wzx ^ vec3<i32>(-16135i, 8221i, var_0.x), var_0.zwx), !arg_0.yz).a)).c;
    return StorageBuffer(_wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.x;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1924f, global1.b.x)) + global1.b);
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_3 = i32(-1i) * -37667i;
    let x = u_input.a;
    s_output = func_6(vec3<bool>(any(vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(global1.d.x, 20u)])), func_1(-1151f), true, true)), !(!(!global1.c)), func_3().x), ~firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a, u_input.e, u_input.c.x), abs(global1.d))), true || global1.c);
}

