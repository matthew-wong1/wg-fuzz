struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 30>;

var<private> global2: array<vec3<u32>, 22>;

var<private> global3: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(0i, 1i, -5478i), vec3<i32>(-3168i, 41062i, i32(-2147483648)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_2(0u, false);
    let var_1 = vec2<i32>(u_input.d, -u_input.d);
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.a, ~global0.a), 30u)];
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(select(-min(vec4<i32>(u_input.d, u_input.d, 1i, 1573i), vec4<i32>(var_2.d.a, -39389i, var_2.d.a, 1i)), ~abs(vec4<i32>(var_1.x, -2147483647i, -1i, 1i)), !any(vec3<bool>(false, true, true))), vec4<i32>(firstLeadingBit(0i) >> (~u_input.a % 32u), reverseBits(reverseBits(var_2.d.a)), -abs(30145i), ~(var_2.d.a << (4807u % 32u)))), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_2.d.a, 2147483647i), vec3<i32>(-2147483647i, u_input.d, -1i)) & 55521i, max(2147483647i, u_input.d), _wgslsmith_sub_i32(var_1.x, _wgslsmith_mult_i32(-18799i, 29716i))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.a, u_input.c.x, 0u) & ~vec4<u32>(var_2.c.a, var_2.c.a, global0.a, u_input.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 27879u, 0u, arg_0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(45057u, 0u, 1u, 49749u), vec4<u32>(var_2.c.a, arg_0.x, 0u, 4294967295u)))) % vec4<u32>(32u)));
    let var_4 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(var_3, vec4<i32>(max(var_1.x, -2147483647i), max(2147483647i, var_1.x), ~(-30708i), select(u_input.d, var_3.x, false)))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.x + 1138f)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global3 = array<vec3<i32>, 2>();
    var var_0 = Struct_1(-((~arg_0 ^ arg_0) & firstLeadingBit(abs(arg_2.a))));
    global2 = array<vec3<u32>, 22>();
    var_0 = arg_3.d;
    var var_1 = Struct_1(2147483647i);
    return _wgslsmith_mult_u32(arg_3.c.a, arg_3.c.a);
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    global2 = array<vec3<u32>, 22>();
    global0 = Struct_2(~func_4(-(~9607i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 1u)))), Struct_1(u_input.d), global1[_wgslsmith_index_u32(u_input.c.x, 30u)]), true);
    global2 = array<vec3<u32>, 22>();
    var var_0 = global1[_wgslsmith_index_u32(~(~abs(max(arg_1 | 1u, u_input.b))), 30u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(1u & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(23206u, global0.a, var_0.c.a), global2[_wgslsmith_index_u32(arg_1, 22u)]), ~34317u), var_0.c.a)), 30u)];
    return Struct_1(u_input.d);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_3(!all(!(!vec3<bool>(arg_1.b, global0.b, arg_1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-832f + 185f), _wgslsmith_f_op_f32(min(462f, -900f))), _wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(step(-1585f, 1999f))))), arg_1, Struct_1(_wgslsmith_mod_i32(arg_2.a | func_2(true, arg_0.x).a, ~41657i)));
    let var_1 = 606f;
    global3 = array<vec3<i32>, 2>();
    return ~0u;
}

fn func_1(arg_0: vec4<u32>, arg_1: u32) -> bool {
    global1 = array<Struct_3, 30>();
    global1 = array<Struct_3, 30>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(735f))), _wgslsmith_f_op_f32(-1727f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = !vec2<bool>(!(u_input.b > (3486u & global0.a)), false);
    let var_2 = _wgslsmith_add_vec4_u32(min(arg_0, vec4<u32>(6281u, global0.a, ~1u, func_5(vec4<u32>(global0.a, 0u, 1u, 64083u) & arg_0, Struct_2(arg_1, global0.b), func_2(true, 0u)))), ~(~(~vec4<u32>(6349u, 20046u, u_input.b, 39325u))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec4<bool>(any(vec4<bool>(true, global0.b, true, false)), true, false, any(vec4<bool>(false, global0.b, global0.b, select(func_1(vec4<u32>(68853u, u_input.e, 1u, u_input.b), 4294967295u), false, any(vec4<bool>(true, true, true, global0.b))))));
    var_1 = select(!(!select(select(vec4<bool>(false, global0.b, var_1.x, true), vec4<bool>(global0.b, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !vec4<bool>(true, true, global0.b, global0.b), false)), !vec4<bool>(false, true || !var_1.x, var_1.x, false), var_1.x);
    var var_2 = false;
    global3 = array<vec3<i32>, 2>();
    global0 = Struct_2(u_input.e & (_wgslsmith_mod_u32(global0.a, 8652u) ^ u_input.e), ~(~(52662u ^ global0.a)) == ~(~(~4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(vec3<i32>(10884i ^ _wgslsmith_add_i32(u_input.d, -63223i), ~0i, _wgslsmith_add_i32(~u_input.d, -u_input.d)), _wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(54047u, global0.a), ~20879u), 2u)], ~vec3<i32>(13235i, -75668i, 0i) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.e, 71872u), global2[_wgslsmith_index_u32(4294967295u, 22u)]) % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(~global0.a), abs(select(global0.a, u_input.c.x, true)), u_input.c.x, ~u_input.c.x >> (~28196u % 32u)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(22085u, u_input.c.x, 68129u, u_input.e), vec4<u32>(18899u, u_input.e, 14147u, u_input.c.x)) << (vec4<u32>(u_input.b, global0.a, 0u, global0.a) % vec4<u32>(32u))), vec4<u32>(1u, global0.a, reverseBits(45636u), _wgslsmith_sub_u32(global0.a, global0.a << (u_input.b % 32u)))), ~(~(vec4<u32>(global0.a, 32904u, global0.a, 20801u) ^ vec4<u32>(global0.a, u_input.a, global0.a, u_input.e))), -_wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2825i, u_input.d, u_input.d, 1i), vec4<i32>(-1i, u_input.d, -1i, u_input.d)), -(~(-17313i))));
}

