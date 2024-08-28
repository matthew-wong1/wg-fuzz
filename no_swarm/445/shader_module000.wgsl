struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(209f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(-553f + 1303f)), -408f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2181f + -333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - _wgslsmith_f_op_f32(f32(-1f) * -678f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(633f * _wgslsmith_f_op_f32(-339f - -260f)) - _wgslsmith_f_op_f32(-1022f + 931f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return 20601u;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), i32(-1i) * -arg_2.b, i32(-1i) * -2147483647i, reverseBits(countOneBits(8917i))) | ~vec4<i32>(0i, abs(u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -15278i, 1i, arg_2.b), vec4<i32>(u_input.d, arg_1.a.c.x, u_input.d, u_input.d)), ~u_input.d), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, ~arg_1.a.c.x | firstTrailingBit(44i), countOneBits(u_input.d), ~arg_2.b), _wgslsmith_mult_vec4_i32(vec4<i32>(~53185i, 2147483647i, _wgslsmith_dot_vec2_i32(arg_1.a.c, vec2<i32>(14350i, arg_2.b)), countOneBits(-56456i)), _wgslsmith_add_vec4_i32(-vec4<i32>(arg_2.b, -97312i, arg_2.b, arg_1.a.c.x), firstLeadingBit(vec4<i32>(-1i, -2147483647i, arg_1.a.c.x, 0i))))));
    var var_1 = any(arg_1.c.yy);
    let var_2 = -_wgslsmith_sub_i32(2147483647i, arg_1.a.c.x);
    var var_3 = vec2<u32>(6554u, _wgslsmith_mod_u32(~55794u, ~func_3()));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-778f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a.d))))))));
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = -vec4<i32>(~abs(reverseBits(arg_0.a.c.x)), -2147483647i, reverseBits(_wgslsmith_dot_vec2_i32(max(arg_0.a.c, vec2<i32>(-1i, arg_0.a.c.x)), vec2<i32>(u_input.d, arg_0.a.c.x))), arg_1.a.c.x);
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(arg_0.a.b.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(select(arg_1.a.b.x, u_input.a.x, arg_1.c.x), max(0u, u_input.b.x)), 1u)), arg_1.a.e);
    var_1 = _wgslsmith_add_vec2_u32(reverseBits(~select(vec2<u32>(arg_0.a.b.x, arg_1.a.b.x), arg_0.a.b.zy, arg_1.a.a)), vec2<u32>(countOneBits(max(u_input.a.x, var_1.x)), countOneBits(u_input.b.x))) | vec2<u32>(4294967295u, 4294967295u);
    var var_2 = arg_0.c;
    var var_3 = func_2(vec3<bool>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), vec3<u32>(u_input.b.x, 8907u, u_input.c.x)) <= _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b.x, 12728u), reverseBits(u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)) >= _wgslsmith_f_op_f32(select(arg_0.a.d, _wgslsmith_f_op_f32(step(arg_0.a.d, 921f)), arg_0.a.a.x)), all(arg_1.b) || true), func_2(vec3<bool>((1i << (0u % 32u)) == _wgslsmith_mult_i32(arg_1.a.c.x, arg_0.a.c.x), (var_2.x | arg_1.a.a.x) || true, any(arg_1.c) | false), arg_0, Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, 0u), u_input.b), arg_1.a.b.yxw, !arg_0.c), _wgslsmith_mult_i32(arg_0.a.c.x, _wgslsmith_sub_i32(arg_1.a.c.x, 5046i)), u_input.b.x, !var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_1.a.d, arg_0.a.d) * vec3<f32>(arg_1.a.d, -1293f, 1241f))))), Struct_1(vec3<u32>(arg_1.a.b.x, 61759u, abs(arg_0.a.b.x)), var_0.x, ~u_input.a.x, true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -762f, 692f))))))))).a;
    return -1019f;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_4 {
    let var_0 = vec2<u32>(221u, arg_1.c) >> (~_wgslsmith_mod_vec2_u32(u_input.b.yz, arg_0.a.xx) % vec2<u32>(32u));
    let var_1 = vec2<u32>(u_input.b.x, arg_0.a.x);
    let var_2 = Struct_4(vec4<f32>(-532f, -1000f, -163f, _wgslsmith_f_op_f32(ceil(arg_0.e.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(arg_1.e.zx));
    var var_4 = !(!vec4<bool>(abs(-1i) > arg_0.b, arg_0.d, !all(vec2<bool>(true, false)), arg_1.d));
    return Struct_4(vec4<f32>(685f, _wgslsmith_f_op_f32(arg_0.e.x * _wgslsmith_f_op_f32(max(130f, var_3.x))), arg_0.e.x, -139f));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_1(firstLeadingBit(~(vec3<u32>(u_input.c.x, 0u, 25476u) << (u_input.a.zzz % vec3<u32>(32u)))), u_input.d, ~4294967295u, !any(vec3<bool>(true, true, true)), vec3<f32>(1f, _wgslsmith_f_op_f32(step(-525f, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -966f))), Struct_1(u_input.a.yyx ^ u_input.a.yww, ~_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, 1i), vec2<i32>(-9610i, u_input.d)), u_input.c.x, !(countOneBits(u_input.d) == u_input.d), vec3<f32>(-100f, 1145f, _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec2<bool>(true, true), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec2<i32>(1i, u_input.d), -1762f, u_input.a.x), vec2<bool>(false, true), vec3<bool>(true, false, false)), func_2(vec3<bool>(false, false, false), Struct_3(Struct_2(vec2<bool>(true, true), vec4<u32>(27862u, 1u, 1u, 11904u), vec2<i32>(u_input.d, 5459i), 1000f, 1u), vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_1(vec3<u32>(56715u, u_input.a.x, 0u), u_input.d, 51776u, false, vec3<f32>(-147f, -1166f, 1088f))), false)))));
    var var_1 = func_2(vec3<bool>(true, all(vec3<bool>(u_input.d != 19374i, true, var_0.a.x > var_0.a.x)), false), func_2(select(vec3<bool>(true, true, u_input.d <= 0i), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), 2147483647i > u_input.d), true), Struct_3(func_2(vec3<bool>(true, true, true), func_2(vec3<bool>(false, true, true), Struct_3(Struct_2(vec2<bool>(true, false), vec4<u32>(4294967295u, 54225u, 34558u, 0u), vec2<i32>(u_input.d, 17519i), var_0.a.x, 87040u), vec2<bool>(true, false), vec3<bool>(true, true, true)), Struct_1(u_input.b, u_input.d, 47565u, false, var_0.a.xyx)), Struct_1(u_input.a.xwx, u_input.d, u_input.b.x, false, var_0.a.zzy)).a, !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec3<bool>(all(vec4<bool>(false, true, false, false)), -1015f != var_0.a.x, true)), Struct_1(_wgslsmith_add_vec3_u32(u_input.b, u_input.a.xwx) & ~u_input.b, _wgslsmith_add_i32(13415i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 0i), vec3<i32>(u_input.d, u_input.d, u_input.d))), firstLeadingBit(u_input.b.x & 37635u), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), var_0.a.zxy)), Struct_1(firstTrailingBit(~(~u_input.a.zzz)), 1i, firstTrailingBit(1u), any(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(Struct_1(u_input.a.xwy, 0i, 0u, false, var_0.a.xzx), Struct_1(u_input.a.zyw, u_input.d, u_input.b.x, false, vec3<f32>(-505f, var_0.a.x, -765f))).a.x, 999f, _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(vec2<bool>(true, true), vec4<u32>(206u, 4294967295u, 22863u, 26292u), vec2<i32>(-2147483647i, u_input.d), 1800f, u_input.b.x), vec2<bool>(true, false), vec3<bool>(false, false, false)), Struct_3(Struct_2(vec2<bool>(true, true), u_input.a, vec2<i32>(-53203i, -6531i), var_0.a.x, 0u), vec2<bool>(true, false), vec3<bool>(true, false, true)), true))))));
    let var_2 = var_1.a.d;
    let var_3 = -var_1.a.c.x;
    var_0 = func_5(Struct_1(firstTrailingBit(var_1.a.b.zzw), -(~var_1.a.c.x), max(_wgslsmith_mult_u32(abs(88041u), 21612u), var_1.a.e), !any(!vec2<bool>(true, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.a.zzw)), Struct_1(var_1.a.b.xyw, _wgslsmith_clamp_i32(-13022i, -1i, var_3), _wgslsmith_dot_vec4_u32(~var_1.a.b, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(70573u, 0u, u_input.b.x, u_input.c.x), vec4<u32>(u_input.a.x, 0u, 55250u, var_1.a.b.x)), 1u >> (u_input.c.x % 32u), var_1.a.e, _wgslsmith_clamp_u32(var_1.a.b.x, u_input.b.x, u_input.a.x))), true, var_0.a.zyz));
    return Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 5199u ^ ~var_1.a.e, _wgslsmith_div_u32(~39526u, ~1u)), _wgslsmith_div_vec3_u32(var_1.a.b.zzz, var_1.a.b.xzz)), u_input.d, 29613u, var_1.a.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-123f, _wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) - _wgslsmith_f_op_f32(var_0.a.x + -212f)), var_0.a.x) - var_0.a.zxx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_5(var_0, var_0);
    var_1 = func_5(func_1(), func_1());
    var var_2 = ~(vec3<i32>(u_input.d, -var_0.b, _wgslsmith_mod_i32(-14459i, -2147483647i)) << (reverseBits(vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.a.x), ~u_input.b.x, u_input.a.x << (var_0.a.x % 32u))) % vec3<u32>(32u)));
    var_2 = countOneBits(_wgslsmith_add_vec3_i32(-(vec3<i32>(10173i, var_0.b, u_input.d) >> (u_input.b % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-2459i, var_0.b, -6165i)), (vec3<i32>(1i, var_0.b, var_0.b) | vec3<i32>(18261i, var_2.x, var_0.b)) << (vec3<u32>(0u, u_input.a.x, var_0.a.x) % vec3<u32>(32u)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, var_2.x, u_input.d), vec3<i32>(u_input.d, 23202i, var_2.x)), -vec3<i32>(-73614i, u_input.d, u_input.d), !vec3<bool>(true, var_0.d, var_0.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -409f, 708f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.x, -731f, 657f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, -141f, var_1.a.x))), _wgslsmith_f_op_f32(round(var_0.e.x)) != _wgslsmith_f_op_f32(695f * var_0.e.x)))));
}

