struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 18>;

var<private> global2: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(12722u, 32830u), vec2<u32>(0u, 25649u), vec2<u32>(55936u, 1u), vec2<u32>(14593u, 4294967295u), vec2<u32>(0u, 29551u), vec2<u32>(65212u, 122494u), vec2<u32>(1u, 21813u), vec2<u32>(65741u, 129939u), vec2<u32>(0u, 4294967295u), vec2<u32>(46218u, 36826u), vec2<u32>(4294967295u, 33085u), vec2<u32>(59375u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 45995u), vec2<u32>(32320u, 91780u), vec2<u32>(1u, 96298u), vec2<u32>(62026u, 22019u), vec2<u32>(58570u, 78426u), vec2<u32>(1740u, 0u), vec2<u32>(10733u, 4294967295u), vec2<u32>(3765u, 4294967295u), vec2<u32>(1u, 75480u), vec2<u32>(37483u, 102941u), vec2<u32>(1u, 29424u), vec2<u32>(80993u, 0u), vec2<u32>(9461u, 33611u), vec2<u32>(404u, 37570u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 61168u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(97090u, 7658u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    global1 = array<vec2<i32>, 18>();
    global0 = !(!select(select(!vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, false, global0.x, true), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), -1i >= u_input.a.x), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, false))), _wgslsmith_mod_u32(1u, 4294967295u) != arg_1));
    var var_0 = _wgslsmith_mult_u32(4294967295u, 1u);
    let var_1 = Struct_2(2179f);
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(sign(742f))) * 912f)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_3) -> bool {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(~arg_0, 89067u, arg_0), countOneBits(~66043u) | ~(arg_0 & arg_0)) | _wgslsmith_mod_u32(_wgslsmith_add_u32(firstTrailingBit(arg_0), ~countOneBits(88873u)), _wgslsmith_clamp_u32(0u, select(arg_0, ~arg_0, false), 4294967295u));
    var var_1 = (arg_0 >= 0u) && false;
    return any(!select(vec4<bool>(false, select(true, false, true), any(vec3<bool>(true, global0.x, false)), true), select(select(vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(false, true, arg_2, false), vec4<bool>(global0.x, true, false, true)), vec4<bool>(global0.x, arg_2, true, global0.x), select(vec4<bool>(arg_2, arg_2, false, global0.x), vec4<bool>(global0.x, global0.x, arg_2, global0.x), true)), (false && global0.x) && select(global0.x, global0.x, arg_2)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> bool {
    var var_0 = true || (50721u > _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(~41724u, 31u)], vec2<u32>(_wgslsmith_mod_u32(arg_2.x, arg_2.x), 9785u >> (arg_2.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)), 1223f)), arg_0.x, true));
    var var_2 = _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-449f)), 1422f, !(global0.x || !global0.x))));
    var var_3 = all(vec4<bool>(_wgslsmith_mult_i32(arg_1.x, 1i) > ~(-25459i), !(global0.x && true), !func_3(0u | arg_2.x, arg_1, true, func_2(Struct_2(-1427f), 0u)), !global0.x));
    let var_4 = var_1;
    return all(global0.zzw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(select(vec4<bool>(all(vec3<bool>(false, global0.x, true)), global0.x, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(2270f, -204f) + vec2<f32>(1039f, 416f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-11613i, -4374i, 15872i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 46055i, u_input.a.x)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_add_i32(u_input.a.x, 1i) <= ~(-49419i)), vec4<bool>(false, true, true, true && (true & global0.x)), global0.x), select(vec4<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), false, ~0i < u_input.a.x, global0.x), select(!select(vec4<bool>(false, global0.x, false, false), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(false, false, false, false), !vec4<bool>(true, false, global0.x, global0.x), select(vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x)), !any(vec2<bool>(global0.x, false))), false), func_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(810f, 497f), vec2<f32>(396f, -138f))))))), vec3<i32>(_wgslsmith_mod_i32(~(-9362i), ~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(45899i, 6194i, u_input.a.x)), vec3<i32>(-9043i, -22189i, 45079i))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(17678u, 76719u, 47457u, 0u), vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 33930u, 67590u, 1u)))));
    global1 = array<vec2<i32>, 18>();
    var var_0 = func_2(Struct_2(384f), firstTrailingBit(~(~(~68588u)))).a;
    let var_1 = vec4<bool>(any(!vec4<bool>(false, true, true, !global0.x)), true, true, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -691f) * vec2<f32>(var_0.a, var_0.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -160f) - vec2<f32>(2835f, -1242f))), vec3<i32>(countOneBits(1i), min(u_input.a.x ^ u_input.a.x, u_input.a.x), -(u_input.a.x >> (4294967295u % 32u))), vec4<u32>(~1u, countOneBits(1u), 96624u, min(1u, ~1u))));
    let var_2 = vec4<i32>(41615i, -1732i, max(1i, ~u_input.a.x | u_input.a.x), -7295i) & (min(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(11708i, u_input.a.x, u_input.a.x, -14027i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (firstTrailingBit(~(~vec4<u32>(0u, 4294967295u, 0u, 42293u))) % vec4<u32>(32u)));
    global2 = array<vec2<u32>, 31>();
    var var_3 = -min(u_input.a.x ^ u_input.a.x, abs(~var_2.x)) >> (reverseBits(8971u >> (min(4294967295u, 1u) % 32u)) % 32u);
    var var_4 = ~(~vec3<u32>(~(~4294967295u), _wgslsmith_clamp_u32(1u, max(0u, 39451u), 11895u), firstTrailingBit(12023u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-137f - 1000f), _wgslsmith_div_f32(var_0.a, 628f), _wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, var_0.a, 127f)))), ~vec2<u32>(1u, 11135u), -(~(~abs(vec3<i32>(0i, -7311i, -2147483647i)))));
}

