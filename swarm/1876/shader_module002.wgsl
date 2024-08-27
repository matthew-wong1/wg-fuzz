struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: u32 = 35194u;

var<private> global3: array<vec2<bool>, 18>;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: i32) -> bool {
    global2 = 11816u;
    global2 = arg_0.x;
    let var_0 = !(!(!select(!arg_2, vec3<bool>(false, true, arg_2.x), true)));
    var var_1 = vec3<bool>(!arg_2.x, true, arg_2.x);
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(64633u), 24u)];
    return !(var_1.x & (~54988u >= ~var_2.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(max(firstLeadingBit(~select(vec4<u32>(4294967295u, u_input.c.x, 3814u, u_input.c.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.c.x), false)), ~(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, 784u), vec4<u32>(32429u, 55924u, u_input.b.x, u_input.c.x)) ^ _wgslsmith_div_vec4_u32(u_input.b, u_input.b))), -2253f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1026f, 698f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1371f, -165f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1118f, 147f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, -427f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1116f, 910f), vec2<f32>(-298f, 717f))), _wgslsmith_div_vec2_f32(vec2<f32>(1706f, -313f), vec2<f32>(298f, -404f))))), u_input.b.yzx);
    var var_1 = Struct_2(var_0.b, Struct_1(select(var_0.a, vec4<u32>(var_0.a.x, u_input.b.x, 0u, var_0.a.x), !vec4<bool>(global4.x, false, global4.x, global4.x)) | select(~u_input.b, u_input.b & vec4<u32>(var_0.d.x, 4294967295u, var_0.a.x, 4294967295u), !vec4<bool>(global4.x, true, global4.x, false)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1383f, 1139f), var_0.c))))), _wgslsmith_sub_vec3_u32(u_input.b.yzz, vec3<u32>(1u, 22117u, ~1u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f)), -1720f), vec4<bool>(any(!(!vec3<bool>(global4.x, global4.x, global4.x))), select(false, select(false, false, any(vec4<bool>(true, global4.x, true, global4.x))), all(select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(global4.x, global4.x, false), global4.x))), func_3(u_input.b.yxy, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -33456i, -1i, u_input.a), -vec4<i32>(u_input.a, -1i, 21901i, 13299i)), select(!vec3<bool>(true, global4.x, global4.x), select(vec3<bool>(true, global4.x, false), vec3<bool>(global4.x, false, global4.x), global4.x), global4.x), 2147483647i), !func_3(_wgslsmith_mod_vec3_u32(u_input.b.wyx, vec3<u32>(var_0.a.x, u_input.b.x, var_0.d.x)), vec4<i32>(u_input.a, -18758i, 21758i, u_input.a), vec3<bool>(false, global4.x, global4.x), ~(-40185i))));
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(var_0.d.x), 24u)];
    global1 = array<Struct_1, 24>();
    let var_3 = Struct_1(vec4<u32>(~u_input.b.x, u_input.c.x ^ 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.d.x, u_input.b.x, u_input.b.x, 4294967295u), var_0.a), reverseBits(var_0.d.x)), var_1.a, vec2<f32>(-1790f, -1224f), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(23103u, 4294967295u, var_1.b.d.x)), var_2.d), ~(~u_input.b.wzz)), u_input.c, _wgslsmith_mult_vec3_u32(max(~var_0.d, ~var_2.a.xwy), ~vec3<u32>(0u, 0u, 51791u))));
    return Struct_2(_wgslsmith_f_op_f32(floor(-813f)), global1[_wgslsmith_index_u32(~(var_2.a.x >> (var_1.b.a.x % 32u)), 24u)], vec2<f32>(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_2.c.x)) + -702f)), vec4<bool>(true, true, any(select(!vec3<bool>(true, global4.x, false), !vec3<bool>(true, true, var_1.d.x), true)), !any(select(vec3<bool>(var_1.d.x, false, true), vec3<bool>(global4.x, global4.x, true), false))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    global1 = array<Struct_1, 24>();
    var var_1 = -abs(vec4<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, u_input.a)), u_input.a, ~(-8207i))) & (-max(firstTrailingBit(vec4<i32>(-3576i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)) << (firstLeadingBit(vec4<u32>(~var_0.b.a.x, _wgslsmith_add_u32(u_input.c.x, 4294967295u), _wgslsmith_add_u32(var_0.b.a.x, var_0.b.d.x), ~u_input.b.x)) % vec4<u32>(32u)));
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(~var_1.x | -8899i, max(1i, 31443i) & _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -1i, 1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 2147483647i)), _wgslsmith_clamp_i32(var_1.x, select(var_1.x, var_1.x, false), _wgslsmith_add_i32(u_input.a, -20699i)), ~(~u_input.a)), select(~(~vec4<i32>(-1i, 2147483647i, u_input.a, 22171i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(26828i, 32275i, u_input.a, 64278i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, var_1.x, u_input.a, 1i), vec4<i32>(47760i, var_1.x, 54369i, 2147483647i))), var_0.d.x)), vec4<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, var_1.x, u_input.a), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 17239i, var_1.x, 2147483647i), vec4<i32>(var_1.x, -2147483647i, u_input.a, u_input.a)))), reverseBits(13185i), abs(_wgslsmith_add_i32(4934i, _wgslsmith_sub_i32(u_input.a, u_input.a)))));
    var var_2 = func_2();
    return var_0.b;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_add_u32(1u, arg_0.b.a.x ^ arg_0.b.a.x) >> (u_input.b.x % 32u), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(20615u, arg_0.b.a.x)) ^ (min(0u, u_input.c.x) & ~u_input.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1498f - _wgslsmith_f_op_f32(select(arg_0.a, -619f, false))))), 539f, any(vec4<bool>(true, true, !global4.x, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1417f, _wgslsmith_f_op_f32(arg_0.a + arg_0.a)), vec2<f32>(arg_0.c.x, -1050f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b.c))), _wgslsmith_sub_vec3_u32(u_input.b.ywz, countOneBits(u_input.b.wxx) | min(arg_0.b.d, arg_0.b.a.xyz)));
    var_0 = func_2().b;
    global4 = vec3<bool>(true, !all(arg_0.d.wwx), any(arg_0.d));
    let var_1 = func_2().d.zy;
    var_0 = arg_0.b;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = 49142u >= ~u_input.b.x;
    global0 = array<vec2<bool>, 6>();
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-286f, -962f, var_0)))), _wgslsmith_f_op_f32(1167f * -895f)), func_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1592f + -305f), -1000f), func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, 182f))), vec4<bool>(global4.x, false, true, !global4.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-func_1().c))), vec4<bool>(global4.x, func_3(vec3<u32>(_wgslsmith_mult_u32(1u, u_input.c.x), u_input.c.x, 19912u), countOneBits(vec4<i32>(1i, u_input.a, u_input.a, -5187i)), func_2().d.yyy, _wgslsmith_div_i32(1i, abs(1i))), true, false));
    global2 = ~u_input.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.b.c.x * _wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b.c.x)), var_1.c.x))) - var_1.c)));
    global0 = array<vec2<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(select(vec4<i32>(u_input.a, -33981i, 24329i, u_input.a), vec4<i32>(-2147483647i, -28227i, u_input.a, u_input.a), var_1.d) ^ firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a)), vec4<i32>(countOneBits(-58809i), u_input.a, _wgslsmith_mod_i32(-2147483647i, u_input.a), -36149i)), 8643u);
}

