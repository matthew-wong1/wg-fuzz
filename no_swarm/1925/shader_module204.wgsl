struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<Struct_3, 8>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = array<i32, 6>();
    let var_0 = 0u;
    global0 = array<i32, 6>();
    global1 = array<Struct_3, 8>();
    let var_1 = ~vec3<u32>(abs(_wgslsmith_mult_u32(1u, var_0) << (25514u % 32u)), _wgslsmith_add_u32(~(var_0 & var_0), abs(u_input.e << (0u % 32u))), var_0);
    return 759f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec4<f32> {
    var var_0 = ~4294967295u;
    let var_1 = min(-u_input.a.xzx, u_input.b);
    var var_2 = ~reverseBits(countOneBits(-_wgslsmith_mod_vec3_i32(var_1, var_1)));
    global1 = array<Struct_3, 8>();
    let var_3 = _wgslsmith_mod_vec2_i32(reverseBits(arg_0.c), u_input.a.wz);
    return arg_1.a.a;
}

fn func_2() -> i32 {
    global1 = array<Struct_3, 8>();
    var var_0 = 36061u;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(1304f, -1274f, 1594f, -2052f), vec4<u32>(131527u, u_input.c, u_input.e, u_input.e), _wgslsmith_clamp_vec2_i32(u_input.b.zx, vec2<i32>(u_input.b.x, 1i), u_input.b.yx), ~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.e), select(true, true, false)), Struct_2(Struct_1(vec4<f32>(301f, 1207f, -1332f, -880f), vec4<u32>(u_input.e, 47618u, u_input.e, 47832u), u_input.a.yy, vec4<u32>(24294u, u_input.e, 1u, u_input.c), false), max(-2543i, u_input.a.x)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-768f)) - _wgslsmith_f_op_f32(min(249f, 398f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(953f + -768f), -868f, _wgslsmith_f_op_f32(min(1474f, 135f)), _wgslsmith_f_op_f32(-1446f + 407f))))), firstTrailingBit(~(~(~vec4<u32>(0u, 12592u, 1u, 0u)))), ~_wgslsmith_mult_vec2_i32(firstTrailingBit(~u_input.a.zz), abs(u_input.a.zy)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~reverseBits(vec4<u32>(u_input.c, u_input.e, 29120u, u_input.e)), min(~vec4<u32>(87409u, u_input.e, 16187u, u_input.c), vec4<u32>(3506u, 1u, 1u, 20107u))), vec4<u32>(countOneBits(~0u), u_input.c, 4294967295u, u_input.c)), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false))));
    global0 = array<i32, 6>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-667f - -248f), _wgslsmith_f_op_f32(-var_1.a.x)));
    return _wgslsmith_dot_vec2_i32(var_1.c, countOneBits(select(vec2<i32>(countOneBits(-17427i), global0[_wgslsmith_index_u32(~0u, 6u)]), u_input.a.xz >> ((var_1.d.wx ^ vec2<u32>(var_1.d.x, 49684u)) % vec2<u32>(32u)), !vec2<bool>(true, var_1.e))));
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(arg_0, abs(arg_0.c.x));
    let var_1 = !select(vec4<bool>((var_0.a.e || false) | !arg_0.e, !var_0.a.e, !(!var_0.a.e), var_0.a.e), vec4<bool>(-587f <= _wgslsmith_f_op_f32(min(arg_0.a.x, arg_0.a.x)), any(select(vec3<bool>(true, false, arg_0.e), vec3<bool>(true, arg_0.e, true), vec3<bool>(true, false, arg_0.e))), all(select(vec4<bool>(false, false, arg_0.e, arg_0.e), vec4<bool>(var_0.a.e, true, true, arg_0.e), vec4<bool>(false, true, false, true))), any(!vec4<bool>(var_0.a.e, false, true, true))), true);
    let var_2 = vec4<bool>(var_1.x, !all(select(select(vec2<bool>(true, var_1.x), var_1.wy, var_1.zy), var_1.yx, arg_0.c.x <= 27402i)), true != !select(false, true, false), var_1.x);
    var var_3 = var_0;
    let var_4 = var_1;
    return Struct_3(var_4.x, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-885f + -207f), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true))), -1000f, 709f)), countOneBits(vec4<u32>(u_input.c, u_input.e, ~u_input.e, ~0u)), -vec2<i32>(func_2(), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 0u, u_input.c), 6u)]), reverseBits(~(~vec4<u32>(4294967295u, 1u, 0u, 1u))), true & (_wgslsmith_add_u32(u_input.c, 4855u) > ~u_input.e)));
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    var var_1 = var_0.b.a.x;
    global0 = array<i32, 6>();
    var var_2 = -16246i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(var_0.b.c.x << (0u % 32u), global0[_wgslsmith_index_u32(~4294967295u, 6u)], 40164i, ~1i), countOneBits(vec4<i32>(global0[_wgslsmith_index_u32(u_input.e, 6u)], 1i, 1892i, u_input.d))), -vec4<i32>(select(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], true), var_0.b.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-17938i, global0[_wgslsmith_index_u32(var_0.b.b.x, 6u)], u_input.a.x), vec3<i32>(-37036i, -2147483647i, 1i)), ~11913i), ~_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.b.c.x, var_0.b.c.x, 6921i, global0[_wgslsmith_index_u32(u_input.e, 6u)]), ~u_input.a)), select(vec4<i32>(reverseBits(-17072i), var_0.b.c.x, -2147483647i, i32(-1i) * -2147483647i) ^ u_input.a, -_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), -vec4<i32>(-2147483647i, 0i, 0i, u_input.d)), vec4<bool>(_wgslsmith_f_op_f32(1349f + var_0.b.a.x) != _wgslsmith_f_op_f32(-394f * var_0.b.a.x), false, all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), var_0.b.e)), var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.a.x, var_0.b.a.x)))), ~(~var_0.b.b));
}

