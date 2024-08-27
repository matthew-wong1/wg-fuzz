struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(2147483647i, 0u, 65975u);

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: u32 = 1u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global1 = array<vec2<f32>, 18>();
    let var_0 = Struct_4(i32(-1i) * -8817i, ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 28013u), u_input.b), ~max(u_input.b.x, 56753u), true), global0.b);
    var var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4214u, u_input.b.x, 43496u, var_0.b), vec4<u32>(u_input.b.x, global0.c, global0.c, var_0.b)), 0u), ~(~vec3<u32>(u_input.b.x, 1u, 0u))), vec3<u32>(~_wgslsmith_sub_u32(64868u, 13373u), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(128564u, 1u), vec2<u32>(u_input.b.x, 79131u))), u_input.b.x | global0.c)), _wgslsmith_mult_vec3_u32(~countOneBits(countOneBits(vec3<u32>(4294967295u, 0u, var_0.c))), ~(~vec3<u32>(44990u, 19134u, u_input.b.x)) | vec3<u32>(var_0.c, 1u, 4294967295u)));
    global0 = var_0;
    let var_2 = abs(var_0.c & ~(~u_input.b.x | 0u));
    return firstTrailingBit(~22279u);
}

fn func_2() -> Struct_4 {
    global2 = global0.b;
    global0 = Struct_4(~u_input.a.x, global0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(81831u & global0.b, u_input.b.x), max(~u_input.b, vec2<u32>(3417u, 169u))) ^ (~func_3() >> (global0.b % 32u)));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -603f);
    let var_1 = ~_wgslsmith_mult_u32(4294967295u ^ (40337u << (u_input.b.x % 32u)), ~firstLeadingBit(u_input.b.x)) << (u_input.b.x % 32u);
    global2 = 61499u;
    return Struct_4(u_input.a.x, var_1, _wgslsmith_div_u32(~u_input.b.x & ~(~var_1), max(~u_input.b.x, min(max(1u, 2205u), _wgslsmith_mult_u32(var_1, global0.b)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(sign(-222f));
    let var_1 = abs(98i);
    global2 = arg_1.x;
    global1 = array<vec2<f32>, 18>();
    let var_2 = arg_2;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(683f, 105f, 571f) * vec3<f32>(737f, 1000f, 131f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(376f, -2188f, 224f) - vec3<f32>(-1187f, -283f, -1052f)), any(arg_2))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1012f), -559f, _wgslsmith_f_op_f32(ceil(-197f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(959f, -471f, 253f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, -851f, 1000f))), select(arg_0.c, vec3<bool>(all(arg_2), true, false), vec3<bool>(arg_2.x, true, true)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1026f)), _wgslsmith_f_op_f32(f32(-1f) * -568f))), 1444f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(918f * 313f), 258f)))), arg_2.zzz));
    var var_1 = arg_0.a;
    var var_2 = all(!arg_0.c.xx);
    let var_3 = Struct_3(Struct_2(!arg_0.c.x, arg_0.d, arg_0.c, arg_0.e, Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.b.b.x, 0i, -10720i, -43031i), vec4<i32>(arg_0.d.a.x, 39923i, global0.a, 1i) | arg_0.d.a), u_input.a, false)));
    global0 = Struct_4(u_input.a.x, 0u, min(~(~arg_1), ~23640u) | 0u);
    return Struct_1(var_3.a.d.b, vec4<i32>(1i, i32(-1i) * -19604i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, ~2462i, ~global0.a), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, var_3.a.d.b.x, -21133i, -3722i), vec4<i32>(var_3.a.d.b.x, 1i, u_input.a.x, var_3.a.e.b.x), reverseBits(var_3.a.e.b))), _wgslsmith_clamp_i32(global0.a, _wgslsmith_div_i32(i32(-1i) * -1i, 1i), _wgslsmith_dot_vec4_i32(var_3.a.b.b, vec4<i32>(global0.a, arg_0.e.b.x, 8711i, u_input.a.x)))), arg_0.a);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> StorageBuffer {
    global1 = array<vec2<f32>, 18>();
    var var_0 = Struct_2(any(vec4<bool>((0u & u_input.b.x) == 78523u, all(vec2<bool>(true, true)), false, true)), func_5(func_4(Struct_1(reverseBits(u_input.a), u_input.a, true), ~(~vec4<u32>(4294967295u, 1u, 442u, 51452u)), func_2(), Struct_2(true, Struct_1(u_input.a, vec4<i32>(global0.a, 1i, 0i, -2147483647i), false), vec3<bool>(true, true, true), Struct_1(u_input.a, u_input.a, true), Struct_1(u_input.a, u_input.a, false))), 1u, vec4<bool>(~12430u > u_input.b.x, func_4(func_4(Struct_1(vec4<i32>(-38450i, arg_2.a, arg_2.a, 2147483647i), vec4<i32>(-1i, 2147483647i, global0.a, -2147483647i), true), vec4<u32>(u_input.b.x, global0.b, 53645u, arg_1), arg_2, Struct_2(false, Struct_1(vec4<i32>(-1i, u_input.a.x, -1i, 25604i), u_input.a, true), vec3<bool>(true, true, true), Struct_1(vec4<i32>(0i, arg_0, 32446i, global0.a), vec4<i32>(u_input.a.x, 0i, u_input.a.x, global0.a), false), Struct_1(vec4<i32>(global0.a, -2147483647i, -7526i, arg_0), u_input.a, true))).d, ~vec4<u32>(1u, arg_2.c, arg_2.c, 0u), arg_2, func_4(Struct_1(vec4<i32>(3907i, 0i, -7093i, u_input.a.x), u_input.a, true), vec4<u32>(u_input.b.x, arg_2.b, global0.c, u_input.b.x), arg_2, Struct_2(false, Struct_1(vec4<i32>(arg_0, 1i, arg_2.a, 8694i), u_input.a, false), vec3<bool>(true, true, true), Struct_1(u_input.a, u_input.a, false), Struct_1(u_input.a, u_input.a, false)))).a, true, arg_2.c == _wgslsmith_mult_u32(0u, global0.b))), vec3<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), Struct_1(vec4<i32>(_wgslsmith_mult_i32(~2147483647i, 0i), ~1i, global0.a, -firstLeadingBit(70157i)), vec4<i32>(select(arg_2.a, i32(-1i) * -33707i, true), _wgslsmith_dot_vec4_i32(u_input.a, reverseBits(u_input.a)), -max(u_input.a.x, u_input.a.x), 1i), global0.a >= 1i), func_4(Struct_1(u_input.a, -(vec4<i32>(0i, -1i, global0.a, arg_0) & u_input.a), false), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.c, u_input.b.x, 0u), vec3<u32>(arg_2.b, 33201u, 1u)), ~global0.c, ~(u_input.b.x & 0u), arg_1), Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1i, arg_0, u_input.a.x), abs(u_input.a)), u_input.b.x, ~_wgslsmith_sub_u32(74650u, 48914u)), Struct_2(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false)), Struct_1(vec4<i32>(2147483647i, arg_0, arg_0, 2147483647i), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(1i, u_input.a.x, 11662i, 1i)), func_4(Struct_1(vec4<i32>(-2147483647i, arg_0, 66680i, -25141i), u_input.a, true), vec4<u32>(arg_2.b, arg_2.c, global0.c, 0u), arg_2, Struct_2(true, Struct_1(u_input.a, u_input.a, false), vec3<bool>(true, true, false), Struct_1(vec4<i32>(arg_0, arg_2.a, u_input.a.x, u_input.a.x), u_input.a, true), Struct_1(u_input.a, u_input.a, false))).c.x), select(vec3<bool>(true, true, true), func_4(Struct_1(u_input.a, vec4<i32>(arg_2.a, arg_0, u_input.a.x, u_input.a.x), true), vec4<u32>(0u, global0.c, 4294967295u, 1u), Struct_4(-18800i, 34573u, 37975u), Struct_2(false, Struct_1(vec4<i32>(global0.a, -21340i, arg_0, 0i), u_input.a, false), vec3<bool>(false, true, false), Struct_1(u_input.a, vec4<i32>(-2147483647i, 0i, 0i, -2147483647i), true), Struct_1(vec4<i32>(4335i, 1i, 1i, 1877i), vec4<i32>(-9288i, 2147483647i, arg_2.a, 39919i), true))).c, func_4(Struct_1(u_input.a, u_input.a, true), vec4<u32>(arg_2.c, 0u, 0u, 4294967295u), Struct_4(-2147483647i, u_input.b.x, 0u), Struct_2(true, Struct_1(vec4<i32>(-24306i, -13404i, global0.a, global0.a), u_input.a, true), vec3<bool>(true, true, true), Struct_1(vec4<i32>(global0.a, 11734i, u_input.a.x, global0.a), vec4<i32>(u_input.a.x, arg_2.a, global0.a, global0.a), false), Struct_1(vec4<i32>(u_input.a.x, 30843i, arg_0, u_input.a.x), vec4<i32>(13921i, global0.a, 60608i, -2147483647i), false))).d.c), Struct_1(vec4<i32>(1i, -6773i, -34153i, u_input.a.x), vec4<i32>(arg_0, 34030i, arg_2.a, 42679i), true), Struct_1(vec4<i32>(22220i, 13481i, arg_2.a, 2147483647i), u_input.a, func_5(Struct_2(false, Struct_1(vec4<i32>(arg_2.a, 7379i, -1i, -3527i), u_input.a, false), vec3<bool>(false, false, true), Struct_1(u_input.a, u_input.a, true), Struct_1(u_input.a, u_input.a, true)), 38372u, vec4<bool>(true, false, true, false)).c))).e);
    var var_1 = !vec2<bool>(~firstLeadingBit(0u) > arg_1, false);
    var_1 = select(!(!vec2<bool>(var_1.x, any(vec3<bool>(var_0.b.c, var_1.x, true)))), select(var_0.c.yy, var_0.c.zx, u_input.a.x <= (var_0.b.a.x | func_4(var_0.b, vec4<u32>(48499u, 30612u, global0.c, u_input.b.x), Struct_4(global0.a, 1u, global0.c), Struct_2(var_1.x, var_0.e, var_0.c, var_0.e, Struct_1(vec4<i32>(-19346i, 0i, arg_0, -2147483647i), u_input.a, false))).d.a.x)), true);
    let var_2 = true;
    return StorageBuffer(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4588u, global0.b, 37801u), vec4<u32>(arg_2.c << (global0.c % 32u), ~15328u, _wgslsmith_sub_u32(1u, 0u), ~4294967295u)), ~countOneBits(_wgslsmith_mult_u32(global0.b, 0u))), ~firstTrailingBit(~select(vec3<u32>(4294967295u, u_input.b.x, global0.b), vec3<u32>(1u, u_input.b.x, arg_1), var_2)), -(abs(-global0.a) | arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_mod_i32(-((-1i & u_input.a.x) ^ (global0.a & 1i)), -(~2262i)), 4294967295u >> (0u % 32u), _wgslsmith_sub_u32(1u, ~abs(57151u) >> (firstTrailingBit(4294967295u) % 32u)));
    global2 = (var_0.c ^ ~38935u) | ~u_input.b.x;
    var var_1 = _wgslsmith_div_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 55485u, 0u, global0.b) << (vec4<u32>(14583u, 1u, u_input.b.x, 127328u) % vec4<u32>(32u)), vec4<u32>(global0.c, 28192u, 0u, 0u) | vec4<u32>(5801u, 4294967295u, var_0.c, var_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(120026u, global0.c, global0.b, global0.b), vec4<u32>(var_0.b, var_0.c, var_0.b, global0.c)))), vec4<u32>(~global0.b, var_0.c, 4294967295u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 120768u) ^ vec3<u32>(u_input.b.x, 60368u, 1u), vec3<u32>(36133u, global0.c, u_input.b.x)), 9434u)));
    global0 = Struct_4(65866i, 0u, var_0.c);
    global1 = array<vec2<f32>, 18>();
    var_1 = vec4<u32>(global0.c, (global0.c & var_0.b) >> (abs(global0.b) % 32u), _wgslsmith_div_u32(1u, ~(~24151u)), ~u_input.b.x);
    let x = u_input.a;
    s_output = func_1(-15480i, 23526u, var_0);
}

