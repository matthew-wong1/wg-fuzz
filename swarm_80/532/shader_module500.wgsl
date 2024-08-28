struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: Struct_3 = Struct_3(2147483647i, Struct_1(vec2<f32>(244f, 1944f), -20489i), Struct_1(vec2<f32>(143f, 987f), -24004i));

var<private> global3: u32 = 76819u;

var<private> global4: Struct_5 = Struct_5(vec2<u32>(0u, 10555u), -1498f, -1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_5) -> bool {
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(38180u, arg_2.a.x, u_input.d, 66394u), ~countOneBits(vec4<u32>(13229u, 26014u, u_input.c.x, 0u))), global4.a.x);
    let var_1 = Struct_5(vec2<u32>(91934u, u_input.b), -1706f, _wgslsmith_mult_i32(~arg_2.c, -min(-15784i, ~global4.c)));
    let var_2 = all(vec2<bool>(!all(vec4<bool>(arg_1, arg_1, true, true)), ((0i & global4.c) == -arg_0.x) && true));
    global1 = _wgslsmith_mod_i32(-global2.b.b, _wgslsmith_clamp_i32(arg_2.c, 66278i, 25248i));
    let var_3 = abs(1u & (0u << (global4.a.x % 32u)));
    return false;
}

fn func_2(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = _wgslsmith_add_u32(~11044u ^ (3001u ^ ~(~global4.a.x)), 1u);
    global0 = u_input.d;
    let var_1 = select(vec4<bool>(true, select(true, all(vec3<bool>(false, false, true)), true), true, all(vec3<bool>(true, true, true))), vec4<bool>(true, any(vec3<bool>(all(vec2<bool>(false, false)), true, true)), func_3((vec4<i32>(1706i, global4.c, -2147483647i, 24281i) ^ vec4<i32>(-2147483647i, -1i, arg_0.c, global2.c.b)) ^ vec4<i32>(-1i, 0i, global2.b.b, arg_0.c), true && (4294967295u >= u_input.c.x), arg_0), false), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, true), true));
    var_0 = 71428u;
    global0 = 1u;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 808f)), 490f, any(select(var_1, vec4<bool>(var_1.x, var_1.x, var_1.x, false), var_1.x)))), _wgslsmith_f_op_f32(step(global4.b, global2.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f - arg_0.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(682f))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_2(Struct_5(u_input.c.zz, _wgslsmith_f_op_f32(max(global2.c.a.x, global4.b)), 10014i)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a.x, var_0.x, global4.b, -1000f)))))));
    let var_1 = vec2<u32>(u_input.d, firstLeadingBit(~max(1u, u_input.d)));
    global0 = 428u;
    global2 = Struct_3(abs(-global2.b.b), Struct_1(var_0.zw, _wgslsmith_mult_i32((-2384i ^ global2.b.b) | global2.b.b, -19304i)), Struct_1(global2.c.a, 0i));
    return !(~(~1i ^ (global4.c >> (global4.a.x % 32u))) >= 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true & func_1(), all(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), false)));
    let var_1 = Struct_3(global4.c, global2.b, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-209f, global4.b)) + vec2<f32>(global2.b.a.x, global2.b.a.x)), global2.b.a, 46530u >= firstTrailingBit(15280u))), countOneBits(global4.c | global2.b.b) & -global4.c));
    var var_2 = Struct_1(global2.c.a, ~global2.c.b);
    let var_3 = abs(global4.c);
    let var_4 = ~12590u;
    let var_5 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(reverseBits(u_input.b), min(u_input.d, 36356u), global4.a.x ^ global4.a.x, ~18227u))), ~max(select(reverseBits(vec4<u32>(u_input.a, var_4, 1u, 0u)), vec4<u32>(0u, 0u, u_input.d, global4.a.x), false), max(_wgslsmith_div_vec4_u32(vec4<u32>(41656u, var_4, u_input.c.x, 4294967295u), vec4<u32>(global4.a.x, 54633u, 6258u, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(38341u, 0u, 56174u, 1u), vec4<u32>(35069u, 113516u, 4294967295u, 1u)))), min(((vec4<u32>(25876u, 80737u, global4.a.x, 30113u) ^ vec4<u32>(global4.a.x, 174u, global4.a.x, 38896u)) & vec4<u32>(global4.a.x, var_4, var_4, var_4)) & _wgslsmith_div_vec4_u32(vec4<u32>(47u, u_input.b, 27310u, global4.a.x), ~vec4<u32>(u_input.c.x, 23577u, global4.a.x, var_4)), vec4<u32>(_wgslsmith_mult_u32(1u, firstTrailingBit(var_4)), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_4, global4.a.x), ~11959u), ~var_4 ^ 105169u)));
    var var_6 = ~countOneBits(~abs(vec3<i32>(-2147483647i, var_2.b, global2.b.b) ^ vec3<i32>(1i, var_2.b, global2.a)));
    var var_7 = !select(select(vec3<bool>(true, 64729u > var_4, any(vec4<bool>(false, false, true, var_0.x))), select(vec3<bool>(true, false, var_0.x), !vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, var_0.x), false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, false), var_0.x), var_0.x)), vec3<bool>(var_1.b.a.x == 383f, var_0.x & func_1(), false), vec3<bool>(true, any(vec3<bool>(var_0.x, var_0.x, var_0.x)), false));
    let var_8 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(121f, var_1.c.a.x, var_1.c.a.x, 358f) + vec4<f32>(-1140f, 297f, 557f, -1611f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, -776f, 469f, 1000f) - vec4<f32>(var_2.a.x, 294f, -567f, 701f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.a.x, var_1.c.a.x, var_1.b.a.x, 2180f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(237f, -742f, global2.c.a.x, global2.c.a.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.a.x, 2750f, var_2.a.x, global2.b.a.x), vec4<f32>(var_2.a.x, -1400f, var_2.a.x, global4.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-694f, 934f, -245f, -1000f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.b.a.x, global2.b.a.x)), var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f - global4.b) * _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(select(2106f, -903f, false))), -507f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_8.x, 1775f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(316f - 531f))) * global2.c.a));
}

