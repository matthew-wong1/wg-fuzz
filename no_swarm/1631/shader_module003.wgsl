struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: bool = true;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<i32> {
    global0 = firstTrailingBit(~(~firstLeadingBit(u_input.e.x))) > (_wgslsmith_clamp_u32(u_input.e.x, 4294967295u, u_input.e.x) ^ _wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b.x));
    var var_0 = Struct_1(vec4<bool>(11828u >= (firstTrailingBit(0u) >> (4294967295u % 32u)), !any(vec4<bool>(false, true, true, false)), ~(~25535u) >= reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), u_input.d)), true), 1i);
    var var_1 = select(vec4<bool>(all(var_0.a.xx), true, !var_0.a.x, var_0.a.x), vec4<bool>(true, ~(~u_input.a) >= ~min(45040u, u_input.a), true, all(select(var_0.a.wyw, vec3<bool>(false, var_0.a.x, false), true)) & any(vec2<bool>(var_0.a.x, false))), abs(i32(-1i) * -2147483647i) >= _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(var_0.b, _wgslsmith_mult_i32(var_0.b, -4700i))));
    global0 = var_0.a.x;
    let var_2 = true;
    return min(~(~(~(~vec3<i32>(var_0.b, var_0.b, 43143i)))), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.b, var_0.b, -2147483647i), vec3<i32>(var_0.b, var_0.b, -1i))), -(41394i >> (u_input.d.x % 32u)), _wgslsmith_mult_i32(~(-5119i << (u_input.e.x % 32u)), i32(-1i) * -16927i)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(true, arg_0, arg_0, true), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(-4177i, 1i, 1i), ~vec3<i32>(-2147483647i, -23487i, 29914i), all(vec2<bool>(true, arg_0))) | ~(~vec3<i32>(-2147483647i, -9693i, -1i)), func_3()));
    var var_1 = Struct_1(vec4<bool>(!(!any(var_0.a.yw)), true, !any(var_0.a), true), var_0.b);
    var var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(-3743i, ~var_0.b), _wgslsmith_mult_vec2_i32(vec2<i32>(-12901i, _wgslsmith_mod_i32(1i, var_0.b)), ~abs(vec2<i32>(var_1.b, var_0.b))));
    return Struct_1(vec4<bool>(var_1.a.x, var_0.a.x, all(!select(var_1.a, vec4<bool>(arg_0, arg_0, true, var_0.a.x), vec4<bool>(var_1.a.x, false, false, false))), !any(select(var_0.a.yzw, vec3<bool>(var_1.a.x, arg_0, var_0.a.x), false))), -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(arg_1 && false, true, all(arg_0.a.wx) && (-arg_2.x != 40332i), any(!func_2(arg_1, u_input.b.xw).a.zyw)), -arg_0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-507f, -671f, -638f, 2362f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2337f, -1566f, 421f)))), true)))));
    var var_2 = Struct_1(arg_0.a, arg_2.x);
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x));
    return arg_0;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = func_4(func_2(!(!all(vec4<bool>(true, true, false, true))), ~vec2<u32>(u_input.c.x, u_input.a >> (u_input.a % 32u))), all(!vec3<bool>(all(vec2<bool>(true, true)), true, true)), firstTrailingBit(~vec3<i32>(-1i, 11234i, arg_0) | vec3<i32>(arg_0, 17810i, 2147483647i)) << (_wgslsmith_sub_vec3_u32(select(u_input.c.zyy, vec3<u32>(u_input.b.x, u_input.e.x, 1u), true), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.yxy, vec3<u32>(u_input.e.x, 0u, u_input.d.x)), ~u_input.c.xyx)) % vec3<u32>(32u)));
    var var_1 = Struct_1(!vec4<bool>(true, true, var_0.a.x, true), -33087i);
    var var_2 = vec2<i32>(-36895i << (select(1u, ~(~8222u), any(select(var_0.a.wy, var_0.a.zw, true))) % 32u), firstTrailingBit(1i));
    let var_3 = 1f;
    global0 = any(!vec4<bool>(all(vec2<bool>(false, false)), func_2(var_0.a.x, vec2<u32>(15765u, 12903u)).a.x, true, var_1.a.x));
    return vec4<bool>(false, var_1.a.x, var_0.a.x, _wgslsmith_mod_u32(41874u, abs(~0u)) >= max(_wgslsmith_clamp_u32(u_input.a, 18824u, ~u_input.e.x), ~27795u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false))), true), func_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 21199i, 2147483647i), vec4<i32>(1i, 1i, -49977i, 1i))), func_2(_wgslsmith_f_op_f32(select(395f, 2103f, true)) <= _wgslsmith_f_op_f32(-642f - -1111f), firstTrailingBit(~vec2<u32>(u_input.b.x, u_input.a))).a), i32(-1i) * -61885i);
    global0 = false;
    var var_1 = firstLeadingBit(-_wgslsmith_mult_vec3_i32(-(~vec3<i32>(var_0.b, 58650i, var_0.b)), vec3<i32>(~0i, var_0.b, 15265i >> (u_input.a % 32u))));
    var_1 = vec3<i32>(2147483647i, _wgslsmith_sub_i32(i32(-1i) * -max(2147483647i, var_0.b), var_0.b), var_1.x);
    let var_2 = var_1.zz;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(733f + -3021f) - 1000f), 571f, -185f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1563f, -138f, -1018f, 667f) - vec4<f32>(-803f, 140f, -553f, 561f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1675f, -878f, -2348f, -1000f), vec4<f32>(1135f, 242f, 411f, 822f))))))));
    var var_4 = 330f;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

