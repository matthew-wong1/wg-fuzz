struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(13048u, 0u), vec2<u32>(68558u, 63223u), vec2<u32>(4294967295u, 23367u), vec2<u32>(0u, 44063u), vec2<u32>(0u, 19587u), vec2<u32>(81179u, 17787u), vec2<u32>(1u, 27846u), vec2<u32>(14920u, 0u), vec2<u32>(61140u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(48465u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(15428u, 1u), vec2<u32>(69825u, 31542u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 64592u), vec2<u32>(0u, 0u), vec2<u32>(56461u, 15178u), vec2<u32>(81585u, 1u), vec2<u32>(10487u, 0u), vec2<u32>(12731u, 39760u), vec2<u32>(24518u, 5506u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_5, arg_3: vec4<f32>) -> bool {
    let var_0 = Struct_5(arg_2.a, Struct_3(_wgslsmith_f_op_vec3_f32(-arg_2.b.a), !(arg_2.d.x > _wgslsmith_f_op_f32(1327f * 718f))), select(select(vec3<bool>(global0.b || global0.b, true, select(false, false, true)), select(arg_2.a.c.wxy, select(arg_2.a.c.zxz, vec3<bool>(false, false, arg_2.a.c.x), arg_2.a.a.xzy), true), true), select(vec3<bool>(select(true, false, false), 5487u > u_input.a, arg_2.a.b), select(!arg_2.c, !arg_2.a.a.zyw, arg_2.a.a.x), !vec3<bool>(arg_2.b.b, true, arg_2.b.b)), vec3<bool>(global0.b, all(!vec2<bool>(arg_2.c.x, true)), all(vec4<bool>(global0.b, false, global0.b, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1788f)), _wgslsmith_f_op_f32(-global0.a.x))))));
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1380f), 271f)) - arg_3.x), _wgslsmith_f_op_f32(arg_2.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * -1777f)))), true);
    global0 = var_0.b;
    global0 = arg_2.b;
    var var_1 = vec3<bool>(all(!select(!vec4<bool>(true, var_0.b.b, false, global0.b), select(vec4<bool>(true, var_0.b.b, true, var_0.c.x), vec4<bool>(false, false, true, var_0.c.x), vec4<bool>(global0.b, false, false, false)), !var_0.b.b)), true, !(~var_0.a.d < (_wgslsmith_mult_i32(28891i, arg_1.x) >> (u_input.a % 32u))));
    return 249f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * 1000f);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_2 {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1239f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(452f - global0.a.x), global0.a.x), 359f)), !(true | global0.b));
    return Struct_2(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, -(arg_0.x | 0i)), firstTrailingBit(arg_0.x)), vec3<bool>((~u_input.a <= abs(20519u)) && func_3(~vec3<i32>(4808i, 15886i, arg_0.x), firstTrailingBit(vec4<i32>(arg_0.x, -9927i, arg_0.x, arg_0.x)), Struct_5(Struct_1(vec4<bool>(true, true, global0.b, global0.b), global0.b, vec4<bool>(false, global0.b, global0.b, global0.b), arg_0.x), Struct_3(vec3<f32>(-1332f, -1764f, 370f), false), vec3<bool>(true, global0.b, global0.b), arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(564f, arg_1.x, 2364f, global0.a.x), vec4<f32>(arg_1.x, 237f, -1630f, arg_1.x))), true, global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_5 {
    global0 = Struct_3(global0.a, !global0.b);
    global1 = array<vec2<u32>, 22>();
    global1 = array<vec2<u32>, 22>();
    var var_0 = !(!select(!(!arg_0.a), arg_0.c, all(arg_2.b)));
    let var_1 = Struct_5(arg_0, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-913f + global0.a.x), arg_1)), -297f, arg_1), true), vec3<bool>(var_0.x, !select(true, false, !var_0.x), true), global0.a.xy);
    return Struct_5(Struct_1(!arg_0.a, true, !select(select(vec4<bool>(true, true, true, var_1.c.x), var_1.a.c, arg_0.a.x), select(vec4<bool>(false, true, true, global0.b), vec4<bool>(arg_2.b.x, global0.b, false, false), arg_2.b.x), false), -859i), var_1.b, arg_0.c.wyx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1153f, -553f), vec2<f32>(1000f, -292f), vec2<bool>(var_1.c.x, false)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.d.x, arg_1))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.xx)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_1.d - var_1.b.a.xy))))));
}

fn func_5(arg_0: i32, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = ~(-vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0, arg_1.a.d), ~vec2<i32>(-57267i, arg_1.a.d)), 22741i, arg_0));
    var var_1 = firstTrailingBit(func_2(countOneBits(vec2<i32>(1i, arg_1.a.d)), vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-507f * -1000f)))).a.x);
    var var_2 = vec2<i32>(~_wgslsmith_clamp_i32(firstTrailingBit(min(-2147483647i, arg_1.a.d)), -24842i & var_0.x, var_0.x), func_2(min(vec2<i32>(0i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2324f, global0.a.x)))).a.x | -arg_0);
    global1 = array<vec2<u32>, 22>();
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2148f + 949f))), -514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.a.x, arg_1.d.x, global0.b)) - -416f))), all(arg_1.a.a));
    return vec4<bool>(var_3.b, select(true, var_3.b, any(!func_4(arg_1.a, -1015f, Struct_2(var_0.xz, arg_1.a.a.yxw), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)).c.zz)), !(!select(true, global0.b, true)), true);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_5(Struct_1(select(vec4<bool>(true, any(vec4<bool>(global0.b, global0.b, false, global0.b)), false, 1u != u_input.a), select(select(vec4<bool>(false, false, global0.b, global0.b), vec4<bool>(true, global0.b, global0.b, global0.b), false), select(vec4<bool>(true, global0.b, global0.b, false), vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(true, global0.b, false, global0.b)), global0.b), select(!vec4<bool>(global0.b, global0.b, true, global0.b), vec4<bool>(global0.b, global0.b, true, false), vec4<bool>(true, true, global0.b, global0.b))), false || global0.b, func_5(~59907i, func_4(Struct_1(vec4<bool>(global0.b, global0.b, false, global0.b), true, vec4<bool>(global0.b, true, global0.b, false), -1i), _wgslsmith_f_op_f32(round(global0.a.x)), func_2(vec2<i32>(-31747i, 23115i), vec2<f32>(-565f, global0.a.x)), ~vec4<u32>(4294967295u, u_input.a, 18048u, u_input.a))), 1i), func_4(Struct_1(vec4<bool>(global0.b != true, global0.b & false, global0.b, !global0.b), global0.a.x != -1533f, !vec4<bool>(true, global0.b, global0.b, true), -func_4(Struct_1(vec4<bool>(false, false, global0.b, global0.b), true, vec4<bool>(true, true, global0.b, global0.b), -30119i), -1053f, Struct_2(vec2<i32>(-21682i, -8917i), vec3<bool>(false, true, global0.b)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)).a.d), _wgslsmith_f_op_f32(global0.a.x - 147f), Struct_2(vec2<i32>(1i, reverseBits(45329i)), vec3<bool>(true, true, true)), (~vec4<u32>(u_input.a, 2602u, 4294967295u, u_input.a) >> ((vec4<u32>(u_input.a, 46071u, u_input.a, u_input.a) | vec4<u32>(17701u, 0u, u_input.a, 4294967295u)) % vec4<u32>(32u))) >> (firstTrailingBit(vec4<u32>(u_input.a, 84391u, 1u, u_input.a) | vec4<u32>(0u, u_input.a, 4294967295u, 4294967295u)) % vec4<u32>(32u))).b, func_5(1i, func_4(func_4(func_4(Struct_1(vec4<bool>(global0.b, global0.b, global0.b, global0.b), true, vec4<bool>(true, false, global0.b, global0.b), 1i), global0.a.x, Struct_2(vec2<i32>(2147483647i, 2147483647i), vec3<bool>(global0.b, false, global0.b)), vec4<u32>(0u, 1u, 5679u, u_input.a)).a, 975f, Struct_2(vec2<i32>(-1i, 1288i), vec3<bool>(global0.b, true, global0.b)), ~vec4<u32>(0u, u_input.a, 23797u, 1u)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), Struct_2(~vec2<i32>(21477i, 0i), !vec3<bool>(global0.b, global0.b, false)), vec4<u32>(u_input.a, u_input.a, _wgslsmith_clamp_u32(u_input.a, 4294967295u, 17834u), _wgslsmith_mod_u32(u_input.a, u_input.a)))).ywy, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global0.a.yz))));
    let var_1 = func_4(func_4(Struct_1(select(vec4<bool>(true, var_0.a.c.x, var_0.a.c.x, false), !var_0.a.c, !vec4<bool>(false, var_0.a.a.x, global0.b, var_0.c.x)), true, var_0.a.a, var_0.a.d), _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2455f)) + _wgslsmith_f_op_f32(f32(-1f) * -1523f))), Struct_2(vec2<i32>(1i, var_0.a.d) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec3<bool>(true, all(vec3<bool>(var_0.c.x, true, true)), true)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(37167u, u_input.a, 0u, u_input.a), select(vec4<u32>(4294967295u, 33709u, 1u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 38808u), global0.b))).a, 1361f, func_2(-firstLeadingBit(vec2<i32>(var_0.a.d, -32384i)), var_0.d), ~vec4<u32>(58743u, ~4257u & u_input.a, u_input.a, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.d.x))));
    let var_3 = func_2(reverseBits(~vec2<i32>(33063i, var_0.a.d) << (firstLeadingBit(~global1[_wgslsmith_index_u32(4294967295u, 22u)]) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f * var_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(369f, global0.a.x, true))))));
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global0.a.x, var_1.b.a.x))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.b.a), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_3(vec3<f32>(-717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, global0.a.x)) * global0.a.x), global0.a.x), select(global0.b, false, global0.b));
    let var_0 = Struct_4(-select(vec3<i32>(2147483647i, -9275i, -2147483647i), reverseBits(vec3<i32>(-2147483647i, 23307i, 30968i)), func_1().b) << (min(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(20077u, u_input.a, u_input.a)), firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 60884u))), vec3<u32>(u_input.a | u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 16559u), vec3<u32>(1u, u_input.a, 40218u)), 4294967295u)) % vec3<u32>(32u)), u_input.a ^ _wgslsmith_sub_u32(countOneBits(u_input.a), max(u_input.a, ~4294967295u)));
    let var_1 = var_0;
    global1 = array<vec2<u32>, 22>();
    let var_2 = global0.a.x;
    var var_3 = _wgslsmith_f_op_f32(-550f + _wgslsmith_f_op_f32(abs(global0.a.x)));
    var var_4 = func_5(abs(var_0.a.x), func_4(Struct_1(!vec4<bool>(global0.b, true, false, global0.b), true, vec4<bool>(func_4(Struct_1(vec4<bool>(false, global0.b, global0.b, false), false, vec4<bool>(false, false, global0.b, false), -1i), global0.a.x, Struct_2(var_0.a.yy, vec3<bool>(global0.b, global0.b, true)), vec4<u32>(336u, var_0.b, 43157u, var_1.b)).a.c.x, true, true & global0.b, true), var_1.a.x), -1000f, func_2(vec2<i32>(0i, _wgslsmith_mult_i32(var_1.a.x, -12434i)), global0.a.xy), countOneBits(vec4<u32>(1u, _wgslsmith_add_u32(u_input.a, 1u), 0u, 36820u))));
    var var_5 = 84682u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -657f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2174f, global0.a.x))), _wgslsmith_f_op_f32(trunc(global0.a.x)))), _wgslsmith_clamp_u32(~firstLeadingBit(var_0.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(32049u, var_1.b | var_1.b), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(0u, 22u)], vec2<u32>(0u, 36505u))), u_input.a), 1321f, 12817u);
}

