struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 30> = array<u32, 30>(49765u, 43994u, 52521u, 0u, 23435u, 4294967295u, 4294967295u, 1u, 16640u, 4294967295u, 53913u, 28210u, 4294967295u, 4294967295u, 4294967295u, 105450u, 34338u, 4294967295u, 12138u, 0u, 9403u, 5502u, 45828u, 0u, 86707u, 4294967295u, 17766u, 1u, 4294967295u, 61248u);

var<private> global2: i32;

var<private> global3: array<i32, 4>;

var<private> global4: f32 = 1393f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~vec2<i32>(-global3[_wgslsmith_index_u32(~u_input.c, 4u)] | -2630i, -(~0i));
    let var_1 = Struct_1(true, vec4<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(~global1[_wgslsmith_index_u32(reverseBits(145715u), 30u)]), 30u)], _wgslsmith_div_u32(u_input.c & global1[_wgslsmith_index_u32(1u, 30u)], ~22754u), global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.c));
    var var_2 = select(abs(_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, 56616u, u_input.c), _wgslsmith_mod_vec3_u32(var_1.b.xzy, vec3<u32>(0u, 43917u, var_1.b.x))), _wgslsmith_mult_vec3_u32(var_1.b.wzx, _wgslsmith_mult_vec3_u32(var_1.b.ywx, var_1.b.xzy)))), var_1.b.wzz, !select(!vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(false, true, false), vec3<bool>(true, true, var_1.a), !var_1.a), all(select(vec4<bool>(false, var_1.a, true, false), vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(true, var_1.a, false, false)))));
    return var_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<i32> {
    global2 = countOneBits(-12465i);
    var var_0 = func_1();
    global2 = reverseBits(~(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 4u)], u_input.a, global3[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.c, 4u)], global3[_wgslsmith_index_u32(0u, 4u)])) ^ reverseBits(2147483647i)) | _wgslsmith_dot_vec4_i32(vec4<i32>(~2147483647i, global3[_wgslsmith_index_u32(~1u, 4u)], -global3[_wgslsmith_index_u32(var_0.b.x, 4u)], -u_input.a), u_input.b));
    let var_1 = Struct_2(Struct_1(false, _wgslsmith_add_vec4_u32(arg_1.b, var_0.b)), u_input.b.xxz >> (~arg_1.b.zyz % vec3<u32>(32u)), 51992u, arg_1, Struct_1(arg_1.a, ~vec4<u32>(~var_0.b.x, 4294967295u, 1u, 4294967295u)));
    let var_2 = -205f;
    return vec3<i32>(-u_input.a, 46873i, var_1.b.x);
}

fn func_4(arg_0: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1728f + 386f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2583f, 307f)), 1280f))));
    var var_1 = Struct_2(Struct_1(any(vec3<bool>(false, any(vec2<bool>(false, false)), any(vec2<bool>(false, true)))), (min(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 30u)], 46999u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 4294967295u), vec4<u32>(52210u, 0u, u_input.c, u_input.c)) >> (vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) % vec4<u32>(32u))) | ~(~vec4<u32>(global1[_wgslsmith_index_u32(18923u, 30u)], 1u, u_input.c, u_input.c))), max(countOneBits(-(vec3<i32>(-31593i, arg_0.x, arg_0.x) >> (vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.c, u_input.c) % vec3<u32>(32u)))), arg_0), ~_wgslsmith_mult_u32(abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), _wgslsmith_mult_u32(u_input.c, global1[_wgslsmith_index_u32(56705u, 30u)]) | ~42468u), Struct_1(any(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), _wgslsmith_sub_vec4_u32(vec4<u32>(~30762u, 4294967295u, 58461u, select(53494u, 1u, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(58339u, u_input.c, u_input.c, 4294967295u), vec4<u32>(21586u, 24445u, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(u_input.c, 30u)])), 0u, reverseBits(34417u), 0u))), Struct_1(all(vec2<bool>(true, var_0.x <= var_0.x)), ~vec4<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c)), 30u)], 30u)], u_input.c, ~global1[_wgslsmith_index_u32(u_input.c, 30u)])));
    let var_2 = var_1.e;
    let var_3 = 0u;
    return -690f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(func_4(vec3<i32>(9839i, -2147483647i, -1614i) ^ _wgslsmith_mult_vec3_i32(func_3(vec2<u32>(0u, u_input.c), Struct_1(arg_1.d.a, arg_1.a.b)), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], arg_1.b.x << (44589u % 32u), global3[_wgslsmith_index_u32(u_input.c, 4u)] >> (0u % 32u)))));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1086f, -100f) + 1170f);
    let var_0 = false;
    let var_1 = func_1();
    global0 = -2147483647i;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(_wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(-17167i), u_input.a), select(~u_input.b.xw, ~u_input.b.ww, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))) ^ u_input.b.x);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 452f)))), 1000f) + -1784f);
    let var_1 = Struct_2(func_2(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), Struct_2(func_1(), -_wgslsmith_sub_vec3_i32(u_input.b.wyz, vec3<i32>(global3[_wgslsmith_index_u32(35035u, 4u)], 1i, 5866i)), ~(30319u >> (1u % 32u)), Struct_1(func_1().a, ~vec4<u32>(44490u, u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)], 40116u)), Struct_1(false, vec4<u32>(0u, global1[_wgslsmith_index_u32(3198u, 30u)], u_input.c, u_input.c)))), ~select(u_input.b.wyw & _wgslsmith_mod_vec3_i32(u_input.b.zxw, u_input.b.wxw), u_input.b.wzy, true), _wgslsmith_dot_vec3_u32(vec3<u32>(538u, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, 0u)), ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.c, 30u)], u_input.c)), ~1u), ~(vec3<u32>(global1[_wgslsmith_index_u32(1u, 30u)], u_input.c, u_input.c) >> ((vec3<u32>(4053u, 18514u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 30u)]) | vec3<u32>(global1[_wgslsmith_index_u32(23489u, 30u)], u_input.c, u_input.c)) % vec3<u32>(32u)))), Struct_1(func_1().a, vec4<u32>(4874u, _wgslsmith_clamp_u32(firstTrailingBit(75476u), u_input.c ^ 1u, 88205u), ~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.c, 30u)], 74893u), _wgslsmith_mult_u32(min(u_input.c, 20001u), ~global1[_wgslsmith_index_u32(22851u, 30u)]))), Struct_1(!(func_1().a && true), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(1303u, u_input.c, 4294967295u, 10098u)), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(34491u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.c), vec4<u32>(60880u, 1u, global1[_wgslsmith_index_u32(0u, 30u)], 54574u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_4(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 4u)], var_1.b.x, global3[_wgslsmith_index_u32(u_input.c, 4u)]), vec3<i32>(-1i, 1i, global3[_wgslsmith_index_u32(4294967295u, 4u)])) << (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.d.b, vec4<u32>(1u, 30429u, 1u, 1u)), 30u)] % 32u), -3621i, 55552i))), _wgslsmith_div_vec4_f32(vec4<f32>(339f, _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(max(515f, 230f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + _wgslsmith_f_op_f32(ceil(-921f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 936f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(130f, var_0, var_0, 130f) * vec4<f32>(1085f, -1192f, 141f, 956f)), u_input.a >= u_input.b.x)))));
}

