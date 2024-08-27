struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(812f, -302f, -908f, -284f), vec4<u32>(0u, 43451u, 45816u, 27827u), vec4<bool>(true, true, false, true), vec3<f32>(-479f, 268f, 617f)));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: bool) -> vec4<u32> {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.b.x, global3.b.x) >> (global2.a.b.xy % vec2<u32>(32u)), global3.b.xz)), 41716u), _wgslsmith_add_u32(global2.a.b.x, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 83797u), global3.b.x), ~(global3.b.x & global3.b.x))), ~(1u | ~global3.b.x) << (70721u % 32u));
    var var_1 = arg_2;
    let var_2 = global0[_wgslsmith_index_u32(17069u, 7u)];
    global0 = array<Struct_1, 7>();
    let var_3 = global2.a.c.x;
    return vec4<u32>(~(~abs(var_0.x << (var_0.x % 32u))), 31120u, global3.b.x, global3.b.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(124f, arg_2.a.x, _wgslsmith_f_op_f32(-145f + global3.a.x), -130f))), func_3(vec3<bool>(false, 2147483647i <= u_input.b, global2.a.c.x & false), vec3<i32>(-2651i, _wgslsmith_div_i32(19536i, u_input.b), ~1i), true), select(global2.a.c, vec4<bool>(!global2.a.c.x, true, true != global3.c.x, 32882i != u_input.b), global2.a.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global3.a.wzx - _wgslsmith_f_op_vec3_f32(-arg_2.d))))));
    var var_0 = arg_1;
    let var_1 = true;
    var_0 = Struct_1(arg_1.a, vec4<u32>(global2.a.b.x, arg_1.b.x, 107005u, 66812u) ^ global2.a.b, select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1.c.x, false, global3.c.x), global3.c), vec4<bool>(var_1, true, true, u_input.b >= u_input.b), ~u_input.c.x == ~arg_2.b.x), vec4<bool>(global3.c.x, any(!vec2<bool>(global2.a.c.x, arg_2.c.x)), true, false), !(!any(arg_2.c.xx))), global2.a.a.wzw);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1252f + _wgslsmith_f_op_f32(round(671f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) * _wgslsmith_f_op_f32(max(197f, var_0.d.x)))) + vec2<f32>(global2.a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.x)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_1.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_0.d.x, -801f), vec4<f32>(181f, arg_2.a.x, var_2.x, -204f)), !arg_1.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.a.x, var_0.d.x, var_0.a.x, -870f), global3.a)) * vec4<f32>(var_0.a.x, var_0.d.x, var_0.a.x, 563f))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1u, 1u, ~4294967295u), (vec4<u32>(u_input.c.x, global2.a.b.x, 7175u, arg_1.b.x) & arg_1.b) & vec4<u32>(1826u, global2.a.b.x, global2.a.b.x, 1u)), vec4<bool>(false, global2.a.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, 43941i, -2147483647i), vec4<i32>(2147483647i, u_input.b, 0i, 14214i)) >= max(u_input.b, -1i), true | global2.a.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(181f, -906f), 347f, arg_1.d.x) - vec3<f32>(-646f, -1189f, 136f))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec2<u32> {
    return func_2(~(~(162u ^ arg_2.a.b.x) ^ 0u), func_2(u_input.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_2.a.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a.b.x, global2.a.b.x, 4294967295u, 1u), global3.b), vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, global3.d.x, 1115f)))), func_2((1u ^ global2.a.b.x) << (~4294967295u % 32u), func_2(u_input.a.x, global2.a, func_2(global3.b.x, Struct_1(global2.a.a, vec4<u32>(1u, 17701u, u_input.c.x, 1u), vec4<bool>(true, arg_2.a.c.x, false, global2.a.c.x), vec3<f32>(1342f, arg_2.a.d.x, -253f)), arg_2.a).a).a, func_2(~3237u, func_2(global2.a.b.x, global2.a, global2.a).a, func_2(1971u, Struct_1(global2.a.a, vec4<u32>(arg_0, arg_2.a.b.x, 0u, 0u), vec4<bool>(global3.c.x, arg_2.a.c.x, arg_2.a.c.x, global3.c.x), vec3<f32>(655f, -227f, -3401f)), Struct_1(vec4<f32>(global3.a.x, global3.d.x, 1000f, arg_2.a.a.x), vec4<u32>(global2.a.b.x, 61664u, global3.b.x, 22825u), global3.c, vec3<f32>(2188f, arg_2.a.d.x, global2.a.a.x))).a).a).a).a, arg_2.a).a.b.wx;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> vec4<f32> {
    let var_0 = vec4<bool>(true, true, true, func_2(countOneBits(4294967295u), Struct_1(_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(global3.a.x, global2.a.a.x, global2.a.a.x, -635f)), vec4<u32>(4294967295u, arg_1.x, ~0u, ~u_input.a.x), select(!vec4<bool>(false, arg_0.c.x, false, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, false, global2.a.c.x), arg_0.c.x), _wgslsmith_f_op_vec3_f32(-global2.a.d)), global0[_wgslsmith_index_u32(7830u, 7u)]).a.c.x);
    var var_1 = 1407f;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -603f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.d.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(-1475f, -155f, 1000f, -2030f))), arg_0.a))));
    var var_3 = 35087u;
    let var_4 = func_2(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 23254u), vec2<u32>(global3.b.x, 9492u) << (u_input.c.xy % vec2<u32>(32u)))), global2.a, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.d.x, var_2.x, var_0.x)), 743f, _wgslsmith_f_op_f32(select(global3.d.x, -2261f, false)), 1f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(var_2.x - global2.a.a.x), var_2.x, _wgslsmith_f_op_f32(-global2.a.d.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b.x, global3.b.x, arg_1.x, 1u) >> (global2.a.b % vec4<u32>(32u)), ~global2.a.b) >> (~global3.b % vec4<u32>(32u)), select(!global2.a.c, vec4<bool>(global2.a.c.x && false, arg_0.c.x, !var_0.x, false), global3.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.zww) * vec3<f32>(758f, var_2.x, var_2.x)) * vec3<f32>(_wgslsmith_f_op_f32(global3.d.x * -869f), -517f, _wgslsmith_f_op_f32(-arg_0.d.x))))).a;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f + 600f) * _wgslsmith_f_op_f32(sign(global3.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1175f, global2.a.a.x)), _wgslsmith_f_op_f32(abs(390f))), _wgslsmith_f_op_f32(-2736f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1508f) + global3.a.x)), _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(floor(-981f)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(arg_2.a.x, -826f, 1000f);
    var var_1 = ~arg_0.b.x;
    var var_2 = func_2(44598u, global0[_wgslsmith_index_u32(global3.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.c.x, 7u)]);
    global0 = array<Struct_1, 7>();
    global2 = global1[_wgslsmith_index_u32(func_2(~arg_2.b.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.a)) - func_2(global3.b.x, func_2(global2.a.b.x, Struct_1(vec4<f32>(var_0.x, -158f, 988f, global2.a.d.x), arg_0.b, vec4<bool>(true, false, global2.a.c.x, arg_0.c.x), vec3<f32>(arg_0.d.x, 1000f, 226f)), arg_0).a, func_2(1u, Struct_1(arg_1.a.a, vec4<u32>(87973u, var_2.a.b.x, u_input.c.x, 1u), arg_2.c, global2.a.a.www), Struct_1(arg_1.a.a, vec4<u32>(arg_1.a.b.x, global3.b.x, 1u, 0u), vec4<bool>(arg_0.c.x, true, true, global2.a.c.x), vec3<f32>(1035f, global3.a.x, -633f))).a).a.a), select(global2.a.b, select(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 60995u, 4294967295u, u_input.c.x), global3.b), _wgslsmith_sub_vec4_u32(arg_1.a.b, vec4<u32>(3048u, arg_0.b.x, arg_0.b.x, global2.a.b.x)), true & var_2.a.c.x), var_2.a.c), func_2(arg_2.b.x, func_2(_wgslsmith_div_u32(1u, 4294967295u), func_2(4294967295u, global0[_wgslsmith_index_u32(48610u, 7u)], Struct_1(vec4<f32>(179f, -2609f, 458f, 1011f), vec4<u32>(37147u, arg_0.b.x, arg_2.b.x, 29308u), vec4<bool>(arg_1.a.c.x, global3.c.x, arg_1.a.c.x, arg_2.c.x), global2.a.d)).a, arg_2).a, arg_1.a).a.c, arg_2.a.wyx), func_2(1u, func_2(~(~26149u), func_2(1u, var_2.a, arg_2).a, global0[_wgslsmith_index_u32(firstLeadingBit(arg_2.b.x), 7u)]).a, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, 1531f, var_2.a.a.x, -1070f) * arg_2.a)), arg_2.b, vec4<bool>(false, false, true, arg_0.c.x), _wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(1298f, 1000f, arg_0.a.x)))).a).a.b.x, 16u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global2.a.d.x, arg_2.d.x)), _wgslsmith_f_op_f32(508f - arg_0.a.x), _wgslsmith_f_op_f32(var_0.x * 698f), _wgslsmith_f_op_f32(var_0.x * 182f)))), ~arg_1.a.b, vec4<bool>(true, all(!global2.a.c), true == (_wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec4<f32>(var_2.a.a.x, 1000f, 552f, -1706f), vec4<u32>(global3.b.x, 0u, global2.a.b.x, 7513u), vec4<bool>(true, arg_0.c.x, true, true), var_2.a.d), arg_0.b.wy, vec2<bool>(arg_1.a.c.x, false))).x < arg_1.a.a.x), any(!vec3<bool>(global2.a.c.x, global3.c.x, global2.a.c.x)) & arg_0.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.d)), _wgslsmith_f_op_vec3_f32(step(global2.a.a.wzx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_1.a.d, arg_1.a.a.wzx, vec3<bool>(var_2.a.c.x, var_2.a.c.x, global2.a.c.x)))))))));
}

fn func_1(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = 22859i;
    var var_1 = u_input.a.x;
    let var_2 = ~_wgslsmith_add_i32(u_input.b, -11930i);
    global3 = func_6(Struct_1(_wgslsmith_f_op_vec4_f32(func_5(global2.a, func_4(4294967295u & global2.a.b.x, max(var_2, u_input.b), func_2(69694u, global0[_wgslsmith_index_u32(8525u, 7u)], global2.a)), global3.c.zw)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(60707u, arg_0.x, 13631u, 1u), vec4<u32>(14648u, 0u, 13614u, 42310u)), global3.b), ~vec4<u32>(48358u, global3.b.x, 3095u, u_input.a.x)), !global2.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.d)) * vec3<f32>(-750f, 683f, 319f)))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(global3.d.x, 554f)), global2.a.a.x, global2.a.a.x, _wgslsmith_f_op_f32(global2.a.a.x * 507f)), func_2(u_input.a.x, Struct_1(global2.a.a, vec4<u32>(global2.a.b.x, 4294967295u, 3264u, global3.b.x), vec4<bool>(true, global2.a.c.x, global3.c.x, global2.a.c.x), vec3<f32>(1172f, global3.d.x, 1440f)), Struct_1(vec4<f32>(-922f, 1000f, 1523f, -287f), vec4<u32>(u_input.a.x, global3.b.x, u_input.c.x, global2.a.b.x), vec4<bool>(global3.c.x, true, global3.c.x, global2.a.c.x), global2.a.d)).a.b >> (~vec4<u32>(5200u, u_input.c.x, 0u, 4294967295u) % vec4<u32>(32u)), global2.a.c, vec3<f32>(_wgslsmith_f_op_f32(trunc(-518f)), 1f, _wgslsmith_f_op_f32(-global2.a.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.a * global3.a))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), u_input.a), max(vec3<u32>(1u, 37668u, arg_0.x), global3.b.yyx)), 19170u, abs(~arg_0.x), 0u), !(!global2.a.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.a.zxy - global2.a.a.xyx) * global2.a.d)));
    let var_3 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u << (0u % 32u)), func_2(2106u, func_2(u_input.a.x, Struct_1(vec4<f32>(global3.a.x, global3.a.x, global2.a.a.x, global2.a.a.x), global3.b, global3.c, global3.a.xzy), Struct_1(vec4<f32>(global2.a.d.x, global3.d.x, -654f, global2.a.d.x), vec4<u32>(34684u, global2.a.b.x, global2.a.b.x, 27186u), vec4<bool>(false, true, true, global3.c.x), vec3<f32>(1823f, -1652f, 596f))).a, Struct_1(vec4<f32>(438f, global3.d.x, global3.d.x, global3.a.x), u_input.c, vec4<bool>(global2.a.c.x, global3.c.x, global3.c.x, false), global3.a.yyw)).a.b.yy), firstTrailingBit(u_input.a.xx)), func_2(~1u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global2.a.a.x, global2.a.a.x, global3.a.x) * vec4<f32>(global3.d.x, 614f, global2.a.d.x, global2.a.d.x)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.a.d.x, -692f, global3.a.x, 1328f), global2.a.a))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.a.b.x, 11148u, 4294967295u, arg_0.x), select(vec4<u32>(1u, 4294967295u, global3.b.x, 4294967295u), u_input.c, false), abs(vec4<u32>(5420u, 113372u, 0u, global3.b.x))), !global3.c, global2.a.a.zxz), func_2(_wgslsmith_div_u32(_wgslsmith_add_u32(global3.b.x, arg_0.x), 38016u), global0[_wgslsmith_index_u32(global3.b.x, 7u)], Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1232f, 155f, 1080f, global3.d.x))), ~global3.b, func_2(arg_0.x, global0[_wgslsmith_index_u32(19515u, 7u)], global2.a).a.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(665f, global3.d.x, -726f) - global3.d))).a).a, func_2(1u, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global3.d.x, -143f, global3.d.x)))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global2.a.b.x, u_input.a.x, 26357u, global3.b.x), global2.a.b), !func_2(global3.b.x, global0[_wgslsmith_index_u32(54974u, 7u)], Struct_1(vec4<f32>(966f, -1000f, global2.a.d.x, 970f), vec4<u32>(4294967295u, global2.a.b.x, 4294967295u, global2.a.b.x), global3.c, vec3<f32>(1000f, 1033f, global3.a.x))).a.c, _wgslsmith_f_op_vec3_f32(min(global3.d, _wgslsmith_div_vec3_f32(global3.d, vec3<f32>(global3.d.x, global2.a.d.x, 101f))))), Struct_1(global2.a.a, global2.a.b, global3.c, global2.a.a.wzx)).a);
    return ~vec3<i32>(i32(-1i) * -(u_input.b ^ u_input.b), var_2, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2862i >> (~global2.a.b.x % 32u);
    var var_1 = select(global3.c.wz, !vec2<bool>((global2.a.b.x | 0u) > (global2.a.b.x >> (0u % 32u)), all(global2.a.c.wzy) && global3.c.x), global3.c.x);
    var_1 = !vec2<bool>(global2.a.c.x, true && all(!global3.c.yy));
    let var_2 = -215f;
    var_1 = global3.c.yw;
    var_1 = global2.a.c.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.a.x)), global3.d.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(899f, 1454f), global2.a.a.zx)) + vec2<f32>(var_2, global2.a.d.x)) + vec2<f32>(_wgslsmith_div_f32(var_2, 115f), _wgslsmith_f_op_f32(-global3.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - -1485f), 911f, vec3<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, ~(-2147483647i)), _wgslsmith_div_i32(-1i, -2147483647i)) | func_1(abs(select(global2.a.b.xyz, vec3<u32>(10777u, 78882u, global2.a.b.x), global3.c.x))), -_wgslsmith_mult_i32(-27149i, u_input.b));
}

