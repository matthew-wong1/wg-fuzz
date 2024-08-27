struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> bool {
    let var_0 = vec3<f32>(-1410f, arg_1.b.b, -490f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_f_op_f32(arg_1.b.b * arg_1.b.b))), 1468f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2048f * arg_1.b.b) + _wgslsmith_f_op_f32(max(arg_1.b.b, var_0.x))) - -171f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -633f))))));
    var var_2 = ~arg_1.a;
    var var_3 = Struct_1(min(arg_1.b.a, ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), arg_1.b.a.yz), _wgslsmith_div_u32(102786u, arg_1.b.a.x), arg_1.b.a.x)), _wgslsmith_f_op_f32(trunc(var_1)), arg_0 && (arg_1.c.x != arg_1.b.c), true);
    let var_4 = true;
    return true;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_1((vec4<u32>(1u, arg_0, 1u, ~arg_0) & ~vec4<u32>(arg_0, arg_0, arg_0, arg_0)) ^ (vec4<u32>(1u, ~1u, ~4294967295u, arg_0) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 1u)), 46626u, ~arg_0, countOneBits(0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3)) - _wgslsmith_f_op_f32(-arg_3)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(303f)) - _wgslsmith_f_op_f32(round(2640f))))), !(!func_3(arg_1 == true, Struct_2(vec2<i32>(1053i, -2147483647i), Struct_1(vec4<u32>(arg_0, 60388u, 4294967295u, arg_0), -137f, arg_1, true), vec3<bool>(false, arg_1, true)), u_input.a)), true);
    let var_1 = any(vec3<bool>(var_0.c, false, false && any(vec4<bool>(arg_1, arg_1, var_0.c, arg_1))));
    let var_2 = var_0;
    var var_3 = 1i;
    var var_4 = var_0;
    return Struct_2((vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a)) & ~(~vec2<i32>(10070i, arg_2)), var_2, vec3<bool>(any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(var_1, true, true), var_0.d)) != false, var_1 & (!var_4.c || all(vec3<bool>(true, false, var_0.c))), false));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = 9213u;
    let var_1 = arg_2.b;
    let var_2 = func_2(arg_0.a.x, arg_2.c.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -9490i) & (vec2<i32>(arg_2.a.x, 26615i) & _wgslsmith_add_vec2_i32(arg_2.a, arg_2.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_2.a, vec2<i32>(arg_2.a.x, arg_2.a.x)) | arg_2.a.x, -arg_2.a.x << (reverseBits(1u) % 32u))), _wgslsmith_f_op_f32(-560f - arg_0.b)).b;
    var_0 = var_1.a.x;
    var_0 = ~25232u;
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = any(!func_2(~_wgslsmith_sub_u32(arg_2.b.a.x, 23510u), select(arg_2.c.x || false, any(vec4<bool>(false, arg_1.c, false, arg_1.d)), arg_1.d), ~min(arg_0.a.x, arg_2.a.x), _wgslsmith_f_op_f32(round(arg_2.b.b))).c.zx);
    let var_1 = select(!select(!(!vec4<bool>(true, true, arg_1.c, arg_2.c.x)), !select(vec4<bool>(arg_1.c, arg_0.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(false, false, arg_1.d, arg_2.c.x), false), vec4<bool>(arg_1.d | arg_1.c, arg_2.c.x, 695f < arg_2.b.b, arg_0.b.a.x > arg_2.b.a.x)), select(select(vec4<bool>(true, true, any(vec4<bool>(arg_0.b.c, arg_0.b.c, false, var_0)), false), vec4<bool>(true, any(vec2<bool>(arg_2.b.c, false)), arg_0.b.d, var_0), vec4<bool>(true, arg_2.b.c || arg_1.d, select(arg_2.b.d, var_0, var_0), !arg_0.c.x)), select(!(!vec4<bool>(arg_2.b.c, arg_1.d, arg_0.b.c, arg_2.b.c)), select(!vec4<bool>(var_0, false, arg_0.c.x, true), vec4<bool>(var_0, arg_1.c, false, arg_1.d), any(arg_0.c.zz)), !select(vec4<bool>(true, false, arg_2.b.c, false), vec4<bool>(false, arg_2.b.c, arg_2.c.x, false), arg_0.b.c)), select(false, true, !arg_2.b.c & !var_0)), select(vec4<bool>(!arg_2.b.c, arg_0.b.c | all(arg_2.c.zx), arg_1.d, var_0), vec4<bool>(func_4(arg_0.b, 1f, arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, 666f, 1031f, arg_1.b))).c.x, !func_2(0u, true, 2147483647i, 862f).b.c, true, func_4(arg_0.b, _wgslsmith_f_op_f32(-arg_1.b), Struct_2(arg_0.a, Struct_1(vec4<u32>(arg_2.b.a.x, arg_1.a.x, arg_1.a.x, 73240u), -310f, arg_2.c.x, false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1215f, 1053f, 104f, 1293f))).b.d), vec4<bool>(!arg_2.b.d || all(arg_2.c), true, all(vec4<bool>(true, false, false, arg_1.c)), arg_2.b.d)));
    let var_2 = Struct_2(select(arg_0.a, ~(-vec2<i32>(arg_2.a.x, 20284i)), vec2<bool>(func_3(false, arg_2, 2147483647i) || func_2(arg_1.a.x, false, 22004i, arg_2.b.b).c.x, !arg_2.b.c)), func_4(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -508f), Struct_2(~arg_0.a ^ vec2<i32>(u_input.a, 5183i), arg_2.b, func_4(func_2(1u, false, 2147483647i, -440f).b, 1000f, func_4(arg_2.b, arg_2.b.b, arg_0, vec4<f32>(arg_0.b.b, 1319f, arg_1.b, -607f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, -154f, arg_2.b.b, arg_0.b.b), vec4<f32>(arg_0.b.b, arg_2.b.b, arg_1.b, arg_1.b), false))).c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(898f, 1692f, 118f, arg_0.b.b), vec4<f32>(arg_2.b.b, arg_0.b.b, arg_0.b.b, -655f), var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b, -978f, 1991f, -221f), vec4<f32>(arg_2.b.b, arg_1.b, arg_0.b.b, 503f), arg_1.d)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1762f, -735f, arg_1.b, -1000f)))))).b, func_4(Struct_1(~(~arg_0.b.a), arg_0.b.b, var_1.x, var_1.x), 1166f, func_4(func_4(Struct_1(vec4<u32>(44835u, arg_0.b.a.x, arg_1.a.x, 34316u), arg_2.b.b, arg_0.c.x, arg_1.d), _wgslsmith_f_op_f32(-arg_0.b.b), Struct_2(arg_2.a, Struct_1(vec4<u32>(arg_2.b.a.x, 34408u, arg_1.a.x, 12391u), arg_0.b.b, var_0, true), arg_0.c), vec4<f32>(arg_0.b.b, -963f, 281f, -608f)).b, _wgslsmith_f_op_f32(-arg_0.b.b), func_2(arg_2.b.a.x, true, -arg_0.a.x, _wgslsmith_f_op_f32(-1110f - -479f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, arg_2.b.b, 1990f, 1205f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.b.b, -1026f, arg_0.b.b, -122f), vec4<f32>(1000f, -2727f, arg_1.b, arg_2.b.b), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-616f, arg_2.b.b, arg_1.b, 1115f) - vec4<f32>(677f, 1520f, arg_0.b.b, arg_1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1764f, arg_1.b, 561f, arg_2.b.b), vec4<f32>(336f, -2016f, -441f, 1176f))))))).c);
    return Struct_2(vec2<i32>(-_wgslsmith_sub_i32(28248i, 0i), _wgslsmith_div_i32(var_2.a.x, arg_2.a.x)) >> (~vec2<u32>(~arg_2.b.a.x, arg_2.b.a.x) % vec2<u32>(32u)), arg_2.b, arg_0.c);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.b.a.x >> (4691u % 32u);
    var var_1 = arg_0;
    let var_2 = select(!vec4<bool>(false, any(vec4<bool>(false, true, var_1.b.c, false)) | true, false, arg_0.b.d), select(select(!select(vec4<bool>(true, true, arg_0.b.c, true), vec4<bool>(true, false, arg_0.b.d, var_1.c.x), vec4<bool>(true, arg_0.c.x, var_1.b.c, var_1.b.c)), select(!vec4<bool>(arg_0.c.x, true, false, var_1.c.x), select(vec4<bool>(false, var_1.c.x, true, var_1.b.c), vec4<bool>(arg_0.b.c, var_1.c.x, var_1.b.c, arg_0.c.x), var_1.b.d), var_1.c.x), select(vec4<bool>(var_1.c.x, var_1.b.c, arg_0.b.d, arg_0.c.x), select(vec4<bool>(false, true, arg_0.b.c, true), vec4<bool>(false, true, true, arg_0.c.x), true), !vec4<bool>(var_1.b.c, arg_0.b.d, var_1.b.c, arg_0.b.c))), vec4<bool>(~arg_0.b.a.x <= ~13378u, var_1.b.c, any(!vec4<bool>(var_1.b.d, var_1.b.d, true, var_1.b.c)), !arg_0.b.d), vec4<bool>(!all(var_1.c.zz), !(!var_1.c.x), !var_1.c.x, var_1.b.c && true)), vec4<bool>(!(!(arg_0.a.x < var_1.a.x)), (2147483647i >> (var_1.b.a.x % 32u)) == _wgslsmith_dot_vec2_i32(~vec2<i32>(-55716i, arg_0.a.x), ~vec2<i32>(arg_0.a.x, u_input.a)), any(func_4(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1098f), func_2(var_1.b.a.x, true, 2147483647i, -853f), vec4<f32>(var_1.b.b, -510f, var_1.b.b, var_1.b.b)).c), true));
    var var_3 = var_1.b;
    let var_4 = -countOneBits(~vec4<i32>(~(-8509i), u_input.a, abs(u_input.a), func_4(arg_0.b, arg_0.b.b, arg_0, vec4<f32>(var_1.b.b, var_3.b, var_3.b, -717f)).a.x));
    return arg_0;
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = select(~(~firstTrailingBit(~arg_2.b.a.xwx)), ~max(vec3<u32>(arg_1.b.a.x, arg_3, 0u), ~vec3<u32>(71938u, 4294967295u, arg_3)) ^ arg_2.b.a.yyz, true);
    var var_1 = reverseBits(var_0.x & func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.a.x, 4294967295u, arg_2.b.a.x), vec3<u32>(1u, arg_1.b.a.x, arg_3)), !any(arg_2.c.yz), 60085i, 1f).b.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.b + 508f), 546f, arg_1.b.b, _wgslsmith_f_op_f32(round(arg_2.b.b))) + vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.b * -414f), arg_2.b.b, func_2(1u, arg_1.b.c, arg_1.a.x, arg_2.b.b).b.b, -769f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.b, 212f, 239f, -651f) + vec4<f32>(arg_1.b.b, arg_1.b.b, -1641f, arg_1.b.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1.b.b, -829f, -766f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.b, _wgslsmith_f_op_f32(arg_2.b.b + arg_1.b.b), -945f, 889f)), true)));
    var_1 = abs(arg_3);
    let var_3 = _wgslsmith_add_vec4_i32(-(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(18737i, arg_1.a.x, arg_2.a.x, u_input.a)), -vec4<i32>(0i, 2147483647i, 13770i, u_input.a)) << (~abs(arg_1.b.a) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(0i, u_input.a, arg_1.a.x, 0i)), vec4<i32>(-1i) * -(vec4<i32>(0i, -31092i, 0i, 33257i) | vec4<i32>(-23448i, 41619i, u_input.a, u_input.a)), ~vec4<i32>(1i, i32(-1i) * -2147483647i, 9629i, ~633i)));
    return arg_2;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = func_7(false, func_6(func_5(func_4(arg_2, _wgslsmith_div_f32(1625f, arg_2.b), func_2(0u, arg_2.d, -2147483647i, arg_2.b), vec4<f32>(-1000f, arg_2.b, 1060f, arg_2.b)), arg_2, func_4(func_2(arg_2.a.x, arg_2.d, u_input.a, arg_2.b).b, -1000f, func_4(Struct_1(vec4<u32>(9984u, arg_1, arg_1, arg_1), arg_2.b, false, true), 498f, Struct_2(vec2<i32>(34663i, 0i), arg_2, vec3<bool>(true, true, arg_2.d)), vec4<f32>(arg_2.b, arg_2.b, arg_2.b, -318f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.b, 964f, 1686f, arg_2.b), vec4<f32>(arg_2.b, arg_2.b, 374f, arg_2.b)))))), Struct_2(vec2<i32>(_wgslsmith_sub_i32(0i, u_input.a) | 37761i, -26203i), Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.a.zxw, vec3<u32>(46974u, 83502u, 22069u)), arg_0.x, arg_2.a.x, ~56541u), arg_2.b, all(select(vec4<bool>(arg_2.d, true, arg_2.c, true), vec4<bool>(arg_2.d, false, false, false), false)), false), vec3<bool>(any(!vec3<bool>(arg_2.d, false, arg_2.c)), arg_2.c, true)), ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, arg_2.a.x, _wgslsmith_add_u32(arg_2.a.x, 26927u)), 0u));
    var var_1 = true;
    let var_2 = arg_2.a ^ vec4<u32>(1u, ~var_0.b.a.x ^ 17264u, 1u, var_0.b.a.x);
    var var_3 = (~vec4<i32>(max(u_input.a, var_0.a.x), firstLeadingBit(2147483647i), select(25497i, u_input.a, true), var_0.a.x) | -min(_wgslsmith_add_vec4_i32(vec4<i32>(52612i, u_input.a, var_0.a.x, 24363i), vec4<i32>(-2147483647i, var_0.a.x, u_input.a, var_0.a.x)), ~vec4<i32>(0i, -54i, var_0.a.x, u_input.a))) | _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, 54233i, 61406i), vec4<i32>(-36997i, 55324i, var_0.a.x, var_0.a.x)) | (vec4<i32>(u_input.a, -41058i, -11980i, var_0.a.x) >> (var_0.b.a % vec4<u32>(32u)))), _wgslsmith_sub_vec4_i32(-vec4<i32>(20271i, u_input.a, u_input.a, -21372i), vec4<i32>(var_0.a.x, var_0.a.x, -19958i, 27372i) >> (var_2 % vec4<u32>(32u))) >> (arg_2.a % vec4<u32>(32u)));
    var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x | abs(-20866i), _wgslsmith_add_i32(0i, 0i ^ (2871i | u_input.a)), -27348i, -max(10876i << (arg_1 % 32u), _wgslsmith_div_i32(var_0.a.x, 2432i))), firstTrailingBit(-(~(vec4<i32>(28330i, -16901i, -41147i, u_input.a) & vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, -27585i)))));
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_3.x, var_0.a.x, firstLeadingBit(-var_0.a.x & (var_0.a.x << (9769u % 32u)))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(-max(-(vec3<i32>(u_input.a, u_input.a, u_input.a) & vec3<i32>(0i, u_input.a, 0i)), vec3<i32>(u_input.a, 9038i, _wgslsmith_div_i32(u_input.a, u_input.a))), vec3<i32>(max(func_1(vec3<u32>(4294967295u, 1u, 1u), 1u, Struct_1(vec4<u32>(53619u, 41998u, 1u, 1u), 798f, true, false)) & _wgslsmith_mod_i32(43343i, -19120i), u_input.a), u_input.a, ~(-1i)), true);
    var var_1 = Struct_1(~func_5(func_6(func_2(1u, true, 0i, 240f)), Struct_1(vec4<u32>(1u, 87147u, 130652u, 0u), 613f, true, func_4(Struct_1(vec4<u32>(111488u, 1u, 80894u, 18228u), 2608f, true, true), -572f, Struct_2(vec2<i32>(u_input.a, -1i), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), -1002f, true, false), vec3<bool>(true, false, false)), vec4<f32>(-108f, 597f, 1047f, -345f)).b.c), Struct_2(vec2<i32>(-25664i, 20467i), Struct_1(vec4<u32>(20855u, 49951u, 44328u, 7112u), 2379f, true, true), vec3<bool>(true, true, false))).b.a, 1154f, !(_wgslsmith_f_op_f32(round(-224f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-463f - 165f)))), !(true | any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    let var_2 = Struct_2(var_0.zy, Struct_1(var_1.a, func_5(func_5(func_2(96342u, false, var_0.x, -1261f), func_5(Struct_2(vec2<i32>(6968i, u_input.a), Struct_1(var_1.a, var_1.b, true, var_1.d), vec3<bool>(var_1.d, var_1.c, var_1.c)), Struct_1(vec4<u32>(11617u, var_1.a.x, 16646u, 0u), var_1.b, var_1.d, false), Struct_2(vec2<i32>(-1i, -1i), Struct_1(var_1.a, -1345f, true, var_1.c), vec3<bool>(false, var_1.c, var_1.d))).b, func_7(false, Struct_2(vec2<i32>(-1i, u_input.a), Struct_1(var_1.a, var_1.b, false, true), vec3<bool>(var_1.d, true, false)), Struct_2(vec2<i32>(u_input.a, 1i), Struct_1(var_1.a, 603f, var_1.d, var_1.c), vec3<bool>(false, true, true)), var_1.a.x)), func_4(Struct_1(vec4<u32>(var_1.a.x, var_1.a.x, 1u, var_1.a.x), -642f, var_1.c, var_1.c), _wgslsmith_f_op_f32(round(-1325f)), func_5(Struct_2(vec2<i32>(1876i, u_input.a), Struct_1(var_1.a, var_1.b, var_1.c, var_1.d), vec3<bool>(var_1.c, var_1.d, var_1.d)), Struct_1(var_1.a, var_1.b, var_1.d, false), Struct_2(vec2<i32>(-25900i, u_input.a), Struct_1(var_1.a, 860f, var_1.d, var_1.d), vec3<bool>(var_1.c, var_1.c, var_1.c))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-237f, -399f, var_1.b, 1303f), vec4<f32>(622f, 3108f, 1511f, var_1.b), vec4<bool>(var_1.d, false, var_1.c, false)))).b, Struct_2(_wgslsmith_clamp_vec2_i32(var_0.zz, var_0.xx, var_0.zy), Struct_1(vec4<u32>(18073u, 30734u, 1u, var_1.a.x), var_1.b, var_1.c, var_1.d), select(vec3<bool>(false, var_1.c, false), vec3<bool>(var_1.c, true, true), vec3<bool>(false, var_1.d, false)))).b.b, var_1.d, !func_6(Struct_2(var_0.yz, Struct_1(vec4<u32>(1u, var_1.a.x, 0u, var_1.a.x), -375f, var_1.c, false), vec3<bool>(false, var_1.d, var_1.d))).c.x), func_6(func_2(326u, false, _wgslsmith_div_i32(var_0.x, ~var_0.x), _wgslsmith_f_op_f32(step(var_1.b, -947f)))).c);
    let var_3 = Struct_2(vec2<i32>(var_2.a.x, func_4(func_4(Struct_1(var_2.b.a, var_1.b, false, var_1.c), _wgslsmith_f_op_f32(max(1536f, 1330f)), Struct_2(var_0.xx, Struct_1(var_2.b.a, var_2.b.b, var_1.c, false), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-196f, -1324f, -643f, var_1.b)))).b, -1404f, Struct_2(min(vec2<i32>(-1i, var_0.x), var_0.yz), var_2.b, var_2.c), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.b, var_1.b, -369f, -395f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-233f, var_1.b, var_1.b, var_2.b.b), vec4<f32>(var_2.b.b, var_2.b.b, var_1.b, 335f))))).a.x), var_2.b, !vec3<bool>(var_2.b.d, var_2.b.d, false));
    var_1 = Struct_1(var_1.a, func_6(func_6(Struct_2(~var_2.a, func_4(var_3.b, 1344f, Struct_2(var_2.a, var_2.b, vec3<bool>(false, false, true)), vec4<f32>(var_3.b.b, var_2.b.b, 145f, var_1.b)).b, var_3.c))).b.b, var_3.b.b >= var_2.b.b, func_4(var_2.b, _wgslsmith_f_op_f32(step(func_6(Struct_2(vec2<i32>(var_2.a.x, 1i), var_3.b, var_2.c)).b.b, 656f)), var_3, vec4<f32>(var_2.b.b, _wgslsmith_f_op_f32(-691f * var_1.b), _wgslsmith_f_op_f32(var_2.b.b + _wgslsmith_f_op_f32(592f - 551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b))))).c.x);
    var_1 = func_4(Struct_1(var_1.a, -356f, var_1.c, var_1.c), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_1.b))))))), Struct_2(var_2.a, var_2.b, var_2.c), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.b, var_1.b, 556f, var_2.b.b), vec4<f32>(var_3.b.b, -432f, var_2.b.b, 670f)))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_3.b.b, 115f, -756f, var_2.b.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(646f, var_2.b.b, -1000f, var_3.b.b))) + vec4<f32>(-450f, -879f, -171f, -1032f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1493f, var_3.b.b, 302f, var_3.b.b)))))).b;
    var_1 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_6(var_3), var_3.b, Struct_2(vec2<i32>(_wgslsmith_clamp_i32(1134i, var_0.x, u_input.a), var_3.a.x), func_4(var_3.b, var_1.b, Struct_2(vec2<i32>(-38548i, var_3.a.x), var_3.b, var_3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-928f, var_2.b.b, -1354f, -450f) - vec4<f32>(var_2.b.b, var_2.b.b, var_2.b.b, 878f))).b, var_2.c)).a.x);
}

