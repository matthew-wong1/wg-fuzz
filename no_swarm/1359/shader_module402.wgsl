struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_4 = Struct_4(false, false, Struct_1(vec2<bool>(false, false)), vec2<u32>(17584u, 70731u));

var<private> global2: array<vec3<f32>, 19>;

var<private> global3: array<Struct_3, 32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    let var_0 = vec4<bool>(any(select(vec4<bool>(global1.c.a.x, global1.b, all(vec4<bool>(arg_0.e.x, false, true, arg_0.c.a.x)), true), vec4<bool>(arg_0.e.x, true, arg_1.x > arg_1.x, true), !select(arg_0.e, arg_0.e, arg_0.b.a.x))), all(select(!global1.c.a, vec2<bool>(true, global1.c.a.x), global1.c.a)), true, !(~select(arg_0.d.x, 22126u, true) >= 1u));
    global1 = Struct_4(any(var_0.wxy), false, Struct_1(vec2<bool>(all(!var_0.xw), !any(vec2<bool>(true, arg_0.e.x)))), arg_0.a);
    let var_1 = arg_1;
    let var_2 = arg_0.e.xwx;
    let var_3 = global3[_wgslsmith_index_u32(u_input.a.x, 32u)];
    return 0u;
}

fn func_2() -> vec2<f32> {
    var var_0 = max(firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(-63945i, 15927i), ~2147483647i, -2147483647i, abs(-1i))) >> ((min(vec4<u32>(u_input.c, u_input.a.x, 59453u, 1u), reverseBits(vec4<u32>(u_input.b.x, global1.d.x, global1.d.x, 0u))) | vec4<u32>(_wgslsmith_div_u32(74990u, 1u), func_3(Struct_2(global1.d, global1.c, global0[_wgslsmith_index_u32(1u, 1u)], vec2<u32>(u_input.a.x, global1.d.x), vec4<bool>(true, true, true, true)), vec4<i32>(0i, 2147483647i, -49837i, -1i)), _wgslsmith_div_u32(global1.d.x, 4294967295u), global1.d.x ^ 11697u)) % vec4<u32>(32u)), max(-_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, -1009i, -2147483647i, -2147483647i), select(vec4<i32>(1i, 2147483647i, -20651i, -2147483647i), vec4<i32>(-1i, -16269i, -2147483647i, -1i), vec4<bool>(global1.a, false, global1.a, global1.a))), vec4<i32>(-21090i, -max(0i, 1i), -12728i, ~(i32(-1i) * -1i))));
    global0 = array<Struct_1, 1>();
    var var_1 = Struct_4(!global1.c.a.x, !global1.a, Struct_1(!select(global1.c.a, !global1.c.a, select(vec2<bool>(global1.b, true), vec2<bool>(global1.c.a.x, true), global1.c.a))), _wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(u_input.c, 5707u) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), u_input.b, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b, global1.d), vec2<u32>(0u, u_input.b.x)) << (global1.d % vec2<u32>(32u))));
    var var_2 = !vec3<bool>(true, global1.c.a.x, any(vec3<bool>(var_0.x <= 12544i, global1.b, true)));
    global0 = array<Struct_1, 1>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-429f, 1025f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1408f, 1524f))), select(vec2<bool>(true, global1.c.a.x), vec2<bool>(false, false), global1.c.a.x))) - vec2<f32>(_wgslsmith_div_f32(-980f, 891f), _wgslsmith_f_op_f32(1418f + -695f)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-256f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-166f, -164f))))), vec2<f32>(-384f, _wgslsmith_f_op_f32(round(447f)))));
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(vec2<bool>(false, false));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, 672f) + vec2<f32>(-464f, 485f)), vec2<f32>(-873f, 249f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1195f, -134f), vec2<f32>(-898f, -662f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(190f, 1545f)), 1827f))));
    let var_2 = Struct_3(vec2<u32>(6541u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global1.d.x), vec2<u32>(9677u, u_input.b.x))) & global1.d, Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(57495u, global1.d.x)), u_input.b.x), Struct_1(global1.c.a), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~0u), global1.d.x, u_input.a.x), 1u)], countOneBits(u_input.a), select(vec4<bool>(var_0.a.x || var_0.a.x, !global1.b, any(vec3<bool>(true, false, global1.c.a.x)), !var_0.a.x), vec4<bool>(true, var_0.a.x, !global1.c.a.x, any(var_0.a)), select(select(vec4<bool>(false, global1.a, global1.c.a.x, var_0.a.x), vec4<bool>(false, true, global1.b, true), var_0.a.x), vec4<bool>(var_0.a.x, global1.c.a.x, true, false), any(vec4<bool>(false, true, global1.b, var_0.a.x))))));
    var var_3 = 1254f;
    var var_4 = Struct_4(!all(select(vec3<bool>(var_2.b.e.x, true, var_0.a.x), !var_2.b.e.yzw, !vec3<bool>(var_2.b.b.a.x, false, true))), true, Struct_1(vec2<bool>(any(vec4<bool>(global1.a, false, var_0.a.x, var_0.a.x)), select(all(vec2<bool>(var_0.a.x, false)), true, true))), global1.d);
    return Struct_4(!any(!(!vec3<bool>(true, var_2.b.e.x, var_4.b))), true, Struct_1(global1.c.a), u_input.a);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 1>();
    let var_0 = u_input.b.x;
    let var_1 = ~(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8286u, var_0, 19802u, 29086u), vec4<u32>(u_input.c, global1.d.x, 1u, 4294967295u)), 1u)) << (~(~global1.d) % vec2<u32>(32u)));
    global0 = array<Struct_1, 1>();
    global3 = array<Struct_3, 32>();
    return Struct_2(var_1, global0[_wgslsmith_index_u32(arg_0.d.x, 1u)], Struct_1(select(select(select(vec2<bool>(true, true), arg_1.a, arg_1.a), select(vec2<bool>(arg_1.a.x, true), global1.c.a, false), vec2<bool>(true, false)), arg_1.a, all(vec4<bool>(arg_1.a.x, arg_0.a, true, true)))), _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(global1.d.x) & _wgslsmith_sub_u32(var_1.x, 0u), 4294967295u), ~firstLeadingBit(arg_0.d)), select(vec4<bool>(true | all(vec3<bool>(arg_0.c.a.x, global1.b, arg_1.a.x)), !arg_0.c.a.x && arg_0.a, all(vec2<bool>(arg_1.a.x, arg_1.a.x)), func_1().b), vec4<bool>(true, select(true, all(vec4<bool>(global1.a, true, true, arg_0.b)), any(vec2<bool>(arg_1.a.x, global1.c.a.x))), func_1().d.x < abs(var_0), false), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~reverseBits(~(~vec2<u32>(1u, 18968u))), func_4(func_1(), func_1().c));
    var var_1 = ~select(abs(~_wgslsmith_div_vec4_u32(vec4<u32>(2739u, 44952u, var_0.a.x, global1.d.x), vec4<u32>(u_input.c, var_0.b.a.x, 53098u, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(3761u, 0u), 4294967295u, 1u, _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, 0u, 36963u, u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.d.x, global1.d.x, global1.d.x, 4294967295u), vec4<u32>(u_input.c, 0u, 24770u, u_input.a.x), vec4<u32>(global1.d.x, 118845u, u_input.a.x, var_0.a.x)))), var_0.b.e);
    let var_2 = _wgslsmith_f_op_f32(floor(1157f));
    global3 = array<Struct_3, 32>();
    global1 = Struct_4(true, global1.b, Struct_1(select(func_1().c.a, vec2<bool>(true || var_0.b.b.a.x, true), var_0.b.e.x)), ~vec2<u32>(_wgslsmith_mult_u32(global1.d.x, reverseBits(35444u)), 0u));
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_1.x, 19u)], firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(13924u, u_input.a.x), 65765u)));
}

