struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
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

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 8>;

var<private> global2: vec4<i32> = vec4<i32>(1i, -400i, 1i, -27796i);

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(-1195f), Struct_4(1656f), Struct_4(-1615f), Struct_4(-271f), Struct_4(527f), Struct_4(662f), Struct_4(565f), Struct_4(1772f), Struct_4(683f), Struct_4(-1698f), Struct_4(-872f), Struct_4(-509f), Struct_4(809f), Struct_4(1342f), Struct_4(-273f), Struct_4(-1905f), Struct_4(-177f), Struct_4(247f), Struct_4(1000f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * arg_2.a));
    var var_1 = Struct_2(Struct_1(arg_3.c, max(firstTrailingBit(arg_1.b), ~arg_0)), false | all(!(!vec4<bool>(arg_3.b, true, true, arg_3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))));
    var var_2 = Struct_4(arg_2.a);
    var var_3 = abs(arg_1.b.x);
    var_1 = Struct_2(var_1.a, !(arg_3.b || true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - arg_3.a.a) * -823f) + var_1.c)));
    return vec2<u32>(~(var_1.a.b.x & firstLeadingBit(abs(arg_1.b.x))), ~48358u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> bool {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 29870u), func_3(arg_1, Struct_1(arg_3.a, vec3<u32>(1u, 25492u, 20313u)), global3[_wgslsmith_index_u32(0u, 19u)], Struct_2(Struct_1(arg_2.a, vec3<u32>(0u, u_input.a.x, arg_1.x)), true, 859f)))), 20330u, 23342u, 1176u >> (_wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_1.x, u_input.a.x), u_input.a.x & 36610u, _wgslsmith_mult_u32(1u, arg_1.x)) % 32u)) >> (select(firstTrailingBit(~firstLeadingBit(vec4<u32>(16637u, arg_1.x, u_input.a.x, 0u))), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 48123u, 77384u, 1u), vec4<u32>(u_input.a.x, 4294967295u, arg_1.x, 84782u)) & vec4<u32>(0u, 24460u, 22223u, 45415u), ~(~vec4<u32>(469u, arg_1.x, 40550u, arg_1.x))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), false))) % vec4<u32>(32u));
    global0 = ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, var_0.x, 0u, u_input.a.x), vec4<u32>(var_0.x, 0u, arg_1.x, 1u)), firstLeadingBit(countOneBits(vec4<u32>(var_0.x, arg_1.x, 46294u, u_input.a.x)))) ^ _wgslsmith_clamp_u32(65731u, select(u_input.a.x, ~arg_1.x, !(-921f > arg_2.a)), var_0.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a * _wgslsmith_f_op_f32(f32(-1f) * -1086f))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, max(7568u, 55648u)), vec3<u32>(arg_1.x, arg_1.x, 4294967295u) >> (vec3<u32>(42540u, 53015u, var_0.x) % vec3<u32>(32u)))), true, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1338f), _wgslsmith_f_op_f32(-1692f * -1970f)))), 982f));
    let var_2 = arg_0;
    let var_3 = var_1;
    return any(select(select(!select(vec2<bool>(true, var_3.b), vec2<bool>(true, var_1.b), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, var_1.b)), vec2<bool>(false, true)), _wgslsmith_f_op_f32(var_1.a.a * arg_3.a) <= _wgslsmith_f_op_f32(arg_0.a + -1463f)), !(!vec2<bool>(var_1.b, var_3.b)), true));
}

fn func_1() -> StorageBuffer {
    var var_0 = select(vec4<bool>(false, _wgslsmith_add_u32(1u | u_input.a.x, ~u_input.a.x) == u_input.a.x, true, true && (true || (u_input.a.x < 44025u))), vec4<bool>(!all(vec4<bool>(true, true, true, true)), true & any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), true, select(any(vec4<bool>(true, true, true, true)), true || all(vec2<bool>(true, true)), !func_2(Struct_3(-848f), vec3<u32>(1u, u_input.a.x, 63127u), Struct_3(1526f), Struct_3(-1000f)))), !vec4<bool>(!(u_input.b.x > -23732i), true, all(vec2<bool>(true, true)), true));
    var var_1 = -176f;
    let var_2 = 0i;
    var_1 = _wgslsmith_f_op_f32(min(284f, _wgslsmith_f_op_f32(sign(-1451f))));
    global3 = array<Struct_4, 19>();
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(step(1608f, 909f)))) * 1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(reverseBits(vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(1u, ~1u, firstTrailingBit(50746u)), 1u)));
    var var_1 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(42851u ^ var_0.x, min(u_input.a.x, u_input.a.x)), 4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 31923u), ~vec2<u32>(2833u, var_0.x))), 73287u, ~(4294967295u << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0, var_0), var_0) % 32u)), 1u);
    let var_2 = 65836u;
    let x = u_input.a;
    s_output = func_1();
}

