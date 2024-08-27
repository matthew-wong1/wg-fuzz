struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u);
    let var_1 = Struct_2(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, 1i, u_input.d, -68018i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, u_input.d, -3894i, 1i), select(vec4<i32>(-4649i, -1i, -13464i, 67678i), vec4<i32>(u_input.d, u_input.d, -20766i, -8939i), false), vec4<i32>(11642i, u_input.b, u_input.a, u_input.a) & vec4<i32>(u_input.b, u_input.a, -49293i, u_input.d))) & abs(firstTrailingBit(~vec4<i32>(-59941i, 46102i, u_input.a, u_input.b))), arg_1, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, arg_1.x) << (arg_1.x % 32u), ~(~u_input.c.x)), 62560u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -275f, 1876f))))), Struct_1(abs(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 7752i, 0i, u_input.a)), ~(-u_input.d), vec4<f32>(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1484f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f * 643f))), vec2<i32>(2147483647i, u_input.d)));
    let var_2 = Struct_1(vec4<i32>(14177i, var_1.e.a.x, 0i, var_1.e.a.x), ~u_input.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, 257f, 541f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 971f, 937f, -667f))))), var_1.a.zy);
    let var_3 = !select(vec3<bool>(firstTrailingBit(4294967295u) == 23910u, true, select(true, true, 746f <= var_2.c.x)), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), true)), true);
    var var_4 = -select(_wgslsmith_sub_vec3_i32(var_1.a.xyz, var_1.e.a.wxy), -vec3<i32>(u_input.b, ~var_2.b, -2147483647i), select(!vec3<bool>(var_3.x, true, var_3.x), !select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(var_3.x, var_3.x, true), true), select(var_3, vec3<bool>(var_3.x, false, var_3.x), true)));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, countOneBits(var_2.b >> (4741u % 32u))), var_2.d ^ ((vec2<i32>(-19739i, -2147483647i) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(var_4.zz, var_1.a.ww))) & min(select(_wgslsmith_clamp_i32(countOneBits(2147483647i), u_input.d, _wgslsmith_dot_vec3_i32(var_2.a.xxz, vec3<i32>(2147483647i, var_4.x, var_4.x))), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, 56134i, -17226i), var_1.a.ywy), var_3.x), 1i);
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.c;
    let var_1 = vec3<u32>(~abs(~u_input.c.x), var_0.x ^ abs(~62493u), 1u) ^ vec3<u32>(0u, ~(_wgslsmith_mult_u32(56111u, 1u) | u_input.c.x), _wgslsmith_mod_u32(~u_input.c.x, abs(1u)));
    var var_2 = Struct_1(-vec4<i32>(2147483647i, u_input.d, -2147483647i, _wgslsmith_mult_i32(func_3(vec2<f32>(-1524f, -382f), var_1), 1i)), u_input.d, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(515f, 1352f, -894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1158f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, -144f, 1129f, 382f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(133f, -1029f, 1593f, -1000f)))), vec4<f32>(-615f, _wgslsmith_f_op_f32(sign(146f)), _wgslsmith_f_op_f32(sign(472f)), _wgslsmith_f_op_f32(select(942f, -632f, true))))), !vec4<bool>(u_input.c.x == var_0.x, true, true, true))), select(-vec2<i32>(abs(u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.d), vec3<i32>(2147483647i, u_input.a, u_input.a))), firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d), vec2<i32>(u_input.b, u_input.a)), -1i)), vec2<bool>(true, select(any(vec3<bool>(true, true, false)), false, true))));
    var var_3 = ~(_wgslsmith_sub_vec3_i32(var_2.a.xwz & firstTrailingBit(var_2.a.yzw), vec3<i32>(var_2.a.x, _wgslsmith_add_i32(u_input.b, u_input.d), -42986i)) << (~vec3<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(var_1.x, var_1.x, 1u)), u_input.c.x) % vec3<u32>(32u)));
    let var_4 = _wgslsmith_mod_vec4_i32(var_2.a, min(max(~(vec4<i32>(var_2.a.x, var_3.x, u_input.a, 0i) & vec4<i32>(19999i, var_3.x, 8202i, var_2.d.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b, var_3.x, -60529i, 2147483647i), vec4<i32>(-18074i, var_2.a.x, 1i, 34916i)), -var_2.a)), -vec4<i32>(-3590i, var_2.d.x << (4294967295u % 32u), -8309i, var_2.a.x | 34504i)));
    return Struct_1(reverseBits(firstTrailingBit(~(-var_4))), _wgslsmith_mult_i32(-_wgslsmith_mod_i32(32888i, -26233i), ~(-1i)), var_2.c, vec2<i32>(var_4.x << (~var_0.x % 32u), _wgslsmith_sub_i32(var_3.x, -firstTrailingBit(u_input.a))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0.c.x;
    var var_1 = Struct_2(~(arg_3.a >> (max(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), vec4<u32>(4294967295u, 0u, 41564u, u_input.c.x)) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), ~vec4<u32>(59524u, 4294967295u, 41871u, u_input.c.x)) % vec4<u32>(32u)), select(~((vec3<u32>(29524u, u_input.c.x, u_input.c.x) >> (vec3<u32>(4294967295u, 39066u, u_input.c.x) % vec3<u32>(32u))) & firstLeadingBit(vec3<u32>(50826u, 14783u, u_input.c.x))), ~max(_wgslsmith_div_vec3_u32(vec3<u32>(32173u, 1u, 19725u), vec3<u32>(u_input.c.x, 0u, u_input.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 53944u, 69168u), vec3<u32>(14181u, 25665u, u_input.c.x))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_1), true))), 1u, _wgslsmith_f_op_vec3_f32(-arg_3.c.xzz), arg_3);
    var var_2 = Struct_1(-_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(arg_3.a, var_1.a), vec4<i32>(u_input.d, arg_3.a.x, var_1.a.x, 2147483647i)) | _wgslsmith_div_vec4_i32(select(abs(arg_3.a), firstTrailingBit(vec4<i32>(arg_0.a.x, u_input.a, arg_2.x, arg_3.b)), false), arg_0.a | -arg_0.a), -14030i, _wgslsmith_f_op_vec4_f32(exp2(arg_3.c)), abs(-arg_0.a.wx));
    let var_3 = vec4<i32>(min(max(_wgslsmith_mult_i32(1i, -2147483647i), ~firstTrailingBit(-1i)), i32(-1i) * -18686i), firstLeadingBit(_wgslsmith_mod_i32(var_1.a.x, -90424i)), ~(_wgslsmith_sub_i32(1i, abs(var_2.d.x)) | -countOneBits(-14308i)), arg_3.d.x ^ _wgslsmith_add_i32(~_wgslsmith_mult_i32(var_1.e.a.x, arg_2.x), u_input.b));
    let var_4 = u_input.c.x | var_1.b.x;
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> bool {
    let var_0 = Struct_2(arg_1.a, abs(vec3<u32>(~u_input.c.x, ~120780u, u_input.c.x << (4294967295u % 32u))) & countOneBits(vec3<u32>(4294967295u, u_input.c.x, ~0u)), 49879u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.c.wyy, vec3<f32>(arg_1.c.x, arg_1.c.x, arg_1.c.x)))))), arg_1);
    var var_1 = arg_1.c.zy;
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(-18059i, ~(u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, 7644u), vec3<u32>(1u, var_0.b.x, var_0.b.x)) % 32u)), 21753i), select(firstLeadingBit(countOneBits(var_0.a.xyw)), var_0.a.xzz, all(!(!vec4<bool>(false, false, arg_3, arg_3)))));
    var_1 = vec2<f32>(-347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -517f) - arg_1.c.x))));
    var var_3 = func_4(var_0.e, arg_3, vec3<i32>(~(0i | u_input.d), 3152i, _wgslsmith_mult_i32(-1i, var_2.x)), arg_1).c.wy;
    return false;
}

fn func_1() -> bool {
    var var_0 = vec2<bool>(func_5(1i, func_4(func_2(), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), min(_wgslsmith_sub_vec3_i32(vec3<i32>(34284i, u_input.d, u_input.d), vec3<i32>(-16662i, -1i, 2147483647i)), vec3<i32>(u_input.b, 0i, -1i)), Struct_1(-vec4<i32>(u_input.d, 2147483647i, u_input.b, u_input.b), 0i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1620f, -1000f, 128f, -2180f) + vec4<f32>(-1684f, -448f, 975f, 833f)), vec2<i32>(-1i, 1i))), func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(338f, 1056f), vec2<f32>(-120f, -448f))), vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 5281u), 26773u, ~u_input.c.x)), -313f <= _wgslsmith_f_op_f32(-404f - _wgslsmith_f_op_f32(ceil(-355f)))), !(u_input.c.x != ~(~u_input.c.x)));
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_add_i32(max(func_2().a.x, u_input.d ^ 1i), u_input.a), u_input.d, _wgslsmith_add_i32(func_2().b, -1i), u_input.a), select(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(93813u, 1u, u_input.c.x)), vec3<u32>(0u, u_input.c.x, u_input.c.x)), ~vec3<u32>(40223u, 1u, u_input.c.x), ~(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x))), select(~vec3<u32>(28604u, 0u, 34908u) & vec3<u32>(u_input.c.x, 56683u, u_input.c.x), ~vec3<u32>(1u, 0u, u_input.c.x), vec3<bool>(u_input.c.x == 4294967295u, true, u_input.b <= 54733i)), vec3<bool>(all(!vec2<bool>(var_0.x, true)), true, var_0.x)), abs(firstLeadingBit(_wgslsmith_div_u32(u_input.c.x, u_input.c.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-875f, _wgslsmith_div_f32(637f, 1233f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(408f, -739f, -649f), vec3<f32>(-3075f, -235f, -111f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, -1301f, 531f)), false))))), Struct_1(~(-vec4<i32>(-2147483647i, 1i, -1526i, u_input.a)), -2147483647i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, 620f), _wgslsmith_f_op_f32(-1148f * -631f), _wgslsmith_f_op_f32(-357f - 1000f), 405f) * vec4<f32>(_wgslsmith_f_op_f32(min(-516f, -469f)), 430f, _wgslsmith_f_op_f32(floor(-168f)), 1425f)), select(vec2<i32>(u_input.d, firstLeadingBit(u_input.a)), ~abs(vec2<i32>(u_input.d, 35800i)), select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x)), vec2<bool>(true, true), false))));
    var_0 = vec2<bool>(var_0.x, func_5(u_input.a, var_1.e, ~(-var_1.e.a.x), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), false))));
    var var_2 = ~vec4<u32>(var_1.c, ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 59655u, u_input.c.x | 0u), ~vec3<u32>(u_input.c.x, 1u, var_1.c)), firstTrailingBit(~select(51418u, 0u, false)));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(var_1.e.a, ~var_1.a) | -(~(~vec4<i32>(u_input.d, -33613i, 18650i, u_input.a))), _wgslsmith_mult_i32(-9886i, var_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.e.c.x, 1936f), _wgslsmith_f_op_f32(floor(var_1.e.c.x)), 222f, _wgslsmith_f_op_f32(-var_1.e.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(310f, var_1.d.x, var_1.d.x, -1392f) * _wgslsmith_f_op_vec4_f32(-var_1.e.c))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-988f * var_1.e.c.x), _wgslsmith_f_op_f32(-var_1.d.x), var_1.e.c.x, 1f))), ~(~vec2<i32>(2147483647i, 1i)) >> (~vec2<u32>(~u_input.c.x, ~4294967295u) % vec2<u32>(32u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(true, true, all(vec4<bool>(false, false, true, true))) || true;
    var var_1 = u_input.c.x;
    let var_2 = vec4<bool>(all(vec4<bool>(false, all(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)) | false, u_input.b >= _wgslsmith_clamp_i32(u_input.a, -1i, u_input.b))), func_1(), true, true);
    let var_3 = -1521f;
    var var_4 = vec3<bool>(-1268f > _wgslsmith_f_op_f32(sign(-324f)), _wgslsmith_add_u32(3777u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c)) > _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 84845u), abs(vec2<u32>(20160u, 11206u)))), false);
    let var_5 = u_input.c.x;
    var_4 = select(var_2.yxz, !(!vec3<bool>(!var_2.x, any(var_2), false)), select(var_2.yzy, var_2.yxz, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~select(-vec3<i32>(661i, u_input.d, -2147483647i), -vec3<i32>(0i, 5472i, 2147483647i), !var_4.x)));
}

