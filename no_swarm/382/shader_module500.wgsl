struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-17669i, i32(-2147483648), -34687i), vec3<i32>(10523i, 0i, 0i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 2147483647i, -35529i), vec3<i32>(i32(-2147483648), 5113i, 2147483647i), vec3<i32>(12536i, -8207i, -18499i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i));

var<private> global1: Struct_2 = Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, false), vec4<u32>(1570u, 4524u, 0u, 0u)), vec4<u32>(6237u, 43525u, 4294967295u, 36462u));

var<private> global2: bool = false;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>) -> bool {
    global0 = array<vec3<i32>, 7>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_u32(~(~4294967295u), _wgslsmith_mod_u32(1u, ~arg_1.x)), vec3<bool>(true, firstTrailingBit(-54i) > u_input.a.x, !global1.a.b.x), ~(~_wgslsmith_div_vec4_u32(global1.a.c, vec4<u32>(global1.a.c.x, 0u, 4294967295u, 1u)))), vec4<u32>(global1.a.c.x, 4294967295u, min(arg_1.x, 0u), _wgslsmith_div_u32(abs(global1.b.x), ~23999u)));
    global2 = any(vec2<bool>(true, true));
    var var_1 = ~firstLeadingBit(~_wgslsmith_add_i32(u_input.a.x, firstLeadingBit(u_input.a.x)));
    global2 = true;
    return !var_0.a.b.x;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    var var_0 = select(select(vec3<bool>(all(select(global1.a.b.xz, vec2<bool>(global1.a.b.x, global1.a.b.x), true)), false, !select(global1.a.b.x, global1.a.b.x, true)), vec3<bool>(firstTrailingBit(1u) <= abs(1u), !global1.a.b.x, func_3(vec2<bool>(global1.a.b.x, false), vec2<u32>(global1.b.x, global1.b.x))), false), global1.a.b, global1.a.b);
    global0 = array<vec3<i32>, 7>();
    let var_1 = global1.a;
    let var_2 = Struct_2(global1.a, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global1.a.a, global1.a.a, 28778u, 78053u)), ~vec4<u32>(14359u, 1u, 26457u, 1u)), ~var_1.c), abs(vec4<u32>(15984u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.b.x, global1.a.c.x, 0u), vec4<u32>(var_1.a, var_1.c.x, var_1.a, 4294967295u)), ~17298u, _wgslsmith_clamp_u32(global1.a.a, var_1.c.x, global1.b.x)))));
    var var_3 = _wgslsmith_mod_i32(-9398i, ~(-(~(~67958i))));
    return abs(var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = global1.a;
    let var_1 = false;
    global1 = Struct_2(Struct_1(~global1.b.x, global1.a.b, vec4<u32>(arg_2.x, ~4294967295u, ~var_0.c.x, ~arg_2.x)), vec4<u32>(arg_0, global1.b.x, ~(~0u), 76u));
    global1 = Struct_2(Struct_1(countOneBits(global1.b.x), select(vec3<bool>(false, arg_1.a.b.x, func_3(var_0.b.yx, var_0.c.zy)), var_0.b, select(!vec3<bool>(false, arg_1.a.b.x, true), !var_0.b, true)), ~vec4<u32>(var_0.c.x, ~arg_0, arg_1.a.c.x, arg_1.a.c.x >> (4294967295u % 32u))), vec4<u32>(0u, 48570u, (~arg_2.x | ~37976u) | _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0, 12705u), _wgslsmith_mod_u32(arg_2.x, 27810u)), arg_1.a.a));
    var var_2 = arg_1;
    return Struct_1(_wgslsmith_clamp_u32(arg_0 ^ 10901u, _wgslsmith_mult_u32(~global1.a.a, arg_1.b.x), 4294967295u), select(var_0.b, var_2.a.b, abs(1u) == ~select(var_0.c.x, var_2.a.c.x, false)), max(_wgslsmith_clamp_vec4_u32(arg_1.a.c << (abs(var_0.c) % vec4<u32>(32u)), var_0.c, ~vec4<u32>(var_0.c.x, 53805u, arg_1.b.x, 4294967295u)), vec4<u32>(34317u, 1721u, var_0.a, var_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(func_4(~(~(1u & arg_2.b.x)), Struct_2(Struct_1(~64866u, !arg_0.b, ~global1.a.c), min(_wgslsmith_div_vec4_u32(arg_0.c, vec4<u32>(4294967295u, 57583u, arg_0.a, global1.b.x)), ~arg_2.a.c)), global1.b.yzx), vec4<u32>(_wgslsmith_mult_u32(min(1u, 61533u), ~global1.b.x) << (25473u % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(12278u & arg_2.a.a, 1u), 4294967295u), global1.a.a, 0u));
    global1 = Struct_2(func_4(min(6031u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.a.a, arg_0.a), global1.b.x, arg_1.a.a)), Struct_2(global1.a, vec4<u32>(~37433u, global1.b.x, ~var_0.b.x, ~arg_0.c.x)), global1.b.xzx << (~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a, 4294967295u, 3296u), global1.a.c.yyw) % vec3<u32>(32u))), vec4<u32>(~(~global1.a.c.x), arg_0.a, _wgslsmith_clamp_u32(~7225u, _wgslsmith_add_u32(global1.a.a, arg_0.c.x), 0u >> (var_0.a.c.x % 32u)) << (1u % 32u), ~global1.b.x));
    var var_1 = false;
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-208f - -1817f);
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> f32 {
    var var_0 = false & global1.a.b.x;
    var_0 = arg_0.d && (arg_0.b.a.b.x && false);
    global0 = array<vec3<i32>, 7>();
    let var_1 = func_5(func_4(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, arg_1.x, 0u), ~vec4<u32>(global1.a.c.x, arg_1.x, arg_0.a, 90371u)) | ~func_2(u_input.a), Struct_2(Struct_1(global1.a.a, select(arg_0.b.a.b, vec3<bool>(arg_0.b.a.b.x, arg_0.b.a.b.x, global1.a.b.x), global1.a.b.x), min(vec4<u32>(4294967295u, arg_1.x, 17269u, 4294967295u), global1.b)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.a.a, 0u, 71934u, 44583u), vec4<u32>(global1.b.x, arg_1.x, 10278u, arg_1.x)), arg_0.b.b)), ~(arg_1 ^ ~arg_0.b.b.wxy)), arg_0.b, arg_0.b);
    global2 = arg_0.b.a.b.x;
    return 964f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 7>();
    global2 = global1.a.b.x;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(global1.a.c.x, Struct_2(Struct_1(38200u, global1.a.b, global1.a.c), global1.b), -686f, false, vec2<i32>(24864i, u_input.a.x)), global1.a.c.zzy)), -1417f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1338f + 1820f) - -996f), -449f) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-110f, -624f, 364f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(744f, -1368f, -524f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1319f, 527f, -241f)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(659f * -430f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1419f, _wgslsmith_div_f32(-520f, -1039f), _wgslsmith_f_op_f32(sign(-825f))))), global1.a.b.x)));
    let var_1 = Struct_2(Struct_1(global1.b.x, global1.a.b, select(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global1.b, global1.b), global1.b), (vec4<u32>(global1.b.x, global1.b.x, 4294967295u, 4294967295u) >> (global1.a.c % vec4<u32>(32u))) & global1.a.c, vec4<bool>(!global1.a.b.x, func_3(global1.a.b.zy, global1.b.yz), global1.a.b.x && global1.a.b.x, true))), _wgslsmith_sub_vec4_u32(global1.a.c, global1.b) ^ global1.b);
    var var_2 = u_input.a.x;
    global1 = Struct_2(global1.a, global1.b);
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-232f, _wgslsmith_f_op_f32(func_1(Struct_3(~1u, func_5(Struct_1(26475u, var_1.a.b, global1.a.c), Struct_2(Struct_1(var_1.a.a, vec3<bool>(global1.a.b.x, true, false), vec4<u32>(global1.b.x, 4294967295u, var_1.b.x, var_1.b.x)), var_1.b), Struct_2(Struct_1(global1.b.x, vec3<bool>(var_1.a.b.x, global1.a.b.x, var_1.a.b.x), vec4<u32>(global1.a.a, 4294967295u, var_1.a.c.x, var_1.a.a)), vec4<u32>(61339u, global1.a.a, 1u, 0u))), 2198f, all(var_1.a.b.xz), vec2<i32>(-1i, 1i)), _wgslsmith_sub_vec3_u32(global1.b.zwz, ~vec3<u32>(1u, var_1.b.x, 0u)))), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, u_input.a.x, u_input.a.x & -2147483647i);
}

