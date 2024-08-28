struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 5617i), vec4<i32>(65726i, -3486i, 2147483647i, -3657i), vec4<i32>(-15901i, 0i, 8870i, -1i), vec4<i32>(i32(-2147483648), 0i, 900i, 57842i), vec4<i32>(0i, 5405i, 1i, 61075i), vec4<i32>(2147483647i, 438i, -1050i, 1i), vec4<i32>(85797i, 0i, 0i, 0i), vec4<i32>(-16602i, 28762i, 0i, -36066i), vec4<i32>(2147483647i, 2147483647i, -24020i, 2147483647i), vec4<i32>(31727i, 2147483647i, 2900i, 5525i), vec4<i32>(2147483647i, 1i, -42554i, -12168i), vec4<i32>(72719i, -2889i, 12689i, 2147483647i), vec4<i32>(2147483647i, 1i, -32623i, 18600i), vec4<i32>(46669i, 15615i, -12835i, 8476i), vec4<i32>(73736i, 26034i, 18648i, -40741i), vec4<i32>(i32(-2147483648), -23596i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 1i, 1i, 0i), vec4<i32>(0i, 8626i, 89399i, 1i), vec4<i32>(0i, 2147483647i, -1i, -16985i), vec4<i32>(2440i, 1i, -1i, -38143i), vec4<i32>(-4899i, -14398i, 2147483647i, 6863i), vec4<i32>(289i, 35638i, 791i, -25048i), vec4<i32>(-1i, 15557i, 1i, 19496i), vec4<i32>(5884i, -25578i, 15630i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, 10587i, 24024i), vec4<i32>(20590i, 44028i, 40721i, 22957i), vec4<i32>(9020i, -19324i, i32(-2147483648), -15656i), vec4<i32>(55689i, 1i, 2147483647i, 0i), vec4<i32>(3216i, i32(-2147483648), -20703i, -35667i), vec4<i32>(51714i, 1i, 25701i, 1i));

var<private> global1: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 10791u, 12585u), vec3<u32>(0u, 65003u, 33158u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(22679u, 55333u, 4294967295u), vec3<u32>(39220u, 4294967295u, 0u), vec3<u32>(85658u, 4294967295u, 24373u), vec3<u32>(45329u, 46597u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(39692u, 4294967295u, 1u), vec3<u32>(75844u, 0u, 0u), vec3<u32>(4294967295u, 17351u, 23959u), vec3<u32>(1u, 4294967295u, 1880u), vec3<u32>(30555u, 1u, 4294967295u), vec3<u32>(13857u, 0u, 0u), vec3<u32>(0u, 4294967295u, 68995u), vec3<u32>(103933u, 1u, 4294967295u), vec3<u32>(4294967295u, 4428u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 35159u, 1u), vec3<u32>(19951u, 10697u, 0u), vec3<u32>(47798u, 1u, 45442u), vec3<u32>(134703u, 30781u, 16791u), vec3<u32>(57842u, 1u, 0u), vec3<u32>(4294967295u, 26025u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<bool> {
    var var_0 = i32(-1i) * -18279i;
    let var_1 = 1000f;
    let var_2 = _wgslsmith_f_op_f32(abs(-594f));
    var var_3 = vec2<bool>(all(vec3<bool>(_wgslsmith_add_u32(u_input.a.x, 49643u) <= ~41214u, false, false)), false);
    return !vec2<bool>(true, all(vec2<bool>(all(vec3<bool>(var_3.x, var_3.x, var_3.x)), var_3.x != var_3.x)));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1264f, 2245f, 1000f, 232f))), _wgslsmith_div_vec4_f32(vec4<f32>(372f, 223f, 218f, -445f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1791f, -373f, 1742f), vec4<f32>(-806f, 1931f, 1639f, -345f))), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true)))));
    return !select(select(vec2<bool>(true, var_0.x > 945f), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, false)), true), vec2<bool>(true, true), !select(func_3(), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 30>();
    let var_0 = ~abs(select(vec4<i32>(~arg_1.b, _wgslsmith_mod_i32(9674i, -2147483647i), ~arg_2.b, ~arg_2.b), arg_0.c, -297f <= _wgslsmith_f_op_f32(arg_0.d * -1000f)));
    let var_1 = select(!vec2<bool>(all(select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_0.a.a, arg_0.a.a, false), vec3<bool>(arg_2.a, arg_1.a, arg_0.a.a))), all(vec2<bool>(true, false))), select(vec2<bool>(all(vec3<bool>(true, arg_0.a.a, arg_2.a)), !(1852i == arg_2.b)), select(vec2<bool>(arg_0.a.a || arg_1.a, !arg_2.a), select(vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(true, arg_1.a), vec2<bool>(arg_2.a, arg_1.a), vec2<bool>(arg_0.a.a, arg_0.a.a)), true), arg_2.a), !func_2()), arg_0.a.a);
    global0 = array<vec4<i32>, 30>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x * -1024f), -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(338f, -214f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.b.x)) * 1465f)))), arg_0.d);
    return arg_0.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2424f * arg_2.d));
    var var_1 = vec3<bool>((-983f >= arg_2.d) & true, !(abs(u_input.b) >= ~(~13830u)), !arg_2.a.a);
    global0 = array<vec4<i32>, 30>();
    var var_2 = vec2<f32>(arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-226f - 1000f))) - _wgslsmith_f_op_f32(-arg_2.b.x)));
    global1 = array<vec3<u32>, 26>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(753f + -404f);
    var var_1 = Struct_1(!(func_4(vec2<i32>(-1i, -2147483647i), func_1(Struct_2(Struct_1(true, -14395i), vec2<f32>(-487f, -241f), vec4<i32>(-94952i, 82227i, -1i, -1i), -650f, global1[_wgslsmith_index_u32(50968u, 26u)]), Struct_1(false, 63854i), Struct_1(false, -18600i)), Struct_2(Struct_1(true, 23967i), vec2<f32>(2062f, 1192f), vec4<i32>(16249i, -43799i, 29317i, -2147483647i), -1804f, vec3<u32>(1u, 1u, 0u)), _wgslsmith_div_u32(0u, 1u)) & true), -_wgslsmith_mult_i32(1i, firstTrailingBit(~(-3120i))));
    let var_2 = Struct_2(Struct_1(all(!(!vec4<bool>(var_1.a, false, true, var_1.a))), firstTrailingBit(reverseBits(var_1.b) & var_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(156f, -1500f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, 1126f) - vec2<f32>(934f, -2080f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-245f, -906f) + vec2<f32>(-491f, -899f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1485f), vec2<f32>(805f, 421f)))))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(2135u, u_input.b, u_input.b, 0u), ~vec4<u32>(41076u, u_input.b, 79315u, u_input.a.x)), _wgslsmith_mult_u32(1u, 0u)), 30u)] | vec4<i32>(var_1.b, i32(-1i) * -var_1.b, -1i, var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1746f, _wgslsmith_f_op_f32(-185f + -1870f), var_1.a))), max(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], ~abs(firstTrailingBit(vec3<u32>(11884u, u_input.b, u_input.b)))));
    var_1 = func_1(var_2, func_1(var_2, Struct_1(!var_2.a.a, var_1.b), Struct_1(true, var_2.c.x)), Struct_1(var_2.a.a, 1i));
    var var_3 = (vec4<u32>(8848u, 4294967295u, _wgslsmith_div_u32(4294967295u, var_2.e.x), 70209u) | countOneBits(vec4<u32>(var_2.e.x & 4294967295u, _wgslsmith_add_u32(85949u, var_2.e.x), ~var_2.e.x, u_input.b))) >> ((_wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), vec4<u32>(var_2.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(27506u, 1u, 4294967295u), global1[_wgslsmith_index_u32(var_2.e.x, 26u)]), 0u, firstTrailingBit(var_2.e.x)), ~min(vec4<u32>(39548u, var_2.e.x, 4696u, u_input.b), vec4<u32>(var_2.e.x, u_input.a.x, u_input.a.x, var_2.e.x))) << (_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(20351u, var_2.e.x, u_input.b, u_input.b)), vec4<u32>(var_2.e.x, select(1u, var_2.e.x, var_2.a.a), abs(var_2.e.x), abs(4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_4 = _wgslsmith_f_op_f32(var_2.b.x * -207f);
    global1 = array<vec3<u32>, 26>();
    let var_5 = var_2.c.yx;
    var_0 = _wgslsmith_f_op_f32(ceil(-901f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) * _wgslsmith_f_op_f32(round(var_4))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_2.b.x, var_2.d)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_4, var_2.b.x, var_4, -1000f), vec4<f32>(var_4, 562f, var_4, var_2.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1786f, var_4, var_2.d, var_4))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, -357f, var_4, 806f), vec4<f32>(var_2.d, var_4, var_2.d, var_4), var_2.a.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, -199f, var_4)), false))))), var_2.a.b);
}

