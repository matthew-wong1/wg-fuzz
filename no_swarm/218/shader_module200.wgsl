struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: vec3<f32> = vec3<f32>(-671f, -1000f, 632f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32) -> u32 {
    global0 = false;
    let var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(arg_0.x, arg_0.x, -1i, 1i)), ~(-vec4<i32>(-30030i, -47196i, 37254i, u_input.a))), firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(8119i, var_0.x), 1i, 1i, ~1i))) | vec4<i32>(arg_0.x, _wgslsmith_add_i32(~u_input.a, select(-u_input.a, select(u_input.a, u_input.a, false), !arg_1.c.x)), u_input.a, -1i);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = vec2<u32>(1704u, ~min(func_3(-vec3<i32>(-14817i, -69854i, u_input.a), Struct_2(arg_0.a, arg_1.a, vec3<bool>(arg_1.b.x, false, true)), global2.x), arg_1.a));
    global0 = true;
    global0 = any(!vec4<bool>(true, arg_1.b.x, true, arg_1.b.x));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))), 1f));
    var var_2 = vec4<bool>(!all(!vec2<bool>(arg_1.b.x, arg_1.b.x)), arg_1.b.x, arg_1.b.x, arg_1.b.x);
    return Struct_3(~(~(~(~0u))), !select(!select(vec2<bool>(true, arg_1.b.x), var_2.zz, vec2<bool>(var_2.x, arg_1.b.x)), arg_1.b, all(vec2<bool>(var_2.x, true)) | select(false, false, true)));
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = ~0i;
    let var_1 = vec2<i32>(-289i, reverseBits(u_input.a)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, 61197u), vec3<u32>(1u, arg_0.a, arg_0.a)), vec3<u32>(0u, 4294967295u >> (1u % 32u), arg_0.a | arg_0.a)), 23346u) % vec2<u32>(32u));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-global2.x);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1024f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * 1645f)), vec3<f32>(global2.x, -127f, _wgslsmith_f_op_f32(abs(global2.x))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(259f, -492f)))), global2.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global2.x)))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, 250f))))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(279f, -492f, -438f, global2.x), vec4<f32>(global2.x, -624f, -589f, global2.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(114f, global2.x, -1633f, 1776f) - vec4<f32>(-2072f, global2.x, -831f, global2.x)))), arg_0.a, select(!vec3<bool>(true || arg_1, !var_2.b.x, any(vec3<bool>(true, true, arg_0.b.x))), select(!(!vec3<bool>(var_2.b.x, arg_0.b.x, arg_0.b.x)), vec3<bool>(!arg_1, arg_1 & false, false), true), countOneBits(var_1.x) == select(-var_1.x, 26580i, arg_0.b.x)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    global1 = array<vec2<f32>, 18>();
    let var_0 = arg_0;
    var var_1 = arg_1.c.c.x;
    var_1 = _wgslsmith_mult_i32(~_wgslsmith_sub_i32(u_input.a, -2147483647i), min(_wgslsmith_dot_vec2_i32(-vec2<i32>(-55685i, 2147483647i), vec2<i32>(2147483647i, u_input.a)), -_wgslsmith_mod_i32(u_input.a, u_input.a))) <= -reverseBits(_wgslsmith_div_i32(_wgslsmith_div_i32(-72212i, 1i), u_input.a << (31716u % 32u)));
    global0 = all(vec2<bool>(arg_1.a.c.x, !(any(vec3<bool>(false, true, true)) | true)));
    return Struct_4(func_4(func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1470f, -1102f, arg_0.a.x, -1774f), arg_0.a), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(arg_1.a.b, 18u)])), func_2(Struct_1(vec4<f32>(var_0.a.x, 842f, -289f, var_0.b.x), arg_0.b), Struct_3(arg_1.c.b, vec2<bool>(false, false)))), select(arg_1.b.x, any(func_2(var_0, Struct_3(4294967295u, vec2<bool>(arg_1.b.x, false))).b), all(vec4<bool>(false, arg_1.b.x, false, arg_1.a.c.x)))), arg_1.a.c.zz, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(sign(arg_0.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(var_0.a))))), reverseBits(_wgslsmith_mult_u32(42713u, ~arg_1.c.b)), vec3<bool>(arg_1.c.c.x, true, all(select(arg_1.c.c, arg_1.a.c, arg_1.b.x)))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(1u | arg_1.a.b, arg_1.a.b ^ 32248u)) | 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.x, 396f, -2444f, 1175f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, global2.x, -671f, arg_0.b.x) - _wgslsmith_f_op_vec4_f32(-arg_1.c.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.c.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, arg_0.b.x, global2.x, arg_0.b.x))), all(arg_1.c.c))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(485f + arg_1.e.x), -249f, _wgslsmith_f_op_f32(882f * arg_0.a.x)))));
}

fn func_6(arg_0: Struct_4, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, global2.x)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(func_5(Struct_1(arg_0.e, vec2<f32>(-1492f, global2.x)), Struct_4(Struct_2(arg_0.a.a, arg_0.d, vec3<bool>(arg_2.b.x, arg_0.a.c.x, arg_0.b.x)), arg_0.a.c.yy, Struct_2(arg_0.e, 0u, arg_0.a.c), 39686u, arg_0.a.a)).c.a, _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(4294967295u, 18u)] + global1[_wgslsmith_index_u32(arg_0.a.b, 18u)])), Struct_4(arg_0.c, vec2<bool>(false, arg_2.b.x), arg_0.a, ~1u, arg_0.c.a)).a.a * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x * 242f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f)), -1000f)), _wgslsmith_f_op_vec2_f32(-global2.zy));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f - _wgslsmith_f_op_f32(min(arg_0.a.a.x, arg_0.a.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -366f));
    var var_2 = vec2<f32>(-1506f, var_1.a.x);
    var_2 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(arg_0.e, _wgslsmith_div_vec2_f32(vec2<f32>(-462f, 138f), global1[_wgslsmith_index_u32(3359u, 18u)])), Struct_3(reverseBits(8974u), vec2<bool>(true, arg_0.b.x))), true).a.zw - _wgslsmith_f_op_vec2_f32(global2.xy * vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.c.a.x)), 1f))));
    return arg_2;
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = u_input.a;
    global0 = !(global2.x < -236f);
    global1 = array<vec2<f32>, 18>();
    var var_1 = vec2<bool>((1i < (_wgslsmith_div_i32(2147483647i, 1i) | firstTrailingBit(-64297i))) & true, false != all(vec3<bool>(true, true, true)));
    let var_2 = func_6(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 1408f) + vec4<f32>(-1000f, 1295f, 171f, 318f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, global2.x), _wgslsmith_f_op_vec2_f32(-global2.zz)))), Struct_4(func_4(func_2(Struct_1(vec4<f32>(171f, -805f, arg_0.x, 1413f), global1[_wgslsmith_index_u32(0u, 18u)]), Struct_3(4294967295u, vec2<bool>(true, var_1.x))), any(vec3<bool>(var_1.x, var_1.x, var_1.x))), vec2<bool>(true, arg_0.x == global2.x), Struct_2(vec4<f32>(arg_0.x, global2.x, 207f, 103f), 0u, !vec3<bool>(false, true, var_1.x)), ~(~37356u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, arg_0.x, 1000f, global2.x) + vec4<f32>(global2.x, global2.x, global2.x, arg_0.x)))))), -select(select(u_input.a, var_0, var_1.x) << (_wgslsmith_add_u32(23074u, 1u) % 32u), -59489i | var_0, var_1.x), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global2.x, -188f, 1458f) - vec4<f32>(-371f, 248f, arg_0.x, -719f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1655f, 144f, -382f, 1925f), vec4<f32>(global2.x, arg_0.x, 273f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), global2.yx, var_1.x))))), func_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, global2.x, -180f, -515f))), _wgslsmith_f_op_vec2_f32(arg_0.yx + global1[_wgslsmith_index_u32(109929u, 18u)])), Struct_3(1u, func_5(Struct_1(vec4<f32>(564f, global2.x, 360f, global2.x), vec2<f32>(global2.x, global2.x)), Struct_4(Struct_2(vec4<f32>(-303f, -1000f, arg_0.x, global2.x), 0u, vec3<bool>(var_1.x, var_1.x, true)), vec2<bool>(var_1.x, var_1.x), Struct_2(vec4<f32>(-328f, -430f, -363f, 1207f), 2749u, vec3<bool>(false, false, var_1.x)), 1u, vec4<f32>(arg_0.x, -261f, 708f, arg_0.x))).a.c.xy))));
    return ~7850u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(~65340u, ~(~0u)), ~func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, global2.x)))), min(max(~55804u, ~18489u), 6917u), max(10239u, ~(~1u))), vec4<u32>(~_wgslsmith_div_u32(41538u, ~1u), 1u, ~24921u, 50348u));
    let var_1 = select(select(vec4<bool>(false, (var_0.x >= var_0.x) | true, true, func_5(Struct_1(vec4<f32>(global2.x, global2.x, global2.x, global2.x), global2.yz), Struct_4(Struct_2(vec4<f32>(global2.x, global2.x, 1188f, -1895f), var_0.x, vec3<bool>(false, false, true)), vec2<bool>(true, true), Struct_2(vec4<f32>(global2.x, global2.x, global2.x, global2.x), var_0.x, vec3<bool>(false, false, true)), var_0.x, vec4<f32>(global2.x, 719f, -1014f, global2.x))).c.c.x), select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true)), vec4<bool>(false, u_input.a < 22868i, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)))), vec4<bool>(_wgslsmith_f_op_f32(max(-203f, _wgslsmith_f_op_f32(trunc(1098f)))) == _wgslsmith_div_f32(global2.x, 1f), true, false, any(vec2<bool>(func_4(Struct_3(var_0.x, vec2<bool>(false, false)), true).c.x, true))), !func_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(664f, -503f))), Struct_3(var_0.x, vec2<bool>(false, true))).b.x);
    let var_2 = !(!vec3<bool>(true, !var_1.x & (var_0.x > var_0.x), var_1.x));
    var var_3 = vec3<bool>(!var_1.x, true, var_1.x);
    var var_4 = Struct_3(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-936f, 585f, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, global2.x, -468f) - vec3<f32>(437f, -1148f, global2.x)))) | var_0.x, vec2<bool>(_wgslsmith_mod_u32(var_0.x, var_0.x) > var_0.x, true));
    let var_5 = !vec4<bool>(func_4(Struct_3(1u, func_4(Struct_3(15852u, var_2.zy), var_2.x).c.xx), var_4.b.x).c.x, select(min(u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), 4294967295u > var_4.a) >= u_input.a, func_2(Struct_1(vec4<f32>(135f, -782f, 1341f, -1000f), _wgslsmith_f_op_vec2_f32(global2.yx + global1[_wgslsmith_index_u32(var_0.x, 18u)])), func_2(Struct_1(vec4<f32>(100f, global2.x, -558f, 719f), vec2<f32>(-550f, global2.x)), func_2(Struct_1(vec4<f32>(global2.x, global2.x, 218f, 587f), global1[_wgslsmith_index_u32(0u, 18u)]), Struct_3(var_4.a, var_4.b)))).b.x, any(vec3<bool>(true, true, any(var_1))));
    var var_6 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1516f, global2.x, global2.x, global2.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -564f, global2.x, global2.x))))))), vec2<f32>(-278f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.x, global2.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, 41177i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i) & -vec4<i32>(u_input.a, u_input.a, u_input.a, 37800i), reverseBits(reverseBits(vec4<i32>(0i, 2147483647i, 2147483647i, u_input.a)))), false), _wgslsmith_add_vec2_u32(select(vec2<u32>(68198u ^ var_4.a, var_4.a), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a, 22505u, var_0.x), vec3<u32>(31204u, 4294967295u, 1u)), var_0.x), vec2<bool>(!var_2.x, all(var_1.wyz))), var_0.wz), countOneBits(countOneBits(min(vec2<u32>(var_0.x, 4294967295u), var_0.xw) << (vec2<u32>(var_0.x, var_4.a) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_6.a.wzw))) - _wgslsmith_f_op_vec3_f32(trunc(var_6.a.wwy))), 69060i);
}

