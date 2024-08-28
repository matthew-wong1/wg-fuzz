struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true));

var<private> global3: vec4<bool>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(true, false, false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global1 = global2.a;
    let var_0 = arg_1.x;
    global0 = false;
    global1 = vec3<bool>(global4.a.x, global4.a.x, global3.x || global1.x);
    var var_1 = 0i;
    return Struct_1(!global4.a);
}

fn func_3() -> bool {
    global4 = Struct_1(func_1(u_input.d, max(-reverseBits(vec4<i32>(u_input.c, u_input.c, -1i, -2147483647i)), select(vec4<i32>(u_input.c, u_input.d, u_input.d, 1i) | vec4<i32>(u_input.d, 1i, -28749i, u_input.d), vec4<i32>(u_input.c, -1i, -1i, u_input.c), select(vec4<bool>(global1.x, true, false, false), vec4<bool>(false, true, global2.a.x, true), global4.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1923f, _wgslsmith_f_op_f32(abs(1111f)))))).a);
    let var_0 = u_input.a.x;
    let var_1 = (false != (_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-622f)))) != _wgslsmith_f_op_f32(1007f * -1155f))) & all(select(global4.a.xx, select(select(global3.yw, global4.a.xx, global2.a.x), global3.wz, global2.a.zx), vec2<bool>(true && global4.a.x, global1.x)));
    let var_2 = u_input.b.x;
    let var_3 = vec4<u32>(_wgslsmith_mult_u32(1u, 0u), var_2, var_0, _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_2, u_input.a.x), ~(~var_0)), select(u_input.a.x, 4294967295u, false)));
    return true;
}

fn func_2() -> f32 {
    var var_0 = false;
    global3 = !(!select(vec4<bool>(global1.x, global1.x, func_3(), global4.a.x), vec4<bool>(global1.x, false, true, global2.a.x), !vec4<bool>(global2.a.x, global1.x, global4.a.x, true)));
    var var_1 = ~(~u_input.b.x);
    var_0 = true;
    var var_2 = Struct_1(select(select(!global2.a, vec3<bool>(true, true, true), vec3<bool>(true, !global2.a.x, true)), func_1(2147483647i, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c, 4036i, -12645i) | vec4<i32>(0i, -2147483647i, -21366i, u_input.c), vec4<i32>(u_input.c, u_input.d, -11599i, u_input.d) ^ vec4<i32>(u_input.d, 52018i, u_input.c, u_input.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -967f), 1499f))).a, !(!select(vec3<bool>(global3.x, global3.x, false), global4.a, global4.a.x))));
    return -1648f;
}

fn func_4(arg_0: f32, arg_1: f32) -> StorageBuffer {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -147f))) - -1678f), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_1 * arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - 1000f)))))));
    global2 = Struct_1(select(!vec3<bool>(func_1(0i, vec4<i32>(-1i, -1i, u_input.d, 2147483647i), var_0.x).a.x, global3.x, true), !select(select(global2.a, vec3<bool>(false, global4.a.x, global1.x), global4.a), select(vec3<bool>(true, true, global4.a.x), global4.a, global2.a), u_input.a.x > u_input.b.x), true));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(var_0.zx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1757f, var_0.x) - _wgslsmith_div_vec2_f32(vec2<f32>(375f, var_0.x), var_0.xy)))), vec4<u32>(u_input.b.x, 25057u, 40738u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !(!(!vec4<bool>(true, true, true, global3.x)));
    global1 = !global3.zxx;
    global1 = global3.wyz;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-927f + -311f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1469f, -1106f)), -528f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1232f)))));
    var var_1 = func_1(~firstLeadingBit(u_input.d), _wgslsmith_mult_vec4_i32(~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.c, -2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(global4.a.x, global2.a.x, true, global2.a.x)), reverseBits(vec4<i32>(u_input.d, 2147483647i, u_input.d, -2147483647i))), vec4<i32>(~8484i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 3511i, 2147483647i), vec3<i32>(u_input.d, -1i, u_input.d)) | _wgslsmith_mod_i32(-42253i, u_input.d), _wgslsmith_mult_i32(-40272i, u_input.c), _wgslsmith_mod_i32(u_input.c, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, var_0)) * _wgslsmith_f_op_f32(round(-1304f))), var_0)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-802f + -576f)))), _wgslsmith_f_op_f32(func_2()));
}

