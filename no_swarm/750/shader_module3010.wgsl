struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: vec3<f32>;

var<private> global2: bool;

var<private> global3: array<i32, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    let var_0 = arg_0.b;
    global2 = any(vec4<bool>(arg_0.a.a.a.x, false, true, any(vec4<bool>(true, !global0[_wgslsmith_index_u32(1u, 13u)], any(arg_0.c.a), all(vec2<bool>(global0[_wgslsmith_index_u32(4391u, 13u)], false))))));
    var var_1 = select(_wgslsmith_mod_u32(9404u, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0, 58500u, var_0)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, 0u, arg_2.a.b), vec3<u32>(var_0, 0u, var_0)))), firstTrailingBit(abs(~(~0u))), arg_2.a.a.x);
    var var_2 = arg_0.a.a;
    global2 = true;
    return global1.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(arg_3, global1.x, vec4<f32>(global1.x, global1.x, global1.x, global1.x)), 4294967295u, Struct_1(arg_3.a, 45484u)), vec3<f32>(global1.x, global1.x, global1.x), Struct_2(Struct_1(vec4<bool>(true, arg_2.x, true, true), 0u), 241f, vec4<f32>(-193f, global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_f32(trunc(-505f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f) - -716f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.x, global1.x)), global1.x, all(arg_3.a.xww))), _wgslsmith_f_op_f32(floor(1172f))), vec3<f32>(-512f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f + global1.x)), global1.x), true)));
    global0 = array<bool, 13>();
    var var_0 = Struct_2(Struct_1(!arg_3.a, _wgslsmith_clamp_u32(79921u, arg_3.b, _wgslsmith_sub_u32(~4294967295u, arg_3.b))), 2317f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.x, global1.x)))), global1.x, global1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -524f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(step(global1.x, 187f)), 1000f, _wgslsmith_f_op_f32(global1.x + 1571f)))));
    return Struct_3(Struct_2(arg_3, 600f, var_0.c), u_input.b, Struct_1(!(!vec4<bool>(arg_2.x, false, arg_3.a.x, true)), 6740u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: u32) -> Struct_3 {
    global2 = u_input.c > firstTrailingBit(_wgslsmith_mult_i32(countOneBits(u_input.c), -2147483647i));
    let var_0 = arg_1;
    global1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.c.x, _wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(-642f - arg_1.a.b)), 697f)));
    return Struct_3(arg_1.a, 4294967295u, Struct_1(vec4<bool>(!all(vec3<bool>(true, true, false)), any(vec4<bool>(arg_1.a.a.a.x, false, false, true)), true, arg_0.x), _wgslsmith_add_u32(func_2(global3[_wgslsmith_index_u32(var_0.a.a.b, 32u)], false, arg_0.xy, Struct_1(vec4<bool>(true, arg_2.x, arg_0.x, false), 42349u)).a.a.b ^ _wgslsmith_add_u32(40521u, arg_1.b), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a.b, 620u, arg_3), vec3<u32>(27284u, arg_3, 31161u) >> (vec3<u32>(arg_3, arg_1.a.a.b, 1u) % vec3<u32>(32u))))));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    let var_0 = arg_0.a.a;
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_dot_vec2_i32(-vec2<i32>(global3[_wgslsmith_index_u32(arg_0.b, 32u)], arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(-52612i, arg_1), vec2<i32>(arg_1, 1i))) == ~(-2147483647i), true, !func_2(-32071i, false, vec2<bool>(var_0.a.x, global0[_wgslsmith_index_u32(u_input.a, 13u)]), var_0).a.a.a.x && (arg_0.a.b != _wgslsmith_f_op_f32(arg_0.a.b + global1.x)), var_0.a.x), ~u_input.a);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    global1 = vec3<f32>(global1.x, 500f, arg_1);
    global0 = array<bool, 13>();
    global3 = array<i32, 32>();
    let var_0 = ~u_input.d;
    let var_1 = var_0.x;
    return Struct_3(func_5(arg_2, 0i).a, arg_2.b, arg_0);
}

fn func_7(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = true;
    let var_1 = -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-9404i, u_input.c, -8166i), _wgslsmith_sub_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(arg_2.a.a.b, 32u)], 40842i, -1i), vec3<i32>(-5944i, -2147483647i, 22924i)) ^ select(vec3<i32>(u_input.c, u_input.c, -30846i), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<bool>(var_0, false, global0[_wgslsmith_index_u32(1u, 13u)]))), ~(-vec3<i32>(global3[_wgslsmith_index_u32(arg_2.c.b, 32u)], u_input.c, -15568i)));
    let var_2 = arg_2.c.b;
    var var_3 = func_4(!vec4<bool>(func_2(~2147483647i, global0[_wgslsmith_index_u32(~arg_2.a.a.b, 13u)], !arg_2.a.a.a.wx, Struct_1(vec4<bool>(false, arg_2.c.a.x, arg_2.a.a.a.x, true), u_input.b)).a.a.a.x, true, any(!arg_2.a.a.a.xz), true), func_5(func_4(arg_2.a.a.a, Struct_3(Struct_2(arg_2.c, -783f, arg_2.a.c), 6851u, func_4(vec4<bool>(true, arg_2.c.a.x, false, global0[_wgslsmith_index_u32(1u, 13u)]), arg_2, arg_2.a.a.a.xw, u_input.d.x).a.a), func_5(arg_2, _wgslsmith_div_i32(3080i, global3[_wgslsmith_index_u32(91120u, 32u)])).a.a.a.zz, ~92713u), abs(-var_1.x & 1i)), vec2<bool>(!(!all(arg_2.c.a.ww)), false), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 6838u), vec2<u32>(4294967295u, 1u))), vec2<u32>(0u, 4294967295u)));
    var var_4 = Struct_1(arg_2.c.a, u_input.b ^ u_input.d.x);
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> StorageBuffer {
    var var_0 = func_7(u_input.d | vec2<u32>(51929u | ~arg_0.x, (arg_1 & arg_0.x) ^ arg_1), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(1u, arg_1, u_input.b, arg_0.x))), vec4<u32>(~1u, arg_1 ^ arg_0.x, ~arg_1 >> (~24352u % 32u), ~1u)), func_6(Struct_1(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(33590u, 13u)] == true), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -2876f), func_5(func_4(vec4<bool>(global0[_wgslsmith_index_u32(68751u, 13u)], false, false, global0[_wgslsmith_index_u32(8838u, 13u)]), func_2(1i, true, vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)]), Struct_1(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(arg_1, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), arg_1)), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false), global0[_wgslsmith_index_u32(0u, 13u)]), u_input.b), -global3[_wgslsmith_index_u32(select(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), 32u)]), select(vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)])), global0[_wgslsmith_index_u32(reverseBits(u_input.a), 13u)], func_5(Struct_3(Struct_2(Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(55984u, 13u)], global0[_wgslsmith_index_u32(2143u, 13u)], false), 1u), global1.x, vec4<f32>(global1.x, global1.x, global1.x, 1009f)), 5730u, Struct_1(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(arg_1, 13u)]), arg_1)), u_input.c).a.a.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 13u)]), select(func_2(-14787i, global0[_wgslsmith_index_u32(6893u, 13u)], vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 13u)]), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(19300u, 13u)], false, global0[_wgslsmith_index_u32(29013u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), arg_1)).a.a.a, vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(arg_1, 13u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], true, global0[_wgslsmith_index_u32(arg_1, 13u)])), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], true, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(55709u, 13u)]))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec4<bool>(true, true, true, true), 35549u), _wgslsmith_f_op_f32(-global1.x), var_0.a.c), func_6(func_7(select(~vec2<u32>(u_input.a, 84691u), vec2<u32>(arg_1, arg_1), true), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.a, u_input.a, 72556u), arg_0), func_4(select(var_0.c.a, vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 13u)], var_0.c.a.x, false, var_0.c.a.x), global0[_wgslsmith_index_u32(24202u, 13u)]), Struct_3(var_0.a, 2141u, var_0.a.a), var_0.c.a.wz, min(arg_0.x, 48359u))).c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(529f, global1.x) + -815f), Struct_3(Struct_2(Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(var_0.c.b, 13u)], var_0.c.a.x), 26559u), 909f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 370f, 1000f, 525f), vec4<f32>(-706f, var_0.a.b, 351f, 1253f), true))), func_4(var_0.c.a, Struct_3(Struct_2(Struct_1(var_0.c.a, 36665u), -374f, vec4<f32>(var_0.a.b, -695f, 1770f, var_0.a.b)), arg_1, var_0.a.a), !vec2<bool>(global0[_wgslsmith_index_u32(2704u, 13u)], false), ~var_0.c.b).b, var_0.c), !func_5(func_7(arg_0.yy, 4294967295u, Struct_3(Struct_2(var_0.c, global1.x, var_0.a.c), arg_0.x, var_0.a.a)), ~u_input.c).a.a.a).a.a.b, var_0.a.a);
    var var_2 = func_5(Struct_3(var_1.a, 0u, var_0.c), -1i).a;
    var_1 = Struct_3(func_6(Struct_1(select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 13u)], false, true), func_7(vec2<u32>(var_0.c.b, 0u), var_2.a.b, Struct_3(var_1.a, var_0.c.b, var_2.a)).a.a.a, func_7(vec2<u32>(var_1.c.b, 0u), var_2.a.b, Struct_3(var_1.a, u_input.a, var_1.a.a)).c.a), var_0.a.a.b), var_2.c.x, func_2(~(~u_input.c), firstTrailingBit(var_0.a.a.b) <= (var_1.a.a.b | var_1.b), func_4(!var_0.c.a, Struct_3(Struct_2(Struct_1(var_0.a.a.a, 4294967295u), global1.x, var_2.c), var_1.a.a.b, var_1.a.a), var_2.a.a.wz, firstTrailingBit(12671u)).a.a.a.xz, Struct_1(!vec4<bool>(var_1.c.a.x, true, true, var_2.a.a.x), var_0.c.b)), func_6(Struct_1(var_2.a.a, _wgslsmith_clamp_u32(59243u, var_2.a.b, 37032u)), _wgslsmith_f_op_f32(301f + func_6(Struct_1(var_1.c.a, 4294967295u), var_0.a.b, Struct_3(var_1.a, 1u, Struct_1(var_2.a.a, 13010u)), vec4<bool>(true, var_0.a.a.a.x, false, false)).a.c.x), Struct_3(func_5(Struct_3(var_0.a, arg_0.x, Struct_1(vec4<bool>(var_1.a.a.a.x, true, global0[_wgslsmith_index_u32(1u, 13u)], false), 53372u)), 1i).a, arg_0.x, func_5(Struct_3(Struct_2(var_2.a, -342f, var_2.c), 7478u, Struct_1(var_0.a.a.a, var_0.b)), -2176i).a.a), !var_0.a.a.a).c.a).a, ~90877u, Struct_1(var_1.a.a.a, arg_0.x | (arg_1 ^ ~arg_1)));
    var_0 = Struct_3(Struct_2(func_4(vec4<bool>(func_4(vec4<bool>(var_2.a.a.x, false, true, true), Struct_3(var_1.a, 24464u, Struct_1(vec4<bool>(true, var_1.a.a.a.x, var_0.a.a.a.x, var_0.c.a.x), arg_1)), var_1.c.a.yy, arg_0.x).c.a.x, false, true, var_2.a.a.x), Struct_3(Struct_2(var_1.c, 234f, vec4<f32>(-308f, 354f, -1350f, -481f)), 1u, var_2.a), select(vec2<bool>(var_1.c.a.x, global0[_wgslsmith_index_u32(var_2.a.b, 13u)]), vec2<bool>(var_2.a.a.x, true), true), arg_1).c, _wgslsmith_div_f32(141f, _wgslsmith_f_op_f32(trunc(func_6(var_2.a, var_2.b, Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, true, false), 32379u), var_1.a.c.x, vec4<f32>(675f, global1.x, 760f, -570f)), 57879u, Struct_1(vec4<bool>(var_2.a.a.x, var_0.a.a.a.x, var_2.a.a.x, var_0.c.a.x), 4294967295u)), vec4<bool>(false, var_0.c.a.x, false, false)).a.b))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1175f)), var_0.a.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 1070f)))), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.x, ~u_input.a, _wgslsmith_clamp_u32(arg_1, var_0.c.b, 54926u)), arg_0), _wgslsmith_add_u32(1u, select(93443u, 28935u, false) & ~1130u), any(select(vec3<bool>(true, true, true), var_0.a.a.a.wxz, func_6(var_0.a.a, -492f, Struct_3(var_0.a, 1u, Struct_1(vec4<bool>(false, var_1.c.a.x, true, false), arg_0.x)), var_2.a.a).a.a.a.yzx))), var_1.c);
    return StorageBuffer(-588f, 212f, var_0.a.c.wyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f + _wgslsmith_f_op_f32(exp2(func_5(Struct_3(Struct_2(Struct_1(vec4<bool>(true, var_1.c.a.x, var_1.c.a.x, false), arg_1), -671f, var_1.a.c), 87783u, Struct_1(var_2.a.a, 68866u)), u_input.c).a.c.x)))), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(abs(~vec4<u32>(13827u, u_input.b, 4294967295u, 44438u)) & vec4<u32>(_wgslsmith_div_u32(1u, 60243u) | firstTrailingBit(4294967295u), u_input.d.x, ~0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b, 0u), u_input.b)), ~1u);
}

