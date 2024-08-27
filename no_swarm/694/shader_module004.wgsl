struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 23> = array<vec4<i32>, 23>(vec4<i32>(36285i, 11194i, -10748i, 2147483647i), vec4<i32>(-21891i, -17206i, -48603i, 29569i), vec4<i32>(0i, 2882i, -3294i, 0i), vec4<i32>(1899i, 0i, i32(-2147483648), 4172i), vec4<i32>(10073i, -1i, -100354i, -1i), vec4<i32>(1i, -1i, 162i, 0i), vec4<i32>(-44218i, 22464i, 1i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -1i, -25003i), vec4<i32>(i32(-2147483648), 48900i, 45669i, -24597i), vec4<i32>(60352i, 5324i, i32(-2147483648), -3253i), vec4<i32>(57703i, 67833i, 1i, -30966i), vec4<i32>(1i, -20989i, -1i, 56580i), vec4<i32>(2147483647i, -45004i, -17948i, -30475i), vec4<i32>(38145i, i32(-2147483648), 2147483647i, 24289i), vec4<i32>(22237i, 2147483647i, 2147483647i, 22733i), vec4<i32>(3636i, -22530i, 0i, 47383i), vec4<i32>(i32(-2147483648), 21891i, 0i, 1i), vec4<i32>(45831i, -10437i, -1i, 1i), vec4<i32>(-1i, 2147483647i, -1i, -1320i), vec4<i32>(-33986i, 26529i, 870i, 1i), vec4<i32>(-3580i, i32(-2147483648), 9615i, -25951i), vec4<i32>(0i, 24111i, 0i, 40104i), vec4<i32>(-10897i, -6525i, 47162i, 6108i));

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: vec2<u32> = vec2<u32>(1u, 12758u);

var<private> global4: Struct_4;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec4<bool> {
    global1 = array<vec4<i32>, 23>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-151f, arg_1.x, -2294f, -1232f))))))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 1153f))), _wgslsmith_f_op_f32(-1435f - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(1241f + -1000f)))))));
    global0 = -global1[_wgslsmith_index_u32(u_input.d ^ ~global3.x, 23u)];
    let var_1 = var_0;
    var var_2 = vec3<bool>(true, any(vec2<bool>(true, _wgslsmith_sub_u32(global3.x, 79544u) > _wgslsmith_mult_u32(global3.x, global3.x))), !all(vec4<bool>(global4.a.x & global4.c.b.x, any(global4.c.b), any(global4.c.b), global4.c.b.x)));
    return vec4<bool>(!var_2.x, var_2.x, any(global4.c.b), var_2.x);
}

fn func_2() -> Struct_5 {
    var var_0 = Struct_1(u_input.a, select(func_3(min(global0.ywy, ~vec3<i32>(global0.x, 1i, global4.c.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-397f, -1120f, -515f))), global4.c.b, global4.c.b), u_input.a);
    var var_1 = Struct_2(Struct_1(abs(-26049i), !select(vec4<bool>(false, global4.a.x, var_0.b.x, false), select(global4.c.b, global4.c.b, var_0.b.x), global4.a.x), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(36905i, u_input.a)))));
    var var_2 = var_1.a.a | global0.x;
    var var_3 = global2[_wgslsmith_index_u32(0u, 1u)];
    global1 = array<vec4<i32>, 23>();
    return Struct_5(var_0.b.yz, vec3<i32>(-_wgslsmith_dot_vec3_i32(~global0.wyy, -vec3<i32>(1i, -25341i, -1i)), ~select(firstTrailingBit(u_input.a), -var_1.a.c, global4.a.x | false), ~_wgslsmith_clamp_i32(9141i ^ global0.x, var_0.c, global0.x)), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(global4.c.c, u_input.b.x, global4.b, -2147483647i), vec4<i32>(1i, 2147483647i, -2147483647i, global4.c.c) >> (vec4<u32>(56816u, 161u, u_input.c, global3.x) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(max(~vec4<i32>(11155i, -1i, 80160i, global4.b), select(global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(global3.x, 23u)], vec4<bool>(var_0.b.x, var_0.b.x, true, var_1.a.b.x))), abs(vec4<i32>(var_0.a, var_1.a.c, u_input.b.x, 2147483647i) >> (vec4<u32>(37882u, global3.x, 57272u, global3.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-803f, 280f, 1563f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1174f, 726f, 492f), vec3<f32>(823f, 142f, 2192f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1026f, -2177f, -839f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(398f, 1042f, -843f), vec3<f32>(441f, -1000f, -1000f)))))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(70845u, 4294967295u, 34145u, u_input.c), vec4<u32>(6109u, u_input.c, global3.x, 26308u), true) & vec4<u32>(29542u, global3.x, countOneBits(38856u), ~u_input.c), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(global3.x, global3.x), _wgslsmith_clamp_u32(4294967295u, global3.x, u_input.d)), firstLeadingBit(_wgslsmith_mult_u32(34839u, 51716u)), global3.x, ~u_input.d)));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> i32 {
    global2 = array<vec3<bool>, 1>();
    let var_0 = arg_0.b.x;
    let var_1 = Struct_4(global4.a, arg_0.b.x, global4.c);
    global0 = vec4<i32>(global4.c.c, arg_0.c.x, _wgslsmith_mod_i32(arg_0.b.x, -49180i), _wgslsmith_add_i32(_wgslsmith_div_i32(-970i, -var_0), _wgslsmith_dot_vec3_i32(abs(global0.yyx), -vec3<i32>(-2147483647i, 1i, 2147483647i))) ^ ~(~global4.b | (arg_0.c.x | -2147483647i)));
    let var_2 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.x, 13222u), vec3<u32>(17236u, 56611u, arg_0.e.x)))), arg_0.e.xzz);
    return ~0i;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    global2 = array<vec3<bool>, 1>();
    var var_0 = Struct_3(abs(~(~(vec4<u32>(u_input.c, u_input.c, u_input.c, 7187u) & vec4<u32>(21295u, u_input.d, 1u, global3.x)))));
    let var_1 = Struct_3(var_0.a);
    let var_2 = var_0.a.x;
    let var_3 = arg_1.b.zz;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-786f)) + -2351f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1595f)) - -274f)));
}

fn func_6(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = !(select(~func_2().e.x, global3.x, true) == global3.x);
    var var_1 = func_2().a.x;
    global0 = _wgslsmith_div_vec4_i32(~global1[_wgslsmith_index_u32(~0u, 23u)], global1[_wgslsmith_index_u32(global3.x, 23u)]);
    global2 = array<vec3<bool>, 1>();
    global0 = ~abs(vec4<i32>(max(u_input.a, 0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, global0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(631i, global4.c.a, u_input.b.x), global0.zzz)), -1i, 17188i));
    return select(func_3(~vec3<i32>(1345i, _wgslsmith_sub_i32(u_input.a, -17493i), 0i >> (global3.x % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -750f, -1300f) + arg_2))))), func_3(vec3<i32>(global4.c.c, global0.x >> (u_input.d % 32u), 1i) | vec3<i32>(max(u_input.b.x, global4.c.c), -27295i, global0.x), _wgslsmith_f_op_vec3_f32(-arg_2)), select(vec4<bool>(~global3.x == ~global3.x, !func_3(vec3<i32>(global0.x, global0.x, 9060i), arg_2).x, all(select(global4.a, global4.c.b.zx, true)), -36822i < global4.c.a), global4.c.b, global4.c.b));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1380f, 232f, 438f, -1341f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1198f, -482f, 749f, -1815f) + vec4<f32>(-390f, -268f, 1517f, -852f)))))));
    global2 = array<vec3<bool>, 1>();
    var var_1 = func_6(global4.a, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(var_0.x + var_0.x), Struct_1(func_4(func_2(), global3.x), !vec4<bool>(arg_0.b.x, false, false, false), 2147483647i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -350f, var_0.x) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 592f, 1465f), vec3<f32>(454f, -1089f, var_0.x)), var_0.wzx)))));
    global1 = array<vec4<i32>, 23>();
    global0 = ~_wgslsmith_mult_vec4_i32(-global1[_wgslsmith_index_u32(~u_input.d, 23u)], vec4<i32>(u_input.a, -31307i, ~1i, max(abs(2147483647i), global4.b)));
    return Struct_4(!var_1.yx, 67207i, global4.c);
}

fn func_7(arg_0: Struct_4) -> Struct_4 {
    return func_1(Struct_1(-2555i, func_1(func_1(Struct_1(-11643i, arg_0.c.b, u_input.b.x)).c).c.b, 0i));
}

fn func_8(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = func_7(arg_1).c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f));
    var var_2 = arg_1;
    global1 = array<vec4<i32>, 23>();
    global1 = array<vec4<i32>, 23>();
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_3.a.x, arg_3.a.x, 4294967295u), ~arg_3.a.yyz, any(var_2.c.b.xy)), vec3<u32>(12660u, arg_3.a.x, u_input.c) << (arg_3.a.www % vec3<u32>(32u))), 13151u), _wgslsmith_div_u32(20389u, max(u_input.d, ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(26518u, ~global3.x, 22201u, func_8(Struct_3(select(vec4<u32>(0u, 22882u, global3.x, 14656u), vec4<u32>(u_input.c, global3.x, global3.x, u_input.c), global4.c.b)), func_7(func_1(Struct_1(global4.c.a, vec4<bool>(global4.c.b.x, false, false, true), global0.x))), !vec3<bool>(global4.a.x, false, global4.c.b.x), Struct_3(~vec4<u32>(4294967295u, 87866u, u_input.d, 55113u))));
    var var_1 = min(vec2<i32>(-33679i, -global4.c.c), ~vec2<i32>(-4154i, _wgslsmith_mod_i32(abs(u_input.b.x), u_input.b.x)));
    var var_2 = global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(global3.x, u_input.c)), 1u)];
    global0 = global1[_wgslsmith_index_u32(0u, 23u)];
    let var_3 = func_1(global4.c).c;
    let var_4 = vec3<f32>(-667f, _wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(exp2(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(func_8(Struct_3(vec4<u32>(global3.x, ~4294967295u, 0u, 4699u ^ global3.x)), func_1(global4.c), !vec3<bool>(var_2.x, true, true), Struct_3(~(~var_0))), _wgslsmith_sub_vec4_i32(vec4<i32>(max(~(-1i), func_4(Struct_5(global4.c.b.xy, vec3<i32>(var_3.a, -54863i, global4.c.a), vec4<i32>(28630i, global4.b, 2147483647i, 6558i), var_4, var_0), 0u)), min(2147483647i, 2147483647i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-6611i, -2147483647i), ~global0.zz)), global1[_wgslsmith_index_u32(72962u, 23u)]));
}

