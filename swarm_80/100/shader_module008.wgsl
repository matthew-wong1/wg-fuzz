struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<f32>(721f, -638f, 1174f, -1846f), true), Struct_1(vec4<f32>(-989f, -1000f, 305f, 562f), true), Struct_1(vec4<f32>(1000f, -788f, -284f, -786f), true), Struct_1(vec4<f32>(-1000f, 139f, 462f, -1413f), false), Struct_1(vec4<f32>(1334f, -577f, -932f, 1240f), false), Struct_1(vec4<f32>(1095f, 310f, 103f, 1541f), false), Struct_1(vec4<f32>(-1309f, -733f, 1220f, -1000f), true), Struct_1(vec4<f32>(-184f, 358f, -266f, 1897f), false), Struct_1(vec4<f32>(-1253f, 1875f, -1264f, -1608f), false), Struct_1(vec4<f32>(-268f, 997f, 701f, -843f), false), Struct_1(vec4<f32>(-1422f, -446f, 2020f, 714f), true), Struct_1(vec4<f32>(-672f, 1000f, -1271f, 1000f), false), Struct_1(vec4<f32>(832f, 1156f, 139f, 803f), false), Struct_1(vec4<f32>(-145f, 1007f, 717f, -962f), false), Struct_1(vec4<f32>(-2221f, 554f, 1039f, 141f), false), Struct_1(vec4<f32>(424f, -656f, 1960f, 1411f), false), Struct_1(vec4<f32>(2599f, -100f, 1177f, 3405f), false), Struct_1(vec4<f32>(-712f, 223f, 1221f, -353f), false), Struct_1(vec4<f32>(2131f, -573f, -1000f, -1415f), false), Struct_1(vec4<f32>(490f, -886f, 302f, -264f), true), Struct_1(vec4<f32>(353f, 198f, 1000f, 220f), false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b.a + arg_0.b.a))));
    let var_1 = !any(select(select(select(global0[_wgslsmith_index_u32(48139u, 7u)], arg_2, global2.xx), global0[_wgslsmith_index_u32(u_input.a.x, 7u)], !global2.yy), select(vec2<bool>(true, global2.x), select(global0[_wgslsmith_index_u32(arg_0.c, 7u)], global2.xy, false), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<bool>(arg_0.b.b & global2.x, true)));
    let var_2 = vec2<u32>(1u, 11777u);
    global3 = array<Struct_1, 21>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a));
    return arg_0.b.a.x;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> i32 {
    global2 = vec3<bool>(!(((u_input.c < 0u) || true) && true), global2.x, any(vec3<bool>(false, !(global2.x != true), global2.x)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1029f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-239f + _wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(4294967295u, arg_1.x, arg_1.x), Struct_1(vec4<f32>(-1167f, -618f, 225f, 1116f), global2.x), 4294967295u), arg_1.x, select(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(62151u, 7u)], false), global1.xy))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<u32>(arg_1.x, 1u, arg_1.x), Struct_1(vec4<f32>(-130f, 522f, -1267f, -337f), global2.x), arg_0), arg_0, vec2<bool>(global2.x, global2.x), global1.zx)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(452f, 706f))))), _wgslsmith_f_op_f32(f32(-1f) * -279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f - 480f)))));
    global0 = array<vec2<bool>, 7>();
    let var_1 = abs(~(vec3<u32>(arg_0, 1u, arg_0) >> (min(vec3<u32>(arg_0, u_input.c, 31268u), vec3<u32>(12003u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) << (vec3<u32>(abs(~u_input.a.x), 0u, min(~57566u, abs(1u))) % vec3<u32>(32u)));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), select(vec2<u32>(arg_0, var_1.x), vec2<u32>(u_input.c, 9299u), vec2<bool>(global2.x, global2.x)))), min(0u, abs(~arg_1.x))), (_wgslsmith_mod_u32(var_1.x, u_input.a.x) ^ reverseBits(_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(u_input.c, 1u, 4294967295u)))) & _wgslsmith_mult_u32(u_input.c, arg_0 | ~0u)), 21u)];
    return reverseBits(_wgslsmith_div_i32(global1.x, reverseBits(countOneBits(i32(-1i) * -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> vec3<i32> {
    global1 = vec3<i32>((_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -53942i), abs(vec2<i32>(2147483647i, -2147483647i))) >> (u_input.c % 32u)) & (13602i << ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 64882u)) << (0u % 32u)) % 32u)), global1.x ^ -firstLeadingBit(global1.x >> (u_input.c % 32u)), global1.x);
    var var_0 = -vec3<i32>(_wgslsmith_add_i32(abs(global1.x), u_input.b.x), ~(~(global1.x | 5530i)), countOneBits(-19032i << ((4294967295u ^ u_input.a.x) % 32u)));
    global1 = abs(_wgslsmith_mod_vec3_i32(vec3<i32>(min(-global1.x, countOneBits(0i)), u_input.b.x, 29906i), vec3<i32>(_wgslsmith_mult_i32(~(-2147483647i), func_2(4574u, vec2<u32>(41103u, 0u), u_input.b.x)), countOneBits(0i), -_wgslsmith_mult_i32(2147483647i, -1i))));
    global0 = array<vec2<bool>, 7>();
    global3 = array<Struct_1, 21>();
    return _wgslsmith_add_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(~countOneBits(vec3<i32>(global1.x, 4203i, -44697i)), min(vec3<i32>(-23056i, -1i, global1.x), vec3<i32>(global1.x, global1.x, -1i)) ^ ~vec3<i32>(-1i, var_0.x, 10546i))), vec3<i32>(-(i32(-1i) * -global1.x), var_0.x, -abs(-26842i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, 34386u, 4294967295u), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x)) % 32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    var var_0 = ~vec2<u32>(u_input.a.x, 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1000f, arg_3, 377f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)), -2987f, _wgslsmith_f_op_f32(step(-941f, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, arg_3, false)) * -667f))));
    global1 = select(vec3<i32>(arg_1.x, ~(-9489i), arg_1.x), firstTrailingBit(firstTrailingBit(-_wgslsmith_clamp_vec3_i32(arg_1, vec3<i32>(2147483647i, arg_1.x, u_input.b.x), arg_1))), any(!(!(!vec4<bool>(false, false, arg_2.x, true)))));
    var_0 = ~_wgslsmith_mod_vec2_u32(u_input.a, abs(vec2<u32>(4294967295u, u_input.c))) ^ u_input.a;
    var var_2 = Struct_2(vec3<u32>(countOneBits(_wgslsmith_div_u32(4294967295u, var_0.x)), _wgslsmith_mult_u32(countOneBits(var_0.x), u_input.c), countOneBits(abs(var_0.x))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-856f * _wgslsmith_f_op_f32(-arg_3)), var_1.x, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * arg_3)), false), abs(~var_0.x));
    return var_2.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = firstTrailingBit(-countOneBits(vec3<i32>(u_input.b.x, firstTrailingBit(global1.x), u_input.b.x)));
    let var_0 = firstTrailingBit(13276u);
    global1 = -vec3<i32>(~(~45100i), reverseBits(u_input.b.x), 40413i);
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_2 = _wgslsmith_div_vec2_f32(var_1.a.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(false, false, global2.x), func_1(global3[_wgslsmith_index_u32(8965u, 21u)], false), select(vec4<bool>(true, true, true, global2.x), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(true, var_1.b, global2.x, true)), _wgslsmith_f_op_f32(var_1.a.x + -179f))), _wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1451f, -1396f))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-var_1.a.x))), !vec2<bool>(var_1.a.x != var_1.a.x, global2.x))));
    global1 = -vec3<i32>(~_wgslsmith_div_i32(2147483647i, -global1.x), -reverseBits(u_input.b.x), global1.x);
    var var_3 = Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_0, u_input.a.x), vec3<u32>(var_0, _wgslsmith_mult_u32(u_input.c, 1u), reverseBits(_wgslsmith_sub_u32(9834u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(387f, -483f, -235f, 252f), vec4<f32>(var_1.a.x, var_2.x, 267f, var_2.x), true))))), var_1.b), 4294967295u);
    let var_4 = -(-firstTrailingBit(-vec4<i32>(-55045i, u_input.b.x, -12965i, u_input.b.x)) >> (min(max(abs(vec4<u32>(34799u, var_3.a.x, 79578u, var_0)), vec4<u32>(97304u, 1u, 40964u, 49444u)), max(~vec4<u32>(1u, var_3.c, var_0, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, 66213u, var_3.a.x, var_3.c), vec4<u32>(var_0, u_input.a.x, var_3.c, 0u)))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

