struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(1u, 66268u, 4294967295u, 8216u), vec4<u32>(0u, 79527u, 39682u, 1u), vec4<u32>(4294967295u, 1u, 0u, 28262u), vec4<u32>(0u, 0u, 4294967295u, 77750u), vec4<u32>(0u, 45464u, 1u, 0u), vec4<u32>(5686u, 59565u, 40913u, 0u), vec4<u32>(1u, 1u, 2345u, 19745u), vec4<u32>(24174u, 4294967295u, 0u, 19935u), vec4<u32>(10286u, 0u, 0u, 8551u), vec4<u32>(48410u, 4509u, 20423u, 0u), vec4<u32>(68575u, 1u, 28569u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, 3038u, 23429u), vec4<u32>(1u, 4294967295u, 0u, 15616u), vec4<u32>(83814u, 32525u, 4294967295u, 1u), vec4<u32>(40457u, 18716u, 16620u, 39918u), vec4<u32>(4294967295u, 1u, 53182u, 0u), vec4<u32>(4294967295u, 18576u, 1u, 0u), vec4<u32>(1u, 0u, 23003u, 17190u), vec4<u32>(50595u, 21721u, 40279u, 1u), vec4<u32>(79695u, 10513u, 25163u, 85856u), vec4<u32>(23214u, 47664u, 35758u, 21012u), vec4<u32>(0u, 57473u, 4294967295u, 0u), vec4<u32>(1u, 57157u, 1u, 4294967295u), vec4<u32>(25783u, 60469u, 32473u, 4294967295u), vec4<u32>(78712u, 0u, 7330u, 1u));

var<private> global2: array<i32, 6>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(3788u, firstTrailingBit(u_input.b), u_input.b, firstTrailingBit(_wgslsmith_clamp_u32(~u_input.b, ~u_input.b, ~u_input.b))), ~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(114919u, 1u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(~u_input.b, 26u)]), 26u)]);
    global1 = array<vec4<u32>, 26>();
    let var_1 = Struct_1(true);
    return !(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, true))), var_1.a));
}

fn func_2(arg_0: bool) -> vec4<i32> {
    global1 = array<vec4<u32>, 26>();
    var var_0 = -1i;
    var_0 = u_input.a.x;
    global0 = !(!vec2<bool>(arg_0, true));
    var var_1 = select(vec3<bool>(true, global0.x, any(!func_3())), vec3<bool>(!all(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(arg_0, false, global0.x), vec3<bool>(false, false, true))), all(!vec4<bool>(global0.x, false, arg_0, false)), !func_3().x), !vec3<bool>(all(select(vec4<bool>(arg_0, true, arg_0, global0.x), vec4<bool>(global0.x, false, arg_0, false), arg_0)), global0.x, true));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], 15709i, global2[_wgslsmith_index_u32(1610u, 6u)], u_input.a.x)) | vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, global2[_wgslsmith_index_u32(35112u, 6u)]), u_input.c), i32(-1i) * -6911i, global2[_wgslsmith_index_u32(~30863u, 6u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 6u)], 2147483647i)), _wgslsmith_add_vec4_i32(~(~vec4<i32>(u_input.c.x, global2[_wgslsmith_index_u32(33704u, 6u)], u_input.c.x, global2[_wgslsmith_index_u32(u_input.b, 6u)])), vec4<i32>(0i, u_input.c.x, _wgslsmith_mod_i32(1i, u_input.a.x), u_input.c.x))), countOneBits(-vec4<i32>(u_input.c.x, u_input.c.x, ~(-2147483647i), global2[_wgslsmith_index_u32(u_input.b, 6u)])));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -390f))) + -460f))));
    let var_1 = func_2(false);
    return Struct_1(!arg_2.c.a);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = min(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.a.x) | _wgslsmith_div_i32(63647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.yy)), 1i);
    var var_1 = abs(20497i);
    var var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a.x | _wgslsmith_div_i32(u_input.a.x | global2[_wgslsmith_index_u32(arg_0, 6u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 6u)], -56257i)), _wgslsmith_add_i32(select(_wgslsmith_dot_vec2_i32(vec2<i32>(19141i, -18120i), vec2<i32>(var_0, global2[_wgslsmith_index_u32(arg_0, 6u)])), ~var_0, false || arg_1.a), 1i >> (_wgslsmith_mod_u32(u_input.b, 29455u) % 32u))), ~(~vec2<i32>(~u_input.a.x, 65136i)), abs(select(func_2(global0.x).zw, vec2<i32>(u_input.a.x, -60754i), func_3()) & u_input.c.xx));
    return all(select(vec4<bool>(!(arg_1.a | true), !(!arg_1.a), true, false | (global0.x == global0.x)), !vec4<bool>(global0.x, all(vec3<bool>(false, arg_1.a, arg_1.a)), !global0.x, false), !select(!vec4<bool>(true, true, arg_1.a, false), select(vec4<bool>(arg_1.a, true, global0.x, arg_1.a), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x), !vec4<bool>(false, arg_1.a, false, global0.x))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<bool> {
    global0 = select(arg_1.yw, vec2<bool>(false, any(arg_1.wxw)), false);
    let var_0 = Struct_1(!(!(u_input.c.x >= _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b, 6u)], arg_3.b))));
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    return select(select(select(func_3(), arg_1.xx, !arg_3.a.a), func_3(), arg_3.a.a), select(vec2<bool>(var_0.a, all(!vec4<bool>(true, arg_1.x, true, true))), vec2<bool>(true, !(!var_0.a)), !select(!arg_1.xy, !vec2<bool>(false, var_0.a), arg_1.x)), select(select(func_3(), arg_1.zx, arg_1.yw), !(!arg_1.zz), vec2<bool>(global0.x, all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(Struct_1(-26468i == firstTrailingBit(global2[_wgslsmith_index_u32(0u, 6u)])), vec4<bool>(func_4(_wgslsmith_mod_u32(u_input.b, 0u), func_1(vec3<i32>(-20695i, global2[_wgslsmith_index_u32(u_input.b, 6u)], -2147483647i), vec2<bool>(true, false), Struct_2(Struct_1(true), -75559i, Struct_1(true)))), global0.x, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-467f, -282f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, -722f)), !vec2<bool>(global0.x, true))) * vec2<f32>(553f, _wgslsmith_f_op_f32(ceil(-714f)))), Struct_2(Struct_1(any(vec3<bool>(false, global0.x, true))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(u_input.b, 6u)]), func_2(global0.x).x), func_1(u_input.c, !vec2<bool>(global0.x, global0.x), Struct_2(Struct_1(global0.x), 2147483647i, Struct_1(global0.x))))), !(!func_5(Struct_1(global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec2<f32>(-1000f, -170f), Struct_2(Struct_1(false), 0i, Struct_1(global0.x)))), select(vec2<bool>(true, global0.x), vec2<bool>(func_3().x, global0.x), true));
    var var_1 = Struct_2(Struct_1(!(func_2(var_0.x).x <= _wgslsmith_mult_i32(u_input.a.x, 0i))), countOneBits(-1i), Struct_1(true));
    var var_2 = Struct_2(func_1(u_input.c ^ u_input.c, select(var_0, vec2<bool>(u_input.b < 1u, true), !(!var_0)), Struct_2(func_1(u_input.c, vec2<bool>(true, true), Struct_2(var_1.c, u_input.a.x, Struct_1(true))), min(-8390i, -u_input.c.x), var_1.a)), -1i, var_1.c);
    var_2 = Struct_2(Struct_1(select(true, _wgslsmith_f_op_f32(floor(1277f)) >= _wgslsmith_f_op_f32(max(-212f, 492f)), false)), abs(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, var_2.b, -1i)), u_input.c)), var_2.c);
    global0 = vec2<bool>(global0.x && (global0.x | false), ~u_input.b > min(u_input.b & ~u_input.b, select(abs(u_input.b), u_input.b, true)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1712f) + _wgslsmith_f_op_f32(-475f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -911f) - 1761f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-916f, 289f)), _wgslsmith_f_op_f32(-132f - 2886f))))));
    var_2 = Struct_2(Struct_1(true), -2147483647i, Struct_1(true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f + var_3)), -719f, _wgslsmith_f_op_f32(ceil(887f))) - vec3<f32>(_wgslsmith_f_op_f32(var_3 * 118f), _wgslsmith_f_op_f32(floor(var_3)), _wgslsmith_f_op_f32(-var_3))), u_input.b, ~(vec2<u32>(u_input.b, 1u) >> (~(vec2<u32>(31096u, u_input.b) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

