struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    return arg_2.a;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -301f);
    var var_1 = 1u;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.x, 211f, -621f, 751f)))))), true, 1u, func_2(~abs(vec2<i32>(arg_0, arg_1.e.x)), ~1u, Struct_2(arg_1, func_2(arg_1.e, 110491u, Struct_2(Struct_1(arg_1.a, false, arg_1.c, arg_1.d, vec2<i32>(27545i, arg_1.e.x)), Struct_1(arg_1.a, arg_1.d.x, 18705u, vec3<bool>(true, false, false), arg_1.e), arg_1.e, arg_1, vec3<i32>(arg_0, arg_1.e.x, 1i))), arg_1.e, Struct_1(vec4<f32>(624f, -1850f, 1626f, var_0), arg_1.b, arg_1.c, vec3<bool>(false, false, false), arg_1.e), select(vec3<i32>(-5645i, 23840i, arg_0), vec3<i32>(0i, arg_1.e.x, arg_1.e.x), false))).d, -_wgslsmith_mod_vec2_i32(vec2<i32>(9845i, arg_0), vec2<i32>(0i, 0i))), arg_1, max(-vec2<i32>(arg_1.e.x, -2147483647i | u_input.a), vec2<i32>(abs(arg_0) >> (~0u % 32u), -func_2(vec2<i32>(38981i, -44650i), arg_1.c, Struct_2(Struct_1(vec4<f32>(arg_1.a.x, arg_1.a.x, var_0, 638f), arg_1.b, 19284u, arg_1.d, arg_1.e), Struct_1(arg_1.a, true, arg_2.x, vec3<bool>(arg_1.d.x, true, arg_1.b), arg_1.e), vec2<i32>(arg_0, arg_1.e.x), arg_1, vec3<i32>(arg_0, -1982i, 59768i))).e.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 1000f, arg_1.a.x, arg_1.a.x) * arg_1.a)))), !all(select(vec3<bool>(arg_1.b, true, arg_1.d.x), vec3<bool>(arg_1.b, true, true), arg_1.d)), 0u, arg_1.d, -vec2<i32>(28650i >> (arg_2.x % 32u), 0i)), -vec3<i32>(u_input.a, ~firstTrailingBit(arg_0), 0i));
    let var_3 = select(!vec4<bool>(any(vec4<bool>(false, true, arg_1.d.x, true)), true, true, true), vec4<bool>(any(arg_1.d.yx), true, all(vec4<bool>(all(arg_1.d), all(vec3<bool>(false, var_2.d.b, var_2.b.b)), true, any(arg_1.d.yz))), true & arg_1.b), !(arg_1.d.x || true));
    var_1 = max(firstTrailingBit(min(~max(arg_2.x, 4294967295u), 4294967295u)), abs(_wgslsmith_mod_u32(16874u, arg_1.c)));
    return var_2.d;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = -7669i;
    var var_1 = Struct_3(-6026i, func_2(func_3(_wgslsmith_sub_i32(firstLeadingBit(-9026i), 2147483647i ^ arg_1.d.e.x), arg_1.d, ~vec2<u32>(1u, arg_2.x)).e, 51027u ^ (arg_2.x ^ ~31105u), arg_1), select(vec3<bool>(true, (arg_1.a.c | arg_2.x) == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.c, 4294967295u, 15299u, 2001u), vec4<u32>(4294967295u, arg_2.x, 1u, 62337u)), all(!vec3<bool>(false, true, arg_1.d.b))), vec3<bool>(arg_0.x, false, false), select(!func_2(arg_1.d.e, 0u, arg_1).d, vec3<bool>(!arg_0.x, any(arg_0), func_3(5721i, Struct_1(arg_1.b.a, false, arg_1.b.c, vec3<bool>(arg_1.a.b, arg_1.d.d.x, true), arg_1.a.e), vec2<u32>(arg_2.x, arg_1.a.c)).b), arg_1.a.d.x & arg_1.a.b)), arg_1.a.a, func_2(arg_1.c, arg_2.x << (arg_1.d.c % 32u), arg_1));
    var_1 = Struct_3(~(-11308i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a.x) * _wgslsmith_f_op_f32(392f - 655f)), -410f, 1526f, arg_1.b.a.x), true, ~((4294967295u & arg_2.x) ^ firstTrailingBit(4294967295u)), vec3<bool>(false || !var_1.b.b, true, true), var_1.b.e ^ vec2<i32>(firstLeadingBit(-13235i), 1i)), arg_1.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.a.x, arg_1.d.a.x, arg_1.d.a.x, 1231f) - vec4<f32>(2138f, var_1.e.a.x, arg_1.d.a.x, 107f)) * vec4<f32>(arg_1.a.a.x, var_1.e.a.x, -406f, var_1.e.a.x)) + vec4<f32>(_wgslsmith_f_op_f32(-1924f - 1457f), var_1.d.x, _wgslsmith_f_op_f32(-var_1.d.x), arg_1.d.a.x))), arg_1.a);
    var var_2 = Struct_3(var_1.b.e.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1811f, var_1.b.a.x, var_1.b.a.x, 507f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, -873f, -909f, arg_1.d.a.x) * var_1.e.a))), all(arg_0), _wgslsmith_sub_u32(arg_1.d.c, 67460u), arg_0.wzw, -vec2<i32>(~(-57994i), _wgslsmith_sub_i32(-9233i, arg_1.d.e.x))), func_2(var_1.b.e, 0u | ((var_1.b.c << (0u % 32u)) | var_1.e.c), arg_1).d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, _wgslsmith_f_op_f32(-arg_1.d.a.x), -236f, _wgslsmith_div_f32(var_1.d.x, 258f))))), arg_1.d);
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.d.a)));
    return Struct_3(~(6244i ^ -(var_0 | arg_1.a.e.x)), func_3(reverseBits(~_wgslsmith_mod_i32(var_2.b.e.x, var_0)), Struct_1(func_3(0i, Struct_1(vec4<f32>(-927f, var_1.d.x, 1095f, 1000f), var_2.c.x, var_2.b.c, vec3<bool>(arg_1.a.b, var_1.b.b, arg_0.x), var_1.e.e), ~vec2<u32>(var_2.b.c, var_2.b.c)).a, true, 1u, !(!vec3<bool>(arg_1.d.d.x, true, true)), ~countOneBits(var_2.b.e)), _wgslsmith_sub_vec2_u32(~arg_2.zz, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, var_2.b.c)), arg_2.xz))), arg_0.xwy, _wgslsmith_f_op_vec4_f32(exp2(func_3(-_wgslsmith_mult_i32(-1i, var_0), arg_1.d, arg_2.yy).a)), func_2(arg_1.b.e, ~firstTrailingBit(min(43229u, var_1.b.c)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.d.x, -1801f, arg_1.a.a.x, var_3.x), var_2.d, vec4<bool>(true, var_2.e.b, arg_1.b.d.x, arg_1.a.b))), true, var_2.b.c, vec3<bool>(true, arg_1.d.b, arg_0.x), vec2<i32>(var_1.b.e.x, -16607i)), arg_1.a, func_2(var_2.e.e, ~var_1.b.c, arg_1).e, arg_1.d, (vec3<i32>(var_0, u_input.a, u_input.a) & arg_1.e) << (~arg_2 % vec3<u32>(32u)))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_4(arg_1.x, vec3<bool>(!arg_2.x, !(!all(arg_2.xxy)), arg_2.x), func_4(arg_2, Struct_2(func_3(-69365i, func_2(vec2<i32>(u_input.a, 3990i), 3485u, Struct_2(Struct_1(vec4<f32>(arg_1.x, 355f, 1000f, 254f), arg_0, 103141u, vec3<bool>(arg_2.x, arg_2.x, arg_0), vec2<i32>(-2147483647i, u_input.a)), Struct_1(vec4<f32>(arg_1.x, -844f, arg_1.x, arg_1.x), false, 1u, vec3<bool>(arg_2.x, arg_2.x, arg_2.x), vec2<i32>(1i, 2147483647i)), vec2<i32>(-1i, u_input.a), Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), false, 62u, vec3<bool>(true, arg_2.x, true), vec2<i32>(u_input.a, 0i)), vec3<i32>(6115i, u_input.a, u_input.a))), _wgslsmith_clamp_vec2_u32(vec2<u32>(5042u, 9136u), vec2<u32>(7026u, 4294967295u), vec2<u32>(1u, 16630u))), func_2(-vec2<i32>(u_input.a, -45506i), ~0u, Struct_2(Struct_1(arg_1, arg_2.x, 0u, vec3<bool>(false, arg_0, arg_2.x), vec2<i32>(-2147483647i, u_input.a)), Struct_1(vec4<f32>(248f, arg_1.x, 966f, arg_1.x), arg_2.x, 28208u, vec3<bool>(arg_0, arg_2.x, true), vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(u_input.a, u_input.a), Struct_1(arg_1, arg_2.x, 1u, arg_2.zzx, vec2<i32>(-1i, -1i)), vec3<i32>(u_input.a, u_input.a, 4589i))), vec2<i32>(select(u_input.a, u_input.a, false), ~1i), func_2(vec2<i32>(u_input.a, u_input.a), 0u, Struct_2(Struct_1(arg_1, arg_0, 9567u, arg_2.xxz, vec2<i32>(1i, u_input.a)), Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true, 4294967295u, arg_2.wwx, vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, u_input.a), Struct_1(arg_1, arg_0, 7854u, vec3<bool>(false, false, true), vec2<i32>(0i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a))), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(1i, 932i, u_input.a))), max(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(9469u, 1u, 0u), vec3<u32>(1u, 1u, 1u), arg_2.x))));
    let var_1 = var_0.c.b.d.zx;
    var var_2 = reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.c.b.c, 0u, _wgslsmith_add_u32(0u, 30330u)), vec3<u32>(79615u, 1u, ~var_0.c.b.c << ((51000u << (var_0.c.b.c % 32u)) % 32u))));
    var_2 = ~vec3<u32>(select(var_2.x, 63266u, _wgslsmith_f_op_f32(-arg_1.x) == _wgslsmith_f_op_f32(max(869f, var_0.c.b.a.x))), var_0.c.b.c, max(33487u, reverseBits(_wgslsmith_sub_u32(20086u, 0u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-arg_1.yww);
    return Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_3.x), all(var_0.c.e.d), 1u, func_2(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a, 6447i), -2147483647i), var_0.c.b.c, Struct_2(func_4(vec4<bool>(arg_0, var_0.b.x, arg_2.x, true), Struct_2(Struct_1(vec4<f32>(var_0.a, arg_1.x, 303f, 968f), false, var_0.c.e.c, var_0.c.b.d, var_0.c.e.e), var_0.c.e, vec2<i32>(var_0.c.e.e.x, var_0.c.e.e.x), var_0.c.e, vec3<i32>(-30524i, 1i, 20176i)), vec3<u32>(49468u, var_2.x, var_0.c.e.c)).e, func_2(var_0.c.e.e, var_2.x, Struct_2(var_0.c.b, var_0.c.b, var_0.c.e.e, Struct_1(arg_1, var_0.b.x, 4294967295u, var_0.c.b.d, var_0.c.b.e), vec3<i32>(u_input.a, u_input.a, 2147483647i))), vec2<i32>(var_0.c.e.e.x, u_input.a), Struct_1(vec4<f32>(412f, var_0.c.b.a.x, 390f, arg_1.x), arg_2.x, 20972u, vec3<bool>(arg_0, true, var_1.x), var_0.c.b.e), vec3<i32>(-5124i, var_0.c.e.e.x, var_0.c.e.e.x))).d, var_0.c.b.e), var_0.c.e, func_2(-var_0.c.e.e, func_3(var_0.c.b.e.x, var_0.c.b, select(var_2.xx, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(62062u, var_2.x)), var_1.x)).c, Struct_2(var_0.c.e, func_3(_wgslsmith_mult_i32(0i, var_0.c.a), func_2(var_0.c.b.e, 37664u, Struct_2(Struct_1(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 133f), arg_2.x, 0u, vec3<bool>(var_0.c.c.x, true, false), vec2<i32>(3608i, 2147483647i)), Struct_1(arg_1, true, var_0.c.e.c, arg_2.ywz, var_0.c.b.e), var_0.c.e.e, Struct_1(vec4<f32>(-275f, var_0.a, -1000f, arg_1.x), arg_0, var_2.x, vec3<bool>(false, arg_0, var_1.x), var_0.c.e.e), vec3<i32>(-1i, -2147483647i, 1i))), ~var_2.yy), _wgslsmith_sub_vec2_i32(var_0.c.e.e ^ vec2<i32>(var_0.c.e.e.x, u_input.a), vec2<i32>(var_0.c.a, u_input.a)), var_0.c.b, min(-vec3<i32>(u_input.a, var_0.c.a, -5724i), ~vec3<i32>(1i, u_input.a, var_0.c.e.e.x)))).e, var_0.c.b, vec3<i32>(u_input.a, -1i, var_0.c.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = false;
    var var_1 = true;
    var_1 = false;
    var var_2 = vec2<bool>(any(func_3(func_4(vec4<bool>(arg_0.a.b, var_0, true, false), arg_0, arg_1.zwx).b.e.x, func_2(vec2<i32>(61213i, arg_0.e.x), 10599u, arg_0), vec2<u32>(0u, 29971u)).d) == var_0, var_0);
    let var_3 = vec2<i32>(min(1i, _wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_mod_i32(u_input.a, arg_0.d.e.x))), -2147483647i);
    return Struct_4(func_2((arg_0.d.e | vec2<i32>(-45044i, 1i)) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(60452u, 1u), arg_1.xy), select(vec2<u32>(arg_0.b.c, arg_0.b.c), arg_1.xx, false), countOneBits(arg_1.xy)) % vec2<u32>(32u)), 58246u, Struct_2(func_4(vec4<bool>(var_0, true, true, var_2.x), func_1(var_0, vec4<f32>(arg_0.b.a.x, -1000f, arg_0.d.a.x, -695f), vec4<bool>(true, true, false, var_0)), arg_1.wxz & arg_1.wxx).e, func_1(true, _wgslsmith_f_op_vec4_f32(-arg_0.a.a), select(vec4<bool>(true, var_2.x, false, var_0), vec4<bool>(var_2.x, arg_0.b.d.x, var_2.x, var_0), vec4<bool>(false, false, arg_0.b.b, var_2.x))).a, arg_0.e.yx, arg_0.b, _wgslsmith_div_vec3_i32(vec3<i32>(1095i, -1i, -2147483647i), vec3<i32>(u_input.a, 2147483647i, -1i) >> (vec3<u32>(22141u, 0u, arg_0.d.c) % vec3<u32>(32u))))).a.x, vec3<bool>(all(select(!vec4<bool>(var_2.x, false, var_0, var_0), vec4<bool>(false, false, var_0, arg_0.b.d.x), arg_0.b.c >= 1u)), true, var_2.x), Struct_3(-var_3.x, func_1(var_3.x != -36927i, arg_0.a.a, vec4<bool>(arg_0.b.d.x | arg_0.d.b, all(vec2<bool>(var_0, var_0)), func_3(1i, Struct_1(vec4<f32>(1000f, -1000f, arg_0.a.a.x, 1000f), true, arg_1.x, arg_0.b.d, var_3), vec2<u32>(23095u, arg_0.b.c)).d.x, var_0)).a, vec3<bool>(true, false, var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1284f, 507f, arg_0.b.a.x, 1622f))) * _wgslsmith_f_op_vec4_f32(-arg_0.d.a))), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1806f))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(154f, 1181f)))));
    var var_1 = true || (u_input.a <= min(~u_input.a << (~1u % 32u), -u_input.a));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -356f);
    var var_3 = select(!vec2<bool>(var_0.x, select(!var_0.x, all(vec2<bool>(var_0.x, false)), true)), vec2<bool>(var_0.x, false), u_input.a < (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a) << (vec4<u32>(12092u, 1u, 5479u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, u_input.a, 5032i), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))) ^ -_wgslsmith_add_i32(0i, u_input.a)));
    let var_4 = func_5(func_1(var_3.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-556f, 341f, 1434f, 1998f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1128f, -244f, 407f, -310f))), var_0.x)), vec4<bool>(true, true, true, true && var_0.x)), vec4<u32>(1u, _wgslsmith_clamp_u32(33288u, _wgslsmith_clamp_u32(reverseBits(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(37295u, 1778u)), 0u), 14770u), _wgslsmith_sub_u32(func_2(vec2<i32>(u_input.a, -10044i), 0u, Struct_2(Struct_1(vec4<f32>(-104f, -691f, -893f, -1000f), true, 60348u, vec3<bool>(false, var_3.x, false), vec2<i32>(-2147483647i, u_input.a)), Struct_1(vec4<f32>(-1800f, -110f, 668f, 392f), var_3.x, 4294967295u, vec3<bool>(false, true, var_3.x), vec2<i32>(u_input.a, 6276i)), vec2<i32>(60963i, u_input.a), Struct_1(vec4<f32>(-1500f, 1373f, -2018f, -713f), var_0.x, 95438u, vec3<bool>(false, var_0.x, true), vec2<i32>(-2147483647i, u_input.a)), vec3<i32>(1i, -24272i, u_input.a))).c, 1u) << (0u % 32u), ~1u >> (~_wgslsmith_div_u32(4294967295u, 1u) % 32u)));
    var var_5 = _wgslsmith_f_op_f32(-var_4.c.e.a.x);
    var_3 = func_5(Struct_2(var_4.c.b, var_4.c.b, -vec2<i32>(18596i, ~(-2147483647i)), var_4.c.b, max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -15428i, var_4.c.a), -vec3<i32>(u_input.a, 2147483647i, var_4.c.b.e.x)), ~abs(vec3<i32>(1i, u_input.a, 39374i)))), vec4<u32>(11037u, select(func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-25373i, var_4.c.e.e.x), var_4.c.e.e), ~4294967295u, Struct_2(var_4.c.b, var_4.c.e, vec2<i32>(1i, u_input.a), var_4.c.e, vec3<i32>(var_4.c.b.e.x, -70818i, var_4.c.e.e.x))).c, func_3(firstLeadingBit(-23506i), func_1(var_4.c.e.b, var_4.c.d, vec4<bool>(true, var_3.x, var_3.x, false)).a, ~vec2<u32>(var_4.c.e.c, 58657u)).c, true), var_4.c.b.c & (var_4.c.b.c ^ var_4.c.e.c), var_4.c.b.c)).c.b.d.zz;
    var var_6 = abs(vec2<u32>(~_wgslsmith_add_u32(0u, var_4.c.b.c) >> (~(~var_4.c.e.c) % 32u), ~abs(~var_4.c.b.c)));
    let var_7 = Struct_2(var_4.c.e, var_4.c.e, (var_4.c.e.e ^ var_4.c.b.e) << (vec2<u32>(func_5(Struct_2(Struct_1(var_4.c.b.a, var_4.b.x, var_4.c.e.c, var_4.c.b.d, vec2<i32>(u_input.a, 6605i)), var_4.c.e, var_4.c.b.e, Struct_1(vec4<f32>(-1000f, 1000f, var_4.a, var_4.c.b.a.x), var_0.x, var_4.c.b.c, var_4.b, var_4.c.e.e), vec3<i32>(u_input.a, var_4.c.b.e.x, u_input.a)), ~vec4<u32>(0u, var_4.c.b.c, 0u, var_4.c.e.c)).c.e.c, 1u) % vec2<u32>(32u)), var_4.c.e, vec3<i32>(-22490i, 1i, _wgslsmith_mod_i32(u_input.a, abs(var_4.c.a) << (4294967295u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~(u_input.a & var_4.c.b.e.x)), u_input.a), var_4.c.a, ~(~var_6.x));
}

