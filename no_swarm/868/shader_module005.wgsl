struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<f32> {
    let var_0 = Struct_3(u_input.a.zz, Struct_2(select(~countOneBits(vec4<i32>(-1i, 2546i, 0i, u_input.b)), countOneBits(vec4<i32>(-27075i, u_input.b, u_input.a.x, 1i)) | reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -82494i)), true), u_input.b, Struct_1(firstTrailingBit(~u_input.a.x), select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), vec3<f32>(arg_1, arg_1, 687f)), Struct_1(24604i, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1, arg_1, arg_1), vec3<f32>(-1000f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -139f, 414f))))), ~max(_wgslsmith_clamp_vec2_u32(vec2<u32>(24773u, arg_0), vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 33u)), vec2<u32>(76152u, 0u))), Struct_1(u_input.b, vec2<bool>(true, (arg_0 < arg_0) | (1318f > arg_1)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-445f, 451f, arg_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, arg_1, arg_1) + vec3<f32>(736f, -849f, 1240f)))))), u_input.a.x);
    let var_1 = true;
    var var_2 = Struct_2(countOneBits(vec4<i32>(reverseBits(var_0.b.c.a), -18709i, _wgslsmith_dot_vec2_i32(u_input.a.yy, var_0.b.a.wy), -var_0.c.a)) & select(~vec4<i32>(-2147483647i, -46795i, var_0.b.d.a, 15763i) >> (vec4<u32>(1u, 34712u, arg_0, arg_0) % vec4<u32>(32u)), vec4<i32>(var_0.c.a, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), var_0.b.a.zww), 1i), select(select(vec4<bool>(var_1, true, true, true), vec4<bool>(var_1, true, false, var_0.b.d.b.x), var_0.b.d.b.x), !vec4<bool>(true, true, var_0.b.c.b.x, var_1), vec4<bool>(var_1, var_0.b.d.b.x, true, true))), firstTrailingBit(0i), var_0.c, Struct_1(~u_input.b, var_0.b.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.c.c * var_0.b.d.c) + vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(1458f, arg_1)), 490f))), reverseBits(vec2<u32>(~(~arg_0), arg_0)));
    let var_3 = select(!vec3<bool>(false, any(!vec4<bool>(true, var_0.c.b.x, true, true)), true & !var_2.c.b.x), vec3<bool>(true, true, true), vec3<bool>(var_0.c.b.x, _wgslsmith_div_i32(u_input.b, -19150i) <= (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, var_2.c.a), vec2<i32>(u_input.b, var_0.c.a)) | ~(-1960i)), var_1));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(469f - var_2.d.c.x), arg_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, -631f))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.c.c.x)), 1964f)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.c.c.xy))));
    return var_0.c.c;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(-vec2<i32>(_wgslsmith_mult_i32(22298i, u_input.a.x), firstTrailingBit(u_input.a.x)), Struct_2(vec4<i32>(abs(2147483647i), min(u_input.a.x, u_input.b), abs(u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_i32(18209i, min(u_input.b, u_input.a.x), u_input.b), Struct_1(_wgslsmith_add_i32(u_input.b, u_input.b), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, -1376f))), Struct_1(u_input.a.x, vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -146f, arg_0))), vec2<u32>(4294967295u, countOneBits(1u))), Struct_1(select(1i, ~(-16496i), true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1480f, arg_0, arg_0)) * vec3<f32>(arg_0, 985f, -682f))), 12634i), abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(29092u, 96765u, 7572u, 10891u), vec4<u32>(70525u, 28251u, 48203u, 4294967295u)))), !vec2<bool>(!(u_input.b <= u_input.a.x), true));
    var var_1 = Struct_3(~(-countOneBits(vec2<i32>(var_0.a.b.b, u_input.b) | vec2<i32>(36262i, u_input.b))), var_0.a.b, Struct_1(-9311i, select(select(select(var_0.a.c.b, vec2<bool>(true, var_0.c.x), true), !vec2<bool>(true, var_0.a.b.d.b.x), var_0.c.x), vec2<bool>(var_0.c.x, all(vec3<bool>(var_0.a.b.d.b.x, false, false))), var_0.a.c.b.x), _wgslsmith_f_op_vec3_f32(func_3(select(24221u, ~var_0.a.b.e.x, var_0.a.c.b.x), _wgslsmith_f_op_f32(sign(-755f))))), -u_input.b);
    let var_2 = Struct_1(-max(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, -4735i), var_1.b.c.a), -1i), !(!var_1.c.b), var_1.c.c);
    var_1 = var_0.a;
    var var_3 = max(2147483647i, _wgslsmith_div_i32(firstLeadingBit(i32(-1i) * -var_2.a), -33727i));
    return Struct_1(_wgslsmith_dot_vec3_i32(var_1.b.a.yyx, countOneBits(firstLeadingBit(u_input.a))) ^ ~_wgslsmith_clamp_i32(var_2.a, i32(-1i) * -23262i, ~(-1i)), select(vec2<bool>(!var_0.a.c.b.x, any(vec4<bool>(var_0.a.b.c.b.x, false, true, var_1.c.b.x)) && var_2.b.x), vec2<bool>(any(!vec2<bool>(var_0.c.x, var_2.b.x)), -954f < _wgslsmith_div_f32(arg_0, arg_0)), var_0.c.x), var_1.c.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2894f, arg_0.c.x), _wgslsmith_f_op_f32(arg_3.c.c.x - -2042f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x - -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.x)))))));
    var var_1 = arg_3;
    var_1 = arg_3;
    let var_2 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(40220u & arg_3.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.c.x * -412f) - var_1.c.c.x))).x, _wgslsmith_f_op_f32(var_1.d.c.x - _wgslsmith_f_op_f32(trunc(-1000f)))));
    var var_3 = arg_2;
    return Struct_3(~reverseBits(vec2<i32>(var_1.d.a, 22673i) << (countOneBits(var_1.e) % vec2<u32>(32u))), Struct_2(countOneBits(arg_3.a), u_input.b, var_1.c, Struct_1(min(-1i, ~arg_3.c.a), arg_3.c.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(arg_3.c.c))))), vec2<u32>(0u, 1u)), Struct_1(abs(_wgslsmith_div_i32(1i, 2147483647i)), arg_3.d.b, arg_0.c), 40191i);
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_4(Struct_3(-_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.x, 6979i) | vec2<i32>(-27467i, arg_0.b.d.a), ~vec2<i32>(arg_0.a.x, 2147483647i)), func_4(Struct_1(1i, arg_0.b.d.b, arg_0.c.c), vec4<bool>(true, true, true, true), any(func_4(arg_0.c, vec4<bool>(arg_0.c.b.x, arg_0.b.d.b.x, true, arg_0.b.c.b.x), arg_0.b.d.b.x, arg_0.b).c.b), func_4(func_4(Struct_1(-40484i, vec2<bool>(true, true), arg_0.b.c.c), vec4<bool>(arg_0.b.d.b.x, arg_0.c.b.x, arg_0.b.d.b.x, arg_0.b.d.b.x), true, Struct_2(vec4<i32>(0i, 0i, 2147483647i, -2147483647i), u_input.b, arg_0.b.c, arg_0.c, vec2<u32>(arg_0.b.e.x, arg_0.b.e.x))).c, vec4<bool>(arg_0.c.b.x, false, true, true), true, Struct_2(arg_0.b.a, 2147483647i, Struct_1(arg_0.b.d.a, vec2<bool>(false, false), vec3<f32>(arg_0.b.c.c.x, 2132f, arg_0.c.c.x)), Struct_1(2147483647i, arg_0.b.d.b, vec3<f32>(-558f, arg_0.c.c.x, -543f)), vec2<u32>(arg_0.b.e.x, 0u))).b).b, func_2(_wgslsmith_f_op_f32(-arg_0.c.c.x)), ~select(28872i, u_input.b, true)), ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.b.e.x, 1u, 46597u, 4294967295u), vec4<u32>(50841u, 16587u, 4294967295u, 55035u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.e.x, 4294967295u, arg_0.b.e.x, 68597u), vec4<u32>(arg_0.b.e.x, 25984u, arg_0.b.e.x, arg_0.b.e.x)) % vec4<u32>(32u))), vec2<bool>(arg_0.b.d.b.x, func_2(-325f).b.x));
    var_0 = Struct_4(func_4(func_4(Struct_1(-var_0.a.a.x, !arg_0.b.c.b, _wgslsmith_f_op_vec3_f32(var_0.a.c.c - vec3<f32>(var_0.a.b.d.c.x, arg_0.b.d.c.x, 261f))), select(select(vec4<bool>(var_0.a.b.d.b.x, false, var_0.c.x, arg_0.c.b.x), vec4<bool>(true, false, var_0.c.x, var_0.c.x), arg_0.b.c.b.x), select(vec4<bool>(var_0.a.b.d.b.x, true, false, var_0.a.c.b.x), vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, var_0.c.x), vec4<bool>(false, arg_0.b.d.b.x, var_0.a.c.b.x, var_0.c.x)), vec4<bool>(var_0.c.x, false, arg_0.b.c.b.x, true)), !var_0.a.c.b.x, arg_0.b).c, vec4<bool>(var_0.c.x, func_2(_wgslsmith_f_op_f32(f32(-1f) * -379f)).b.x, true && !var_0.c.x, !var_0.c.x), select(true, arg_0.c.b.x, var_0.c.x), Struct_2(~var_0.a.b.a, -2147483647i, func_4(Struct_1(0i, var_0.c, vec3<f32>(arg_0.b.c.c.x, arg_0.b.c.c.x, 666f)), vec4<bool>(arg_0.c.b.x, false, arg_0.c.b.x, true), var_0.c.x, arg_0.b).b.d, Struct_1(-1i, vec2<bool>(false, false), _wgslsmith_f_op_vec3_f32(-var_0.a.b.d.c)), min(abs(arg_0.b.e), arg_0.b.e >> (var_0.a.b.e % vec2<u32>(32u))))), abs(vec4<u32>(1u, func_4(arg_0.c, select(vec4<bool>(true, false, false, arg_0.c.b.x), vec4<bool>(var_0.a.c.b.x, false, arg_0.b.c.b.x, false), true), func_4(var_0.a.c, vec4<bool>(arg_0.c.b.x, true, false, true), arg_0.b.c.b.x, Struct_2(var_0.a.b.a, 2147483647i, Struct_1(1i, vec2<bool>(var_0.c.x, false), vec3<f32>(var_0.a.b.d.c.x, arg_0.b.d.c.x, var_0.a.b.c.c.x)), Struct_1(var_0.a.c.a, vec2<bool>(true, true), arg_0.c.c), arg_0.b.e)).b.c.b.x, arg_0.b).b.e.x, abs(arg_0.b.e.x), firstTrailingBit(56643u) | 17629u)), vec2<bool>(all(func_2(_wgslsmith_f_op_f32(-arg_0.b.d.c.x)).b), false));
    var var_1 = Struct_4(func_4(arg_0.b.c, select(vec4<bool>(true, -12622i > u_input.b, true, !arg_0.b.d.b.x), vec4<bool>(arg_0.b.c.b.x, any(var_0.c), !arg_0.c.b.x, all(vec2<bool>(false, false))), select(select(vec4<bool>(arg_0.c.b.x, false, arg_0.c.b.x, false), vec4<bool>(var_0.c.x, true, var_0.a.b.d.b.x, false), true), vec4<bool>(true, true, true, true), false)), arg_0.b.d.b.x, Struct_2(var_0.a.b.a >> (var_0.b % vec4<u32>(32u)), 37081i >> (firstTrailingBit(24200u) % 32u), Struct_1(-843i, arg_0.c.b, _wgslsmith_div_vec3_f32(vec3<f32>(-588f, arg_0.c.c.x, var_0.a.b.d.c.x), vec3<f32>(arg_0.b.d.c.x, -1298f, 1360f))), Struct_1(arg_0.b.a.x, var_0.a.c.b, vec3<f32>(-472f, 950f, 357f)), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_0.a.b.e.x, arg_0.b.e.x)), func_4(Struct_1(u_input.a.x, var_0.c, vec3<f32>(arg_0.c.c.x, -584f, var_0.a.b.c.c.x)), vec4<bool>(var_0.a.b.d.b.x, false, true, false), arg_0.c.b.x, Struct_2(arg_0.b.a, arg_0.d, Struct_1(arg_0.d, arg_0.c.b, vec3<f32>(var_0.a.c.c.x, 909f, 192f)), var_0.a.b.d, arg_0.b.e)).b.e))), ~var_0.b, var_0.c);
    var var_2 = Struct_3(u_input.a.yz, func_4(func_4(Struct_1(arg_0.d, !arg_0.c.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.c.c.x, -1141f, -1424f))), vec4<bool>(true, true, true, true), var_0.c.x, var_1.a.b).b.c, select(!select(vec4<bool>(true, var_0.a.b.d.b.x, arg_0.b.d.b.x, var_1.a.c.b.x), vec4<bool>(var_1.c.x, true, arg_0.b.d.b.x, arg_0.c.b.x), true), !vec4<bool>(var_1.a.c.b.x, true, true, false), !select(vec4<bool>(var_0.c.x, var_0.a.b.d.b.x, true, false), vec4<bool>(arg_0.c.b.x, true, true, false), vec4<bool>(false, var_0.c.x, false, false))), !(~arg_0.b.e.x == 0u), Struct_2(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a.b.a.x, 5448i, u_input.b, arg_0.a.x)), abs(vec4<i32>(38907i, u_input.a.x, 1i, u_input.a.x))), reverseBits(-72787i | u_input.a.x), func_4(var_0.a.c, !vec4<bool>(var_0.a.b.c.b.x, false, var_0.c.x, var_1.a.c.b.x), arg_0.b.d.b.x || true, var_0.a.b).b.d, Struct_1(0i, vec2<bool>(arg_0.c.b.x, false), arg_0.c.c), vec2<u32>(~1u, reverseBits(0u)))).b, var_1.a.b.d, 25123i);
    var var_3 = Struct_2(vec4<i32>(-5616i, -(i32(-1i) * -16899i), -(~var_0.a.c.a & _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.b.d.a, 2147483647i, 1i), u_input.a)), -50596i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(var_2.a.x), var_1.a.a.x, u_input.b, -2147483647i), vec4<i32>(-1i) * -vec4<i32>(arg_0.c.a, 21233i, 17920i, 2147483647i)), u_input.a.x), func_2(_wgslsmith_f_op_f32(max(820f, _wgslsmith_f_op_f32(sign(var_2.c.c.x))))), Struct_1(var_0.a.d ^ 1i, func_4(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.b, var_0.a.a.x), var_0.a.b.a.zx), vec2<bool>(var_1.c.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1069f, arg_0.c.c.x, 995f))), select(!vec4<bool>(false, var_2.c.b.x, true, true), !vec4<bool>(false, true, var_2.b.c.b.x, arg_0.b.c.b.x), false), true, Struct_2(vec4<i32>(var_2.d, var_1.a.d, 48932i, 22687i), -43243i, Struct_1(-46451i, var_2.b.c.b, arg_0.c.c), Struct_1(var_0.a.d, var_2.c.b, vec3<f32>(-725f, var_1.a.b.c.c.x, var_0.a.b.d.c.x)), max(vec2<u32>(var_1.b.x, 1u), var_0.a.b.e))).c.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -337f) * var_2.b.d.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.c.c.x), 1066f), _wgslsmith_div_f32(var_0.a.b.c.c.x, _wgslsmith_div_f32(1873f, -414f)))), ~abs(select(vec2<u32>(35693u, var_2.b.e.x), var_2.b.e, vec2<bool>(false, arg_0.c.b.x)) ^ ~vec2<u32>(var_2.b.e.x, 0u)));
    return _wgslsmith_mod_i32(countOneBits(countOneBits(i32(-1i) * -1i)), _wgslsmith_clamp_i32(var_1.a.a.x << (~var_1.a.b.e.x % 32u), -_wgslsmith_clamp_i32(20427i, var_2.b.c.a, var_2.b.c.a) & arg_0.a.x, 0i));
}

fn func_1() -> vec4<u32> {
    let var_0 = ~(func_5(func_4(func_2(159f), vec4<bool>(true, true, true, true), false, Struct_2(vec4<i32>(-13056i, -1i, u_input.b, 0i), 2147483647i, Struct_1(u_input.b, vec2<bool>(true, false), vec3<f32>(-1816f, -1359f, 239f)), Struct_1(u_input.b, vec2<bool>(true, false), vec3<f32>(1040f, 425f, 210f)), vec2<u32>(58556u, 17916u)))) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -u_input.b), min(firstTrailingBit(vec3<i32>(u_input.a.x, 6951i, -1i)), u_input.a)));
    let var_1 = u_input.a.xz;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1392f - -425f), -1179f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(989f, 3128f)), -124f, _wgslsmith_f_op_f32(f32(-1f) * -1052f))));
    let var_3 = var_2.yy;
    let var_4 = vec2<bool>(true | (var_3.x > _wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(-var_3.x))), select(false, true, any(vec2<bool>(false, true))));
    return select(~(~abs(vec4<u32>(50248u, 0u, 9089u, 5747u))), ~(~vec4<u32>(1u, 1u, 1u, 1u)), !(func_2(-507f).a > select(~3906i, 1i, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 1445i, 0i, -86302i)) >> (func_1() % vec4<u32>(32u)), (vec4<i32>(-2147483647i, u_input.a.x, 15816i, u_input.a.x) << (vec4<u32>(31553u, 0u, 1u, 4294967295u) % vec4<u32>(32u))) | countOneBits(vec4<i32>(-4300i, u_input.b, 0i, u_input.b))) << (firstLeadingBit(firstTrailingBit(vec4<u32>(9935u, 18276u, 47343u, 1320u))) % vec4<u32>(32u)), -37019i, Struct_1(u_input.b, vec2<bool>(false, true), vec3<f32>(_wgslsmith_f_op_f32(min(-1610f, func_4(Struct_1(26911i, vec2<bool>(true, true), vec3<f32>(-742f, -332f, -552f)), vec4<bool>(false, true, true, true), false, Struct_2(vec4<i32>(u_input.b, u_input.a.x, 2147483647i, 1i), u_input.a.x, Struct_1(-6318i, vec2<bool>(false, false), vec3<f32>(234f, 705f, 1007f)), Struct_1(-32043i, vec2<bool>(false, false), vec3<f32>(355f, -291f, 124f)), vec2<u32>(4294967295u, 1u))).b.c.c.x)), 458f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1847f)))), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f + 1413f)) + func_2(-1090f).c.x)), vec2<u32>(1u, 1u));
    var_0 = func_4(Struct_1(var_0.d.a << (1u % 32u), func_4(func_4(var_0.d, vec4<bool>(true, var_0.d.b.x, var_0.d.b.x, var_0.c.b.x), true, func_4(var_0.c, vec4<bool>(var_0.c.b.x, var_0.c.b.x, false, var_0.d.b.x), true, Struct_2(vec4<i32>(var_0.b, u_input.a.x, 1i, var_0.d.a), u_input.b, Struct_1(u_input.b, vec2<bool>(var_0.c.b.x, true), vec3<f32>(var_0.d.c.x, var_0.d.c.x, var_0.d.c.x)), Struct_1(-56388i, var_0.c.b, var_0.d.c), vec2<u32>(var_0.e.x, 4294967295u))).b).b.d, !(!vec4<bool>(true, false, true, var_0.d.b.x)), var_0.d.b.x, func_4(var_0.c, vec4<bool>(false, false, var_0.d.b.x, var_0.d.b.x), func_2(818f).b.x, Struct_2(var_0.a, 16803i, var_0.d, Struct_1(u_input.b, var_0.d.b, var_0.d.c), vec2<u32>(4294967295u, 15200u))).b).c.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_0.c.c)))), select(vec4<bool>(all(select(vec4<bool>(false, false, true, var_0.c.b.x), vec4<bool>(false, false, false, var_0.d.b.x), false)), true, var_0.d.b.x, !var_0.c.b.x), select(vec4<bool>(!var_0.c.b.x, any(vec3<bool>(var_0.d.b.x, var_0.c.b.x, var_0.c.b.x)), var_0.c.b.x, all(var_0.c.b)), !select(vec4<bool>(true, false, var_0.c.b.x, false), vec4<bool>(var_0.d.b.x, true, var_0.c.b.x, var_0.d.b.x), false), vec4<bool>(var_0.d.b.x || var_0.c.b.x, false, 20847u >= var_0.e.x, u_input.a.x == var_0.c.a)), var_0.c.b.x), _wgslsmith_mult_u32(1u, 1u) <= max(var_0.e.x, _wgslsmith_mod_u32(var_0.e.x & 4294967295u, firstLeadingBit(var_0.e.x))), Struct_2(reverseBits(select(var_0.a, vec4<i32>(2147483647i, u_input.b, var_0.d.a, -1i), vec4<bool>(true, var_0.d.b.x, true, true))) >> (vec4<u32>(~23794u, 1u, var_0.e.x, 9494u) % vec4<u32>(32u)), u_input.b, Struct_1(var_0.a.x, !vec2<bool>(false, var_0.d.b.x), _wgslsmith_f_op_vec3_f32(step(func_2(423f).c, _wgslsmith_f_op_vec3_f32(var_0.c.c + var_0.d.c)))), Struct_1(var_0.d.a, vec2<bool>(true, var_0.d.b.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1275f, var_0.d.c.x, var_0.d.c.x))), _wgslsmith_f_op_vec3_f32(-var_0.d.c)))), vec2<u32>(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(42555u, var_0.e.x)), abs(4294967295u)))).b;
    var_0 = Struct_2(var_0.a, _wgslsmith_add_i32(u_input.a.x, var_0.a.x), var_0.d, Struct_1(-1i, var_0.d.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.c.x, -873f, var_0.c.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, 888f, -700f))) * var_0.d.c)), vec2<u32>(func_4(Struct_1(-35851i, var_0.c.b, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d.c.x, var_0.c.c.x, -376f), vec3<f32>(var_0.d.c.x, var_0.d.c.x, var_0.c.c.x)))), select(!vec4<bool>(true, var_0.d.b.x, false, false), vec4<bool>(false, true, false, var_0.d.b.x), select(vec4<bool>(var_0.d.b.x, var_0.c.b.x, true, false), vec4<bool>(false, var_0.d.b.x, true, true), false)), var_0.d.b.x, Struct_2(vec4<i32>(var_0.d.a, var_0.c.a, var_0.a.x, -11062i), _wgslsmith_div_i32(var_0.a.x, u_input.b), var_0.c, Struct_1(u_input.b, vec2<bool>(true, var_0.d.b.x), var_0.c.c), var_0.e)).b.e.x, 22149u));
    var var_1 = Struct_4(func_4(var_0.c, !vec4<bool>(var_0.d.b.x, true, var_0.c.b.x, var_0.c.b.x), any(select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.b.x, false, true), vec3<bool>(var_0.d.b.x, false, false))), func_4(func_2(_wgslsmith_f_op_f32(round(-2312f))), vec4<bool>(2740f != var_0.d.c.x, !var_0.d.b.x, true, false), var_0.c.b.x & true, func_4(Struct_1(1i, var_0.c.b, vec3<f32>(542f, var_0.d.c.x, -1653f)), !vec4<bool>(false, var_0.d.b.x, false, var_0.c.b.x), !var_0.c.b.x, Struct_2(vec4<i32>(-28698i, u_input.b, 0i, 0i), u_input.b, Struct_1(var_0.b, var_0.d.b, vec3<f32>(1000f, var_0.c.c.x, var_0.d.c.x)), Struct_1(u_input.a.x, vec2<bool>(var_0.c.b.x, var_0.c.b.x), vec3<f32>(777f, 899f, 726f)), var_0.e)).b).b), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.e.x, 6018u, abs(var_0.e.x), 1u), func_1()), vec4<u32>(_wgslsmith_add_u32(var_0.e.x, 1u), var_0.e.x, func_1().x, 4294967295u)), !(!vec2<bool>(!var_0.c.b.x, var_0.d.b.x)));
    var_0 = var_1.a.b;
    var var_2 = var_1.a;
    var_1 = Struct_4(func_4(Struct_1(-var_0.d.a, var_2.b.d.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(1276f)), _wgslsmith_f_op_f32(ceil(572f)), var_1.a.b.d.c.x)), !(!select(vec4<bool>(var_0.c.b.x, false, var_1.a.b.c.b.x, var_0.d.b.x), vec4<bool>(var_2.c.b.x, var_2.c.b.x, var_0.d.b.x, false), vec4<bool>(var_2.c.b.x, true, var_2.c.b.x, var_1.c.x))), false, Struct_2(var_0.a, _wgslsmith_mult_i32(abs(var_2.d), u_input.b), func_4(func_4(var_2.c, vec4<bool>(false, var_1.c.x, var_2.c.b.x, true), true, var_1.a.b).c, select(vec4<bool>(false, var_1.c.x, false, var_2.c.b.x), vec4<bool>(true, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x), var_0.d.b.x), var_1.a.b.d.b.x, func_4(var_0.c, vec4<bool>(true, true, var_1.c.x, false), var_0.d.b.x, Struct_2(var_1.a.b.a, -13674i, var_0.d, Struct_1(var_1.a.d, vec2<bool>(var_2.c.b.x, false), var_1.a.b.d.c), vec2<u32>(3552u, 1u))).b).b.d, func_2(_wgslsmith_f_op_f32(sign(171f))), var_2.b.e)), abs(var_1.b), var_2.b.c.b);
    var var_3 = var_2.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.c.x, var_0.d.c.x, var_0.d.c.x, var_0.c.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.c.x, var_0.d.c.x, -464f, 516f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c.x, var_2.c.c.x, var_0.c.c.x, 1093f) * vec4<f32>(var_0.c.c.x, var_0.d.c.x, 1568f, var_1.a.b.c.c.x)))))), firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, 11283i) & u_input.b, abs(~var_1.a.b.a.x)), 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.c.c, var_0.c.c)));
}

