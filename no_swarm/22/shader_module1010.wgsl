struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-1077f, 833f, -1000f, 128f), vec4<f32>(-109f, 1477f, 699f, 1612f), vec4<f32>(247f, 664f, -840f, -697f), vec4<f32>(2416f, 143f, 1519f, 1095f), vec4<f32>(528f, 2490f, 210f, -419f), vec4<f32>(-380f, -1000f, -414f, -345f), vec4<f32>(101f, -1083f, 569f, -109f), vec4<f32>(444f, 330f, 531f, 1070f), vec4<f32>(-1407f, 545f, 2333f, 1000f), vec4<f32>(-243f, -466f, -1851f, 1271f), vec4<f32>(294f, -378f, -1362f, -666f), vec4<f32>(219f, -1110f, 563f, -1145f), vec4<f32>(-785f, 946f, 1000f, -415f), vec4<f32>(-453f, -886f, -825f, -1834f), vec4<f32>(-1062f, 276f, -698f, 368f), vec4<f32>(-1206f, 404f, -2349f, -1000f), vec4<f32>(480f, 1528f, 722f, 414f), vec4<f32>(1915f, -1884f, 1516f, 423f), vec4<f32>(-1212f, -455f, -2541f, 383f), vec4<f32>(394f, 571f, -1907f, -1000f), vec4<f32>(-1876f, 521f, -328f, -635f));

var<private> global1: f32 = -768f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_3(vec3<f32>(1f, 1f, 1f), Struct_2(any(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(any(vec2<bool>(true, false)), true, false, any(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1106f, 1455f, 1109f))))), -u_input.b.x), Struct_1(vec4<bool>(all(vec3<bool>(false, false, true)), u_input.b.x == u_input.d, all(vec4<bool>(true, true, false, false)), false), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(1359f, 1368f, 1238f), vec3<f32>(-1024f, -953f, 857f)), _wgslsmith_div_vec3_f32(vec3<f32>(347f, 638f, -1533f), vec3<f32>(632f, 801f, 2688f)))), -_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), select(4294967295u, 0u, false) | 55739u, Struct_1(vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, any(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(845f, 535f, 769f) - vec3<f32>(-351f, -485f, 470f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -2147483647i, u_input.c.x), max(vec4<i32>(u_input.d, u_input.b.x, 8472i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.d, u_input.c.x, 22946i))))));
    var var_1 = select(vec2<bool>(true, var_0.b.b.a.x), select(vec2<bool>(var_0.b.b.a.x, any(vec3<bool>(true, true, true))), !vec2<bool>(var_0.b.b.a.x & var_0.b.a, !var_0.b.c.a.x), select(!select(vec2<bool>(var_0.b.a, var_0.b.a), var_0.b.e.a.yy, false), var_0.b.b.a.yw, all(select(var_0.b.b.a.xyy, vec3<bool>(var_0.b.a, var_0.b.e.a.x, false), false)))), var_0.b.e.a.wy);
    global0 = array<vec4<f32>, 21>();
    let var_2 = true;
    var var_3 = var_0.b;
    return 1u;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(vec4<bool>(u_input.a >= ~1u, select(true, true, true) || (func_3() > u_input.a), !(!(arg_0.x >= arg_0.x)), !(u_input.c.x == 49345i)), arg_0.xxy, reverseBits(u_input.b.x | u_input.b.x));
    global0 = array<vec4<f32>, 21>();
    let var_1 = 1u < u_input.a;
    global0 = array<vec4<f32>, 21>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(round(arg_0.x)), 937f)))), Struct_2(false, var_0, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_0.b), arg_0.wxx)), min(-1i, countOneBits(0i))), u_input.a, Struct_1(vec4<bool>(select(false, var_1, var_1), any(var_0.a), u_input.a >= u_input.a, all(var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wyy)), -u_input.c.x)));
    return !any(vec4<bool>(!var_2.b.a != all(vec3<bool>(false, false, false)), var_2.b.b.a.x, !var_1, true));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = !select(vec3<bool>(true, true, !(944f != arg_0)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), !(~u_input.d >= -2147483647i));
    let var_1 = arg_0;
    var var_2 = select(u_input.a, u_input.a, any(var_0.yz) & func_2(global0[_wgslsmith_index_u32(~(~62818u), 21u)]));
    let var_3 = 2147483647i;
    var var_4 = Struct_1(!select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false == var_0.x, true, var_3 > -897i, var_0.x), all(!vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-775f, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1, arg_0), var_1))) - vec3<f32>(arg_0, -802f, _wgslsmith_f_op_f32(-698f * -189f))), -32583i);
    return reverseBits(~(~countOneBits(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1041f, 1742f, -545f, -263f), global0[_wgslsmith_index_u32(1u, 21u)], vec4<bool>(true, false, true, true))) * _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 21u)]))) - global0[_wgslsmith_index_u32(countOneBits(4294967295u), 21u)]))));
    let var_1 = Struct_2(!(var_0.x <= -2096f), Struct_1(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(1000f + var_0.x) == _wgslsmith_f_op_f32(round(589f))), var_0.xyz, select(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.d), u_input.c.x), 7876i, !func_2(vec4<f32>(var_0.x, var_0.x, var_0.x, -698f)))), Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), true), var_0.zzz, reverseBits(-2147483647i)), arg_0.x, Struct_1(vec4<bool>(!all(vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.zzy, _wgslsmith_div_vec3_f32(var_0.zyx, var_0.zyy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, var_0.x, var_0.x)))), !(17412i <= u_input.d))), _wgslsmith_dot_vec3_i32(firstLeadingBit(min(u_input.c.xyz, vec3<i32>(-4041i, -2147483647i, u_input.d))), u_input.c.yyz)));
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(abs(i32(-1i) * -1i), 28530i), -abs(max(u_input.b.x >> (var_1.d % 32u), var_1.e.c)));
    global0 = array<vec4<f32>, 21>();
    let var_3 = !vec2<bool>(true, select(true, var_1.e.a.x, all(var_1.e.a.xyz)));
    return var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_dot_vec4_u32(func_1(1952f), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 42220u), u_input.a >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(23919u, 1u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a)) % 32u), 0u, u_input.a));
    var var_1 = var_0.b.x;
    global0 = array<vec4<f32>, 21>();
    let var_2 = _wgslsmith_mod_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, ~u_input.a, 14991u & u_input.a), min(select(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a), var_0.a.wyy), ~vec3<u32>(u_input.a, u_input.a, 5597u))), vec3<u32>(func_3() << (~u_input.a % 32u), u_input.a, abs(~u_input.a)), var_0.a.x), select(firstLeadingBit(vec3<u32>(1u, 1u, u_input.a)), vec3<u32>(~_wgslsmith_div_u32(u_input.a, 33853u), ~4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 25968u, u_input.a, 115981u), vec4<u32>(u_input.a, 0u, u_input.a, 1117u)) % 32u), func_1(_wgslsmith_f_op_f32(422f * 1403f)).x), false));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_2.x, ~(0u | u_input.a), reverseBits(0u)) << (min(var_2.x, ~0u) % 32u), 21u)], -1i);
}

