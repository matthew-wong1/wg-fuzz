struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 21>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec2<f32> {
    global1 = array<i32, 21>();
    let var_0 = Struct_2(all(!select(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x), !vec4<bool>(global0.c.x, false, true, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, false, global0.c.x))), _wgslsmith_dot_vec3_u32(global0.a.wxx, vec3<u32>(arg_2, _wgslsmith_div_u32(arg_2, 1u), _wgslsmith_clamp_u32(1u, arg_0, ~global0.b.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1)))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, abs(-2147483647i), global1[_wgslsmith_index_u32(global0.b.x, 21u)]), vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(75996u, 21u)], 1i, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) != _wgslsmith_f_op_f32(-arg_1), 1u), ~firstLeadingBit(vec3<u32>(60350u, 52349u, ~4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1, arg_1))))), select(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(arg_2, 21u)], 2601i), vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(arg_2, 21u)])), vec3<i32>(-36278i, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(global0.b.x, 21u)])), _wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(28256u, 21u)], 1i), reverseBits(vec3<i32>(u_input.a, u_input.b, u_input.a))), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(44640u, 21u)], u_input.a) == u_input.a), global0.c.x, 25837u));
    global1 = array<i32, 21>();
    global0 = Struct_3(global0.b, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~(~global0.b), _wgslsmith_add_vec4_u32(~global0.a, _wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(0u, 0u, global0.b.x, global0.a.x)))), vec4<u32>(abs(1u), ~_wgslsmith_mod_u32(40240u, var_0.d.x), 103594u, arg_0)), select(vec3<bool>(false, !(true && var_0.e.c), true), global0.c, var_0.c.c));
    let var_1 = var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.c.a)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1544f, -615f), var_1.e.a)) + _wgslsmith_f_op_vec2_f32(var_1.e.a + vec2<f32>(-536f, -1344f))) * var_0.e.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = -1i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0.b.x, _wgslsmith_f_op_f32(max(120f, 690f)), 22994u)) * vec2<f32>(1312f, -904f)))), vec3<i32>(-1i) * -(~abs(vec3<i32>(70184i, 2147483647i, u_input.a))), true, 4294967295u);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global1 = array<i32, 21>();
    global0 = Struct_3(~(~max(vec4<u32>(1u, arg_1.d, arg_1.d, 1u), vec4<u32>(arg_1.d, 102316u, global0.b.x, 0u))), vec4<u32>(994u, (34289u >> (firstLeadingBit(arg_1.d) % 32u)) ^ ~4294967295u, ~(~4294967295u ^ arg_1.d), _wgslsmith_div_u32(arg_1.d, _wgslsmith_clamp_u32(100592u, arg_1.d, 0u)) << (arg_1.d % 32u)), global0.c);
    let var_0 = arg_1.b | (select(~reverseBits(vec3<i32>(0i, u_input.a, global1[_wgslsmith_index_u32(global0.a.x, 21u)])), max(arg_1.b | vec3<i32>(2682i, -1i, -16165i), _wgslsmith_div_vec3_i32(arg_1.b, arg_1.b)), false) & ~vec3<i32>(-2147483647i, ~global1[_wgslsmith_index_u32(global0.a.x, 21u)], arg_3));
    var var_1 = 1i;
    let var_2 = Struct_3(vec4<u32>(0u, ~(~_wgslsmith_mult_u32(0u, arg_1.d)), 4982u, reverseBits(arg_1.d & arg_1.d)), ~_wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(global0.a, global0.b)), vec4<u32>(17359u, ~1679u, reverseBits(arg_1.d), global0.b.x >> (4294967295u % 32u))), select(select(vec3<bool>(!arg_1.c, global0.b.x >= 0u, !global0.c.x), vec3<bool>(any(global0.c.zz), arg_1.c && true, arg_2.x), vec3<bool>(false, !arg_1.c, global0.c.x)), !global0.c, arg_2.wzw));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mult_u32(countOneBits(global0.a.x), 1u), _wgslsmith_f_op_f32(abs(arg_0.c.a.x)), 97104u)), vec3<i32>(-10836i, -arg_0.e.b.x, _wgslsmith_mult_i32(u_input.a, ~global1[_wgslsmith_index_u32(1u, 21u)])), any(!arg_1.c), (_wgslsmith_dot_vec2_u32(~arg_0.d.yz, global0.a.yx) << (52770u % 32u)) | 1u);
    global1 = array<i32, 21>();
    var var_1 = true;
    let var_2 = vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(2825f, _wgslsmith_f_op_f32(arg_0.e.a.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.a.x, 391f))))));
    global0 = arg_1;
    return vec4<bool>(true, any(select(select(!vec4<bool>(false, true, true, var_0.c), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, global0.c.x, arg_1.c.x), true), !vec4<bool>(arg_0.a, true, arg_1.c.x, var_0.c)), select(!vec4<bool>(false, var_0.c, global0.c.x, true), !vec4<bool>(var_0.c, arg_0.c.c, false, false), global0.c.x), arg_0.c.c)), arg_1.c.x, arg_0.e.c);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = !func_5(Struct_2(false, _wgslsmith_div_u32(28076u, firstLeadingBit(1u)), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3, 118f), vec2<f32>(arg_0, 416f))), -vec3<i32>(-12179i, -1i, 3426i), arg_2 && global0.c.x, global0.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_1, global0.a.x), global0.a.zyw) ^ abs(global0.a.wyw), func_4(_wgslsmith_div_vec3_f32(vec3<f32>(321f, 638f, -491f), vec3<f32>(307f, arg_0, -714f)), func_2(), vec4<bool>(true, global0.c.x, global0.c.x, true), abs(u_input.b))), Struct_3(global0.a, ~select(global0.b, global0.a, vec4<bool>(false, false, true, arg_2)), global0.c));
    global1 = array<i32, 21>();
    let var_1 = false;
    return Struct_3(global0.b, reverseBits(~(firstTrailingBit(global0.a) ^ global0.b)), global0.c);
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~37986u;
    let var_1 = Struct_2(global0.c.x, 4294967295u, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(f32(-1f) * -864f)))), -min(vec3<i32>(u_input.a, -38418i, 0i) ^ vec3<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 21u)], -4665i, -1i), ~vec3<i32>(u_input.a, u_input.a, 4218i)), arg_0.c.x, ~(~1u)), arg_0.a.wwy, func_2());
    let var_2 = func_1(var_1.e.a.x, _wgslsmith_sub_u32(11362u, abs(abs(firstTrailingBit(36269u)))), var_1.c.c | var_1.c.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2().a.x), var_1.e.a.x, !(!var_1.e.c))));
    var var_3 = var_0;
    var var_4 = var_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_1.c.a)), ~(func_2().b | reverseBits(vec3<i32>(18487i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 21u)]))), false, _wgslsmith_sub_u32(func_1(var_4.e.a.x, arg_0.b.x, arg_0.c.x, func_4(_wgslsmith_div_vec3_f32(vec3<f32>(-420f, -102f, var_4.c.a.x), vec3<f32>(208f, 934f, 935f)), var_1.c, !vec4<bool>(var_1.e.c, global0.c.x, true, var_2.c.x), 1i).a.x).a.x, ~var_2.b.x));
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_2 {
    global1 = array<i32, 21>();
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1444f) + _wgslsmith_div_f32(arg_0.x, -373f))))), _wgslsmith_div_u32(global0.b.x, arg_1.d), !select(!global0.c.x, true, global0.c.x), _wgslsmith_div_f32(arg_0.x, 1299f));
    global1 = array<i32, 21>();
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)) * _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)))), ~(~4294967295u), !arg_1.c, _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(-434f + func_4(arg_0.yxx, arg_1, func_5(Struct_2(arg_1.c, 0u, arg_1, global0.a.xyz, Struct_1(vec2<f32>(-111f, 417f), arg_1.b, global0.c.x, 0u)), Struct_3(global0.a, vec4<u32>(global0.a.x, 37994u, global0.a.x, global0.b.x), vec3<bool>(false, false, global0.c.x))), 1i).a.x)));
    var var_1 = var_0.c;
    return Struct_2(!(1531f != _wgslsmith_f_op_vec2_f32(func_3(~1u, 1000f, 6484u)).x), global0.a.x, arg_1, _wgslsmith_mod_vec3_u32(~select(global0.a.xyw, vec3<u32>(982u, global0.a.x, 0u), global0.c.x) >> ((var_0.a.xzx ^ (var_0.a.xwx << (global0.b.wxx % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(23168u, func_2().d, global0.b.x | 0u), var_0.a.zwy)), func_6(func_1(-1000f, func_1(_wgslsmith_f_op_f32(f32(-1f) * -910f), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 39769u, global0.b.x), vec3<u32>(0u, var_0.b.x, arg_1.d)), true, _wgslsmith_f_op_f32(-arg_0.x)).b.x, true, _wgslsmith_f_op_f32(-arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 325f;
    var var_1 = func_7(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1407f, -1642f, 509f, -268f)))))), func_6(func_1(_wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(min(1205f, -1413f))), 1u, any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f)))));
    var var_2 = 1f;
    var_0 = 1035f;
    var_0 = _wgslsmith_f_op_f32(116f * var_1.e.a.x);
    let var_3 = func_2();
    var_1 = func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_1.c.a.x)), var_1.c.a.x, var_1.c.a.x, -1182f)), Struct_1(var_3.a, var_1.c.b, any(!vec4<bool>(true, true, var_1.c.c, true)), 79439u));
    var_0 = _wgslsmith_div_f32(205f, -1511f);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.c.a.x)) - 1000f) + -768f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.a.x, var_3.a.x, var_1.e.a.x) * vec3<f32>(var_3.a.x, var_3.a.x, var_1.c.a.x))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1715f), _wgslsmith_f_op_f32(-var_1.c.a.x))))), var_1.c.a, 1000f);
}

