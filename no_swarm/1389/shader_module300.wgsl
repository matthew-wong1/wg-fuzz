struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = arg_0;
    let var_1 = var_0.d;
    var var_2 = -41040i ^ global1.a.x;
    var var_3 = arg_1.c.b.b;
    let var_4 = !(!arg_0.d.yzx);
    return -32818i;
}

fn func_2() -> Struct_3 {
    global0 = array<vec2<bool>, 19>();
    global1 = Struct_3(-(((vec3<i32>(global1.e.c.x, 1i, 40205i) << (vec3<u32>(33497u, u_input.a.x, 32340u) % vec3<u32>(32u))) ^ max(vec3<i32>(-1i, global1.a.x, 1i), vec3<i32>(2147483647i, global1.e.c.x, 1i))) ^ max(~vec3<i32>(39739i, global1.a.x, -31163i), ~vec3<i32>(global1.e.a.x, global1.e.c.x, -19948i))), global1.e.b.e, global1.e, _wgslsmith_f_op_vec2_f32(-global1.d), Struct_2(global1.e.a, Struct_1(12669u >> (_wgslsmith_sub_u32(u_input.a.x, 34409u) % 32u), !any(global1.c.b.d), true, global1.c.b.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(210f, -840f, false)), global1.c.b.e)), vec3<i32>(12180i, _wgslsmith_mod_i32(firstTrailingBit(global1.a.x), func_3(Struct_1(u_input.a.x, false, false, vec4<bool>(true, false, true, false), global1.c.b.e), Struct_3(global1.a, -882f, Struct_2(vec4<i32>(global1.a.x, global1.e.c.x, global1.e.c.x, global1.e.c.x), global1.c.b, vec3<i32>(global1.a.x, 0i, 42594i)), vec2<f32>(global1.b, 808f), global1.e))), _wgslsmith_add_i32(func_3(global1.c.b, Struct_3(global1.e.a.zxx, global1.e.b.e, global1.c, global1.d, Struct_2(vec4<i32>(0i, global1.c.c.x, global1.e.c.x, 2147483647i), Struct_1(u_input.a.x, true, false, global1.c.b.d, 833f), global1.a))), countOneBits(global1.c.a.x)))));
    global1 = Struct_3(global1.a, -1000f, global1.e, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.d - global1.d), _wgslsmith_f_op_vec2_f32(global1.d * global1.d), !vec2<bool>(global1.e.b.d.x, false))) * vec2<f32>(_wgslsmith_f_op_f32(step(global1.d.x, -515f)), -892f)), global1.d)), Struct_2(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(global1.e.a.x, global1.e.c.x, 0i, global1.a.x), global1.c.a), vec4<i32>(_wgslsmith_div_i32(global1.e.c.x, global1.a.x), global1.a.x << (0u % 32u), _wgslsmith_mod_i32(-5028i, -41618i), abs(-2147483647i))), Struct_1(47586u, true, global1.c.b.c, vec4<bool>(true, true, global1.c.b.d.x, all(global1.c.b.d.zzz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), reverseBits(vec3<i32>(-global1.e.a.x, 7502i, -30752i))));
    var var_0 = true;
    let var_1 = Struct_2(global1.c.a, Struct_1(~_wgslsmith_clamp_u32(~global1.e.b.a, u_input.a.x, _wgslsmith_mult_u32(global1.c.b.a, global1.c.b.a)), global1.e.b.d.x, !select(true, !global1.e.b.d.x, any(vec2<bool>(true, false))), select(vec4<bool>(!global1.e.b.b, true, global1.e.b.d.x & global1.c.b.d.x, global1.e.b.a != global1.e.b.a), global1.c.b.d, global1.c.b.c), _wgslsmith_f_op_f32(f32(-1f) * -797f)), ~select(_wgslsmith_sub_vec3_i32(global1.c.c << (vec3<u32>(global1.c.b.a, global1.e.b.a, 1u) % vec3<u32>(32u)), global1.c.a.xxx ^ global1.a), abs(_wgslsmith_div_vec3_i32(global1.c.c, vec3<i32>(1i, global1.a.x, 2147483647i))), global1.e.b.b));
    return Struct_3(select(select(var_1.c, _wgslsmith_mod_vec3_i32(firstTrailingBit(var_1.a.yxz), ~var_1.a.xwz), true), var_1.a.xxw, global1.e.b.d.xzx), global1.c.b.e, var_1, global1.d, global1.e);
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    let var_0 = Struct_4(func_2().e.b, -reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_0.a.x), vec2<i32>(global1.c.a.x, -1i))) ^ 2147483647i, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.d))))), 439f);
    let var_1 = global1.c.b.c;
    global0 = array<vec2<bool>, 19>();
    let var_2 = func_2().c.b.d.yz;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.d.x, global1.d.x, arg_1, arg_0.e.b.e))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(2780f, global1.b)), _wgslsmith_f_op_f32(arg_0.d.x * arg_1), _wgslsmith_f_op_f32(exp2(global1.e.b.e)), global1.b)))));
    return vec2<bool>(all(select(vec4<bool>(global1.b == -307f, true, var_2.x, global1.c.b.c), vec4<bool>(true, var_2.x, global1.b <= 2290f, true), vec4<bool>(!global1.c.b.c, var_2.x, any(vec4<bool>(false, global1.e.b.b, var_2.x, global1.e.b.b)), any(arg_0.c.b.d)))), any(vec2<bool>(arg_0.c.b.d.x, all(vec4<bool>(arg_0.c.b.b, var_2.x, var_0.a.d.x, var_0.a.d.x)))));
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec2<f32> {
    var var_0 = 1000f;
    let var_1 = (~_wgslsmith_add_vec4_u32(vec4<u32>(8228u, 29015u, 23822u, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, global1.e.b.a, global1.e.b.a)) >> (((vec4<u32>(global1.c.b.a, u_input.a.x, u_input.a.x, 108118u) & max(vec4<u32>(0u, 53818u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x))) >> (~vec4<u32>(7079u, 96878u, 1u, 44927u) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ vec4<u32>(53389u, _wgslsmith_mult_u32(~(~35796u), ~global1.e.b.a), 0u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a), _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)));
    var_0 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0)), -405f)), -1145f));
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1434f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1922f + global1.e.b.e), 1324f) + -465f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_clamp_i32(global1.a.x >> (global1.c.b.a % 32u), global1.c.a.x, ~0i), func_4(func_2(), -649f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, -298f))))))));
    global1 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, -173f, var_0.x))), vec3<f32>(var_0.x, -366f, -238f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = global1.e.c.x & _wgslsmith_mult_i32(-reverseBits(global1.e.a.x), global1.c.c.x);
    var var_3 = Struct_4(Struct_1(58568u & ~func_2().e.b.a, !any(select(vec2<bool>(global1.e.b.c, true), vec2<bool>(false, global1.e.b.c), global0[_wgslsmith_index_u32(global1.c.b.a, 19u)])), global1.e.b.c, select(global1.c.b.d, !select(vec4<bool>(false, global1.e.b.c, false, false), global1.c.b.d, vec4<bool>(global1.c.b.c, global1.e.b.b, true, global1.c.b.b)), !global1.e.b.d), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - var_0.x))), 981f))), firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, -13465i, var_2, var_2)), global1.e.a), ~_wgslsmith_add_vec4_i32(global1.c.a, vec4<i32>(-1i, 0i, 2147483647i, 1i)))), _wgslsmith_f_op_vec2_f32(-var_1.xx), -2531f);
    return _wgslsmith_div_f32(-1048f, global1.e.b.e) != var_3.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, countOneBits(2147483647i)), global1.c.a.x, min(reverseBits(global1.a.x), ~(-55352i))), select(global1.a, vec3<i32>(global1.a.x, 2029i, global1.a.x | global1.e.c.x), vec3<bool>(func_1(), false, all(global1.e.b.d.zyz)))) >> (0u % 32u);
    var var_2 = Struct_4(global1.e.b, firstTrailingBit(select(max(global1.e.c.x, global1.c.c.x), global1.e.a.x, global1.e.b.c)), global1.d, _wgslsmith_div_f32(global1.c.b.e, _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.b.e))))));
    var_2 = Struct_4(Struct_1(~u_input.a.x & countOneBits(4294967295u), !select(func_1(), true, any(vec4<bool>(true, var_2.a.b, var_2.a.b, false))), global1.e.b.b, var_2.a.d, -1276f), global1.c.a.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(290f, _wgslsmith_f_op_f32(ceil(global1.c.b.e))))), vec2<f32>(-1782f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_2.c.x))))), select(!func_2().e.b.d.yy, global1.e.b.d.wx, vec2<bool>(true, global1.c.b.c | var_2.a.d.x)))), _wgslsmith_div_f32(-775f, _wgslsmith_f_op_f32(-var_2.d)));
    var var_3 = Struct_4(Struct_1(u_input.a.x, any(!(!global1.c.b.d)), global1.c.b.d.x, func_2().e.b.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-297f, _wgslsmith_f_op_f32(-var_2.c.x)))), func_2().a.x, var_2.c, var_2.a.e);
    let var_4 = Struct_3(global1.a, -405f, Struct_2(vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b, 1i, global1.c.c.x), global1.e.a.wyz), _wgslsmith_div_i32(~var_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, 56273i, 18540i, 10976i), vec4<i32>(global1.a.x, 36744i, 32226i, 53183i))), ~abs(2147483647i), _wgslsmith_mod_i32(select(-38846i, var_1, false), global1.c.c.x)), var_2.a, func_2().e.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.c - global1.d)))) * var_2.c), Struct_2(global1.c.a, var_2.a, func_2().c.c));
    var_2 = Struct_4(var_2.a, _wgslsmith_sub_i32(var_2.b, ~max(var_1 ^ var_1, var_2.b)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.e.b.e)) - 295f))), _wgslsmith_f_op_f32(max(-740f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(661f + var_3.a.e)))))), _wgslsmith_f_op_f32(round(1302f)));
    var var_5 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_4.e.b.a, var_4.c.b.a, var_4.c.b.a), vec4<u32>(var_2.a.a, 63795u, var_4.e.b.a, 20141u)), vec4<u32>(u_input.a.x, 4294967295u, var_2.a.a, 30417u) & vec4<u32>(var_4.e.b.a, var_4.c.b.a, 0u, var_2.a.a)), select(~vec4<u32>(1u, 47957u, var_2.a.a, 45577u), ~vec4<u32>(global1.c.b.a, u_input.a.x, 0u, 31879u), func_2().e.b.d)), ~firstTrailingBit(vec4<u32>(var_4.e.b.a, 28534u, 10736u, u_input.a.x) | vec4<u32>(5030u, var_2.a.a, var_4.e.b.a, global1.c.b.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.c.b.a, 4294967295u, var_2.a.a, u_input.a.x) | ~vec4<u32>(var_2.a.a, 5465u, global1.e.b.a, 1u), ~(~vec4<u32>(1u, 77605u, 55311u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(329f * var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.e)) + _wgslsmith_f_op_f32(abs(-560f)))), _wgslsmith_div_f32(var_3.a.e, var_3.a.e)), ~var_4.c.b.a, var_4.e.b.a, ~1u);
}

