struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32;

var<private> global2: vec4<u32> = vec4<u32>(1u, 51908u, 0u, 25609u);

var<private> global3: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(45769i, 4195i), vec2<i32>(-5387i, 64418i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-30980i, 56552i), vec2<i32>(8077i, 1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(45547i, -7943i), vec2<i32>(-1i, 1i));

var<private> global4: i32 = 2147483647i;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec2<f32> {
    let var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.c, 1u, 0u), ~vec4<u32>(35481u, 1u, 0u, 26343u))) | ~(~u_input.b >> (~arg_1.c % 32u));
    let var_1 = -arg_0.a;
    let var_2 = vec2<u32>(select(~global2.x, ~_wgslsmith_mod_u32(22309u, global2.x), true), 4294967295u) | (global2.wz & vec2<u32>(max(~global2.x, 66892u), _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0, 10176u), abs(u_input.a))));
    global4 = ~max(2147483647i, -11224i);
    global3 = array<vec2<i32>, 8>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(398f, -1493f))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_3)))))), 409f));
}

fn func_2() -> vec3<bool> {
    global1 = 78915u;
    var var_0 = Struct_1(~(~(-(~(-89602i)))), 1u, 46711u);
    var var_1 = ~vec2<u32>(u_input.b, firstLeadingBit(~26712u)) ^ vec2<u32>(~(~global2.x) << (4294967295u % 32u), 0u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(0u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], -675f, _wgslsmith_div_f32(695f, -1000f))))))));
    let var_3 = vec2<bool>(any(select(vec4<bool>(true, true, false, any(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true))), false);
    return !(!select(select(!vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(var_3.x, var_3.x, var_3.x), select(vec3<bool>(var_3.x, false, false), vec3<bool>(true, false, var_3.x), false)), select(vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(false, var_3.x, false), !var_3.x), vec3<bool>(true, var_3.x, var_0.a != -2147483647i)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_1(-2147483647i, max(countOneBits(u_input.c), ~u_input.b), u_input.a << ((u_input.a >> (abs(min(global2.x, 4294967295u)) % 32u)) % 32u));
    return vec4<u32>(0u, u_input.b, _wgslsmith_sub_u32(~_wgslsmith_div_u32(~50442u, var_1.b), 1u), u_input.b);
}

fn func_1() -> i32 {
    global2 = func_4(select(select(func_2(), vec3<bool>(false, true, any(vec2<bool>(true, false))), false), vec3<bool>(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), true), countOneBits(-vec3<i32>(8512i, 27848i << (1u % 32u), 0i)));
    var var_0 = _wgslsmith_clamp_i32(1i, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(290i, 2147483647i, -1i, -1i)), vec4<i32>(firstTrailingBit(33959i), ~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-21846i, 52635i), vec2<i32>(-1745i, 33302i)), 0i)), vec4<i32>(_wgslsmith_sub_i32(-3115i, -2147483647i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-25388i, -36338i, 70051i), select(vec3<i32>(-3119i, -13896i, -13317i), vec3<i32>(21472i, -1i, -32880i), true)), 11403i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f * 1842f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(~u_input.a & _wgslsmith_mod_u32(u_input.c, 0u), 17u)], global0[_wgslsmith_index_u32(~firstLeadingBit(55454u), 17u)], _wgslsmith_f_op_f32(sign(-829f)), _wgslsmith_f_op_f32(floor(1f)))).x));
    global4 = select(min(~_wgslsmith_dot_vec4_i32(vec4<i32>(-20138i, 2147483647i, -2147483647i, 20640i), abs(vec4<i32>(-30366i, 0i, -14034i, -1i))), 80062i), 1i, true);
    global4 = -(~(~select(select(-2147483647i, 1i, false), -40583i, true)));
    return -41724i;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    let var_0 = 106483u;
    let var_1 = global0[_wgslsmith_index_u32(global2.x, 17u)];
    let var_2 = min(arg_2, -53365i & func_1());
    let var_3 = -4537i;
    let var_4 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_3 << (~vec4<u32>(arg_3.x, 6357u, 52944u, 30628u >> (arg_3.x % 32u)) % vec4<u32>(32u)), ~countOneBits(arg_3)), 17u)];
    return _wgslsmith_mult_u32(u_input.c, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, func_5(-435f, 68864i, _wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_mod_i32(30459i, -39821i)), func_1()), ~abs(~vec4<u32>(u_input.b, 94571u, 1380u, u_input.b))), 1u);
    var var_1 = vec4<i32>(0i, -2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(select(vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a) >> (vec4<u32>(8042u, 36443u, var_0.b, 10842u) % vec4<u32>(32u)), vec4<i32>(var_0.a, var_0.a, -1i, -2147483647i), true)), -(~max(vec4<i32>(var_0.a, -29031i, var_0.a, -29314i), vec4<i32>(-2147483647i, -17806i, 2147483647i, 13174i)))), firstTrailingBit(_wgslsmith_clamp_i32(30307i, ~_wgslsmith_mult_i32(var_0.a, -74184i), var_0.a)));
    let var_2 = vec4<u32>(~(~var_0.b), var_0.c, 44545u, global2.x);
    var var_3 = vec3<u32>(~var_2.x, u_input.a >> ((~global2.x ^ ~1u) % 32u), func_5(_wgslsmith_f_op_f32(f32(-1f) * -488f), var_1.x, (1i ^ var_0.a) & var_0.a, abs(_wgslsmith_div_vec4_u32(var_2, var_2))) ^ var_0.c);
    global0 = array<Struct_1, 17>();
    var var_4 = ~(~var_2.x);
    var var_5 = _wgslsmith_add_vec4_i32(vec4<i32>(17188i, var_0.a, var_0.a, ~(var_1.x << (global2.x % 32u))), vec4<i32>(var_1.x, var_0.a << (~1u % 32u), var_1.x >> (var_3.x % 32u), ~var_0.a) | _wgslsmith_div_vec4_i32(max(vec4<i32>(-51076i, var_0.a, 2147483647i, var_0.a) ^ vec4<i32>(var_0.a, var_0.a, 21535i, -2147483647i), -vec4<i32>(-21467i, -2147483647i, var_0.a, 20513i)), (vec4<i32>(-1i, var_1.x, -1i, 17763i) << (var_2 % vec4<u32>(32u))) << (var_2 % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(step(-2189f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(722f - -643f), _wgslsmith_f_op_f32(abs(-369f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-987f - _wgslsmith_f_op_f32(791f + 409f)), _wgslsmith_f_op_f32(-1244f + _wgslsmith_f_op_f32(999f - 1053f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-444f)))));
}

