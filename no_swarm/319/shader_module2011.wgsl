struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    return _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 63309u), vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.d.x, 22179u)) % vec2<u32>(32u)), vec2<u32>(~u_input.d.x, 5529u));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_0.b.c.xy;
    var_0 = vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.c.c.x, ~4294967295u), countOneBits(reverseBits(12210u))), _wgslsmith_add_u32(~var_0.x, func_3()));
    let var_1 = vec4<u32>(max(~4294967295u, ~_wgslsmith_div_u32(57123u ^ arg_2.c.c.x, 1u ^ var_0.x)), select(min(arg_0.b.c.x, 61994u), u_input.d.x, all(!vec3<bool>(arg_2.c.b.x, arg_2.c.b.x, true))), 1u, _wgslsmith_clamp_u32(max(~(~37321u), 121082u), _wgslsmith_add_u32(abs(u_input.d.x), 5532u), ~(~1u)));
    var var_2 = Struct_3(vec2<bool>(all(arg_3), arg_3.x), Struct_1(vec2<bool>(true || !arg_3.x, !any(vec2<bool>(true, arg_3.x))), !(!select(vec3<bool>(arg_0.b.b.x, arg_2.c.a.x, arg_2.c.b.x), arg_0.b.b, arg_3.wzx)), arg_0.b.c), firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_0.c.x), arg_0.c), select(u_input.b, arg_0.c, arg_0.a), vec2<i32>(arg_2.d.x, 2147483647i)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.x, 59892u), vec2<u32>(0u, 65375u)), var_1.zw) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.x, arg_2.a.x) + arg_0.d))), _wgslsmith_f_op_vec2_f32(-arg_0.d), vec2<bool>(true, true))) - arg_0.d));
    var_2 = Struct_3(arg_2.c.b.xz, arg_0.b, (vec2<i32>(-2147483647i, _wgslsmith_div_i32(var_2.c.x, arg_2.b.x)) | (u_input.b ^ -vec2<i32>(-15684i, var_2.c.x))) ^ ~vec2<i32>(reverseBits(arg_0.c.x), -35270i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-874f, arg_2.a.x)))))));
    return arg_3;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> Struct_3 {
    var var_0 = select(select(!select(func_2(Struct_3(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, true), vec4<u32>(u_input.d.x, 1u, u_input.d.x, 4294967295u)), vec2<i32>(u_input.a, u_input.a), arg_0.ww), false, Struct_2(arg_0.xzx, vec3<i32>(-2147483647i, -39605i, u_input.b.x), Struct_1(vec2<bool>(true, true), vec3<bool>(false, false, false), vec4<u32>(arg_1, u_input.d.x, u_input.d.x, 827u)), u_input.b), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, true), select(true, true, false)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), func_2(Struct_3(vec2<bool>(true, true), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, true), u_input.d), u_input.b, vec2<f32>(149f, arg_0.x)), false, Struct_2(arg_0.xwz, vec3<i32>(-23428i, 13600i, u_input.c), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true), u_input.d), vec2<i32>(-29358i, arg_2)), vec4<bool>(false, false, true, true)), true), select(func_2(Struct_3(vec2<bool>(true, true), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, false), u_input.d), u_input.b, arg_0.zz), false, Struct_2(vec3<f32>(-618f, 985f, 1738f), vec3<i32>(-31192i, u_input.a, arg_2), Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), u_input.d), vec2<i32>(32967i, arg_2)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), func_2(Struct_3(vec2<bool>(true, true), Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), u_input.d), u_input.b, vec2<f32>(258f, arg_0.x)), true, Struct_2(vec3<f32>(arg_0.x, 1607f, -2329f), vec3<i32>(8616i, arg_2, 0i), Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), u_input.d), u_input.b), func_2(Struct_3(vec2<bool>(false, false), Struct_1(vec2<bool>(false, true), vec3<bool>(false, true, true), vec4<u32>(arg_1, arg_1, arg_1, arg_1)), u_input.b, vec2<f32>(arg_0.x, arg_0.x)), true, Struct_2(arg_0.zzw, vec3<i32>(-31879i, 0i, arg_2), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), u_input.d), u_input.b), vec4<bool>(false, false, true, false))).x)), vec4<bool>(false, !(u_input.d.x > u_input.d.x), !(arg_1 != ~32081u), true), !(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), true))));
    var var_1 = true;
    var var_2 = u_input.d.xzz << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 0u, 4294967295u), u_input.d.zxx), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.zy >> (u_input.d.zz % vec2<u32>(32u)), u_input.d.xz), 0u), 9704u) % vec3<u32>(32u));
    let var_3 = vec3<u32>(var_2.x, _wgslsmith_mult_u32(~arg_1 | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), _wgslsmith_sub_vec2_u32(var_2.zz, var_2.yx)), func_3()), u_input.d.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1379f, arg_0.x, arg_0.x), vec3<f32>(165f, 862f, arg_0.x)))))), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2, ~arg_2, ~u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 55358i, u_input.b.x), firstTrailingBit(vec3<i32>(u_input.c, 0i, arg_2)), -vec3<i32>(22302i, 12846i, arg_2)), select(vec3<i32>(arg_2, 2208i, u_input.c), -vec3<i32>(arg_2, 0i, u_input.a), select(var_0.xxy, vec3<bool>(true, var_0.x, true), var_0.x))) >> (u_input.d.zyy % vec3<u32>(32u)), Struct_1(select(select(var_0.wx, var_0.wx, all(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), var_0.yw, !(!vec2<bool>(var_0.x, var_0.x))), select(!func_2(Struct_3(var_0.xy, Struct_1(vec2<bool>(true, true), vec3<bool>(true, var_0.x, false), vec4<u32>(0u, 4294967295u, var_3.x, 81225u)), vec2<i32>(arg_2, arg_2), vec2<f32>(arg_0.x, arg_0.x)), true, Struct_2(arg_0.zzw, vec3<i32>(arg_2, arg_2, arg_2), Struct_1(vec2<bool>(var_0.x, var_0.x), vec3<bool>(true, false, false), u_input.d), vec2<i32>(u_input.a, arg_2)), vec4<bool>(false, true, true, var_0.x)).xzy, !(!var_0.wxz), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x), false)), u_input.d), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.b, u_input.b), ~(arg_2 & 5443i) ^ ~_wgslsmith_sub_i32(u_input.b.x, u_input.b.x)));
    return Struct_3(!func_2(Struct_3(select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), var_4.c, ~vec2<i32>(u_input.a, u_input.c), _wgslsmith_f_op_vec2_f32(arg_0.xy + vec2<f32>(var_4.a.x, 1279f))), false, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, -1000f, 205f)), ~var_4.b, Struct_1(vec2<bool>(false, var_0.x), vec3<bool>(var_0.x, false, false), vec4<u32>(0u, var_3.x, 23729u, var_4.c.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_4.d.x), vec2<i32>(var_4.b.x, 25307i))), func_2(Struct_3(vec2<bool>(var_0.x, true), Struct_1(var_0.yw, vec3<bool>(var_0.x, false, var_4.c.b.x), vec4<u32>(var_3.x, 4294967295u, 29364u, 34412u)), vec2<i32>(1i, arg_2), var_4.a.zy), var_0.x, Struct_2(vec3<f32>(-247f, 525f, arg_0.x), var_4.b, Struct_1(vec2<bool>(true, var_0.x), vec3<bool>(false, false, false), vec4<u32>(63956u, 93180u, 4294967295u, 49384u)), vec2<i32>(64479i, arg_2)), vec4<bool>(var_0.x, var_4.c.a.x, true, var_4.c.b.x))).xw, Struct_1(select(vec2<bool>(true, var_4.c.b.x), func_2(Struct_3(vec2<bool>(var_4.c.b.x, false), var_4.c, var_4.b.xx, arg_0.xz), var_4.c.b.x, Struct_2(vec3<f32>(-1458f, -482f, var_4.a.x), vec3<i32>(2147483647i, -12303i, 2147483647i), var_4.c, u_input.b), vec4<bool>(false, var_4.c.b.x, true, var_4.c.b.x)).zy, true), var_0.xxw, ~vec4<u32>(var_2.x, 0u, 1u, select(arg_1, u_input.d.x, var_4.c.a.x))), -(~u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(780f, -778f)), -219f)));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = func_2(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, 649f, -416f, arg_0.d.x))))), 1u, 32177i), arg_0.a.x, Struct_2(vec3<f32>(1101f, _wgslsmith_f_op_f32(round(-388f)), -1428f), abs(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-2147483647i, arg_0.c.x, u_input.b.x)), min(vec3<i32>(39945i, 2147483647i, u_input.b.x), vec3<i32>(u_input.a, u_input.c, u_input.b.x)))), arg_0.b, select(firstLeadingBit(vec2<i32>(2147483647i, 20568i)) << (arg_0.b.c.xy % vec2<u32>(32u)), abs(arg_0.c), !(u_input.d.x <= 77614u))), vec4<bool>(!select(true, true, arg_0.a.x & arg_0.a.x), true, arg_0.b.b.x, ~select(arg_0.b.c.x, 9408u, arg_0.b.b.x) < arg_0.b.c.x)).wyz;
    var_0 = select(arg_0.b.b, arg_0.b.b, !any(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, arg_0.d.x, arg_0.d.x, arg_0.d.x) * vec4<f32>(arg_0.d.x, 538f, -1529f, arg_0.d.x)), 0u, arg_0.c.x).b.b));
    let var_1 = !(arg_0.d.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -236f) + -814f)));
    var_0 = arg_0.b.b;
    var_0 = !func_2(Struct_3(vec2<bool>(true, any(arg_0.b.b)), arg_0.b, arg_0.c ^ vec2<i32>(-2147483647i, u_input.c), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.d - vec2<f32>(arg_0.d.x, -972f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, arg_0.d.x)), select(true, var_0.x, false)))), func_1(vec4<f32>(_wgslsmith_f_op_f32(106f * 528f), arg_0.d.x, arg_0.d.x, _wgslsmith_f_op_f32(-666f * -1301f)), arg_0.b.c.x, ~(-26976i >> (1u % 32u))).a.x, Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d.x, 502f, arg_0.d.x))))), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 29655i, u_input.a) ^ vec3<i32>(arg_0.c.x, 8672i, arg_0.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -29562i, 16885i), vec3<i32>(-1i, 1i, u_input.b.x))), arg_0.b, -(vec2<i32>(arg_0.c.x, u_input.a) << (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u)))), !vec4<bool>(arg_0.b.a.x, var_1 != var_1, any(arg_0.b.b), func_1(vec4<f32>(arg_0.d.x, 1137f, arg_0.d.x, arg_0.d.x), arg_0.b.c.x, 2147483647i).a.x)).yzw;
    return select(arg_0.b.b, vec3<bool>(!all(vec4<bool>(true, arg_0.a.x, false, false)), all(select(select(vec4<bool>(var_0.x, var_1, var_1, var_1), vec4<bool>(var_0.x, arg_0.b.b.x, arg_0.b.a.x, arg_0.a.x), vec4<bool>(arg_0.b.b.x, false, var_0.x, var_1)), func_2(arg_0, true, Struct_2(vec3<f32>(-809f, -1813f, arg_0.d.x), vec3<i32>(u_input.b.x, u_input.b.x, arg_0.c.x), Struct_1(var_0.zy, arg_0.b.b, vec4<u32>(u_input.d.x, arg_0.b.c.x, 0u, u_input.d.x)), vec2<i32>(-35316i, 78372i)), vec4<bool>(var_0.x, var_0.x, false, var_1)), vec4<bool>(var_1, arg_0.b.b.x, var_0.x, arg_0.a.x))), false), !any(!(!vec4<bool>(false, var_0.x, var_1, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), true), vec2<bool>(true, true), false), select(vec3<bool>(true, true, true), func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1868f, -839f, 1285f, -1908f) + vec4<f32>(-1000f, 451f, -422f, -938f)), u_input.d.x, 37978i)), func_2(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2656f, 329f, 661f, -556f) - vec4<f32>(668f, -949f, -1268f, -365f)), u_input.d.x, -91485i), false, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1525f, 784f, 1000f)), -vec3<i32>(2008i, u_input.b.x, -2147483647i), func_1(vec4<f32>(1485f, 1569f, -878f, -1099f), 1u, 1450i).b, ~vec2<i32>(0i, u_input.a)), vec4<bool>(true, func_2(Struct_3(vec2<bool>(true, true), Struct_1(vec2<bool>(false, true), vec3<bool>(true, false, false), vec4<u32>(0u, 37687u, u_input.d.x, 1u)), vec2<i32>(u_input.a, u_input.a), vec2<f32>(-2001f, 1309f)), true, Struct_2(vec3<f32>(503f, 1439f, 934f), vec3<i32>(u_input.c, u_input.c, u_input.b.x), Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, false), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x)), u_input.b), vec4<bool>(false, true, false, true)).x, all(vec4<bool>(false, false, false, true)), false)).zyz), firstTrailingBit(u_input.d));
    var var_1 = vec3<u32>(~var_0.c.x, _wgslsmith_mult_u32(func_3(), u_input.d.x), select(~0u, func_1(vec4<f32>(-678f, _wgslsmith_f_op_f32(433f - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -632f), -116f), ~func_1(vec4<f32>(540f, 917f, -607f, 1000f), 4294967295u, 1i).b.c.x, _wgslsmith_div_i32(func_1(vec4<f32>(-946f, -628f, 511f, -303f), u_input.d.x, u_input.a).c.x, max(1i, -9862i))).b.c.x, var_0.a.x));
    var_1 = ~(~u_input.d.wxz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(~u_input.b.x, -39321i), -u_input.a << (33773u % 32u)), ~1i), vec4<f32>(-439f, 898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-197f - _wgslsmith_f_op_f32(step(-107f, 591f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f + -1303f))), 515f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)), _wgslsmith_f_op_f32(-632f - 466f))));
}

