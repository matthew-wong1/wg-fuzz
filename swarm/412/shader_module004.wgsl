struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: vec2<f32> = vec2<f32>(118f, 392f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<u32>, arg_3: u32) -> vec3<i32> {
    global1 = array<vec2<f32>, 18>();
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, _wgslsmith_f_op_f32(f32(-1f) * -172f))), _wgslsmith_f_op_vec2_f32(-arg_1.wz), true & any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false))))));
    let var_0 = !select(true, true, false);
    var var_1 = !select(select(!(!vec4<bool>(false, true, false, var_0)), select(vec4<bool>(var_0, var_0, true, true), !vec4<bool>(var_0, true, true, var_0), var_0 == var_0), var_0), vec4<bool>(countOneBits(u_input.a.x) != -35358i, -542f >= _wgslsmith_f_op_f32(floor(-104f)), var_0, true), var_0);
    var_1 = vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(12002i, 0i), _wgslsmith_add_vec2_i32(u_input.a ^ u_input.a, -u_input.a)) != 0i, arg_3 > _wgslsmith_mod_u32(~arg_0, countOneBits(arg_2.x)), true, false);
    return vec3<i32>(1709i, u_input.a.x, -u_input.a.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = !any(vec4<bool>(global2.x == _wgslsmith_f_op_f32(-global2.x), arg_1.x, all(vec3<bool>(false, arg_2.c.x, true)), global2.x >= 1277f));
    global1 = array<vec2<f32>, 18>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1274f, global2.x)) * 721f) - global2.x))), 434f);
    var var_2 = 45546i;
    global2 = var_1;
    return firstTrailingBit(vec4<i32>(-1i, 0i, ~36204i & -u_input.a.x, u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = arg_0.c;
    global0 = array<Struct_2, 24>();
    var var_1 = ~vec4<u32>(15376u, _wgslsmith_mod_u32(arg_2, ~arg_2 << (59370u % 32u)), 28446u, arg_0.a.x);
    let var_2 = all(vec2<bool>(false, true)) & false;
    let var_3 = Struct_3(4294967295u);
    return arg_2;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -538f);
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_1(false | (true && (u_input.a.x != 1i)), vec3<i32>(-30214i, _wgslsmith_sub_i32(5269i, _wgslsmith_add_i32(_wgslsmith_mod_i32(20655i, 19322i), select(0i, u_input.a.x, arg_0.x))), _wgslsmith_sub_i32((-19827i & u_input.a.x) | ~(-2147483647i), func_1(max(1u, 4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -290f, global2.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 7829u)), 1u).x)), vec2<bool>(!((-122f < global2.x) && any(vec4<bool>(false, true, arg_0.x, false))), !(!arg_0.x)), false);
    let var_2 = _wgslsmith_div_u32(~(1u >> (~_wgslsmith_clamp_u32(1u, 24688u, 2507u) % 32u)), reverseBits(firstTrailingBit(_wgslsmith_div_u32(39139u, 1u))));
    var var_3 = firstTrailingBit(_wgslsmith_sub_u32(~1u, 43705u));
    return Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 17837u, 39500u, var_2) >> (~vec4<u32>(24742u, var_2, var_2, var_2) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, var_2, 4294967295u, 18485u) << (vec4<u32>(var_2, var_2, var_2, 1u) % vec4<u32>(32u)))) | func_4(Struct_4(min(vec3<u32>(32531u, var_2, 7265u), vec3<u32>(var_2, var_2, var_2)), select(4294967295u, var_2, arg_0.x), func_3(arg_0, arg_0.wx, Struct_1(arg_0.x, var_1.b, var_1.c, arg_0.x)), min(vec2<u32>(var_2, var_2), vec2<u32>(0u, var_2)), vec2<bool>(true, arg_0.x)), vec3<i32>(var_1.b.x, -2147483647i, firstTrailingBit(var_1.b.x)), 43813u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(min(63254i, ~(~u_input.a.x)) > -8523i, select(firstLeadingBit(vec3<i32>(~(-2147483647i), firstLeadingBit(7586i), 1i)), countOneBits(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, 34476i)), func_1(8213u, vec4<f32>(-531f, -1337f, global2.x, global2.x), vec2<u32>(12783u, 55436u), 111412u))), false), vec2<bool>(false, true), true);
    let var_1 = Struct_1(var_0.d, -var_0.b, vec2<bool>(var_0.c.x, !(!var_0.c.x)), !(var_0.c.x || !var_0.a));
    let var_2 = func_2(!vec4<bool>(true, !select(var_1.c.x, var_0.d, true), true, true));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.a, 1u, _wgslsmith_sub_u32(~_wgslsmith_div_u32(var_2.a, var_2.a), _wgslsmith_mult_u32(func_2(vec4<bool>(var_0.a, var_0.d, false, true)).a, var_2.a))), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, global2.x, var_1.a))) - _wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(floor(496f))), _wgslsmith_mod_vec3_i32(var_0.b, ~select(func_3(vec4<bool>(var_1.d, var_1.a, true, true), var_0.c, Struct_1(false, vec3<i32>(var_0.b.x, var_0.b.x, 42989i), vec2<bool>(true, false), false)).yxy, -var_0.b, vec3<bool>(true, true, true))), -4773i);
}

