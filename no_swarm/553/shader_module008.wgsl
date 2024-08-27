struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-22370i, 16501i), vec2<i32>(-28173i, -24175i), vec2<i32>(-1i, 41834i), vec2<i32>(2147483647i, -38964i), vec2<i32>(-1i, 0i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 2724i), vec2<i32>(-1i, 2147483647i), vec2<i32>(20291i, 0i), vec2<i32>(0i, -1i), vec2<i32>(34877i, -1i));

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(5156u), Struct_2(4294967295u), Struct_2(104840u), Struct_2(4458u), Struct_2(29051u), Struct_2(1u), Struct_2(1u), Struct_2(1u), Struct_2(12341u), Struct_2(28281u), Struct_2(4294967295u), Struct_2(22229u), Struct_2(0u), Struct_2(12251u), Struct_2(0u), Struct_2(1u), Struct_2(0u), Struct_2(4294967295u));

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = 4294967295u;
    global0 = arg_1.a.a;
    global0 = max(arg_2.a, u_input.c.x);
    let var_1 = Struct_2(1u);
    let var_2 = var_1.a;
    return var_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(461f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1311f)), -851f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1127f) * -1709f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-301f, 1f)))));
}

fn func_1() -> Struct_1 {
    let var_0 = any(vec3<bool>(min(4294967295u, func_2(u_input.b, Struct_3(Struct_1(u_input.b, 18271u), 61601u), Struct_1(u_input.a, 96183u), u_input.c.x)) >= ~4294967295u, !any(vec4<bool>(true, false, true, false)), true));
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-378f, -2339f) * vec2<f32>(-2055f, 1012f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, 1535f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(515f, -860f), vec2<f32>(1000f, -1013f)))) * vec2<f32>(-493f, -389f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(2820f, var_1.x, 426f, var_1.x))) + _wgslsmith_f_op_vec4_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(53532u, 51506u), 18u)], all(vec4<bool>(true, var_0, var_0, var_0))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -539f, 462f, var_1.x)) * vec4<f32>(var_1.x, 325f, 682f, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-436f - var_1.x), -1604f, _wgslsmith_f_op_f32(-485f * var_1.x), _wgslsmith_f_op_f32(var_1.x - -270f)))))));
    var var_3 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(u_input.d.x, ~(~u_input.b), -2147483647i), max(-vec3<i32>(u_input.d.x, 2147483647i, 38000i) << (_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 64382u), vec3<u32>(22209u, 85928u, 49001u)) % vec3<u32>(32u)), vec3<i32>(abs(u_input.c.x), ~4890i, u_input.d.x))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.c.x, -2147483647i, u_input.d.x) >> (vec3<u32>(1u, firstLeadingBit(1u), ~8285u) % vec3<u32>(32u)), u_input.c.zxx));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.wz)))))));
    return Struct_1(~_wgslsmith_mod_i32(~(23825i | u_input.c.x), _wgslsmith_div_i32(var_3.x, var_3.x & u_input.d.x)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(1u, _wgslsmith_sub_u32(1u, 0u)), true), vec2<u32>(~_wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 75160u), vec2<u32>(0u, 1u)), abs(1u), 70378u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global2 = array<Struct_2, 18>();
    var var_0 = arg_2;
    var var_1 = u_input.c >> (vec4<u32>(~_wgslsmith_add_u32(~arg_2.b, 32740u), 33165u, 1u, max(var_0.a.b, arg_0.b)) % vec4<u32>(32u));
    var var_2 = 1u;
    let var_3 = arg_2.a.a;
    return global2[_wgslsmith_index_u32(~(~max(_wgslsmith_sub_u32(var_0.b << (12474u % 32u), countOneBits(1u)), ~reverseBits(43694u))), 18u)];
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    global2 = array<Struct_2, 18>();
    global2 = array<Struct_2, 18>();
    global0 = u_input.d.x;
    var var_0 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), true), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), false)), !select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), true)), !select(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, false, true)), any(vec3<bool>(false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), true));
    let var_1 = -(1i >> (_wgslsmith_sub_u32(~(~arg_0.a), ~(396u >> (arg_0.a % 32u))) % 32u));
    return StorageBuffer(92741u, ~select(vec3<u32>(57798u, ~arg_0.a, ~arg_0.a), vec3<u32>(~arg_0.a, _wgslsmith_div_u32(1u, arg_0.a), arg_0.a), var_0.x), ~u_input.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-159f)) - _wgslsmith_f_op_f32(-222f + 796f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-763f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1476f + -148f) + _wgslsmith_f_op_f32(f32(-1f) * -701f)), _wgslsmith_f_op_f32(min(-706f, _wgslsmith_f_op_f32(964f - 1268f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(func_1(), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2187f, -191f, 963f, 257f) + vec4<f32>(1050f, 1613f, 1757f, -1382f)), vec4<f32>(-1505f, -215f, 443f, -841f)))), Struct_3(func_1(), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22378u, 40431u, 1u, 49619u), vec4<u32>(0u, 4294967295u, 34138u, 0u)), _wgslsmith_mult_u32(4294967295u, 1u))), 776f));
}

