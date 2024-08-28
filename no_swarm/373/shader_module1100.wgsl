struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

var<private> global1: array<u32, 5> = array<u32, 5>(1u, 102776u, 0u, 4294967295u, 7178u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(~(-2147483647i), vec2<bool>(((global1[_wgslsmith_index_u32(16915u, 5u)] > 15578u) && true) | true, !(!any(vec2<bool>(false, false)))));
    let var_1 = select(!select(vec3<bool>(arg_0.a.x == -643f, var_0.b.x, !var_0.b.x), !select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, true, var_0.b.x)), !var_0.b.x), !select(vec3<bool>(var_0.b.x, any(vec3<bool>(var_0.b.x, false, var_0.b.x)), true), select(vec3<bool>(var_0.b.x, true, true), vec3<bool>(true, false, var_0.b.x), !vec3<bool>(var_0.b.x, var_0.b.x, false)), !select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(true, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, true))), select(select(!vec3<bool>(true, true, var_0.b.x), select(vec3<bool>(var_0.b.x, false, true), select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false), var_0.b.x), !var_0.b.x), var_0.b.x), !(!(!vec3<bool>(true, false, var_0.b.x))), vec3<bool>(true, true, true)));
    global1 = array<u32, 5>();
    let var_2 = vec2<bool>(false, var_0.b.x != !var_0.b.x);
    var var_3 = Struct_5(~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(4294967295u, 5u)], 6773u)), vec4<u32>(0u, global1[_wgslsmith_index_u32(31252u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], 5u)]), ~vec4<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(1u, 5u)], 1u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 29719u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 0u), vec4<u32>(0u, global1[_wgslsmith_index_u32(25487u, 5u)], 34338u, 9654u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_0.a.zx)))), var_0.b.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -344f, arg_0.a.x, -1067f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.x, -520f, arg_0.a.x, arg_0.a.x), vec4<f32>(765f, 2440f, 358f, -1280f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.a.x, -1824f, -1382f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(502f, arg_0.a.x, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1997f, arg_0.a.x, -731f, arg_0.a.x)), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1183f, arg_0.a.x, -829f, arg_0.a.x), vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1512f), var_1.x))))))), arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) * -797f)))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = reverseBits(_wgslsmith_mod_i32(-u_input.a, abs(arg_0.c.x)));
    var var_1 = 0i;
    var var_2 = Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a), vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 5u)], 1u)), 5u)], _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a, 5u)], 5u)], 5u)], 5u)], 73228u, 4294967295u)), 123792u << (0u % 32u), 30169u), vec4<u32>(~4294967295u, arg_0.d, ~arg_0.a, ~global1[_wgslsmith_index_u32(arg_0.d, 5u)])) >> (((~vec4<u32>(2322u, arg_0.d, arg_0.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2609u, 5u)], 5u)], 5u)], 5u)], 5u)]) << ((vec4<u32>(0u, global1[_wgslsmith_index_u32(arg_0.d, 5u)], 2646u, 4294967295u) << (vec4<u32>(12630u, 4294967295u, global1[_wgslsmith_index_u32(65499u, 5u)], 100214u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], arg_0.a, arg_0.a, 1u) | vec4<u32>(12341u, global1[_wgslsmith_index_u32(arg_0.a, 5u)], 54967u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)]))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.b)), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2187f, arg_0.b.x, arg_0.b.x, 282f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(func_3(Struct_3(vec3<f32>(-757f, -625f, arg_0.b.x)), vec2<i32>(u_input.a, arg_0.c.x))), arg_0.b.x, _wgslsmith_f_op_f32(-269f * arg_0.b.x))))), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1470f, arg_0.b.x, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, -1000f, arg_0.b.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-599f, 1000f, -688f) + vec3<f32>(arg_0.b.x, arg_0.b.x, 276f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.x, -1672f, 491f), vec3<f32>(691f, arg_0.b.x, -1477f), vec3<bool>(true, false, false)))))));
    var var_3 = -1i;
    global0 = array<vec2<bool>, 15>();
    return arg_0.b.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_5 {
    var var_0 = Struct_1(~arg_2, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1303f), _wgslsmith_f_op_f32(func_2(Struct_1(103414u, vec2<f32>(-279f, -345f), vec3<i32>(arg_3, 374i, arg_1), 23042u)))) + vec2<f32>(-534f, _wgslsmith_f_op_f32(sign(570f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(475f, 132f) - vec2<f32>(-510f, 1676f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-789f, 2351f)))))), -max(min(vec3<i32>(arg_3, 1i, arg_3), vec3<i32>(0i, u_input.a, arg_3)), -vec3<i32>(0i, arg_1, -34434i)) & vec3<i32>(abs(abs(-1i)), arg_1, 22585i), firstTrailingBit(25791u));
    var var_1 = reverseBits(var_0.c);
    let var_2 = var_0.b.x;
    let var_3 = _wgslsmith_clamp_u32(5147u, 1u << ((0u << (0u % 32u)) % 32u), ~(~(~(~global1[_wgslsmith_index_u32(arg_2, 5u)]))));
    var var_4 = false;
    return Struct_5(~(~(~(~arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-269f, var_0.b.x))), var_0.b.x), any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(func_2(Struct_1(7288u, var_0.b, vec3<i32>(-1017i, u_input.a, -1i), 2227u))), _wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(935f, -212f, 501f, var_0.b.x), vec4<f32>(2274f, var_0.b.x, -148f, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.b.x, var_0.b.x, var_0.b.x) + vec4<f32>(354f, var_0.b.x, 250f, var_0.b.x)))), Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1007f, var_0.b.x, -711f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1243f, var_0.b.x)))))));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = ~global1[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)] & ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~(arg_0.a.x >> (global1[_wgslsmith_index_u32(7183u, 5u)] % 32u)), 5u)], 11617u);
    let var_1 = Struct_1(~var_0, vec2<f32>(arg_0.b.x, 893f), _wgslsmith_sub_vec3_i32(max(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2260i, u_input.a, u_input.a), vec3<i32>(-4159i, 0i, 2147483647i)), vec3<i32>(u_input.a, -2147483647i, u_input.a)), select(vec3<i32>(0i, -1i, -52547i) ^ vec3<i32>(u_input.a, -24816i, u_input.a), vec3<i32>(u_input.a, -37739i, -21991i), select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_0.c), arg_0.c))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -109881i, 26996i), vec3<i32>(1i, u_input.a, u_input.a)) & ~vec3<i32>(-57682i, 175i, u_input.a))), 73903u);
    global1 = array<u32, 5>();
    global0 = array<vec2<bool>, 15>();
    var var_2 = 1u;
    return Struct_3(arg_0.d.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-253f)), _wgslsmith_f_op_f32(sign(-358f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, -157f)) * vec2<f32>(1f, 1f)))));
    let var_1 = func_4(func_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(28655u, 5u)], 1u, global1[_wgslsmith_index_u32(29736u, 5u)]) & vec4<u32>(45159u, 37996u, 15017u, 17110u), vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 5u)], global1[_wgslsmith_index_u32(7249u, 5u)], 1u) >> (vec4<u32>(18247u, global1[_wgslsmith_index_u32(4294967295u, 5u)], 28131u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]) % vec4<u32>(32u))), ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4539u, 5u)], 5u)], 5u)], 0u), 5u)], global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(4294967295u, 5u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5038u, 5u)], 5u)], 5u)], 5u)], 5u)], 0u), 5u)], global1[_wgslsmith_index_u32(19207u, 5u)]), -2147483647i, global1[_wgslsmith_index_u32(28845u, 5u)], ~(~(~u_input.a))));
    let var_2 = var_1;
    let var_3 = vec3<u32>(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79446u, 5u)], 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(56714u, 5u)], 5u)]), vec2<u32>(global1[_wgslsmith_index_u32(12086u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 5u)], 5u)]))), 5u)], _wgslsmith_mult_u32(10706u, 35338u), !all(vec4<bool>(false, false, false, false))), ~15658u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29873u, 5u)], 5u)]);
    var_0 = var_1.a.xy;
    global0 = array<vec2<bool>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_3.x, 5u)], 5u)], var_3.x, 48882u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)], 0u, 0u, 1u))), -63671i, global1[_wgslsmith_index_u32(var_3.x, 5u)], 0i).d.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 0u, ~_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 34668u, global1[_wgslsmith_index_u32(1u, 5u)], 26603u)), ~vec4<u32>(0u, 5062u, var_3.x, 26964u)) & vec4<u32>(abs(reverseBits(var_3.x)), 1u, _wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_mult_u32(var_3.x, var_3.x)), 1u & min(global1[_wgslsmith_index_u32(4294967295u, 5u)], var_3.x)));
}

