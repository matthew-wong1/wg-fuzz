struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 46638u), vec2<u32>(4294967295u, 0u), vec2<u32>(19173u, 0u), vec2<u32>(0u, 47727u), vec2<u32>(4294967295u, 33822u), vec2<u32>(34972u, 44715u), vec2<u32>(6313u, 3325u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8519u, 4294967295u), vec2<u32>(74038u, 4294967295u), vec2<u32>(42413u, 0u), vec2<u32>(1970u, 36392u), vec2<u32>(54095u, 0u), vec2<u32>(1u, 0u), vec2<u32>(153u, 24836u), vec2<u32>(20941u, 0u), vec2<u32>(4294967295u, 38524u), vec2<u32>(1u, 1u), vec2<u32>(48865u, 4294967295u), vec2<u32>(26472u, 45204u), vec2<u32>(1u, 0u), vec2<u32>(5493u, 37009u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(73156u, 0u), vec2<u32>(37125u, 21984u), vec2<u32>(3131u, 12202u));

var<private> global1: array<bool, 32>;

var<private> global2: array<f32, 25> = array<f32, 25>(1151f, -1760f, -1000f, 2502f, 726f, 821f, -996f, 655f, -843f, -1794f, -729f, 657f, -319f, -233f, -2633f, 1358f, 734f, -353f, -358f, -672f, -3572f, -549f, 822f, 1276f, 450f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    let var_0 = vec3<f32>(1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -341f)), global2[_wgslsmith_index_u32(u_input.b.x, 25u)]);
    let var_1 = max(firstTrailingBit(select(31536u, 4294967295u, global1[_wgslsmith_index_u32(~4294967295u, 32u)]) >> (4294967295u % 32u)), 4294967295u);
    let var_2 = ~101261u;
    var var_3 = Struct_3(!select(arg_0.zy, select(arg_0.yy, select(vec2<bool>(true, arg_0.x), arg_0.yz, arg_0.x), arg_0.xy), vec2<bool>(global1[_wgslsmith_index_u32(var_1, 32u)] && arg_0.x, any(arg_0.xy))), _wgslsmith_f_op_f32(floor(-1259f)), 1u);
    let var_4 = min(vec4<i32>(_wgslsmith_mod_i32(-1i, firstTrailingBit(-37683i ^ u_input.c.x)), u_input.a, ~u_input.a, arg_1), abs(~vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, arg_1), arg_1 << (u_input.b.x % 32u), _wgslsmith_clamp_i32(arg_1, -2147483647i, arg_1), u_input.a)));
    return 1u;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~34687u, 25u)] - -1455f))))));
    var var_1 = vec3<u32>(~62384u, _wgslsmith_dot_vec4_u32(select(u_input.b, _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b.x, 64691u, 4294967295u), u_input.b), !(!global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), vec4<u32>(~func_3(vec3<bool>(global1[_wgslsmith_index_u32(16563u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.a), 1u, u_input.b.x, u_input.b.x)), u_input.b.x);
    global0 = array<vec2<u32>, 28>();
    global1 = array<bool, 32>();
    var var_2 = vec4<bool>(false, true, true | global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 28u)], vec2<u32>(var_1.x, var_1.x)), var_1.x ^ reverseBits(43196u)), 32u)], select(!(!(!global1[_wgslsmith_index_u32(0u, 32u)])), global1[_wgslsmith_index_u32(0u, 32u)], false));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, _wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(-1155f * global2[_wgslsmith_index_u32(u_input.b.x, 25u)])), 1000f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(var_1.x, 28u)], var_1.yy), 25u)] + _wgslsmith_f_op_f32(sign(-1000f))))) + vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), 25u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f - -1306f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -199f), global2[_wgslsmith_index_u32(0u ^ u_input.b.x, 25u)], var_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], -109f))))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(~52078u, 25u)], global2[_wgslsmith_index_u32(~(~var_1.x), 25u)]), global2[_wgslsmith_index_u32(abs(59170u), 25u)]));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_4 {
    let var_0 = arg_1.x;
    global2 = array<f32, 25>();
    let var_1 = global2[_wgslsmith_index_u32(1u, 25u)];
    let var_2 = Struct_4(Struct_1(332f, false, _wgslsmith_f_op_vec4_f32(func_2()), -3327i, arg_1), abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), max(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(56651u, u_input.b.x, 49112u)), u_input.b.wxw)));
    let var_3 = true;
    return Struct_4(var_2.a, var_2.b);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(func_3(select(select(vec3<bool>(arg_0.a.b, arg_1, global1[_wgslsmith_index_u32(19094u, 32u)]), vec3<bool>(true, true, arg_1), vec3<bool>(false, arg_0.a.b, arg_1)), select(vec3<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(true, arg_2.b, arg_0.a.b), true), select(vec3<bool>(false, arg_1, false), vec3<bool>(true, true, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], false))), 1i), 25u)], arg_2.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, -1716f, -133f, global2[_wgslsmith_index_u32(45862u, 25u)]) * vec4<f32>(arg_0.a.c.x, 1080f, -856f, 603f))), _wgslsmith_f_op_vec4_f32(min(arg_2.c, _wgslsmith_f_op_vec4_f32(-arg_0.a.c)))), firstTrailingBit(_wgslsmith_mod_i32(~(-1i), ~(-8278i))), arg_0.a.e), 14056u);
    let var_1 = ~var_0.b;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x * arg_2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(123f)), _wgslsmith_f_op_vec4_f32(func_2()).x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1403f, _wgslsmith_f_op_f32(select(-946f, -468f, arg_1)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a))), arg_0.a.c.x);
    let var_3 = _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(var_0.b, 28u)], ~arg_0.b.zz, u_input.b.yx), _wgslsmith_clamp_vec2_u32(arg_0.b.zx, vec2<u32>(~(27656u & var_1), ~(u_input.b.x ^ var_1)), arg_0.b.yz));
    let var_4 = ~(~u_input.b.yyz | firstLeadingBit(~abs(vec3<u32>(arg_0.b.x, u_input.b.x, var_0.b))));
    return vec4<bool>(arg_2.b, arg_2.b, all(vec4<bool>(false & arg_0.a.b, true, true, !all(vec3<bool>(true, false, false)))), !any(vec4<bool>(arg_0.a.b, func_1(vec3<bool>(global1[_wgslsmith_index_u32(var_3.x, 32u)], var_0.a.b, arg_0.a.b), vec4<i32>(arg_2.e.x, var_0.a.d, -64233i, var_0.a.e.x)).a.b, var_0.a.b, global1[_wgslsmith_index_u32(1u, 32u)])));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(min(-181f, -1496f));
    var var_1 = ~max(~vec3<u32>(u_input.b.x, u_input.b.x, arg_2.c) << (reverseBits(abs(u_input.b.ywx)) % vec3<u32>(32u)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(76423u, 34427u, 1u), select(u_input.b.zyy, u_input.b.zzy, arg_1.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.xwx, vec3<u32>(39178u, arg_2.c, 1u)), u_input.b.zxw), vec3<bool>(arg_2.a.x, true, func_1(arg_1.wyz, vec4<i32>(2147483647i, arg_0.d, u_input.c.x, 9153i)).a.b)));
    let var_2 = arg_1.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f + -556f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-394f * var_0)))), all(vec2<bool>(arg_2.b <= arg_0.a, var_2)), _wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_add_i32(-u_input.a, arg_0.e.x), _wgslsmith_mult_vec4_i32(firstLeadingBit(countOneBits(arg_0.e)), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_0.e.x, -2147483647i, u_input.c.x), arg_0.e))), countOneBits(func_1(vec3<bool>(true, true, false), -reverseBits(arg_0.e)).b.x));
    global2 = array<f32, 25>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-30363i));
    var var_1 = Struct_3(func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f - 2181f) + global2[_wgslsmith_index_u32(32201u, 25u)]), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-2129f, -476f, global2[_wgslsmith_index_u32(20409u, 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)]) - vec4<f32>(global2[_wgslsmith_index_u32(79177u, 25u)], global2[_wgslsmith_index_u32(u_input.b.x, 25u)], -675f, -1115f)), var_0, ~(-vec4<i32>(u_input.a, -2147483647i, -21823i, var_0))), !func_4(func_1(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 32u)]), vec4<i32>(u_input.c.x, -3392i, var_0, -5412i)), !global1[_wgslsmith_index_u32(u_input.b.x, 32u)], func_1(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global1[_wgslsmith_index_u32(41953u, 32u)]), vec4<i32>(var_0, 45131i, var_0, var_0)).a), Struct_3(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 25u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(593u, 25u)] + global2[_wgslsmith_index_u32(34869u, 25u)]))), _wgslsmith_sub_u32(1u, countOneBits(u_input.b.x)))), -465f, max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12553u, u_input.b.x, 32184u), u_input.b.zww), abs(u_input.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 52557u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 4294967295u))) | u_input.b.x);
    var var_2 = var_1.a.x;
    var var_3 = vec4<i32>(-49366i, max(_wgslsmith_mult_i32(var_0, abs(-34923i)), max(-var_0, 0i)) ^ ~u_input.c.x, ~1i, 0i);
    let var_4 = vec3<f32>(global2[_wgslsmith_index_u32(~func_3(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], false)), ~(-1i >> (1u % 32u))), 25u)], 1573f, global2[_wgslsmith_index_u32(u_input.b.x, 25u)]);
    global0 = array<vec2<u32>, 28>();
    var var_5 = func_1(func_4(func_1(vec3<bool>(var_1.a.x && global1[_wgslsmith_index_u32(u_input.b.x, 32u)], all(vec4<bool>(var_1.a.x, true, global1[_wgslsmith_index_u32(15093u, 32u)], var_1.a.x)), var_1.a.x), vec4<i32>(var_3.x, u_input.a, -4824i, _wgslsmith_mult_i32(8059i, 54019i))), all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), false), vec3<bool>(var_1.a.x, global1[_wgslsmith_index_u32(30960u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)], true))), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 25u)]))), !all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, false)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b, -196f, 432f, 2054f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(766f, var_4.x, -2350f, -186f))))), max(u_input.a, _wgslsmith_sub_i32(2857i, var_3.x)), -firstLeadingBit(vec4<i32>(0i, var_3.x, var_3.x, 10779i)))).zxz, select(select(abs(abs(vec4<i32>(u_input.a, 0i, var_0, 84446i))), abs(-vec4<i32>(15286i, var_3.x, -2147483647i, var_0)), var_1.a.x), -vec4<i32>(_wgslsmith_div_i32(-15369i, u_input.a), _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a, var_3.x, 0i)), ~var_3.x, select(u_input.a, var_0, var_1.a.x)), var_1.a.x)).a.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.www, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) * _wgslsmith_f_op_f32(round(1107f))), var_4.x, var_1.b, var_1.b), u_input.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec4_f32(func_2()).yx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_4.x, global2[_wgslsmith_index_u32(15416u, 25u)]))))), vec2<f32>(879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -988f), _wgslsmith_f_op_f32(-410f - 621f))));
}

