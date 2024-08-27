struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(select(arg_2, arg_0.a, true));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(898f, u_input.a.wwz), Struct_1(_wgslsmith_f_op_f32(-1589f + _wgslsmith_f_op_f32(f32(-1f) * -459f)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), u_input.a.x, 42931i)), 1000f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-997f, -508f)), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), u_input.a.x, u_input.a.x)))), select(select(u_input.a.zxz, u_input.a.xzz, select(!vec3<bool>(arg_1.x, global1.x, false), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), global1.x), !vec3<bool>(true, true, global1.x))), vec3<i32>(1i, -9428i, u_input.a.x << ((u_input.b >> (1u % 32u)) % 32u)), vec3<bool>(false, true, false)));
    global0 = all(select(select(vec4<bool>(!global1.x, var_0.b.x > 9857i, any(global1.zyz), any(vec3<bool>(global1.x, false, global1.x))), !(!vec4<bool>(global1.x, global1.x, true, arg_1.x)), (global1.x & global1.x) | arg_1.x), vec4<bool>(true, _wgslsmith_div_f32(940f, -1000f) > var_0.a, true, arg_1.x), vec4<bool>(!any(vec4<bool>(false, true, arg_1.x, global1.x)), true, true, all(!vec4<bool>(true, true, global1.x, false)))));
    global0 = !(!global1.x);
    global1 = vec4<bool>(true, any(!vec4<bool>(select(true, true, arg_1.x), all(vec3<bool>(arg_1.x, true, arg_1.x)), false && global1.x, all(vec2<bool>(global1.x, arg_1.x)))), true, !global1.x);
    let var_1 = vec3<bool>(true, reverseBits(1u) == arg_0, all(global1.wzw) || !(min(var_0.b.x, var_0.b.x) < u_input.a.x));
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(max(arg_0, u_input.b), _wgslsmith_div_u32(1u, arg_0), 71572u, u_input.b ^ 4294967295u)), vec4<u32>(u_input.b, u_input.b, abs(_wgslsmith_clamp_u32(u_input.b & arg_0, arg_0, u_input.b)), 0u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    global1 = select(select(!(!(!vec4<bool>(global1.x, global1.x, false, global1.x))), select(!vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), -1055f > arg_0.a, global1.x), _wgslsmith_div_f32(arg_0.a, -1699f) < arg_0.a), vec4<bool>(true, global1.x, _wgslsmith_f_op_f32(arg_0.a * arg_0.a) <= -732f, _wgslsmith_f_op_f32(step(-1616f, arg_0.a)) == -1000f)), !vec4<bool>(!any(vec4<bool>(global1.x, true, false, global1.x)), global1.x, global1.x, any(!global1.yz)), !(!select(!vec4<bool>(false, true, true, global1.x), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, true, false, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, false, global1.x, true), global1.x))));
    var var_0 = abs(29259i) ^ arg_0.b.x;
    var var_1 = ~(_wgslsmith_add_vec4_u32(~(vec4<u32>(0u, 1299u, 0u, 88717u) ^ vec4<u32>(5690u, arg_1.x, arg_1.x, 33354u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 55363u, 1u) << (vec4<u32>(69098u, 26166u, u_input.b, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.b, u_input.b, 0u, arg_1.x) << (vec4<u32>(1u, arg_1.x, 0u, u_input.b) % vec4<u32>(32u)))) ^ abs(~_wgslsmith_add_vec4_u32(vec4<u32>(65744u, 0u, 1u, 11530u), vec4<u32>(u_input.b, 1u, 0u, 83489u))));
    var var_2 = 2147483647i;
    var var_3 = arg_0.a;
    return arg_0;
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = true;
    let var_1 = vec3<bool>(false, var_0, var_0);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f) + _wgslsmith_f_op_f32(f32(-1f) * -443f))))), vec3<i32>(23035i, arg_0, u_input.a.x));
    var_2 = func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), reverseBits(vec3<i32>(arg_0 >> (53253u % 32u), 1i, var_2.b.x))), vec3<u32>(1u, select(func_2(u_input.b & 4294967295u, vec3<bool>(false, var_1.x, var_1.x)), func_2(_wgslsmith_mod_u32(u_input.b, u_input.b), vec3<bool>(true, true, true)), var_0), u_input.b), max(_wgslsmith_sub_i32(firstLeadingBit(~arg_0), firstTrailingBit(-u_input.a.x)), -2147483647i), max(-u_input.a.xxx << (vec3<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, 1u), firstTrailingBit(u_input.b)) % vec3<u32>(32u)), vec3<i32>(21564i, u_input.a.x, -arg_0)));
    let var_3 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), vec3<i32>(arg_0 >> (u_input.b % 32u), -15260i, 2147483647i)), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 43114u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b)), countOneBits(vec3<u32>(0u, u_input.b, u_input.b)), var_1.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 12081u, 44456u) << (vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(u_input.b, u_input.b, 40352u), vec3<u32>(1u, u_input.b, u_input.b), var_1)) % vec3<u32>(32u)), u_input.a.x, ~(-vec3<i32>(0i, 1i, 0i))), countOneBits(vec3<u32>(u_input.b, 1u, 11504u) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) | vec3<u32>(abs(0u), 4294967295u, 5441u), _wgslsmith_dot_vec2_i32(vec2<i32>(-30370i, u_input.a.x), vec2<i32>(2147483647i, u_input.a.x)), -max(-vec3<i32>(-7565i, var_2.b.x, u_input.a.x), var_2.b) | ~max(u_input.a.yyx, var_2.b));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + 1390f) + _wgslsmith_f_op_f32(var_2.a * var_3.a)) + -981f))) != _wgslsmith_f_op_f32(f32(-1f) * -441f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(!vec4<bool>(global1.x || false, !any(vec2<bool>(false, true)), all(vec2<bool>(global1.x, false)), func_1(u_input.a.x)), !vec4<bool>(any(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), global1.x)), select(u_input.b < u_input.b, global1.x, all(vec4<bool>(global1.x, true, true, true))), true, global1.x), vec4<bool>(global1.x, true, select(!(u_input.a.x > -670i), !(global1.x & false), max(1i, u_input.a.x) > ~u_input.a.x), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) <= ~4294967295u)));
    var var_0 = func_2(_wgslsmith_add_u32(_wgslsmith_div_u32(~firstLeadingBit(4294967295u), max(u_input.b & 86209u, ~0u)), 1u), select(!global1.zwz, select(global1.ywz, select(vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(true, false, global1.x), !vec3<bool>(false, global1.x, global1.x)), func_1(~2147483647i)), false));
    global1 = vec4<bool>(!global1.x, true, true, all(vec4<bool>(true, global1.x, global1.x, true)) | global1.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1973f))))), func_4(Struct_1(_wgslsmith_f_op_f32(-1f), u_input.a.zyz), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, 1u), vec3<u32>(31281u, 27082u, u_input.b))), -2147483647i, vec3<i32>(16600i, firstTrailingBit(u_input.a.x), abs(firstTrailingBit(u_input.a.x)))).b);
    var var_2 = func_4(func_4(func_4(func_4(func_4(Struct_1(175f, u_input.a.wxz), vec3<u32>(u_input.b, 46827u, u_input.b), -4152i, u_input.a.wwz), _wgslsmith_clamp_vec3_u32(vec3<u32>(54497u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), -32658i, ~u_input.a.wzw), select(vec3<u32>(12136u, u_input.b, 1u), vec3<u32>(6478u, u_input.b, u_input.b), !vec3<bool>(global1.x, false, false)), -2147483647i, var_1.b), vec3<u32>(~(u_input.b << (u_input.b % 32u)), 4294967295u, firstTrailingBit(~u_input.b)), _wgslsmith_add_i32(var_1.b.x >> (4294967295u % 32u), u_input.a.x) >> (_wgslsmith_clamp_u32(~29777u, ~u_input.b, func_2(u_input.b, global1.xwx)) % 32u), vec3<i32>(-33937i, countOneBits(_wgslsmith_clamp_i32(var_1.b.x, -18534i, 0i)), -10433i)), vec3<u32>(1u, u_input.b, reverseBits(53242u)), func_4(func_4(func_4(Struct_1(var_1.a, vec3<i32>(u_input.a.x, u_input.a.x, 11758i)), ~vec3<u32>(u_input.b, 27322u, u_input.b), 0i, ~u_input.a.zyw), ~vec3<u32>(66202u, 51655u, 24781u), u_input.a.x, -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1.b.x), vec3<i32>(15981i, var_1.b.x, var_1.b.x))), abs(~vec3<u32>(48415u, u_input.b, 0u)) & _wgslsmith_div_vec3_u32(select(vec3<u32>(12400u, 4294967295u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u), global1.x), vec3<u32>(u_input.b, u_input.b, 13602u)), u_input.a.x >> (1u % 32u), -(~vec3<i32>(var_1.b.x, var_1.b.x, 1i))).b.x, vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 7793i, -1i) | vec3<i32>(0i, countOneBits(u_input.a.x), i32(-1i) * -43338i));
    var var_3 = ~(~firstTrailingBit(vec2<u32>(0u, 7934u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, var_2.a, 116f, 450f)) - vec4<f32>(171f, _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(trunc(266f)), _wgslsmith_f_op_f32(floor(var_1.a)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_2.a, 421f, 1097f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, 102f, var_2.a, var_2.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.a, var_2.a, var_2.a), vec4<f32>(1230f, -1251f, var_1.a, 297f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1202f, var_2.a, var_1.a, var_1.a) * vec4<f32>(302f, 1000f, var_2.a, 981f)))))));
    var var_5 = select(any(global1.xy), !select(!global1.x, 9047i >= u_input.a.x, false), true) && all(global1.wxz);
    var var_6 = Struct_1(_wgslsmith_f_op_f32(1087f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_2.a)))), -156f, !(global1.x && global1.x)))), _wgslsmith_clamp_vec3_i32(var_2.b, u_input.a.wyw, vec3<i32>(var_1.b.x, -max(u_input.a.x, var_1.b.x), var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, -270f, 478f) * var_4.wxz)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 710f, var_4.x), _wgslsmith_div_vec3_f32(vec3<f32>(-460f, 304f, var_1.a), vec3<f32>(-275f, -1133f, var_2.a)))))), _wgslsmith_f_op_f32(f32(-1f) * -121f));
}

