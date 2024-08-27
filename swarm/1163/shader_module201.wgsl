struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-387f, -1799f, 1413f, 397f, -746f, 1839f, 1602f, 452f, -235f, -970f, -558f, -521f, -1486f, 570f, -2164f, 651f, -930f, 362f, -290f, -1000f, 833f, -1213f, 1000f, 427f, -335f, 958f, -1390f, 761f, 1436f, -174f, -2553f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.a.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f + global0[_wgslsmith_index_u32(arg_0.a.d, 31u)]))))));
    global0 = array<f32, 31>();
    let var_1 = _wgslsmith_dot_vec4_u32(firstTrailingBit(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.a.a, 1u, 35571u), vec4<u32>(arg_1.d, arg_1.a, 10892u, arg_0.a.d), vec4<u32>(arg_0.a.a, 50863u, 44529u, 95370u)))), ~reverseBits(vec4<u32>(1u, arg_0.a.d, ~arg_0.a.d, abs(4294967295u))));
    let var_2 = Struct_2(Struct_1(arg_1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(831f)))), arg_1.c, u_input.a));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, arg_0.a.d, _wgslsmith_mod_u32(arg_1.d, 59261u)), vec4<u32>(~(~(~var_1)), ~(~4294967295u) ^ var_1, ~(~select(arg_0.a.a, 0u, arg_1.c.x)), ~select(abs(4294967295u), abs(0u), arg_0.a.c.x)));
    return var_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    let var_0 = Struct_1(min(0u, abs(func_3(Struct_2(Struct_1(u_input.a, -115f, vec4<bool>(false, true, true, false), arg_1)), Struct_1(1u, 1992f, vec4<bool>(true, false, true, true), 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a & _wgslsmith_clamp_u32(arg_1, 91015u, u_input.d.x), 31u)] * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 31u)])))))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, any(vec2<bool>(false, false)), true), true), arg_1);
    var var_1 = Struct_1(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(arg_0.x, -1417f)), -899f)), arg_0.x))), vec4<bool>(any(select(var_0.c.yw, !var_0.c.yy, any(var_0.c.wx))), ~52686u < u_input.d.x, !(var_0.b >= _wgslsmith_f_op_f32(round(1194f))), u_input.c < (u_input.b.x | _wgslsmith_mod_i32(35588i, 2147483647i))), abs(~37266u));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.c >> (51727u % 32u), -u_input.c), vec2<i32>(-1i, -u_input.b.x)), u_input.b.x ^ reverseBits(~(u_input.b.x >> (var_1.d % 32u))), u_input.c, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, u_input.b.x, 0i) & vec4<i32>(u_input.c, 25227i, u_input.b.x, u_input.c), select(vec4<i32>(-27713i, u_input.c, u_input.c, u_input.c) ^ vec4<i32>(-38549i, u_input.b.x, 42730i, u_input.b.x), ~vec4<i32>(28615i, 27296i, -1i, u_input.c), false))));
    var var_3 = u_input.d;
    var_1 = var_0;
    return _wgslsmith_sub_i32(var_2.x, 2147483647i >> (0u % 32u));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = firstTrailingBit(~abs(vec4<i32>(func_2(vec3<f32>(-1409f, global0[_wgslsmith_index_u32(u_input.d.x, 31u)], -1941f), 0u), reverseBits(-1i), -24504i, 1i)));
    var_0 = reverseBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.x << (46919u % 32u), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-20017i, 20887i, -2147483647i), u_input.b), ~var_0.x), vec4<i32>(0i, arg_0, _wgslsmith_sub_i32(abs(-20047i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 15123i, arg_0, 4644i), vec4<i32>(2147483647i, u_input.c, 3569i, 2147483647i))), u_input.b.x)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(60239u, 31u)])), global0[_wgslsmith_index_u32(~4294967295u, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~93034u, 31u)]))), _wgslsmith_f_op_f32(func_1(_wgslsmith_div_i32(u_input.c, max(2147483647i, 1i))))), vec4<bool>(any(vec4<bool>(true, true, true, true)), select(!(0i == u_input.b.x), false, true), true, true), ~func_3(Struct_2(Struct_1(u_input.a, -404f, vec4<bool>(false, false, true, true), 1u)), Struct_1(u_input.a, _wgslsmith_f_op_f32(529f + -185f), vec4<bool>(false, true, false, true), u_input.d.x)));
    var var_1 = vec3<bool>(true, true, var_0.c.x);
    global0 = array<f32, 31>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1193f);
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(max(firstLeadingBit(u_input.b.xx), min(u_input.b.yx, vec2<i32>(-49155i, -2147483647i))), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, 10936i), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.xx)));
}

