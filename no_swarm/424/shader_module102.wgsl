struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(max(~_wgslsmith_sub_u32(u_input.a, 0u), ~30006u), max(u_input.a, _wgslsmith_add_u32(~0u, ~u_input.a)), 4294967295u), _wgslsmith_add_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 28338u)) ^ (vec3<u32>(35157u, 29746u, u_input.a) | vec3<u32>(0u, 0u, u_input.a))), ~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    let var_1 = reverseBits(vec4<u32>(~(~abs(1264u)), reverseBits(3222u), 1u, max(var_0.x, var_0.x)));
    var var_2 = Struct_1(vec3<bool>(all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, false), vec2<bool>(_wgslsmith_div_i32(0i, ~u_input.b) < u_input.c.x, any(vec4<bool>(true, all(vec3<bool>(true, false, false)), 34213u < var_0.x, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1636f + -1107f))), 483f, _wgslsmith_f_op_f32(min(1436f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-861f + 895f)))))), countOneBits(_wgslsmith_add_vec3_i32(-abs(vec3<i32>(u_input.b, u_input.c.x, -7795i)), select(firstLeadingBit(u_input.c.zzw), vec3<i32>(50470i, 0i, u_input.c.x), all(vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-568f)), _wgslsmith_f_op_f32(112f + 862f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(-1800f)), -754f)));
    let var_3 = var_2.d.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(984f, 292f, var_2.c.x), var_2.c) - vec3<f32>(1290f, var_2.c.x, var_2.e.x)))))));
    return select(!select(!(!vec2<bool>(var_2.a.x, var_2.a.x)), select(select(vec2<bool>(var_2.a.x, var_2.a.x), var_2.a.yy, vec2<bool>(false, var_2.a.x)), select(var_2.b, var_2.b, var_2.b), !vec2<bool>(var_2.b.x, false)), select(select(var_2.a.xy, var_2.a.zy, var_2.b.x), var_2.b, !var_2.a.x)), !vec2<bool>(!var_2.a.x, var_2.a.x), any(var_2.a));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, arg_1.b, arg_1.c, ~u_input.c.yxx >> (((~vec3<u32>(u_input.a, u_input.a, u_input.a) | ~vec3<u32>(0u, u_input.a, 25002u)) << ((~vec3<u32>(36151u, 75761u, arg_0) << (~vec3<u32>(u_input.a, 52425u, 18980u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, arg_1.e.x)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.c.yx))))));
    var var_1 = select(reverseBits(vec3<u32>(u_input.a, ~4294967295u, 38984u)), ~vec3<u32>(arg_0, u_input.a, u_input.a), 0i < (2147483647i & -(var_0.d.x << (2412u % 32u))));
    var_1 = ~(~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 1u, 0u), vec3<u32>(var_1.x, var_1.x, arg_0), vec3<u32>(0u, u_input.a, 16105u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 61997u, arg_0), vec3<u32>(var_1.x, u_input.a, 1046u))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x - var_0.e.x)) * _wgslsmith_f_op_f32(-arg_1.e.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * -917f)), _wgslsmith_f_op_f32(trunc(1824f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-584f, var_2, var_0.c.x))))))) - _wgslsmith_f_op_vec3_f32(arg_1.c + _wgslsmith_div_vec3_f32(arg_1.c, _wgslsmith_f_op_vec3_f32(-var_0.c))));
    return Struct_1(vec3<bool>(true, !(!any(arg_1.b)), true), select(select(vec2<bool>(true, true), func_3(), any(select(vec4<bool>(true, var_0.b.x, var_0.b.x, true), vec4<bool>(false, arg_1.a.x, false, arg_1.b.x), true))), vec2<bool>(false, var_0.b.x), all(select(!vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(false, true, true, arg_1.a.x), select(vec4<bool>(var_0.a.x, var_0.b.x, arg_1.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) + arg_1.c.x), var_3.x, arg_1.c.x), -_wgslsmith_div_vec3_i32(vec3<i32>(~33403i, 947i, var_0.d.x), _wgslsmith_sub_vec3_i32(countOneBits(arg_1.d), ~arg_1.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_f_op_f32(-arg_1.e.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_2)))));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = vec4<i32>(u_input.b, -1i, 2147483647i, 1i);
    var_0 = vec4<i32>(select(_wgslsmith_mod_i32(var_0.x, 1i), ~20539i << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)) % 32u), false), -29174i, ~abs(_wgslsmith_mult_i32(u_input.c.x, var_0.x)) >> (~(~_wgslsmith_mod_u32(0u, 131u)) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(max(u_input.c.ww, vec2<i32>(54952i, -24237i)), vec2<i32>(var_0.x, 0i)), arg_0.d.yx), vec2<i32>(-1i << (u_input.a % 32u), u_input.b | u_input.c.x) >> (~(~vec2<u32>(78992u, 14982u)) % vec2<u32>(32u))));
    var_0 = vec4<i32>(abs(_wgslsmith_add_i32(-2147483647i, ~(~u_input.c.x))), var_0.x, 0i, _wgslsmith_mult_i32(u_input.b, countOneBits(var_0.x)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.wzw, vec3<i32>(var_0.x, 1i, 51609i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, u_input.c.x, 2147483647i), vec3<i32>(-16268i, arg_0.d.x, var_0.x))), abs(-vec3<i32>(arg_0.d.x, 2147483647i, 31792i))), -1i, var_0.x & 0i);
    var var_2 = arg_0.b.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(exp2(arg_0.e.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1324f))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = arg_1;
    let var_1 = arg_0;
    return vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.x)) - 1f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.c.x, -602f, var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -108f)))), true);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = !func_5(Struct_1(arg_1.a, !arg_1.a.xx, _wgslsmith_f_op_vec3_f32(func_4(func_2(u_input.a, Struct_1(vec3<bool>(true, arg_1.a.x, arg_1.b.x), vec2<bool>(arg_1.a.x, false), vec3<f32>(arg_0, arg_1.c.x, -247f), vec3<i32>(42631i, 38386i, -16039i), vec2<f32>(arg_1.e.x, arg_0))))), firstLeadingBit(u_input.c.xzy | arg_1.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.e.x, 1000f)) + _wgslsmith_f_op_vec2_f32(arg_1.c.zz * arg_1.e))), func_2(~u_input.a, Struct_1(vec3<bool>(arg_1.b.x, arg_1.a.x, arg_1.a.x), vec2<bool>(false, arg_1.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0, arg_0, 881f), vec3<f32>(907f, 482f, 868f))), -vec3<i32>(-2147483647i, arg_1.d.x, u_input.c.x), arg_1.c.yy)));
    var_0 = vec2<bool>(false, any(vec2<bool>(func_2(_wgslsmith_clamp_u32(u_input.a, u_input.a, 1u), arg_1).b.x, true)));
    var var_1 = _wgslsmith_f_op_f32(ceil(1220f));
    var var_2 = Struct_1(arg_1.a, select(arg_1.a.xx, !arg_1.b, !arg_1.b), _wgslsmith_f_op_vec3_f32(min(arg_1.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c * vec3<f32>(-306f, 1000f, 323f))))))), vec3<i32>(-21523i, arg_1.d.x, ~_wgslsmith_sub_i32(~arg_1.d.x, ~(-2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, arg_0))))));
    var_1 = var_2.c.x;
    return u_input.b == u_input.b;
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = -_wgslsmith_dot_vec3_i32(u_input.c.zxy, vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.b >> (1103u % 32u)), u_input.c.x, u_input.b));
    let var_1 = func_2(80469u, arg_2).b;
    let var_2 = arg_0.yw;
    let var_3 = vec2<i32>(~(~(-u_input.b)), -44719i);
    var_0 = 1i;
    return func_2(395u, arg_2);
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_1(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1035f, _wgslsmith_f_op_f32(arg_0.c.x * -481f), -177f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, arg_1.x, -842f, arg_1.x) * vec4<f32>(arg_0.c.x, 870f, 1006f, var_0.e.x)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-901f, -1637f, 1097f, 892f), vec4<f32>(arg_1.x, arg_0.e.x, -199f, arg_1.x), vec4<bool>(var_0.a.x, true, false, true)))))), func_2(firstTrailingBit(1u), func_2(53996u ^ u_input.a, Struct_1(var_0.a, vec2<bool>(true, false), vec3<f32>(var_0.e.x, arg_0.c.x, 404f), var_0.d, vec2<f32>(-417f, var_0.e.x)))), 13965u).a, func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1630f, 470f, 190f, 256f), vec4<f32>(arg_1.x, 287f, var_0.c.x, -1124f)), vec4<f32>(arg_0.e.x, -312f, -2166f, var_0.e.x), vec4<bool>(true, false, true, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(-1378f + -1446f), var_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x))), func_2(~1u, Struct_1(func_2(u_input.a, arg_0).a, vec2<bool>(false, arg_0.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_0.e.x, -945f)), vec3<i32>(u_input.b, arg_0.d.x, 30877i), _wgslsmith_f_op_vec2_f32(arg_1.zz + arg_0.c.xz))), ~4294967295u).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.e.x, -251f, arg_1.x), var_0.c))) - _wgslsmith_f_op_vec3_f32(min(var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(508f, arg_0.c.x, -214f) - var_0.c) * _wgslsmith_f_op_vec3_f32(arg_0.c * var_0.c))))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-var_0.d.x, abs(0i), 0i), func_2(u_input.a, Struct_1(arg_0.a, vec2<bool>(false, var_0.b.x), vec3<f32>(794f, 103f, var_0.e.x), vec3<i32>(arg_0.d.x, 0i, u_input.b), var_0.e)).d), arg_0.c.xz);
    var var_2 = vec3<bool>(true, arg_0.a.x, !(!(true | var_0.b.x)));
    var var_3 = Struct_1(var_1.a, !select(!select(vec2<bool>(var_1.b.x, false), var_0.a.zy, true), select(var_0.a.xx, vec2<bool>(true, true), false), true != any(vec4<bool>(var_1.b.x, arg_0.a.x, arg_0.b.x, var_2.x))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * 1f), var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + 1147f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(var_1)).x * _wgslsmith_div_f32(360f, 1186f))), func_2(~(~4294967295u), Struct_1(var_0.a, var_1.a.zy, vec3<f32>(var_0.c.x, arg_0.c.x, var_0.c.x), vec3<i32>(-2147483647i, arg_0.d.x, -29833i), _wgslsmith_f_op_vec2_f32(-arg_0.c.zx))).e.x), u_input.c.zwx, arg_1.yz);
    var var_4 = arg_0;
    return func_2(u_input.a, func_2(_wgslsmith_add_u32(min(4294967295u, 0u), ~u_input.a) & ~firstTrailingBit(0u), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1558f, -276f, -656f, 360f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1508f, 1000f, -294f)), vec4<f32>(467f, -343f, 853f, -518f), true)), vec4<f32>(_wgslsmith_div_f32(705f, 776f), 231f, _wgslsmith_f_op_f32(-1000f + 970f), -1144f), false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(any(vec4<bool>(false, true, true, false)), func_1(1959f, Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, true), vec3<f32>(-829f, -170f, -2301f), u_input.c.yxw, vec2<f32>(-1025f, 243f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, 219f, 632f)), min(func_2(u_input.a, Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), vec3<f32>(104f, 649f, 1000f), u_input.c.zxy, vec2<f32>(302f, -721f))).d, _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, u_input.b), u_input.c.yxy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, -651f)))), 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(max(-386f, 1732f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1146f))), -1481f)));
    let var_1 = var_0;
    var var_2 = vec3<bool>(u_input.a == 1u, true, true);
    var var_3 = _wgslsmith_f_op_f32(-var_1.c.x);
    let var_4 = var_0.c.x;
    var var_5 = ~firstTrailingBit(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a, 73586u), max(24581u, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 43013u, u_input.a), vec4<u32>(9483u, 67226u, var_5.x, var_5.x))), vec4<u32>(26460u, 0u, 1u, var_5.x)), ~0u, 1i);
}

