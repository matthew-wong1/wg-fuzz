struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(64608u, 1u, 1u), vec2<i32>(0i, 2147483647i)), Struct_1(vec3<u32>(0u, 10233u, 0u), vec2<i32>(-4115i, -1i)), Struct_1(vec3<u32>(47251u, 0u, 0u), vec2<i32>(2147483647i, -78306i)), Struct_1(vec3<u32>(48487u, 1u, 4294967295u), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec3<u32>(0u, 41653u, 4294967295u), vec2<i32>(20173i, 3790i)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(-3415i, 21980i)), Struct_1(vec3<u32>(4294967295u, 65243u, 11636u), vec2<i32>(17762i, 48314i)), Struct_1(vec3<u32>(0u, 57744u, 12165u), vec2<i32>(1i, 0i)), Struct_1(vec3<u32>(42029u, 87910u, 7467u), vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec3<u32>(106177u, 13969u, 1u), vec2<i32>(2147483647i, 1521i)), Struct_1(vec3<u32>(0u, 11972u, 43420u), vec2<i32>(-1i, -43491i)), Struct_1(vec3<u32>(22553u, 11382u, 1u), vec2<i32>(34296i, 19115i)), Struct_1(vec3<u32>(4294967295u, 1u, 1u), vec2<i32>(-43135i, 30007i)), Struct_1(vec3<u32>(1u, 0u, 0u), vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<u32>(39037u, 83106u, 68283u), vec2<i32>(0i, 2147483647i)));

var<private> global2: array<Struct_1, 30>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(4294967295u, 96742u, 4294967295u), vec2<i32>(52040i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> Struct_1 {
    global0 = !(!vec2<bool>(true, global0.x));
    var var_0 = !vec4<bool>(any(select(!vec2<bool>(global0.x, true), vec2<bool>(global0.x, false), vec2<bool>(true, true))), global0.x, true, global0.x);
    global1 = array<Struct_1, 15>();
    global2 = array<Struct_1, 30>();
    var var_1 = max(_wgslsmith_mod_vec4_u32(abs(u_input.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global3.a.x, u_input.c.x, 1u), vec4<u32>(4294967295u, u_input.b.x, global3.a.x, 17372u))), vec4<u32>(0u, 22921u, ~(~0u), global3.a.x) << (firstLeadingBit(~(u_input.c >> (vec4<u32>(u_input.b.x, 38269u, u_input.d.x, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u ^ _wgslsmith_sub_u32(select(11142u, 1u ^ global3.a.x, any(vec4<bool>(true, true, false, true))), var_1.x), firstTrailingBit(0u)), 15u)];
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = vec2<bool>(true, -(~arg_0.b.x) < -28804i);
    let var_1 = (((func_1().a.x != (1u >> (1u % 32u))) & true) & true) & any(select(vec2<bool>(0u < arg_2.a.x, false), var_0, true));
    let var_2 = select(vec3<u32>(_wgslsmith_sub_u32(~(~0u), ~u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, arg_2.a.x, arg_0.a.x), min(vec3<u32>(119476u, arg_0.a.x, arg_0.a.x) | vec3<u32>(arg_0.a.x, arg_2.a.x, 1u), vec3<u32>(arg_2.a.x, u_input.b.x, arg_2.a.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, arg_2.a.x, ~56116u, 1u), abs(vec4<u32>(1u, 51442u, global3.a.x, 0u)) >> (u_input.c % vec4<u32>(32u)))), ~global3.a, select(vec3<bool>(true, true, !(!global0.x)), select(!vec3<bool>(false, arg_1, global0.x), !select(vec3<bool>(var_1, var_0.x, arg_1), vec3<bool>(false, false, var_1), vec3<bool>(false, arg_1, var_1)), vec3<bool>(any(vec4<bool>(arg_1, false, global0.x, arg_1)), !var_1, false)), global0.x));
    global1 = array<Struct_1, 15>();
    global3 = func_1();
    return !global0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = vec2<bool>(!(_wgslsmith_mult_u32(arg_3.a.x, ~global3.a.x) >= 0u), all(!vec4<bool>(global0.x, global0.x, func_3(arg_1, false, Struct_1(u_input.c.zzw, vec2<i32>(arg_1.b.x, global3.b.x))), true)));
    let var_0 = select(vec2<i32>(~(-1i), -39783i), ~(~vec2<i32>(arg_1.b.x, 55924i >> (arg_0.a.x % 32u))), select(select(vec2<bool>(select(true, global0.x, global0.x), false), vec2<bool>(true, global0.x), true), !(!select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), global0.x)), global0.x));
    var var_1 = !global0.x;
    var var_2 = global2[_wgslsmith_index_u32(~countOneBits(15040u), 30u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-155f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))))) + vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2)), arg_2));
    return _wgslsmith_f_op_f32(max(-583f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + 1214f))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_1, 15>();
    var var_0 = select(select(!(!(!vec2<bool>(arg_2, true))), vec2<bool>(select(global0.x, global0.x, !global0.x), func_3(func_1(), true, func_1())), arg_2), !vec2<bool>(all(vec3<bool>(true, false, arg_2)), !(global0.x == arg_2)), vec2<bool>(true, !(!all(vec4<bool>(global0.x, arg_2, arg_2, true)))));
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_3, global3.a.x), _wgslsmith_clamp_vec3_u32(u_input.c.xyz, vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.c.x), arg_0.a) >> (~vec3<u32>(87653u, 58152u, arg_0.a.x) % vec3<u32>(32u))));
    global2 = array<Struct_1, 30>();
    var var_2 = Struct_1(~_wgslsmith_add_vec3_u32(u_input.c.zxz, global3.a), firstTrailingBit(~arg_0.b));
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = select(!vec2<bool>(false, !any(vec2<bool>(global0.x, global0.x))), !select(!vec2<bool>(global0.x, global0.x), !(!vec2<bool>(global0.x, false)), true), true);
    var var_0 = func_4(Struct_1(vec3<u32>(select(reverseBits(arg_0.a.x), _wgslsmith_add_u32(arg_0.a.x, global3.a.x), !global0.x), firstTrailingBit(~4294967295u), ~global3.a.x), vec2<i32>(arg_2.b.x ^ (u_input.a | global3.b.x), select(arg_2.b.x, -31490i, all(vec4<bool>(global0.x, false, global0.x, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(f32(-1f) * -705f)) - _wgslsmith_f_op_f32(-1f)), !global0.x, firstLeadingBit(~arg_3));
    let var_1 = u_input.a;
    var var_2 = func_1();
    var_0 = func_4(func_1(), -520f, (global0.x != all(!vec4<bool>(false, true, global0.x, global0.x))) & !global0.x, 7650u);
    return func_4(func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !(_wgslsmith_div_u32(29397u, var_0.a.x) >= 38405u) & !(!global0.x), 14546u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    var var_0 = func_5(func_4(func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(global3.a.x, global3.a.x, u_input.b.x), vec2<i32>(global3.b.x, global3.b.x)), Struct_1(u_input.c.zzx, global3.b), _wgslsmith_f_op_f32(-988f - -160f), global1[_wgslsmith_index_u32(74149u, 15u)]))), global0.x, 1u), ~vec3<i32>(~abs(u_input.a), min(u_input.a, 2147483647i), _wgslsmith_add_i32(2147483647i, ~global3.b.x)), func_4(global2[_wgslsmith_index_u32(~u_input.b.x, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec3<u32>(global3.a.x, 31877u, 4294967295u), vec2<i32>(47224i, u_input.a)), global1[_wgslsmith_index_u32(1u, 15u)], -474f, Struct_1(vec3<u32>(18366u, 4294967295u, 4294967295u), vec2<i32>(18579i, 42505i)))), 421f)), all(!vec4<bool>(global0.x, global0.x, global0.x, global0.x)), ~(~(~global3.a.x))), u_input.d.x >> (global3.a.x % 32u));
    global2 = array<Struct_1, 30>();
    global3 = global2[_wgslsmith_index_u32(var_0.a.x, 30u)];
    global2 = array<Struct_1, 30>();
    let var_1 = func_5(Struct_1(global3.a << (select(~u_input.c.wwx, vec3<u32>(0u, global3.a.x, 4294967295u), !vec3<bool>(global0.x, global0.x, true)) % vec3<u32>(32u)), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(53924i, 0i), global3.b), countOneBits(vec2<i32>(7806i, 1i)))), vec3<i32>(var_0.b.x, _wgslsmith_mod_i32(~u_input.a, 1i), var_0.b.x) | ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, u_input.a, u_input.a)), vec3<i32>(u_input.a, global3.b.x, u_input.a) | vec3<i32>(global3.b.x, 17045i, var_0.b.x)), Struct_1(global3.a, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global3.b, _wgslsmith_sub_vec2_i32(var_0.b, var_0.b)), (vec2<i32>(var_0.b.x, var_0.b.x) & global3.b) | var_0.b)), var_0.a.x);
    let var_2 = func_1();
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(792f, -422f, 764f) - vec3<f32>(914f, 372f, 1716f))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -443f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(trunc(-2465f))) - var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_3.x))), -1564f), _wgslsmith_f_op_f32(var_3.x * _wgslsmith_div_f32(var_3.x, var_3.x)));
}

