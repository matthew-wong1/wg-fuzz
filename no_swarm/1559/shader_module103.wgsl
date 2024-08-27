struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(max(_wgslsmith_div_vec3_i32(arg_3.yzy, vec3<i32>(1i, -14349i, 0i)), -vec3<i32>(0i, u_input.d, -44011i)), arg_3.www), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.d, 2147483647i), _wgslsmith_add_i32(10075i, 1i)), -1i, i32(-1i) * -1i), ~arg_3.xww) | arg_3.xxz;
    var var_1 = ~arg_3.wzx;
    var var_2 = firstTrailingBit(~(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.b.x, arg_0, arg_0), _wgslsmith_div_vec4_u32(vec4<u32>(45348u, arg_0, u_input.b.x, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, 58077u)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x)))) * arg_2.x) + arg_2.x);
    let var_4 = Struct_1(select((min(vec4<u32>(u_input.c, 87655u, var_2.x, 81806u), vec4<u32>(38543u, var_2.x, arg_0, u_input.b.x)) | ~vec4<u32>(arg_0, var_2.x, 1u, 1u)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 6969u), var_2.ywz), _wgslsmith_dot_vec3_u32(var_2.wxx, var_2.yww), _wgslsmith_add_u32(23939u, 96474u), arg_0) % vec4<u32>(32u)), vec4<u32>(~(~u_input.c), u_input.b.x, 0u, ~u_input.b.x), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, true, true), true)));
    return any(vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), true, true));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = select(false, select(arg_1.x == ~_wgslsmith_clamp_u32(arg_1.x, 0u, 60913u), any(vec2<bool>(any(vec2<bool>(false, false)), true)), false), !func_3(reverseBits(arg_1.x), 1f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, -552f, -1026f, 811f)))), ~(vec4<i32>(u_input.d, u_input.d, u_input.d, 20341i) << (arg_0 % vec4<u32>(32u)))));
    let var_1 = Struct_4(max(min(firstLeadingBit(vec2<u32>(0u, u_input.a)), _wgslsmith_add_vec2_u32(arg_1, arg_1)) >> (abs(arg_1 >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~arg_0.zz)));
    var var_2 = reverseBits(-(u_input.d | 48973i));
    let var_3 = vec3<i32>(u_input.e.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.d, 10998i, _wgslsmith_sub_i32(-43863i, u_input.d)), min(~vec3<i32>(u_input.d, u_input.e.x, u_input.e.x), vec3<i32>(9580i, 1i, u_input.e.x)), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-62158i, -2147483647i, u_input.e.x), vec3<i32>(u_input.e.x, -2147483647i, 0i)))), vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(51233i), u_input.e.x), u_input.e.x, firstTrailingBit(-67405i) & _wgslsmith_mod_i32(43541i, 1i))), firstLeadingBit(i32(-1i) * -(~u_input.e.x)));
    var var_4 = Struct_5(-var_3, select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, any(vec2<bool>(false, true))), true), !vec4<bool>(all(vec2<bool>(false, false)), false, any(vec4<bool>(true, true, true, true)), func_3(_wgslsmith_mod_u32(0u, arg_1.x), _wgslsmith_f_op_f32(596f + -634f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(645f, 626f, -1383f, -414f))), vec4<i32>(var_3.x, var_3.x, 22572i, 29750i))), 271f);
    return Struct_2(!select(select(vec4<bool>(false, false, var_4.b.x, var_4.b.x), !var_4.c, var_4.b.x), vec4<bool>(true, true, !var_4.b.x, true), var_4.b.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = u_input.c;
    var var_1 = func_2(vec4<u32>(countOneBits(4294967295u) << (~arg_2.x % 32u), 32566u, select(~arg_2.x, u_input.b.x, true), 0u) >> (~(~vec4<u32>(arg_2.x, arg_2.x, 4294967295u, 61304u) & ~vec4<u32>(u_input.b.x, arg_2.x, u_input.c, u_input.a)) % vec4<u32>(32u)), u_input.b);
    var var_2 = Struct_4(firstTrailingBit(firstLeadingBit(~(~vec2<u32>(u_input.a, arg_2.x)))));
    let var_3 = Struct_1(vec4<u32>(~u_input.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(10412u, 0u), arg_2) % 32u), select(~(~u_input.a), 1u, var_1.a.x), ~26896u, 52164u));
    let var_4 = ~_wgslsmith_div_vec4_i32((~vec4<i32>(arg_1.a.x, -2147483647i, 67117i, 10289i) << (var_3.a % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-45430i, 1i, arg_1.a.x, arg_1.a.x)), ~vec4<i32>(20511i, u_input.d, 9521i, 62656i)), vec4<i32>(1i, firstLeadingBit(-2147483647i) ^ ~arg_1.a.x, arg_1.a.x, -56724i));
    return vec2<bool>(any(func_2(var_3.a, vec2<u32>(var_2.a.x << (24919u % 32u), var_3.a.x)).a.xw), select(!var_1.a.x, arg_0.a.x, true) | all(vec2<bool>(arg_2.x >= arg_2.x, var_1.a.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(all(func_4(func_2(vec4<u32>(arg_1.a.x, 1u, 1u, 1u) & arg_1.a, vec2<u32>(arg_1.a.x, 50609u) & vec2<u32>(48864u, u_input.c)), Struct_5(~vec3<i32>(u_input.e.x, -1i, -9616i), vec2<bool>(true, true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-1237f + 731f)), vec2<u32>(~0u, u_input.a))));
    var_0 = Struct_3(func_2(_wgslsmith_sub_vec4_u32(~arg_1.a, ~vec4<u32>(u_input.b.x, 11221u, 1u, 0u)), vec2<u32>(1u, ~66601u)).a.x);
    var_0 = Struct_3(!any(vec4<bool>(var_0.a, any(vec3<bool>(true, var_0.a, var_0.a)), false, true)));
    var_0 = Struct_3((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-975f))) == -155f) | select(true, true, true));
    var var_1 = Struct_3(true);
    return Struct_2(!vec4<bool>(var_0.a, var_1.a, any(vec3<bool>(false, var_0.a, var_1.a)), true));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = 868f;
    var var_1 = 22613u;
    var_1 = 76573u;
    let var_2 = Struct_2(func_1(vec3<u32>(~1u, _wgslsmith_sub_u32(countOneBits(13568u), u_input.b.x), 7189u), Struct_1(~min(vec4<u32>(u_input.b.x, u_input.c, 0u, u_input.a), vec4<u32>(0u, 4294967295u, u_input.a, 1u)))).a);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), arg_3)))), 1000f);
    return !var_2.a.x || false;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.d;
    let var_1 = Struct_5(~(-(min(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.d, 2147483647i, 1i)) << (reverseBits(vec3<u32>(21753u, 4795u, 1u)) % vec3<u32>(32u)))), select(!arg_0, !select(!vec2<bool>(arg_1.x, true), select(vec2<bool>(arg_1.x, false), arg_0, true), arg_1.x == arg_0.x), !(!arg_1.x)), !func_1(~(~vec3<u32>(7560u, 47228u, 0u)), Struct_1(vec4<u32>(38183u, u_input.b.x, 89889u, u_input.a) ^ vec4<u32>(1u, u_input.c, u_input.a, 0u))).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -649f), 225f, !any(!vec2<bool>(true, arg_1.x)))));
    let var_2 = _wgslsmith_div_vec4_i32(max(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.a.yy, u_input.e), var_1.a.xz), ~1i, _wgslsmith_clamp_i32(max(u_input.e.x, var_1.a.x), 46461i, u_input.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(~(-1i), u_input.d >> (u_input.c % 32u), _wgslsmith_clamp_i32(-2147483647i, -9448i, var_1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(8298i, -16532i), u_input.e)), -vec4<i32>(-13138i, 1i, 0i, -2147483647i) << (~vec4<u32>(33573u, 36580u, u_input.b.x, u_input.c) % vec4<u32>(32u)))), ~select(vec4<i32>(1i, u_input.d, u_input.e.x, 89307i), select(vec4<i32>(27055i, -18803i, var_1.a.x, 2147483647i), vec4<i32>(u_input.d, 5895i, var_1.a.x, var_1.a.x), false), var_1.c) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.e.x, var_1.a.x, -2147483647i, u_input.e.x) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.c, 1u), vec4<u32>(u_input.c, 19751u, 17190u, 19990u), vec4<u32>(u_input.c, u_input.c, 14984u, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -1936i, -7307i), vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, u_input.e.x)) & firstTrailingBit(vec4<i32>(u_input.e.x, u_input.d, -5194i, -32121i)), ~vec4<i32>(u_input.e.x, var_1.a.x, 2147483647i, -2918i)));
    var_0 = abs(17908i);
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(max(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u)), 4294967295u, 87928u, _wgslsmith_dot_vec4_u32(vec4<u32>(68865u, u_input.a, u_input.a, 0u), vec4<u32>(82639u, 1u, u_input.a, 4294967295u))), (vec4<u32>(4294967295u, 41579u, 4294967295u, u_input.b.x) >> (vec4<u32>(u_input.c, 1u, u_input.b.x, u_input.c) % vec4<u32>(32u))) & min(vec4<u32>(1u, u_input.a, u_input.b.x, 1u), vec4<u32>(57437u, 1u, 0u, u_input.c))), select(reverseBits(vec4<u32>(66496u, u_input.a, u_input.b.x, u_input.b.x) & vec4<u32>(4294967295u, 1u, 7737u, 4294967295u)), ~(~vec4<u32>(4294967295u, u_input.b.x, u_input.c, u_input.a)), true)));
    return Struct_1(vec4<u32>(~(~reverseBits(102586u)), u_input.a, var_3.a.x, reverseBits(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!vec2<bool>(func_5(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.e.x), vec3<i32>(u_input.d, u_input.e.x, -1i), vec3<i32>(u_input.e.x, u_input.e.x, 0i)), any(vec2<bool>(false, false)), func_1(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), Struct_1(vec4<u32>(5866u, 4294967295u, u_input.a, 49299u))), _wgslsmith_f_op_f32(205f - -1000f)), any(vec3<bool>(true, true, true)) || true), select(!func_4(Struct_2(vec4<bool>(true, false, false, true)), Struct_5(vec3<i32>(-1i, u_input.d, -2360i), vec2<bool>(true, true), vec4<bool>(false, true, false, false), 541f), vec2<u32>(u_input.b.x, u_input.a) << (vec2<u32>(53286u, 1u) % vec2<u32>(32u))), func_2(_wgslsmith_div_vec4_u32(vec4<u32>(10157u, 29777u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.c, 1u, 33785u, 0u)), ~vec2<u32>(u_input.b.x, 78164u)).a.zz, vec2<bool>(true, true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(floor(420f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(815f))), 1f), -1065f, _wgslsmith_f_op_f32(972f * _wgslsmith_f_op_f32(trunc(-1000f))))));
    var_0 = Struct_1(abs(var_0.a));
    var var_2 = 724f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -766f);
    let var_3 = _wgslsmith_div_u32(_wgslsmith_div_u32(abs(~118417u), u_input.a), countOneBits(4294967295u));
    let var_4 = Struct_5(~vec3<i32>(1i, max(-32326i, 0i), _wgslsmith_mult_i32(u_input.e.x, u_input.d)) | _wgslsmith_add_vec3_i32(min(vec3<i32>(-1i, u_input.e.x, -1i), vec3<i32>(u_input.e.x, u_input.d, 12063i)) & -vec3<i32>(-1i, u_input.d, u_input.e.x), _wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.e.x, 20061i, -10659i), vec3<i32>(u_input.e.x, -1i, 2147483647i), false), vec3<i32>(-2147483647i, u_input.d, -18149i) | vec3<i32>(-2147483647i, 2147483647i, 1i))), func_1(~vec3<u32>(1434u, 48303u, var_3) ^ ~(~vec3<u32>(u_input.b.x, var_3, var_0.a.x)), func_6(func_4(func_1(vec3<u32>(var_3, 0u, 46003u), Struct_1(var_0.a)), Struct_5(vec3<i32>(u_input.d, u_input.d, u_input.e.x), vec2<bool>(true, true), vec4<bool>(true, false, false, false), var_1.x), var_0.a.wx), func_2(var_0.a, vec2<u32>(24222u, 13937u) << (vec2<u32>(4294967295u, var_0.a.x) % vec2<u32>(32u))).a.yw)).a.zy, !(!(!func_2(vec4<u32>(var_0.a.x, u_input.c, var_0.a.x, var_3), var_0.a.xy).a)), _wgslsmith_f_op_f32(f32(-1f) * -518f));
    let var_5 = var_4.a.xz;
    var var_6 = var_4.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(select(var_5.x, 0i, true) ^ (var_4.a.x | var_5.x), u_input.d), reverseBits(u_input.e >> (u_input.b % vec2<u32>(32u))) | vec2<i32>(var_5.x, _wgslsmith_sub_i32(var_5.x, 2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -251f), -1549f), var_1.yyw, var_0.a.yxz);
}

