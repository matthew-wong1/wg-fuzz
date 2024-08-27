struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 8>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    let var_0 = Struct_3(select(select(global0.b.xz, vec2<bool>(true, u_input.b.x > 4294967295u), arg_1.d.x), vec2<bool>(!global0.b.x, !(!global0.b.x)), (global0.b.x || (u_input.e != 0i)) || true), arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.b.c, _wgslsmith_f_op_f32(arg_1.e.x - arg_0.d.e.x), global0.b.x)))))), arg_1, 1000f);
    global0 = Struct_2(global0.a, vec4<bool>(false, global1[_wgslsmith_index_u32(abs(select(_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.a.x), abs(u_input.a.x), any(vec4<bool>(arg_1.b, true, global1[_wgslsmith_index_u32(6953u, 8u)], false)))), 8u)], arg_1.d.x, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c - global0.c.x), 1000f) * _wgslsmith_f_op_vec2_f32(global0.c * var_0.b.e.zy))));
    let var_1 = !var_0.b.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - 1000f)))), arg_0.b.c);
    let var_3 = var_0.b;
    return !(true | var_1.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>) -> vec2<bool> {
    global0 = Struct_2(i32(-1i) * -1i, select(vec4<bool>(!(global0.b.x || false), !global0.b.x, true, false), !(!global0.b), !select(vec4<bool>(true, global0.b.x, false, true), vec4<bool>(true, global0.b.x, global1[_wgslsmith_index_u32(18295u, 8u)], true), select(global0.b, vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x), global1[_wgslsmith_index_u32(0u, 8u)]))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(419f, global0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.c - vec2<f32>(global0.c.x, global0.c.x))))))));
    global0 = Struct_2(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.c >> (arg_1.x % 32u), min(u_input.d, 25116i))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, u_input.d) << (firstLeadingBit(u_input.a.yz) % vec2<u32>(32u)), ~reverseBits(vec2<i32>(1i, 0i)))), !global0.b, vec2<f32>(_wgslsmith_f_op_f32(step(-494f, _wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(global0.c.x - global0.c.x)))), _wgslsmith_f_op_f32(step(125f, _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_0 = Struct_2(_wgslsmith_mult_i32(u_input.d, global0.a), select(global0.b, select(vec4<bool>(global0.b.x || global0.b.x, global1[_wgslsmith_index_u32(~35523u, 8u)], 65980u >= u_input.a.x, global0.b.x), global0.b, func_3(Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global0.b.x), Struct_1(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(1u, 8u)]), arg_0.x, global0.c.x, global0.b.zwx, vec4<f32>(global0.c.x, 130f, global0.c.x, 624f)), -1000f, Struct_1(global0.b, false, global0.c.x, vec3<bool>(true, true, false), vec4<f32>(1000f, global0.c.x, global0.c.x, global0.c.x)), global0.c.x), Struct_1(global0.b, arg_0.x, -827f, global0.b.wxx, vec4<f32>(1085f, global0.c.x, 308f, -1329f)))), global0.b.x), global0.c);
    let var_1 = global0.a;
    let var_2 = _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.zx), _wgslsmith_mod_u32(0u, arg_1.x)));
    return var_0.b.wx;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(select(vec2<bool>(!all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), !global1[_wgslsmith_index_u32(27210u, 8u)]), func_2(vec2<bool>(true, global1[_wgslsmith_index_u32(51237u, 8u)]), ~vec3<u32>(11760u, 46805u, u_input.a.x)), true), Struct_1(vec4<bool>(true, global0.b.x, _wgslsmith_f_op_f32(trunc(1000f)) > global0.c.x, _wgslsmith_clamp_i32(3349i, -55157i, -1i) != -1616i), !global1[_wgslsmith_index_u32(~u_input.a.x, 8u)], global0.c.x, global0.b.yyx, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - global0.c.x), -597f, 279f, global0.c.x)), 528f, Struct_1(vec4<bool>(any(global0.b.yxy), all(vec4<bool>(false, true, false, true)), !global0.b.x, select(!global1[_wgslsmith_index_u32(u_input.b.x, 8u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 8u)])), global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -177f) * 935f), select(global0.b.xzx, global0.b.wyz, global0.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, global0.c.x, 974f, _wgslsmith_f_op_f32(floor(global0.c.x))))), 798f);
    let var_1 = -3232i;
    global0 = Struct_2(~u_input.d, global0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.c.x))))))));
    let var_2 = _wgslsmith_f_op_f32(global0.c.x + 640f);
    var var_3 = Struct_3(global0.b.zz, Struct_1(global0.b, all(global0.b.yzz), var_0.c, vec3<bool>(true && global0.b.x, !func_2(global0.b.wx, vec3<u32>(u_input.b.x, 34896u, u_input.b.x)).x, all(!vec4<bool>(true, true, global0.b.x, global0.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-476f, var_0.b.e.x, var_0.c, 2052f), _wgslsmith_f_op_vec4_f32(-var_0.d.e))) - var_0.b.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.c.x)))) - -174f)), var_0.d, -255f);
    return Struct_2(global0.a, vec4<bool>(true, _wgslsmith_f_op_f32(min(var_2, _wgslsmith_f_op_f32(trunc(1785f)))) <= -379f, any(global0.b.zwz), !var_3.a.x), var_0.d.e.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(85819u, ~(~60367u)), ~vec2<u32>(u_input.b.x, u_input.a.x));
    var var_1 = Struct_3(!global0.b.wz, Struct_1(select(func_1().b, select(vec4<bool>(false, false, global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 8u)]), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(var_0.x, 8u)]), true), !all(global0.b.yx)), false, -379f, vec3<bool>(all(func_2(global0.b.wy, vec3<u32>(12511u, 4294967295u, var_0.x))), !(global1[_wgslsmith_index_u32(var_0.x, 8u)] | true), _wgslsmith_f_op_f32(sign(global0.c.x)) != _wgslsmith_div_f32(global0.c.x, global0.c.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(759f, 1000f, -695f, global0.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(273f, -1929f, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1222f, 380f, global0.c.x, 1000f))))))), -572f, Struct_1(global0.b, select(all(vec2<bool>(true, true)), !global0.b.x, true), _wgslsmith_f_op_f32(abs(757f)), vec3<bool>(global0.b.x, func_1().b.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-644f, global0.c.x, -1781f, _wgslsmith_f_op_f32(-1432f - 223f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.x))));
    global0 = func_1();
    var_1 = Struct_3(!global0.b.wx, Struct_1(var_1.d.a, func_1().b.x, -2633f, global0.b.xxz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.d.e, _wgslsmith_div_vec4_f32(var_1.b.e, vec4<f32>(1000f, -124f, -538f, -1161f)), !var_1.b.a)))), global0.c.x, var_1.b, global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-vec3<i32>(-1i, u_input.d, 7918i)) ^ firstLeadingBit(vec3<i32>(global0.a, u_input.e, -32776i))), u_input.a.yz & max(u_input.b.xw, select(var_0, vec2<u32>(1u, 70761u), true)));
}

