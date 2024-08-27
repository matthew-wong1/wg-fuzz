struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(arg_1.a, 924f, u_input.a & -65712i);
    let var_1 = countOneBits(-18952i);
    let var_2 = Struct_1(!arg_1.a, _wgslsmith_f_op_f32(-580f + _wgslsmith_f_op_f32(-var_0.b)), u_input.a);
    var var_3 = _wgslsmith_div_f32(650f, arg_2);
    var_3 = 698f;
    return !select(arg_1.a, !vec2<bool>(var_2.a.x, !arg_1.a.x), arg_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_2.c;
    let var_1 = arg_0;
    var var_2 = arg_3;
    var_2 = ~_wgslsmith_div_vec2_u32(abs(arg_3), vec2<u32>(abs(24108u) << (~arg_3.x % 32u), ~(~arg_3.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b - arg_2.b), _wgslsmith_f_op_f32(var_1.b * -556f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2.b)), _wgslsmith_f_op_f32(round(arg_0.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b, -532f))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(953f, 113f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(817f, -1180f), vec2<f32>(551f, -1423f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 555f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(714f, -384f), vec2<f32>(240f, var_1.b)))))))));
    return vec4<bool>(true, any(!select(vec3<bool>(arg_1.a.x, arg_1.a.x, false), !vec3<bool>(false, arg_0.a.x, arg_2.a.x), select(vec3<bool>(true, arg_0.a.x, true), vec3<bool>(true, arg_2.a.x, arg_2.a.x), arg_1.a.x))), true, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = select(select(arg_2, func_4(Struct_1(func_3(0u, Struct_1(arg_2.xz, 394f, u_input.a), -834f), _wgslsmith_f_op_f32(sign(-1123f)), u_input.a), Struct_1(arg_2.xx, _wgslsmith_f_op_f32(1108f - -282f), 6768i), Struct_1(func_3(20350u, Struct_1(vec2<bool>(false, false), 645f, -2147483647i), 2360f), _wgslsmith_f_op_f32(-637f - 1337f), u_input.a), min(vec2<u32>(63943u, 0u), vec2<u32>(arg_0.x, arg_0.x)) | vec2<u32>(10048u, 0u)), !vec4<bool>(true, !arg_1, arg_1 && false, func_3(arg_0.x, Struct_1(arg_2.zx, -221f, 38943i), 358f).x)), select(arg_2, arg_2, false), arg_1 && all(select(select(arg_2.zw, arg_2.xy, false), vec2<bool>(true, arg_2.x), false)));
    let var_1 = max(~max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 19622i, 59795i), vec3<i32>(41195i, arg_3, -1087i)) | vec3<i32>(-506i, arg_3, arg_3), vec3<i32>(1i, ~u_input.a, select(u_input.a, 65599i, var_0.x))), select(~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -9966i, u_input.a), u_input.a, 0i), vec3<i32>(_wgslsmith_sub_i32(u_input.a, 2147483647i >> (arg_0.x % 32u)), ~_wgslsmith_mult_i32(-25657i, -30619i), _wgslsmith_dot_vec2_i32(max(vec2<i32>(38733i, -1i), vec2<i32>(u_input.a, 1736i)), vec2<i32>(arg_3, arg_3) & vec2<i32>(u_input.a, 20621i))), select(vec3<bool>(any(var_0), arg_2.x, func_3(arg_0.x, Struct_1(var_0.ww, -996f, -17468i), 346f).x), select(!vec3<bool>(arg_2.x, arg_1, arg_2.x), var_0.wxx, true), true)));
    var var_2 = ~var_1.xy;
    let var_3 = Struct_1(func_4(Struct_1(vec2<bool>(false, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2764f + -1166f)), ~10541i), Struct_1(vec2<bool>(arg_2.x, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1311f - 1000f) + _wgslsmith_div_f32(-439f, 1287f)), ~(-u_input.a)), Struct_1(vec2<bool>(!arg_1, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-766f + 284f), _wgslsmith_f_op_f32(sign(-948f))), -19197i), abs(~max(vec2<u32>(arg_0.x, 1u), vec2<u32>(arg_0.x, 4294967295u)))).wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(255f, -435f) - _wgslsmith_f_op_f32(-689f * 204f)))), abs(1i));
    var var_4 = Struct_1(vec2<bool>(true, !select(any(arg_2.zxw), func_4(var_3, Struct_1(vec2<bool>(arg_1, var_3.a.x), var_3.b, var_3.c), Struct_1(vec2<bool>(var_0.x, true), -792f, 28276i), vec2<u32>(84868u, arg_0.x)).x, all(var_0.wx))), var_3.b, max(~(-_wgslsmith_sub_i32(5767i, -50560i)), arg_3));
    return var_3;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = func_2(_wgslsmith_add_vec3_u32(vec3<u32>(50543u, select(~4294967295u, 1u, true), ~1u), max(_wgslsmith_mult_vec3_u32(vec3<u32>(16998u, 4294967295u, 4294967295u), abs(vec3<u32>(0u, 0u, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(9573u, 81345u, 55854u), vec3<u32>(1u, 1u, 1u)))), arg_1.a.x, !(!(!select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(false, true, true, arg_2.a.x), arg_2.a.x))), arg_2.c);
    let var_1 = Struct_1(vec2<bool>(!all(func_4(Struct_1(vec2<bool>(true, var_0.a.x), arg_2.b, 68569i), arg_1, Struct_1(vec2<bool>(var_0.a.x, true), -412f, -2147483647i), vec2<u32>(50117u, 42387u)).zw), true), 1107f, -1i ^ arg_0.x);
    let var_2 = ~vec2<u32>(~4294967295u, ~1u);
    var_0 = arg_2;
    var_0 = arg_2;
    return select(arg_2.c, abs(_wgslsmith_clamp_i32(u_input.a, var_0.c, -u_input.a ^ arg_0.x)), ((-1i << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x, 1u, var_2.x), vec4<u32>(var_2.x, 226u, var_2.x, 78664u)) % 32u)) == firstLeadingBit(arg_0.x)) || arg_1.a.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = abs(~(~(~firstLeadingBit(vec2<i32>(0i, -38230i)))));
    var var_1 = arg_1;
    var var_2 = arg_1.a.x;
    var_1 = Struct_1(!(!arg_1.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b))), func_5(-max(vec2<i32>(2147483647i, arg_1.c), vec2<i32>(44085i, arg_1.c)) >> (select(~vec2<u32>(arg_0, 0u), vec2<u32>(arg_0, 8723u), any(vec2<bool>(false, true))) % vec2<u32>(32u)), Struct_1(vec2<bool>(false, true), -1301f, var_1.c), func_2(~(~vec3<u32>(21164u, 1u, 98812u)), all(select(vec4<bool>(arg_2, true, true, false), vec4<bool>(arg_2, arg_1.a.x, arg_2, false), vec4<bool>(arg_1.a.x, true, var_1.a.x, arg_2))), select(select(vec4<bool>(arg_2, false, false, var_1.a.x), vec4<bool>(var_1.a.x, true, var_1.a.x, arg_2), true), vec4<bool>(false, true, true, arg_1.a.x), select(vec4<bool>(true, true, true, arg_1.a.x), vec4<bool>(arg_2, true, false, false), arg_2)), 1i)));
    let var_3 = func_4(arg_1, arg_1, func_2(vec3<u32>(~66136u, arg_0, firstLeadingBit(4294967295u)) ^ _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, arg_0, 91720u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(21456u, 51885u, 0u))), true, vec4<bool>(!all(var_1.a), true, !(!arg_1.a.x), any(select(vec4<bool>(var_1.a.x, var_1.a.x, false, arg_2), vec4<bool>(arg_1.a.x, var_1.a.x, false, true), true))), var_1.c), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 25735u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, 16599u), vec2<u32>(19585u, arg_0)), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_0), vec2<u32>(88988u, 10571u))), firstTrailingBit(~vec2<u32>(arg_0, 4294967295u)), ~(~select(vec2<u32>(1u, arg_0), vec2<u32>(arg_0, 0u), false))));
    return !(!arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(!(58812i < u_input.a), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !vec2<bool>(func_1(4294967295u, Struct_1(vec2<bool>(false, false), -499f, 1i), false), true)), vec2<bool>(func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(79336u, 20341u, 4294967295u, 0u), vec4<u32>(90381u, 0u, 48238u, 0u)), func_2(vec3<u32>(1u, 1u, 1u), false, select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), 4070i), false), !(true & func_1(14315u, Struct_1(vec2<bool>(false, false), -1000f, u_input.a), true))), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var_0 = func_4(func_2(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26070u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 7773u))), min(firstTrailingBit(1u), ~0u), ~countOneBits(95166u)), true, vec4<bool>(var_0.x, _wgslsmith_f_op_f32(select(-724f, -260f, false)) > _wgslsmith_f_op_f32(floor(1000f)), false, 1i != _wgslsmith_dot_vec2_i32(vec2<i32>(11482i, u_input.a), vec2<i32>(u_input.a, -71572i))), -abs(u_input.a >> (0u % 32u))), func_2(vec3<u32>(~1u, _wgslsmith_clamp_u32(0u, 72906u, ~12028u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 41586u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(6441u, 19424u)))), true, select(func_4(Struct_1(vec2<bool>(var_0.x, var_0.x), -1327f, u_input.a), func_2(vec3<u32>(1u, 1u, 4294967295u), false, vec4<bool>(false, false, false, false), 2147483647i), func_2(vec3<u32>(22874u, 0u, 37992u), var_0.x, vec4<bool>(var_0.x, false, var_0.x, true), 18825i), ~vec2<u32>(47148u, 4294967295u)), select(select(vec4<bool>(true, var_0.x, true, true), vec4<bool>(false, var_0.x, true, false), var_0.x), vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, var_0.x, true, true)), true), u_input.a), Struct_1(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(func_4(Struct_1(vec2<bool>(true, var_0.x), 657f, -1i), Struct_1(vec2<bool>(true, false), -1646f, u_input.a), Struct_1(vec2<bool>(true, true), -904f, u_input.a), vec2<u32>(13430u, 1u)).x, true), (var_0.x | true) || !var_0.x), _wgslsmith_f_op_f32(max(func_2(firstTrailingBit(vec3<u32>(14501u, 14097u, 32640u)), var_0.x | var_0.x, vec4<bool>(false, var_0.x, var_0.x, false), func_5(vec2<i32>(u_input.a, u_input.a), Struct_1(vec2<bool>(true, var_0.x), -714f, 18679i), Struct_1(vec2<bool>(true, var_0.x), -503f, u_input.a))).b, _wgslsmith_f_op_f32(f32(-1f) * -1556f))), u_input.a), vec2<u32>(~_wgslsmith_div_u32(1u, 1778u), _wgslsmith_clamp_u32(32919u, 4294967295u, 0u) >> (11837u % 32u)) ^ ~vec2<u32>(1u, 1u)).wz;
    var_0 = vec2<bool>(!any(select(func_4(Struct_1(vec2<bool>(var_0.x, var_0.x), 330f, 42844i), Struct_1(vec2<bool>(false, true), -574f, u_input.a), Struct_1(vec2<bool>(var_0.x, false), 442f, -1i), vec2<u32>(2306u, 0u)).wyx, vec3<bool>(true, true, true), !vec3<bool>(var_0.x, var_0.x, var_0.x))), all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec3<bool>(false, true, -1i < u_input.a))));
    var_0 = func_4(Struct_1(!(!(!vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -564f), firstLeadingBit(1i)), func_2(abs(min(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 3899u))), true, !(!func_4(Struct_1(vec2<bool>(true, var_0.x), 634f, -2147483647i), Struct_1(vec2<bool>(var_0.x, var_0.x), -380f, 1i), Struct_1(vec2<bool>(var_0.x, false), 883f, 1i), vec2<u32>(38422u, 18838u))), func_5(vec2<i32>(_wgslsmith_mult_i32(-3330i, 6251i), ~1621i), Struct_1(func_2(vec3<u32>(0u, 1u, 4294967295u), false, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 1i).a, _wgslsmith_f_op_f32(-868f - 311f), 2147483647i | u_input.a), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(max(-1520f, -170f)), i32(-1i) * -19446i))), Struct_1(select(!func_3(28995u, Struct_1(vec2<bool>(var_0.x, false), 559f, 0i), -514f), func_4(func_2(vec3<u32>(39921u, 19957u, 4294967295u), true, vec4<bool>(var_0.x, var_0.x, var_0.x, true), 2147483647i), func_2(vec3<u32>(0u, 4294967295u, 0u), true, vec4<bool>(var_0.x, true, false, false), u_input.a), func_2(vec3<u32>(108448u, 39289u, 13465u), false, vec4<bool>(var_0.x, true, var_0.x, false), -40155i), vec2<u32>(4294967295u, 56887u)).xw, func_4(Struct_1(vec2<bool>(false, var_0.x), -1547f, -1i), Struct_1(vec2<bool>(var_0.x, var_0.x), 268f, 2147483647i), Struct_1(vec2<bool>(false, true), 192f, 2147483647i), vec2<u32>(2157u, 4294967295u)).x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(928f, -492f) + _wgslsmith_f_op_f32(f32(-1f) * -508f)))), i32(-1i) * -reverseBits(21181i)), ~vec2<u32>(1u, 1u)).ww;
    var_0 = !select(vec2<bool>(!all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true), vec2<bool>(true, firstTrailingBit(0u) >= ~4294967295u), false);
    let var_1 = vec4<i32>(u_input.a, _wgslsmith_div_i32(~u_input.a, ~abs(~1i)), -func_2(~(~vec3<u32>(66586u, 48276u, 33418u)), _wgslsmith_mod_i32(-6304i, u_input.a) == u_input.a, vec4<bool>(false, true, false, var_0.x || var_0.x), -2147483647i).c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.a, -46612i), firstLeadingBit(u_input.a), u_input.a, abs(2147483647i)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, -2147483647i, 0i, 0i), vec4<i32>(u_input.a, -5933i, u_input.a, 3667i), true), -vec4<i32>(1i, 7688i, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1008f, -351f, -1000f, 382f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1582f, -232f, 436f, -1331f) - vec4<f32>(1085f, -755f, -737f, -1000f)))))), ~var_1.zyy);
}

