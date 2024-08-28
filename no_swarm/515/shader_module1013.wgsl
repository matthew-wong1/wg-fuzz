struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_1(false, 4294967295u, true, vec2<f32>(-945f, 414f)), vec4<u32>(26977u, 0u, 18698u, 77742u), -22108i), Struct_4(Struct_1(true, 1u, true, vec2<f32>(667f, 305f)), vec4<u32>(0u, 23117u, 2646u, 14606u), 2147483647i), Struct_4(Struct_1(true, 37952u, true, vec2<f32>(-1598f, 210f)), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), 3483i), Struct_4(Struct_1(false, 4294967295u, true, vec2<f32>(-1959f, 1433f)), vec4<u32>(21560u, 4294967295u, 2377u, 4294967295u), -27549i), Struct_4(Struct_1(false, 39400u, true, vec2<f32>(-1048f, 849f)), vec4<u32>(1u, 1u, 1u, 0u), -12440i), Struct_4(Struct_1(true, 41098u, true, vec2<f32>(-419f, 1000f)), vec4<u32>(1u, 87142u, 68528u, 29366u), -74734i), Struct_4(Struct_1(true, 17664u, false, vec2<f32>(512f, -234f)), vec4<u32>(112120u, 1u, 94707u, 26034u), -10468i), Struct_4(Struct_1(false, 24024u, true, vec2<f32>(-2395f, -1421f)), vec4<u32>(0u, 0u, 120710u, 1u), -1i), Struct_4(Struct_1(false, 14272u, false, vec2<f32>(-732f, -654f)), vec4<u32>(23375u, 0u, 10802u, 40521u), -85i), Struct_4(Struct_1(true, 69616u, false, vec2<f32>(1663f, 226f)), vec4<u32>(70505u, 0u, 103284u, 0u), -38002i), Struct_4(Struct_1(false, 36571u, true, vec2<f32>(386f, 313f)), vec4<u32>(1u, 21043u, 30166u, 72791u), -1i), Struct_4(Struct_1(false, 2001u, false, vec2<f32>(-467f, 1529f)), vec4<u32>(2768u, 0u, 25630u, 25610u), i32(-2147483648)), Struct_4(Struct_1(false, 14610u, false, vec2<f32>(-1369f, -576f)), vec4<u32>(76279u, 39371u, 23364u, 4294967295u), 23668i), Struct_4(Struct_1(true, 0u, false, vec2<f32>(217f, 112f)), vec4<u32>(1u, 1u, 4294967295u, 0u), 2147483647i), Struct_4(Struct_1(true, 41354u, false, vec2<f32>(-1071f, 657f)), vec4<u32>(48601u, 75558u, 4294967295u, 18618u), 2147483647i), Struct_4(Struct_1(false, 23048u, false, vec2<f32>(-402f, 662f)), vec4<u32>(1u, 3245u, 48967u, 0u), 9811i), Struct_4(Struct_1(true, 10623u, true, vec2<f32>(-1611f, -1803f)), vec4<u32>(10099u, 14571u, 87212u, 4294967295u), -36046i));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>) -> vec4<u32> {
    let var_0 = global1.b;
    let var_1 = Struct_2(select(~vec3<i32>(2147483647i, 1i, min(0i, 1i)), vec3<i32>(-1i << (_wgslsmith_dot_vec3_u32(vec3<u32>(11026u, arg_0.a, global1.b), u_input.a.zzx) % 32u), -(i32(-1i) * -1i), abs(1i)), select(!vec3<bool>(true, global1.c, global1.c), select(!arg_1.xzx, !vec3<bool>(global1.c, global1.c, false), any(arg_1.xz)), select(arg_1.yxz, arg_1.xxy, true | global1.a))), global1.b);
    global1 = Struct_1(false, arg_0.a, !(!any(arg_1.xyw)), _wgslsmith_div_vec2_f32(vec2<f32>(global1.d.x, global1.d.x), _wgslsmith_f_op_vec2_f32(global1.d - global1.d)));
    global0 = array<Struct_4, 17>();
    global1 = Struct_1(max(~1i, abs(var_1.a.x)) > select(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.x, var_1.a.x, -26417i, 61831i), vec4<i32>(var_1.a.x, var_1.a.x, 65982i, 24144i))), _wgslsmith_dot_vec2_i32(var_1.a.xy, var_1.a.zz) ^ var_1.a.x, !(!global1.c)), var_1.b, _wgslsmith_div_i32(_wgslsmith_add_i32(-var_1.a.x, 17983i), 1i) < firstTrailingBit(firstTrailingBit(1i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1718f, global1.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.d, vec2<f32>(global1.d.x, global1.d.x))))))));
    return _wgslsmith_add_vec4_u32(vec4<u32>(21558u, reverseBits(4294967295u), ~(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(u_input.a.x, 32231u)))), ~abs(~u_input.a));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_1(false, _wgslsmith_dot_vec4_u32(~func_3(Struct_3(31807u, 1u), vec4<bool>(global1.c, false, true, false)), vec4<u32>(~0u, select(u_input.a.x, global1.b, false), u_input.a.x, 4294967295u) ^ ~u_input.a), all(vec3<bool>(true, true, any(!vec3<bool>(global1.c, false, global1.a)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))) * global1.d.x)));
    var var_0 = abs(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(u_input.a.x), u_input.a.x & 14937u), func_3(Struct_3(9668u, 0u), vec4<bool>(global1.c, true, false, global1.c)).wx), vec2<u32>(~11248u, u_input.a.x)));
    var var_1 = vec3<bool>(global1.a, !all(vec4<bool>(all(vec3<bool>(global1.c, false, false)), true, true, false)), !global1.a & true);
    let var_2 = select(!(!(!vec4<bool>(false, var_1.x, false, var_1.x))), vec4<bool>(!(min(var_0.x, global1.b) == abs(0u)), var_1.x, true, global1.a), !(countOneBits(1i) == _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 0i, 11741i), ~vec3<i32>(11914i, -11921i, 50756i))));
    global1 = Struct_1(true, var_0.x, !var_2.x, _wgslsmith_f_op_vec2_f32(global1.d + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1502f, _wgslsmith_f_op_f32(-global1.d.x)))));
    return Struct_1(true, _wgslsmith_dot_vec3_u32(func_3(Struct_3(min(u_input.a.x, global1.b), ~2374u), select(vec4<bool>(global1.c, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, false, false), var_2)).zyx, u_input.a.yzz), !(false & all(!vec4<bool>(true, global1.c, var_1.x, var_2.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-320f + global1.d.x), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.d)), _wgslsmith_f_op_vec2_f32(global1.d + vec2<f32>(805f, global1.d.x))))))));
}

fn func_1() -> i32 {
    global1 = func_2(548f);
    global0 = array<Struct_4, 17>();
    var var_0 = Struct_1(true, global1.b | abs(global1.b), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1369f, -1212f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(586f, 491f) - global1.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.d, global1.d)))) + _wgslsmith_f_op_vec2_f32(-global1.d)));
    let var_1 = u_input.a.wyx;
    global0 = array<Struct_4, 17>();
    return min(firstTrailingBit(-21265i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 17>();
    var var_0 = _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(1i, 1i, 1i, 1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-14224i, -9343i, -4333i, -752i), vec4<i32>(-25853i, 1i, -63541i, -2147483647i), vec4<i32>(6372i, 2147483647i, 29474i, -56662i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (~u_input.a % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -1i, func_1()), abs(abs(2147483647i)), 0i, -(1i >> (u_input.a.x % 32u)))));
    let var_1 = select(!(!select(!vec3<bool>(global1.a, global1.c, false), select(vec3<bool>(global1.c, global1.c, global1.a), vec3<bool>(false, global1.a, true), global1.c), global1.a && true)), vec3<bool>(true, !global1.a, false), vec3<bool>(((623u << (global1.b % 32u)) ^ 1u) > max(1u, global1.b), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(1i, -1i), 0i, global1.b, firstTrailingBit(vec2<u32>(79844u, 1u)));
}

