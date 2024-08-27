struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: Struct_3 = Struct_3(Struct_2(vec4<u32>(33817u, 1u, 4294967295u, 0u), vec2<u32>(15674u, 28795u), -130f), Struct_2(vec4<u32>(62504u, 4294967295u, 4294967295u, 4294967295u), vec2<u32>(37394u, 37667u), 457f), Struct_2(vec4<u32>(58632u, 43056u, 4294967295u, 40506u), vec2<u32>(5580u, 4294967295u), -1830f), 59910u, vec4<i32>(1i, i32(-2147483648), 0i, 15947i));

var<private> global2: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec4<u32>, arg_3: bool) -> vec4<u32> {
    global0 = array<f32, 9>();
    return select((global2.a >> (global2.a % vec4<u32>(32u))) | ~vec4<u32>(_wgslsmith_mod_u32(global2.b.x, 1u), _wgslsmith_mod_u32(3807u, u_input.d.x), _wgslsmith_clamp_u32(16773u, 1u, global1.c.a.x), 4294967295u), abs(vec4<u32>(25731u, 1u, firstTrailingBit(arg_2.x), ~arg_0.b.b.x)), vec4<bool>(!(global1.a.c != 1f), arg_3, false, (_wgslsmith_f_op_f32(round(global2.c)) < arg_0.a.c) | !(true && arg_3)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global2 = Struct_2(~firstTrailingBit(func_3(Struct_3(global1.b, global1.b, global1.c, u_input.d.x, vec4<i32>(-92723i, 302i, global1.e.x, 1316i)), global1.b.a.x, reverseBits(vec4<u32>(1u, 11421u, u_input.c, 1u)), false)), u_input.d, -648f);
    global2 = Struct_2(func_3(Struct_3(global1.a, Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(16009u, 30878u, global2.b.x, 1u), vec4<u32>(global1.d, 1u, 1u, global2.a.x)), ~vec2<u32>(u_input.c, 0u), _wgslsmith_f_op_f32(-global2.c)), global1.c, min(firstTrailingBit(13604u), reverseBits(global1.c.a.x)), vec4<i32>(0i, 2147483647i, 58160i, u_input.b) | -global1.e), u_input.d.x, vec4<u32>(_wgslsmith_mult_u32(global2.a.x, 31980u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.b.b.x, global2.b.x), ~vec3<u32>(u_input.e, u_input.d.x, global2.b.x)), ~4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(66493u, global2.a.x, global1.c.a.x, 1u)), _wgslsmith_sub_vec4_u32(global2.a, global1.b.a))), !any(vec4<bool>(true, true, false, true))), vec2<u32>(~(~(~10791u)), ~38643u), 1000f);
    global1 = Struct_3(Struct_2(~(~(vec4<u32>(0u, 43425u, 50796u, 24949u) >> (vec4<u32>(0u, global2.b.x, u_input.d.x, 1u) % vec4<u32>(32u)))), global1.b.a.wy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c.c)))))), global1.a, global1.b, global2.a.x, global1.e);
    let var_0 = Struct_1(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !all(vec3<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false)))), 47083u, true);
    global2 = Struct_2(func_3(Struct_3(global1.a, global1.a, Struct_2(global1.b.a, global2.b ^ vec2<u32>(0u, 53348u), global1.a.c), _wgslsmith_mult_u32(abs(global2.a.x), global1.d ^ var_0.c), _wgslsmith_mod_vec4_i32(-global1.e, global1.e)), ~_wgslsmith_div_u32(global2.b.x | var_0.c, 4294967295u >> (1u % 32u)), _wgslsmith_add_vec4_u32(global2.a & global2.a, select(global1.a.a | global2.a, vec4<u32>(u_input.d.x, u_input.e, 0u, u_input.d.x), !var_0.a)), var_0.b), global2.b, -248f);
    return Struct_1(arg_0 < -27732i, var_0.b, ~(~(~4294967295u)), 0i > _wgslsmith_mod_i32(min(-arg_0, u_input.a >> (var_0.c % 32u)), 1i));
}

fn func_1() -> Struct_3 {
    let var_0 = false;
    global2 = global1.a;
    var var_1 = -9291i;
    var_1 = abs(global1.e.x);
    let var_2 = func_2(global1.e.x);
    return Struct_3(global1.a, global1.b, Struct_2(~global2.a, ~(~vec2<u32>(var_2.c, 4294967295u)), _wgslsmith_f_op_f32(sign(global2.c))), u_input.d.x, global1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = global1.b.c;
    let var_2 = var_0.e;
    var var_3 = var_0.e.zzw;
    let var_4 = Struct_1(true, true, global1.c.b.x, false | all(vec2<bool>(true, 2147483647i <= var_3.x)));
    var var_5 = Struct_1(!all(select(select(vec4<bool>(var_4.b, var_4.b, var_4.b, var_4.b), vec4<bool>(false, false, var_4.b, var_4.a), vec4<bool>(var_4.a, false, true, var_4.d)), select(vec4<bool>(true, true, var_4.d, false), vec4<bool>(false, var_4.a, false, var_4.b), vec4<bool>(var_4.a, true, var_4.b, var_4.b)), var_4.d)), var_4.d, reverseBits(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global1.d, var_4.c), ~global1.b.a.zy)), var_4.d);
    var var_6 = func_2(_wgslsmith_clamp_i32(1i, var_3.x, firstTrailingBit(global1.e.x) ^ 0i));
    var_5 = func_2(firstTrailingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(max(var_0.e.zzy, vec3<i32>(-11981i, 3236i, global1.e.x))), (vec3<i32>(var_3.x, -64281i, var_3.x) << (vec3<u32>(6979u, 21374u, 125539u) % vec3<u32>(32u))) & global1.e.xyz)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), _wgslsmith_div_f32(global2.c, global1.a.c));
}

