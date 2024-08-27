struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1948f, arg_2) * vec2<f32>(-134f, arg_2))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, arg_2), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2342f, -822f), vec2<f32>(arg_2, arg_0.d)) + vec2<f32>(-1270f, arg_2)) - vec2<f32>(_wgslsmith_f_op_f32(1208f + 1882f), _wgslsmith_div_f32(arg_2, 901f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d, arg_0.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2668f))))));
    let var_1 = Struct_2(-_wgslsmith_mod_i32(firstLeadingBit(u_input.a), u_input.a) & (i32(-1i) * -arg_3), Struct_1(arg_1.c), select(select(!(!vec2<bool>(arg_1.c, arg_1.c)), select(vec2<bool>(arg_1.c, false), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, true), vec2<bool>(false, arg_1.c)), arg_1.c), arg_1.c), select(!vec2<bool>(arg_1.c, arg_1.c), select(!vec2<bool>(arg_1.c, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, arg_1.c))), select(vec2<bool>(arg_1.c, false), !vec2<bool>(arg_1.c, arg_1.c), arg_1.c)), vec2<bool>(true, any(select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.c), true)))), Struct_1(all(vec2<bool>(any(vec2<bool>(false, true)), true))), u_input.a);
    let var_2 = arg_2;
    var var_3 = arg_0.c.x | 46329u;
    return arg_0.a;
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(-vec4<i32>(13430i, u_input.a, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, -11679i, 1i)), func_3(Struct_4(vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i) >> (vec4<u32>(4294967295u, 93158u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec2<u32>(4294967295u, 5051u), vec2<u32>(4294967295u, 4294967295u), arg_0), Struct_3(~(-27159i), u_input.a, all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-arg_0), 0i)), select(vec2<u32>(1u, 1u), vec2<u32>(~4294967295u, _wgslsmith_div_u32(countOneBits(19814u), _wgslsmith_sub_u32(37835u, 30414u))), true), ~(~(~vec2<u32>(32448u, 1u))) & (~vec2<u32>(1u, 1u) >> (_wgslsmith_add_vec2_u32(select(vec2<u32>(18259u, 30518u), vec2<u32>(8791u, 1u), vec2<bool>(true, false)), ~vec2<u32>(33160u, 0u)) % vec2<u32>(32u))), 544f);
    var_0 = Struct_4(max(-var_0.a, ~vec4<i32>(firstTrailingBit(var_0.a.x), i32(-1i) * -1071i, reverseBits(u_input.a), var_0.a.x >> (1u % 32u))), vec2<u32>(var_0.b.x, var_0.c.x), vec2<u32>(_wgslsmith_mod_u32(0u, var_0.c.x), ~_wgslsmith_mod_u32(var_0.c.x, _wgslsmith_mod_u32(var_0.c.x, 17943u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), arg_0)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1628f)));
    var var_2 = Struct_2(var_0.a.x, Struct_1(false), select(vec2<bool>(true, true), select(vec2<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(true, false, true, true))), vec2<bool>(1u < var_0.c.x, var_0.c.x < 0u), false), vec2<bool>(true, (-2147483647i != var_0.a.x) & true)), Struct_1(!any(vec3<bool>(false, false, false)) & !all(vec2<bool>(false, false))), var_0.a.x << (firstTrailingBit(var_0.c.x) % 32u));
    var var_3 = Struct_2(-8011i, Struct_1(true), select(!(!var_2.c), select(vec2<bool>(any(vec2<bool>(var_2.d.a, true)), !var_2.c.x), select(!vec2<bool>(var_2.d.a, var_2.c.x), vec2<bool>(true, var_2.b.a), select(vec2<bool>(false, var_2.d.a), var_2.c, var_2.c)), var_2.c.x), false), Struct_1(!(0i == (26045i ^ var_2.a))), _wgslsmith_add_i32(~reverseBits(~(-50167i)), -countOneBits(var_0.a.x)));
    return var_0.c.x;
}

fn func_4(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1129f, -110f, -1000f, 184f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1408f, 1065f, 319f, 278f))) - vec4<f32>(_wgslsmith_f_op_f32(min(-904f, -1390f)), _wgslsmith_f_op_f32(min(-553f, 1279f)), _wgslsmith_f_op_f32(f32(-1f) * -1141f), _wgslsmith_f_op_f32(trunc(-1724f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-384f, 1636f, 1332f, 621f) - vec4<f32>(-885f, -291f, 1000f, 2018f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 187f, -301f, -1073f))), !all(vec3<bool>(false, true, false))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f) - 1f)), -869f, -1747f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -110f))) - -639f)));
    let var_1 = Struct_4(vec4<i32>(u_input.a, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -59796i), vec2<i32>(u_input.a, 0i)), u_input.a), u_input.a, 1i), abs(~vec2<u32>(firstTrailingBit(arg_0.x), ~1u)), arg_0.zz, _wgslsmith_f_op_f32(select(1000f, var_0.x, true)));
    let var_2 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true))), true), vec2<bool>(!any(vec4<bool>(true, true, true, true)), (var_1.a.x != 6707i) || any(vec3<bool>(true, true, true))));
    var var_3 = var_1;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -355f, -1357f, var_1.d) + vec4<f32>(-1000f, var_1.d, var_3.d, var_3.d))) + vec4<f32>(556f, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(abs(var_3.d)), _wgslsmith_f_op_f32(trunc(-728f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.d, var_1.d, var_3.d, var_3.d), vec4<f32>(-860f, 499f, 599f, var_3.d))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_3.d, 222f, var_1.d), vec4<f32>(-591f, var_1.d, -1008f, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(493f, -1236f, var_3.d, 2532f) - vec4<f32>(-593f, 859f, -1949f, var_3.d)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_div_f32(1175f, -228f), var_3.d, _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.d, 1000f, -1135f, _wgslsmith_f_op_f32(sign(var_3.d)))))));
    return Struct_3(u_input.a, max(var_3.a.x, var_3.a.x), var_2.x | !var_2.x);
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(abs(vec3<u32>(1u, 1u, func_2(1100f)) >> (~select(vec3<u32>(22369u, 1u, 31371u), vec3<u32>(1u, 10838u, 127737u), true) % vec3<u32>(32u))));
    var var_1 = Struct_2(-2147483647i >> (0u % 32u), Struct_1(false || !all(vec3<bool>(var_0.c, var_0.c, false))), vec2<bool>(true, !any(!vec4<bool>(var_0.c, var_0.c, true, false))), Struct_1(!(!all(vec4<bool>(true, false, var_0.c, false)))), u_input.a);
    let var_2 = vec2<i32>(1i, 1i);
    var_1 = Struct_2(_wgslsmith_mult_i32(-1i, ~_wgslsmith_add_i32(var_2.x, -1i)), var_1.b, vec2<bool>(var_0.c, any(!(!var_1.c))), Struct_1(var_1.c.x), ~func_4(~abs(vec3<u32>(0u, 4294967295u, 34899u))).a);
    var_1 = Struct_2(u_input.a << (28289u % 32u), Struct_1(var_0.c & (_wgslsmith_f_op_f32(1000f - -1302f) >= _wgslsmith_f_op_f32(floor(1229f)))), select(vec2<bool>(true, !(u_input.a < u_input.a)), !var_1.c, vec2<bool>((true | var_0.c) | all(vec4<bool>(false, false, var_1.b.a, var_1.c.x)), !(false | var_0.c))), var_1.b, 5420i);
    return -max(vec2<i32>(-1i) * -(~vec2<i32>(1i, var_2.x)), _wgslsmith_mod_vec2_i32(-_wgslsmith_sub_vec2_i32(var_2, vec2<i32>(4583i, u_input.a)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, var_2.x)), -var_2)));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = select(!vec2<bool>(any(vec4<bool>(false, false, true, true)) && all(vec4<bool>(false, false, true, true)), true), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, any(vec4<bool>(true, true, false, false))), true), all(vec2<bool>(arg_1 >= arg_1, all(vec3<bool>(false, true, true)))));
    var var_1 = func_4(vec3<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(82542u, 0u, 1u), vec3<u32>(4294967295u, 17335u, 43547u), vec3<bool>(var_0.x, var_0.x, true)), vec3<u32>(4294967295u, 49808u, 1u)), 11192u, ~abs(14875u)));
    let var_2 = arg_0.x | _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, var_1.a, 47132i)), max(vec3<i32>(var_1.a, 24750i, -38846i), vec3<i32>(-37478i, -1i, 74626i))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-3191i, var_1.a, 2147483647i) & vec3<i32>(arg_0.x, u_input.a, u_input.a), select(vec3<i32>(13806i, u_input.a, arg_0.x), vec3<i32>(2147483647i, -2370i, u_input.a), false)), func_3(Struct_4(vec4<i32>(u_input.a, u_input.a, arg_0.x, arg_0.x), vec2<u32>(23299u, 1u), vec2<u32>(4294967295u, 0u), arg_1), Struct_3(arg_0.x, u_input.a, var_1.c), _wgslsmith_f_op_f32(floor(arg_1)), ~(-1i)).zxx >> (~vec3<u32>(46365u, 85499u, 12128u) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-344f, arg_1));
    let var_4 = var_3;
    return Struct_2(min(min(arg_0.x, ~func_3(Struct_4(vec4<i32>(18856i, var_1.a, var_2, 2147483647i), vec2<u32>(4294967295u, 31019u), vec2<u32>(1u, 33134u), 2006f), Struct_3(2147483647i, var_1.b, var_0.x), var_3, arg_0.x).x), min(_wgslsmith_clamp_i32(-33974i, _wgslsmith_mult_i32(u_input.a, -20274i), ~1i), var_2 | _wgslsmith_mod_i32(2147483647i, 2147483647i))), Struct_1(false), var_0, Struct_1(!any(vec4<bool>(true, false, var_1.c, false))), ~(-(func_1().x << (1u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), -299f);
    var var_1 = ~_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(max(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u)), ~vec3<u32>(3067u, 1u, 29730u)), _wgslsmith_sub_vec3_u32(vec3<u32>(max(1u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(16746u, 4294967295u), vec2<u32>(1u, 0u)), ~22423u), ~vec3<u32>(1u, 1u, 1u)));
    var var_2 = Struct_4(vec4<i32>(-2147483647i, -(~firstTrailingBit(var_0.e)), 2147483647i, 0i), ~(~(~vec2<u32>(var_1.x, 4294967295u)) & select(_wgslsmith_div_vec2_u32(var_1.xy, vec2<u32>(var_1.x, var_1.x)), var_1.xy ^ var_1.yz, func_5(vec2<i32>(var_0.a, 0i), 114f).c)), vec2<u32>(~var_1.x, var_1.x), 1510f);
    var var_3 = Struct_4(~vec4<i32>(-2147483647i, select(_wgslsmith_dot_vec4_i32(var_2.a, vec4<i32>(var_2.a.x, 0i, 18795i, var_0.e)), i32(-1i) * -29307i, true), countOneBits(44142i), var_2.a.x), abs(var_1.xx), abs(vec2<u32>(0u, 39411u)), -1000f);
    var_3 = Struct_4(firstTrailingBit(var_2.a), vec2<u32>(~var_1.x, 30038u), _wgslsmith_mod_vec2_u32(min(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, var_2.c.x), var_1.xy) & ~vec2<u32>(var_1.x, var_3.c.x), vec2<u32>(var_3.b.x, var_3.b.x) << (var_1.zz % vec2<u32>(32u))), vec2<u32>(0u, var_3.c.x)), _wgslsmith_f_op_f32(-var_3.d));
    var var_4 = vec2<i32>(~var_2.a.x << (_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, var_1.x, 1u), firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_3.c.x, 55902u), vec3<u32>(var_3.b.x, var_3.b.x, 54501u), vec3<u32>(5810u, 0u, var_2.c.x)))) % 32u), -36406i);
    let var_5 = firstTrailingBit(-vec4<i32>(~_wgslsmith_mult_i32(7943i, 1i), -_wgslsmith_mod_i32(-2147483647i, u_input.a), (25255i >> (1u % 32u)) << (select(var_2.c.x, 25310u, var_0.c.x) % 32u), firstTrailingBit(-1i)));
    let var_6 = Struct_4(vec4<i32>(max(var_5.x, -abs(-2147483647i)), (var_4.x ^ _wgslsmith_div_i32(var_3.a.x, 2147483647i)) | ~reverseBits(28712i), 35278i, ~max(17700i, 2147483647i) | (_wgslsmith_mult_i32(1i, var_0.a) & var_2.a.x)), var_1.zy, var_2.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1113f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(select(var_2.d, -564f, var_0.b.a))), var_0.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(max(-(25079i << (var_2.b.x % 32u)), u_input.a), ~_wgslsmith_mod_i32(-1i, -26106i)));
}

