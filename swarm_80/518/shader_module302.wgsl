struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(24907u, 1u, 17083u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(1918f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1738f * 2041f) - -803f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-716f, -1665f)))));
    var var_1 = Struct_1(~global0.x);
    var var_2 = all(vec4<bool>(all(vec3<bool>(true, true, 42569u <= global0.x)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), select(true, all(vec2<bool>(false, true)) & any(vec2<bool>(true, true)), false), true));
    let var_3 = vec3<f32>(-352f, -501f, var_0);
    global0 = ~vec3<u32>(7958u, _wgslsmith_sub_u32(0u ^ arg_1, _wgslsmith_dot_vec2_u32(global0.zy, vec2<u32>(global0.x, 33313u))), var_1.a) ^ abs(vec3<u32>(~global0.x & min(1u, arg_0.a), (arg_0.a & arg_0.a) | reverseBits(9686u), global0.x));
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, arg_0.d, arg_0.d)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-201f, -310f, arg_0.d))), any(arg_3.zww))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1722f, arg_0.d, 1084f) * vec3<f32>(arg_0.d, arg_0.d, 1000f)))))));
    global0 = vec3<u32>(arg_2.a ^ (arg_1.a ^ ~u_input.a), global0.x, arg_0.c.a);
    global0 = select(~(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(10852u, 22628u, 61496u)), 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 10262u, 1u, global0.x), vec4<u32>(61379u, 0u, arg_2.a, arg_0.c.a))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, u_input.a, global0.x), vec3<u32>(0u, 46514u, u_input.a)), vec3<u32>(91122u, 62613u, global0.x)) % vec3<u32>(32u))), countOneBits(reverseBits(vec3<u32>(global0.x ^ 10148u, global0.x, 0u))), select(vec3<bool>(true, true && func_3(arg_1, arg_0.c.a, Struct_1(10610u), 1i), true), vec3<bool>(arg_3.x, u_input.b.x == -1i, !arg_0.b), true));
    global0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~_wgslsmith_div_u32(0u, arg_2.a), 62866u, _wgslsmith_mult_u32(global0.x, ~11226u)), select(~(~(~vec3<u32>(arg_0.c.a, 39416u, u_input.a))), _wgslsmith_mult_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, 1226u, arg_0.c.a), vec3<u32>(53089u, 10532u, u_input.a), vec3<u32>(arg_1.a, 4294967295u, arg_2.a))), ~vec3<u32>(4294967295u, 34104u, 0u)), !(!arg_0.a)));
    global0 = ~vec3<u32>(0u, 1u, max(u_input.a, 0u));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    global0 = vec3<u32>(~_wgslsmith_add_u32(global0.x >> (abs(22864u) % 32u), 42541u), 929u, ~1u);
    let var_0 = Struct_2(vec3<bool>(_wgslsmith_f_op_f32(-arg_2.d) != arg_0.d, min(arg_0.c.a, _wgslsmith_add_u32(72433u, 39025u)) == _wgslsmith_dot_vec4_u32(select(vec4<u32>(global0.x, global0.x, 12337u, arg_0.c.a), vec4<u32>(arg_2.c.a, arg_0.c.a, arg_0.c.a, global0.x), vec4<bool>(false, true, false, true)), ~vec4<u32>(arg_0.c.a, global0.x, arg_0.c.a, arg_2.c.a)), false), u_input.a > ~u_input.a, arg_2.c, _wgslsmith_f_op_f32(sign(1050f)));
    global0 = ~vec3<u32>(~(~(~global0.x)), _wgslsmith_mod_u32(reverseBits(_wgslsmith_mult_u32(u_input.a, 4294967295u)), 9150u), ~(~firstLeadingBit(1u)));
    let var_1 = max(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(arg_2.c.a, 319u), ~arg_2.c.a, 1u), vec3<u32>(27565u, _wgslsmith_div_u32(46327u, 55077u), global0.x)) & _wgslsmith_div_vec3_u32(~(vec3<u32>(arg_0.c.a, arg_0.c.a, 44798u) & vec3<u32>(arg_2.c.a, 30254u, 21337u)), abs(~vec3<u32>(1u, arg_0.c.a, 0u))), _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.a, 4102u, arg_0.c.a), vec3<u32>(14952u, 73594u, arg_2.c.a)) | _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, arg_0.c.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 46818u, u_input.a), vec3<u32>(arg_0.c.a, arg_2.c.a, 47621u)), firstLeadingBit(vec3<u32>(38090u, arg_0.c.a, 0u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~var_0.c.a, firstTrailingBit(arg_0.c.a)), abs(vec3<u32>(4294967295u, arg_2.c.a, 2878u)) >> (countOneBits(vec3<u32>(1u, arg_0.c.a, 24765u)) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_0.c.a, 0u), vec3<u32>(4294967295u, 41585u, arg_2.c.a)))));
    let var_2 = firstTrailingBit(firstTrailingBit(var_1));
    return arg_2;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = func_4(Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), func_2(Struct_2(vec3<bool>(true, true, true), true, Struct_1(global0.x), 1244f), Struct_1(global0.x), Struct_1(global0.x), vec4<bool>(false, false, false, false)))), min(firstTrailingBit(4294967295u), 0u) < firstTrailingBit(1u), Struct_1(u_input.a | ~1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(941f)), arg_0.x))), 24559i, Struct_2(!select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), true, Struct_1(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1035f, _wgslsmith_f_op_f32(select(-972f, arg_0.x, false)))))));
    let var_1 = var_0.a.xx;
    global0 = vec3<u32>(var_0.c.a, max(u_input.a, 4294967295u) ^ select(76416u, abs(var_0.c.a), any(var_0.a.zz)), ~_wgslsmith_mod_u32(~(~var_0.c.a), firstTrailingBit(_wgslsmith_div_u32(var_0.c.a, 14328u))));
    let var_2 = func_4(Struct_2(var_0.a, false, Struct_1(~_wgslsmith_sub_u32(var_0.c.a, 6252u)), arg_0.x), u_input.b.x, func_4(func_4(Struct_2(!var_0.a, var_0.a.x, func_4(Struct_2(vec3<bool>(true, var_1.x, var_1.x), false, var_0.c, -268f), 0i, Struct_2(vec3<bool>(false, var_1.x, var_1.x), var_1.x, var_0.c, -285f)).c, _wgslsmith_f_op_f32(min(-1957f, arg_0.x))), max(-514i, 1i), Struct_2(select(var_0.a, var_0.a, vec3<bool>(false, var_1.x, var_1.x)), any(vec3<bool>(false, var_1.x, var_0.a.x)), func_4(Struct_2(var_0.a, var_0.a.x, var_0.c, -297f), u_input.d, Struct_2(var_0.a, false, var_0.c, 978f)).c, 887f)), _wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), -1i), Struct_2(vec3<bool>(any(vec4<bool>(var_0.a.x, var_1.x, false, var_0.a.x)), true, var_1.x), false, var_0.c, -126f)));
    var_0 = var_2;
    return Struct_1(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 0u, 9271u), firstLeadingBit(vec3<u32>(4832u, var_2.c.a, 4294967295u)))), vec3<u32>(var_0.c.a, ~66851u, _wgslsmith_mod_u32(_wgslsmith_add_u32(global0.x, 1u), firstLeadingBit(var_2.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~0u, 0u, global0.x), vec3<u32>(73108u, 43794u, 1u) << (vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(54276u, u_input.a, u_input.a), vec3<u32>(4294967295u, global0.x, 1u)), vec3<u32>(3767u, 70060u, global0.x), vec3<u32>(1u, global0.x, global0.x)), ~(~vec3<u32>(47097u, 68420u, u_input.a)), false), min(vec3<u32>(~9836u, _wgslsmith_add_u32(0u, u_input.a), u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0.x, 0u), select(vec3<u32>(53681u, 46605u, u_input.a), vec3<u32>(68121u, global0.x, global0.x), vec3<bool>(true, true, false)))));
    let var_0 = Struct_2(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2063f, 170f)) + _wgslsmith_div_f32(208f, 1283f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f * 1000f) - -601f))));
    let var_1 = Struct_1(_wgslsmith_mult_u32(~firstTrailingBit(var_0.c.a), 50320u) | (u_input.a ^ ~(~global0.x)));
    global0 = ~vec3<u32>(abs(func_4(Struct_2(var_0.a, false, Struct_1(4294967295u), -1059f), u_input.c.x, var_0).c.a), ~(~u_input.a), abs(~abs(27061u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-2147483647i, abs(-5767i), select(1i, 0i, var_0.a.x)) >> (vec3<u32>(_wgslsmith_mod_u32(0u, global0.x), ~u_input.a, _wgslsmith_mod_u32(var_0.c.a, u_input.a)) % vec3<u32>(32u)), max(vec3<i32>(-2147483647i, 1i, ~u_input.c.x), abs(~vec3<i32>(u_input.d, 0i, u_input.d)))), 4294967295u, vec4<u32>(0u, ~(~var_0.c.a | global0.x), 72989u, u_input.a));
}

