struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = Struct_3(u_input.d.x, Struct_1(true, vec2<u32>(arg_0.x, u_input.c.x)));
    var_0 = Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(76694u, u_input.c.x, arg_3.x, 39036u) ^ vec4<u32>(arg_3.x, u_input.b, 0u, arg_0.x), vec4<u32>(var_0.b.b.x, arg_3.x, 54604u, 5692u) << (vec4<u32>(arg_0.x, var_0.a, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(16140u), abs(4294967295u), _wgslsmith_sub_u32(arg_3.x, var_0.a), 51390u), ~(~vec4<u32>(4294967295u, u_input.c.x, 1u, arg_3.x)))), var_0.b);
    var var_1 = abs(~(~arg_2.x));
    var_1 = 1i;
    var var_2 = Struct_2(~(~(~min(var_0.a, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -678f))), vec4<bool>(!((1i < arg_2.x) || !var_0.b.a), false, var_0.b.a, !all(vec3<bool>(var_0.b.a, false, true))));
    return select(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~17873u), 54646u, 1u, 35504u), vec4<u32>(0u, ~12682u, 1u, ~arg_3.x) >> (_wgslsmith_add_vec4_u32(min(vec4<u32>(17131u, arg_0.x, var_0.b.b.x, arg_3.x), vec4<u32>(arg_3.x, 19391u, 4294967295u, 1u)), ~vec4<u32>(var_0.a, arg_0.x, 4294967295u, var_2.a)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.a, arg_0.x, arg_0.x) ^ ~vec4<u32>(var_0.a, 0u, 27138u, arg_3.x), vec4<u32>(max(arg_3.x, arg_3.x), 1u, ~1u, _wgslsmith_mod_u32(arg_3.x, var_0.a))) << (reverseBits(vec4<u32>(9557u, arg_3.x, firstTrailingBit(0u), ~arg_0.x)) % vec4<u32>(32u)), var_2.c);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec2<f32> {
    var var_0 = func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(95277u, 1u), 14860u), 63219u, _wgslsmith_mod_u32(4294967295u, 1u) | reverseBits(arg_1.x)), _wgslsmith_sub_vec3_u32(~abs(arg_1), select(~u_input.c, _wgslsmith_mod_vec3_u32(u_input.c, arg_1), global0[_wgslsmith_index_u32(u_input.b, 21u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, -836f, 350f)))))), ~(~(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) & vec4<i32>(u_input.a, -3152i, -2147483647i, u_input.a))), u_input.c);
    var var_1 = _wgslsmith_mod_u32(max(_wgslsmith_div_u32(firstLeadingBit(22210u) << (~arg_1.x % 32u), u_input.c.x), ~(~0u)), 38187u);
    var_0 = reverseBits(vec4<u32>(~4294967295u, arg_0, arg_0, u_input.d.x ^ max(4294967295u, arg_1.x)));
    var_1 = (abs(~arg_0) >> ((u_input.b << (11428u % 32u)) % 32u)) ^ _wgslsmith_mod_u32(~_wgslsmith_add_u32(0u, arg_0), abs(var_0.x));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(6891u, arg_0, 4294967295u, arg_1.x) ^ vec4<u32>(20306u, u_input.d.x, arg_0, 4294967295u)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x, 55718u), abs(4294967295u)), arg_1.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.d.x), u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.x, arg_0), ~arg_1))), 21u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1927f)) - vec2<f32>(1842f, -1112f)) + vec2<f32>(-1207f, -681f)))) * vec2<f32>(-316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-947f)) * -478f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> u32 {
    global0 = array<vec3<bool>, 21>();
    global0 = array<vec3<bool>, 21>();
    var var_0 = vec4<bool>(true, false, any(vec4<bool>(select(all(arg_0.c), true, all(arg_0.c.zz)), true, false, true)), true);
    let var_1 = u_input.a;
    var var_2 = Struct_1(all(arg_0.c.ywx), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a, _wgslsmith_clamp_u32(arg_0.a, 68390u, 59736u)), ~vec2<u32>(u_input.b, 19048u)), abs(firstLeadingBit(u_input.d)) | ~vec2<u32>(50313u, 4294967295u)));
    return var_2.b.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> u32 {
    return ~arg_1.b.b.x;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global0 = array<vec3<bool>, 21>();
    let var_0 = func_5(vec2<u32>(func_4(Struct_2(u_input.b, _wgslsmith_f_op_f32(min(-816f, -150f)), !vec4<bool>(false, arg_0, false, false)), vec4<bool>(any(global0[_wgslsmith_index_u32(u_input.d.x, 21u)]), !arg_0, arg_0 & false, any(vec2<bool>(true, false))), select(!vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(u_input.c.x, u_input.c)), vec2<f32>(-173f, 1000f), arg_0))), func_4(Struct_2(_wgslsmith_div_u32(u_input.b, 1u), 1000f, !vec4<bool>(arg_0, true, arg_0, arg_0)), !vec4<bool>(false, false, arg_0, false), !vec2<bool>(arg_0, arg_0), vec2<f32>(_wgslsmith_f_op_f32(sign(382f)), -238f))), Struct_3(_wgslsmith_clamp_u32(u_input.d.x, ~1u, abs(u_input.c.x)) ^ ~(~u_input.d.x), Struct_1(any(!vec2<bool>(arg_0, arg_0)), u_input.c.zx)), -1000f, vec3<bool>(true, !((false & arg_0) | !arg_0), true));
    global0 = array<vec3<bool>, 21>();
    let var_1 = select(_wgslsmith_clamp_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(92255u, u_input.d.x, u_input.b, 39624u) | vec4<u32>(0u, var_0, 27357u, 4294967295u), ~vec4<u32>(136680u, 54283u, var_0, 0u)), ~firstTrailingBit(vec4<u32>(32611u, u_input.b, var_0, 4294967295u))), vec4<u32>(~36178u, _wgslsmith_mod_u32(55070u, u_input.d.x), ~(~var_0), 9303u), vec4<u32>(u_input.b, 44874u, 4294967295u, func_4(Struct_2(var_0, 1600f, vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec2<bool>(true, false), vec2<f32>(426f, -1715f)) << (~var_0 % 32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(55884u, 42732u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~49276u, ~u_input.b), ~func_3(u_input.c, vec3<f32>(-167f, -1447f, 763f), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), vec3<u32>(var_0, var_0, 1u))) | firstLeadingBit(~vec4<u32>(var_0, 53476u, 0u, u_input.b)), !select(select(vec4<bool>(arg_0, true, arg_0, false), !vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(true, false, arg_0, true), vec4<bool>(false, false, false, false), vec4<bool>(true, arg_0, arg_0, arg_0))), vec4<bool>(arg_0 != arg_0, arg_0 || arg_0, false, !arg_0), all(vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
    let var_2 = all(select(select(!select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_0), false), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), select(vec2<bool>(arg_0, true), vec2<bool>(true, true), true), any(global0[_wgslsmith_index_u32(var_0, 21u)])), false), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, true)), true), !(!vec2<bool>(arg_0, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, arg_0)), !select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(true, false)), select(vec2<bool>(true, arg_0), !vec2<bool>(arg_0, arg_0), !arg_0))));
    return select(!(!vec4<bool>(arg_0, false, all(vec4<bool>(arg_0, false, arg_0, arg_0)), select(var_2, var_2, arg_0))), vec4<bool>(false, all(select(global0[_wgslsmith_index_u32(27612u, 21u)], vec3<bool>(true, false, arg_0), arg_0)) && false, true, true), !any(vec3<bool>(arg_0, false, select(arg_0, var_2, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), vec4<bool>(true, false, false, true), func_1(false))), !(all(vec2<bool>(true, true)) || true), any(vec3<bool>(true, true, true)) | !select(all(vec4<bool>(false, true, true, false)), false, true));
    global0 = array<vec3<bool>, 21>();
    var var_1 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(505u, u_input.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(0u, 42358u), vec2<u32>(11760u, u_input.c.x))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(133729u, 25271u)))), func_5(reverseBits(vec2<u32>(1u, u_input.d.x)), Struct_3(4294967295u, Struct_1(false, u_input.c.xy)), _wgslsmith_f_op_vec2_f32(func_2(4294967295u, u_input.c)).x, !vec3<bool>(false, var_0.x, var_0.x)) ^ _wgslsmith_add_u32(23339u >> (1u % 32u), 58069u ^ u_input.c.x)), Struct_1(!var_0.x, u_input.c.xz));
    var var_2 = Struct_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_1.b.b.x, ~1u), firstTrailingBit(var_1.a)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(0u, abs(-11421i), _wgslsmith_sub_u32(~61877u, var_2.a & ~29912u));
}

