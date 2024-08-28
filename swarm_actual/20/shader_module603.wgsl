struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    let var_1 = firstTrailingBit(~(-vec3<i32>(~u_input.b, -64261i, i32(-1i) * -2147483647i)));
    var_0 = true;
    var var_2 = Struct_2(~var_1.x);
    var_2 = Struct_2(u_input.e);
    return Struct_2(1i);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_1(-2147483647i, arg_0.b, arg_0.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1257f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-685f))), _wgslsmith_f_op_f32(step(arg_0.d.x, _wgslsmith_f_op_f32(sign(-113f)))), 267f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_0.d))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x))))) != _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x)), arg_0.d.x));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(341f - 458f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1764f)) - _wgslsmith_div_f32(-409f, 795f)))))), _wgslsmith_f_op_f32(f32(-1f) * -882f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -859f))));
    let var_1 = Struct_1(arg_0.x, vec4<bool>(!((u_input.b ^ -33431i) == select(-2147483647i, -2147483647i, arg_1)), true, !func_2(Struct_1(1i, vec4<bool>(arg_1, arg_1, arg_1, false), arg_1, vec4<f32>(259f, -1275f, -596f, 781f)), countOneBits(41723u)), u_input.e != min(u_input.e, i32(-1i) * -25793i)), arg_1, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2073f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1434f - 1067f) - _wgslsmith_f_op_f32(f32(-1f) * -266f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(885f, -143f) + _wgslsmith_f_op_f32(f32(-1f) * -861f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(352f, 681f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1268f)) + _wgslsmith_f_op_f32(-823f - -459f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x)) + var_1.d.x))) * 1000f);
    var var_2 = Struct_1(1i, !var_1.b, arg_1, _wgslsmith_f_op_vec4_f32(-var_1.d));
    return var_1.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_1(u_input.b, select(arg_0.b, vec4<bool>(arg_0.b.x, !arg_0.c, !(true & arg_0.c), select(arg_0.a > arg_0.a, false, true)), vec4<bool>(false || all(vec4<bool>(arg_0.c, false, arg_0.b.x, false)), !select(arg_0.c, arg_0.c, true), arg_1 >= ~70562u, false)), !(2147483647i == _wgslsmith_clamp_i32(u_input.e & arg_0.a, firstTrailingBit(1i), -u_input.b)), arg_0.d);
    var var_1 = _wgslsmith_add_u32(~(min(14274u, 1u) << (_wgslsmith_dot_vec2_u32(select(u_input.d.wz, u_input.d.xw, arg_0.b.wz), u_input.d.yz) % 32u)), ~(~(~countOneBits(arg_1))));
    let var_2 = vec3<u32>(31053u, ~(~reverseBits(u_input.a & 73076u)), arg_1);
    var var_3 = !vec3<bool>(arg_0.c, arg_0.b.x, !arg_0.c);
    var var_4 = reverseBits(firstTrailingBit(-1i));
    return all(select(select(!arg_0.b.wyz, select(!vec3<bool>(var_3.x, arg_0.c, true), vec3<bool>(true, true, true), var_0.b.x), true), !select(!arg_0.b.xyx, select(var_0.b.xwy, arg_0.b.yww, arg_0.b.wzx), !arg_0.b.ywy), vec3<bool>(all(var_0.b.wz), true, any(select(arg_0.b.yxw, var_0.b.xwy, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-601f, -128f)) * _wgslsmith_f_op_f32(sign(1467f)))))), -643f);
    var var_1 = -(-_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.e, u_input.b, -1i, 50549i), vec4<i32>(-4762i, -5516i, 17586i, -2147483647i)) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, 42586i, u_input.b, -2147483647i), -countOneBits(vec4<i32>(7408i, 45325i, -2147483647i, u_input.b))));
    var var_2 = func_1();
    let var_3 = !select(vec2<bool>(true, ~var_2.a > u_input.b), vec2<bool>(true, any(vec3<bool>(false, true, false))), false == func_2(Struct_1(var_2.a, vec4<bool>(false, false, false, false), true, vec4<f32>(229f, -2694f, 2736f, -751f)), 0u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(700f)) * -395f)));
    let var_4 = Struct_1(u_input.b, select(!select(!vec4<bool>(false, true, true, var_3.x), !vec4<bool>(false, var_3.x, var_3.x, true), func_2(Struct_1(-1i, vec4<bool>(var_3.x, true, true, var_3.x), var_3.x, vec4<f32>(-1090f, 1000f, -248f, -1549f)), u_input.c)), vec4<bool>(0u < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 13434u, u_input.d.x, u_input.c), u_input.d), true, any(vec3<bool>(true, false, var_3.x)) && !var_3.x, true), func_4(Struct_1(~var_1.x, vec4<bool>(var_3.x, var_3.x, true, var_3.x), func_3(vec2<i32>(u_input.b, var_2.a), false, var_2.a, 0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-635f, 479f, -1361f, -1682f) - vec4<f32>(-2345f, 133f, -447f, -388f))), _wgslsmith_dot_vec4_u32(~u_input.d, vec4<u32>(u_input.c, 48286u, 4294967295u, 4294967295u)))), var_3.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -706f)), _wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1495f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(-1075f * -1662f)), _wgslsmith_div_f32(-1499f, _wgslsmith_f_op_f32(-269f + 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(215f)), _wgslsmith_f_op_f32(-1000f - -2988f)))));
    var_2 = func_1();
    let var_5 = Struct_2(~var_1.x << (~u_input.c % 32u));
    var var_6 = !(!(!var_4.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_4.d), abs(~select(vec2<u32>(u_input.c, u_input.d.x), u_input.d.zx, true)) & u_input.d.xw);
}

