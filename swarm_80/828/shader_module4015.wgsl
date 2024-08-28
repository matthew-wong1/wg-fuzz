struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(0i, 8869i, 4224i), vec3<bool>(true, false, false), false);

var<private> global1: vec4<f32> = vec4<f32>(1093f, 545f, -820f, -237f);

var<private> global2: i32 = -52137i;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    global0 = Struct_1(global0.a << (_wgslsmith_mod_vec3_u32(max(arg_0, ~vec3<u32>(u_input.a, 36110u, arg_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 68487u, arg_0.x), vec3<u32>(arg_0.x, 40848u, 9946u))) % vec3<u32>(32u)), global3.xxz, false);
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(~(-global0.a), ~_wgslsmith_div_vec3_i32(global0.a, global0.a)), vec3<i32>(~(i32(-1i) * -1i), 1i, countOneBits(_wgslsmith_div_i32(1i, global0.a.x))), _wgslsmith_mod_vec3_i32(max(~global0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, global0.a.x, 1i), vec3<i32>(global0.a.x, 3860i, -2147483647i))), -(global0.a >> (vec3<u32>(arg_0.x, 31689u, arg_0.x) % vec3<u32>(32u))))), select(!global0.b, global3.yxy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1303f - global1.x))) < _wgslsmith_f_op_f32(round(-432f))), true);
    let var_1 = var_0.b.x;
    let var_2 = abs(select(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(global0.a.yx, var_0.a.zy), vec2<i32>(-15340i, max(global0.a.x, var_0.a.x) << ((u_input.a ^ arg_0.x) % 32u)), !global3.yx));
    let var_3 = vec3<i32>(-25521i, i32(-1i) * -(var_2.x | 0i), var_0.a.x);
    return ~(~(~reverseBits(arg_0) ^ arg_0));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(global0.a | (_wgslsmith_add_vec3_i32(global0.a, abs(global0.a)) >> (select(func_3(vec3<u32>(41393u, 4294967295u, 0u)), vec3<u32>(arg_1, u_input.a, u_input.a), global0.b) % vec3<u32>(32u))), select(select(global0.b, select(select(arg_0.xww, vec3<bool>(arg_0.x, global0.c, global0.b.x), arg_0.wxw), vec3<bool>(false, false, false), !global0.b), true), !(!arg_0.yyx), all(!global0.b)), !(!global3.x));
    var var_1 = global1.xy;
    var var_2 = var_0;
    var var_3 = ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.x, -51599i, 1i, -11156i) << (vec4<u32>(u_input.a, u_input.a, arg_1, arg_1) % vec4<u32>(32u)), vec4<i32>(-1i, var_0.a.x, var_0.a.x, -2147483647i) | vec4<i32>(18828i, -39165i, var_2.a.x, 25169i))) >> (reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_1, 35363u, arg_1, 32777u)), vec4<u32>(u_input.a, u_input.a, 13324u, arg_1)), vec4<u32>(u_input.a, 0u << (arg_1 % 32u), arg_1, u_input.a | arg_1))) % vec4<u32>(32u));
    var var_4 = ~u_input.a;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global0 = func_2(vec4<bool>(true, true, false, false), ~u_input.a << (_wgslsmith_add_u32(u_input.a, 15940u) % 32u));
    global2 = 14735i;
    global3 = select(vec4<bool>(!select(true, any(vec4<bool>(global3.x, global0.b.x, true, global0.b.x)), !global3.x), global3.x | ((u_input.a | u_input.a) >= u_input.a), arg_1.c, true), !select(vec4<bool>(global3.x != arg_0.c, true, !arg_1.b.x, true), select(vec4<bool>(false, global3.x, arg_0.b.x, global3.x), !vec4<bool>(arg_0.c, false, true, global3.x), !vec4<bool>(true, false, false, global0.b.x)), arg_1.c), global3.x);
    var var_0 = ~(~firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(51052u, u_input.a), vec2<u32>(0u, 52248u))));
    var var_1 = !any(!vec4<bool>(!arg_0.b.x, any(global0.b), false, false));
    return arg_1;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = func_4(func_2(!arg_1, 0u), Struct_1(vec3<i32>(_wgslsmith_add_i32(global0.a.x, arg_2.a.x), arg_2.a.x, ~2147483647i), !(!vec3<bool>(global0.b.x, arg_2.c, false)), false && any(vec3<bool>(global3.x, false, global3.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))) + _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(global1.x + 338f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 1463f))))));
    global0 = Struct_1(global0.a, select(!vec3<bool>(!var_0.c, arg_1.x & arg_1.x, true), var_0.b, false), any(arg_1) || false);
    global2 = -2147483647i;
    global2 = global0.a.x;
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 2671f, -173f, global1.x)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.x)))), -1041f, _wgslsmith_f_op_f32(f32(-1f) * -1625f)), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -1154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1354f)), _wgslsmith_f_op_f32(f32(-1f) * -1134f)), !(!select(vec4<bool>(false, true, true, true), arg_1, arg_1)))), arg_2.b.x));
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(43571u, _wgslsmith_clamp_u32(~u_input.a, ~u_input.a, u_input.a)) ^ (u_input.a << (18050u % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, u_input.a), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u), var_0.b.yz)) | _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.a, 1u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 42748u), vec2<u32>(0u, u_input.a) << (vec2<u32>(53646u, u_input.a) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(61669u, u_input.a), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(1u, u_input.a) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), select(vec2<u32>(47525u, u_input.a), vec2<u32>(u_input.a, 4294967295u), global3.wz)))));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: u32) -> vec4<f32> {
    global3 = select(select(select(vec4<bool>(global3.x, global3.x, false, arg_2 <= arg_2), select(select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(global3.x, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, global3.x, true, false), !vec4<bool>(false, true, arg_1, true)), !(arg_1 & arg_1)), select(select(!vec4<bool>(global3.x, global3.x, true, false), select(vec4<bool>(true, global3.x, false, arg_1), vec4<bool>(false, false, global3.x, true), global0.c), global3.x), !vec4<bool>(true, global0.c, arg_1, global0.b.x), vec4<bool>(false, arg_1, false, global1.x > global1.x)), select(select(select(vec4<bool>(global3.x, false, true, true), vec4<bool>(global3.x, global0.b.x, false, false), vec4<bool>(true, global0.b.x, false, true)), select(vec4<bool>(false, global3.x, global3.x, arg_1), vec4<bool>(true, true, true, true), vec4<bool>(global0.b.x, global0.c, true, true)), select(vec4<bool>(false, false, global3.x, true), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, global0.b.x, false, false))), vec4<bool>(global0.b.x, arg_2 < arg_2, true, true), select(vec4<bool>(false, true, true, false), select(vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(arg_1, true, true, false), arg_1), !vec4<bool>(arg_1, true, global3.x, global0.b.x)))), !(!vec4<bool>(global0.a.x >= 23485i, any(vec3<bool>(arg_1, global0.b.x, false)), true, global0.c)), all(vec3<bool>(true, !func_4(Struct_1(global0.a, global3.ywy, true), Struct_1(global0.a, global0.b, true), global1.x).b.x, (u_input.a << (967u % 32u)) <= arg_2)));
    let var_0 = Struct_1(global0.a, select(func_4(func_2(select(vec4<bool>(false, false, global3.x, false), vec4<bool>(false, false, global3.x, global0.c), vec4<bool>(global0.b.x, true, global3.x, arg_1)), 17343u), func_2(!vec4<bool>(global3.x, false, global0.c, true), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, false)) - global1.x)).b, vec3<bool>(global3.x, any(vec3<bool>(true, global0.c, false)), global0.c), !select(!vec3<bool>(false, global3.x, false), func_2(vec4<bool>(global3.x, global0.b.x, arg_1, true), arg_2).b, true)), (arg_1 || any(func_4(Struct_1(global0.a, vec3<bool>(true, global0.c, arg_1), arg_1), Struct_1(global0.a, vec3<bool>(global0.c, true, global0.c), global0.c), global1.x).b)) & true);
    let var_1 = vec4<u32>(10187u, select(_wgslsmith_mult_u32(arg_2 ^ _wgslsmith_div_u32(1u, 62841u), 7918u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 18110u, 0u, 1u) >> (vec4<u32>(arg_2, u_input.a, 2909u, 73406u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, 13782u, 4368u)), abs(min(arg_2, 24007u)), select(true, true, 11600i >= var_0.a.x)), true), u_input.a, 1u);
    let var_2 = _wgslsmith_mult_i32(global0.a.x, _wgslsmith_sub_i32(reverseBits(_wgslsmith_div_i32(-var_0.a.x, var_0.a.x)), global0.a.x));
    var var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1721f, 1000f, -820f, -575f)), vec4<f32>(global1.x, _wgslsmith_div_f32(global1.x, -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-807f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x))), !vec4<bool>(global0.b.x, arg_1, var_3.c, func_4(var_0, var_0, global1.x).b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_add_i32(i32(-1i) * -31091i, 1i);
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5((global0.a.x >> (u_input.a % 32u)) << (max(u_input.a, u_input.a) % 32u), global3.x, func_1(true, !vec4<bool>(false, global3.x, global3.x, global3.x), Struct_1(global0.a, global0.b, global0.b.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, global1.x, global1.x, -1632f))), vec4<f32>(_wgslsmith_f_op_f32(global1.x - 1230f), global1.x, _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(global1.x + global1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1615f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.x * global1.x))), global1.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1062f, global1.x, global1.x, 1193f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -466f, -1633f, 114f) + vec4<f32>(-1974f, -215f, -1306f, 547f))))))));
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(~global0.a.x, -1i, min(-34035i, global0.a.x)) << (select(~4294967295u, 4294967295u, global0.c) % 32u), -1i, firstTrailingBit(-2147483647i)), !func_4(Struct_1(-global0.a, vec3<bool>(true, true, true), func_2(vec4<bool>(global0.b.x, global0.c, true, false), u_input.a).b.x), func_4(Struct_1(vec3<i32>(-27836i, 2147483647i, global0.a.x), vec3<bool>(false, true, true), global3.x), func_4(Struct_1(global0.a, global3.xzw, global0.c), Struct_1(global0.a, global0.b, global0.c), global1.x), _wgslsmith_f_op_f32(global1.x + 1411f)), _wgslsmith_f_op_f32(f32(-1f) * -286f)).b, global0.b.x);
    var var_1 = i32(-1i) * -2147483647i;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 2627u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 0u), _wgslsmith_sub_u32(63116u, u_input.a)) | u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-483f, _wgslsmith_f_op_f32(1342f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -741f))))), global0.a);
}

