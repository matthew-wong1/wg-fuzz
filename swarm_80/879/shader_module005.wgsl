struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_1(firstTrailingBit(28541u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, 958f, 2524f)), vec3<f32>(-2345f, 758f, 137f)))))), reverseBits(-1i), i32(-1i) * -2095i, ~vec3<i32>(1i, u_input.a.x, u_input.a.x << (_wgslsmith_mult_u32(0u, u_input.b.x) % 32u)));
    let var_1 = u_input.a;
    let var_2 = var_0;
    let var_3 = var_2;
    let var_4 = select(vec4<bool>(!all(vec3<bool>(true, true, true)), any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, false), true)), true, !(var_3.a != min(var_2.a, u_input.b.x))), vec4<bool>(false, all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), true, true), vec4<bool>(false, false, any(vec3<bool>(true, true, false)), !(all(vec2<bool>(false, false)) != all(vec3<bool>(false, true, false)))));
    return var_1;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = (371f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))), 1679f, false && (u_input.b.x <= 3133u)))) | false;
    var var_1 = ~_wgslsmith_div_i32(-1i, -arg_1.c);
    let var_2 = arg_1;
    var var_3 = var_2.a;
    let var_4 = Struct_1(countOneBits(~4294967295u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.b.x)), _wgslsmith_f_op_f32(floor(var_2.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1162f, arg_1.b.x), _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x)))), ~0i, reverseBits(-5014i) ^ ~(arg_1.c >> (1u % 32u)), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.d, 42850i, u_input.a.x), func_3())), _wgslsmith_clamp_vec3_i32(var_2.e, -vec3<i32>(arg_0.x, -12811i, 2147483647i), _wgslsmith_div_vec3_i32(firstLeadingBit(arg_0.zyx), arg_0.yyz & u_input.a))));
    return 342f;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = (i32(-1i) * -2147483647i) << (arg_0.a % 32u);
    var var_1 = ~(~(~(~vec2<u32>(22312u, arg_0.a))));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var_1 = min(~u_input.b.xx, u_input.b.zz);
    var_1 = vec2<u32>(var_1.x, var_1.x);
    return Struct_1(~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_0.b, vec3<f32>(-1000f, -1000f, -1792f)), vec3<f32>(-135f, -334f, -1546f))) + arg_0.b), abs(select(arg_0.d, reverseBits(arg_0.d), true)), arg_0.d, max(u_input.a, (u_input.a >> (vec3<u32>(51079u, arg_0.a, 43612u) % vec3<u32>(32u))) << (vec3<u32>(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, 0u, 0u), vec4<u32>(1u, u_input.b.x, var_1.x, 27909u)), _wgslsmith_sub_u32(4294967295u, u_input.b.x)) % vec3<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = func_4(Struct_1(1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(249f, -1000f, -309f) - vec3<f32>(993f, 295f, 504f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-863f, 1000f, 253f), vec3<f32>(1646f, 1630f, 1298f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1405f, 762f, 163f) + vec3<f32>(-524f, 800f, -193f))), _wgslsmith_f_op_f32(-2022f - 512f) <= _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a.x, arg_0.x, u_input.a.x, arg_0.x), Struct_1(arg_1.x, vec3<f32>(1661f, 967f, -824f), 1i, 1i, arg_3.zyz))))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x << (1u % 32u), -6419i, 2147483647i, 1i), firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_3, arg_0))), ~func_3().x, vec3<i32>(reverseBits(-1i), arg_0.x, _wgslsmith_div_i32(1i, max(27849i, arg_3.x)))), _wgslsmith_f_op_f32(func_2(vec4<i32>(arg_0.x >> (~arg_1.x % 32u), 18322i, ~u_input.a.x, u_input.a.x), Struct_1(15507u, vec3<f32>(1f, 1f, 1f), u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, -3377i), min(0i, u_input.a.x), -arg_0.x), ~firstTrailingBit(arg_3.yxw)))));
    var_0 = func_4(Struct_1(44985u, vec3<f32>(-1000f, 661f, var_0.b.x), var_0.c, -(~_wgslsmith_sub_i32(arg_3.x, arg_0.x)), arg_3.ywz), _wgslsmith_f_op_f32(func_2(abs(reverseBits(_wgslsmith_div_vec4_i32(arg_3, arg_0))), Struct_1(4294967295u, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(348f + 381f)), 43357i, _wgslsmith_div_i32(max(arg_0.x, var_0.d), ~56696i), func_3()))));
    var_0 = func_4(Struct_1(~(~func_4(Struct_1(u_input.b.x, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.e.x, 0i, vec3<i32>(36299i, -1i, arg_3.x)), var_0.b.x).a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(267f, var_0.b.x, var_0.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.b, var_0.b, true)) - var_0.b)), -12082i, _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, 82i), var_0.e.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(0i), min(u_input.a.x, var_0.e.x), -45352i), arg_0.yxy, var_0.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-272f + var_0.b.x))));
    var_0 = Struct_1(firstTrailingBit(arg_1.x | firstLeadingBit(var_0.a)) >> (_wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_mult_u32(func_4(Struct_1(var_0.a, vec3<f32>(-1286f, 155f, 692f), u_input.a.x, 0i, var_0.e), 580f).a, var_0.a), ~19136u) % 32u), _wgslsmith_f_op_vec3_f32(-var_0.b), ~_wgslsmith_mod_i32(abs(-2147483647i), ~var_0.e.x), max(-1i >> (_wgslsmith_mod_u32(abs(1u), _wgslsmith_mod_u32(var_0.a, u_input.b.x)) % 32u), u_input.a.x), vec3<i32>(1i, arg_3.x, var_0.d));
    var var_1 = func_4(Struct_1(countOneBits(abs(0u)), vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(-var_0.b.x)), 994f, _wgslsmith_f_op_f32(abs(-1921f))), 2147483647i, var_0.d, arg_0.xww), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x))), _wgslsmith_f_op_f32(-var_0.b.x))));
    return vec2<u32>(arg_1.x, abs(_wgslsmith_mult_u32(11309u, ~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(var_1.a, var_0.a, var_1.a, 1u)))));
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>) -> f32 {
    let var_0 = vec4<f32>(-1384f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -549f)), _wgslsmith_f_op_f32(f32(-1f) * -1486f), -268f);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(arg_2.x, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(arg_2.x, 4294967295u, arg_2.x))), firstTrailingBit(u_input.b ^ u_input.b)) | ~(arg_1 << (~u_input.b.x % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 228f, var_0.x)))), vec3<f32>(1373f, var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(-var_0.xzx)), -8679i, u_input.a.x, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x | 27347i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 4316i, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), -9281i), func_3().x | _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.yz), u_input.a.x >> (1u % 32u)), ~_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, 1i), -2147483647i)));
    let var_2 = var_1.b.x;
    var var_3 = Struct_1(min(firstTrailingBit(var_1.a >> (arg_1 % 32u)), arg_2.x) << (~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_2, arg_2), ~0u) % 32u), vec3<f32>(_wgslsmith_f_op_f32(round(251f)), var_0.x, -1100f), _wgslsmith_clamp_i32(firstLeadingBit(-var_1.e.x) ^ ~2147483647i, var_1.d, abs(firstLeadingBit(countOneBits(-1i)))), min(-34269i, _wgslsmith_clamp_i32(var_1.d, -var_1.c >> (~4294967295u % 32u), 0i)), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, var_1.e.x), var_1.c), -70801i, abs(-13318i)));
    var var_4 = func_4(Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(func_4(func_4(Struct_1(arg_1, var_0.xzy, var_1.d, -5119i, vec3<i32>(0i, var_3.e.x, u_input.a.x)), var_1.b.x), var_0.x).b + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_3.b.x)))), u_input.a.x | reverseBits(_wgslsmith_add_i32(var_1.d, -1i)), var_1.e.x, -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, var_1.c, var_3.d)), select(vec3<i32>(var_1.e.x, -2147483647i, var_1.e.x), var_1.e, arg_0.x))), var_1.b.x);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(847f, 1188f) * _wgslsmith_f_op_f32(-1000f + 2268f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (select(vec4<i32>(-69635i, ~1i, 0i, u_input.a.x | u_input.a.x), ~vec4<i32>(u_input.a.x, u_input.a.x, 1i, 1i), vec4<bool>(true, true, true, true)) >> (firstTrailingBit(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) & vec4<u32>(32788u, 101880u, 49598u, u_input.b.x)) % vec4<u32>(32u))) | ~abs(~(-vec4<i32>(u_input.a.x, -2147483647i, -1i, 39913i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_5(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), 27734u, ~func_1(var_0, vec4<u32>(33355u, 0u, 1u, u_input.b.x), vec2<bool>(false, true), var_0)))), func_4(func_4(Struct_1(func_1(var_0, vec4<u32>(120582u, u_input.b.x, 4514u, 30557u), vec2<bool>(true, true), vec4<i32>(-34140i, 1i, -2147483647i, -23617i)).x, vec3<f32>(-943f, 674f, 1085f), -u_input.a.x, u_input.a.x, select(vec3<i32>(-28469i, u_input.a.x, var_0.x), u_input.a, false)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1485f))))), func_4(Struct_1(~u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1129f, -2023f, -688f)), var_0.x, 11033i, _wgslsmith_mult_vec3_i32(var_0.zyy, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -258f))).b.x).b.xx));
    let var_2 = false != all(select(vec3<bool>(true, true, -2147483647i <= u_input.a.x), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.a.x != u_input.a.x, true)));
    let var_3 = func_4(func_4(func_4(Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, var_1.x, -1270f)), abs(-22961i), 0i, vec3<i32>(var_0.x, var_0.x, -45030i)), func_4(func_4(Struct_1(62886u, vec3<f32>(var_1.x, var_1.x, var_1.x), -1i, u_input.a.x, u_input.a), var_1.x), 275f).b.x), _wgslsmith_f_op_f32(-var_1.x)), -340f).d;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -350f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_1.x, var_1.x) + vec3<f32>(var_1.x, var_1.x, var_1.x))), false))));
    var var_5 = select(var_2 || true, var_2, countOneBits(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 7709u), u_input.b.xx), 22580u)) != u_input.b.x);
    let var_6 = func_4(func_4(Struct_1(_wgslsmith_add_u32(20879u >> (1u % 32u), _wgslsmith_mod_u32(31093u, u_input.b.x)), var_4, 2147483647i, -(~(-2147483647i)), max(~vec3<i32>(var_0.x, -1299i, 1i), vec3<i32>(var_3, var_3, var_3))), _wgslsmith_f_op_f32(-var_4.x)), -958f);
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~29059u, u_input.b.x << (var_6.a % 32u), !var_2) << (_wgslsmith_div_u32(var_7.a, 0u) % 32u), 0u, vec2<i32>(_wgslsmith_div_i32(2147483647i, _wgslsmith_mod_i32(var_7.c, -1i)) & ~var_6.d, 48451i >> ((~u_input.b.x ^ (1u | var_6.a)) % 32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_6.a, func_4(var_6, 1366f).a), vec2<u32>(var_7.a, 59635u)), _wgslsmith_div_vec2_f32(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1007f, -354f) + vec2<f32>(_wgslsmith_f_op_f32(var_1.x - var_7.b.x), func_4(Struct_1(57532u, vec3<f32>(-603f, var_4.x, var_7.b.x), 2147483647i, var_0.x, u_input.a), 1326f).b.x))));
}

