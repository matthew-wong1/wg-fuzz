struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true));

var<private> global1: array<Struct_1, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>) -> bool {
    var var_0 = select(arg_0.c, any(!(!select(vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, arg_0.b.d, arg_0.c), vec3<bool>(arg_1.x, arg_1.x, true)))), !arg_0.b.d);
    var var_1 = arg_0.a;
    var var_2 = -722f;
    let var_3 = arg_0;
    global0 = array<vec4<bool>, 24>();
    return !arg_1.x;
}

fn func_3() -> bool {
    var var_0 = Struct_2(-(~(-u_input.d)), global1[_wgslsmith_index_u32(1u | u_input.c, 22u)], countOneBits(u_input.c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(954f, -1345f, -307f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(116f, 963f, 515f), vec3<f32>(-175f, 1043f, 109f), vec3<bool>(false, false, true))))))));
    global0 = array<vec4<bool>, 24>();
    global1 = array<Struct_1, 22>();
    var var_1 = any(!select(select(vec3<bool>(false, var_0.b.d, var_0.b.b.x), select(vec3<bool>(var_0.b.b.x, var_0.b.d, var_0.b.c), vec3<bool>(var_0.b.b.x, var_0.b.d, true), vec3<bool>(false, true, false)), true), vec3<bool>(var_0.b.d | false, func_1(Struct_3(1057f, Struct_1(vec4<u32>(0u, 1u, 21130u, 0u), vec2<bool>(false, true), var_0.b.d, false, var_0.b.a.xxx), true, var_0.d.xy, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)), var_0.b.b), !var_0.b.c), var_0.b.b.x));
    var_0 = Struct_2(var_0.a, Struct_1(firstTrailingBit(~(~vec4<u32>(u_input.c, u_input.c, var_0.c, var_0.c))), var_0.b.b, any(select(vec3<bool>(true, true, true), vec3<bool>(var_0.b.c, true, false), var_0.b.d)), false, _wgslsmith_add_vec3_u32(max(vec3<u32>(44595u, var_0.c, 0u), vec3<u32>(4294967295u, var_0.c, var_0.b.a.x)), _wgslsmith_mod_vec3_u32(abs(var_0.b.e), vec3<u32>(u_input.c, var_0.b.e.x, 78520u)))), ~(~(var_0.b.e.x << (4294967295u % 32u))), var_0.d);
    return false;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    global1 = array<Struct_1, 22>();
    var var_0 = ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.c, 0u, 83595u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), ~vec3<u32>(72070u, 4294967295u, 35438u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(0u, u_input.c, 29888u))), ~vec3<u32>(u_input.c, 2991u, 21031u) << (select(vec3<u32>(37224u, 10022u, 4294967295u), vec3<u32>(4294967295u, 79223u, u_input.c), arg_0.x) % vec3<u32>(32u))));
    let var_1 = -748f;
    var var_2 = u_input.c;
    var var_3 = -1i;
    return func_1(Struct_3(-591f, Struct_1(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 5875u, u_input.c, 42774u), vec4<u32>(55999u, var_0.x, 65566u, u_input.c))), arg_0.yz, !func_3(), all(!vec2<bool>(arg_0.x, arg_0.x)), vec3<u32>(4294967295u, var_0.x, u_input.c) ^ vec3<u32>(u_input.c, var_0.x, var_0.x)), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2405f, _wgslsmith_f_op_f32(var_1 + var_1))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, var_1, 497f))))))), !vec2<bool>(arg_0.x, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(!vec3<bool>(func_1(Struct_3(170f, global1[_wgslsmith_index_u32(4294967295u, 22u)], true, vec2<f32>(1316f, -761f), vec3<f32>(1000f, 1255f, -853f)), vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(u_input.b.yz, u_input.d.zz) == ~u_input.d.x, !all(vec3<bool>(true, true, true))));
    let var_1 = select(select(vec2<bool>(all(vec4<bool>(true, true, true, true)), func_1(Struct_3(263f, Struct_1(vec4<u32>(52608u, 32515u, u_input.c, 96252u), vec2<bool>(false, false), false, false, vec3<u32>(u_input.c, 88503u, 41437u)), true, vec2<f32>(2198f, 1059f), vec3<f32>(-1818f, -1062f, -829f)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), vec2<bool>(true, 45338i != _wgslsmith_mod_i32(-18846i, u_input.d.x)), !(all(vec2<bool>(false, false)) & false)), !vec2<bool>(!all(vec2<bool>(false, false)), !select(true, true, true)), true);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-123f, 497f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f + _wgslsmith_div_f32(-1316f, -999f)) - -189f)))));
    let var_3 = ~(~2147483647i) >> (u_input.c % 32u);
    let var_4 = select(vec3<bool>(var_1.x, var_1.x, all(select(var_1, vec2<bool>(var_1.x, true), select(vec2<bool>(false, var_1.x), var_1, false)))), select(!vec3<bool>(var_1.x, func_1(Struct_3(1793f, Struct_1(vec4<u32>(75719u, u_input.c, 0u, u_input.c), vec2<bool>(var_1.x, true), var_1.x, false, vec3<u32>(0u, u_input.c, 78779u)), var_1.x, vec2<f32>(-1000f, 617f), vec3<f32>(263f, 820f, -1313f)), var_1), var_1.x), !select(!vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, true), true), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x), var_1.x), vec3<bool>(true, !var_1.x, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), true)), vec3<bool>(var_1.x, true, var_1.x | var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(-34023i), min(1i, -var_3)), -276f, vec3<i32>(-2812i, -23031i, var_3));
}

