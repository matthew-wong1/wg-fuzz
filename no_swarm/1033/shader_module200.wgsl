struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> f32 {
    var var_0 = vec4<bool>(false, false, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true))) && ((false && select(true, false, false)) & all(vec3<bool>(true, true, true))), true);
    var var_1 = _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(50024u, u_input.c.x))) ^ ~min(_wgslsmith_clamp_u32(27358u, 26230u, u_input.c.x), u_input.c.x ^ u_input.c.x));
    let var_2 = Struct_1(u_input.b.x, u_input.b, -1i, ~69962u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_0, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(round(arg_2)), _wgslsmith_f_op_f32(-arg_0)))));
    var var_4 = 1f;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-arg_1)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(select(-947f, arg_1.x, arg_2.x)), _wgslsmith_f_op_f32(min(-645f, arg_1.x))) * vec3<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_f_op_f32(select(217f, -633f, arg_2.x)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))), vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)))), -533f, arg_1.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, arg_1.x, arg_1.x))))));
    var var_1 = Struct_1(~arg_3.b.x, vec3<i32>(27528i, _wgslsmith_div_i32(arg_3.c, 0i), reverseBits(1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_3.c, -1i) << (abs(vec3<u32>(arg_3.d, arg_3.d, u_input.c.x)) % vec3<u32>(32u)), ~u_input.b) | select(_wgslsmith_clamp_i32(arg_0.x, -2147483647i >> (arg_3.d % 32u), _wgslsmith_mod_i32(arg_0.x, -55565i)), ~(~(-24693i)), (arg_2.x || false) && true), 4294967295u);
    let var_2 = all(!select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), select(vec4<bool>(true, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, false, true, false))), !vec4<bool>(true, true, arg_2.x, false), all(vec3<bool>(arg_2.x, arg_2.x, false))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1451f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(698f + -1002f) * -1113f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-1153f - var_0.x), arg_1.x, 1042f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))))));
    let var_3 = vec3<i32>(~_wgslsmith_mult_i32(_wgslsmith_add_i32(min(30065i, arg_0.x), var_1.c ^ 1i), arg_0.x), arg_3.a, 2147483647i);
    return arg_3;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = func_2(~(~(firstLeadingBit(arg_1.b) << ((vec3<u32>(0u, arg_0, 0u) << (vec3<u32>(arg_1.d, 17254u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, 1921f) + vec2<f32>(-139f, -1035f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1590f, 769f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2656f, -1882f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-413f, 264f), vec2<f32>(1030f, 663f), vec2<bool>(true, true))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1449f, 358f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(252f, -1172f)) + vec2<f32>(646f, 519f)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), func_2(min(arg_1.b, vec3<i32>(~arg_1.b.x, u_input.b.x, 1i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2184f, 1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(192f, -1000f) + vec2<f32>(1212f, 1894f))), vec2<f32>(-211f, 605f)), vec2<bool>(false, true), func_2(-(~vec3<i32>(-1i, arg_1.a, arg_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(510f, 1000f)), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0 >= u_input.c.x), Struct_1(-21970i, -vec3<i32>(arg_1.a, arg_1.c, 0i), 57682i, ~arg_1.d))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-828f, 1861f, 2177f, -1547f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, 1501f, -797f, 1111f) * vec4<f32>(-856f, -696f, 1709f, -1137f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, -1000f, -329f, -181f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 112f, -697f, 761f) - vec4<f32>(1287f, 402f, 282f, -157f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))) + vec4<f32>(_wgslsmith_f_op_f32(765f + -2434f), -867f, _wgslsmith_f_op_f32(-234f + 1116f), -1350f)))));
    let var_2 = Struct_1(max(abs(~1i), ~select(firstLeadingBit(10794i), _wgslsmith_div_i32(arg_1.a, arg_1.b.x), any(vec3<bool>(false, true, false)))), select(arg_1.b, ~(-vec3<i32>(10288i, 0i, arg_1.c)) ^ (-vec3<i32>(0i, 3737i, -2147483647i) | -u_input.b), select(false, true, false)), _wgslsmith_mult_i32(-28100i, 4087i), 1u << ((_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, arg_1.d), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, 1u, var_0.d), vec3<u32>(arg_0, u_input.c.x, 9678u))) << (_wgslsmith_clamp_u32(0u, 51980u, 121270u) % 32u)) % 32u));
    var var_3 = var_0;
    let var_4 = func_2(vec3<i32>(abs(u_input.b.x), _wgslsmith_sub_i32(-u_input.b.x, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.a, var_0.c, -1i), vec4<i32>(9081i, -16085i, u_input.a, var_0.a)) >> (var_3.d % 32u)) >> ((vec3<u32>(67281u, 1u, arg_0) ^ ~reverseBits(vec3<u32>(var_2.d, 4294967295u, 26361u))) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(1642f * var_1.x), _wgslsmith_div_f32(var_1.x, 403f)), select(vec2<bool>(false, all(vec2<bool>(false, false))), vec2<bool>(true, true), _wgslsmith_mod_i32(~(-1i), 1i) != var_2.a), func_2(arg_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, var_1.x)))) - vec2<f32>(1532f, 1039f)), vec2<bool>(false, _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, arg_1.a), var_0.b.xy) > ~arg_1.a), func_2(max(reverseBits(vec3<i32>(var_2.a, -2147483647i, var_2.a)), u_input.b), vec2<f32>(-230f, var_1.x), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_2(var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -162f)), vec2<bool>(true, true), Struct_1(81991i, var_0.b, 0i, arg_1.d)))));
    return select(any(select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))))), !all(vec2<bool>(true, true)), true);
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = all(vec4<bool>(-1i < -arg_0.b.x, !any(vec3<bool>(true, true, true)), (select(true, true, true) || any(vec2<bool>(true, true))) || (arg_0.d != 40399u), !func_4(abs(arg_0.d), func_2(u_input.b, vec2<f32>(2122f, 1000f), vec2<bool>(false, true), arg_0))));
    var var_1 = select(vec3<u32>(arg_0.d, u_input.c.x, 8006u), _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 68947u, u_input.c.x)) ^ vec3<u32>(u_input.c.x, arg_0.d, 62134u)), (_wgslsmith_clamp_vec3_u32(vec3<u32>(43242u, u_input.c.x, arg_0.d), vec3<u32>(40374u, u_input.c.x, arg_0.d), vec3<u32>(0u, arg_0.d, arg_0.d)) & firstLeadingBit(vec3<u32>(arg_0.d, 0u, arg_0.d))) | firstLeadingBit(~vec3<u32>(arg_0.d, u_input.c.x, u_input.c.x))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, any(vec3<bool>(false, true, true))), true, true), select(true, true, select(select(true, true, false), false, true))));
    var_0 = true;
    var var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    let var_3 = Struct_1(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, 2147483647i, u_input.a, arg_0.c)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 31954i, u_input.b.x, 31115i), vec4<i32>(arg_0.a, arg_0.c, 41387i, u_input.a), vec4<i32>(u_input.a, u_input.a, arg_0.c, -25090i))), -u_input.b.x), vec3<i32>(u_input.b.x, -29923i, 1i) >> (abs(abs(vec3<u32>(4294967295u, 1u, var_1.x) ^ vec3<u32>(var_1.x, u_input.c.x, u_input.c.x))) % vec3<u32>(32u)), -1i ^ func_2(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, u_input.a, u_input.a), firstLeadingBit(vec3<i32>(18377i, -2147483647i, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 470f) + vec2<f32>(-1227f, 731f)) * _wgslsmith_div_vec2_f32(vec2<f32>(320f, 879f), vec2<f32>(-624f, 1586f))), !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true), var_2.xx), Struct_1(23869i, vec3<i32>(10822i, u_input.b.x, u_input.a), -u_input.b.x, u_input.c.x)).b.x, ~arg_0.d);
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, max(_wgslsmith_sub_vec3_i32(u_input.b, -max(u_input.b, vec3<i32>(0i, 19117i, u_input.b.x))), vec3<i32>(func_1(Struct_1(u_input.b.x, vec3<i32>(u_input.a, -14249i, -2147483647i), 2923i, 28444u)) << (reverseBits(14976u) % 32u), u_input.a, (u_input.a & 0i) | u_input.a)), max(~_wgslsmith_mult_i32(47212i, u_input.b.x), u_input.a >> (22587u % 32u)), 0u);
    let var_1 = !select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1687f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(-1700f - -1749f)) * 315f))), reverseBits(~(~min(vec4<u32>(28376u, 20326u, 4294967295u, u_input.c.x), vec4<u32>(14859u, u_input.c.x, 76684u, u_input.c.x)))));
}

