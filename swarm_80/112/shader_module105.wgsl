struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(false, false, true), false);

var<private> global1: i32;

var<private> global2: f32 = 507f;

var<private> global3: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = Struct_2(!vec2<bool>(true, arg_1.c.e.x), Struct_1(abs(-u_input.a.x) << (~arg_1.d.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b.x * arg_1.b.b.x)), -1296f, -250f, _wgslsmith_f_op_f32(ceil(arg_1.b.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.b.x, arg_1.b.b.x, 182f, _wgslsmith_f_op_f32(arg_1.c.b.x * 1419f)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.c.x), _wgslsmith_f_op_f32(step(-563f, -642f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-989f)))), select(u_input.a.yx, ~(-vec2<i32>(-16207i, arg_1.c.a)), global0.a.zy), vec2<bool>(all(vec4<bool>(true, true, true, true)), !arg_1.a.x)), arg_1.b, _wgslsmith_sub_vec3_u32(arg_1.d, vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(23266u, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<u32>(40867u, arg_1.d.x, 4294967295u, 4294967295u)), arg_1.d.x, 33951u)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(792f)), _wgslsmith_f_op_f32(f32(-1f) * -520f), select(true, var_0.a.x, any(!vec4<bool>(var_0.c.e.x, arg_1.b.e.x, global0.a.x, false))))), var_0.c.c.x));
    var var_2 = ~arg_1.d.x;
    var_2 = ~_wgslsmith_add_u32(var_0.d.x, ~var_0.d.x);
    let var_3 = arg_1.b.e;
    return vec4<f32>(-1508f, var_1, arg_1.b.c.x, 1039f);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> bool {
    let var_0 = Struct_2(!vec2<bool>(any(!vec4<bool>(global0.a.x, arg_2.b, true, global0.a.x)), !any(vec4<bool>(true, false, global0.a.x, arg_0.e.x))), arg_0, arg_0, ~select(reverseBits(vec3<u32>(4294967295u, 1u, 21185u)), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(global0.b, true, arg_1), arg_2.a, global0.a)) & countOneBits(max(min(vec3<u32>(76441u, 0u, 1u), vec3<u32>(43185u, 30485u, 53574u)), vec3<u32>(1u, 1u, 1u))));
    let var_1 = var_0.b.b.x;
    global1 = var_0.c.d.x;
    let var_2 = Struct_2(var_0.c.e, Struct_1(_wgslsmith_div_i32(19319i, 2147483647i) >> (var_0.d.x % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.b.x, -880f, 1430f, var_1), _wgslsmith_f_op_vec4_f32(-var_0.b.c)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.b.x, var_0.c.b.x, -3004f, -2187f))))), ~(firstLeadingBit(vec2<i32>(-1i, 2030i)) & var_0.c.d), vec2<bool>(global0.b, arg_1)), Struct_1(firstLeadingBit(~arg_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_0.c - var_0.b.c)))), var_0.c.b, select(select(~u_input.a.xy, ~u_input.a.yy, vec2<bool>(false, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(-18070i, u_input.a.x), var_0.c.d), vec2<bool>(all(vec2<bool>(true, var_0.b.e.x)), false)), !vec2<bool>(!arg_1, true)), var_0.d);
    var var_3 = arg_2;
    return _wgslsmith_mod_u32(var_2.d.x, ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 1u, var_0.d.x, var_0.d.x), vec4<u32>(var_2.d.x, 1u, 4294967295u, 2425u), false), ~vec4<u32>(47280u, var_0.d.x, 1u, 41853u))) >= (~var_0.d.x | min(var_2.d.x, 18704u | ~var_2.d.x));
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_2(vec2<bool>(!global0.b, global0.a.x), Struct_1(_wgslsmith_mod_i32(u_input.a.x, abs(arg_0)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, 554f, -1071f, 1330f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-876f, 1367f, -1474f, -148f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-988f, -311f, -728f, -116f) * vec4<f32>(-583f, 1293f, -245f, 425f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2548f, -588f, -978f, -1001f)))), firstTrailingBit(u_input.a.zz), global0.a.zy), Struct_1(reverseBits(~(~arg_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(852f, -699f, -540f, -401f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1102f, 1133f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1295f))), 851f, -405f), u_input.a.zz, !(!vec2<bool>(global0.a.x, true))), ~(vec3<u32>(49489u, firstTrailingBit(44751u), _wgslsmith_clamp_u32(4294967295u, 97144u, 1u)) & vec3<u32>(~36568u, _wgslsmith_dot_vec2_u32(vec2<u32>(10170u, 22646u), vec2<u32>(40581u, 1u)), ~55193u)));
    global3 = var_0.c.e.x || func_4(Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.a.x), -var_0.c.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, -682f, 1000f, var_0.b.b.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(arg_0, var_0.b.d.x, arg_0, -19179i), Struct_2(var_0.a, Struct_1(-10154i, vec4<f32>(1699f, 1638f, var_0.c.c.x, var_0.b.b.x), vec4<f32>(-1000f, -1027f, 425f, var_0.c.c.x), vec2<i32>(2147483647i, 16025i), vec2<bool>(true, true)), Struct_1(21085i, var_0.b.b, vec4<f32>(2328f, 321f, 1297f, var_0.b.b.x), u_input.a.yy, vec2<bool>(var_0.b.e.x, global0.b)), var_0.d))))), -countOneBits(vec2<i32>(13193i, -2147483647i)), !global0.a.xx), global0.b, Struct_3(select(!global0.a, global0.a, true), true != (arg_0 < var_0.c.a)), -5500i & arg_0);
    var var_1 = var_0.c.b.x;
    var var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.b.x + -665f), _wgslsmith_f_op_f32(select(var_0.c.b.x, var_0.b.b.x, false)), var_0.c.c.x, _wgslsmith_f_op_f32(sign(-431f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b.b, var_0.c.c)), vec4<bool>(true, true, global0.a.x | false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(351f - -409f), -583f, _wgslsmith_f_op_f32(max(-576f, -806f)), _wgslsmith_f_op_f32(184f + -859f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 232f, var_0.b.b.x, 1899f) * var_0.b.b))), -(vec2<i32>(2147483647i, reverseBits(u_input.a.x)) & vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.d.x, var_0.b.a), vec2<i32>(var_0.c.d.x, arg_0)), ~1i)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.b.e.x & true), vec2<bool>((883f < var_0.b.c.x) == (var_0.c.b.x > 824f), !(var_0.b.c.x == -1051f)), var_0.b.e.x));
    let var_3 = arg_0;
    return Struct_3(vec3<bool>(var_0.c.e.x, !(global0.b | false) && (var_0.d.x <= var_0.d.x), all(select(select(vec4<bool>(global0.a.x, false, true, true), vec4<bool>(global0.a.x, global0.a.x, false, false), false), select(vec4<bool>(global0.b, global0.a.x, false, true), vec4<bool>(false, false, global0.a.x, false), var_0.a.x), !vec4<bool>(var_2.e.x, global0.b, var_0.b.e.x, true)))), !(!global0.a.x) | (!var_0.a.x && any(select(vec4<bool>(false, var_2.e.x, var_2.e.x, false), vec4<bool>(false, global0.b, true, var_0.a.x), var_2.e.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> Struct_2 {
    return Struct_2(vec2<bool>(-297f > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, global0.b)), 1000f)), all(func_2(10604i).a)), Struct_1(min(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 5615i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, 729i, u_input.a.x, -30570i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(596f, arg_0.x, arg_0.x, 1778f), vec4<f32>(-759f, arg_0.x, 140f, -592f), vec4<bool>(false, false, arg_1.a.x, false)))))), _wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(-48201i, u_input.a.x), vec2<i32>(1i, -1i), true), u_input.a.xx), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(0u, arg_3) % vec2<u32>(32u)), u_input.a.zz)), vec2<bool>(true, true)), Struct_1(~u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))), arg_0, vec2<i32>(reverseBits(u_input.a.x) | firstTrailingBit(2147483647i), 0i), !select(select(vec2<bool>(global0.a.x, arg_1.a.x), vec2<bool>(global0.b, false), arg_1.a.x), select(global0.a.yx, vec2<bool>(false, true), arg_1.a.x), true)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2, ~(~arg_2)), ~countOneBits(firstLeadingBit(vec3<u32>(arg_3, arg_3, 0u)))));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_2 {
    global1 = 1i;
    let var_0 = max(u_input.a.x, _wgslsmith_sub_i32(35973i, ~(-46829i)));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, arg_0, -510f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), 787f, arg_0, _wgslsmith_div_f32(-317f, -639f)))), func_2(2147483647i), 45789u, 8291u);
    let var_2 = var_1.b.b.x;
    var var_3 = _wgslsmith_mod_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.d.x, 4294967295u, 1u, 1u), ~vec4<u32>(var_1.d.x, 4294967295u, arg_1, 3100u))) << (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(53548u, var_1.d.x, arg_1, 1u) | vec4<u32>(arg_1, 34994u, 0u, 1u), abs(vec4<u32>(arg_1, 4294967295u, 0u, 62388u)))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(66937u, 4294967295u, 4294967295u, arg_1), vec4<u32>(5437u, var_1.d.x, 1u, arg_1)), ~vec4<u32>(var_1.d.x, arg_1, arg_1, var_1.d.x)), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, var_1.d.x, 388u), vec4<u32>(arg_1, 0u, var_1.d.x, 15788u)), ~vec4<u32>(arg_1, 4176u, var_1.d.x, 66926u) & vec4<u32>(0u, var_1.d.x, var_1.d.x, arg_1)), abs(vec4<u32>(0u, _wgslsmith_div_u32(var_1.d.x, 60602u), var_1.d.x, arg_1))));
    return func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.c.c, vec4<f32>(arg_0, var_1.c.c.x, _wgslsmith_f_op_f32(-var_1.b.b.x), -803f), !vec4<bool>(var_1.b.e.x, global0.b, global0.b, var_1.c.e.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(func_5(vec4<f32>(-855f, 335f, var_2, -1439f), Struct_3(vec3<bool>(global0.a.x, var_1.b.e.x, true), global0.b), arg_1, 1u).b.b.x, _wgslsmith_div_f32(arg_0, -1358f), _wgslsmith_f_op_f32(395f * var_2), 1000f), var_1.c.c)), Struct_3(vec3<bool>(false, global0.a.x, false), !any(select(vec3<bool>(true, true, true), global0.a, vec3<bool>(global0.a.x, var_1.a.x, var_1.a.x)))), select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, ~1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_3.x), vec2<u32>(var_1.d.x, arg_1))), firstLeadingBit(arg_1), true), ~(~(~countOneBits(4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(global0.a, global0.a, !(!(!(!vec3<bool>(global0.a.x, true, true)))));
    let var_1 = 40515u;
    var var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f) - -729f), ~min(var_1, reverseBits(~var_1)));
    let var_3 = func_1(var_2.b.b.x, func_5(var_2.c.c, Struct_3(global0.a, !func_5(var_2.c.c, Struct_3(global0.a, var_0.x), 4294967295u, 4590u).b.e.x), 25996u, func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1605f, var_2.b.b.x, var_2.c.c.x, 465f)), Struct_3(vec3<bool>(var_0.x, var_2.b.e.x, true), global0.b), var_1, max(var_1, var_2.d.x)).d.x << (_wgslsmith_div_u32(~7360u, var_2.d.x & var_1) % 32u)).d.x).c;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(275f, _wgslsmith_f_op_f32(f32(-1f) * -107f)))));
    global0 = Struct_3(vec3<bool>(true, true, true), all(!func_2(u_input.a.x).a.zx));
    let var_4 = func_5(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, _wgslsmith_f_op_f32(467f + var_2.c.b.x), -1070f, _wgslsmith_f_op_f32(var_2.b.c.x + var_3.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.b.x, 278f, -191f, 444f), var_2.c.c, any(vec4<bool>(global0.a.x, var_2.b.e.x, false, false)))), var_2.c.b))), Struct_3(select(select(!global0.a, !vec3<bool>(false, var_0.x, true), true && global0.a.x), global0.a, var_0.x), !all(select(vec4<bool>(true, var_3.e.x, false, var_0.x), vec4<bool>(var_3.e.x, false, var_3.e.x, var_2.a.x), false))), var_2.d.x, var_1).b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.c.x, _wgslsmith_f_op_f32(select(var_2.b.b.x, 2571f, var_2.a.x))), -459f)), _wgslsmith_f_op_f32(-var_3.b.x)), var_3.c.xxy);
}

