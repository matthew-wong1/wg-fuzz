struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = -620f;
    var var_1 = Struct_2(Struct_1(1u), countOneBits(~u_input.a), ~0i >= _wgslsmith_add_i32(-18554i ^ _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), firstTrailingBit(u_input.b.x)), Struct_1(66059u));
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_dot_vec3_u32((firstLeadingBit(vec3<u32>(68457u, 4294967295u, 1u)) ^ vec3<u32>(u_input.c, 4294967295u, var_1.b.x >> (u_input.c % 32u))) >> (_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(u_input.c, 28181u, 0u)) | u_input.a, reverseBits(var_1.b) << (vec3<u32>(var_1.b.x, 0u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(u_input.c, 4294967295u, var_1.d.a & var_1.d.a));
    var_0 = -891f;
    return max(_wgslsmith_mult_u32(29355u, countOneBits(var_1.d.a)), ~_wgslsmith_mod_u32(var_1.a.a, 4154u & var_1.a.a));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = -_wgslsmith_div_i32(max(~arg_1.d.x, _wgslsmith_sub_i32(-13993i, arg_1.d.x)), -1i);
    let var_1 = arg_1;
    let var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(func_3(), ~(~4294967295u)), u_input.a.yy);
    return Struct_1(~func_3());
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_4 {
    let var_0 = arg_2.a;
    let var_1 = arg_2;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(566f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2340f - -269f) * -551f) - -1093f))), _wgslsmith_f_op_f32(floor(-1005f)));
    var var_3 = any(vec3<bool>(false, false, true));
    let var_4 = !vec4<bool>(!any(select(vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, var_1.c), true)), false, arg_2.c, all(select(!vec2<bool>(arg_2.c, true), select(vec2<bool>(var_1.c, arg_0), vec2<bool>(false, false), vec2<bool>(true, arg_1)), false)));
    return Struct_4(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -506f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1634f), _wgslsmith_f_op_f32(min(-248f, 532f)))))), _wgslsmith_f_op_f32(566f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-738f - 1000f) - 895f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-590f)), -260f)))), firstLeadingBit(vec4<i32>(-1i, abs(-2147483647i), _wgslsmith_sub_i32(-2147483647i, -1i), 1i) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a.a, 0u, 0u, 33564u), vec4<u32>(arg_3.d.a, arg_2.b.x, arg_2.b.x, 47168u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), vec4<u32>(var_0.a, var_0.a, arg_2.a.a, arg_3.a.a)) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_3 {
    let var_0 = func_4(all(arg_0), true, Struct_2(func_2(!select(arg_0.zyz, vec3<bool>(arg_0.x, arg_1, arg_1), arg_0.wxx), Struct_4(39719u, -291f, -874f, u_input.d), u_input.b.x), _wgslsmith_mod_vec3_u32(~max(u_input.a, vec3<u32>(1u, 79623u, 21205u)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.c, 20794u, 8073u)), vec3<u32>(u_input.a.x, 47790u, 1u))), any(arg_0), func_2(vec3<bool>(arg_0.x, false && arg_1, true), Struct_4(70427u, _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(min(-435f, 281f)), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -2147483647i, u_input.d.x, u_input.b.x))), (-5385i ^ u_input.b.x) & _wgslsmith_clamp_i32(0i, -39066i, 14085i))), Struct_2(func_2(!arg_0.wyw, Struct_4(u_input.c, -1000f, _wgslsmith_f_op_f32(step(-666f, -1000f)), ~vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.d.x), vec3<u32>(0u, func_2(arg_0.zwz, Struct_4(1u, 308f, 617f, vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i)), u_input.d.x >> (0u % 32u)).a, 44402u), any(vec3<bool>(false, arg_1 & arg_0.x, arg_0.x | arg_1)), func_2(!vec3<bool>(false, true, arg_0.x), Struct_4(abs(3092u), _wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(659f + -884f), abs(vec4<i32>(-2147483647i, 0i, u_input.b.x, 25903i))), u_input.d.x)));
    var var_1 = var_0;
    var var_2 = func_2(vec3<bool>(select(!(!arg_0.x), !all(vec3<bool>(true, arg_1, false)), arg_1), arg_0.x | false, any(select(!vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), true))), func_4(true, !(!arg_1), Struct_2(func_2(!arg_0.zzz, Struct_4(16985u, -484f, var_1.b, var_1.d), 1i), ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(var_0.a, 0u, 1u)), !arg_1, func_2(select(arg_0.xyw, vec3<bool>(false, true, arg_0.x), arg_1), func_4(arg_1, true, Struct_2(Struct_1(var_0.a), vec3<u32>(33745u, 16202u, 82401u), arg_0.x, Struct_1(1u)), Struct_2(Struct_1(47604u), u_input.a, arg_0.x, Struct_1(u_input.a.x))), var_0.d.x)), Struct_2(func_2(arg_0.zyx, Struct_4(4294967295u, var_0.b, 1240f, u_input.d), var_1.d.x << (0u % 32u)), select(vec3<u32>(var_0.a, u_input.a.x, u_input.c) << (vec3<u32>(var_0.a, 1u, var_1.a) % vec3<u32>(32u)), select(u_input.a, vec3<u32>(var_0.a, 42779u, var_0.a), false), vec3<bool>(true, true, arg_0.x)), !arg_0.x, Struct_1(~25494u))), u_input.d.x ^ u_input.b.x);
    let var_3 = vec3<i32>(i32(-1i) * -14089i, abs(max(2147483647i, min(countOneBits(var_0.d.x), -34437i))), _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(var_1.d.x, u_input.d.x, var_1.d.x) ^ vec3<i32>(24518i, 6222i, -2147483647i)), vec3<i32>(abs(91788i), ~(-u_input.b.x), _wgslsmith_mult_i32(1i, u_input.d.x))));
    var var_4 = firstTrailingBit(var_2.a);
    return Struct_3(Struct_2(func_2(vec3<bool>(arg_0.x, false, false), func_4(all(arg_0.wz), arg_0.x, Struct_2(Struct_1(var_0.a), u_input.a, arg_0.x, Struct_1(u_input.a.x)), Struct_2(Struct_1(var_1.a), vec3<u32>(var_1.a, 4294967295u, 67246u), arg_0.x, Struct_1(var_1.a))), var_3.x), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) & u_input.a, vec3<u32>(1u, var_2.a & 6891u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_2.a, 64061u, 4294967295u), vec4<u32>(var_2.a, 51847u, var_1.a, var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-312f * var_1.b) - -257f) > -1053f, Struct_1(_wgslsmith_mult_u32(var_2.a, 1u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-2267f + -830f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-385f, var_1.b) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, 2445f)))))), select(arg_0, arg_0, ~(~var_0.a) < ~(~36363u)), Struct_2(func_2(select(arg_0.wxx, select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_1), vec3<bool>(true, arg_0.x, false)), !arg_0.ywz), Struct_4(40205u, var_0.b, 1310f, vec4<i32>(-38514i, 29907i, var_0.d.x, u_input.b.x)), ~_wgslsmith_add_i32(var_0.d.x, var_0.d.x)), vec3<u32>(var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, var_2.a), vec2<u32>(var_1.a, var_1.a)), u_input.a.x) >> (u_input.a % vec3<u32>(32u)), !(!arg_0.x), Struct_1(~_wgslsmith_mult_u32(var_2.a, 0u))), Struct_1(reverseBits(~(var_1.a & var_1.a))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = select(func_1(select(vec4<bool>(func_1(arg_1.c, true).c.x, !arg_1.d.c, arg_1.c.x, true), !func_1(vec4<bool>(false, false, arg_1.a.c, true), false).c, all(func_1(vec4<bool>(arg_1.d.c, true, arg_1.a.c, arg_1.c.x), false).c)), !(arg_0 <= arg_0) | any(!vec2<bool>(false, arg_1.c.x))).a.b, u_input.a << (u_input.a % vec3<u32>(32u)), !vec3<bool>(false, !(arg_1.a.c & arg_1.a.c), !func_1(vec4<bool>(false, arg_1.c.x, false, false), true).d.c));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c, u_input.c)), vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.e.a, var_0.x, 29055u), u_input.a), vec3<u32>(5382u, 0u, arg_2.x)))));
    var var_2 = ~reverseBits(vec2<i32>(arg_0, _wgslsmith_sub_i32(u_input.b.x, ~19457i)));
    var_0 = _wgslsmith_sub_vec3_u32(countOneBits(reverseBits(arg_1.d.b)), vec3<u32>(abs(4294967295u) ^ var_0.x, var_0.x << (u_input.a.x % 32u), 1u) | ~(u_input.a >> (arg_1.a.b % vec3<u32>(32u))));
    let var_3 = arg_1.d.d;
    return Struct_3(func_1(vec4<bool>(true, !(arg_1.d.c || arg_1.a.c), false, arg_1.d.c), select(any(!vec4<bool>(arg_1.d.c, true, true, false)), true, true)).d, _wgslsmith_f_op_vec2_f32(-arg_1.b), vec4<bool>(arg_1.d.c, !all(vec4<bool>(true, false, false, arg_1.a.c)) | (false & select(false, true, arg_1.c.x)), true, arg_1.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + -726f))), Struct_2(func_2(select(vec3<bool>(arg_1.d.c, true, true), select(arg_1.c.zxz, arg_1.c.yxz, vec3<bool>(false, false, false)), arg_1.d.c), Struct_4(func_2(vec3<bool>(false, arg_1.c.x, true), Struct_4(2367u, arg_1.b.x, arg_1.b.x, u_input.d), var_2.x).a, _wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), u_input.d), reverseBits(min(2147483647i, -211i))), arg_1.a.b, any(arg_1.c.zy), Struct_1(var_1.a)), func_2(arg_1.c.zyy, func_4(arg_1.d.c != all(arg_1.c.zw), true, arg_1.d, Struct_2(func_2(arg_1.c.yzy, Struct_4(27613u, arg_1.b.x, arg_1.b.x, vec4<i32>(u_input.d.x, arg_0, 2147483647i, arg_0)), 0i), ~vec3<u32>(54690u, 16243u, var_3.a), arg_1.a.c, Struct_1(u_input.a.x))), i32(-1i) * -31691i));
}

fn func_6(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_4(func_5(countOneBits(-62539i), Struct_3(arg_0.d, vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1)), -127f), !arg_0.c, arg_0.a, Struct_1(~9432u)), vec4<u32>(func_1(arg_0.c, any(vec3<bool>(arg_0.c.x, true, true))).e.a, ~75803u, _wgslsmith_mod_u32(4294967295u, 1u & u_input.a.x), ~63421u)).d.d.a, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(-149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x)))))), _wgslsmith_f_op_f32(-arg_1), -vec4<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b.x) | _wgslsmith_sub_i32(1588i, u_input.b.x), firstLeadingBit(select(-38863i, u_input.d.x, true)), u_input.d.x | firstTrailingBit(-45208i), _wgslsmith_mod_i32(firstLeadingBit(u_input.b.x), u_input.d.x)));
    var var_1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 2435u, 7524u, 1u), vec4<u32>(6095u, 30489u, u_input.c, u_input.a.x)), ~vec4<u32>(4294967295u, 4294967295u, 73011u, 0u) & ~vec4<u32>(23582u, var_0.a, 4294967295u, arg_0.e.a)), ~(13354u | ~arg_0.e.a));
    let var_2 = vec4<i32>(firstLeadingBit(-11169i), 39908i, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(_wgslsmith_add_i32(select(-18442i, 1i, arg_0.c.x), u_input.d.x), _wgslsmith_div_i32(-2766i, var_0.d.x))), max(reverseBits(_wgslsmith_sub_i32(var_0.d.x, ~38835i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -4291i, abs(0i)), u_input.d.xwx)));
    var_0 = Struct_4(~4294967295u, func_5(-11422i, func_1(select(!arg_0.c, arg_0.c, true), true), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 75143u, 62089u), vec4<u32>(arg_0.d.a.a, arg_0.a.b.x, arg_0.a.a.a, 91589u)) >> (firstTrailingBit(vec4<u32>(91669u, var_0.a, 15958u, var_0.a)) % vec4<u32>(32u)), max(vec4<u32>(var_0.a, 0u, 4294967295u, 9169u), vec4<u32>(21220u, 32715u, 4294967295u, 0u)))).b.x, arg_0.b.x, var_0.d);
    var_1 = arg_0.a.d.a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(u_input.d.x, func_1(vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, u_input.a.x) | vec4<u32>(10560u, u_input.a.x, u_input.a.x, u_input.a.x), ~vec4<u32>(46184u, u_input.a.x, u_input.a.x, 30509u)), abs(select(vec4<u32>(u_input.c, 1u, 13221u, u_input.a.x), vec4<u32>(15953u, u_input.c, 1u, u_input.a.x), vec4<bool>(true, true, true, true))))), 428f);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 868f, 1443f, -945f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(180f, -1162f, -906f, 357f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-361f, 543f, 1047f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(1958f, -761f, 2028f, 1455f), vec4<f32>(-1530f, 1702f, -1799f, 1000f)), var_0.c & true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1456f, -573f, -1422f, -1174f) * vec4<f32>(-1213f, -235f, -249f, 229f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -235f, 1424f, -235f) + vec4<f32>(-129f, -348f, -392f, -1000f)))))));
    var var_2 = 0u;
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1118f, -1681f, 1046f, var_1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, 1000f, var_1.x))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, -116f, var_1.x), vec4<f32>(var_1.x, 1355f, -1314f, 1245f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1233f, 1512f, var_1.x, -1536f), vec4<f32>(var_1.x, var_1.x, -495f, 166f))), !any(vec4<bool>(true, var_0.c, var_0.c, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1311f, -1068f, 1000f, var_1.x)) + vec4<f32>(var_1.x, -1572f, var_1.x, -149f))), true))));
    let var_3 = ~(firstTrailingBit(vec2<u32>(firstTrailingBit(25624u), 5707u)) & _wgslsmith_sub_vec2_u32(u_input.a.zx, max(_wgslsmith_mult_vec2_u32(vec2<u32>(14796u, u_input.c), vec2<u32>(var_0.a.a, 0u)), ~u_input.a.yx)));
    var var_4 = func_4(false, !(!all(vec2<bool>(true, var_0.c))), Struct_2(func_5(u_input.b.x << (abs(var_3.x) % 32u), Struct_3(func_1(vec4<bool>(var_0.c, var_0.c, var_0.c, false), true).d, vec2<f32>(var_1.x, -748f), func_1(vec4<bool>(var_0.c, var_0.c, false, var_0.c), false).c, func_6(Struct_3(Struct_2(var_0.a, vec3<u32>(1u, var_0.b.x, var_0.d.a), var_0.c, var_0.d), vec2<f32>(644f, var_1.x), vec4<bool>(true, false, false, false), var_0, Struct_1(var_3.x)), 1673f), Struct_1(11080u)), vec4<u32>(~var_0.b.x, func_4(false, false, var_0, var_0).a, u_input.c, firstLeadingBit(var_3.x))).a.a, func_1(func_5(8421i, Struct_3(Struct_2(var_0.d, vec3<u32>(4294967295u, 0u, u_input.c), true, Struct_1(67955u)), var_1.wx, vec4<bool>(false, true, var_0.c, var_0.c), var_0, Struct_1(var_0.d.a)), vec4<u32>(var_0.b.x, var_3.x, var_0.d.a, 44798u)).c, func_6(Struct_3(var_0, var_1.wx, vec4<bool>(true, true, false, false), var_0, Struct_1(4294967295u)), -177f).c).d.b & select(var_0.b, vec3<u32>(0u, 21153u, 45547u), false), (2147483647i >> (u_input.c % 32u)) != abs(u_input.d.x), var_0.a), func_6(func_5(firstLeadingBit(~2147483647i), func_1(func_1(vec4<bool>(var_0.c, false, false, false), var_0.c).c, var_0.c), ~vec4<u32>(var_3.x, 27326u, u_input.a.x, 42165u)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(1073f)))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

