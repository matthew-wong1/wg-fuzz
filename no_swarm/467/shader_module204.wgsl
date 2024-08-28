struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(2147483647i, 19005i), vec3<i32>(-23590i, 36443i, 2147483647i));

var<private> global1: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-540f - 784f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) - _wgslsmith_f_op_f32(min(-714f, _wgslsmith_f_op_f32(f32(-1f) * -525f)))))));
    var_0 = 919f;
    return global0.b;
}

fn func_2() -> vec2<f32> {
    global0 = Struct_2(global0.a, global0.b);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -301f);
    let var_1 = Struct_3(Struct_1(global0.b.xx, 4294967295u, true), ~global0.b, Struct_2(vec2<i32>(-u_input.a, min(_wgslsmith_dot_vec2_i32(global1.a, global0.a), -global0.a.x)), -func_3(Struct_1(global0.b.xy, global1.b, true), Struct_1(global1.a, global1.b, global1.c), ~vec3<u32>(global1.b, 4294967295u, 4294967295u))), Struct_1(global1.a, _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(28949u, global1.b))), vec2<u32>(global1.b, ~global1.b)), select(global1.b <= 0u, any(select(vec2<bool>(global1.c, global1.c), vec2<bool>(false, true), vec2<bool>(true, global1.c))), all(!vec4<bool>(true, true, global1.c, global1.c)))));
    var var_2 = Struct_2(global1.a, -(~_wgslsmith_div_vec3_i32(~vec3<i32>(-11438i, -101365i, 1263i), var_1.b ^ vec3<i32>(global1.a.x, global0.a.x, u_input.a))));
    var var_3 = Struct_1(select(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.b.x, u_input.a), global1.a)), var_2.a, !(!(!vec2<bool>(var_1.d.c, global1.c)))), ~select(2360u, var_1.a.b, any(vec4<bool>(true, global1.c, global1.c, true))), !global1.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-930f + var_0), -1279f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_3) -> Struct_2 {
    let var_0 = select(min(_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(global1.b, global1.b, arg_3.a.b)), vec3<u32>(~1u, arg_3.a.b, ~arg_3.d.b)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.b, 18731u, global1.b), vec3<u32>(arg_3.a.b, arg_3.a.b, global1.b)))), _wgslsmith_sub_vec3_u32(vec3<u32>(max(global1.b, abs(arg_3.d.b)), 69055u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.b, global1.b, 39384u), vec3<u32>(45795u, 26169u, 0u)), ~vec3<u32>(global1.b, 1u, 13196u))), ~vec3<u32>(reverseBits(arg_3.a.b), countOneBits(4294967295u), _wgslsmith_sub_u32(global1.b, arg_3.d.b))), select(select(select(arg_0.zww, vec3<bool>(global1.c, global1.c, global1.c), global1.c || true), !(!vec3<bool>(true, true, global1.c)), select(!vec3<bool>(arg_3.a.c, global1.c, true), select(arg_0.xwx, vec3<bool>(false, false, false), vec3<bool>(false, true, false)), !arg_0.www)), !select(vec3<bool>(false, false, arg_3.d.c), arg_0.zyz, !global1.c), arg_0.www));
    let var_1 = Struct_2(vec2<i32>(-25167i, _wgslsmith_sub_i32(~(-global0.b.x), arg_3.b.x)), vec3<i32>(reverseBits(-max(-7468i, arg_3.b.x)), u_input.a, ~((-948i >> (arg_3.d.b % 32u)) & ~arg_3.d.a.x)));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_1 + arg_2.x)) + -1117f), _wgslsmith_f_op_f32(-923f + arg_2.x), 992f), vec3<f32>(-388f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(333f, arg_2.x)) + 883f), _wgslsmith_f_op_vec2_f32(func_2()).x), _wgslsmith_f_op_vec2_f32(func_2()).x));
    let var_3 = -13185i ^ var_1.a.x;
    let var_4 = reverseBits(1i);
    return Struct_2(reverseBits(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(arg_3.b.x, 1i), abs(global0.b.x)))), -func_3(arg_3.d, Struct_1(_wgslsmith_div_vec2_i32(arg_3.a.a, vec2<i32>(5604i, -1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.a.b, arg_3.d.b), vec2<u32>(global1.b, var_0.x)), true), select(max(var_0, vec3<u32>(1u, arg_3.d.b, 4294967295u)), vec3<u32>(arg_3.a.b, arg_3.d.b, 49179u), !arg_0.xyz)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: i32) -> vec3<bool> {
    global0 = func_4(!(!select(select(vec4<bool>(global1.c, false, false, true), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, true)), !vec4<bool>(arg_1, global1.c, global1.c, false), !vec4<bool>(true, arg_1, true, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -867f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1370f, 1011f), vec2<f32>(-1882f, -585f)))))))), Struct_3(Struct_1(global0.b.zz >> (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)), ~_wgslsmith_mod_u32(arg_0.x, 1u), false), -(min(vec3<i32>(65610i, global1.a.x, u_input.a), global0.b) ^ ~global0.b), Struct_2(vec2<i32>(44521i, _wgslsmith_mult_i32(global1.a.x, 5073i)), vec3<i32>(arg_2 << (arg_0.x % 32u), global1.a.x, -18189i)), Struct_1(_wgslsmith_mult_vec2_i32(global0.b.xx | vec2<i32>(global0.a.x, u_input.a), countOneBits(vec2<i32>(2147483647i, global1.a.x))), ~(~arg_0.x), global1.c)));
    let var_0 = Struct_3(Struct_1(global0.a, global1.b >> (~min(8694u, 1u) % 32u), all(select(!vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(false, true, global1.c, arg_1), !vec4<bool>(true, global1.c, false, arg_1)))), global0.b, Struct_2(firstLeadingBit(~global0.a), firstLeadingBit(-global0.b)), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(global0.a), global0.a << (vec2<u32>(2769u, 4294967295u) % vec2<u32>(32u))), u_input.a), ~(~(~arg_0.x)), true));
    var var_1 = min(13814u, ~_wgslsmith_div_u32(max(var_0.d.b, global1.b) & 4294967295u, _wgslsmith_mult_u32(var_0.a.b, min(var_0.d.b, 0u))));
    let var_2 = Struct_3(Struct_1(vec2<i32>(arg_2, -global0.a.x ^ global1.a.x), ~1u, true), vec3<i32>(min(-1i << (global1.b % 32u), _wgslsmith_div_i32(0i, -1i)) >> (_wgslsmith_clamp_u32(arg_0.x, ~var_0.d.b, 58326u) % 32u), func_4(!vec4<bool>(false, false, arg_1, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2665f * -332f) + -134f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1888f, 1232f))), Struct_3(Struct_1(vec2<i32>(-13012i, 28104i), 34078u, true), vec3<i32>(global0.a.x, global0.b.x, u_input.a), func_4(vec4<bool>(var_0.a.c, arg_1, true, false), 1229f, vec2<f32>(-502f, 501f), var_0), Struct_1(vec2<i32>(arg_2, 0i), 21891u, var_0.d.c))).a.x, -1i), func_4(!select(select(vec4<bool>(false, arg_1, global1.c, arg_1), vec4<bool>(false, false, var_0.d.c, arg_1), true), !vec4<bool>(var_0.a.c, var_0.d.c, true, true), vec4<bool>(arg_1, true, true, arg_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 832f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, -443f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 218f) + vec2<f32>(-366f, 870f)))), Struct_3(Struct_1(vec2<i32>(1i, global1.a.x), global1.b, true), ~max(vec3<i32>(global1.a.x, global0.b.x, 0i), vec3<i32>(global1.a.x, 4634i, -1i)), func_4(select(vec4<bool>(true, global1.c, global1.c, true), vec4<bool>(false, false, false, true), vec4<bool>(false, var_0.d.c, var_0.a.c, global1.c)), _wgslsmith_f_op_f32(-452f - 1417f), _wgslsmith_div_vec2_f32(vec2<f32>(1043f, 944f), vec2<f32>(-637f, 1318f)), Struct_3(var_0.a, vec3<i32>(2147483647i, global0.a.x, -2147483647i), var_0.c, Struct_1(vec2<i32>(-2147483647i, -30181i), 4294967295u, true))), var_0.a)), Struct_1(~global1.a, 23983u, false | arg_1));
    let var_3 = Struct_1(select(reverseBits(vec2<i32>(global0.a.x, u_input.a)) >> (arg_0 % vec2<u32>(32u)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global0.a.x), var_0.c.a, global1.a)), var_0.d.c) ^ vec2<i32>(-max(var_2.c.b.x, var_2.d.a.x), ~2147483647i), ~(~global1.b) | firstTrailingBit(var_0.a.b), var_0.d.c);
    return !select(select(vec3<bool>(var_2.a.c, 51646i < u_input.a, any(vec2<bool>(false, var_0.d.c))), vec3<bool>(var_2.d.c, any(vec3<bool>(var_3.c, true, true)), any(vec4<bool>(false, true, true, false))), !vec3<bool>(false, var_2.a.c, true)), !vec3<bool>(true, global1.c | var_3.c, global1.c), select(select(vec3<bool>(var_0.a.c, true, var_3.c), select(vec3<bool>(var_2.d.c, true, true), vec3<bool>(true, var_0.d.c, arg_1), var_2.d.c), select(vec3<bool>(arg_1, true, true), vec3<bool>(var_3.c, var_2.d.c, global1.c), vec3<bool>(true, arg_1, false))), vec3<bool>(any(vec4<bool>(var_0.a.c, false, var_0.a.c, var_3.c)), arg_1, any(vec4<bool>(var_0.a.c, true, arg_1, true))), select(select(vec3<bool>(true, var_0.a.c, var_3.c), vec3<bool>(var_2.a.c, arg_1, false), vec3<bool>(var_3.c, var_3.c, true)), vec3<bool>(true, var_2.d.c, var_0.d.c), select(vec3<bool>(var_0.d.c, var_2.a.c, arg_1), vec3<bool>(arg_1, false, true), var_2.a.c))));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = ~reverseBits(_wgslsmith_mod_u32(global1.b, ~global1.b | _wgslsmith_sub_u32(4294967295u, 4294967295u)));
    let var_1 = all(!vec4<bool>(false, false, true && all(vec4<bool>(true, arg_0.x, arg_0.x, global1.c)), true || global1.c));
    var_0 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.b, global1.b, global1.b), vec4<u32>(33662u, global1.b, 1u, global1.b)), global1.b << (101104u % 32u)), ~1u, firstTrailingBit(~global1.b)), (countOneBits(vec4<u32>(global1.b, 4294967295u, 4294967295u, global1.b)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.b, global1.b, 9907u, 1u), vec4<u32>(24839u, global1.b, global1.b, 1u), vec4<u32>(global1.b, 0u, 1u, global1.b)) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, 34991u, global1.b, global1.b), vec4<u32>(global1.b, global1.b, global1.b, 11741u)), vec4<u32>(4294967295u, 20980u, 27798u, global1.b)) % vec4<u32>(32u)));
    var var_2 = u_input.a;
    global0 = func_4(select(vec4<bool>(select(global1.a.x <= global1.a.x, global1.b >= global1.b, global1.c), global1.c, true, false), select(select(!vec4<bool>(arg_0.x, var_1, true, true), !vec4<bool>(false, false, true, var_1), !vec4<bool>(false, var_1, true, var_1)), vec4<bool>(var_1 && var_1, true, var_1, false), true), select(vec4<bool>(var_1, true, true, true), vec4<bool>(true, true, true, true), select(!vec4<bool>(true, var_1, var_1, false), vec4<bool>(global1.c, false, global1.c, false), select(vec4<bool>(false, false, global1.c, false), vec4<bool>(false, global1.c, arg_0.x, var_1), vec4<bool>(false, global1.c, false, arg_0.x))))), _wgslsmith_div_f32(833f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1576f, -842f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(764f, 789f) + vec2<f32>(-536f, 2644f))))))), Struct_3(Struct_1(func_4(!vec4<bool>(global1.c, true, global1.c, false), 138f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, -294f)), Struct_3(Struct_1(vec2<i32>(0i, u_input.a), global1.b, global1.c), vec3<i32>(2147483647i, 56421i, global0.a.x), Struct_2(vec2<i32>(332i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_1(global1.a, 4294967295u, var_1))).a, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, 42562u), vec2<u32>(11234u, 29689u))), global1.c), global0.b, func_4(!vec4<bool>(var_1, arg_0.x, global1.c, global1.c), 532f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-923f, -1239f))), Struct_3(Struct_1(vec2<i32>(u_input.a, 20707i), global1.b, true), vec3<i32>(global0.b.x, u_input.a, -1187i), Struct_2(vec2<i32>(6897i, global1.a.x), vec3<i32>(38031i, -2147483647i, 35433i)), Struct_1(global0.a, global1.b, false))), Struct_1(~vec2<i32>(65017i, u_input.a), reverseBits(~global1.b), true & (u_input.a <= -14665i))));
    return Struct_1(~min(abs(vec2<i32>(u_input.a, global0.b.x)), min(global1.a, vec2<i32>(u_input.a, global0.a.x))), ~global1.b, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<i32>(-global1.a.x, 25026i), global0.b);
    global1 = func_5(select(!vec3<bool>(global1.c, true, global1.c && global1.c), !vec3<bool>(global1.c && true, global1.c | false, u_input.a >= 33721i), select(func_1(vec2<u32>(4294967295u, global1.b), !global1.c, -2147483647i), func_1(~vec2<u32>(4294967295u, global1.b), !global1.c, 1i), select(!vec3<bool>(false, false, global1.c), vec3<bool>(false, true, global1.c), !global1.c))));
    let var_0 = Struct_2(-min(vec2<i32>(-1i, ~u_input.a), global0.a), vec3<i32>(global1.a.x, -7498i, global0.a.x) << (vec3<u32>(global1.b, ~global1.b, ~_wgslsmith_mult_u32(global1.b, 34227u)) % vec3<u32>(32u)));
    var var_1 = Struct_3(func_5(select(vec3<bool>(true, global1.c | global1.c, true), vec3<bool>(global1.b < global1.b, false, global1.c), select(!global1.c, global1.a.x <= 2147483647i, global1.c))), func_3(Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, -61350i), vec2<i32>(0i, global1.a.x) & global1.a), ~_wgslsmith_div_u32(0u, global1.b), global1.c), func_5(select(!vec3<bool>(true, global1.c, global1.c), select(vec3<bool>(global1.c, global1.c, global1.c), vec3<bool>(true, false, global1.c), true), true)), min(vec3<u32>(84820u ^ global1.b, global1.b >> (global1.b % 32u), global1.b | 56882u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(78676u, global1.b, 17533u), vec3<u32>(global1.b, 0u, global1.b)))), var_0, Struct_1(-(vec2<i32>(-1i) * -vec2<i32>(global0.b.x, global1.a.x)), global1.b, !(!(global1.b == 4294967295u))));
    var_1 = Struct_3(func_5(select(!vec3<bool>(var_1.a.c, var_1.a.c, global1.c), vec3<bool>(true, var_1.a.b >= 0u, global1.c || true), true | var_1.a.c)), select(max(abs(var_0.b), _wgslsmith_mult_vec3_i32(global0.b | vec3<i32>(-1i, 2147483647i, global0.a.x), firstLeadingBit(var_0.b))), ((global0.b | vec3<i32>(13073i, -2147483647i, u_input.a)) & ~var_0.b) >> (vec3<u32>(global1.b, min(1u, var_1.a.b), 101924u) % vec3<u32>(32u)), false), var_0, Struct_1(vec2<i32>(reverseBits(~6073i), global1.a.x), ~var_1.a.b & abs(1u), true || global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(27578u), -817f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(663f, -1495f)))), 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(300f, 532f, 1311f) + vec3<f32>(-1572f, 140f, 231f))))));
}

