struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<u32, 6>;

var<private> global2: Struct_3;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<u32> {
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    global0 = array<Struct_2, 4>();
    return _wgslsmith_clamp_vec3_u32(min(vec3<u32>(1u, _wgslsmith_sub_u32(global2.c.a, global2.c.a), 4294967295u) & firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], arg_1.a.a, 4294967295u)), firstLeadingBit(firstTrailingBit(~vec3<u32>(arg_0.b.b.a, arg_1.a.a, 51372u)))), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(45433u, arg_1.a.a), vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], u_input.d.x), global2.a), max(vec2<u32>(1u, u_input.d.x), vec2<u32>(22945u, arg_0.c)))), _wgslsmith_mult_u32(countOneBits(0u) << (arg_0.b.b.a % 32u), global1[_wgslsmith_index_u32(arg_0.b.b.a >> (~9485u % 32u), 6u)]), 4294967295u), vec3<u32>(1u, ~_wgslsmith_div_u32(arg_1.c, global2.b.a), min(arg_0.b.c.a, ~(~arg_1.c))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<f32>) -> f32 {
    global1 = array<u32, 6>();
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)]), vec3<u32>(86652u, 14289u, 27606u)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1316u, 6u)], global1[_wgslsmith_index_u32(global2.b.a, 6u)], u_input.c), vec3<u32>(1u, global2.c.a, 1u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(~vec3<u32>(55055u, u_input.d.x, global1[_wgslsmith_index_u32(28205u, 6u)]) >> (func_3(Struct_4(Struct_1(global2.b.a, global2.c.b), Struct_3(true, Struct_1(u_input.c, vec4<bool>(global2.c.b.x, arg_0, global2.c.b.x, global2.a)), Struct_1(global2.b.a, global2.c.b), vec4<f32>(arg_1.x, 1677f, 1000f, 147f), global2.e), 1178u), Struct_4(global2.c, Struct_3(global2.b.b.x, Struct_1(35902u, vec4<bool>(arg_0, arg_0, global2.a, global2.b.b.x)), Struct_1(14945u, vec4<bool>(true, false, global2.c.b.x, arg_0)), arg_1, global2.e), global1[_wgslsmith_index_u32(1u, 6u)]), global2.d.yw, -vec3<i32>(-1i, u_input.a.x, -2147483647i)) % vec3<u32>(32u)), vec3<u32>(max(1u, 2313u), 80235u, global1[_wgslsmith_index_u32(abs(u_input.d.x), 6u)]) & _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c) >> (vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 6u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 6u)]) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(102404u, 6u)], 1u, global1[_wgslsmith_index_u32(global2.b.a, 6u)]), vec3<u32>(0u, global1[_wgslsmith_index_u32(global2.b.a, 6u)], 41542u)))));
    var var_1 = select(1i >= u_input.a.x, arg_0, !(!global2.b.b.x));
    let var_2 = vec3<f32>(arg_2.x, global2.d.x, _wgslsmith_f_op_f32(666f * _wgslsmith_f_op_f32(-arg_1.x)));
    global0 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(min(var_2.x, 241f));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> u32 {
    let var_0 = arg_3.b;
    let var_1 = countOneBits(max(abs(~u_input.d) | _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), u_input.d), ~vec2<u32>(1u, arg_3.b.a)), vec2<u32>(arg_3.c.a, _wgslsmith_div_u32(arg_3.c.a, ~var_0.a))));
    global0 = array<Struct_2, 4>();
    let var_2 = global2.d;
    let var_3 = (~_wgslsmith_clamp_u32(~4294967295u, 47762u, ~0u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(9297u, ~40961u), var_1)) << (~arg_3.b.a % 32u);
    return ~var_0.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = 0i;
    let var_1 = _wgslsmith_f_op_f32(108f * -1000f);
    let var_2 = true;
    global2 = Struct_3(any(select(arg_0.xy, vec2<bool>(arg_0.x, false), !(!var_2))), global2.c, Struct_1(func_3(Struct_4(Struct_1(3089u, arg_0), arg_2, 4294967295u), Struct_4(Struct_1(global2.c.a, arg_2.c.b), arg_2, countOneBits(u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -594f)) - _wgslsmith_f_op_vec2_f32(select(global2.d.yw, arg_2.d.zy, false))), ~(-global2.e)).x, select(select(arg_0, vec4<bool>(false, global2.b.b.x, false, var_2), true), arg_0, select(vec4<bool>(arg_0.x, var_2, false, true), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_2.c.b.x, arg_2.b.b.x, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_2.c.b.x, arg_0.x)), true))), global2.d, global2.e);
    global1 = array<u32, 6>();
    return Struct_4(Struct_1(countOneBits(arg_1), vec4<bool>(!arg_0.x, all(arg_2.b.b), true || (10767u >= global1[_wgslsmith_index_u32(4294967295u, 6u)]), !any(arg_2.c.b.wx))), arg_2, _wgslsmith_dot_vec4_u32(firstTrailingBit(~(vec4<u32>(arg_2.b.a, global2.b.a, arg_2.c.a, u_input.d.x) >> (vec4<u32>(arg_2.b.a, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u)))), select(vec4<u32>(firstLeadingBit(9641u), 94029u, 54785u & arg_1, _wgslsmith_sub_u32(arg_2.c.a, 20813u)), vec4<u32>(0u, 0u, u_input.c, global1[_wgslsmith_index_u32(1u, 6u)]) | _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(arg_2.b.a, 6u)], global1[_wgslsmith_index_u32(arg_1, 6u)], arg_1), vec4<u32>(u_input.c, global2.c.a, global2.c.a, global2.c.a)), !(!arg_2.b.b))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(global2.b.b, _wgslsmith_div_u32(u_input.c, ~global2.b.a) | global1[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -350f), vec3<f32>(_wgslsmith_f_op_f32(func_2(global2.c.b.x, vec4<f32>(global2.d.x, global2.d.x, global2.d.x, global2.d.x), vec3<f32>(153f, global2.d.x, 119f))), _wgslsmith_f_op_f32(exp2(global2.d.x)), _wgslsmith_f_op_f32(global2.d.x - -513f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(global2.d.wyw, vec3<f32>(-502f, global2.d.x, global2.d.x))), vec3<f32>(global2.d.x, global2.d.x, 1000f))), Struct_2(global2.c.b, global2.b, Struct_1(14360u, vec4<bool>(global2.a, global2.b.b.x, true, global2.c.b.x)), _wgslsmith_f_op_f32(global2.d.x + global2.d.x), global2.e.x & global2.e.x)), 6u)], Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-323f - 740f), _wgslsmith_div_f32(global2.d.x, -750f)) < global2.d.x, global2.c, global2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-883f, -2136f, global2.d.x, global2.d.x), vec4<f32>(global2.d.x, -1138f, global2.d.x, global2.d.x))) * global2.d), _wgslsmith_sub_vec3_i32(-vec3<i32>(5856i, global2.e.x, 2147483647i), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 58063i), -2147483647i | global2.e.x))));
    let var_1 = global2.c;
    let var_2 = global0[_wgslsmith_index_u32(max((4294967295u << ((~global2.b.a << (u_input.d.x % 32u)) % 32u)) ^ global2.c.a, ~(~abs(1u))), 4u)];
    global0 = array<Struct_2, 4>();
    let var_3 = u_input.a.x | -(u_input.b.x << (var_2.c.a % 32u));
    return Struct_2(func_5(!(!global2.b.b), func_4(global2.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, -580f, var_0.b.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.d.x, var_2.d, var_2.d) - _wgslsmith_f_op_vec3_f32(abs(global2.d.xxz))), global0[_wgslsmith_index_u32(var_2.c.a, 4u)]), var_0.b).a.b, var_2.b, global2.b, 178f, var_2.e);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> Struct_4 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_div_f32(-1794f, -142f)), _wgslsmith_f_op_f32(-909f + arg_1.d)))), -1777f, -537f, arg_1.d);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d)) - _wgslsmith_f_op_f32(round(-273f))), arg_1.d, func_1().d, _wgslsmith_f_op_f32(abs(1f)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1406f)))))), arg_2, arg_1.d, var_1.x);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.d + global2.d))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(541f, var_0.x, 355f, 875f), vec4<f32>(1269f, 360f, -202f, var_0.x))))))));
    global1 = array<u32, 6>();
    return Struct_4(func_1().b, func_5(!vec4<bool>(1369f == arg_1.d, true, false, global2.d.x < -1000f), ~(~4294967295u), func_5(vec4<bool>(-1006f <= var_0.x, func_1().c.b.x, arg_0.x, false), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], global2.c.a) >> (_wgslsmith_add_u32(global2.c.a, 0u) % 32u), func_5(!vec4<bool>(arg_0.x, global2.a, false, false), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.a, 6u)], 6u)], 6u)]), Struct_3(true, global2.c, arg_1.c, global2.d, u_input.b.xxz)).b).b).b, 1858u);
}

fn func_7(arg_0: Struct_4) -> Struct_4 {
    global1 = array<u32, 6>();
    global0 = array<Struct_2, 4>();
    global2 = func_5(!vec4<bool>(any(func_5(arg_0.b.c.b, arg_0.c, arg_0.b).b.c.b.xwx), all(select(global2.b.b, arg_0.a.b, false)), any(global2.c.b.yw), all(arg_0.a.b)), ~arg_0.c, func_5(global2.c.b, firstLeadingBit(2621u), Struct_3(arg_0.a.b.x, Struct_1(~global2.c.a, func_6(vec3<bool>(global2.b.b.x, global2.b.b.x, true), Struct_2(vec4<bool>(true, true, true, false), global2.c, Struct_1(4294967295u, arg_0.b.b.b), 3083f, -19427i), global2.d.x, global2.b.b.zw).b.b.b), arg_0.b.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d.x, -608f, -1801f, 496f)), vec3<i32>(u_input.a.x, 1i, -97981i))).b).b;
    var var_0 = vec4<u32>(firstLeadingBit(u_input.d.x << (0u % 32u)), ~4294967295u, 4294967295u, ~global1[_wgslsmith_index_u32(arg_0.b.c.a, 6u)]);
    var var_1 = global2.b;
    return Struct_4(arg_0.a, Struct_3(false, arg_0.b.b, Struct_1(func_6(func_1().a.wxy, func_1(), arg_0.b.d.x, !arg_0.b.c.b.yx).b.c.a, vec4<bool>(false, all(var_1.b.ywx), all(var_1.b.yx), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.d)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.b.e.x, 2147483647i, -2147483647i), vec3<i32>(u_input.b.x, arg_0.b.e.x, -39075i)))), 0u);
}

fn func_8(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_4 {
    global0 = array<Struct_2, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-global2.d);
    var var_1 = func_1();
    global1 = array<u32, 6>();
    let var_2 = false;
    return func_6(!func_5(vec4<bool>(arg_0.a.b.x || var_1.a.x, !global2.a, true | arg_0.a.b.x, false), global1[_wgslsmith_index_u32(global2.c.a, 6u)], func_6(!global2.b.b.zxx, func_1(), 659f, func_5(vec4<bool>(true, true, var_2, true), global1[_wgslsmith_index_u32(50367u, 6u)], arg_0.b).b.b.b.wz).b).b.b.b.zwx, func_1(), arg_0.b.d.x, vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_6(global2.b.b.wxx, func_1(), -338f, !global2.b.b.xz)), global2.e);
    var var_1 = firstTrailingBit(min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x & var_0.b.e.x, 1i, func_8(var_0, vec3<i32>(-1i, u_input.a.x, -1i)).b.e.x, ~u_input.a.x), _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a.x, -31766i, global2.e.x), vec4<i32>(2147483647i, 29375i, u_input.b.x, var_0.b.e.x), u_input.b))), ~abs(-u_input.b)));
    var var_2 = Struct_2(func_1().b.b, global2.c, Struct_1(~1u, var_0.a.b), 248f, var_0.b.e.x);
    var var_3 = func_5(var_0.a.b, _wgslsmith_div_u32(u_input.d.x, 4294967295u), var_0.b).b;
    global1 = array<u32, 6>();
    var var_4 = func_8(var_0, ~var_3.e);
    let var_5 = var_3.b.b.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-437f * var_2.d));
}

