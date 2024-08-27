struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(u_input.e, !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(false, false))));
    var_0 = Struct_2(firstTrailingBit(abs(~vec4<u32>(13179u, 4367u, var_0.a.x, 1u))), var_0.b);
    var_0 = Struct_2(vec4<u32>(~0u, ~1u, 1u, 663u) ^ u_input.e, !(!var_0.b));
    var_0 = Struct_2(var_0.a, select(!var_0.b, vec3<bool>(true, var_0.b.x, any(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(false, true, var_0.b.x, true)))), any(var_0.b.zz)));
    let var_1 = -1i;
    return u_input.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_3(Struct_1(15939u, !(_wgslsmith_clamp_i32(-10007i, -8600i, arg_1.x) <= func_3())), !select(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))), all(vec2<bool>(true, true))), Struct_1(u_input.d.x & ~1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2230f, 289f)), _wgslsmith_f_op_f32(489f - 1000f), all(vec4<bool>(false, true, false, false)))) <= _wgslsmith_f_op_f32(842f + _wgslsmith_f_op_f32(f32(-1f) * -490f))), vec4<u32>(firstTrailingBit(1065u), u_input.e.x, ~firstTrailingBit(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, select(313u, 1u, false), u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(42751u, 49226u, u_input.c), _wgslsmith_sub_vec3_u32(u_input.d.zyz, u_input.e.xyw)))));
    let var_1 = var_0.b;
    let var_2 = var_0.d;
    return 53775i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = !arg_3.x;
    var var_1 = select(select(vec2<bool>(arg_3.x, !all(arg_3.yz)), arg_3.yz, true), !vec2<bool>(var_0, false), vec2<bool>(arg_1.a >= ~_wgslsmith_div_u32(arg_1.a, 1u), any(arg_3.yz)));
    let var_2 = Struct_3(arg_1, false, Struct_1(~75309u, all(arg_3)), ~u_input.e);
    let var_3 = var_2;
    let var_4 = ~(~_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(var_2.d.yxz, vec3<u32>(var_2.a.a, var_3.a.a, 0u)), 34332u << ((arg_1.a >> (u_input.c % 32u)) % 32u)));
    return Struct_2(_wgslsmith_clamp_vec4_u32(~var_2.d, abs(firstLeadingBit(var_2.d)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.d.zzw, u_input.b), ~8185u, u_input.e.x, var_4))), arg_3);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = vec2<u32>(8391u, _wgslsmith_sub_u32(max(firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, 1u), u_input.d.xz)), abs(~u_input.d.x)) ^ min(arg_0.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(144974u, 1u), max(arg_2.c.a, arg_0.a.x))));
    var var_1 = -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, 848i, u_input.a), firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, 2147483647i, u_input.a) & vec4<i32>(0i, u_input.a, 1i, 0i))), firstLeadingBit(~min(vec4<i32>(1i, -28823i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a))));
    var var_2 = arg_2.a;
    var_0 = ~vec2<u32>(4294967295u, reverseBits(var_2.a)) ^ vec2<u32>(~(~71858u), countOneBits(firstTrailingBit(0u)));
    var var_3 = Struct_2(~arg_2.d << (vec4<u32>(1u, func_4(~vec4<i32>(u_input.a, 48690i, -1i, u_input.a), Struct_1(var_0.x, arg_1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-623f, -2564f, 530f)), arg_0.b).a.x, ~abs(62307u), reverseBits(arg_2.c.a)) % vec4<u32>(32u)), !arg_1.zzy);
    return arg_2;
}

fn func_1() -> vec4<i32> {
    let var_0 = func_5(func_4(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a, -2147483647i), -22153i), u_input.a, -11248i, _wgslsmith_sub_i32(func_2(vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<i32>(-17101i, u_input.a)), 6720i << (u_input.c % 32u))), Struct_1(u_input.e.x, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1290f, -1359f, -1000f))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 418f, 677f)))))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false, true)), vec4<bool>(false, false, false, true), Struct_3(Struct_1(4294967295u, true), true, Struct_1(~(~u_input.c), all(vec2<bool>(true, true))), u_input.e));
    let var_1 = _wgslsmith_f_op_f32(round(-598f));
    let var_2 = func_5(func_4(countOneBits(abs(vec4<i32>(-14548i, u_input.a, 43478i, -1i)) << (var_0.d % vec4<u32>(32u))), Struct_1(u_input.c, var_0.c.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, var_1, -385f)))))), func_4(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-438f * -859f), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1248f)), select(!vec3<bool>(true, true, var_0.b), select(vec3<bool>(var_0.c.b, true, true), vec3<bool>(var_0.b, var_0.a.b, false), true), true)).b), select(select(select(select(vec4<bool>(var_0.c.b, var_0.b, var_0.c.b, var_0.b), vec4<bool>(var_0.a.b, true, var_0.c.b, true), vec4<bool>(true, false, var_0.a.b, var_0.b)), !vec4<bool>(var_0.c.b, var_0.c.b, var_0.b, var_0.c.b), true), select(vec4<bool>(false, var_0.b, var_0.c.b, false), vec4<bool>(false, var_0.c.b, var_0.b, true), !vec4<bool>(var_0.b, var_0.c.b, true, var_0.c.b)), false), !(!select(vec4<bool>(var_0.a.b, var_0.a.b, false, var_0.a.b), vec4<bool>(var_0.a.b, var_0.b, true, false), true)), false), var_0);
    let var_3 = func_5(func_4(vec4<i32>(-6856i, -1i, -(~(-42837i)), 2147483647i), func_5(func_4(vec4<i32>(u_input.a, -1940i, u_input.a, -1848i) << (var_0.d % vec4<u32>(32u)), var_0.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, -890f, -427f), vec3<f32>(var_1, -1038f, var_1))), vec3<bool>(false, var_0.c.b, true)), select(!vec4<bool>(var_2.a.b, true, true, false), vec4<bool>(false, var_0.b, var_2.a.b, var_0.b), vec4<bool>(true, false, var_0.b, true)), func_5(Struct_2(var_0.d, vec3<bool>(var_0.c.b, false, var_2.a.b)), vec4<bool>(var_2.b, var_0.b, true, false), var_2)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(954f, 342f, -108f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, var_1, -542f))) - vec3<f32>(var_1, var_1, -1174f))), !select(select(vec3<bool>(var_2.c.b, false, var_0.a.b), vec3<bool>(true, true, var_0.b), var_0.b), select(vec3<bool>(var_0.c.b, var_0.c.b, false), vec3<bool>(var_2.b, false, false), vec3<bool>(var_2.c.b, var_0.b, var_2.c.b)), vec3<bool>(var_2.b, false, true))), select(!(!(!vec4<bool>(var_0.c.b, false, var_0.b, true))), select(!(!vec4<bool>(var_2.a.b, var_0.a.b, true, var_0.a.b)), vec4<bool>(var_2.b, var_2.b, var_2.a.b, any(vec3<bool>(var_0.c.b, var_0.a.b, var_0.b))), true), all(select(!vec2<bool>(false, var_2.c.b), !vec2<bool>(true, var_2.c.b), false))), Struct_3(func_5(func_4(vec4<i32>(u_input.a, 17457i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, -9771i, -1i, u_input.a), func_5(Struct_2(vec4<u32>(var_2.d.x, var_0.c.a, var_2.c.a, 35952u), vec3<bool>(false, var_2.c.b, var_0.b)), vec4<bool>(var_2.b, false, false, var_2.c.b), var_0).c, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, 341f, 885f))), vec3<bool>(true, false, var_2.c.b)), vec4<bool>(select(true, var_0.c.b, var_0.c.b), true, true, 0u != var_0.c.a), Struct_3(var_2.a, var_2.c.b, func_5(Struct_2(var_2.d, vec3<bool>(var_0.a.b, var_0.a.b, var_0.c.b)), vec4<bool>(true, true, true, var_0.b), Struct_3(Struct_1(u_input.d.x, var_0.c.b), true, Struct_1(4294967295u, false), var_0.d)).c, min(vec4<u32>(98287u, var_0.a.a, var_0.a.a, u_input.c), var_2.d))).a, ~abs(u_input.d.x) >= var_2.c.a, Struct_1(min(select(var_2.c.a, u_input.d.x, true), 1u), func_5(func_4(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), Struct_1(30784u, false), vec3<f32>(1933f, var_1, var_1), vec3<bool>(false, var_0.b, var_0.b)), vec4<bool>(false, var_2.a.b, true, var_2.a.b), Struct_3(Struct_1(0u, false), var_0.b, var_2.a, var_0.d)).c.b), var_2.d >> (~u_input.d % vec4<u32>(32u)))).a.b;
    let var_4 = Struct_3(Struct_1(~17117u, any(vec2<bool>(u_input.a > u_input.a, var_0.c.b))), var_3, func_5(Struct_2(var_0.d, vec3<bool>(!var_2.a.b, true, var_0.c.b)), select(vec4<bool>(true, u_input.a < 2147483647i, func_4(vec4<i32>(11246i, u_input.a, -1i, u_input.a), var_0.c, vec3<f32>(-384f, var_1, var_1), vec3<bool>(var_3, var_2.c.b, false)).b.x, true), select(!vec4<bool>(var_3, true, false, var_0.b), !vec4<bool>(var_3, true, false, var_0.c.b), false), select(select(vec4<bool>(true, false, true, var_2.b), vec4<bool>(false, true, var_3, true), var_3), !vec4<bool>(true, false, var_3, var_3), u_input.e.x < 29810u)), Struct_3(Struct_1(firstTrailingBit(0u), true), var_2.c.b, Struct_1(29316u, true), u_input.e >> (vec4<u32>(4294967295u, var_2.c.a, 4294967295u, 1u) % vec4<u32>(32u)))).a, ~(~min(reverseBits(vec4<u32>(var_2.c.a, var_0.c.a, 4294967295u, 78517u)), var_0.d | u_input.d)));
    return -abs(select(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), vec4<i32>(13791i, 45004i, u_input.a, 0i)), countOneBits(vec4<i32>(u_input.a, -14485i, 1i, u_input.a)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~select(abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, -12718i)), ~(~vec4<i32>(u_input.a, -2147483647i, -5062i, u_input.a)), vec4<bool>(true, true, true, true)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, u_input.a), u_input.a, u_input.a, -7820i), func_1()) ^ -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -24245i, u_input.a, 3377i), vec4<i32>(39929i, u_input.a, u_input.a, 29804i) ^ vec4<i32>(u_input.a, 9732i, 1i, u_input.a)));
    let var_1 = u_input.e;
    var var_2 = false;
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().zw, vec2<f32>(1f, 1f));
}

