struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec4<i32>(-1i, 0i, 9565i, 0i)), 112f), Struct_3(Struct_2(vec4<i32>(36717i, -1i, 2147483647i, 1i)), -1000f), Struct_3(Struct_2(vec4<i32>(23297i, -30676i, 0i, -12748i)), -2468f), Struct_3(Struct_2(vec4<i32>(1i, 30766i, 24144i, 8098i)), -1201f), Struct_3(Struct_2(vec4<i32>(15301i, -45655i, -1i, 0i)), -1248f), Struct_3(Struct_2(vec4<i32>(2147483647i, -13716i, i32(-2147483648), -1i)), 134f), Struct_3(Struct_2(vec4<i32>(2147483647i, 0i, -5587i, -39236i)), 1000f), Struct_3(Struct_2(vec4<i32>(2147483647i, i32(-2147483648), 0i, -44134i)), 461f), Struct_3(Struct_2(vec4<i32>(-39456i, -44634i, 64954i, 55813i)), -1000f), Struct_3(Struct_2(vec4<i32>(-36738i, 84430i, -77711i, 2147483647i)), 1019f), Struct_3(Struct_2(vec4<i32>(57291i, -37828i, -5178i, i32(-2147483648))), -1774f), Struct_3(Struct_2(vec4<i32>(1i, -18353i, 23915i, 37237i)), -442f), Struct_3(Struct_2(vec4<i32>(-37065i, 33795i, 91038i, 32678i)), -696f), Struct_3(Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i)), 1000f), Struct_3(Struct_2(vec4<i32>(4294i, -40707i, -37760i, 1i)), 681f), Struct_3(Struct_2(vec4<i32>(19680i, 92285i, 5411i, 0i)), -1473f), Struct_3(Struct_2(vec4<i32>(-20465i, -11002i, 0i, 15370i)), 725f), Struct_3(Struct_2(vec4<i32>(-8925i, 25750i, 18738i, 46279i)), -875f), Struct_3(Struct_2(vec4<i32>(-7228i, -7203i, -12515i, -6365i)), 108f), Struct_3(Struct_2(vec4<i32>(-95085i, 0i, 1i, i32(-2147483648))), 1025f), Struct_3(Struct_2(vec4<i32>(10512i, i32(-2147483648), 15297i, 0i)), 1000f));

var<private> global1: vec4<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> vec4<bool> {
    global1 = select(select(select(arg_1.b, vec4<bool>(global1.x, true, any(vec3<bool>(true, true, false)), true), false), !select(vec4<bool>(arg_2, true, global1.x, arg_1.b.x), arg_1.b, vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_2)), arg_1.b.x), !vec4<bool>(any(arg_1.b), !(global1.x != global1.x), all(select(vec3<bool>(arg_2, arg_1.b.x, true), arg_1.b.xzx, global1.x)), any(select(arg_1.b.xw, arg_1.b.yz, arg_1.b.x))), !((select(true, arg_1.b.x, false) & false) & all(vec4<bool>(false, arg_1.b.x, false, arg_1.b.x))));
    global0 = array<Struct_3, 21>();
    let var_0 = any(!select(vec2<bool>(arg_0.x <= -50442i, all(arg_1.b)), vec2<bool>(global1.x, any(vec4<bool>(arg_1.b.x, true, false, true))), select(global1.zy, arg_1.b.xz, select(global1.zw, vec2<bool>(false, arg_1.b.x), arg_2))));
    let var_1 = arg_1;
    global0 = array<Struct_3, 21>();
    return select(var_1.b, var_1.b, var_1.b);
}

fn func_2() -> Struct_2 {
    let var_0 = 4294967295u;
    global0 = array<Struct_3, 21>();
    global1 = select(func_3(vec4<i32>(u_input.b, u_input.d.x, u_input.b, ~28172i), Struct_1(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i, 27782i, u_input.b, u_input.d.x), vec4<i32>(2147483647i, u_input.b, u_input.d.x, u_input.d.x), true), firstTrailingBit(vec4<i32>(u_input.d.x, 0i, u_input.b, 1i))), select(!vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true), !vec4<bool>(true, global1.x, global1.x, false)), vec2<f32>(-1888f, _wgslsmith_f_op_f32(select(-416f, 1250f, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-339f, -1000f, -1110f))), ~u_input.d.x), false), vec4<bool>(true, true, false, (-2147483647i & u_input.b) <= -_wgslsmith_sub_i32(-34067i, u_input.d.x)), all(vec4<bool>(true, all(vec2<bool>(false, true)), false, all(!global1.yxz))));
    var var_1 = !vec4<bool>(((13994u < u_input.a) && (16793i <= u_input.d.x)) && all(global1.zy), global1.x, !(_wgslsmith_add_i32(u_input.d.x, -28695i) > 6657i), global1.x & global1.x);
    var var_2 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.b, u_input.b), vec3<i32>(28868i, 0i, u_input.d.x), u_input.d), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -2447i, u_input.b), vec3<i32>(u_input.d.x, -286i, u_input.d.x), vec3<i32>(u_input.d.x, -2147483647i, 0i)), vec3<i32>(u_input.d.x, 2147483647i, -689i)), _wgslsmith_add_vec3_i32(select(u_input.d, u_input.d, vec3<bool>(var_1.x, global1.x, global1.x)), ~vec3<i32>(-33082i, u_input.d.x, u_input.d.x))), vec3<i32>(u_input.b, 1i, u_input.b));
    return Struct_2(vec4<i32>(1i, 39163i, ~u_input.b, 2147483647i));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    global1 = vec4<bool>(false, global1.x, firstTrailingBit(countOneBits(~arg_0.a.x)) > ~(-1i), !all(!arg_0.b.yyw));
    let var_0 = arg_1;
    let var_1 = func_2();
    global0 = array<Struct_3, 21>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), 1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1266f - 103f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(630f, arg_0.c.x))))), _wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.d.x, -116f), 1535f)) + _wgslsmith_f_op_f32(-1383f - _wgslsmith_f_op_f32(max(arg_0.c.x, 601f))))));
    return arg_0.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -234f;
    var var_1 = firstTrailingBit(~firstTrailingBit(~(0u | u_input.c.x)));
    var var_2 = Struct_1(vec4<i32>(arg_0.e, ~1i, arg_0.e, u_input.d.x), !(!(!vec4<bool>(global1.x, true, arg_0.b.x, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(802f, -967f)), _wgslsmith_f_op_f32(sign(arg_0.c.x)))))), _wgslsmith_f_op_vec3_f32(abs(arg_0.d)), _wgslsmith_div_i32(_wgslsmith_div_i32(min(arg_0.e, arg_0.e), ~arg_0.a.x), _wgslsmith_sub_i32(arg_0.e, arg_0.e)) & _wgslsmith_mod_i32(func_1(Struct_1(vec4<i32>(-2948i, arg_0.e, 44088i, arg_0.e), vec4<bool>(true, global1.x, true, true), arg_0.c, arg_0.d, 2147483647i), u_input.c.x).x >> (1u % 32u), -1i));
    let var_3 = func_3(-firstTrailingBit(func_2().a), Struct_1(var_2.a, select(!func_3(vec4<i32>(var_2.e, arg_0.a.x, var_2.e, -105401i), Struct_1(arg_0.a, var_2.b, var_2.d.zz, arg_0.d, u_input.b), var_2.b.x), !var_2.b, var_2.b.x), arg_0.c, arg_0.d, 12666i), true);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - -2290f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(726f, 446f)))))), 604f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(-(func_1(Struct_1(vec4<i32>(-199i, u_input.b, 2588i, -2147483647i), vec4<bool>(false, global1.x, false, global1.x), vec2<f32>(851f, -264f), vec3<f32>(-2686f, -1626f, -285f), u_input.b), u_input.c.x) ^ abs(vec4<i32>(u_input.b, u_input.b, 3286i, u_input.d.x))), !select(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(true, true, global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2255f, -1036f), vec2<f32>(235f, 1370f), false))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, -253f, -1000f)), vec3<f32>(375f, 334f, 894f)))), ~(i32(-1i) * -25334i)));
    global1 = var_0.b;
    global0 = array<Struct_3, 21>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1356f, var_0.d.x, var_0.d.x, var_0.d.x))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(207f, _wgslsmith_f_op_f32(-221f - var_0.d.x), _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(abs(var_0.c.x))))))));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-772f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1463f))))));
    var var_4 = ~(~vec3<i32>(-_wgslsmith_sub_i32(22810i, var_2.a.x), -577i << (1u % 32u), var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yz, vec4<f32>(_wgslsmith_f_op_f32(-1261f + 1126f), 377f, 553f, -1862f), func_1(func_4(Struct_1(vec4<i32>(var_0.e, var_4.x, var_0.e, 0i), vec4<bool>(false, var_0.b.x, global1.x, global1.x), var_1.zy, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.x, 114f, 354f), var_0.d), ~15373i)), _wgslsmith_dot_vec2_u32(~u_input.c.zw, vec2<u32>(u_input.a, u_input.c.x)) ^ (u_input.a | 1u)).x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(var_1.x - var_3))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 384f)) * var_0.c.x)))));
}

