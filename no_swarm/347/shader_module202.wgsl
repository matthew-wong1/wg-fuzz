struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(Struct_1(vec3<i32>(2147483647i, -61277i, -1i), vec3<u32>(36097u, 29164u, 42787u), vec3<u32>(1u, 15309u, 10808u))), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -18926i), vec3<u32>(47687u, 4761u, 42961u), vec3<u32>(68172u, 4294967295u, 4294967295u)));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-5484i, 38357i, -1i), vec3<u32>(38850u, 46857u, 49638u), vec3<u32>(66866u, 65309u, 0u));

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<u32>(706u, 62879u, 12917u), vec3<u32>(4294967295u, 16568u, 71120u))), Struct_2(Struct_1(vec3<i32>(-11011i, -1i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 7674u), vec3<u32>(4294967295u, 1u, 16618u))), Struct_2(Struct_1(vec3<i32>(-30698i, -14750i, -1i), vec3<u32>(0u, 33237u, 61119u), vec3<u32>(32786u, 0u, 0u))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -15957i), vec3<u32>(59078u, 0u, 59461u), vec3<u32>(0u, 33790u, 4046u))), Struct_2(Struct_1(vec3<i32>(28657i, 1i, -1i), vec3<u32>(0u, 0u, 47669u), vec3<u32>(3967u, 18353u, 0u))), Struct_2(Struct_1(vec3<i32>(24196i, 1i, 1798i), vec3<u32>(94164u, 49310u, 0u), vec3<u32>(55371u, 19314u, 41487u))), Struct_2(Struct_1(vec3<i32>(27641i, 1i, -18862i), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(-1i, 1i, 8993i), vec3<u32>(67210u, 4294967295u, 30246u), vec3<u32>(4294967295u, 1u, 26984u))), Struct_2(Struct_1(vec3<i32>(9895i, -8976i, -6357i), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(17188u, 1u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(-31418i, -56208i, 1i), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(52239u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(2147483647i, -2494i, 1i), vec3<u32>(21761u, 74202u, 1u), vec3<u32>(64820u, 40526u, 19714u))), Struct_2(Struct_1(vec3<i32>(32007i, 5858i, 2147483647i), vec3<u32>(27484u, 0u, 62786u), vec3<u32>(4294967295u, 1u, 7775u))), Struct_2(Struct_1(vec3<i32>(0i, 1i, -489i), vec3<u32>(38u, 1u, 0u), vec3<u32>(11297u, 4294967295u, 58266u))), Struct_2(Struct_1(vec3<i32>(-7855i, -83681i, 20665i), vec3<u32>(4294967295u, 5327u, 4294967295u), vec3<u32>(4294967295u, 6986u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(-11472i, -1i, 0i), vec3<u32>(1u, 42983u, 48427u), vec3<u32>(0u, 15744u, 1u))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<u32>(4294967295u, 50499u, 0u), vec3<u32>(0u, 85871u, 23367u))), Struct_2(Struct_1(vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<u32>(4294967295u, 50626u, 4294967295u), vec3<u32>(4294967295u, 31897u, 35853u))), Struct_2(Struct_1(vec3<i32>(16233i, 2147483647i, -50899i), vec3<u32>(10970u, 56423u, 1450u), vec3<u32>(1u, 26944u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(-1i, 23095i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 1u, 9450u))), Struct_2(Struct_1(vec3<i32>(-4540i, -1i, -42545i), vec3<u32>(24068u, 33801u, 77646u), vec3<u32>(0u, 4294967295u, 30595u))), Struct_2(Struct_1(vec3<i32>(-51852i, 1i, i32(-2147483648)), vec3<u32>(51112u, 4294967295u, 29124u), vec3<u32>(3784u, 34389u, 33022u))), Struct_2(Struct_1(vec3<i32>(2147483647i, -34171i, -1i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1757u, 0u, 4294967295u))));

var<private> global3: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(1224f, -1250f), vec2<f32>(-838f, -1903f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    global0 = Struct_5(Struct_2(global0.a.a), global0.b);
    let var_0 = global0.b;
    return min(max(global1.a.x, var_0.a.x), 36832i);
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(countOneBits(select(global1.a, -select(vec3<i32>(30254i, 33323i, u_input.c.x), vec3<i32>(25875i, global1.a.x, u_input.c.x), vec3<bool>(arg_2.x, arg_2.x, false)), !(true != arg_3))), u_input.d.wzy, vec3<u32>(59338u, ~countOneBits(1u), ~(12544u >> (1u % 32u))) << (global0.b.c % vec3<u32>(32u)));
    var var_1 = func_3(u_input.d, _wgslsmith_sub_u32(reverseBits(4199u), arg_1));
    var var_2 = global0.a;
    var var_3 = u_input.d;
    var var_4 = Struct_3(vec3<f32>(-847f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1120f - -304f))), -1376f), 89770u, Struct_1(-vec3<i32>(0i >> (0u % 32u), var_0.a.x | 17961i, -var_2.a.a.x), global0.b.b, firstLeadingBit(max(u_input.d.yzz, global0.a.a.c))), arg_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1234f, -160f, -1096f), vec3<f32>(428f, 375f, 1000f), vec3<bool>(true, false, false))), vec3<f32>(694f, 1000f, -401f)), vec3<f32>(-1224f, _wgslsmith_f_op_f32(-2559f + 274f), _wgslsmith_f_op_f32(3030f + 560f))))));
    return var_4.c;
}

fn func_1(arg_0: bool) -> Struct_5 {
    var var_0 = global2[_wgslsmith_index_u32(~global0.b.b.x, 22u)];
    var var_1 = global1.c.zz;
    let var_2 = true;
    var var_3 = Struct_5(Struct_2(func_2(Struct_4(vec2<i32>(7954i, 48314i)), var_1.x | 36684u, select(vec2<bool>(true, false), vec2<bool>(true, true), var_2), false)), func_2(Struct_4(abs(global0.b.a.yx)), 3012u, !(!(!vec2<bool>(arg_0, arg_0))), arg_0));
    let var_4 = Struct_5(Struct_2(global0.a.a), Struct_1(global1.a, reverseBits(var_3.a.a.b), vec3<u32>(26924u, firstTrailingBit(_wgslsmith_mod_u32(40778u, 109507u)), var_1.x << (var_0.a.b.x % 32u))));
    return Struct_5(Struct_2(func_2(Struct_4(vec2<i32>(15003i, 6966i)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1826u, u_input.b), u_input.d.xz), var_0.a.c.yy), !vec2<bool>(true, var_2), (arg_0 || arg_0) & all(vec3<bool>(false, var_2, arg_0)))), global0.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(390f, 1786f, 701f, 1350f))))))));
    global1 = arg_3.b;
    let var_1 = !(~(-2147483647i) == global0.b.a.x);
    var var_2 = Struct_5(func_1(~(~global0.b.c.x) != 1u).a, arg_3.a.a);
    let var_3 = vec3<bool>(true, !(global1.b.x < _wgslsmith_add_u32(_wgslsmith_mod_u32(57056u, 81361u), _wgslsmith_sub_u32(global1.b.x, global0.b.c.x))), var_1);
    return Struct_5(func_1(!var_1).a, arg_3.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.a.a.c, (global1.c.zx << (vec2<u32>(1u, 0u) % vec2<u32>(32u))) & vec2<u32>(39905u, ~global1.c.x), global0.a.a, func_1(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)))));
    var var_0 = reverseBits(global1.a);
    global3 = array<vec2<f32>, 2>();
    var var_1 = any(!vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(true, any(vec4<bool>(false, true, false, true)), true)));
    var var_2 = true;
    var var_3 = _wgslsmith_dot_vec2_i32(var_0.xy, ~u_input.c.yy);
    let var_4 = Struct_4((abs(var_0.xy) << (global0.b.c.zx % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 10339i), var_0.zy) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, var_0.x, global1.a.x, 1i)), 56564i), -_wgslsmith_sub_vec2_i32(global0.b.a.zz, vec2<i32>(var_0.x, 6253i))));
    let var_5 = u_input.d.wz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(668f, 571f, 839f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1747f - _wgslsmith_f_op_f32(f32(-1f) * -742f)))), _wgslsmith_sub_vec2_u32(select(global1.c.zz, ~vec2<u32>(4294967295u, global0.a.a.c.x), true), u_input.d.yw), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1480f)), _wgslsmith_f_op_f32(step(-251f, _wgslsmith_f_op_f32(-1000f + 696f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f * -1126f)) + _wgslsmith_f_op_f32(step(-1952f, _wgslsmith_f_op_f32(max(352f, 1741f)))))));
}

