struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false));

var<private> global1: array<Struct_1, 19>;

var<private> global2: i32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> f32 {
    global1 = array<Struct_1, 19>();
    var var_0 = true;
    global1 = array<Struct_1, 19>();
    let var_1 = arg_1;
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(arg_0, _wgslsmith_mult_u32(arg_0 ^ u_input.d.x, 11555u)) >> (~arg_0 % 32u), u_input.d.x, ~(~(~u_input.a)));
    return -663f;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(34140u, arg_2)) + _wgslsmith_f_op_f32(-2354f + 302f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.a) - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1650f)), arg_2.b), vec3<bool>(!(global0.a.x || false) | true, var_0, all(select(vec2<bool>(arg_3.x, true), global0.a, !vec2<bool>(global0.a.x, false)))), ~(~arg_2.d), select(arg_1, arg_1, var_0));
    global0 = Struct_1(!vec2<bool>(true, var_1.c.x));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(abs(var_1.e), 1u)), 19u)];
    var var_2 = u_input.d;
    return global1[_wgslsmith_index_u32(~90952u, 19u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))))), _wgslsmith_dot_vec3_u32(select(firstTrailingBit(u_input.d) << (~vec3<u32>(1u, 1u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 42674u, 12073u), u_input.d), ~1629u, ~u_input.a), vec3<bool>(true, u_input.d.x != u_input.d.x, true)), vec3<u32>(max(u_input.d.x, _wgslsmith_mult_u32(9493u, u_input.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(34016u, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, u_input.d.x)), u_input.d.x)), Struct_2(-557f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-493f, 556f, 1000f))))), !vec3<bool>(!arg_1.x, arg_0.a.x, arg_1.x), ~min(~vec4<u32>(59345u, 26498u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 4294967295u), vec4<u32>(u_input.d.x, 0u, 34888u, 0u))), ~u_input.d.x), !(!global0.a));
    let var_1 = -u_input.b.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.e, 1i), vec3<i32>(366i, -1i, -abs(u_input.b.x)));
    global0 = Struct_1(vec2<bool>(var_0.a.x, all(!(!arg_0.a))));
    var var_2 = u_input.d.xy;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-459f)));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1730f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1053f + -933f), _wgslsmith_f_op_f32(round(-1216f)), 1114f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(548f, 1188f, -1305f) * vec3<f32>(1190f, 1000f, 597f))))), select(select(!vec3<bool>(arg_0.a.x, false, true), select(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(true, true, global0.a.x), global0.a.x), select(vec3<bool>(false, arg_1.x, var_0.a.x), vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, arg_1.x, false)), !vec3<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x)), !select(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_1.x), vec3<bool>(var_0.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, global0.a.x, true))), select(!select(vec3<bool>(arg_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), !select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(false, arg_0.a.x, true), true), any(vec2<bool>(true, arg_1.x))), select(!vec3<bool>(global0.a.x, true, false), select(select(vec3<bool>(true, false, true), vec3<bool>(var_0.a.x, true, arg_1.x), true), vec3<bool>(true, true, arg_0.a.x), var_0.a.x), vec3<bool>(true, true, false))), ~(~vec4<u32>(~u_input.a, ~14292u, var_2.x, 1u << (0u % 32u))), var_2.x);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = u_input.c.zwy;
    let var_1 = max(reverseBits(vec4<i32>(u_input.c.x, u_input.e, reverseBits(-arg_0.x), _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-1i, u_input.c.x)))), u_input.c);
    return func_4(Struct_1(vec2<bool>(true, (global0.a.x && arg_1.c.x) || global0.a.x)), Struct_1(global0.a), firstTrailingBit(min(vec4<u32>(u_input.a, 22320u, 50807u, arg_1.d.x), arg_1.d) & arg_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(666f * arg_1.b.x)))), _wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(1u, arg_1)))), !select(false, false, global0.a.x)))));
}

fn func_1() -> f32 {
    var var_0 = max(max(vec2<i32>(-u_input.b.x, abs(u_input.b.x)), -(u_input.c.yy >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec2<i32>(u_input.c.x, u_input.e)) >> (~u_input.d.yz % vec2<u32>(32u));
    var var_1 = true;
    var_0 = ~u_input.c.wx;
    var var_2 = func_6(vec2<i32>(-(~(-18047i)) << (u_input.a % 32u), 2147483647i), func_5(func_4(func_2(_wgslsmith_f_op_f32(f32(-1f) * -379f), firstLeadingBit(1u), Struct_2(941f, vec3<f32>(1000f, -531f, -130f), vec3<bool>(false, true, global0.a.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x), u_input.d.x), global0.a), Struct_1(global0.a), vec4<u32>(u_input.d.x, ~19121u, abs(u_input.d.x), max(36159u, 1u)), -1354f), select(!global0.a, vec2<bool>(!global0.a.x, u_input.d.x == 1u), !select(global0.a, vec2<bool>(global0.a.x, true), global0.a))));
    var_1 = var_2.a.x;
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(43877u, u_input.a), vec2<u32>(u_input.d.x, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a) & u_input.d.xx, vec2<u32>(24390u, 1u))), 0u), func_5(func_4(func_2(-748f, firstTrailingBit(u_input.d.x), func_5(Struct_1(vec2<bool>(var_2.a.x, false)), vec2<bool>(global0.a.x, false)), vec2<bool>(false, true)), Struct_1(!global0.a), firstTrailingBit(vec4<u32>(1194u, 71843u, u_input.a, u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1130f)), _wgslsmith_f_op_f32(abs(-778f)))), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-300f + -292f), _wgslsmith_f_op_f32(f32(-1f) * -1516f))), ~(u_input.d.x & 35935u), func_5(Struct_1(global0.a), !var_2.a), vec2<bool>(!global0.a.x, false)).a)));
}

fn func_7(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = max(-59462i >> (~(~_wgslsmith_add_u32(arg_2.e, 0u)) % 32u), ~31638i);
    var var_1 = 4294967295u;
    global2 = -1i;
    var var_2 = 584f;
    let var_3 = global0.a;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), u_input.d.x, func_5(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1013f, 1203f, global0.a.x)), _wgslsmith_f_op_f32(abs(-1685f)))), ~abs(u_input.a), Struct_2(1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1297f, 426f, 233f)), select(vec3<bool>(false, global0.a.x, true), vec3<bool>(global0.a.x, true, false), global0.a.x), ~vec4<u32>(4294967295u, u_input.d.x, 82786u, 0u), u_input.a), select(vec2<bool>(global0.a.x, false), !global0.a, vec2<bool>(true, true))), func_4(global1[_wgslsmith_index_u32(4294967295u, 19u)], func_2(_wgslsmith_f_op_f32(-1063f + 1000f), 60338u, Struct_2(-903f, vec3<f32>(-1593f, -806f, 424f), vec3<bool>(global0.a.x, false, global0.a.x), vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.d.x), u_input.a), func_6(vec2<i32>(-2147483647i, u_input.b.x), Struct_2(147f, vec3<f32>(303f, 2147f, 674f), vec3<bool>(false, global0.a.x, true), vec4<u32>(4294967295u, u_input.a, u_input.d.x, 4294967295u), 73249u)).a), vec4<u32>(_wgslsmith_div_u32(u_input.a, 1u), 1u, 12339u & u_input.d.x, _wgslsmith_clamp_u32(u_input.a, u_input.a, 13092u)), _wgslsmith_f_op_f32(f32(-1f) * -1519f)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(1047f, -1209f)), _wgslsmith_f_op_f32(min(728f, -1115f)), _wgslsmith_f_op_f32(-1475f - 1465f)), vec3<f32>(2117f, 1990f, _wgslsmith_f_op_f32(1000f * 468f)), (67352u << (u_input.a % 32u)) == (u_input.d.x << (65437u % 32u))))));
    global2 = -27430i;
    let var_1 = 1f;
    let var_2 = global1[_wgslsmith_index_u32(var_0.e, 19u)];
    let var_3 = ~(~_wgslsmith_mult_i32(~16143i >> (_wgslsmith_mult_u32(u_input.d.x, 0u) % 32u), u_input.e));
    global2 = -10276i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.a, var_1, 957f) - vec4<f32>(-1000f, -1371f, 709f, var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_1, 1000f)), select(vec4<bool>(global0.a.x, var_0.c.x, var_2.a.x, var_2.a.x), !vec4<bool>(global0.a.x, var_0.c.x, global0.a.x, global0.a.x), vec4<bool>(var_2.a.x, false, global0.a.x, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_0.a, var_1, var_1), vec4<f32>(var_1, 547f, -1193f, -254f)))))))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.e, _wgslsmith_div_u32(max(4294967295u, u_input.a), countOneBits(var_0.e)), ~select(var_0.d.x, 60428u, false), abs(~u_input.a)), vec4<u32>(~u_input.a, _wgslsmith_mod_u32(abs(var_0.e), firstTrailingBit(var_0.e)), u_input.a, u_input.a)));
}

