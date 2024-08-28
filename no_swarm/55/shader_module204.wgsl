struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = select(vec4<bool>(!(false | all(vec2<bool>(false, arg_0.d.a.e))), any(!select(vec3<bool>(arg_0.a.e, arg_0.c.a.e, true), vec3<bool>(false, arg_0.e.c, false), vec3<bool>(arg_0.c.a.c, arg_0.d.a.e, arg_0.e.c))), !any(vec2<bool>(false, false)), all(vec4<bool>(false, true, any(vec4<bool>(arg_0.c.a.e, arg_0.a.e, arg_0.b, false)), arg_0.e.c))), vec4<bool>(any(!vec4<bool>(arg_0.d.a.c, arg_0.c.a.e, arg_0.b, true)), false, arg_0.e.c, arg_0.c.a.e), !(!select(select(vec4<bool>(arg_0.c.a.e, true, true, arg_0.a.e), vec4<bool>(false, arg_0.c.a.c, arg_0.e.c, true), arg_0.c.a.e), vec4<bool>(arg_0.a.c, false, true, false), vec4<bool>(arg_0.c.a.c, true, false, arg_0.e.c))));
    var_0 = !select(!vec4<bool>(all(var_0.zy), arg_0.c.a.e, select(arg_0.a.c, arg_0.d.a.e, arg_0.d.a.c), !arg_0.e.e), !vec4<bool>(true, true, any(vec4<bool>(arg_0.c.a.c, var_0.x, arg_0.b, false)), true), vec4<bool>(any(select(vec4<bool>(var_0.x, arg_0.c.a.e, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), arg_0.e.e)), _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(arg_0.d.a.b - -1000f), false, false));
    let var_1 = _wgslsmith_sub_i32(-arg_0.c.a.a, countOneBits(-1i) ^ _wgslsmith_clamp_i32(arg_0.a.a | 1i, ~(~arg_0.c.a.a), -52270i));
    let var_2 = Struct_3(arg_0.a, all(select(select(!vec4<bool>(false, false, arg_0.a.e, false), !vec4<bool>(arg_0.c.a.e, false, var_0.x, var_0.x), true && var_0.x), vec4<bool>(select(false, true, var_0.x), var_0.x, var_1 != var_1, true || arg_0.a.e), _wgslsmith_f_op_f32(abs(arg_0.a.b)) <= _wgslsmith_f_op_f32(min(arg_0.a.b, arg_0.d.a.b)))), Struct_2(arg_0.c.a), arg_0.c, arg_0.c.a);
    let var_3 = vec3<bool>(!(!any(vec4<bool>(arg_0.d.a.e, true, true, false))), !(908f > _wgslsmith_f_op_f32(-arg_0.d.a.b)), false);
    return global0[_wgslsmith_index_u32(43287u >> (countOneBits(var_2.e.d) % 32u), 5u)];
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(1u ^ max(_wgslsmith_sub_u32(1u, u_input.c << (4294967295u % 32u)), max(u_input.b, 4294967295u)), 84273u);
    let var_1 = true;
    var var_2 = var_1;
    var var_3 = 72422u;
    var var_4 = vec4<u32>((countOneBits(4294967295u) << (func_3(Struct_3(Struct_1(arg_0.x, -133f, var_1, global0[_wgslsmith_index_u32(4294967295u, 5u)], true), var_1, Struct_2(Struct_1(-2147483647i, -1157f, false, var_0.x, arg_1.x)), Struct_2(Struct_1(2147483647i, -456f, false, 0u, var_1)), Struct_1(arg_0.x, -1000f, false, 19071u, false))) % 32u)) ^ ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6146u, 5u)], 5u)]), 6149u), ~u_input.b, _wgslsmith_div_u32(u_input.b, min(0u, 33447u)), 0u);
    return Struct_2(Struct_1(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -883f) + _wgslsmith_f_op_f32(f32(-1f) * -330f)))), !(all(arg_1) && arg_1.x), 15899u, any(arg_1)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> u32 {
    let var_0 = any(!select(!vec4<bool>(false, true, arg_0.e, true), select(vec4<bool>(true, false, arg_1.c, arg_0.c), !vec4<bool>(true, arg_1.e, arg_1.c, false), arg_1.c), true));
    var var_1 = func_2(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_3.xz, ~(-vec2<i32>(-8687i, 35637i))), 0i, 62471i), !select(vec2<bool>(true, true), select(!vec2<bool>(arg_1.c, true), vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.e, false)), select(select(vec2<bool>(arg_1.e, false), vec2<bool>(arg_0.c, var_0), vec2<bool>(var_0, var_0)), !vec2<bool>(true, arg_1.e), vec2<bool>(var_0, true))));
    let var_2 = func_2(reverseBits(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, arg_0.a, 2147483647i)), arg_3.xzz)) ^ (~arg_3.zzx >> (vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_2.x, 37105u)), ~arg_1.d) % vec3<u32>(32u))), vec2<bool>(false, var_0)).a;
    var_1 = Struct_2(arg_1);
    return ~65365u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> bool {
    global0 = array<u32, 5>();
    let var_0 = select(vec3<bool>(func_2(vec3<i32>(1i, 1i, 1i), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))).a.e, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec2<bool>(false, any(vec3<bool>(false, true, false))))), vec3<bool>(true, true, true), vec3<bool>(true, true, true));
    global0 = array<u32, 5>();
    var var_1 = vec3<u32>(global0[_wgslsmith_index_u32(~firstTrailingBit(~arg_1), 5u)], ~arg_0.x, 34893u);
    var var_2 = -83169i;
    return _wgslsmith_dot_vec3_u32(abs(max(_wgslsmith_sub_vec3_u32(arg_0, vec3<u32>(8226u, 0u, 46433u)), firstTrailingBit(vec3<u32>(var_1.x, global0[_wgslsmith_index_u32(arg_1, 5u)], 58455u)))), vec3<u32>(_wgslsmith_mult_u32(~arg_1, u_input.b), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], var_1.x), arg_1)) > 17552u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-57659i, 2147483647i);
    let var_1 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, func_1(Struct_1(-6617i, -262f, false, global0[_wgslsmith_index_u32(1u, 5u)], false), Struct_1(-1i, -919f, false, global0[_wgslsmith_index_u32(50318u, 5u)], true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 0u, 19644u), vec4<i32>(-18033i, 10805i, -12105i, var_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 4579u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(3560u, 5u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 5u)]))) | firstTrailingBit(~vec3<u32>(u_input.b, u_input.b, 790u)), vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), 5u)], 5u)], 5u)], func_1(func_2(vec3<i32>(72607i, 34838i, -14934i), vec2<bool>(false, false)).a, func_2(vec3<i32>(var_0.x, var_0.x, -47022i), vec2<bool>(false, true)).a, ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], 0u), firstLeadingBit(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x))), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(0u)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(~94883u), ~4294967295u), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(9463u, 5u)], 17365u << (1u % 32u))));
    var var_2 = var_1;
    let var_3 = 1u;
    let var_4 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(889u, u_input.b, global0[_wgslsmith_index_u32(52587u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 5u)])), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, 30923u, 13185u, 4294967295u)), select(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.c, var_3), vec4<u32>(1u, 34397u, 4294967295u, global0[_wgslsmith_index_u32(var_3, 5u)]), var_1), abs(vec4<u32>(var_3, 30070u, 4294967295u, 0u)))), firstTrailingBit(func_3(Struct_3(Struct_1(-1i, -310f, false, 5008u, true), func_2(vec3<i32>(-13836i, var_0.x, var_0.x), vec2<bool>(var_1, false)).a.c, Struct_2(Struct_1(var_0.x, 1783f, var_1, var_3, var_1)), Struct_2(Struct_1(var_0.x, -385f, false, var_3, false)), func_2(vec3<i32>(var_0.x, 0i, 40237i), vec2<bool>(false, var_1)).a))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(65737i, -2422i), countOneBits(vec2<i32>(var_0.x, min(var_0.x, var_0.x)))), _wgslsmith_mod_i32(~(-6814i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 109i), max(var_0, vec2<i32>(var_0.x, var_0.x)))) & 0i, -190f, min(-21187i, select(var_0.x, -(~var_0.x), !(!var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1509f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-870f, 1052f)))));
}

