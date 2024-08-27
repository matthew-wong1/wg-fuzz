struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = -firstTrailingBit(-(~u_input.a)) > _wgslsmith_add_i32(1i, -(~(-28414i)));
    return firstTrailingBit(vec4<u32>(~1u, 0u & _wgslsmith_clamp_u32(1u, 30419u, ~arg_0.b.a), _wgslsmith_sub_u32(62026u, ~(~2869u)), firstLeadingBit(~1u)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = true;
    let var_1 = (~(firstLeadingBit(vec4<u32>(4294967295u, arg_3.a, u_input.b, u_input.b)) ^ ~vec4<u32>(19649u, 4294967295u, 32595u, 107615u)) << (~(~(vec4<u32>(1u, 0u, 1u, 0u) << (vec4<u32>(u_input.b, 15917u, 4294967295u, arg_3.a) % vec4<u32>(32u)))) % vec4<u32>(32u))) << ((~(~vec4<u32>(0u, 0u, u_input.c.x, 35275u) | func_3(Struct_3(arg_0, Struct_2(arg_3.a), Struct_1(arg_0)), Struct_1(false))) | ~vec4<u32>(arg_3.a, 10456u, reverseBits(arg_3.a), abs(u_input.c.x))) % vec4<u32>(32u));
    var var_2 = !select(select(!select(vec4<bool>(var_0, false, true, false), vec4<bool>(false, false, false, true), true), !(!vec4<bool>(true, arg_0, false, var_0)), true), select(!select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, true, true), arg_0), select(select(vec4<bool>(true, true, arg_0, true), vec4<bool>(false, false, false, false), vec4<bool>(var_0, arg_0, true, false)), select(vec4<bool>(true, var_0, true, var_0), vec4<bool>(false, false, var_0, false), var_0), !vec4<bool>(var_0, false, true, var_0)), select(vec4<bool>(var_0, true, arg_0, var_0), select(vec4<bool>(arg_0, true, var_0, arg_0), vec4<bool>(var_0, var_0, var_0, var_0), true), true)), (1u << (1u % 32u)) < arg_3.a);
    let var_3 = Struct_2(_wgslsmith_div_u32(4294967295u, var_1.x));
    var_2 = vec4<bool>(all(!(!(!vec4<bool>(var_0, var_0, false, var_2.x)))), true, true, arg_0);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.a, var_1.x), vec2<u32>(_wgslsmith_clamp_u32(var_3.a, var_1.x, arg_3.a) ^ 1u, (arg_3.a >> (43385u % 32u)) ^ var_3.a) & vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), 0u));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>) -> Struct_3 {
    var var_0 = true;
    var_0 = !(false & any(vec4<bool>(true, true, false, true)));
    let var_1 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(-1i, u_input.a, 1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -1258i, u_input.a), vec3<i32>(u_input.a, -39909i, u_input.a))) ^ vec3<i32>(-abs(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), reverseBits(vec3<i32>(5839i, u_input.a, 1i))), u_input.a & u_input.a), vec3<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(13127i, u_input.a), vec2<i32>(0i, u_input.a))), _wgslsmith_clamp_i32(u_input.a, u_input.a, abs(u_input.a) << (~1u % 32u)), max(-u_input.a, ~u_input.a) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(-1i, 19565i))), vec3<i32>(-u_input.a, u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), select(arg_1.xz, u_input.c, false)) % 32u), u_input.a));
    var_0 = true;
    var_0 = ~(~(~func_2(false, vec4<f32>(-1210f, -1000f, -1409f, 113f), -458f, Struct_2(62108u)).x)) < arg_1.x;
    return Struct_3(true, Struct_2(1u), Struct_1(true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = func_4(_wgslsmith_mod_u32(~86970u >> (~arg_2.b.a % 32u), countOneBits(~u_input.c.x)) << (~_wgslsmith_add_u32(8492u, arg_0.b.a) % 32u), vec4<u32>(_wgslsmith_add_u32(77295u, arg_0.b.a) ^ func_2(arg_1.a, vec4<f32>(1f, 1f, 1f, 1f), -1136f, arg_2.b).x, _wgslsmith_sub_u32(arg_0.b.a, ~func_3(Struct_3(arg_1.a, Struct_2(30389u), arg_2.c), arg_2.c).x), ~1u, arg_0.b.a));
    let var_1 = -37541i;
    var var_2 = i32(-1i) * -reverseBits(-93764i);
    var var_3 = min(countOneBits(-47435i << (arg_2.b.a % 32u)), 16363i) >= ~reverseBits(~var_1 & 34871i);
    var var_4 = ~(~(~(~(~vec4<u32>(42042u, arg_2.b.a, var_0.b.a, u_input.c.x)))));
    return func_4(0u, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4038u, 26833u, 0u, 36964u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.a, var_4.x, arg_0.b.a, 1u), vec4<u32>(93989u, arg_0.b.a, 1u, arg_0.b.a)), ~vec4<u32>(35387u, 1u, 64494u, 1u)) >> ((func_3(func_4(11496u, vec4<u32>(u_input.c.x, var_0.b.a, arg_2.b.a, 45020u)), func_4(var_0.b.a, vec4<u32>(arg_0.b.a, 0u, 31702u, 0u)).c) >> (~abs(vec4<u32>(arg_0.b.a, 33743u, 23721u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))).c;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = func_3(func_4(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_3, ~arg_3), firstTrailingBit(~arg_3.x)), select(vec4<u32>(61430u, 0u, 50502u, 1u) | vec4<u32>(u_input.c.x, arg_1.b.a, 4294967295u, 23223u), vec4<u32>(u_input.b, 12659u, u_input.c.x, arg_3.x), select(vec4<bool>(true, true, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, false, arg_1.c.a), vec4<bool>(true, false, true, false))) & (~vec4<u32>(arg_3.x, 4294967295u, arg_2.a, arg_2.a) ^ vec4<u32>(63880u, 1u, 0u, arg_3.x))), arg_0).x;
    let var_1 = any(!(!(!select(vec3<bool>(arg_1.c.a, arg_1.a, false), vec3<bool>(false, arg_1.c.a, arg_0.a), vec3<bool>(false, true, true)))));
    let var_2 = Struct_1(true & arg_0.a);
    let var_3 = !select(!vec2<bool>(var_1, var_2.a), select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, arg_1.a), (true != var_2.a) && func_4(0u, vec4<u32>(0u, arg_1.b.a, arg_1.b.a, arg_3.x)).c.a), !(!(!vec2<bool>(arg_1.c.a, var_1))));
    let var_4 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i & _wgslsmith_add_i32(2147483647i, u_input.a), i32(-1i) * -1i), countOneBits(-vec3<i32>(u_input.a, 24649i, u_input.a) & (vec3<i32>(u_input.a, u_input.a, 53539i) >> (vec3<u32>(var_0, 29738u, 4294967295u) % vec3<u32>(32u)))));
    return arg_1.c;
}

fn func_1() -> vec3<bool> {
    var var_0 = func_6(func_5(func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(84140u, u_input.c.x), u_input.c), func_2(false, vec4<f32>(1000f, -1531f, -602f, 1485f), 158f, Struct_2(u_input.b))), vec4<u32>(1u >> (u_input.c.x % 32u), u_input.c.x, 4294967295u, func_3(Struct_3(false, Struct_2(1u), Struct_1(false)), Struct_1(false)).x)), Struct_1(true), func_4(20602u, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 26544u, u_input.c.x, u_input.c.x) << (vec4<u32>(u_input.c.x, 9834u, 0u, u_input.b) % vec4<u32>(32u)), vec4<u32>(0u, 70583u, u_input.c.x, u_input.c.x)))), func_4(_wgslsmith_sub_u32(u_input.c.x, ~(~u_input.c.x)), vec4<u32>(~(~u_input.b), 0u >> (u_input.b % 32u), 51172u, 34813u)), Struct_2(~_wgslsmith_mod_u32(func_2(false, vec4<f32>(792f, -217f, -1408f, -2035f), 208f, Struct_2(u_input.c.x)).x, 1499u)), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 16913u), vec2<u32>(0u, u_input.b))), vec2<u32>(_wgslsmith_div_u32(4294967295u, 71299u), ~0u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, 1021f, 1000f, 294f)))))));
    let var_2 = ~max(reverseBits(countOneBits(vec3<u32>(u_input.c.x, u_input.b, 4294967295u) << (vec3<u32>(u_input.c.x, u_input.b, 1u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, ~4294967295u, u_input.b), vec3<u32>(u_input.c.x, ~1u, 0u)));
    let var_3 = func_4(~4294967295u, max(vec4<u32>(11139u, 20026u, 1u, var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, 52639u, ~var_2.x, u_input.b), vec4<u32>(var_2.x ^ 9255u, 4294967295u, abs(var_2.x), ~46440u))));
    var var_4 = func_4(max(_wgslsmith_div_u32(71252u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 22849u, 21408u), var_2)), 32958u), func_3(var_3, Struct_1(var_3.a)));
    return vec3<bool>(!(_wgslsmith_sub_i32(u_input.a ^ u_input.a, u_input.a) < (-2147483647i >> (_wgslsmith_mod_u32(61664u, var_2.x) % 32u))), !any(select(vec3<bool>(var_4.a, var_4.a, true), select(vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.a, true, false), vec3<bool>(var_0.a, false, false)), any(vec4<bool>(var_4.c.a, false, var_3.a, var_3.a)))), func_4(~_wgslsmith_sub_u32(var_2.x, _wgslsmith_mult_u32(var_4.b.a, var_2.x)), vec4<u32>(abs(func_4(4294967295u, vec4<u32>(29072u, 0u, 4294967295u, var_3.b.a)).b.a), 0u, u_input.c.x, 15119u)).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !(!((0u <= u_input.c.x) | true)), true);
    var var_1 = var_0;
    var_1 = !(!func_1());
    let var_2 = func_4(func_4(u_input.b, firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 26259u), vec4<u32>(u_input.b, u_input.c.x, 27708u, u_input.c.x)))).b.a, (_wgslsmith_add_vec4_u32(func_3(Struct_3(var_1.x, Struct_2(u_input.b), Struct_1(false)), Struct_1(var_0.x)), vec4<u32>(43034u, 11926u, 0u, u_input.c.x) & vec4<u32>(0u, u_input.c.x, 1u, u_input.b)) << (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, 0u, 0u), vec4<u32>(u_input.c.x, u_input.b, 128411u, u_input.c.x), vec4<u32>(u_input.c.x, 29627u, u_input.c.x, u_input.b)), ~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.b)) % vec4<u32>(32u))) & (min(~vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x), vec4<u32>(u_input.b, u_input.c.x, 20430u, u_input.c.x)) | ~select(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u), vec4<u32>(72568u, 1u, u_input.b, 4294967295u), true)));
    var_1 = select(var_0, !(!(!select(var_0, vec3<bool>(false, true, true), vec3<bool>(var_0.x, false, var_0.x)))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(-1i) * -(vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(-612i, u_input.a))) | -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), ~vec2<i32>(u_input.a, -1i)));
}

