struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(372f, -397f, 1173f, 1027f), false, i32(-2147483648), vec3<bool>(true, false, false), true));

var<private> global1: array<i32, 22>;

var<private> global2: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> vec4<f32> {
    global0 = Struct_2(Struct_1(vec4<f32>(-881f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(593f + 1812f) + global2.b), _wgslsmith_f_op_f32(global2.a.a.x * _wgslsmith_f_op_f32(max(1164f, -986f))), _wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(trunc(global2.b)))), arg_0.x, select(_wgslsmith_div_i32(35093i, arg_1.x >> (1u % 32u)), ~(-13524i), true), !(!arg_3.zzy), any(!vec2<bool>(arg_3.x, false)) && any(vec3<bool>(false, false, true))));
    global1 = array<i32, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.a)))), true, _wgslsmith_sub_i32(arg_2, -21238i), select(vec3<bool>(true, any(vec3<bool>(global0.a.d.x, global2.a.d.x, global0.a.e)), ~1u <= ~u_input.c), global0.a.d, select(global2.a.d, select(!arg_3.zyy, vec3<bool>(true, global2.a.d.x, true), global2.a.c != -15948i), select(global2.a.d, select(vec3<bool>(false, true, global2.a.d.x), global0.a.d, global0.a.d), true))), (_wgslsmith_f_op_f32(global2.b * -132f) > _wgslsmith_f_op_f32(1574f * 348f)) & all(!vec4<bool>(false, false, global0.a.b, true)));
    let var_1 = 1000f;
    global0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1209f))), -883f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) - _wgslsmith_f_op_f32(global0.a.a.x - global0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x * global2.b))), select(false, global0.a.d.x, true), -1i, !select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(global2.a.b, arg_3.x, true)), global2.a.d, all(vec4<bool>(false, true, global2.a.d.x, true))), all(arg_3) & !(var_0.c > -2147483647i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - global0.a.a.x) - global2.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + _wgslsmith_f_op_f32(global0.a.a.x + -240f)), _wgslsmith_f_op_f32(var_0.a.x + global2.a.a.x), var_0.a.x))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_2(global2.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(select(!select(vec2<bool>(global0.a.b, true), var_0.a.d.xx, false), vec2<bool>(var_0.a.b, global0.a.e), !global2.a.d.zx), ~abs(firstLeadingBit(vec2<i32>(global0.a.c, -49776i))), 2147483647i, !(!select(vec4<bool>(var_0.a.d.x, var_0.a.d.x, false, global0.a.b), vec4<bool>(var_0.a.b, true, global0.a.b, true), vec4<bool>(true, global2.a.d.x, global0.a.e, global0.a.e))))), false, _wgslsmith_add_i32(-(i32(-1i) * -global0.a.c), global1[_wgslsmith_index_u32(u_input.c, 22u)]), select(global2.a.d, var_0.a.d, select(select(global0.a.d, global0.a.d, global2.a.d), vec3<bool>(u_input.c > 0u, true, any(vec4<bool>(var_0.a.e, global2.a.b, false, global2.a.d.x))), global2.a.d)), !(0u < ~min(95438u, u_input.a.x)));
    let var_2 = ~u_input.b ^ firstTrailingBit(vec3<u32>(u_input.a.x, ~(~u_input.a.x), ~(~u_input.b.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1468f, -462f, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -693f)), 203f, -1000f), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.x - 688f))), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, -1109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))))), var_1.d.x, _wgslsmith_clamp_i32(global0.a.c, var_1.c, var_0.a.c << (1u % 32u)), !select(!vec3<bool>(var_1.d.x, global2.a.d.x, global0.a.d.x), vec3<bool>(true, all(global2.a.d.xz), any(vec2<bool>(var_0.a.e, global2.a.e))), !(var_1.c >= 0i)), any(select(!select(vec4<bool>(var_1.d.x, global0.a.b, var_0.a.d.x, global2.a.b), vec4<bool>(var_0.a.d.x, true, true, var_1.b), vec4<bool>(false, global0.a.e, global2.a.d.x, false)), select(select(vec4<bool>(global0.a.b, false, false, global0.a.b), vec4<bool>(global2.a.e, global0.a.e, false, false), vec4<bool>(false, var_0.a.d.x, var_0.a.d.x, false)), select(vec4<bool>(var_1.e, var_0.a.e, true, true), vec4<bool>(true, global2.a.e, global0.a.d.x, true), vec4<bool>(var_0.a.d.x, false, false, var_0.a.b)), !global0.a.d.x), false)));
    var_0 = Struct_2(global2.a);
    return Struct_2(var_0.a);
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = 1234u;
    var var_1 = global0.a.a.x;
    var var_2 = (~select(vec4<u32>(var_0, u_input.a.x, var_0, var_0), ~vec4<u32>(24005u, 22464u, u_input.c, var_0), !vec4<bool>(false, global2.a.d.x, global2.a.d.x, global0.a.b)) >> (~vec4<u32>(1u, 5271u, min(u_input.a.x, var_0), ~1u) % vec4<u32>(32u))) & (vec4<u32>(select(~9179u, ~0u, global0.a.e), reverseBits(firstTrailingBit(var_0)), var_0, ~u_input.b.x << (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u)) >> (vec4<u32>(countOneBits(~var_0), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a), firstLeadingBit(1u)), firstLeadingBit(u_input.b.x), _wgslsmith_clamp_u32(var_0, var_0, ~70540u)) % vec4<u32>(32u)));
    var var_3 = vec3<i32>(-_wgslsmith_div_i32(~global1[_wgslsmith_index_u32(~var_0, 22u)], _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-8229i, global1[_wgslsmith_index_u32(45794u, 22u)], global0.a.c, global2.a.c)), select(vec4<i32>(global1[_wgslsmith_index_u32(var_0, 22u)], arg_0, -12042i, -27526i), vec4<i32>(global2.a.c, global0.a.c, -9279i, -36075i), false))), select(global0.a.c, global2.a.c, global0.a.e && ((global0.a.b & global0.a.e) || false)), 24738i);
    global0 = func_2(-var_3.x, firstLeadingBit(0i));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.a.a.x)), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(sign(-240f)), 475f)), false, 13420i, !vec3<bool>(34755u <= var_0, false, true), global0.a.e), _wgslsmith_f_op_f32(step(global0.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a.x - global0.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = var_0.e;
    let var_2 = func_1(45385i);
    var var_3 = !vec3<bool>(var_0.e, !global2.a.d.x, !global0.a.e);
    var_3 = var_0.d;
    let var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(select(vec2<bool>(true, true), var_2.a.d.yx, true), ~vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global2.a.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.c, 28708i, global0.a.c), vec3<i32>(-1i, global0.a.c, -73748i)), !vec4<bool>(true, global0.a.e, global0.a.d.x, true))).x, _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-985f * var_2.a.a.x), var_4.x)), global0.a.a.x, -1082f)), 311f, _wgslsmith_mult_u32(abs(1u) << (abs(_wgslsmith_mult_u32(u_input.a.x, 1u)) % 32u), reverseBits(7994u)), ~vec4<i32>(_wgslsmith_div_i32(0i | global0.a.c, select(global0.a.c, var_0.c, false)), _wgslsmith_div_i32(-57203i, -67684i), var_0.c & global1[_wgslsmith_index_u32(1u, 22u)], abs(~26423i)));
}

