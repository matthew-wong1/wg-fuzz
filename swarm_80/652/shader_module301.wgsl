struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec3<i32>(1i, 1i, -5511i), vec2<bool>(true, false), -11190i, Struct_1(964f, 471f)), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec3<i32>(11466i, 25195i, 0i), vec2<bool>(true, true), 0i, Struct_1(-179f, -1093f)), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec3<i32>(2147483647i, -53505i, -88073i), vec2<bool>(false, true), -1i, Struct_1(1268f, 642f)), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec3<i32>(2147483647i, 2147483647i, 0i), vec2<bool>(true, true), -46091i, Struct_1(-641f, 701f)), vec3<bool>(false, true, true)), Struct_3(Struct_2(vec3<i32>(13981i, -1i, -22877i), vec2<bool>(true, false), 0i, Struct_1(-1856f, -868f)), vec3<bool>(false, false, true)), Struct_3(Struct_2(vec3<i32>(-10114i, 4587i, i32(-2147483648)), vec2<bool>(false, false), 1i, Struct_1(1421f, -542f)), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec3<i32>(2147483647i, 0i, 2847i), vec2<bool>(true, true), 2147483647i, Struct_1(-1096f, -195f)), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec3<i32>(38754i, 22123i, -1i), vec2<bool>(true, true), 2147483647i, Struct_1(-211f, -426f)), vec3<bool>(true, true, false)), Struct_3(Struct_2(vec3<i32>(-1i, 3785i, -34835i), vec2<bool>(true, true), -17866i, Struct_1(102f, 1154f)), vec3<bool>(true, false, false)), Struct_3(Struct_2(vec3<i32>(1i, -10103i, 20934i), vec2<bool>(false, true), -78883i, Struct_1(1000f, 1077f)), vec3<bool>(true, false, true)), Struct_3(Struct_2(vec3<i32>(51903i, -26269i, i32(-2147483648)), vec2<bool>(true, true), 42785i, Struct_1(1203f, -794f)), vec3<bool>(false, true, true)), Struct_3(Struct_2(vec3<i32>(2147483647i, -28836i, 29013i), vec2<bool>(false, false), -1i, Struct_1(-1000f, 1667f)), vec3<bool>(true, false, true)), Struct_3(Struct_2(vec3<i32>(0i, 1i, 1i), vec2<bool>(false, false), -1i, Struct_1(-339f, -1323f)), vec3<bool>(true, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(42121u, abs(firstTrailingBit(~20667u))), min(reverseBits(4294967295u), u_input.a << (~_wgslsmith_sub_u32(4294967295u, 47870u) % 32u)), 1u, ~_wgslsmith_mod_u32(4294967295u, u_input.a));
    var var_1 = 73451u;
    let var_2 = ~vec4<i32>(-14743i, -1i, (u_input.c.x | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 23958i, 50439i), arg_1)) & 2147483647i, ~abs(-2147483647i));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_0.a.a.d.a, arg_0.a.a.d.a)), arg_0.a.a.d.b, arg_0.a.a.d.a, 488f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.d.b, arg_0.a.a.d.a, 1f, arg_0.a.a.d.b)));
    let var_4 = arg_0.b;
    return u_input.d;
}

fn func_3() -> u32 {
    global0 = array<Struct_3, 13>();
    let var_0 = vec4<u32>(_wgslsmith_div_u32(max(firstLeadingBit(func_1(Struct_4(global0[_wgslsmith_index_u32(u_input.d, 13u)], vec2<bool>(false, true)), vec3<i32>(u_input.c.x, 0i, u_input.b))), u_input.e.x << (~11806u % 32u)), u_input.d), ~_wgslsmith_dot_vec3_u32(abs(u_input.e), vec3<u32>(u_input.d & 1u, ~0u, _wgslsmith_add_u32(1u, u_input.d))), u_input.e.x, min(~u_input.a, u_input.d));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1324f, -286f)) - -1849f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1514f, 1143f)))))));
    var var_2 = Struct_4(Struct_3(Struct_2(countOneBits(vec3<i32>(8125i, u_input.c.x, 4687i)), vec2<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, true))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-58211i, u_input.b), -u_input.b), var_1), vec3<bool>(true, true, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b))) <= _wgslsmith_f_op_f32(-var_1.a)));
    let var_3 = Struct_4(var_2.a, var_2.a.b.xz);
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_3, 13>();
    var var_0 = reverseBits(reverseBits(_wgslsmith_dot_vec2_i32(u_input.c, -(u_input.c | u_input.c))));
    let var_1 = ~(firstLeadingBit(~1u) | _wgslsmith_sub_u32(~(4294967295u | arg_0), _wgslsmith_sub_u32(arg_0, ~arg_0)));
    let var_2 = global0[_wgslsmith_index_u32(0u ^ (77910u & ~(~arg_0)), 13u)];
    let var_3 = -_wgslsmith_add_vec3_i32(var_2.a.a, -_wgslsmith_div_vec3_i32(var_2.a.a, ~var_2.a.a));
    return Struct_2(vec3<i32>(arg_1, firstLeadingBit(2147483647i), abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_3.x, -47437i), var_3))), var_2.b.yz, max(1i >> (func_3() % 32u), select(countOneBits(arg_1 >> (4294967295u % 32u)), arg_1, all(var_2.b) || any(vec2<bool>(var_2.a.b.x, var_2.b.x)))), Struct_1(-134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a.d.a, _wgslsmith_f_op_f32(step(-284f, -378f)))) + -1057f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_4 {
    let var_0 = vec4<i32>(~reverseBits(1i), countOneBits(-(-arg_1.a.c >> (50689u % 32u))), -2147483647i, _wgslsmith_mult_i32(-323i & countOneBits(u_input.c.x), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(arg_1.a.c, ~9383i, _wgslsmith_clamp_i32(u_input.b, arg_1.a.c, 4798i)), _wgslsmith_sub_i32(-arg_1.a.a.x, -2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_0.a.x, -20585i), _wgslsmith_div_i32(arg_1.a.c, arg_0.c)))));
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    let var_1 = _wgslsmith_div_f32(arg_1.a.d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(672f)))) - 1000f));
    return Struct_4(Struct_3(Struct_2(func_2(_wgslsmith_sub_u32(u_input.a, u_input.d), arg_0.a.x >> (1u % 32u)).a, select(!vec2<bool>(true, arg_1.a.b.x), !arg_0.b, arg_0.b), -28518i, func_2(1u, 1i).d), vec3<bool>(all(!arg_1.a.b), func_2(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.a.x, 25284i, -2147483647i, -19498i), vec4<i32>(30357i, var_0.x, u_input.c.x, arg_0.a.x))).b.x, -16632i >= _wgslsmith_add_i32(arg_1.a.c, arg_1.a.a.x))), vec2<bool>(true, arg_1.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 13>();
    let var_0 = vec3<u32>(~61972u, ~min(u_input.a, u_input.d), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~4294967295u, ~_wgslsmith_add_u32(u_input.d, u_input.e.x)), ~reverseBits(func_1(Struct_4(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], vec2<bool>(true, true)), vec3<i32>(34630i, u_input.c.x, -5669i)))));
    var var_1 = func_4(func_2(54339u, u_input.c.x), Struct_3(func_2(~u_input.e.x | _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.d), vec2<u32>(0u, 0u)), u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), false, u_input.c.x < 1i), vec3<bool>(any(vec2<bool>(false, true)), true, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.d.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.d.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.a.d.b - 503f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-299f, -379f))))));
    var_2 = var_1.a.a.d;
    var_2 = func_4(var_1.a.a, Struct_3(func_2(105504u, var_1.a.a.c | min(u_input.c.x, u_input.b)), !var_1.a.b)).a.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(-select(~min(vec4<i32>(u_input.c.x, -2147483647i, var_1.a.a.a.x, var_1.a.a.c), vec4<i32>(u_input.b, var_1.a.a.c, u_input.c.x, 1i)), vec4<i32>(i32(-1i) * -6329i, ~var_1.a.a.c, _wgslsmith_sub_i32(19523i, u_input.b), -2147483647i), true), 1000f);
}

