struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    global0 = !vec4<bool>(global0.x, _wgslsmith_f_op_f32(arg_0.c.c.x * arg_1) > _wgslsmith_f_op_f32(abs(816f)), true, !(!select(global0.x, true, false)));
    let var_0 = Struct_3(~(~select(_wgslsmith_add_u32(u_input.c.x, arg_2.x), u_input.c.x, arg_1 < 631f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.c.x))), any(global0.zz) && !global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)))), all(vec2<bool>(arg_0.a.x, global0.x | global0.x)))), arg_0, ~vec2<u32>(u_input.c.x, ~(~u_input.c.x)));
    var var_1 = var_0;
    var var_2 = countOneBits(_wgslsmith_div_vec3_i32(arg_0.c.a, abs(var_1.c.c.a & vec3<i32>(u_input.a, 1i, arg_0.c.b))) & arg_0.c.a);
    var var_3 = select(select(vec2<bool>(all(global0.wxy), all(vec3<bool>(true, global0.x, var_1.c.a.x))), select(vec2<bool>(all(vec3<bool>(false, false, var_1.c.a.x)), var_1.c.a.x), select(!vec2<bool>(var_0.c.a.x, true), vec2<bool>(var_0.c.a.x, global0.x), vec2<bool>(false, var_1.c.a.x)), var_1.c.a), _wgslsmith_div_f32(_wgslsmith_div_f32(1949f, var_1.b), var_1.b) > arg_0.b.x), var_1.c.a, var_0.c.a.x);
    return var_1.c.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = vec3<i32>(0i, 0i, 0i);
    global0 = vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-521f - -335f), _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(true, false), vec4<f32>(-100f, -1943f, 266f, 856f), Struct_1(vec3<i32>(-27197i, -15210i, u_input.b), 1i, vec4<f32>(744f, -859f, 432f, 1013f))), -1000f, vec2<u32>(arg_2, 0u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2689f))), (global0.x | global0.x) | global0.x)) > _wgslsmith_f_op_f32(f32(-1f) * -1000f), false, any(select(vec4<bool>(false, false, global0.x != false, all(vec4<bool>(global0.x, false, true, false))), vec4<bool>(true, global0.x & global0.x, any(vec2<bool>(global0.x, true)), any(vec2<bool>(true, global0.x))), select(!vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x))), false);
    let var_1 = vec4<bool>(false, -(firstLeadingBit(var_0.x) << (42907u % 32u)) <= ((u_input.b << (u_input.c.x % 32u)) >> ((_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) << (4294967295u % 32u)) % 32u)), any(vec3<bool>(all(!vec4<bool>(global0.x, true, false, true)), global0.x, true)), all(select(vec4<bool>(true, all(vec4<bool>(false, true, true, global0.x)), false, true || global0.x), vec4<bool>(select(global0.x, global0.x, true), false, false, global0.x), true)));
    let var_2 = vec4<u32>(4294967295u, arg_2 ^ ~(~_wgslsmith_add_u32(1u, 1u)), ~_wgslsmith_dot_vec3_u32(u_input.c & vec3<u32>(u_input.c.x, 27932u, 0u), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, 0u), 1u, ~52259u)), abs(_wgslsmith_clamp_u32(61849u, 4294967295u & _wgslsmith_mod_u32(4294967295u, u_input.c.x), _wgslsmith_clamp_u32(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, 60890u, arg_2), vec4<u32>(16152u, 59515u, arg_0.x, 8887u)), arg_1 >> (u_input.c.x % 32u)))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1037f, _wgslsmith_f_op_f32(1562f + -1070f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-234f, 2297f))))), 989f)), select(!select(var_1.yw, vec2<bool>(global0.x, false), false), select(vec2<bool>(true, true), !select(global0.zy, global0.wx, global0.xy), var_1.zx), true), vec4<bool>(any(!vec3<bool>(global0.x, true, var_1.x)), false, global0.x, all(global0.wxw) & global0.x), Struct_1(vec3<i32>(16749i, u_input.b, -1i), -min(2147483647i, u_input.b), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-579f, 1188f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1036f) * _wgslsmith_f_op_f32(sign(-1162f))), _wgslsmith_f_op_f32(-650f + -459f), -676f)), _wgslsmith_sub_i32(u_input.a, 1i));
    return Struct_1(var_0, var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(var_3.d.c.x, var_3.a), _wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(sign(var_3.d.c.x)), _wgslsmith_f_op_f32(-var_3.a))))));
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = 1u;
    let var_1 = func_2(u_input.c.yz, var_0 >> (_wgslsmith_mod_u32(1u, 1u) % 32u), ~u_input.c.x);
    var var_2 = global0.wy;
    var var_3 = select(vec4<bool>(all(vec4<bool>(var_2.x, global0.x, false, true)) | true, !global0.x, !var_2.x, all(vec4<bool>(true, global0.x, true, var_2.x))), !(!vec4<bool>(true, true, global0.x, all(global0.xxy))), global0.x);
    let var_4 = Struct_2(var_3.wy, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.x), arg_0))), _wgslsmith_f_op_f32(select(arg_0, -1051f, true)), _wgslsmith_div_f32(-762f, arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 639f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1399f)), _wgslsmith_f_op_f32(f32(-1f) * -944f))), !(!global0.x)))), var_1);
    return _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.c.x, 0u), _wgslsmith_sub_u32(~arg_1, 31478u)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 11263u), vec4<u32>(36753u, arg_1, arg_1, 10510u)), ~0u, ~u_input.c.x);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_3(~max(arg_0, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-977f, -795f)) - -242f)))), Struct_2(arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1526f, 197f, 1327f, -358f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, 1714f, -674f, 537f)))), func_2(u_input.c.zy, ~firstLeadingBit(1u), ~_wgslsmith_clamp_u32(arg_0, arg_0, arg_0))), ~vec2<u32>(1u, arg_0));
    let var_1 = _wgslsmith_mult_i32(u_input.b, -var_0.c.c.a.x);
    var var_2 = _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-18415i, u_input.b, -29707i), countOneBits(-var_0.c.c.a), true) ^ (select(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), var_0.c.c.a), func_2(var_0.d, arg_0, arg_0).a, select(global0.wxz, arg_2, arg_2.x)) >> (vec3<u32>(u_input.c.x, ~6446u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_mult_i32(24603i, ~(~u_input.a)), ~reverseBits(2147483647i), -32330i & u_input.b));
    global0 = !(!select(select(vec4<bool>(false, arg_2.x, global0.x, false), !vec4<bool>(arg_1.x, var_0.c.a.x, arg_1.x, global0.x), true), !(!vec4<bool>(global0.x, arg_1.x, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, var_0.c.a.x), !vec4<bool>(true, arg_2.x, arg_1.x, arg_1.x))));
    let var_3 = abs(~44155u);
    return select(vec4<bool>(true, true, true, true), !(!(!select(vec4<bool>(var_0.c.a.x, false, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_2.x, arg_2.x), var_0.c.a.x))), !vec4<bool>(all(select(vec4<bool>(false, var_0.c.a.x, arg_1.x, false), vec4<bool>(false, false, true, arg_1.x), vec4<bool>(var_0.c.a.x, arg_1.x, arg_1.x, false))), false, true && (arg_2.x && arg_1.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_4(func_1(_wgslsmith_f_op_f32(select(-1840f, -432f, global0.x)), ~0u) << (1u % 32u), select(global0.xz, global0.yz, global0.xz), global0.wwx));
    global0 = !(!func_4(u_input.c.x, !vec2<bool>(global0.x, true), !global0.xxy));
    global0 = select(vec4<bool>(true, var_0, true, var_0), !(!(!vec4<bool>(false, global0.x, global0.x, true))), !(!vec4<bool>(true, true, global0.x, var_0)));
    let var_1 = var_0 && (true || select(false, var_0, !all(vec3<bool>(true, var_0, true))));
    let var_2 = _wgslsmith_f_op_f32(1000f * 1569f);
    let var_3 = Struct_4(var_2, select(global0.yz, vec2<bool>(var_0, false), true), !vec4<bool>(true, global0.x, true, false), Struct_1(_wgslsmith_mod_vec3_i32(~vec3<i32>(-12762i, u_input.a, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(2992i, u_input.a, 0i), vec3<i32>(u_input.a, u_input.a, -20885i)) & vec3<i32>(u_input.a, u_input.b, -1i)), u_input.a >> (~32920u % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1441f, var_2, 1125f, -696f) + vec4<f32>(-952f, 673f, -1136f, -1162f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, 402f, var_2, 1552f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(851f, 1000f, var_2, var_2)))))), ~52716i);
    var var_4 = ~(~u_input.c.x);
    var var_5 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.a, var_3.a), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2, var_3.d.c.x), -993f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1325f, var_3.d.c.x)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<f32>(var_3.d.c.x, var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.d.c.x * -280f), -1000f)))), vec3<bool>(false, !var_0 & all(func_4(4294967295u, var_3.c.zw, global0.xxz)), global0.x | (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) >= ~u_input.c.x))));
    global0 = !func_4(_wgslsmith_mult_u32(u_input.c.x, abs(1u) << (1u % 32u)), !vec2<bool>(any(vec4<bool>(global0.x, var_3.c.x, var_3.b.x, true)), true), !vec3<bool>(all(var_3.c), global0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_5.xy)))), vec4<i32>(-(var_3.d.b | -5519i), -var_3.d.a.x, -29956i, var_3.e), var_3.d.a.x, vec4<i32>(~(abs(-2147483647i) & u_input.b), _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(var_3.e, -6116i)), 2147483647i, ~min(u_input.b, var_3.e)), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, var_3.d.a.x, u_input.a, u_input.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b), vec4<i32>(var_3.e, -2147483647i, var_3.e, var_3.d.b)), vec4<i32>(-26928i, 11293i, u_input.b, var_3.e))), 1967i), u_input.c);
}

