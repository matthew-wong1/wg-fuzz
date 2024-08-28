struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(0u, vec4<i32>(i32(-2147483648), 0i, -10809i, 0i)), Struct_1(25368u, vec4<i32>(6868i, 1i, 2147483647i, 0i))), Struct_2(Struct_1(41264u, vec4<i32>(2147483647i, 1i, 1i, 1i)), Struct_1(92451u, vec4<i32>(1i, -5106i, 2147483647i, 1i))), Struct_2(Struct_1(1u, vec4<i32>(-29921i, -6133i, 6008i, -437i)), Struct_1(0u, vec4<i32>(-96809i, -322i, -28801i, 0i))), Struct_2(Struct_1(34930u, vec4<i32>(360i, 22037i, -14527i, -15056i)), Struct_1(103519u, vec4<i32>(1i, -1i, -1i, 2060i))), Struct_2(Struct_1(10751u, vec4<i32>(2147483647i, 14368i, i32(-2147483648), i32(-2147483648))), Struct_1(8325u, vec4<i32>(-6923i, 0i, 1i, 2147483647i))), Struct_2(Struct_1(21838u, vec4<i32>(0i, 2147483647i, 1i, -30225i)), Struct_1(50434u, vec4<i32>(2147483647i, i32(-2147483648), 1i, -70760i))), Struct_2(Struct_1(22295u, vec4<i32>(1i, -54520i, -22650i, -12931i)), Struct_1(0u, vec4<i32>(i32(-2147483648), -13291i, 2147483647i, 1i))), Struct_2(Struct_1(4294967295u, vec4<i32>(0i, -50387i, 0i, -45178i)), Struct_1(32582u, vec4<i32>(-16086i, 1i, 22248i, 37006i))), Struct_2(Struct_1(4294967295u, vec4<i32>(39488i, 2147483647i, -1i, 11623i)), Struct_1(1u, vec4<i32>(-56959i, -15678i, -18539i, -1i))), Struct_2(Struct_1(1u, vec4<i32>(18941i, 1i, 13946i, 1i)), Struct_1(19328u, vec4<i32>(-15984i, i32(-2147483648), 0i, 1i))), Struct_2(Struct_1(63876u, vec4<i32>(0i, 1i, 1i, -71156i)), Struct_1(56124u, vec4<i32>(17118i, -25359i, i32(-2147483648), 4929i))), Struct_2(Struct_1(13378u, vec4<i32>(-18258i, -41590i, -3999i, -6084i)), Struct_1(0u, vec4<i32>(-1i, -21939i, 12496i, 0i))), Struct_2(Struct_1(4294967295u, vec4<i32>(872i, i32(-2147483648), -39408i, 44091i)), Struct_1(4294967295u, vec4<i32>(-9551i, -46432i, -29778i, 0i))), Struct_2(Struct_1(20938u, vec4<i32>(1i, -21791i, -21821i, -3220i)), Struct_1(29912u, vec4<i32>(-7910i, -1i, 0i, -14590i))), Struct_2(Struct_1(4294967295u, vec4<i32>(-11862i, -23672i, 2147483647i, 42571i)), Struct_1(30816u, vec4<i32>(1i, 2147483647i, -1i, -1i))));

var<private> global1: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> bool {
    var var_0 = !any(!vec2<bool>(arg_2, false));
    var var_1 = !vec2<bool>((true & arg_2) & any(vec3<bool>(true, false, arg_2)), all(select(vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), any(vec4<bool>(false, arg_2, arg_2, arg_2)))));
    global0 = array<Struct_2, 15>();
    var var_2 = Struct_1(u_input.a, _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(0i, u_input.d.x), -1i, -2147483647i, arg_0.b.x)), vec4<i32>(select(arg_0.b.x, 13992i, arg_2), arg_0.b.x, 1i, -2147483647i) << (countOneBits(vec4<u32>(u_input.e, arg_0.a, arg_1, u_input.a) >> (vec4<u32>(4294967295u, u_input.a, arg_0.a, 28402u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = array<Struct_2, 15>();
    return !(u_input.b.x >= 0i);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-622f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * arg_1.x))))) + arg_1.x);
    var var_1 = select(vec4<bool>(func_3(Struct_1(3615u, -arg_2), u_input.a, false), !(any(vec3<bool>(false, false, false)) && select(true, false, false)), select(select(false, true, true), true, true && all(vec3<bool>(true, true, false))), !func_3(Struct_1(arg_0, arg_2), reverseBits(u_input.a), true)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), any(vec3<bool>(true, true, true)));
    let var_2 = Struct_2(Struct_1(52211u, u_input.c), Struct_1(max(u_input.e, arg_0) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(32260u, 0u, arg_0), vec3<u32>(arg_0, u_input.a, 3845u)) % 32u), vec4<i32>(select(countOneBits(-48022i), -4124i, true), arg_2.x, _wgslsmith_mult_i32(u_input.b.x, ~61049i), -36648i)));
    var_1 = select(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(-6515i, -1i), var_2.b.b.zz) <= select(-1i >> (u_input.e % 32u), _wgslsmith_div_i32(var_2.b.b.x, 19081i), any(var_1.zz)), var_1.x, true, false), select(!vec4<bool>(var_1.x, true, -1000f <= arg_1.x, var_1.x), select(select(!vec4<bool>(var_1.x, true, false, var_1.x), !vec4<bool>(false, var_1.x, false, var_1.x), var_1.x), !vec4<bool>(var_1.x, true, var_1.x, var_1.x), !(!vec4<bool>(true, true, var_1.x, var_1.x))), var_1.x), false);
    var var_3 = vec3<bool>(any(!vec3<bool>(var_1.x, any(var_1.zz), arg_1.x >= 1000f)), false, var_1.x);
    return 161f;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> f32 {
    global1 = _wgslsmith_mod_i32(arg_2, ~1i);
    let var_0 = vec3<bool>(true, all(vec3<bool>(false, false, any(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), arg_0)))), false);
    var var_1 = Struct_1(arg_1.b.a, firstLeadingBit(vec4<i32>(-u_input.d.x, _wgslsmith_mult_i32(arg_2, 1i), arg_2, _wgslsmith_sub_i32(2147483647i, 63419i))) << (~(vec4<u32>(u_input.a, u_input.a, arg_1.a.a, 37039u) & vec4<u32>(6746u, 22814u, u_input.e, arg_1.b.a)) % vec4<u32>(32u)));
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(593f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.e, vec3<f32>(1292f, 102f, 139f), u_input.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-802f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-662f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_u32(u_input.a, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(60625u, 101321u, 1u, u_input.a), vec4<u32>(0u, 4294967295u, 1u, 47266u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2041f, 227f, -351f))), _wgslsmith_mod_vec4_i32(var_1.b ^ u_input.b, vec4<i32>(arg_2, u_input.b.x, var_1.b.x, 17912i))))));
    let var_3 = ~vec3<u32>(77570u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(98500u, 4294967295u, var_1.a, u_input.a), vec4<u32>(1u, 53602u, arg_1.b.a, 1u)) % 32u), _wgslsmith_mod_u32(~(u_input.a >> (arg_1.b.a % 32u)), firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~u_input.a, _wgslsmith_div_u32(arg_1.b.a, u_input.e), _wgslsmith_mult_u32(arg_1.a.a, var_1.a)), ~vec4<u32>(var_1.a, var_1.a, 51621u, 31574u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + _wgslsmith_f_op_f32(select(var_2.x, 1377f, false)))))), var_2.x);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-select(vec4<i32>(u_input.b.x, -22154i, arg_1.b.x, u_input.d.x), arg_1.b, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true)), u_input.c), firstTrailingBit(-abs(arg_1.b)) >> (~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a, 4294967295u, 0u, arg_1.a), vec4<u32>(4294967295u, 0u, 1u, arg_1.a)) % vec4<u32>(32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -280f)))), arg_0);
    var var_2 = ~arg_1.a;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(228f, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)))) - arg_0) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2434f - arg_0) + 502f) - -882f)), var_1.x);
    let var_4 = ~firstTrailingBit(u_input.e);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 15>();
    var var_0 = Struct_1(reverseBits(_wgslsmith_add_u32(17031u, u_input.e)), ~(-(vec4<i32>(u_input.d.x, 2147483647i, u_input.c.x, 1i) >> (~vec4<u32>(u_input.e, u_input.e, 1u, 0u) % vec4<u32>(32u)))));
    var var_1 = Struct_1(4294967295u, max(max(~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -31110i, -3181i, -1i), vec4<i32>(var_0.b.x, var_0.b.x, -2147483647i, var_0.b.x)), _wgslsmith_add_vec4_i32(-var_0.b, vec4<i32>(-30360i, -2147483647i, u_input.d.x, var_0.b.x))), firstTrailingBit(u_input.b)));
    let var_2 = var_0.a;
    let var_3 = Struct_1(func_4(_wgslsmith_f_op_f32(func_1(false, global0[_wgslsmith_index_u32(~(~0u), 15u)], reverseBits(~2147483647i))), Struct_1(max(var_1.a, select(47268u, 1u, false)), var_0.b)), -vec4<i32>(_wgslsmith_div_i32(-67898i ^ var_1.b.x, var_1.b.x | -40007i), i32(-1i) * -var_1.b.x, _wgslsmith_clamp_i32(firstLeadingBit(-15768i), var_0.b.x, var_0.b.x << (1u % 32u)), _wgslsmith_clamp_i32(2147483647i, var_1.b.x | var_1.b.x, -2147483647i)));
    var_1 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 34748u) | (vec4<u32>(var_3.a, 6331u, u_input.a, u_input.e) | vec4<u32>(var_3.a, u_input.a, 1u, var_1.a)), ~firstTrailingBit(vec4<u32>(var_1.a, 12448u, var_0.a, u_input.a))), 13336u), select(u_input.c, max(select(var_1.b, -vec4<i32>(u_input.b.x, var_1.b.x, var_1.b.x, var_1.b.x), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), firstLeadingBit(vec4<i32>(-13448i, var_1.b.x, var_3.b.x, 39412i))), true));
    let x = u_input.a;
    s_output = StorageBuffer(974f, _wgslsmith_div_vec2_f32(vec2<f32>(927f, -254f), vec2<f32>(791f, 1f)));
}

