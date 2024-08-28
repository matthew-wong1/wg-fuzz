struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = 0i;
    var_0 = -u_input.a.x >> (reverseBits(0u) % 32u);
    var_0 = i32(-1i) * -2147483647i;
    var_0 = ~2147483647i;
    var_0 = select(u_input.a.x, 1i, true);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2.wzy)));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.xwx), vec2<u32>(13659u, 0u), vec4<f32>(-955f, _wgslsmith_f_op_f32(-779f + -744f), _wgslsmith_f_op_f32(504f - 1226f), -473f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-170f, 1867f, -799f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(453f, -234f, -1563f)))), !(!vec3<bool>(arg_1.x, arg_1.x, false)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, -254f, -985f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1478f, 1022f, 540f))))));
    var var_1 = Struct_1(!arg_1.zxx);
    let var_2 = Struct_1(vec3<bool>(!arg_1.x, true, select(any(!arg_1), any(arg_1) | arg_1.x, any(vec2<bool>(true, false)) & true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-118f + _wgslsmith_f_op_f32(trunc(-1017f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.x, 1000f)), var_0.x))), !(!(!var_1.a.x)))) * -2894f);
    var var_4 = Struct_1(var_2.a);
    return 570f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32) -> i32 {
    let var_0 = Struct_1(select(vec3<bool>(false, arg_1, true), vec3<bool>(false, true, true), !(!vec3<bool>(false, false, arg_1))));
    var var_1 = ~vec3<u32>(u_input.b.x, _wgslsmith_mult_u32(abs(u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(u_input.b.x, 18891u, 0u, 4294967295u), vec4<u32>(54888u, 0u, 26611u, 5347u))), u_input.b.x);
    var_1 = countOneBits(~abs(vec3<u32>(~var_1.x, ~24383u, 0u & var_1.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(199f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -446f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(var_0, vec2<u32>(1u, 48995u), vec4<f32>(arg_0, -789f, 577f, 104f))).x))))));
    let var_3 = vec3<u32>(var_1.x, 45628u, 1u | _wgslsmith_dot_vec2_u32(countOneBits(u_input.b), select(_wgslsmith_mult_vec2_u32(var_1.zz, vec2<u32>(u_input.b.x, var_1.x)), vec2<u32>(var_1.x, u_input.b.x), select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, false), vec2<bool>(arg_1, true)))));
    return abs(-2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 63857i == _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(18089i, 0i), u_input.a.xx, true) & firstLeadingBit(arg_3.yy), abs(vec2<i32>(2147483647i, -2147483647i))));
    var var_1 = Struct_1(vec3<bool>(1u != _wgslsmith_add_u32(0u, firstTrailingBit(u_input.b.x)), !arg_1, any(vec3<bool>(!arg_1, true, false | arg_2.a.x))));
    let var_2 = arg_3.zx;
    var_0 = true;
    let var_3 = vec2<i32>(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(arg_0.a.x, vec4<bool>(arg_1, arg_1, true, arg_2.a.x), 0u)), _wgslsmith_f_op_f32(-115f + -1055f))), false, countOneBits(14337i)) & 1i, abs(~abs(7221i)));
    return arg_2;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = select(vec2<u32>(u_input.b.x, ~max(41223u, u_input.b.x)) >> (u_input.b % vec2<u32>(32u)), u_input.b, arg_0.x);
    var var_1 = func_1(Struct_1(!vec3<bool>(!arg_1.a.x, arg_1.a.x, arg_3.a.x)), arg_1.a.x, func_1(func_1(arg_3, !(393f != arg_2), Struct_1(arg_1.a), u_input.a), any(vec4<bool>(1u != var_0.x, true, any(vec2<bool>(arg_0.x, false)), true)), Struct_1(arg_1.a), u_input.a >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 0u, var_0.x), select(vec3<u32>(var_0.x, 7946u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x), arg_3.a.x)) % vec3<u32>(32u))), select(u_input.a, reverseBits(u_input.a), select(select(!arg_1.a, arg_3.a, func_1(arg_1, true, Struct_1(arg_1.a), vec3<i32>(u_input.a.x, 53923i, -49534i)).a), func_1(arg_1, any(vec4<bool>(arg_1.a.x, arg_3.a.x, false, false)), func_1(arg_1, arg_1.a.x, arg_1, u_input.a), ~u_input.a).a, vec3<bool>(arg_2 > -622f, false, any(vec4<bool>(arg_3.a.x, false, arg_1.a.x, arg_3.a.x))))));
    var var_2 = u_input.a << (vec3<u32>(_wgslsmith_clamp_u32(110393u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(100333u, 33389u)), vec2<u32>(var_0.x, 0u)), var_0.x | ~u_input.b.x), ~_wgslsmith_clamp_u32(2071u, var_0.x, u_input.b.x) & _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0, vec2<u32>(u_input.b.x, 79710u)), min(vec2<u32>(u_input.b.x, 6824u), vec2<u32>(u_input.b.x, var_0.x))), u_input.b.x ^ _wgslsmith_clamp_u32(1u, u_input.b.x, ~u_input.b.x)) % vec3<u32>(32u));
    var var_3 = u_input.b;
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(123f - arg_2));
}

fn func_6(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_1 {
    var var_0 = ~vec3<u32>(_wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_mod_u32(0u, arg_3)), u_input.b.x, _wgslsmith_dot_vec2_u32(countOneBits(u_input.b), u_input.b)) | ((firstLeadingBit(arg_0) & vec3<u32>(u_input.b.x ^ 1u, ~arg_0.x, countOneBits(0u))) | ~(~vec3<u32>(29590u, arg_3, arg_3)));
    var var_1 = vec2<bool>(false | any(vec2<bool>(arg_0.x > arg_0.x, u_input.a.x < u_input.a.x)), !func_1(func_1(Struct_1(vec3<bool>(true, true, false)), false, func_1(Struct_1(vec3<bool>(false, false, true)), true, Struct_1(vec3<bool>(false, false, true)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a), func_1(func_1(Struct_1(vec3<bool>(false, false, false)), true, Struct_1(vec3<bool>(true, true, true)), u_input.a), any(vec2<bool>(true, false)), Struct_1(vec3<bool>(false, false, true)), ~vec3<i32>(-2147483647i, 67621i, 5390i)).a.x, func_1(func_1(Struct_1(vec3<bool>(false, false, false)), true, Struct_1(vec3<bool>(true, true, false)), u_input.a), false, func_1(Struct_1(vec3<bool>(true, true, true)), true, Struct_1(vec3<bool>(false, false, false)), u_input.a), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(-1i, u_input.a.x, 1i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(64153i, u_input.a.x, -83205i), vec3<i32>(u_input.a.x, 26876i, u_input.a.x))).a.x);
    var_1 = select(!select(vec2<bool>(var_1.x, any(vec4<bool>(true, false, var_1.x, true))), select(vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false), false), var_1.x), vec2<bool>(true, true)), !vec2<bool>(var_1.x, all(!vec3<bool>(true, var_1.x, var_1.x))), true);
    var var_2 = abs(~(~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))) << (((~firstTrailingBit(vec4<u32>(var_0.x, 47647u, 12798u, u_input.b.x)) << (vec4<u32>(arg_0.x, reverseBits(0u), var_0.x, arg_0.x) % vec4<u32>(32u))) ^ (reverseBits(abs(vec4<u32>(arg_0.x, 37307u, 69577u, 4294967295u))) ^ abs(select(vec4<u32>(u_input.b.x, 1u, 0u, 101253u), vec4<u32>(var_0.x, var_0.x, arg_3, 3575u), vec4<bool>(var_1.x, true, var_1.x, var_1.x))))) % vec4<u32>(32u));
    var_1 = func_1(Struct_1(!vec3<bool>(arg_2 == arg_1, false, true)), false, func_1(func_1(func_1(func_1(Struct_1(vec3<bool>(false, false, var_1.x)), var_1.x, Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), u_input.a), select(true, var_1.x, var_1.x), func_1(Struct_1(vec3<bool>(var_1.x, true, var_1.x)), var_1.x, Struct_1(vec3<bool>(var_1.x, false, false)), vec3<i32>(u_input.a.x, 0i, -12034i)), u_input.a | u_input.a), func_1(func_1(Struct_1(vec3<bool>(false, var_1.x, var_1.x)), var_1.x, Struct_1(vec3<bool>(true, var_1.x, var_1.x)), u_input.a), var_1.x, func_1(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x, Struct_1(vec3<bool>(var_1.x, true, false)), vec3<i32>(14382i, 2147483647i, u_input.a.x)), ~u_input.a).a.x, Struct_1(vec3<bool>(var_1.x, false, var_1.x)), ~vec3<i32>(-30608i, 2147483647i, u_input.a.x) ^ u_input.a), !(!func_1(Struct_1(vec3<bool>(false, true, var_1.x)), false, Struct_1(vec3<bool>(var_1.x, false, false)), vec3<i32>(u_input.a.x, u_input.a.x, 3178i)).a.x), func_1(Struct_1(!vec3<bool>(true, var_1.x, var_1.x)), !func_1(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), var_1.x, Struct_1(vec3<bool>(var_1.x, var_1.x, false)), vec3<i32>(-1i, u_input.a.x, u_input.a.x)).a.x, func_1(func_1(Struct_1(vec3<bool>(var_1.x, false, var_1.x)), true, Struct_1(vec3<bool>(true, var_1.x, false)), vec3<i32>(u_input.a.x, u_input.a.x, 1i)), true, func_1(Struct_1(vec3<bool>(var_1.x, var_1.x, false)), var_1.x, Struct_1(vec3<bool>(false, var_1.x, var_1.x)), u_input.a), reverseBits(vec3<i32>(-22049i, u_input.a.x, u_input.a.x))), vec3<i32>(reverseBits(-42771i), -1i, u_input.a.x)), -(~abs(vec3<i32>(31883i, -74169i, 0i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(u_input.a.x ^ 0i), u_input.a.x, func_4(506f, true, ~u_input.a.x)), vec3<i32>(-26564i, 0i, u_input.a.x), abs(u_input.a))).a.xy;
    return func_1(func_1(func_1(func_1(Struct_1(vec3<bool>(true, var_1.x, var_1.x)), false, Struct_1(vec3<bool>(var_1.x, false, var_1.x)), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), all(!vec3<bool>(var_1.x, var_1.x, false)), func_1(func_1(Struct_1(vec3<bool>(false, true, true)), false, Struct_1(vec3<bool>(true, var_1.x, var_1.x)), vec3<i32>(1i, -34829i, u_input.a.x)), var_1.x, Struct_1(vec3<bool>(true, false, true)), u_input.a), u_input.a), var_1.x, func_1(func_1(Struct_1(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, func_1(Struct_1(vec3<bool>(true, var_1.x, var_1.x)), true, Struct_1(vec3<bool>(var_1.x, var_1.x, false)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(50821i, u_input.a.x, u_input.a.x)), select(true, false, var_1.x) || true, Struct_1(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, true))), _wgslsmith_mult_vec3_i32(~u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(-9120i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a))), vec3<i32>(u_input.a.x, reverseBits(func_4(arg_2, var_1.x, u_input.a.x)), 2147483647i)), any(select(!(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), !(!vec4<bool>(false, var_1.x, true, true)), vec4<bool>(false, var_1.x | var_1.x, false, var_1.x))), func_1(Struct_1(vec3<bool>(any(vec4<bool>(true, var_1.x, var_1.x, false)), any(vec3<bool>(true, var_1.x, var_1.x)), var_1.x)), true, func_1(func_1(func_1(Struct_1(vec3<bool>(var_1.x, true, var_1.x)), var_1.x, Struct_1(vec3<bool>(false, true, true)), u_input.a), any(vec2<bool>(var_1.x, true)), func_1(Struct_1(vec3<bool>(var_1.x, true, false)), var_1.x, Struct_1(vec3<bool>(false, false, var_1.x)), vec3<i32>(1203i, -16061i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(1i, -1i, -54510i))), true, Struct_1(vec3<bool>(true, true, true)), -vec3<i32>(2147483647i, -2147483647i, u_input.a.x)), _wgslsmith_mult_vec3_i32(u_input.a, u_input.a)), u_input.a);
}

fn func_7(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> Struct_1 {
    return Struct_1(vec3<bool>(false, !(!arg_2.x), arg_0.a.x));
}

fn func_8(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_1(arg_1, func_6(select(vec3<u32>(7813u, u_input.b.x, u_input.b.x), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 25232u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x))), !(!vec3<bool>(arg_1.a.x, arg_1.a.x, true))), _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1.a), u_input.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(652f, arg_0.x, -2014f, arg_0.x), vec4<f32>(246f, 989f, arg_0.x, arg_0.x)) + vec4<f32>(arg_0.x, 140f, -1259f, -169f)))).x, ((4294967295u & u_input.b.x) << (13495u % 32u)) & firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, 4294967295u))).a.x, arg_1, -_wgslsmith_clamp_vec3_i32(abs(reverseBits(u_input.a)), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), i32(-1i) * -24082i, -23484i), u_input.a)).a;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-213f + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1319f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(ceil(-611f))) - _wgslsmith_f_op_f32(arg_0.x - arg_0.x)));
    let var_2 = _wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    let var_3 = func_7(func_7(func_7(Struct_1(arg_1.a), arg_0.x, arg_1.a), _wgslsmith_f_op_f32(func_2(var_0.x, select(!vec4<bool>(true, arg_1.a.x, var_0.x, true), select(vec4<bool>(false, arg_1.a.x, var_0.x, arg_1.a.x), vec4<bool>(false, false, arg_1.a.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, arg_1.a.x), false)), ~var_2 >> (firstTrailingBit(1u) % 32u))), vec3<bool>(!(!arg_1.a.x), false, var_0.x)), 517f, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) == _wgslsmith_f_op_f32(-arg_0.x), !(!(var_0.x | var_0.x)), arg_1.a.x));
    var_1 = 1000f;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec3<u32>(countOneBits(u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.b.x));
    let var_1 = func_8(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(969f, 893f, -1787f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(612f, -1031f, -595f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1012f, 1000f, 1276f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2343f, -1284f, 1000f))))), func_7(func_6(~_wgslsmith_clamp_vec3_u32(vec3<u32>(35976u, 8810u, u_input.b.x), vec3<u32>(u_input.b.x, var_0.x, 94254u), vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1180f), _wgslsmith_f_op_f32(func_5(vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, true)), -577f, func_1(Struct_1(vec3<bool>(false, true, false)), false, Struct_1(vec3<bool>(true, false, false)), u_input.a))), 29052u), 1000f, !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))));
    var_0 = vec3<u32>(~(~(~var_0.x)), u_input.b.x, u_input.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2079f)) - _wgslsmith_f_op_f32(f32(-1f) * -702f)))));
    var var_3 = ~_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i)), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, min(_wgslsmith_mod_u32(~(~var_0.x), u_input.b.x), var_0.x), _wgslsmith_f_op_f32(var_2 + var_2));
}

