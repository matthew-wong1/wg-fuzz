struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(1301f, 1000f);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec3<bool>(false, false, true), i32(-2147483648), vec2<bool>(true, false), vec3<f32>(231f, 684f, -668f), 1390f), false, -1i));

var<private> global2: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global3: array<vec2<bool>, 31>;

var<private> global4: Struct_4 = Struct_4(vec3<f32>(-104f, 299f, -1232f), vec4<i32>(18703i, i32(-2147483648), 0i, -20220i), vec4<i32>(i32(-2147483648), -3803i, i32(-2147483648), 0i), vec3<bool>(false, false, true), Struct_3(-1i, vec3<bool>(true, false, true), -14253i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    global0 = array<f32, 2>();
    let var_0 = vec3<u32>(_wgslsmith_div_u32(max(~25123u, 63454u), _wgslsmith_mult_u32(90656u, select(61703u, 1u, false))) << (min(min(1u, _wgslsmith_mod_u32(4294967295u, 4294967295u)), 4294967295u) % 32u), abs(abs(~_wgslsmith_clamp_u32(1862u, 31614u, 2445u))), 92144u);
    let var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 61556u, firstTrailingBit(1u)), select(reverseBits(vec4<u32>(14832u, var_0.x, 9555u, 7086u)), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(-2147483647i > arg_0.x, true, arg_1.c.x, true)));
    global0 = array<f32, 2>();
    let var_2 = Struct_1(select(!(!vec3<bool>(false, global4.d.x, false)), vec3<bool>(!any(vec3<bool>(false, true, false)), true, global4.e.b.x), select(select(global4.e.b, global4.d, true), vec3<bool>(false, !global4.d.x, global4.e.b.x && false), vec3<bool>(global4.d.x, all(arg_1.a), true))), 0i, vec2<bool>(any(global4.d.zz), true), vec3<f32>(_wgslsmith_f_op_f32(354f + global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, ~0u), 2u)]), _wgslsmith_f_op_f32(1394f + 1395f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1545f + global0[_wgslsmith_index_u32(4294967295u, 2u)]) * _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_1, 2u)], 140f))) * -1444f)), -397f);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a * vec3<f32>(-919f, 428f, -954f))))), var_2.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5) -> i32 {
    global0 = array<f32, 2>();
    global4 = Struct_4(_wgslsmith_f_op_vec3_f32(func_3(vec2<i32>(~global4.c.x, _wgslsmith_sub_i32(u_input.a, 2147483647i) | ~u_input.b.x), Struct_1(!vec3<bool>(arg_1.a.a.c.x, arg_1.a.b, false), _wgslsmith_add_i32(arg_1.b, global4.b.x) & _wgslsmith_clamp_i32(0i, u_input.c.x, 0i), !select(vec2<bool>(global4.e.b.x, global4.d.x), vec2<bool>(arg_1.a.a.a.x, false), arg_1.a.a.c), arg_1.a.a.d, 129f))), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-24698i, u_input.c.x, ~global4.c.x, -10405i), vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(global4.c.x, -2147483647i, u_input.b.x), _wgslsmith_div_i32(global4.c.x, 31860i), -22784i), abs(reverseBits(vec4<i32>(-1i, u_input.c.x, -2147483647i, -1i)))), min(_wgslsmith_mult_vec4_i32(-global4.b, max(global4.b, vec4<i32>(-1i, -2816i, global4.e.a, -2147483647i))), global4.b)), global4.c, vec3<bool>(arg_1.a.a.a.x, any(!select(vec3<bool>(true, false, true), vec3<bool>(arg_1.a.a.a.x, arg_1.a.a.a.x, true), true)), false), global4.e);
    let var_0 = arg_1;
    global0 = array<f32, 2>();
    let var_1 = select(select(!(!vec4<bool>(arg_1.a.a.c.x, var_0.a.b, var_0.a.a.c.x, false)), !(!vec4<bool>(global4.e.b.x, arg_1.a.b, true, true)), vec4<bool>(true, false, !(arg_0.x <= -199f), _wgslsmith_f_op_f32(-900f - var_0.a.a.e) > 1000f)), !select(vec4<bool>(any(global3[_wgslsmith_index_u32(3054u, 31u)]), global4.e.b.x, false, true), select(select(vec4<bool>(true, true, var_0.a.b, false), vec4<bool>(arg_1.a.a.c.x, arg_1.a.a.c.x, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(var_0.a.b, true, arg_1.a.a.a.x, global4.e.b.x), vec4<bool>(var_0.a.b, global4.d.x, true, true), var_0.a.a.a.x), vec4<bool>(false, true, false, var_0.a.b)), !(!vec4<bool>(arg_1.a.a.a.x, false, arg_1.a.b, var_0.a.a.a.x))), true);
    return _wgslsmith_clamp_i32(min(var_0.a.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -2147483647i, var_0.b, -1i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, var_0.b, ~arg_1.b, 1i))), _wgslsmith_mult_i32(~23734i, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, global4.c.x), abs(var_0.a.c), 42378i >> (0u % 32u))), 0i);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_4 {
    let var_0 = select(vec4<bool>(global4.a.x == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -643f))), all(select(!vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(global4.d.x, false, false, arg_1), vec4<bool>(arg_1, false, global4.d.x, true), vec4<bool>(arg_1, false, false, false)), !global4.e.b.x)), true, true), vec4<bool>(arg_1, global4.d.x, true, true), select(vec4<bool>(true, any(!global4.e.b), global4.e.b.x && true, all(select(vec4<bool>(global4.e.b.x, global4.d.x, arg_1, global4.e.b.x), vec4<bool>(global4.d.x, false, false, true), vec4<bool>(false, global4.d.x, false, false)))), vec4<bool>(global4.e.b.x, !any(vec2<bool>(arg_1, true)), false, u_input.b.x > (arg_0 | 2147483647i)), !vec4<bool>(global4.e.b.x | false, any(vec3<bool>(global4.e.b.x, arg_1, false)), true, arg_1)));
    let var_1 = max(u_input.b, ~u_input.b | global4.b.wx);
    global2 = array<vec2<bool>, 5>();
    var var_2 = Struct_2(Struct_1(vec3<bool>(true && !arg_1, true, !arg_1 | global4.d.x), 1i, global2[_wgslsmith_index_u32(12563u, 5u)], global4.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(655f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 2u)] - 212f))))), var_0.x, -56090i);
    let var_3 = ~5932u;
    return Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global4.a - vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.a.d.x)), _wgslsmith_div_f32(273f, 1553f), -1257f))), global4.b, vec4<i32>(arg_0, i32(-1i) * -57991i, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(12428i, arg_2, var_2.a.b), vec3<i32>(2147483647i, 1i, arg_2)), countOneBits(global4.b.zzw))), -22825i), vec3<bool>(true, global4.d.x, true), global4.e);
}

fn func_1() -> Struct_2 {
    let var_0 = ~6405u;
    let var_1 = func_4(~(-abs(func_2(global4.a.xz, Struct_5(global1[_wgslsmith_index_u32(var_0, 1u)], 0i, 241f)))), global4.e.b.x, ~(-37125i));
    global3 = array<vec2<bool>, 31>();
    let var_2 = global1[_wgslsmith_index_u32(35841u, 1u)];
    let var_3 = Struct_5(Struct_2(Struct_1(vec3<bool>(var_0 >= var_0, var_2.a.c.x, true), _wgslsmith_div_i32(-u_input.a, u_input.a), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(22861u), ~1u), 31u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(651f, 1199f, 659f)), var_2.a.d.x), global4.e.b.x, _wgslsmith_add_i32(-1i, ~64773i)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(610f, var_2.a.e)))) * -1124f));
    return global1[_wgslsmith_index_u32(~(~3419u), 1u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1700f, 1061f)))))), global4.a.x, _wgslsmith_f_op_f32(global4.a.x - 2811f));
    var var_1 = func_5(func_1(), Struct_1(global4.e.b, max(u_input.b.x, -2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -43703i, u_input.b.x, global4.e.a), global4.c)), func_4(_wgslsmith_sub_i32(u_input.b.x >> (25389u % 32u), abs(41494i)), !global4.e.b.x, -(u_input.b.x & global4.c.x)).d.zx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, 2229f, -1302f) - vec3<f32>(-1672f, global0[_wgslsmith_index_u32(13416u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), var_0, global4.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-111f)))));
    let var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(11558u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 21026u), ~vec2<u32>(45087u, 0u)), ~(~1u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 77954u, 72774u), vec3<u32>(34030u, 4535u, 22004u), vec3<u32>(45272u, 2698u, 107742u)) | vec3<u32>(1u, 1u, 1u))), vec3<u32>(0u, 1u, ~(~(~36019u))));
    var var_3 = Struct_5(global1[_wgslsmith_index_u32(~0u, 1u)], u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -718f));
    let var_4 = func_4(~global4.c.x, false, -28105i).e;
    global0 = array<f32, 2>();
    global4 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, 101392u), 2u)] - _wgslsmith_f_op_f32(-var_3.c)), global0[_wgslsmith_index_u32(~4294967295u, 2u)], 1583f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0))))), vec4<i32>(func_1().a.b, _wgslsmith_add_i32(firstTrailingBit(global4.c.x), global4.e.a), var_4.c, _wgslsmith_mult_i32(1i, var_1.a.b)) ^ vec4<i32>(-(i32(-1i) * -7833i), func_4(15617i | var_1.a.b, all(var_3.a.a.a), _wgslsmith_mod_i32(5560i, var_3.a.a.b)).c.x, u_input.c.x, 0i), global4.b, vec3<bool>(2147483647i > func_4(_wgslsmith_div_i32(2147483647i, var_1.a.b), !var_3.a.b, ~0i).e.a, false, func_1().b), var_4);
    var var_5 = any(vec3<bool>(!var_3.a.a.c.x, false, var_1.a.a.x & true));
    let var_6 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(vec4<u32>(var_6, 0u, 0u, var_2.x) | vec4<u32>(var_6, var_2.x, 38033u, var_6))) >> (firstTrailingBit(~vec4<u32>(0u, 1u, 1u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c - var_3.a.a.d.x) + func_1().a.e))), ~reverseBits(firstTrailingBit(abs(var_2))), ~(~_wgslsmith_mult_u32(~var_2.x, var_6)), global4.c);
}

