struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> bool {
    global0 = array<vec3<i32>, 20>();
    var var_0 = 0u;
    global1 = arg_0;
    let var_1 = vec4<bool>(global1.c, global1.c, false, all(select(!select(vec4<bool>(false, arg_0.c, false, global1.c), vec4<bool>(global1.c, arg_0.c, false, true), arg_0.c), !vec4<bool>(arg_0.c, true, arg_0.c, false), !vec4<bool>(false, true, false, arg_0.c))));
    global1 = arg_0;
    return true;
}

fn func_3() -> u32 {
    let var_0 = firstLeadingBit(abs(_wgslsmith_mult_vec3_u32(max(global1.a.a.wyx, select(vec3<u32>(23291u, u_input.a, u_input.a), vec3<u32>(u_input.a, global1.a.e.x, 0u), vec3<bool>(false, true, global1.c))), select(global1.d.e.xww, vec3<u32>(u_input.a, u_input.a, u_input.a), true))));
    return countOneBits(4294967295u);
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<vec3<i32>, 20>();
    var var_0 = Struct_2(Struct_1(~(~(~vec4<u32>(global1.a.a.x, u_input.a, 59141u, 4294967295u))), global1.a.b, global1.d.c, u_input.a, ~global1.a.e), -_wgslsmith_mod_vec4_i32(global1.b ^ global1.b, abs(vec4<i32>(arg_2.x, arg_2.x, 2147483647i, arg_2.x) | vec4<i32>(global1.b.x, u_input.b, u_input.b, 1i))), all(!vec4<bool>(false, arg_0.x, arg_0.x, false)), global1.d, global1.d.b.x);
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(reverseBits(var_0.d.d), ~(~var_0.a.d), ~_wgslsmith_mult_u32(59499u, global1.d.e.x)), 84065u), u_input.a);
    var var_2 = Struct_1(min(var_0.d.a, var_0.d.e) & (_wgslsmith_mod_vec4_u32(~vec4<u32>(7325u, 1u, arg_1, var_0.a.a.x), _wgslsmith_mod_vec4_u32(global1.a.a, var_0.a.e)) & var_0.a.a), var_0.d.c.zx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.c * global1.a.c) - var_0.a.c) + vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1110f - global1.e) + _wgslsmith_f_op_f32(f32(-1f) * -479f)), 944f)), global1.a.d, vec4<u32>(~(global1.a.d | arg_1) << (func_3() % 32u), var_0.a.e.x, var_0.a.d, 4294967295u));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(var_2.c, vec3<f32>(_wgslsmith_f_op_f32(2033f - var_2.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))), global1.e)));
    return Struct_2(var_0.d, firstLeadingBit(vec4<i32>(abs(firstLeadingBit(13657i)), u_input.b, var_0.b.x, max(_wgslsmith_clamp_i32(global1.b.x, global1.b.x, var_0.b.x), select(-1i, 10862i, arg_0.x)))), all(!vec3<bool>(true, true, arg_0.x)), Struct_1(~min(~vec4<u32>(12062u, var_1.x, global1.a.a.x, arg_1), ~var_0.d.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.zy + _wgslsmith_f_op_vec2_f32(var_3.xy + vec2<f32>(var_3.x, 675f))) - vec2<f32>(_wgslsmith_div_f32(global1.e, 708f), global1.a.c.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_2.c * vec3<f32>(-417f, var_3.x, var_2.b.x)))))), reverseBits(u_input.a), ~(vec4<u32>(28610u, 0u, 0u, var_0.a.d) ^ var_0.d.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<u32> {
    global0 = array<vec3<i32>, 20>();
    let var_0 = func_4(vec3<bool>(true & func_2(Struct_2(Struct_1(arg_0.a, arg_0.c.xy, vec3<f32>(arg_1, -509f, arg_1), 70784u, vec4<u32>(45367u, u_input.a, 18328u, global1.a.d)), vec4<i32>(u_input.b, -1i, global1.b.x, global1.b.x), false, global1.a, -1433f), Struct_1(arg_0.e, global1.d.b, vec3<f32>(-855f, global1.d.c.x, -1497f), arg_0.d, vec4<u32>(1u, 4294967295u, arg_0.d, 4294967295u)), i32(-1i) * -18697i, vec4<f32>(arg_0.b.x, 146f, 979f, arg_0.b.x)), true == global1.c, ((global1.b.x | -18750i) & ~global1.b.x) >= min(abs(0i), firstTrailingBit(global1.b.x))), func_3(), _wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, global1.b.x) ^ select(vec2<i32>(global1.b.x, 2147483647i), vec2<i32>(0i, global1.b.x), global1.c)), reverseBits(~firstTrailingBit(global1.b.xz))));
    global1 = func_4(vec3<bool>(var_0.c, any(!select(vec4<bool>(false, global1.c, var_0.c, true), vec4<bool>(var_0.c, false, false, true), vec4<bool>(false, var_0.c, false, var_0.c))), true), ~4294967295u, firstTrailingBit(vec2<i32>(-1i) * -(vec2<i32>(23201i, 1i) & global1.b.zx)));
    var var_1 = var_0.a.a;
    var var_2 = Struct_2(func_4(select(select(!vec3<bool>(var_0.c, global1.c, false), !vec3<bool>(var_0.c, true, false), var_0.b.x <= 2147483647i), vec3<bool>(global1.c, true, global1.c), vec3<bool>(true, true, true)), 53366u, global1.b.zy).a, vec4<i32>(2147483647i, var_0.b.x, -(min(1i, 1i) ^ abs(u_input.b)), -_wgslsmith_clamp_i32(~var_0.b.x, ~u_input.b, global1.b.x)), !func_4(select(vec3<bool>(false, true, var_0.c), select(vec3<bool>(true, global1.c, false), vec3<bool>(true, false, global1.c), false), all(vec3<bool>(false, var_0.c, true))), func_3(), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global1.b.x), vec2<i32>(global1.b.x, 25937i))).c, func_4(vec3<bool>(false, var_0.c, all(vec2<bool>(true, true))), ~(~57987u), ((var_0.b.zx ^ vec2<i32>(u_input.b, u_input.b)) | _wgslsmith_sub_vec2_i32(vec2<i32>(global1.b.x, var_0.b.x), vec2<i32>(2147483647i, 2147483647i))) | vec2<i32>(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, -15893i, -22707i), vec3<i32>(2147483647i, u_input.b, -1i)))).a, _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)))))));
    return ~firstLeadingBit(vec3<u32>(~51809u, ~u_input.a, var_0.a.e.x << (global1.a.a.x % 32u)) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(16611u, var_1.x, 64380u), ~vec3<u32>(var_1.x, u_input.a, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(~(~4294967295u), u_input.a >> (u_input.a % 32u)) <= 1u;
    let var_1 = 4294967295u == u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.e))) * 220f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f), _wgslsmith_f_op_f32(abs(204f))));
    let var_3 = select(firstTrailingBit(min(global1.a.a.zyz, _wgslsmith_mult_vec3_u32(func_1(global1.d, 1203f), global1.a.a.wyw))), ~min(global1.a.a.yzy >> (vec3<u32>(global1.d.e.x, 56085u, global1.a.d) % vec3<u32>(32u)), vec3<u32>(u_input.a, ~u_input.a, ~4294967295u)), !vec3<bool>(var_1, !func_4(vec3<bool>(true, global1.c, global1.c), 4294967295u, global1.b.zw).c, func_2(Struct_2(Struct_1(vec4<u32>(global1.a.a.x, u_input.a, 0u, 0u), vec2<f32>(-2751f, -556f), global1.d.c, global1.d.d, vec4<u32>(68680u, 0u, u_input.a, 0u)), global1.b, global1.c, global1.a, 2388f), global1.a, 0i, vec4<f32>(global1.d.c.x, global1.e, 998f, 2130f)) & true));
    var var_4 = Struct_2(func_4(vec3<bool>(all(vec3<bool>(var_1, global1.c, var_1)), true, true), select(_wgslsmith_mod_u32(~global1.d.d, firstTrailingBit(1u)), (u_input.a << (0u % 32u)) ^ 3077u, var_1), global1.b.xx).d, func_4(!select(!vec3<bool>(global1.c, var_1, true), vec3<bool>(true, global1.c, global1.c), false & global1.c), global1.a.a.x, abs(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.b.xz, vec2<i32>(30451i, u_input.b)), _wgslsmith_add_i32(u_input.b, -2147483647i)))).b, true, global1.a, 577f);
    var_4 = func_4(vec3<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_1, var_4.c, global1.c), true)), var_1), 47059u, ~vec2<i32>(-_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(u_input.b, var_4.b.x, -10907i, 36041i)), min(i32(-1i) * -4608i, select(var_4.b.x, global1.b.x, var_4.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-19429i, 9689i), vec2<i32>(global1.b.x, -2147483647i)) >> (vec2<u32>(global1.a.d, 4294967295u) % vec2<u32>(32u)), vec2<i32>(-12161i, -1i)) ^ global1.b.x, vec2<i32>(~u_input.b, global1.b.x & ~u_input.b), global1.a.e.x);
}

