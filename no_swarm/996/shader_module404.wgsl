struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 120423u;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(505f, 158f, -1000f, 682f), vec4<f32>(-426f, -1091f, 284f, 846f), vec4<f32>(707f, 973f, -818f, -189f), vec4<f32>(-1495f, -275f, 1199f, 1563f), vec4<f32>(-723f, -755f, -138f, 800f), vec4<f32>(679f, -225f, 135f, -1619f), vec4<f32>(-1204f, -1000f, -1790f, -1707f), vec4<f32>(934f, -1178f, -1009f, 1416f), vec4<f32>(-255f, -487f, -927f, 261f), vec4<f32>(-670f, -117f, 115f, 310f), vec4<f32>(1463f, 947f, -1000f, 384f), vec4<f32>(-497f, 1158f, -124f, 759f), vec4<f32>(1746f, 621f, 1248f, 1000f), vec4<f32>(931f, 147f, 1165f, 357f), vec4<f32>(477f, 773f, 689f, -704f), vec4<f32>(2205f, -595f, 409f, 396f), vec4<f32>(-1969f, 157f, -993f, -556f), vec4<f32>(516f, 1000f, 1671f, -2152f), vec4<f32>(-333f, -140f, -768f, 1695f), vec4<f32>(-350f, -167f, 1520f, -1027f), vec4<f32>(2838f, 1000f, 1112f, 393f), vec4<f32>(-1000f, 937f, -290f, 1809f), vec4<f32>(-1090f, -133f, -997f, -806f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: u32) -> f32 {
    global1 = array<vec4<f32>, 23>();
    global1 = array<vec4<f32>, 23>();
    global1 = array<vec4<f32>, 23>();
    let var_0 = arg_2.b.c.x ^ (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 4294967295u) << (arg_2.b.c.zy % vec2<u32>(32u)), arg_2.b.c.zx) | arg_3);
    global0 = firstTrailingBit(arg_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.d.x - 672f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-626f - arg_2.b.b.x), arg_2.b.b.x)))));
}

fn func_2() -> bool {
    let var_0 = u_input.a;
    global0 = ~(~(~abs(2485u)));
    let var_1 = Struct_1(725f > _wgslsmith_f_op_f32(func_3((u_input.a ^ var_0) | -1i, vec2<i32>(-1i) * -vec2<i32>(var_0, var_0), Struct_3(true, Struct_1(true, vec3<f32>(-1306f, -1220f, 1000f), vec3<u32>(0u, 0u, 31558u), global1[_wgslsmith_index_u32(5555u, 23u)], vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(abs(1464f))), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1803f, -1000f, -935f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2526f, -713f, -1000f), vec3<f32>(809f, -349f, -142f), vec3<bool>(false, false, false)))), vec3<f32>(_wgslsmith_f_op_f32(select(714f, -555f, false)), _wgslsmith_f_op_f32(f32(-1f) * -425f), 715f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1125f, -1304f, -702f), vec3<f32>(-582f, 494f, 192f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(484f, 600f, 572f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-378f, 382f, -773f))))), ~vec3<u32>(~select(0u, 4294967295u, false), max(2526u << (1u % 32u), countOneBits(4294967295u)), ~_wgslsmith_add_u32(0u, 0u)), global1[_wgslsmith_index_u32(min(19445u, 1u), 23u)], !vec3<bool>(true, true, any(vec3<bool>(true, true, true))));
    let var_2 = var_1.d.xz;
    let var_3 = vec4<bool>(false, true, !all(!select(vec4<bool>(var_1.a, var_1.a, true, var_1.e.x), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, true))), var_0 >= _wgslsmith_mod_i32(-_wgslsmith_div_i32(var_0, 2147483647i), select(-var_0, var_0 << (var_1.c.x % 32u), 2147483647i > var_0)));
    return any(!select(var_3.yyw, vec3<bool>(true, var_3.x, true), !(!vec3<bool>(var_1.a, false, true))));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2684f - _wgslsmith_div_f32(-1319f, 1181f)), -512f) >= _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(213f + 676f), _wgslsmith_f_op_f32(f32(-1f) * -106f)))), vec3<f32>(816f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(385f + -1663f))), _wgslsmith_f_op_f32(func_3(u_input.a, vec2<i32>(0i, u_input.a) >> (vec2<u32>(4294967295u, 121580u) % vec2<u32>(32u)), Struct_3(!arg_0.x, Struct_1(true, vec3<f32>(-686f, 679f, -104f), vec3<u32>(30157u, arg_1, 4294967295u), global1[_wgslsmith_index_u32(1223u, 23u)], vec3<bool>(true, false, arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1450f)), ~(~arg_1)))), min((~vec3<u32>(arg_1, arg_1, 39507u) >> (select(vec3<u32>(1u, arg_1, arg_1), vec3<u32>(10160u, 81496u, 106510u), arg_0) % vec3<u32>(32u))) ^ vec3<u32>(firstTrailingBit(32597u), ~19390u, _wgslsmith_mod_u32(arg_1, arg_1)), vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1, 4294967295u, 8843u, arg_1)), vec4<u32>(arg_1, 4294967295u, 61858u, arg_1)), countOneBits(~69391u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(353f)), _wgslsmith_f_op_f32(func_3(u_input.a, vec2<i32>(u_input.a, u_input.a), Struct_3(arg_2.x, Struct_1(false, vec3<f32>(833f, -372f, 984f), vec3<u32>(arg_1, 12614u, 26923u), vec4<f32>(1273f, -666f, 228f, -1230f), vec3<bool>(false, true, true)), -396f), 0u))))), _wgslsmith_f_op_f32(-795f - _wgslsmith_f_op_f32(1391f * -803f)), -344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1595f, 627f)) + _wgslsmith_f_op_f32(round(1405f))))), arg_0);
    var var_1 = _wgslsmith_mod_vec2_i32(~(abs(~vec2<i32>(-11122i, u_input.a)) | firstLeadingBit(-vec2<i32>(u_input.a, u_input.a))), vec2<i32>(~_wgslsmith_add_i32(25467i & u_input.a, -25996i), -18596i));
    var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(firstTrailingBit(-39375i), 0i) & var_1.x, -11215i), -1i);
    var var_2 = Struct_2(-2147483647i, Struct_1(any(!select(arg_0.yz, var_0.e.xx, arg_2)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.d.xxw))))), var_0.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(0u, 23u)]))))), vec3<bool>(true, !(!var_0.e.x), var_0.c.x == min(1u, 5573u))), Struct_1((arg_1 >= _wgslsmith_dot_vec4_u32(vec4<u32>(7940u, var_0.c.x, 91406u, var_0.c.x), vec4<u32>(0u, 13792u, 46845u, arg_1))) != (max(76340u, var_0.c.x) >= 1u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, var_0.b.x, 1439f), var_0.d.zyx, arg_0.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.b.x, var_0.b.x, 532f)))))), var_0.c, var_0.d, select(!var_0.e, select(select(arg_0, var_0.e, false), var_0.e, vec3<bool>(arg_0.x, var_0.a, var_0.e.x)), false)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(select(~vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), ~vec3<u32>(var_0.c.x, 4294967295u, arg_1), !var_0.e), vec3<u32>(1u, var_0.c.x, firstLeadingBit(var_0.c.x))), vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, arg_1), 15013u, _wgslsmith_mult_u32(firstLeadingBit(1u), 0u >> (var_0.c.x % 32u)))), ~(61512u << ((arg_1 >> (~arg_1 % 32u)) % 32u)));
    let var_3 = Struct_4(vec2<i32>(-(~(-8276i)), u_input.a ^ var_1.x) ^ vec2<i32>(1i, var_1.x));
    return Struct_1(!func_2(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.b.x, var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.d.x - var_0.d.x) * _wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.c.b, vec3<f32>(-953f, var_0.b.x, -875f))))), !select(true, !var_2.b.e.x, !var_2.b.a))), select(~vec3<u32>(1u, var_2.c.c.x, 6275u), var_2.c.c, select(var_2.b.e, vec3<bool>(false, arg_0.x, arg_0.x), !var_2.c.e.x)) << (var_2.d % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))), vec3<bool>(var_2.b.e.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f * var_0.b.x) - _wgslsmith_f_op_f32(1000f - -113f)) < 682f));
}

fn func_5(arg_0: Struct_1) -> bool {
    global1 = array<vec4<f32>, 23>();
    var var_0 = -countOneBits(-(~u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.d.yx);
    global1 = array<vec4<f32>, 23>();
    let var_2 = arg_0.d.x;
    return arg_0.a;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(func_5(func_4(vec3<bool>(func_2(), true, true), abs(0u), vec2<bool>(true, true))), Struct_1(reverseBits(1u) == _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 0u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(331f, 1000f, 370f) - vec3<f32>(-571f, -557f, 456f)))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(42981u, 26191u), vec2<u32>(4294967295u, 79841u)), 40290u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(191f)), _wgslsmith_f_op_f32(select(-582f, -947f, true)), _wgslsmith_f_op_f32(1712f - -1000f), 1000f)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-978f - 1641f), -1009f, any(vec2<bool>(true, true))))) - 493f));
    let var_1 = Struct_3(false, var_0.b, var_0.b.b.x);
    var var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.d) * vec4<f32>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.c))))), var_1.c, var_0.b.d.x));
    return var_1;
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a ^ _wgslsmith_sub_i32(-(~1i), u_input.a), _wgslsmith_dot_vec3_i32(~(~vec3<i32>(26141i, u_input.a, -2147483647i)), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -2147483647i, 0i), vec4<i32>(u_input.a, 40991i, u_input.a, u_input.a)), min(-21095i, -32345i))) >> ((arg_0.b.c.x << (4294967295u % 32u)) % 32u));
    let var_1 = vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32((0u << (arg_0.b.c.x % 32u)) | 0u, arg_0.b.c.x), _wgslsmith_mult_u32(~arg_0.b.c.x, _wgslsmith_add_u32(0u, 43428u) << (~arg_0.b.c.x % 32u))), 0u, 1u);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.a | -u_input.a, _wgslsmith_mod_i32(~u_input.a, -1i) >> (4425u % 32u), ~(-1i)), ~(-(reverseBits(vec3<i32>(1i, 2147483647i, 0i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(3898u, var_1.x, var_1.x), vec3<u32>(120419u, var_1.x, arg_0.b.c.x)) % vec3<u32>(32u)))));
    var var_3 = Struct_2(~_wgslsmith_mod_i32(-_wgslsmith_mult_i32(var_0.x, var_0.x), -u_input.a), func_1(Struct_4(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2531i, var_0.x)), var_0, !arg_0.a))).b, func_1(Struct_4(var_0)).b, var_1.yyx, 1u);
    var_3 = Struct_2(_wgslsmith_clamp_i32(-1i, var_3.a, var_3.a), arg_0.b, arg_0.b, vec3<u32>(var_1.x, var_1.x, ~_wgslsmith_div_u32(1u, 34707u)), abs(var_3.d.x));
    return Struct_1(func_4(!vec3<bool>(true, any(vec4<bool>(false, arg_0.b.e.x, arg_0.b.a, arg_0.b.e.x)), arg_0.a), ~(arg_0.b.c.x << (4294967295u % 32u)), !(!(!vec2<bool>(arg_0.b.a, arg_0.b.a)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(674f, var_3.b.b.x, arg_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.d.x, arg_0.b.b.x, 1000f) - vec3<f32>(var_3.b.b.x, -638f, var_3.b.b.x))) + vec3<f32>(1007f, _wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(-arg_0.b.d.x))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.b.x, arg_0.b.b.x, -161f)))))), vec3<u32>(19800u, firstLeadingBit(40974u), ~(~(~4294967295u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, 774f, var_3.c.b.x, 602f))) * _wgslsmith_f_op_vec4_f32(round(arg_0.b.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.c.d)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u), 23u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_3.b.d, vec4<f32>(441f, var_3.c.b.x, arg_0.b.d.x, arg_0.b.b.x)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.d.x), -144f, arg_0.c, -1331f)), func_4(select(select(vec3<bool>(true, false, arg_0.b.e.x), vec3<bool>(false, true, arg_0.a), var_3.b.e), !var_3.b.e, !arg_0.b.e), ~var_1.x, !(!vec2<bool>(arg_0.a, arg_0.b.e.x))).a)), select(!var_3.b.e, select(arg_0.b.e, func_1(Struct_4(vec2<i32>(var_0.x, -11391i))).b.e, func_1(Struct_4(var_0)).b.e), ((arg_0.b.b.x < arg_0.b.d.x) | any(vec4<bool>(var_3.b.a, true, arg_0.a, arg_0.b.a))) | arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-u_input.a << (reverseBits(select(1u, ~0u, true)) % 32u), func_6(func_1(Struct_4(vec2<i32>(u_input.a, 7121i)))), func_4(func_6(Struct_3(true, Struct_1(true, vec3<f32>(-1069f, -2982f, 500f), vec3<u32>(0u, 41775u, 53400u), global1[_wgslsmith_index_u32(0u, 23u)], vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(select(-648f, 1150f, false)))).e, ~1u, func_1(Struct_4(firstTrailingBit(vec2<i32>(u_input.a, 1i)))).b.e.xz), _wgslsmith_sub_vec3_u32(func_6(func_1(Struct_4(vec2<i32>(-1i, 4823i)))).c >> (firstTrailingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<u32>(1u, 26323u, 1u)), 1u);
    let var_1 = vec4<i32>(abs(firstTrailingBit(_wgslsmith_mod_i32(3045i, _wgslsmith_sub_i32(var_0.a, 67925i)))), -_wgslsmith_div_i32(-15261i, _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, 1535i), select(var_0.a, var_0.a, false))), -var_0.a, 1i);
    global0 = var_0.c.c.x;
    let var_2 = vec2<u32>(firstLeadingBit(abs(var_0.e)), var_0.d.x);
    global0 = _wgslsmith_dot_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.e << (var_0.c.c.x % 32u), ~var_2.x, 2711u), var_0.c.c), min(~var_0.d << (select(vec3<u32>(1u, 82759u, var_2.x), vec3<u32>(var_2.x, var_0.c.c.x, 1u), false) % vec3<u32>(32u)), vec3<u32>(1u, 60505u, var_0.c.c.x) ^ ~vec3<u32>(4294967295u, 16672u, 11151u))), _wgslsmith_add_vec3_u32(countOneBits(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.c.x, var_0.e, var_2.x), var_0.b.c))), var_0.c.c));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.b.d.wzw);
    let var_4 = Struct_4(firstTrailingBit(firstTrailingBit(reverseBits(vec2<i32>(var_1.x, 0i)))));
    let var_5 = ~(~(~47484u & select(var_2.x, 4294967295u, false)) >> (var_2.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~firstLeadingBit(vec4<u32>(var_5, var_2.x, 0u, var_0.c.c.x)))), _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 23u)]), u_input.a, vec3<u32>(43829u & var_5, min(var_0.d.x, 109457u), 0u) & ~(~vec3<u32>(var_2.x, var_5, 40205u) << (vec3<u32>(0u, 26155u, var_2.x) % vec3<u32>(32u))), 792f);
}

