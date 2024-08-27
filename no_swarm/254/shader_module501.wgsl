struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<Struct_1, 32>();
    var var_0 = any(select(vec3<bool>(true, true, !(!arg_0.c.x)), arg_1.c, vec3<bool>(arg_0.c.x, false, false)));
    global0 = select(~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 15518u), vec2<u32>(global0.x, 29162u)))), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, arg_0.b)), countOneBits(~vec2<u32>(global0.x, u_input.c)), countOneBits(vec2<u32>(4294967295u, 4294967295u)) & firstTrailingBit(vec2<u32>(4018u, 7424u))), min(~(~vec2<u32>(arg_0.b, arg_1.b)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.c, 6155u), vec2<u32>(arg_0.b, 78865u)), vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(44297u, arg_0.b)))), arg_1.c.yx);
    let var_1 = select(vec3<bool>(any(arg_1.a), false, !arg_0.a.x), vec3<bool>(!arg_1.a.x, true, arg_1.c.x), select(!select(arg_1.c, vec3<bool>(arg_1.a.x, arg_0.a.x, true), arg_0.a.x), arg_0.c, all(select(!vec4<bool>(arg_0.a.x, true, true, true), select(vec4<bool>(true, true, arg_1.c.x, true), vec4<bool>(false, arg_0.c.x, false, arg_0.a.x), arg_0.c.x), true))));
    var_0 = true;
    return select(vec4<bool>(true, true, true, !all(!vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.c.x))), !select(!(!vec4<bool>(true, arg_1.a.x, true, false)), vec4<bool>(!var_1.x, true, all(arg_0.a), var_1.x), true), any(select(!vec4<bool>(true, false, false, arg_1.a.x), !(!vec4<bool>(true, arg_1.c.x, false, var_1.x)), arg_1.a.x)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    return !select(!select(!vec4<bool>(arg_1.c.x, arg_1.a.x, true, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_1.c.x, arg_1.a.x, false), !vec4<bool>(false, arg_1.a.x, false, true)), !(!select(vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(false, true, arg_1.c.x, true), vec4<bool>(arg_1.c.x, true, true, false))), func_3(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(11395u, u_input.c, u_input.c), 7696u), 20u)], global1[_wgslsmith_index_u32(arg_1.b, 20u)]));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    global2 = array<Struct_1, 32>();
    let var_0 = 452f;
    var var_1 = select(!vec2<bool>(_wgslsmith_f_op_f32(-var_0) > var_0, true), !arg_1.xx, select(all(select(arg_2.c, vec3<bool>(false, false, arg_3.c.x), arg_3.c)), false, arg_3.c.x));
    global0 = vec2<u32>(~_wgslsmith_div_u32(25242u, ~arg_3.b), ~(~_wgslsmith_div_u32(abs(14918u), 5240u)));
    let var_2 = _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), -483f)));
    return vec4<u32>(max(arg_0, ~(global0.x | global0.x)), ~select(~0u, ~arg_0, true), 49651u, ~(~35480u & ~global0.x)) | ~vec4<u32>(0u, _wgslsmith_mult_u32(1u, arg_2.b), min(~arg_0, _wgslsmith_mod_u32(32183u, 4294967295u)), _wgslsmith_add_u32(~arg_3.b, 66431u >> (u_input.c % 32u)));
}

fn func_1() -> vec4<i32> {
    var var_0 = false;
    global2 = array<Struct_1, 32>();
    global0 = ~_wgslsmith_add_vec2_u32(min(min(~vec2<u32>(u_input.c, 4294967295u), vec2<u32>(1u, 41896u)), vec2<u32>(_wgslsmith_mod_u32(72587u, u_input.c), 24816u)), vec2<u32>(u_input.c, 19338u));
    var var_1 = func_4(reverseBits(global0.x), !select(func_2(vec2<u32>(global0.x, u_input.c), Struct_1(vec2<bool>(true, true), u_input.c, vec3<bool>(true, true, false)), 224f), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), false), global1[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, 13130u)), firstLeadingBit(vec3<u32>(37225u, u_input.c, u_input.c)))), 20u)], Struct_1(vec2<bool>(true, true), 33834u, !vec3<bool>(true, true, u_input.b <= -13373i)));
    let var_2 = Struct_1(vec2<bool>(!any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), func_3(global2[_wgslsmith_index_u32(1u, 32u)], Struct_1(vec2<bool>(true, true), u_input.c, vec3<bool>(true, false, false))).x), 98079u, !vec3<bool>(true, any(vec3<bool>(true, true, true)), false));
    return ~(~vec4<i32>(_wgslsmith_sub_i32(u_input.b, -36814i), 96i, -u_input.a, _wgslsmith_mod_i32(-15670i, 9783i)) >> (~abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.c, u_input.c, 19784u), vec4<u32>(u_input.c, 84013u, u_input.c, 23416u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.b, 1u, 0u), vec4<u32>(0u, 20396u, global0.x, arg_1.b)), global0.x)));
    global1 = array<Struct_1, 20>();
    let var_1 = countOneBits(vec2<u32>(67095u, 0u));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 47658u, abs(_wgslsmith_mult_u32(42686u, global0.x)), 4294967295u), vec4<u32>(~(~20085u), 1u, u_input.c, ~4294967295u & reverseBits(var_1.x)), vec4<u32>(global0.x, global0.x, 71662u, var_1.x)) << (~(~(~(vec4<u32>(global0.x, u_input.c, 29920u, 0u) >> (vec4<u32>(4294967295u, var_1.x, 0u, var_1.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(211f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1755f)))) + vec2<f32>(_wgslsmith_f_op_f32(max(-2000f, _wgslsmith_f_op_f32(min(468f, 1248f)))), -304f));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-((func_1() >> (vec4<u32>(77406u, u_input.c, u_input.c, 1u) % vec4<u32>(32u))) << ((~vec4<u32>(1197u, u_input.c, 0u, 49796u) >> (~vec4<u32>(global0.x, 57829u, global0.x, 31131u) % vec4<u32>(32u))) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(~global0.x, 20u)], -firstLeadingBit(-u_input.b));
    let var_1 = u_input.b >> (0u % 32u);
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(u_input.c), 74468u) & _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(52459u, u_input.c))), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 61212u)), ~vec2<u32>(u_input.c, 34005u)) ^ vec2<u32>(_wgslsmith_sub_u32(1u, u_input.c), 1u)), countOneBits(~vec2<u32>(global0.x, u_input.c)));
    var_0 = var_1;
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec3<i32>(firstLeadingBit(var_1), firstTrailingBit(~firstLeadingBit(32123i)), u_input.b >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 0u), vec2<u32>(u_input.c, 4294967295u) & vec2<u32>(4294967295u, global0.x)) % 32u)));
}

