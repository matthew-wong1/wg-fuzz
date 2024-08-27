struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, vec2<i32>(-1i, 0i), vec2<bool>(false, false)), Struct_1(true, vec2<i32>(0i, 2147483647i), vec2<bool>(false, true)), Struct_1(true, vec2<i32>(-16161i, i32(-2147483648)), vec2<bool>(false, true)), Struct_1(false, vec2<i32>(4372i, -1i), vec2<bool>(true, true)), Struct_1(false, vec2<i32>(29599i, -25176i), vec2<bool>(false, false)));

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false)), false, true, Struct_1(false, vec2<i32>(0i, 13578i), vec2<bool>(true, false))), Struct_2(Struct_1(false, vec2<i32>(0i, i32(-2147483648)), vec2<bool>(false, true)), true, false, Struct_1(true, vec2<i32>(15517i, -57119i), vec2<bool>(false, true))), Struct_2(Struct_1(true, vec2<i32>(-4051i, -1i), vec2<bool>(true, false)), false, true, Struct_1(true, vec2<i32>(-5020i, -9220i), vec2<bool>(true, false))), Struct_2(Struct_1(false, vec2<i32>(29145i, 0i), vec2<bool>(false, false)), false, false, Struct_1(false, vec2<i32>(i32(-2147483648), 0i), vec2<bool>(true, true))), Struct_2(Struct_1(false, vec2<i32>(0i, 3416i), vec2<bool>(false, false)), false, true, Struct_1(true, vec2<i32>(8538i, -60506i), vec2<bool>(false, false))), Struct_2(Struct_1(true, vec2<i32>(27423i, -13658i), vec2<bool>(true, true)), false, true, Struct_1(false, vec2<i32>(52213i, 0i), vec2<bool>(true, false))), Struct_2(Struct_1(false, vec2<i32>(-40298i, -42588i), vec2<bool>(true, false)), true, true, Struct_1(false, vec2<i32>(i32(-2147483648), 51078i), vec2<bool>(false, true))), Struct_2(Struct_1(false, vec2<i32>(2416i, 28320i), vec2<bool>(true, false)), true, true, Struct_1(true, vec2<i32>(35724i, -1i), vec2<bool>(false, true))), Struct_2(Struct_1(false, vec2<i32>(-10130i, -26074i), vec2<bool>(true, true)), true, true, Struct_1(false, vec2<i32>(-10872i, 20805i), vec2<bool>(false, false))), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), -17446i), vec2<bool>(true, false)), false, false, Struct_1(false, vec2<i32>(17213i, -2183i), vec2<bool>(true, false))), Struct_2(Struct_1(true, vec2<i32>(1i, -29689i), vec2<bool>(false, false)), true, false, Struct_1(true, vec2<i32>(43696i, i32(-2147483648)), vec2<bool>(false, false))), Struct_2(Struct_1(false, vec2<i32>(-32334i, 28892i), vec2<bool>(false, true)), true, true, Struct_1(true, vec2<i32>(0i, 0i), vec2<bool>(true, true))), Struct_2(Struct_1(true, vec2<i32>(-1i, 2911i), vec2<bool>(false, false)), false, true, Struct_1(true, vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, true))), Struct_2(Struct_1(true, vec2<i32>(-1i, -1i), vec2<bool>(false, false)), true, true, Struct_1(true, vec2<i32>(2147483647i, 1149i), vec2<bool>(false, true))), Struct_2(Struct_1(false, vec2<i32>(-3254i, -1i), vec2<bool>(false, true)), true, false, Struct_1(true, vec2<i32>(-2070i, 0i), vec2<bool>(true, false))), Struct_2(Struct_1(true, vec2<i32>(2147483647i, 3525i), vec2<bool>(false, true)), false, true, Struct_1(true, vec2<i32>(40930i, 1i), vec2<bool>(false, false))), Struct_2(Struct_1(true, vec2<i32>(2147483647i, 1i), vec2<bool>(true, true)), false, false, Struct_1(false, vec2<i32>(4352i, 0i), vec2<bool>(false, true))), Struct_2(Struct_1(true, vec2<i32>(-21117i, -22579i), vec2<bool>(false, true)), true, false, Struct_1(false, vec2<i32>(5149i, 80649i), vec2<bool>(true, false))), Struct_2(Struct_1(true, vec2<i32>(34219i, -8604i), vec2<bool>(true, true)), false, false, Struct_1(false, vec2<i32>(1i, -76050i), vec2<bool>(true, false))), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 21210i), vec2<bool>(false, false)), false, false, Struct_1(false, vec2<i32>(-22116i, 1i), vec2<bool>(false, false))), Struct_2(Struct_1(true, vec2<i32>(i32(-2147483648), 5676i), vec2<bool>(true, false)), false, true, Struct_1(false, vec2<i32>(-1i, -47298i), vec2<bool>(false, true))), Struct_2(Struct_1(false, vec2<i32>(2147483647i, -54940i), vec2<bool>(false, false)), false, false, Struct_1(false, vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, true))), Struct_2(Struct_1(true, vec2<i32>(34278i, 34324i), vec2<bool>(true, true)), true, true, Struct_1(true, vec2<i32>(10960i, 1i), vec2<bool>(true, true))), Struct_2(Struct_1(true, vec2<i32>(297i, -75950i), vec2<bool>(false, false)), true, false, Struct_1(false, vec2<i32>(0i, 2147483647i), vec2<bool>(false, true))), Struct_2(Struct_1(true, vec2<i32>(0i, 0i), vec2<bool>(false, false)), false, true, Struct_1(false, vec2<i32>(i32(-2147483648), 0i), vec2<bool>(false, true))), Struct_2(Struct_1(false, vec2<i32>(i32(-2147483648), -24876i), vec2<bool>(true, true)), false, true, Struct_1(true, vec2<i32>(1818i, -32199i), vec2<bool>(false, false))), Struct_2(Struct_1(false, vec2<i32>(-1i, 1i), vec2<bool>(true, false)), true, true, Struct_1(true, vec2<i32>(-63598i, 53640i), vec2<bool>(false, false))), Struct_2(Struct_1(true, vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(false, false)), true, false, Struct_1(false, vec2<i32>(i32(-2147483648), -61396i), vec2<bool>(false, false))));

var<private> global2: array<Struct_1, 21>;

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_2, 28>();
    return _wgslsmith_mod_i32(min(-55966i, (arg_1.b.x & u_input.a.x) << (4294967295u % 32u)), u_input.a.x);
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_0 = global2[_wgslsmith_index_u32(12504u, 21u)];
    var var_1 = (_wgslsmith_mod_i32(1i, ~func_3(vec3<f32>(1000f, -329f, 996f), global0[_wgslsmith_index_u32(356u, 5u)])) >> (1u % 32u)) | -2147483647i;
    let var_2 = Struct_1(var_0.c.x, -u_input.a.zy << (abs(~(~vec2<u32>(4294967295u, 11808u))) % vec2<u32>(32u)), var_0.c);
    return Struct_2(Struct_1(all(select(select(vec3<bool>(var_0.c.x, false, var_0.a), vec3<bool>(false, false, false), true), select(vec3<bool>(true, var_2.a, var_0.c.x), vec3<bool>(false, var_2.a, var_2.a), var_2.a), true)), var_2.b, select(vec2<bool>(any(var_0.c), false), !var_2.c, !select(var_0.c, var_0.c, var_2.c))), _wgslsmith_f_op_f32(1069f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(385f)))) != _wgslsmith_f_op_f32(-666f + _wgslsmith_f_op_f32(min(120f, -1092f))), false, Struct_1(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, var_2.b.x, var_0.b.x), var_0.b.x) <= _wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, 1i), vec2<i32>(-1i, 1i)), vec2<i32>(var_2.b.x, -1i)), var_0.b, vec2<bool>(true, var_0.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global2 = array<Struct_1, 21>();
    var var_0 = Struct_2(arg_1.a, !any(vec2<bool>(true, true)), true, arg_0.d);
    let var_1 = reverseBits(reverseBits(0u)) & max(firstTrailingBit(1u), ~firstLeadingBit(arg_2));
    global3 = false;
    let var_2 = all(vec4<bool>(all(!arg_0.d.c), any(select(!vec4<bool>(arg_1.d.c.x, false, arg_1.c, arg_0.c), select(vec4<bool>(false, true, var_0.a.c.x, arg_1.c), vec4<bool>(arg_1.a.a, arg_1.a.a, arg_0.a.c.x, arg_0.c), vec4<bool>(false, true, true, var_0.c)), true)), true, (firstTrailingBit(-2147483647i) != ~(-1i)) & arg_0.c));
    return func_2().d;
}

fn func_1() -> vec2<f32> {
    var var_0 = func_4(func_2(), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), countOneBits(firstLeadingBit(vec2<u32>(35787u, 52u))))), 28u)], ~4294967295u);
    let var_1 = Struct_2(Struct_1(true, vec2<i32>(reverseBits(var_0.b.x), -8784i), func_2().a.c), var_0.a, any(vec2<bool>(true, true)), Struct_1(true, vec2<i32>(36153i, -28406i), var_0.c));
    global1 = array<Struct_2, 28>();
    var var_2 = func_2();
    global1 = array<Struct_2, 28>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1833f, -353f))), _wgslsmith_div_vec2_f32(vec2<f32>(1267f, 1396f), vec2<f32>(-753f, 688f)), false)) - vec2<f32>(_wgslsmith_f_op_f32(764f * -1179f), _wgslsmith_f_op_f32(131f * 426f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(4294967295u, ~(~_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, 54391u), max(4294967295u, 14281u))), 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 45356u, _wgslsmith_mult_u32(4294967295u, 0u)), vec3<u32>(~0u, _wgslsmith_mult_u32(17695u, 5055u), firstLeadingBit(90721u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1573f)) + _wgslsmith_f_op_f32(f32(-1f) * -237f)), _wgslsmith_f_op_f32(848f - _wgslsmith_f_op_f32(-1000f * -1697f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(func_1())))));
    let var_2 = func_2().d;
    global0 = array<Struct_1, 5>();
    global2 = array<Struct_1, 21>();
    global3 = var_2.c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_vec2_f32(func_1()).x, 1180f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, var_1.x, -532f))) - vec3<f32>(-470f, _wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(step(-1000f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(1868f * var_1.x), var_1.x))));
    var var_4 = global1[_wgslsmith_index_u32(max(41020u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, 0u, ~var_0.x), var_0.x)), 28u)];
    var_1 = _wgslsmith_f_op_vec2_f32(-var_3.zy);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(_wgslsmith_div_i32(~u_input.a.x, _wgslsmith_mod_i32(var_4.a.b.x, var_2.b.x)), -(~1i))));
}

