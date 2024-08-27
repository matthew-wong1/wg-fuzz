struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21>;

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-45361i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-43467i, -18399i, -27712i), vec3<i32>(-1i, i32(-2147483648), 6571i), vec3<i32>(13840i, 1i, 2147483647i), vec3<i32>(2147483647i, 2147483647i, 13645i), vec3<i32>(38939i, 2147483647i, -5014i), vec3<i32>(0i, 48756i, 39188i), vec3<i32>(0i, 40983i, 5425i), vec3<i32>(15366i, 0i, -47744i), vec3<i32>(0i, 2147483647i, -41551i), vec3<i32>(1i, i32(-2147483648), -197i), vec3<i32>(4756i, 34224i, -1i), vec3<i32>(-2648i, -4207i, 25309i), vec3<i32>(-4223i, 0i, 0i), vec3<i32>(-32602i, 39139i, 11347i), vec3<i32>(0i, i32(-2147483648), 3632i), vec3<i32>(4038i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-37290i, 3538i, -24021i), vec3<i32>(-21492i, -1i, -5710i));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global1 = array<vec3<i32>, 20>();
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.c.x, 50639u), vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(select(u_input.c.zx, vec2<u32>(4294967295u, 1u), true), u_input.c.yx), abs(countOneBits(u_input.b)))));
    global1 = array<vec3<i32>, 20>();
    let var_1 = Struct_3(~(18656u >> (var_0.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -332f), -firstTrailingBit(u_input.a.yx) & abs(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-49207i, u_input.a.x), u_input.a.yx), abs(vec2<i32>(-81030i, 7172i)))));
    var var_2 = Struct_1(vec2<bool>(!(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 14879u), vec2<u32>(u_input.b, u_input.c.x)) > 0u), select(_wgslsmith_mult_u32(var_0.x, 102501u), 4294967295u, select(true, false, true)) < u_input.b), vec4<u32>(~_wgslsmith_dot_vec2_u32(var_0, _wgslsmith_clamp_vec2_u32(u_input.c.xz, vec2<u32>(var_1.a, var_1.a), vec2<u32>(54675u, 38223u))), u_input.b, reverseBits(37414u), ~(~(~4294967295u))), ~vec4<u32>(1u, ~u_input.c.x, var_0.x >> (23785u % 32u), firstLeadingBit(var_0.x)) & (max(~vec4<u32>(1u, u_input.c.x, 26912u, u_input.c.x), firstLeadingBit(vec4<u32>(var_0.x, 1u, var_0.x, 2814u))) << (vec4<u32>(var_0.x, _wgslsmith_div_u32(var_0.x, 1u), ~1u, ~52711u) % vec4<u32>(32u))), select(vec4<bool>(true, !any(vec4<bool>(false, false, false, true)), (i32(-1i) * -24468i) < u_input.a.x, select(var_1.b != -161f, true, select(true, true, false))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)))), !(!select(true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1393f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.b, var_1.b), vec2<f32>(var_1.b, 158f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, 1270f)))))));
    return !all(!(!vec3<bool>(var_2.a.x, true, true))) | select(select(false, true, all(vec3<bool>(false, var_2.d.x, var_2.a.x))), false, true);
}

fn func_2() -> f32 {
    global1 = array<vec3<i32>, 20>();
    let var_0 = func_3();
    var var_1 = abs(vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(select(u_input.b, u_input.b, var_0), firstTrailingBit(13963u)), ~(~u_input.b)), ~u_input.c.x, 21328u));
    let var_2 = !vec2<bool>(var_0, any(vec2<bool>(true, true)));
    global0 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1322f)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 651f), _wgslsmith_f_op_f32(select(2181f, -684f, var_0)))) - 820f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f + _wgslsmith_f_op_f32(f32(-1f) * -811f)) + 739f));
}

fn func_1(arg_0: Struct_5) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(313f, _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1431f))))), _wgslsmith_f_op_f32(-1f))), -732f);
    var var_1 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(6841i, max(7753i, u_input.d), 0i)), select(_wgslsmith_clamp_vec3_i32(~u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(-53069i, -2147483647i, u_input.d)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, 18540i), vec3<i32>(u_input.a.x, 0i, u_input.d)), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)))));
    global0 = array<vec4<i32>, 21>();
    global1 = array<vec3<i32>, 20>();
    var_1 = vec2<i32>(var_1.x, var_1.x);
    return vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(u_input.b, u_input.c.x, arg_0.a.x, 43162u)) ^ _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(34284u, 11267u, arg_0.a.x, arg_0.a.x)), arg_0.a), vec4<u32>((u_input.c.x >> (69653u % 32u)) & 1u, 59121u, 0u, arg_0.a.x)), ~select(0u, 1u, true) << (arg_0.a.x % 32u), u_input.c.x, arg_0.a.x);
}

fn func_4(arg_0: vec4<i32>) -> vec3<u32> {
    global1 = array<vec3<i32>, 20>();
    global0 = array<vec4<i32>, 21>();
    var var_0 = countOneBits(reverseBits(4294967295u ^ u_input.c.x));
    var var_1 = Struct_3(66921u, 395f, arg_0.yx & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, arg_0.x) << (vec3<u32>(16761u, 1u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, arg_0.x, arg_0.x)), abs(16129i) & arg_0.x));
    var var_2 = Struct_4(Struct_1(vec2<bool>(_wgslsmith_f_op_f32(round(424f)) == _wgslsmith_f_op_f32(var_1.b - 912f), any(vec3<bool>(true, true, true))), _wgslsmith_add_vec4_u32(max(firstTrailingBit(vec4<u32>(51795u, var_1.a, 1u, u_input.c.x)), abs(vec4<u32>(53182u, 29075u, var_1.a, var_1.a))), ~(~vec4<u32>(u_input.b, 0u, 17067u, 32789u))), ~(~vec4<u32>(u_input.b, 79721u, var_1.a, 27136u)), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, func_3(), false), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b)) - _wgslsmith_f_op_f32(sign(-114f))), 1000f)), false, 0i);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec4<bool>(true, true, true, true);
    var var_2 = Struct_5(countOneBits(firstTrailingBit(~(~vec4<u32>(u_input.c.x, 35096u, 64157u, 4294967295u)))));
    var var_3 = false;
    var var_4 = func_4((select(vec4<i32>(u_input.a.x, u_input.d, u_input.d, u_input.d), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(2914u, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)]), !vec4<bool>(var_1.x, var_1.x, var_1.x, false)) | -_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)])) >> ((firstTrailingBit(~vec4<u32>(90662u, u_input.b, u_input.b, 4294967295u)) & func_1(Struct_5(var_2.a))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~vec3<u32>(var_4.x, 0u, 0u))), u_input.c), countOneBits(~43464u), ~_wgslsmith_mod_i32(-u_input.d, ~_wgslsmith_clamp_i32(-49161i, u_input.d, u_input.d)), global0[_wgslsmith_index_u32(select(4294967295u | var_4.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_2.a.x, var_2.a.x), var_2.a), ~17192u), var_1.x), 21u)] | ~vec4<i32>(u_input.a.x, i32(-1i) * -36486i, _wgslsmith_clamp_i32(u_input.d, 3872i, -38766i), 1i), _wgslsmith_f_op_f32(-709f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-481f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(634f + -1751f), -241f, any(vec4<bool>(true, var_1.x, false, var_1.x)))))));
}

