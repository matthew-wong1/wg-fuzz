struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec3<i32>(-30284i, 0i, 930i)), Struct_2(vec3<i32>(-1i, 59781i, -21532i)), Struct_2(vec3<i32>(-49977i, 39407i, -36826i)), Struct_2(vec3<i32>(2147483647i, 0i, -1i)), Struct_2(vec3<i32>(2147483647i, 1i, 25517i)), Struct_2(vec3<i32>(1i, -1i, 1i)), Struct_2(vec3<i32>(1i, -1i, 2147483647i)), Struct_2(vec3<i32>(-2782i, 1i, -54278i)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_2(vec3<i32>(1i, -11243i, 2147483647i)), Struct_2(vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_2(vec3<i32>(2147483647i, 1i, -65860i)), Struct_2(vec3<i32>(1i, -29081i, 0i)), Struct_2(vec3<i32>(-46834i, -9765i, 2147483647i)), Struct_2(vec3<i32>(-1700i, 17444i, -11808i)), Struct_2(vec3<i32>(-1i, 84758i, 0i)), Struct_2(vec3<i32>(-57694i, -16117i, 0i)), Struct_2(vec3<i32>(73255i, i32(-2147483648), -1i)), Struct_2(vec3<i32>(19884i, i32(-2147483648), i32(-2147483648))), Struct_2(vec3<i32>(0i, -60969i, 2147483647i)), Struct_2(vec3<i32>(-1i, 1i, -1i)), Struct_2(vec3<i32>(15075i, 0i, 0i)), Struct_2(vec3<i32>(-1014i, i32(-2147483648), 0i)), Struct_2(vec3<i32>(13675i, 1i, -5565i)), Struct_2(vec3<i32>(54516i, i32(-2147483648), i32(-2147483648))), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 1i)), Struct_2(vec3<i32>(-41742i, 4548i, 30773i)), Struct_2(vec3<i32>(1i, -1i, -10932i)), Struct_2(vec3<i32>(-21885i, -28242i, 1i)), Struct_2(vec3<i32>(-1i, 2147483647i, -23665i)), Struct_2(vec3<i32>(-64682i, -12432i, 38686i)), Struct_2(vec3<i32>(2147483647i, 2147483647i, -17091i)));

var<private> global1: array<i32, 32> = array<i32, 32>(-1i, -1i, -9281i, 0i, -15723i, 20115i, -6229i, -54892i, -1i, 0i, 2147483647i, 13469i, -16625i, -11221i, 2147483647i, i32(-2147483648), -1303i, -10013i, 1i, 28751i, 0i, -1i, -10391i, -1i, 1i, -20637i, 2147483647i, 70690i, 32420i, -17959i, 1i, i32(-2147483648));

var<private> global2: i32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 32>();
    var var_0 = 0u;
    global2 = ~u_input.b.x;
    global1 = array<i32, 32>();
    var_0 = u_input.a;
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1737f, -284f)), -719f))), -818f, -countOneBits(u_input.b));
}

fn func_1() -> f32 {
    var var_0 = (_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.b.x, -4791i)) <= u_input.b.x) == any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true));
    let var_1 = func_2(2147483647i, Struct_2(u_input.b));
    global0 = array<Struct_2, 32>();
    global1 = array<i32, 32>();
    global0 = array<Struct_2, 32>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f - 2260f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.c - var_1.b.x))))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> vec3<f32> {
    let var_0 = Struct_1(false, arg_3.c, _wgslsmith_f_op_f32(trunc(-512f)), u_input.b);
    global2 = _wgslsmith_mod_i32(_wgslsmith_div_i32(select(52384i, _wgslsmith_dot_vec3_i32(select(u_input.b, var_0.d, var_0.a), vec3<i32>(u_input.b.x, -32993i, global1[_wgslsmith_index_u32(1u, 32u)])), true), 2147483647i), ~var_0.d.x);
    var var_1 = arg_3.c.x;
    global1 = array<i32, 32>();
    var var_2 = select(!select(vec4<bool>(arg_1, arg_2, any(vec3<bool>(var_0.a, true, arg_1)), any(vec4<bool>(true, true, false, arg_1))), !(!vec4<bool>(false, var_0.a, false, false)), (61669u > u_input.c) & all(vec4<bool>(arg_1, arg_1, true, arg_1))), vec4<bool>(false, false, select(arg_2, false, all(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, var_0.a, true, var_0.a), arg_2))), 318f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-917f, arg_3.c.x)), _wgslsmith_f_op_f32(max(239f, var_0.c))))), select(!select(select(vec4<bool>(false, var_0.a, arg_1, arg_1), vec4<bool>(arg_2, var_0.a, false, true), vec4<bool>(var_0.a, arg_2, arg_1, var_0.a)), !vec4<bool>(arg_2, arg_2, var_0.a, false), true), vec4<bool>(true, !(arg_0.a.x != u_input.b.x), arg_2, any(select(vec2<bool>(var_0.a, arg_1), vec2<bool>(var_0.a, false), arg_2))), !(!arg_2)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 520f, var_0.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c.x, arg_3.c.x, var_0.c)), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.c.x, -365f, -389f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, var_0.b.x, 723f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(1420f, arg_3.c.x, var_0.c), vec3<f32>(arg_3.a, var_0.c, var_0.c)), vec3<f32>(262f, var_0.c, -846f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -569f, -1163f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(_wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1213f, 1218f)))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-300f, -1000f)), -497f)), _wgslsmith_f_op_f32(trunc(-536f))), select(_wgslsmith_clamp_u32(1u, 1u, u_input.a), firstTrailingBit(~83600u), all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))) > min(max(~9368u, _wgslsmith_clamp_u32(u_input.c, 0u, 31143u)), ~78759u), true, max(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 72522u, 34036u, 4294967295u), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.c)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(68027u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.c, 4294967295u), false), ~vec3<u32>(4294967295u, u_input.a, 0u))) > u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(func_1()), -239f))));
    global1 = array<i32, 32>();
    var_1 = _wgslsmith_f_op_vec3_f32(func_3(Struct_3(abs(u_input.b.yy)), false, !(-2513f >= var_1.x), Struct_5(1f, 6099i, var_1.xy, Struct_3(-(vec2<i32>(2147483647i, -1i) ^ vec2<i32>(u_input.b.x, u_input.b.x))))));
    let var_2 = Struct_3(func_2(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) | -(1i ^ global1[_wgslsmith_index_u32(45295u, 32u)]), Struct_2(-countOneBits(vec3<i32>(-14768i, u_input.b.x, u_input.b.x)))).d.zy);
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, 72030u), ~15334u, var_3)), var_1.x);
}

