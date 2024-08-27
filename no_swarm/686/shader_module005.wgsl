struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(false, -184f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = -21619i;
    let var_1 = select(max(min(abs(vec2<i32>(2444i, u_input.c)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c))), _wgslsmith_div_vec2_i32(select(vec2<i32>(-6751i, -1i), vec2<i32>(u_input.c, 2147483647i), global1.a), vec2<i32>(-2147483647i, 42595i))) & _wgslsmith_mult_vec2_i32(~vec2<i32>(55376i, 16479i), vec2<i32>(-57888i ^ u_input.c, ~(-1i))), firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-14605i, -14976i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 13165i), vec2<i32>(u_input.c, u_input.c)))) & reverseBits(abs(vec2<i32>(-1i, u_input.c)) | abs(vec2<i32>(56692i, -2147483647i))), select(select(0u >= ~u_input.a, global0.a, true), true, any(select(!vec2<bool>(global0.a, false), vec2<bool>(global0.a, false), true))));
    let var_2 = select(~select(vec2<u32>(u_input.b, u_input.a) | select(vec2<u32>(4294967295u, u_input.b), vec2<u32>(0u, u_input.b), global1.a), (vec2<u32>(2739u, 28904u) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), select(vec2<bool>(false, global0.a), vec2<bool>(global1.a, false), vec2<bool>(false, global1.a))), firstTrailingBit(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 44931u), vec2<u32>(u_input.a, u_input.b)))), vec2<bool>(global0.a, all(select(!vec2<bool>(global0.a, true), select(vec2<bool>(true, global0.a), vec2<bool>(global1.a, true), global0.a), global0.a))));
    var_0 = 1i ^ var_1.x;
    var var_3 = !select(select(vec2<bool>(all(vec4<bool>(true, global0.a, false, false)), global0.a), vec2<bool>(true, true), !(!vec2<bool>(global1.a, true))), !vec2<bool>(global0.a, all(vec2<bool>(global0.a, false))), true);
    return _wgslsmith_f_op_f32(abs(global1.b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_2(arg_0.a, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b - arg_1.b))))), Struct_1(any(select(!arg_0.a.zz, vec2<bool>(global0.a, arg_1.a), arg_0.a.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(634f, 285f, global1.a && global0.a)))), ~abs(_wgslsmith_div_u32(~0u, 1u)));
    global0 = var_0.d;
    let var_1 = arg_0;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - 1f)))), arg_0.b.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(165f, -2224f, global1.b))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-936f, 572f, -1000f))))))));
    return var_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    global1 = Struct_1(arg_1.b.a || arg_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)))));
    return Struct_2(!arg_1.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * _wgslsmith_f_op_f32(trunc(1842f))))), ~(~u_input.b));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = func_4(Struct_2(arg_0.a, arg_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global0.b)))), func_2(func_4(func_4(Struct_2(vec3<bool>(true, false, true), arg_0.b, global1.b, Struct_1(global1.a, arg_0.c), u_input.a), arg_0, global1.b), func_4(Struct_2(vec3<bool>(arg_0.a.x, global0.a, false), arg_0.b, -1000f, Struct_1(global1.a, -1217f), 59494u), arg_0, 2190f), -1431f), Struct_1(arg_0.b.a, global0.b), -select(vec4<i32>(2147483647i, u_input.c, 46816i, 12612i), vec4<i32>(u_input.c, u_input.c, -61357i, 2147483647i), vec4<bool>(false, true, false, false))), u_input.a), Struct_2(func_4(Struct_2(select(arg_0.a, vec3<bool>(false, false, global1.a), true), Struct_1(true, -354f), global0.b, arg_0.d, ~arg_0.e), Struct_2(arg_0.a, func_2(Struct_2(vec3<bool>(true, arg_0.d.a, global1.a), Struct_1(global1.a, 1048f), global1.b, arg_0.d, 4294967295u), arg_0.b, vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_f32(global0.b * -1509f), Struct_1(true, 1605f), ~0u), _wgslsmith_f_op_f32(global0.b * arg_0.b.b)).a, Struct_1(true != global0.a, arg_0.c), 128f, Struct_1(any(select(arg_0.a.yy, vec2<bool>(arg_0.a.x, arg_0.b.a), vec2<bool>(arg_0.d.a, global1.a))), -787f), _wgslsmith_mult_u32(u_input.a, u_input.a)), global0.b).d;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1388f));
    var var_1 = abs(firstLeadingBit(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, u_input.b)) >> ((arg_0.e >> ((u_input.b ^ arg_0.e) % 32u)) % 32u)));
    global1 = Struct_1(true && global1.a, _wgslsmith_f_op_f32(727f - func_4(arg_0, arg_0, global1.b).c));
    var var_2 = global1.a;
    return arg_0.d;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> bool {
    global1 = arg_2;
    var var_0 = Struct_2(!select(select(!vec3<bool>(arg_2.a, global0.a, global1.a), select(vec3<bool>(global1.a, global0.a, true), vec3<bool>(false, false, arg_2.a), vec3<bool>(arg_2.a, false, true)), !vec3<bool>(true, global1.a, true)), !vec3<bool>(true, global1.a, global0.a), vec3<bool>(true, global0.b >= -1369f, -399f > arg_2.b)), func_5(func_4(Struct_2(!vec3<bool>(arg_2.a, true, global1.a), func_2(Struct_2(vec3<bool>(false, false, false), Struct_1(arg_3, 882f), 1162f, Struct_1(true, global0.b), 0u), arg_2, vec4<i32>(arg_0, u_input.c, arg_0, arg_0)), global1.b, func_2(Struct_2(vec3<bool>(false, false, true), arg_2, 674f, Struct_1(false, global0.b), 4294967295u), Struct_1(true, -491f), vec4<i32>(arg_0, -15621i, -1i, -2147483647i)), ~arg_1.x), Struct_2(vec3<bool>(true, true, true), arg_2, _wgslsmith_f_op_f32(func_3()), arg_2, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * arg_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b))), Struct_1(false, global0.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_1.x, arg_1.x & u_input.a), max((82507u << (arg_1.x % 32u)) << ((1u ^ arg_1.x) % 32u), _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, arg_1.x), arg_1.x))));
    global0 = Struct_1(true, global1.b);
    global0 = func_2(Struct_2(select(!select(var_0.a, var_0.a, vec3<bool>(true, arg_2.a, var_0.b.a)), func_4(func_4(Struct_2(vec3<bool>(true, false, global0.a), Struct_1(false, -2374f), arg_2.b, var_0.d, u_input.a), Struct_2(var_0.a, Struct_1(false, 1906f), arg_2.b, Struct_1(arg_3, arg_2.b), arg_1.x), global0.b), Struct_2(var_0.a, Struct_1(arg_2.a, var_0.b.b), 531f, Struct_1(global1.a, arg_2.b), var_0.e), _wgslsmith_div_f32(-145f, global0.b)).a, select(!vec3<bool>(global0.a, true, var_0.d.a), vec3<bool>(arg_3, true, false), var_0.a)), Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, -1512f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, 1754f) + _wgslsmith_f_op_f32(-1217f + arg_2.b))), var_0.b, _wgslsmith_div_u32(firstLeadingBit(51535u), var_0.e)), func_2(func_4(func_4(Struct_2(var_0.a, arg_2, -2062f, arg_2, 0u), func_4(Struct_2(var_0.a, Struct_1(global1.a, global0.b), var_0.c, Struct_1(var_0.b.a, var_0.b.b), arg_1.x), Struct_2(var_0.a, Struct_1(global1.a, -339f), global1.b, var_0.d, u_input.a), global0.b), func_2(Struct_2(vec3<bool>(true, global0.a, global1.a), arg_2, 872f, arg_2, 4294967295u), arg_2, vec4<i32>(2147483647i, -2147483647i, u_input.c, 1i)).b), func_4(func_4(Struct_2(var_0.a, var_0.d, 1000f, Struct_1(global0.a, global1.b), 1u), Struct_2(var_0.a, Struct_1(true, 307f), global0.b, Struct_1(arg_3, -363f), 15670u), global0.b), func_4(Struct_2(var_0.a, arg_2, 1536f, Struct_1(false, -476f), arg_1.x), Struct_2(var_0.a, arg_2, -800f, Struct_1(arg_2.a, 1000f), var_0.e), arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1242f)), func_5(Struct_2(vec3<bool>(arg_3, false, false), arg_2, -208f, var_0.d, arg_1.x)).b), Struct_1(arg_3, _wgslsmith_f_op_f32(step(-375f, -121f))), -select(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.c), vec4<i32>(-2147483647i, -878i, u_input.c, 1i)), ~vec4<i32>(-2147483647i, 2147483647i, u_input.c, 0i), !vec4<bool>(global1.a, global1.a, global0.a, global0.a))), vec4<i32>(abs(u_input.c ^ -3624i), -2147483647i, arg_0, arg_0));
    global1 = func_2(func_4(Struct_2(select(vec3<bool>(false, true, arg_2.a), !var_0.a, var_0.a), arg_2, _wgslsmith_f_op_f32(-var_0.b.b), arg_2, 4294967295u), func_4(func_4(func_4(Struct_2(vec3<bool>(true, false, arg_2.a), var_0.d, arg_2.b, arg_2, 4294967295u), Struct_2(var_0.a, arg_2, -339f, Struct_1(arg_3, -389f), arg_1.x), -1000f), func_4(Struct_2(var_0.a, Struct_1(var_0.d.a, arg_2.b), var_0.b.b, Struct_1(var_0.d.a, global0.b), 35553u), Struct_2(var_0.a, Struct_1(global0.a, global1.b), 652f, Struct_1(false, global1.b), 4294967295u), -341f), _wgslsmith_f_op_f32(select(global0.b, 204f, global1.a))), Struct_2(func_4(Struct_2(var_0.a, Struct_1(true, global1.b), 903f, arg_2, arg_1.x), Struct_2(var_0.a, var_0.b, var_0.c, var_0.d, 7064u), 1426f).a, func_2(Struct_2(vec3<bool>(true, var_0.d.a, true), Struct_1(var_0.b.a, arg_2.b), -241f, arg_2, 64033u), var_0.d, vec4<i32>(arg_0, arg_0, arg_0, u_input.c)), _wgslsmith_div_f32(arg_2.b, arg_2.b), Struct_1(true, -1155f), 1u), -1915f), _wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1031f - arg_2.b) + _wgslsmith_f_op_f32(var_0.b.b - global1.b))))), func_2(func_4(Struct_2(func_4(Struct_2(vec3<bool>(global0.a, global1.a, true), arg_2, 368f, Struct_1(false, global0.b), arg_1.x), Struct_2(vec3<bool>(false, true, true), Struct_1(arg_3, -1542f), global1.b, arg_2, 0u), arg_2.b).a, func_2(Struct_2(vec3<bool>(arg_2.a, var_0.a.x, false), var_0.b, var_0.b.b, var_0.b, 0u), arg_2, vec4<i32>(38627i, -1i, arg_0, u_input.c)), func_4(Struct_2(var_0.a, Struct_1(var_0.b.a, 2081f), -720f, Struct_1(true, var_0.b.b), 62164u), Struct_2(vec3<bool>(arg_3, true, true), var_0.d, 638f, var_0.b, u_input.a), 1219f).c, func_5(Struct_2(vec3<bool>(false, var_0.b.a, true), var_0.b, arg_2.b, var_0.d, 4294967295u)), abs(arg_1.x)), func_4(Struct_2(vec3<bool>(true, true, global1.a), Struct_1(false, 1835f), 560f, var_0.d, 0u), Struct_2(var_0.a, var_0.d, var_0.d.b, var_0.d, u_input.a), 944f), -2303f), func_5(Struct_2(select(vec3<bool>(global1.a, false, global1.a), var_0.a, true), Struct_1(true, arg_2.b), global1.b, Struct_1(true, global0.b), 1u)), countOneBits(vec4<i32>(0i, ~38465i, _wgslsmith_mult_i32(-2147483647i, u_input.c), 1i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(arg_0, u_input.c, arg_0, arg_0)), -abs(vec4<i32>(2147483647i, 3257i, arg_0, 9117i) | vec4<i32>(0i, 1i, u_input.c, 22014i))));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global1.b, global1.b)))), func_1(u_input.c, reverseBits(vec3<u32>(u_input.a, u_input.b, 1u)), Struct_1(global1.a, global1.b), global0.a | global1.a)))));
    global1 = func_4(func_4(func_4(func_4(Struct_2(vec3<bool>(global0.a, true, global0.a), Struct_1(global1.a, global0.b), -1764f, Struct_1(global1.a, 291f), u_input.a), func_4(Struct_2(vec3<bool>(true, true, global0.a), Struct_1(true, 1660f), global0.b, Struct_1(true, 1000f), u_input.a), Struct_2(vec3<bool>(global0.a, global1.a, true), Struct_1(true, -448f), global1.b, Struct_1(global0.a, global0.b), 25627u), global0.b), -328f), func_4(func_4(Struct_2(vec3<bool>(true, global0.a, false), Struct_1(true, -466f), global1.b, Struct_1(false, global0.b), 0u), Struct_2(vec3<bool>(false, global0.a, false), Struct_1(false, global0.b), 208f, Struct_1(global0.a, global1.b), 15113u), global0.b), Struct_2(vec3<bool>(true, false, global1.a), Struct_1(global1.a, global0.b), -352f, Struct_1(false, global0.b), 23035u), _wgslsmith_f_op_f32(func_3())), 1071f), func_4(func_4(Struct_2(vec3<bool>(true, true, global0.a), Struct_1(global1.a, -466f), global1.b, Struct_1(true, global1.b), u_input.a), func_4(Struct_2(vec3<bool>(global1.a, false, global0.a), Struct_1(global1.a, global0.b), global1.b, Struct_1(false, global0.b), 1u), Struct_2(vec3<bool>(global1.a, global1.a, true), Struct_1(global1.a, global0.b), global0.b, Struct_1(global1.a, global1.b), u_input.b), 1603f), -311f), Struct_2(!vec3<bool>(true, global0.a, true), func_5(Struct_2(vec3<bool>(false, global0.a, global1.a), Struct_1(false, 808f), -345f, Struct_1(global1.a, -320f), u_input.a)), global1.b, func_2(Struct_2(vec3<bool>(false, global0.a, global0.a), Struct_1(false, global1.b), -773f, Struct_1(true, global1.b), 0u), Struct_1(true, 843f), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c)), ~u_input.a), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1379f))) * _wgslsmith_f_op_f32(step(global0.b, global1.b)))), func_4(func_4(Struct_2(vec3<bool>(global1.a, global0.a, true), func_5(Struct_2(vec3<bool>(false, global1.a, global1.a), Struct_1(true, global1.b), global1.b, Struct_1(global0.a, global0.b), u_input.b)), -687f, Struct_1(global1.a, global1.b), ~4294967295u), func_4(Struct_2(vec3<bool>(true, global0.a, global1.a), Struct_1(global1.a, 728f), global0.b, Struct_1(false, global0.b), 21594u), func_4(Struct_2(vec3<bool>(false, global0.a, global1.a), Struct_1(true, global1.b), global0.b, Struct_1(global0.a, 1022f), u_input.a), Struct_2(vec3<bool>(global1.a, false, false), Struct_1(true, -1295f), -541f, Struct_1(global1.a, global0.b), 21953u), global0.b), _wgslsmith_f_op_f32(-global0.b)), -614f), Struct_2(!func_4(Struct_2(vec3<bool>(true, global0.a, true), Struct_1(global0.a, global1.b), 1016f, Struct_1(true, -1566f), 1u), Struct_2(vec3<bool>(global1.a, true, global0.a), Struct_1(global1.a, global0.b), -107f, Struct_1(false, -1318f), 0u), global0.b).a, func_4(func_4(Struct_2(vec3<bool>(false, global0.a, global1.a), Struct_1(true, 591f), global0.b, Struct_1(global1.a, global1.b), u_input.a), Struct_2(vec3<bool>(false, global0.a, false), Struct_1(global1.a, global0.b), global0.b, Struct_1(false, global0.b), 44381u), global1.b), func_4(Struct_2(vec3<bool>(false, false, false), Struct_1(global1.a, global0.b), -1319f, Struct_1(true, global1.b), u_input.b), Struct_2(vec3<bool>(global1.a, true, false), Struct_1(true, global1.b), 676f, Struct_1(true, global0.b), u_input.a), 2330f), global1.b).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(892f))), func_5(func_4(Struct_2(vec3<bool>(global1.a, false, true), Struct_1(global1.a, 1838f), 1000f, Struct_1(global0.a, 368f), u_input.a), Struct_2(vec3<bool>(true, global0.a, global1.a), Struct_1(global0.a, 974f), global1.b, Struct_1(global0.a, global0.b), 23481u), global1.b)), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a, 37320u), u_input.a >> (u_input.b % 32u), countOneBits(u_input.b))), -500f), _wgslsmith_f_op_f32(step(global0.b, 652f))).b;
    global0 = func_4(Struct_2(!vec3<bool>(global0.a, any(vec3<bool>(true, false, global0.a)), !global0.a), Struct_1(false, global1.b), _wgslsmith_div_f32(global0.b, -1815f), func_5(func_4(Struct_2(vec3<bool>(false, false, false), Struct_1(true, 924f), global0.b, Struct_1(true, global1.b), u_input.a), Struct_2(vec3<bool>(global0.a, true, true), Struct_1(true, -220f), global0.b, Struct_1(false, global1.b), 4294967295u), 1432f)), 1u), func_4(func_4(Struct_2(!vec3<bool>(global1.a, global0.a, true), func_2(Struct_2(vec3<bool>(true, global0.a, global0.a), Struct_1(false, -509f), global1.b, Struct_1(global0.a, global1.b), 121500u), Struct_1(global1.a, 131f), vec4<i32>(u_input.c, -15708i, u_input.c, -54617i)), _wgslsmith_f_op_f32(global0.b + 597f), func_5(Struct_2(vec3<bool>(global1.a, false, true), Struct_1(true, global1.b), 644f, Struct_1(global1.a, 247f), 4294967295u)), u_input.b), Struct_2(!vec3<bool>(global0.a, true, global0.a), func_4(Struct_2(vec3<bool>(false, global0.a, false), Struct_1(global1.a, global0.b), -683f, Struct_1(false, 845f), 34561u), Struct_2(vec3<bool>(global0.a, global1.a, global1.a), Struct_1(global1.a, -803f), global1.b, Struct_1(global1.a, 446f), u_input.b), global1.b).d, 777f, func_5(Struct_2(vec3<bool>(true, global1.a, false), Struct_1(false, global0.b), -1671f, Struct_1(global0.a, global1.b), 16113u)), ~u_input.a), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(max(-702f, 102f)))), Struct_2(!vec3<bool>(global0.a, true, global1.a), func_5(func_4(Struct_2(vec3<bool>(false, global0.a, global1.a), Struct_1(false, global0.b), 1000f, Struct_1(global1.a, 275f), u_input.b), Struct_2(vec3<bool>(global1.a, global1.a, global0.a), Struct_1(true, 1231f), global1.b, Struct_1(global1.a, global0.b), u_input.b), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), func_5(Struct_2(vec3<bool>(global1.a, global1.a, global0.a), Struct_1(true, 382f), -800f, Struct_1(false, -1924f), 663u)), 1u), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -793f))).b;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))));
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1839f - var_0.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))));
    var var_2 = select(select(vec2<bool>(false, func_2(Struct_2(vec3<bool>(global0.a, false, global0.a), Struct_1(true, var_0.x), var_0.x, Struct_1(true, -477f), u_input.a), Struct_1(true, global1.b), vec4<i32>(u_input.c, 9813i, -2147483647i, 0i)).a), vec2<bool>(global1.a, var_1), vec2<bool>(false, select(true, var_1, false & global1.a))), !vec2<bool>(!(u_input.c <= 18613i), func_1(_wgslsmith_add_i32(1i, 21154i), reverseBits(vec3<u32>(41454u, 10039u, 1u)), Struct_1(global1.a, -805f), global0.a)), any(!(!vec3<bool>(false, global1.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-2147483647i, max(-16362i, -2147483647i), _wgslsmith_div_i32(-1i, ~1i)), 1f, vec2<i32>(0i >> (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-42706i, -16266i))) & -(i32(-1i) * -5433i)), firstLeadingBit(1u), _wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(u_input.a, 4294967295u)), 25883u));
}

