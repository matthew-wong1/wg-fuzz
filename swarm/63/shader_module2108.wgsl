struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: u32 = 0u;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> f32 {
    global2 = select(!arg_1.yzy, vec3<bool>(!(!(!arg_1.x)), arg_0.a <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) + _wgslsmith_f_op_f32(-arg_0.a)), any(vec4<bool>(true, any(arg_1), global2.x, true))), any(vec3<bool>(true, !arg_1.x, true)) & true);
    let var_0 = Struct_1(arg_0.a, -3660i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(arg_0.a, 593f, (true && select(global2.x, false, arg_1.x)) & !global2.x)), countOneBits(u_input.a.x));
    var var_2 = true;
    let var_3 = -424f;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), 935f));
}

fn func_2() -> Struct_1 {
    global1 = ~22001u;
    var var_0 = _wgslsmith_clamp_vec3_i32(-u_input.a, ~reverseBits(-u_input.a), vec3<i32>(-_wgslsmith_add_i32(-1i, 1i & u_input.a.x), abs(u_input.a.x), -1i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(533f, -56672i), select(vec4<bool>(true, any(global2.yx), global2.x, any(vec3<bool>(false, false, global2.x))), select(vec4<bool>(true, false, global2.x, true), !vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(true, false, global2.x, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, global2.x), true), !vec4<bool>(global2.x, global2.x, global2.x, true), any(vec4<bool>(global2.x, global2.x, false, true)))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~max(-vec4<i32>(var_0.x, var_0.x, -97421i, -2993i), ~vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, var_0.x)))), -(u_input.a.x >> (_wgslsmith_add_u32(38011u, abs(1u)) % 32u)));
    global2 = vec3<bool>(false, false, true);
    var var_2 = var_1;
    return var_1;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = func_2();
    let var_1 = func_2();
    global2 = select(select(select(vec3<bool>(global2.x, true, any(vec3<bool>(global2.x, global2.x, true))), !vec3<bool>(true, global2.x, true), true), !vec3<bool>(true, !global2.x, true), !vec3<bool>(false, select(true, true, global2.x), all(vec3<bool>(global2.x, global2.x, global2.x)))), !vec3<bool>(!(global2.x | true), false, true || all(vec2<bool>(false, true))), select(vec3<bool>(any(global2.xz), true, !(0i >= arg_2.b)), vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(global2.x, global2.x, global2.x), false)), !all(vec3<bool>(global2.x, true, true)), true), true));
    global0 = arg_1.x;
    global0 = _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 59912u), vec4<u32>(17720u, arg_1.x, 47503u, arg_1.x)), 40677u, firstLeadingBit(arg_1.x)) & firstLeadingBit(abs(vec4<u32>(arg_1.x, 1u, arg_1.x, arg_1.x)))), _wgslsmith_add_vec4_u32(vec4<u32>(9946u, ~arg_1.x, arg_1.x, ~(~arg_1.x)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, ~arg_1.x, ~arg_1.x, ~arg_1.x), ~vec4<u32>(0u, 66987u, 81750u, arg_1.x) | ~vec4<u32>(0u, 4907u, arg_1.x, arg_1.x))));
    return arg_1.x;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = ~reverseBits(arg_1.zy);
    let var_1 = vec2<f32>(-256f, -397f);
    global2 = !vec3<bool>(all(select(global2.zz, vec2<bool>(false, global2.x), global2.zz)), arg_0 >= ~_wgslsmith_div_u32(38014u, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -205f) == var_1.x);
    global0 = _wgslsmith_mod_u32(min(~var_0.x, ~arg_1.x), 4294967295u);
    global1 = ~abs(~_wgslsmith_dot_vec3_u32(arg_1, arg_1)) >> (_wgslsmith_add_u32(_wgslsmith_div_u32(~(~var_0.x), _wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, var_0.x), arg_1.x)), ~abs(countOneBits(arg_1.x))) % 32u);
    return Struct_1(219f, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.zy;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1331f, -273f))))), abs(-29656i >> ((select(0u, 69336u, true) << (~103249u % 32u)) % 32u)));
    var var_2 = func_4(countOneBits(_wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_sub_u32(21757u, 615u))) >> (~func_1(reverseBits(-2147483647i), firstTrailingBit(vec3<u32>(4294967295u, 36533u, 52300u)), Struct_1(778f, u_input.a.x)) % 32u), ~(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(23274u, 44182u, 2817u), vec3<u32>(1u, 33613u, 94880u)), vec3<u32>(0u, 1u, 0u)) & ~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(floor(var_1.a)), false)) - 1000f));
    let var_3 = -1i;
    global0 = _wgslsmith_sub_u32(func_1(8096i, vec3<u32>(_wgslsmith_div_u32(max(0u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 26794u), vec2<u32>(4294967295u, 0u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 85720u, 0u), vec3<u32>(9784u, 1u, 1u))), func_1(1i, vec3<u32>(1u, 1u, 1u), Struct_1(191f, -1i))), Struct_1(_wgslsmith_f_op_f32(select(func_4(1u, vec3<u32>(1u, 15393u, 41657u), var_1.a).a, _wgslsmith_f_op_f32(f32(-1f) * -2019f), global2.x)), var_1.b)), ~0u);
    global2 = vec3<bool>(global2.x, false, !global2.x);
    global0 = ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(46066u, 5383u)), 0u), ~func_1(1i, abs(vec3<u32>(75381u, 17252u, 41823u)), var_1), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(-1616f, ~vec2<i32>(var_1.b, _wgslsmith_mult_i32(u_input.a.x, ~17596i)), vec4<u32>(_wgslsmith_sub_u32(select(~7954u, 0u, global2.x), 0u), select(~_wgslsmith_div_u32(0u, 4294967295u), 1u, global2.x), 53375u, ~1u << (_wgslsmith_sub_u32(~14950u, _wgslsmith_clamp_u32(0u, 0u, 10100u)) % 32u)), vec2<i32>(var_2.b, reverseBits(abs(func_2().b))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(~1u), ~4294967295u), vec2<u32>(~select(0u, 46545u, global2.x), 23339u)));
}

