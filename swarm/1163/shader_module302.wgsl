struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-36789i, i32(-2147483648));

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<f32>(1344f, -215f), false, Struct_1(5633u, false, vec3<i32>(-1i, -42436i, 28391i), vec4<bool>(true, false, true, false)), false), Struct_2(vec2<f32>(1248f, -507f), true, Struct_1(13143u, false, vec3<i32>(-3922i, 1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), true), Struct_2(vec2<f32>(107f, 1865f), false, Struct_1(0u, true, vec3<i32>(i32(-2147483648), 1i, -23755i), vec4<bool>(true, true, true, true)), false), Struct_2(vec2<f32>(204f, -228f), false, Struct_1(0u, false, vec3<i32>(9758i, 1i, 12897i), vec4<bool>(false, false, false, false)), false), Struct_2(vec2<f32>(953f, -595f), false, Struct_1(0u, true, vec3<i32>(2147483647i, -35843i, i32(-2147483648)), vec4<bool>(true, true, true, false)), false), Struct_2(vec2<f32>(-1502f, -1000f), false, Struct_1(109345u, false, vec3<i32>(-8975i, 1i, 0i), vec4<bool>(false, true, false, false)), true), Struct_2(vec2<f32>(236f, -1000f), false, Struct_1(1u, false, vec3<i32>(2147483647i, 59209i, 0i), vec4<bool>(true, false, true, true)), false), Struct_2(vec2<f32>(1450f, -898f), true, Struct_1(0u, true, vec3<i32>(1i, 47403i, -19181i), vec4<bool>(true, true, false, false)), true), Struct_2(vec2<f32>(708f, -2348f), false, Struct_1(12333u, true, vec3<i32>(1i, 1i, i32(-2147483648)), vec4<bool>(true, false, false, true)), false), Struct_2(vec2<f32>(1016f, 563f), true, Struct_1(4357u, true, vec3<i32>(27846i, 1i, -46506i), vec4<bool>(false, false, false, false)), true), Struct_2(vec2<f32>(1804f, -655f), false, Struct_1(18182u, false, vec3<i32>(-1i, 30420i, -2372i), vec4<bool>(false, false, false, true)), false), Struct_2(vec2<f32>(914f, -532f), true, Struct_1(4294967295u, false, vec3<i32>(-27948i, 1i, 9424i), vec4<bool>(true, true, false, false)), false), Struct_2(vec2<f32>(1000f, -783f), false, Struct_1(0u, false, vec3<i32>(-33085i, 0i, -1i), vec4<bool>(true, true, false, true)), true), Struct_2(vec2<f32>(-1599f, -1000f), false, Struct_1(47937u, false, vec3<i32>(22877i, -83236i, 45186i), vec4<bool>(false, true, true, true)), true), Struct_2(vec2<f32>(-733f, 905f), true, Struct_1(4294967295u, false, vec3<i32>(i32(-2147483648), 12415i, -58482i), vec4<bool>(false, false, true, true)), true));

var<private> global2: i32 = 25718i;

var<private> global3: array<Struct_3, 30>;

var<private> global4: Struct_3 = Struct_3(Struct_1(1u, true, vec3<i32>(-18848i, -1i, 25403i), vec4<bool>(false, false, false, false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = select(!(!(!select(vec2<bool>(arg_2.b, arg_2.b), arg_2.d.xz, arg_2.d.zx))), !vec2<bool>(!all(arg_0.c.d), false || any(vec4<bool>(false, true, arg_0.b, arg_0.b))), arg_2.d.wz);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2118f, 1691f, arg_0.a.x, 377f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, 802f, _wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -759f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, -775f, arg_0.a.x, arg_0.a.x), vec4<f32>(arg_0.a.x, -636f, -660f, -1980f), vec4<bool>(true, arg_2.b, false, false))) + vec4<f32>(arg_0.a.x, arg_0.a.x, -519f, 372f)))), arg_2.b)));
    let var_2 = !select(select(select(select(vec4<bool>(true, global4.a.b, arg_2.d.x, true), global4.a.d, arg_0.c.d), !arg_0.c.d, select(vec4<bool>(arg_2.b, var_0.x, arg_0.b, false), global4.a.d, var_0.x)), arg_0.c.d, arg_0.c.d), vec4<bool>(global4.a.b, false, !(arg_2.d.x | var_0.x), 4294967295u <= ~arg_1.x), any(select(arg_2.d, select(vec4<bool>(arg_2.b, var_0.x, var_0.x, false), arg_2.d, arg_0.c.d.x), vec4<bool>(true, false, arg_2.d.x, global4.a.d.x))));
    let var_3 = global3[_wgslsmith_index_u32(3095u, 30u)];
    global3 = array<Struct_3, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1016f)))) - var_1.x) * 1113f);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = ~vec4<u32>(9915u, 38965u, ~26697u, 0u) >> (vec4<u32>(~arg_0.a.a, 4294967295u, 1u, arg_2) % vec4<u32>(32u));
    global1 = array<Struct_2, 15>();
    global0 = array<i32, 2>();
    var var_1 = Struct_3(global4.a);
    global4 = Struct_3(Struct_1(var_1.a.a, global4.a.d.x, ~_wgslsmith_mod_vec3_i32(vec3<i32>(global4.a.c.x, var_1.a.c.x, -2147483647i), select(vec3<i32>(15374i, global0[_wgslsmith_index_u32(0u, 2u)], -1i), var_1.a.c, false)), select(var_1.a.d, vec4<bool>(any(vec3<bool>(global4.a.d.x, arg_0.a.d.x, false)), !arg_0.a.d.x, arg_0.a.b, true), (global4.a.b && false) || false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 15u)], vec2<u32>(4294967295u, u_input.b), var_1.a))), _wgslsmith_f_op_f32(round(963f)), var_1.a.d.x)))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> i32 {
    var var_0 = (4294967295u ^ ~_wgslsmith_div_u32(u_input.c.x >> (1u % 32u), 4294967295u)) >= ~u_input.c.x;
    let var_1 = global4.a;
    let var_2 = Struct_1(~(~select(abs(1u), arg_0, true)), all(select(var_1.d, select(!var_1.d, select(global4.a.d, global4.a.d, false), vec4<bool>(var_1.d.x, true, global4.a.d.x, global4.a.d.x)), !(!global4.a.d))), var_1.c, vec4<bool>(true, all(!(!global4.a.d.yxx)), true, !var_1.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x))), arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-677f + -580f), _wgslsmith_f_op_f32(select(-351f, 315f, false))))), _wgslsmith_f_op_f32(abs(arg_1.x))));
    global3 = array<Struct_3, 30>();
    return var_2.c.x;
}

fn func_1() -> Struct_2 {
    global2 = func_4(~u_input.c.x, vec4<f32>(-1435f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-939f)), _wgslsmith_f_op_f32(step(320f, 1575f)))) * -1447f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2(Struct_3(Struct_1(4294967295u, false, vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], -6265i, global0[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(false, true, true, global4.a.b))), _wgslsmith_dot_vec3_i32(global4.a.c, global4.a.c), ~4294967295u, ~u_input.a))), _wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(-1f))));
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(1108f)), _wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -935f)) * -1445f)), -1142f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(226f - -598f), 166f)), -246f)))));
    let var_1 = Struct_4(~_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 9943i, u_input.a, global0[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_add_vec4_i32(vec4<i32>(33016i, 2147483647i, -22521i, global0[_wgslsmith_index_u32(55732u, 2u)]), vec4<i32>(global4.a.c.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 2u)], -2147483647i)) & -vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], -2147483647i)), global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global4.a.a, global4.a.a, u_input.b), vec3<u32>(0u, 29728u, global4.a.a)), 49486u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global4.a.a, u_input.c.x, 7471u, 1u)), vec4<u32>(20866u, global4.a.a, 83619u, u_input.c.x)))), 30u)], global4.a);
    let var_2 = global4.a;
    global0 = array<i32, 2>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xw)), var_2.d.x, Struct_1(~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 14451u, 1u), vec4<u32>(u_input.c.x, var_2.a, u_input.c.x, u_input.c.x))), var_1.b.a.b, global4.a.c, var_2.d), !global4.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, -640f, var_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(floor(369f)), -729f, -733f, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))))));
    let var_2 = !all(!select(vec2<bool>(false, false), vec2<bool>(true, global4.a.d.x), var_0.c.d.x));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.b ^ 4294967295u, global4.a.a), vec3<u32>(65027u, _wgslsmith_div_u32(1u, 21598u), 21668u)), ((vec3<u32>(59077u, 65952u, var_0.c.a) & vec3<u32>(var_0.c.a, global4.a.a, global4.a.a)) & (vec3<u32>(u_input.b, global4.a.a, u_input.b) & vec3<u32>(7920u, var_0.c.a, var_0.c.a))) << (vec3<u32>(42105u, _wgslsmith_clamp_u32(4294967295u, 45573u, 0u), ~u_input.c.x) % vec3<u32>(32u))), ~1u & ~(~abs(u_input.b)), abs(~(u_input.c.x >> (4294967295u % 32u)) >> (global4.a.a % 32u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(var_0.c.a, 15u)], var_3.yy, global4.a)))))), var_0.d, global4.a, !(func_4(1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-802f, -243f, var_0.a.x, var_1.x)))) != -2147483647i));
    var var_4 = !(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-6022i, -1i, 19670i, 2273i), ~vec4<i32>(-49077i, var_0.c.c.x, 8619i, global4.a.c.x)) == global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 2u)]);
    var var_5 = vec4<i32>(var_0.c.c.x, 0i, var_0.c.c.x, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_add_i32(u_input.a, _wgslsmith_mult_i32(var_0.c.c.x, var_0.c.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(635f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f + var_0.a.x)))), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(23294i, -2147483647i, 15561i, 0i), vec4<i32>(0i, -14969i, u_input.a, var_5.x))), select(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_5.x, var_0.c.c.x, global0[_wgslsmith_index_u32(17960u, 2u)]), vec4<i32>(28598i, var_0.c.c.x, -2147483647i, 79939i)), vec4<i32>(2147483647i, -11514i, 11257i, u_input.a), var_0.c.d), ~vec4<i32>(global4.a.c.x, u_input.a, 7039i, -1i)) >> (~(~abs(vec4<u32>(global4.a.a, var_3.x, global4.a.a, var_0.c.a))) % vec4<u32>(32u)));
}

