struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<i32>(2147483647i, -32223i, -1i), vec4<u32>(110503u, 1u, 0u, 0u), 0u), 18045u, true);

var<private> global1: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    global0 = Struct_2(arg_1, _wgslsmith_div_u32(_wgslsmith_mult_u32(10914u, _wgslsmith_mult_u32(1u, 0u)), ~(~_wgslsmith_add_u32(arg_1.c, global0.a.c))), true);
    global1 = arg_0;
    let var_0 = Struct_2(arg_1, 4294967295u, !(!arg_0.b) & !(arg_1.b.x >= select(arg_1.b.x, 1u, arg_0.b)));
    global1 = arg_0;
    return Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -4500i), vec2<i32>(u_input.a.x, var_0.a.a.x)), i32(-1i) * -2147483647i, -6063i), var_0.a.a | vec3<i32>(-1i, -2147483647i, -1i), vec3<i32>(2147483647i, var_0.a.a.x, u_input.c.x) << (var_0.a.b.xzy % vec3<u32>(32u))), select(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_1.a.x, u_input.a.x), var_0.a.a), min(var_0.a.a, u_input.a.zzy), true | global1.b), reverseBits(_wgslsmith_sub_vec3_i32(u_input.c, u_input.c)), select(global0.c, false, false) && true)), firstTrailingBit(arg_1.b), global0.a.c);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = -245f;
    var var_1 = true;
    return Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, global1.a.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.a.x, -267f), vec2<f32>(global1.a.x, global1.a.x), global0.c)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.a.x, -161f))) + global1.a))), global0.c);
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    global1 = func_4(func_2(Struct_3(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)), false), global0.a, vec3<u32>(global0.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, global0.a.c, global0.b) >> (arg_0.zwy % vec3<u32>(32u)), select(vec3<u32>(4294967295u, 1445u, 35554u), global0.a.b.ywz, vec3<bool>(true, false, global0.c))), 22985u)), vec4<bool>(true, func_3(func_2(Struct_3(vec2<f32>(global1.a.x, -607f), true), Struct_1(vec3<i32>(47900i, global0.a.a.x, global0.a.a.x), vec4<u32>(arg_0.x, 24023u, 27770u, 27401u), 9365u), arg_0.yxz).b), ~(~u_input.b) < global0.a.c, true), func_2(Struct_3(global1.a, true && global0.c), func_2(Struct_3(_wgslsmith_f_op_vec2_f32(-global1.a), any(vec3<bool>(global1.b, true, global0.c))), Struct_1(-vec3<i32>(u_input.d.x, u_input.d.x, 0i), vec4<u32>(arg_0.x, 37317u, 4294967295u, 114771u), arg_0.x & 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 12812u, global0.b), _wgslsmith_add_vec3_u32(arg_0.yyy, arg_0.xyw))), vec3<u32>(~u_input.b, u_input.b, u_input.b)));
    let var_0 = Struct_1(vec3<i32>(countOneBits(-u_input.c.x), ~(-(-1i >> (arg_0.x % 32u))), -2147483647i), global0.a.b, ~u_input.b);
    global0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(-2147483647i), countOneBits(2147483647i), -var_0.a.x), -global0.a.a >> (firstLeadingBit(vec3<u32>(var_0.b.x, var_0.b.x, global0.a.b.x)) % vec3<u32>(32u))), global0.a.b, 17477u), arg_0.x, !(((global1.b && global1.b) && global0.c) != false));
    var var_1 = vec4<bool>(false, all(vec4<bool>(false, true, all(select(vec2<bool>(global1.b, global0.c), vec2<bool>(false, global1.b), global1.b)), -1000f >= _wgslsmith_f_op_f32(-global1.a.x))), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x) * global1.a.x) > global1.a.x), global1.b);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-531f, global1.a.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)))))), select(!(true | func_3(vec4<u32>(60863u, 32069u, arg_0.x, arg_0.x))), (all(vec4<bool>(var_1.x, false, true, var_1.x)) || all(vec2<bool>(var_1.x, global0.c))) | any(select(var_1.xzy, var_1.xxz, true)), any(vec2<bool>(false, global1.b)) & !func_3(arg_0)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_1(vec3<i32>(u_input.c.x, var_0.a.x, global0.a.a.x), vec4<u32>(13752u, u_input.b, var_0.c, u_input.b), 1u), select(vec4<bool>(global1.b, true, global0.c, false), vec4<bool>(global0.c, false, true, global1.b), vec4<bool>(global0.c, true, global1.b, global1.b)), Struct_1(global0.a.a, arg_0, var_0.c)).a + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)))), all(!vec4<bool>(var_1.x, !global1.b, global1.b, true)));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_2 {
    global0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(arg_1, 1i, global0.a.a.x, 6515i), u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1, 54071i, -5180i), u_input.a)), 2147483647i, _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1, 19924i), _wgslsmith_div_i32(arg_1, arg_1))), firstLeadingBit(global0.a.b >> (global0.a.b % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, global0.b, global0.b), vec4<u32>(4294967295u, 27223u, global0.b, 64261u))), ~15820u), 1u, global0.c);
    var var_0 = -vec3<i32>(abs(countOneBits(u_input.c.x ^ arg_1)), -((arg_1 & arg_1) >> (_wgslsmith_mult_u32(u_input.b, 28145u) % 32u)), _wgslsmith_mod_i32(~(-17601i), arg_1) << (_wgslsmith_mod_u32(global0.b, 1u) % 32u));
    var var_1 = Struct_2(Struct_1(~(~vec3<i32>(arg_1, -2147483647i, var_0.x)), global0.a.b, ~(_wgslsmith_mod_u32(global0.a.c, 0u) << (u_input.b % 32u))), max(~(~20746u), abs(4294967295u)) & global0.b, ~(~global0.a.c << (~1u % 32u)) < global0.a.b.x);
    let var_2 = Struct_2(func_2(func_4(global0.a, !select(vec4<bool>(var_1.c, arg_0.b, false, false), vec4<bool>(global1.b, true, false, true), false), Struct_1(~global0.a.a, vec4<u32>(0u, 0u, 4294967295u, 1u), global0.a.b.x)), func_2(arg_0, Struct_1(global0.a.a ^ vec3<i32>(var_1.a.a.x, -2147483647i, 2147483647i), abs(var_1.a.b), ~var_1.a.b.x), ~global0.a.b.xwx), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, global0.a.b.x, 35597u) ^ vec3<u32>(var_1.a.b.x, 21057u, 30895u), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.b, global0.a.b.x, u_input.b) & var_1.a.b.zyz, ~vec3<u32>(13015u, var_1.b, var_1.a.c)))), _wgslsmith_clamp_u32(global0.a.b.x, ~(~countOneBits(64326u)), u_input.b), global0.c);
    global0 = var_2;
    return Struct_2(Struct_1(vec3<i32>(var_1.a.a.x, countOneBits(0i), _wgslsmith_clamp_i32(var_0.x << (global0.a.b.x % 32u), firstLeadingBit(19844i), func_2(Struct_3(vec2<f32>(-682f, arg_0.a.x), arg_0.b), Struct_1(vec3<i32>(4720i, arg_1, arg_1), vec4<u32>(37376u, 1u, global0.a.c, 4294967295u), var_1.b), var_2.a.b.www).a.x)), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b << (global0.a.c % 32u)), max(var_1.a.c, 1u), 1u, ~20575u | (4294967295u & global0.a.c)), 0u | firstLeadingBit(var_1.b)), ~32060u, false);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = ~(~(~vec2<u32>(global0.a.b.x, 0u)));
    global0 = Struct_2(func_5(func_4(global0.a, select(vec4<bool>(global1.b, true, arg_1.x, false), !vec4<bool>(false, arg_0.c, true, arg_1.x), global1.b), func_2(Struct_3(vec2<f32>(global1.a.x, global1.a.x), global0.c), func_2(Struct_3(global1.a, true), Struct_1(u_input.c, vec4<u32>(4294967295u, 55633u, var_0.x, 1u), u_input.b), vec3<u32>(70419u, global0.b, 4294967295u)), func_5(Struct_3(vec2<f32>(377f, -620f), arg_0.c), 28472i).a.b.yzz)), ~0i).a, u_input.b, false);
    global1 = func_1(~arg_0.a.b);
    global1 = func_4(Struct_1(u_input.c, reverseBits(countOneBits(func_5(Struct_3(global1.a, false), global0.a.a.x).a.b)), 151016u << (~_wgslsmith_dot_vec3_u32(global0.a.b.xxz, arg_0.a.b.zyy) % 32u)), select(!vec4<bool>(false, true, any(vec4<bool>(true, global1.b, false, global1.b)), false), !select(!vec4<bool>(true, arg_0.c, false, false), select(vec4<bool>(global0.c, true, true, global1.b), vec4<bool>(true, global0.c, false, global1.b), false), arg_1.x), vec4<bool>(!global0.c && true, !global0.c, all(select(vec4<bool>(true, global1.b, true, global0.c), vec4<bool>(arg_0.c, true, true, true), vec4<bool>(true, arg_0.c, true, global0.c))), false)), Struct_1(reverseBits(u_input.c) & _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.a.x, -14822i, -49085i), abs(global0.a.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, arg_0.a.a.x, u_input.d.x), vec3<i32>(0i, u_input.c.x, u_input.a.x), global0.a.a)), ~vec4<u32>(~0u, ~4294967295u, firstTrailingBit(global0.b), _wgslsmith_dot_vec2_u32(var_0, arg_0.a.b.yx)), global0.b));
    global1 = func_4(func_5(func_4(Struct_1(select(u_input.a.yxw, vec3<i32>(19311i, arg_0.a.a.x, 2147483647i), vec3<bool>(arg_0.c, true, false)), global0.a.b, global0.a.c), select(select(vec4<bool>(false, global1.b, true, true), vec4<bool>(true, global1.b, false, false), vec4<bool>(true, true, true, arg_1.x)), !vec4<bool>(global0.c, arg_1.x, arg_0.c, global0.c), select(vec4<bool>(false, false, true, global0.c), vec4<bool>(global1.b, arg_0.c, true, global0.c), true)), func_5(func_1(vec4<u32>(u_input.b, 60738u, 1u, u_input.b)), abs(1i)).a), select(-_wgslsmith_dot_vec3_i32(vec3<i32>(34783i, u_input.c.x, arg_0.a.a.x), u_input.c), -1i, global0.c)).a, !select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, arg_1.x, arg_0.c, arg_0.c), !select(vec4<bool>(global1.b, arg_0.c, true, true), vec4<bool>(arg_0.c, false, global0.c, global0.c), global0.c)), Struct_1(-(~firstTrailingBit(u_input.a.yyz)), global0.a.b, 12213u >> (abs(arg_0.a.c) % 32u)));
    return Struct_2(Struct_1(vec3<i32>(min(-1i, ~(-2147483647i)), -3734i, -global0.a.a.x), firstTrailingBit(~countOneBits(arg_0.a.b)), _wgslsmith_dot_vec3_u32(abs(abs(global0.a.b.xwx)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 11905u, 1u), vec3<u32>(var_0.x, 1u, 1u)))), _wgslsmith_add_u32(~u_input.b, _wgslsmith_mod_u32(1u, reverseBits(abs(var_0.x)))), !(global1.a.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-892f + 184f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-global0.a.a, global0.a.b, ~countOneBits(reverseBits(1u)));
    var var_1 = func_6(func_5(func_1(vec4<u32>(min(1u, 30907u), 4294967295u, _wgslsmith_dot_vec2_u32(var_0.b.xx, global0.a.b.zx), ~6580u)), i32(-1i) * -(~global0.a.a.x)), !vec3<bool>(func_4(Struct_1(vec3<i32>(65778i, u_input.c.x, -1i), global0.a.b, 4294967295u), !vec4<bool>(global0.c, global0.c, true, global0.c), func_5(Struct_3(global1.a, global1.b), var_0.a.x).a).b, global0.c, u_input.b != 1u));
    var var_2 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(u_input.c.x, global0.a.a.x), func_5(func_1(global0.a.b), var_1.a.a.x).a.a.x, u_input.d.x), vec3<i32>(49459i, var_1.a.a.x, 2147483647i)), ~var_0.a);
    let var_3 = Struct_1(firstLeadingBit(~reverseBits(vec3<i32>(2147483647i, 0i, 1i) ^ vec3<i32>(-33617i, 67i, var_1.a.a.x))), _wgslsmith_sub_vec4_u32(global0.a.b, vec4<u32>(reverseBits(1u), ~var_0.b.x, var_1.a.c, _wgslsmith_dot_vec4_u32(vec4<u32>(45083u, var_0.b.x, 34236u, 9662u), func_5(Struct_3(vec2<f32>(global1.a.x, 314f), global1.b), 38884i).a.b))), var_1.a.c >> (5526u % 32u));
    var var_4 = global0.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global1.a.x, -1307f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(func_4(Struct_1(var_3.a, vec4<u32>(0u, u_input.b, 0u, 4294967295u), 47474u), vec4<bool>(true, false, true, global0.c), var_1.a).a.x, global1.a.x)), global1.a.x, -2478f, 289f)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.c, 12634u), var_0.b.xww)) | global0.a.b.x);
}

