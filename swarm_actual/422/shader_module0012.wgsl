struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    global0 = i32(-1i) * -reverseBits(-1i);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -109f), -687f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), 689f, 0u <= u_input.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.x)))))));
    var var_1 = Struct_3(Struct_2(var_0.x, -463f), Struct_2(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.b, var_0.x) - -106f) - 250f)), arg_2.c, _wgslsmith_f_op_f32(f32(-1f) * -639f));
    var_1 = arg_2;
    var_1 = Struct_3(arg_2.a, var_1.b, true, -610f);
    return max(~(u_input.d.x & ~u_input.d.x), 34506u) << (~(_wgslsmith_clamp_u32(1u, ~20797u, u_input.d.x) & _wgslsmith_div_u32(1u, u_input.d.x)) % 32u);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = u_input.d.x;
    var var_1 = 16518u;
    let var_2 = Struct_3(arg_3.b, arg_3.a, true, 257f);
    var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(max(u_input.d.x | 23464u, u_input.d.x), _wgslsmith_mod_u32(0u, 1u)) << (0u % 32u), abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(59593u, u_input.d.x, u_input.d.x, 8639u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 3619u, 4294967295u, 4294967295u), vec4<u32>(1u, 82068u, 48008u, 10923u))), u_input.d.x)));
    var_1 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), _wgslsmith_f_op_f32(-706f * arg_0.a.a))) + 1000f);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = ~firstLeadingBit(~vec4<u32>(max(u_input.d.x, u_input.d.x), u_input.d.x, _wgslsmith_mod_u32(4294967295u, u_input.d.x), func_2(-639f, vec4<f32>(-432f, 611f, -1240f, -638f), Struct_3(Struct_2(902f, 233f), Struct_2(781f, -283f), arg_1.x, 1934f))));
    let var_1 = Struct_1(~max((1u << (var_0.x % 32u)) << (~4294967295u % 32u), max(7117u, 1u)), abs(u_input.d.x), abs(var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1681f) + 1519f), _wgslsmith_f_op_f32(f32(-1f) * -444f))));
    var var_2 = u_input.a;
    let var_3 = -u_input.b.x;
    let var_4 = ~(-abs(~(-2147483647i)));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(155f, 110f), Struct_2(var_1.d.x, -1000f), true, 2904f), vec2<bool>(true, arg_1.x), vec3<i32>(2147483647i, 2147483647i, 20920i), Struct_3(Struct_2(1957f, 707f), Struct_2(var_1.d.x, var_1.d.x), arg_1.x, 965f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1621f)) - var_1.d.x))), Struct_2(var_1.d.x, -344f), true, _wgslsmith_f_op_f32(f32(-1f) * -957f));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = vec4<f32>(func_1(!all(arg_0.zy), !arg_0).b.b, arg_1.a.b, -204f, _wgslsmith_f_op_f32(exp2(arg_1.a.b)));
    var var_1 = func_1(arg_1.c, vec4<bool>(false, !arg_0.x, arg_1.c, any(arg_0.ywy))).a;
    let var_2 = u_input.a << (arg_3.x % 32u);
    var_1 = func_1(!all(arg_0.xx), vec4<bool>(arg_0.x, arg_0.x, arg_1.c, true)).a;
    var var_3 = Struct_1(~30674u, ~(~arg_3.x), _wgslsmith_mod_vec4_u32(max((vec4<u32>(u_input.d.x, arg_3.x, arg_3.x, 1u) & vec4<u32>(27517u, u_input.d.x, 11711u, 1u)) | vec4<u32>(arg_3.x, 1u, arg_3.x, 1u), vec4<u32>(arg_3.x, 1u, 1u, ~u_input.d.x)), _wgslsmith_mult_vec4_u32(min(~vec4<u32>(1u, 10596u, arg_3.x, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 2235u, arg_3.x, 4294967295u), vec4<u32>(arg_3.x, 1u, arg_3.x, 4294967295u))), ~(vec4<u32>(94506u, 73281u, arg_3.x, u_input.d.x) ^ vec4<u32>(arg_3.x, arg_3.x, 45687u, 0u)))), arg_2);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var_0 = -countOneBits(vec3<i32>(~2147483647i, -4027i, func_4(vec4<bool>(true, true, true, true), func_1(false, vec4<bool>(false, false, false, false)), vec2<f32>(2493f, 1000f), ~vec3<u32>(25949u, 4294967295u, 3313u))));
    var var_1 = Struct_3(Struct_2(func_1(false, select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).b.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(196f))))), Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1117f)) - _wgslsmith_div_f32(387f, 298f)))), 1000f), all(vec2<bool>(true, true)), func_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), !vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true)).d);
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.d.x), _wgslsmith_mod_u32(abs(1u), ~u_input.d.x)), ~u_input.d.x, 72585u) >> ((vec3<u32>(4294967295u, (u_input.d.x & u_input.d.x) << (abs(u_input.d.x) % 32u), u_input.d.x) << (vec3<u32>(~1u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, 64470u, u_input.d.x, 1u)), ~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x)), 11005u) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = Struct_1(1u, u_input.d.x, ~abs(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(3470u, var_2.x, 3016u, u_input.d.x)), ~vec4<u32>(12342u, 1u, 24781u, 76256u))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b), -1293f));
    var_1 = func_1(!all(vec4<bool>(var_1.c, !var_1.c, var_1.c, !var_1.c)), vec4<bool>(false, false && !(!var_1.c), select(true && var_1.c, !(!var_1.c), true), -countOneBits(var_0.x) > firstTrailingBit(u_input.b.x)));
    var var_4 = all(!(!(!vec4<bool>(var_1.c, var_1.c, false, var_1.c)))) && true;
    var var_5 = false;
    let var_6 = func_1(!(var_3.d.x <= -1446f), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.c, false, false, var_1.c), select(vec4<bool>(var_1.c, var_1.c, var_1.c, false), vec4<bool>(false, var_1.c, var_1.c, var_1.c), vec4<bool>(false, true, var_1.c, true))), vec4<bool>(true, var_1.c, true, !var_1.c), var_1.c)).b;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(36147u) ^ var_2.x, vec3<f32>(_wgslsmith_f_op_f32(-354f - _wgslsmith_f_op_f32(sign(var_3.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) + -1000f))), var_3.d.x), -16744i);
}

