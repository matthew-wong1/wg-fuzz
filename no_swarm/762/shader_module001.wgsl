struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(812f, vec4<i32>(1660i, -61206i, 18603i, -1i), vec3<i32>(10032i, 0i, 1i), 1u, vec3<u32>(55976u, 83026u, 74352u)), Struct_1(-830f, vec4<i32>(2147483647i, 23075i, -1i, i32(-2147483648)), vec3<i32>(-30997i, -15862i, i32(-2147483648)), 4294967295u, vec3<u32>(0u, 0u, 29456u)), vec4<f32>(-108f, 248f, 730f, -754f), Struct_1(380f, vec4<i32>(0i, -1i, i32(-2147483648), 1i), vec3<i32>(2147483647i, 25841i, 2147483647i), 1u, vec3<u32>(49384u, 2677u, 10031u))), Struct_2(Struct_1(1000f, vec4<i32>(1i, 1995i, 9984i, 24436i), vec3<i32>(-1i, -1i, -41299i), 88548u, vec3<u32>(73854u, 78689u, 4294967295u)), Struct_1(638f, vec4<i32>(7248i, 0i, -3504i, 1715i), vec3<i32>(-2699i, -1i, 2147483647i), 0u, vec3<u32>(1711u, 27511u, 1191u)), vec4<f32>(-657f, -136f, -108f, 247f), Struct_1(-1431f, vec4<i32>(-28165i, -18779i, 1i, 6872i), vec3<i32>(-47262i, 0i, 1i), 0u, vec3<u32>(82447u, 111206u, 4294967295u))), Struct_2(Struct_1(225f, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i), vec3<i32>(5142i, 54213i, -7919i), 0u, vec3<u32>(1u, 129141u, 4294967295u)), Struct_1(-1687f, vec4<i32>(-16410i, -65125i, -1i, 7821i), vec3<i32>(1i, -25445i, -10895i), 4294967295u, vec3<u32>(4294967295u, 41411u, 4294967295u)), vec4<f32>(-362f, 167f, -2130f, -1458f), Struct_1(-717f, vec4<i32>(i32(-2147483648), -1i, -38209i, -14565i), vec3<i32>(1266i, 11202i, 37947i), 79356u, vec3<u32>(62255u, 30477u, 15084u))), Struct_2(Struct_1(1008f, vec4<i32>(2147483647i, i32(-2147483648), -31108i, 1i), vec3<i32>(-46026i, 24319i, -18875i), 4294967295u, vec3<u32>(23016u, 70306u, 4294967295u)), Struct_1(-1400f, vec4<i32>(1i, 1222i, i32(-2147483648), -7103i), vec3<i32>(0i, 1i, 52477i), 0u, vec3<u32>(1u, 4294967295u, 6393u)), vec4<f32>(372f, -675f, 867f, -1505f), Struct_1(107f, vec4<i32>(-1i, 1i, -40527i, 1i), vec3<i32>(-39683i, 2147483647i, -1i), 1u, vec3<u32>(25484u, 1u, 1u))), Struct_2(Struct_1(1345f, vec4<i32>(i32(-2147483648), 4015i, -1i, -17019i), vec3<i32>(-15709i, -1i, 0i), 1u, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(-1114f, vec4<i32>(-12619i, -31033i, 12849i, 20935i), vec3<i32>(2147483647i, 8378i, 1i), 1u, vec3<u32>(38719u, 52326u, 0u)), vec4<f32>(1121f, 238f, -596f, 396f), Struct_1(-771f, vec4<i32>(i32(-2147483648), -2438i, 28597i, -7625i), vec3<i32>(i32(-2147483648), 14470i, 1i), 78602u, vec3<u32>(17180u, 2535u, 17343u))), Struct_2(Struct_1(632f, vec4<i32>(87479i, -51200i, 7424i, 16993i), vec3<i32>(2881i, 13159i, 50694i), 56891u, vec3<u32>(7876u, 14139u, 67011u)), Struct_1(183f, vec4<i32>(-57900i, -2971i, i32(-2147483648), 53721i), vec3<i32>(-27599i, 39840i, -10228i), 49626u, vec3<u32>(4294967295u, 1u, 0u)), vec4<f32>(-297f, 439f, 546f, -623f), Struct_1(222f, vec4<i32>(-31751i, 7489i, 40848i, -43283i), vec3<i32>(31186i, 25140i, 1i), 4294967295u, vec3<u32>(0u, 0u, 50555u))), Struct_2(Struct_1(-428f, vec4<i32>(1i, -1i, 29571i, 57529i), vec3<i32>(9268i, 24126i, -44239i), 4294967295u, vec3<u32>(4294967295u, 54535u, 1u)), Struct_1(-715f, vec4<i32>(-84357i, 0i, i32(-2147483648), -1i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 4294967295u, vec3<u32>(1u, 36161u, 4294967295u)), vec4<f32>(-944f, 512f, -181f, 1152f), Struct_1(294f, vec4<i32>(0i, -1i, 725i, 31513i), vec3<i32>(-32573i, 3862i, 1i), 4294967295u, vec3<u32>(13623u, 4294967295u, 19995u))), Struct_2(Struct_1(792f, vec4<i32>(-10049i, 6237i, -9819i, 2147483647i), vec3<i32>(0i, 1i, i32(-2147483648)), 1u, vec3<u32>(0u, 125385u, 28639u)), Struct_1(919f, vec4<i32>(-33102i, 2147483647i, 2147483647i, 17902i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), 10712u, vec3<u32>(1u, 4294967295u, 19720u)), vec4<f32>(713f, 746f, -199f, -2358f), Struct_1(-188f, vec4<i32>(56697i, 1i, 1i, 25883i), vec3<i32>(i32(-2147483648), -21235i, -1i), 0u, vec3<u32>(1u, 4294967295u, 58149u))));

var<private> global1: array<Struct_2, 5>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32>;

var<private> global4: array<Struct_2, 9>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    global3 = global2.b;
    let var_0 = global2.e.xx >> (u_input.a.zz % vec2<u32>(32u));
    let var_1 = Struct_1(global2.a, global2.b, u_input.d & global2.b.wxx, abs(4294967295u), firstLeadingBit(global2.e));
    let var_2 = -min(global2.c.x, -1i);
    let var_3 = Struct_2(var_1, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2.a)))), var_1.b, global3.wzy, var_1.e.x, var_1.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1073f, var_1.a, -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(498f, global2.a, 487f, -357f), vec4<f32>(2696f, global2.a, 846f, 1145f))))))), var_1);
    return 315f;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global4 = array<Struct_2, 9>();
    let var_0 = 0u;
    global0 = array<Struct_2, 8>();
    global2 = Struct_1(-188f, vec4<i32>(~u_input.b, arg_1.c.x, -59952i, u_input.b), abs(vec3<i32>(global2.b.x, u_input.b, -u_input.d.x ^ min(-11498i, 51855i))), (global2.e.x & ~u_input.c) >> (~(~global2.d) % 32u), global2.e);
    let var_1 = vec2<bool>(true, !all(vec3<bool>(true, true, true)));
    return Struct_1(_wgslsmith_f_op_f32(func_3()), abs(~global2.b), u_input.d, _wgslsmith_div_u32(0u, abs(~28412u)), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 67675u, 0u) >> (u_input.e % vec3<u32>(32u)), vec3<u32>(22103u, u_input.e.x, 26140u)), u_input.a, vec3<bool>(false, true, true)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(1u, 5u)];
    global0 = array<Struct_2, 8>();
    return func_2(global2.a, var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> i32 {
    global3 = global2.b;
    global1 = array<Struct_2, 5>();
    global1 = array<Struct_2, 5>();
    let var_0 = func_1(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), !(true || all(vec2<bool>(false, false)))));
    global0 = array<Struct_2, 8>();
    return -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), -u_input.d.xy), ~(i32(-1i) * -2373i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_4(Struct_2(func_1(vec4<bool>(false, true, false, true)), Struct_1(global2.a, global2.b, u_input.d, global2.e.x, global2.e), vec4<f32>(global2.a, 846f, 318f, global2.a), Struct_1(global2.a, vec4<i32>(global2.b.x, global2.b.x, -24078i, -2147483647i), vec3<i32>(-2147483647i, u_input.d.x, global3.x), 4294967295u, vec3<u32>(u_input.e.x, u_input.c, 45696u))), func_1(vec4<bool>(true, true, true, true)), abs(u_input.a.x), _wgslsmith_dot_vec3_i32(reverseBits(global2.c), vec3<i32>(global3.x, 1i, 2147483647i))) != -_wgslsmith_add_i32(select(global2.c.x, global3.x, false), u_input.d.x));
    global2 = Struct_1(global2.a, vec4<i32>(u_input.b, _wgslsmith_clamp_i32(-global2.b.x, abs(_wgslsmith_mult_i32(0i, 25867i)), firstTrailingBit(2147483647i)), 1i, ~(~(1i << (global2.d % 32u)))), vec3<i32>(min(31144i, -12407i), func_2(_wgslsmith_f_op_f32(-global2.a), func_1(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(var_0, true, false, var_0), vec4<bool>(true, var_0, false, true)))).c.x, _wgslsmith_dot_vec2_i32(global3.yw, u_input.d.yx)), 1u, vec3<u32>(_wgslsmith_add_u32(global2.e.x, select(46894u | u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.e.x, global2.d, u_input.e.x), vec4<u32>(74748u, u_input.e.x, global2.d, global2.e.x)), !var_0)), max(select(u_input.c, 0u, true), 4643u), u_input.e.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(604f)), global2.b, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i << (global2.d % 32u), 22244i, -2147483647i), ~global3.ywx), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(min(23048u, 4294967295u)), 32347u, _wgslsmith_add_u32(global2.d, 1u)), min(abs(vec3<u32>(global2.e.x, 9883u, 82887u)), vec3<u32>(~global2.e.x, ~10227u, global2.d))), vec3<u32>(global2.e.x, 32181u, global2.d));
    global1 = array<Struct_2, 5>();
    global4 = array<Struct_2, 9>();
    var var_2 = func_1(vec4<bool>(false, var_0, any(!vec2<bool>(var_0, false)), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(-1i ^ ~(~_wgslsmith_sub_i32(global3.x, -2147483647i)), 2380f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a - var_1.a))))), -889f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_2(global2.a, func_2(global2.a, Struct_1(global2.a, var_2.b, u_input.d, var_2.d, global2.e))).a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a), global2.a)))))));
}

