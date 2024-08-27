struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 26>;

var<private> global2: vec4<f32>;

var<private> global3: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = ~arg_0.d;
    global0 = -10084i;
    var_0 = arg_0.d;
    let var_1 = arg_0;
    global3 = array<vec4<bool>, 24>();
    return select(1i, 1i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a, min(vec2<i32>(11493i, u_input.a.x), vec2<i32>(-1i, global1[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-18443i, arg_0.a.a), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.d, 26u)], -21972i), u_input.a)), any(global3[_wgslsmith_index_u32(u_input.b, 24u)]));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> u32 {
    global0 = _wgslsmith_mod_i32(reverseBits(~_wgslsmith_mod_i32(3517i, -arg_0)), _wgslsmith_dot_vec3_i32(select(countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(40333u, 26u)], arg_0, -2147483647i)), -(vec3<i32>(0i, arg_1.a.a.a, arg_1.a.a.a) ^ vec3<i32>(arg_1.a.a.a, arg_1.a.a.a, -14985i)), !any(global3[_wgslsmith_index_u32(8181u, 24u)])), vec3<i32>(select(u_input.a.x, u_input.a.x, any(vec3<bool>(arg_1.a.e, arg_1.a.e, arg_1.a.a.b))), -8450i, ~(-25993i))));
    let var_0 = arg_1.a;
    global3 = array<vec4<bool>, 24>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(216f, -679f, arg_1.a.c.x, -2207f), vec4<f32>(-322f, global2.x, 765f, 270f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, arg_1.a.b, 1143f, global2.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.b, -1402f, var_0.c.x, -199f), vec4<f32>(297f, global2.x, -1811f, arg_1.a.c.x))))));
    var var_1 = firstTrailingBit(countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.a, 25128i), u_input.a << (vec2<u32>(22264u, u_input.b) % vec2<u32>(32u))), u_input.a)));
    return min(~(~4294967295u), 4294967295u);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> vec2<i32> {
    global0 = firstLeadingBit(12831i);
    var var_0 = func_4(-2147483647i, Struct_4(Struct_2(Struct_1(func_3(Struct_2(Struct_1(23421i, false), arg_0.x, vec2<f32>(369f, 1303f), u_input.b, true)), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_div_f32(-1347f, global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xy)), _wgslsmith_mod_u32(0u ^ u_input.b, 4294967295u), all(vec2<bool>(true, true))), abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, 6394u), vec4<u32>(0u, arg_1, 9249u, u_input.b)), 1u))));
    var_0 = ~abs(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4522u, arg_1), vec2<u32>(arg_1, 1u)), arg_1));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1618f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -604f))), _wgslsmith_f_op_f32(f32(-1f) * -1078f))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x)) * -1000f);
    return firstLeadingBit(u_input.a);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(-780f));
    let var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(countOneBits(global1[_wgslsmith_index_u32(~4294967295u, 26u)]), u_input.a.x), -select(_wgslsmith_clamp_i32(-31562i, global1[_wgslsmith_index_u32(u_input.b, 26u)], u_input.a.x), -2147483647i, var_0 >= -313f)), (func_2(global2.yzw, 1u) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) >> (~vec2<u32>(_wgslsmith_div_u32(0u, 18494u), _wgslsmith_div_u32(u_input.b, 4294967295u)) % vec2<u32>(32u)), u_input.a);
    return Struct_2(Struct_1(countOneBits(u_input.a.x), false), -357f, global2.yx, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(11385u, 80791u), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 454u), vec3<u32>(1u, 1u, 0u)), 126220u << (u_input.b % 32u)))), true);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_4 {
    global1 = array<i32, 26>();
    return Struct_4(func_1(global2.x), ~(~firstTrailingBit(4294967295u)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_5 {
    var var_0 = !vec2<bool>(false, all(!(!vec3<bool>(arg_0.x, true, true))));
    var var_1 = Struct_3(select(select(arg_0, select(vec2<bool>(false, true), vec2<bool>(arg_0.x, true), !var_0.x), vec2<bool>(true, true)), arg_0, 4747i <= min(countOneBits(27060i), func_5(Struct_4(arg_1.a, u_input.b), vec3<u32>(arg_1.b, u_input.b, u_input.b), Struct_3(arg_0, vec3<u32>(1u, u_input.b, 59982u), arg_1.a, Struct_1(-2147483647i, var_0.x), arg_1.b)).a.a.a)), vec3<u32>(_wgslsmith_mult_u32(u_input.b, countOneBits(arg_1.a.d)), _wgslsmith_div_u32(~10208u, u_input.b), max(_wgslsmith_mult_u32(countOneBits(u_input.b), 1423u << (0u % 32u)), ~(~u_input.b))), arg_1.a, Struct_1(firstLeadingBit(-18139i), !(!(!arg_1.a.a.b))), arg_1.b);
    var var_2 = select(~var_1.b, min(~vec3<u32>(1u, 1u, 1u), abs(~vec3<u32>(0u, arg_1.a.d, 35256u) ^ vec3<u32>(43838u, var_1.c.d, var_1.b.x))), arg_1.a.a.b || !all(select(vec3<bool>(true, arg_1.a.a.b, true), vec3<bool>(true, false, true), arg_1.a.e)));
    global0 = 1i;
    var var_3 = Struct_5(Struct_4(Struct_2(Struct_1(_wgslsmith_mult_i32(2147483647i, global1[_wgslsmith_index_u32(u_input.b, 26u)]), false), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), var_1.c.b, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1181f, arg_1.a.c.x))), var_2.x ^ (1u | var_2.x), true), var_2.x), vec2<i32>(-49960i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-vec4<i32>(-8603i, var_1.d.a, 1i, -38917i), _wgslsmith_add_vec4_i32(vec4<i32>(33031i, global1[_wgslsmith_index_u32(var_1.e, 26u)], 18615i, arg_1.a.a.a), vec4<i32>(var_1.d.a, 0i, 2147483647i, -65688i))), vec4<i32>(-1476i, u_input.a.x, ~var_1.d.a, max(u_input.a.x, var_1.c.a.a)))), Struct_1(_wgslsmith_div_i32(1i, -global1[_wgslsmith_index_u32(~var_2.x, 26u)]), true), vec2<i32>(1i, -12875i));
    return Struct_5(var_3.a, select(vec2<i32>(2147483647i, arg_1.a.a.a), u_input.a, select(!select(vec2<bool>(var_3.c.b, false), vec2<bool>(true, var_3.c.b), false), !select(vec2<bool>(var_1.c.a.b, true), vec2<bool>(var_0.x, arg_1.a.a.b), var_1.d.b), arg_0.x)), Struct_1(~select(2246i >> (0u % 32u), 1i, var_3.c.b), !(!arg_0.x)), ~vec2<i32>(2147483647i, 58093i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 10415u), 26u)];
    var_0 = -2147483647i;
    var var_1 = func_6(vec2<bool>(4294967295u <= u_input.b, true), func_5(Struct_4(func_1(_wgslsmith_f_op_f32(680f + -482f)), _wgslsmith_mult_u32(25170u, 1u)), ~(~(~vec3<u32>(u_input.b, 82709u, 72591u))), Struct_3(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec3<u32>(~u_input.b, u_input.b & u_input.b, ~26574u), func_1(_wgslsmith_f_op_f32(max(245f, global2.x))), Struct_1(global1[_wgslsmith_index_u32(u_input.b, 26u)] ^ 20809i, true), ~5103u)));
    var var_2 = select(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(21340u, 0u, 1u, 2589u), vec4<u32>(4294967295u, u_input.b, 1u, var_1.a.a.d))), _wgslsmith_clamp_u32(~4294967295u, ~17533u, _wgslsmith_add_u32(var_1.a.a.d, u_input.b))) & ~abs(u_input.b), u_input.b, any(!vec3<bool>(var_1.a.a.e && false, all(vec2<bool>(var_1.a.a.a.b, var_1.c.b)), false || var_1.a.a.e)));
    var var_3 = func_1(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(sign(-1698f)))).a;
    var_1 = Struct_5(var_1.a, reverseBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(min(u_input.a, var_1.d), ~vec2<i32>(-13563i, global1[_wgslsmith_index_u32(0u, 26u)])), u_input.a & -var_1.d, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, var_1.d.x), vec3<i32>(0i, 0i, var_1.a.a.a.a)), firstTrailingBit(var_1.a.a.a.a)))), var_1.a.a.a, _wgslsmith_div_vec2_i32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, reverseBits(vec4<u32>(_wgslsmith_sub_u32(57946u, 1u), 1u, _wgslsmith_div_u32(0u, 1u), 0u)), max(_wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(var_1.a.a.a.a, u_input.a.x), vec2<i32>(8064i, var_1.d.x), vec2<bool>(var_1.a.a.e, var_1.c.b))), firstLeadingBit(vec2<i32>(2147483647i, var_1.a.a.a.a))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.d, var_1.b), vec2<i32>(43525i, var_1.c.a)), func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(153f, global2.x, global2.x))), var_1.a.a.d), firstLeadingBit(vec2<i32>(-1101i, -41313i)))), func_3(var_1.a.a));
}

