struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(true, vec2<u32>(35747u, 0u), vec2<bool>(true, true), vec4<i32>(48995i, 16417i, 2147483647i, 0i), 52981u), Struct_1(false, vec2<u32>(1u, 37340u), vec2<bool>(true, false), vec4<i32>(-8841i, -36934i, i32(-2147483648), 0i), 4294967295u), Struct_1(false, vec2<u32>(15625u, 1u), vec2<bool>(true, false), vec4<i32>(-107694i, -29677i, 37372i, i32(-2147483648)), 1u), 64321u), Struct_2(Struct_1(true, vec2<u32>(1u, 1u), vec2<bool>(true, false), vec4<i32>(2147483647i, 41947i, 2147483647i, 2147483647i), 18579u), Struct_1(false, vec2<u32>(1u, 0u), vec2<bool>(false, false), vec4<i32>(-9857i, -1i, i32(-2147483648), 2147483647i), 1u), Struct_1(false, vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), vec4<i32>(0i, 1i, 0i, -1i), 1u), 726u), Struct_2(Struct_1(false, vec2<u32>(1u, 0u), vec2<bool>(false, true), vec4<i32>(2147483647i, -43309i, 0i, -25698i), 1u), Struct_1(true, vec2<u32>(42490u, 40455u), vec2<bool>(false, true), vec4<i32>(19693i, 0i, 1i, -16676i), 6866u), Struct_1(false, vec2<u32>(0u, 24674u), vec2<bool>(true, false), vec4<i32>(-895i, -42500i, -9206i, 1i), 47608u), 50500u), Struct_2(Struct_1(true, vec2<u32>(4294967295u, 10985u), vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -1i, 0i, -1i), 1u), Struct_1(true, vec2<u32>(4294967295u, 58595u), vec2<bool>(false, true), vec4<i32>(-61802i, 0i, 1i, i32(-2147483648)), 9381u), Struct_1(true, vec2<u32>(1u, 4294967295u), vec2<bool>(true, true), vec4<i32>(0i, 36578i, 6296i, -1i), 38495u), 0u), Struct_2(Struct_1(false, vec2<u32>(50442u, 0u), vec2<bool>(true, true), vec4<i32>(2147483647i, -35036i, -1i, 1i), 4294967295u), Struct_1(true, vec2<u32>(15748u, 63507u), vec2<bool>(true, false), vec4<i32>(59890i, -1i, 16449i, 0i), 0u), Struct_1(true, vec2<u32>(1u, 4294967295u), vec2<bool>(true, false), vec4<i32>(18179i, 6556i, i32(-2147483648), -29115i), 8516u), 0u));

var<private> global1: array<vec4<f32>, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_2, 5>();
    var var_0 = Struct_1(any(select(!vec3<bool>(arg_2.a.a, false, true), arg_1.zzx, vec3<bool>(arg_0.x >= arg_2.d, arg_1.x, true))), max(vec2<u32>(arg_2.c.e, 65648u << (1u % 32u)) & (vec2<u32>(arg_0.x, 54861u) | ~vec2<u32>(0u, 31603u)), _wgslsmith_div_vec2_u32(arg_2.a.b, ~vec2<u32>(u_input.e, arg_0.x))), arg_2.a.c, vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, abs(vec2<i32>(0i, arg_2.a.d.x))), ~(u_input.d | ~arg_2.c.d.x), select(u_input.c.x, ~2147483647i << (firstTrailingBit(4294967295u) % 32u), all(select(vec2<bool>(true, arg_2.b.a), vec2<bool>(false, arg_1.x), arg_1.x))), 14679i), arg_0.x);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(560f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) + _wgslsmith_f_op_f32(1746f - 578f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f)))) * _wgslsmith_div_f32(716f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1450f - 634f))))));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = vec2<i32>(arg_0, firstLeadingBit(~(-13936i)));
    global1 = array<vec4<f32>, 8>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-905f, _wgslsmith_f_op_f32(-749f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-785f)), 803f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(abs(vec3<u32>(10356u, 17700u, 81754u)), vec4<bool>(true, true, true, true), Struct_2(Struct_1(true, vec2<u32>(u_input.b, 1u), vec2<bool>(false, false), vec4<i32>(-12998i, -10153i, var_0.x, var_0.x), u_input.e), Struct_1(true, vec2<u32>(u_input.b, 1u), vec2<bool>(false, true), vec4<i32>(arg_0, var_0.x, var_0.x, -1i), u_input.e), Struct_1(false, vec2<u32>(50215u, 13131u), vec2<bool>(true, true), vec4<i32>(arg_0, 25765i, var_0.x, 2147483647i), u_input.b), u_input.e)))))));
    var_0 = u_input.c;
    return (u_input.e | (1u ^ ~u_input.b)) << (~(~(~_wgslsmith_clamp_u32(u_input.b, 101652u, u_input.e))) % 32u);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    global1 = array<vec4<f32>, 8>();
    let var_0 = select(34174u, arg_0 ^ ~(~arg_1.b.x), true) ^ func_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2431i, -2147483647i, i32(-1i) * -22242i), reverseBits(-48657i >> (arg_1.e % 32u))));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(abs(var_0)), 5u)];
    global1 = array<vec4<f32>, 8>();
    let var_2 = var_1.c.c.x;
    return !(!(select(false, arg_1.a & var_1.a.c.x, arg_1.c.x) && any(select(vec4<bool>(arg_1.a, var_1.b.c.x, var_1.b.c.x, arg_1.c.x), vec4<bool>(var_1.a.c.x, true, true, var_1.a.a), vec4<bool>(arg_1.c.x, true, var_1.c.c.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20747i;
    var_0 = -28915i;
    let var_1 = vec4<bool>(false, false, false || func_1(u_input.e, Struct_1(all(vec3<bool>(true, true, false)), firstTrailingBit(vec2<u32>(u_input.e, 1u)), select(vec2<bool>(false, false), vec2<bool>(false, true), false), -vec4<i32>(-40804i, 11445i, u_input.c.x, u_input.a), _wgslsmith_div_u32(u_input.b, u_input.b)), select(abs(vec3<i32>(29155i, u_input.a, 1i)), reverseBits(vec3<i32>(-2147483647i, u_input.d, u_input.d)), vec3<bool>(true, false, false))), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))));
    var var_2 = global0[_wgslsmith_index_u32(countOneBits(38026u), 5u)];
    var var_3 = vec4<i32>(u_input.a >> (_wgslsmith_sub_u32(~var_2.c.e, var_2.d) % 32u), 0i, 1i, 67349i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(803f, 1000f, _wgslsmith_f_op_f32(-2051f - _wgslsmith_div_f32(468f, 2399f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-149f * -1765f), 1f)) * _wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.b, 8u)] - _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_2.b.b.x, 8u)]))), abs(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(21760u, 0u, u_input.e), vec3<u32>(var_2.b.b.x, 60685u, var_2.c.b.x)))), vec3<u32>(~(~firstLeadingBit(var_2.b.b.x)), _wgslsmith_mult_u32(~(~var_2.d), 4294967295u), u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1381f, -1780f, -501f)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.b.x, var_2.b.b.x, 0u), vec4<u32>(0u, 4294967295u, var_2.a.b.x, u_input.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(31221u, 34596u, 0u), vec3<u32>(u_input.e, var_2.d, 59564u)) ^ 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.a.b, vec2<u32>(u_input.b, u_input.e)), reverseBits(var_2.a.b)), _wgslsmith_div_u32(var_2.b.e, 50064u) ^ ~4294967295u), select(vec4<u32>(29477u, var_2.d, 1u, _wgslsmith_div_u32(var_2.d, var_2.c.b.x)), max(vec4<u32>(var_2.a.b.x, var_2.d, 10678u, var_2.d), vec4<u32>(var_2.c.e, 15195u, var_2.c.e, 0u)), (false & var_2.a.a) | true)), 8u)]);
}

