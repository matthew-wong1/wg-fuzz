struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec3_i32(max((vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.b.x, 12838i)) & u_input.a.xwy, vec3<i32>(countOneBits(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x)), u_input.c.x, 0i)), firstLeadingBit(u_input.c.zwx));
    let var_1 = Struct_2(Struct_1(vec3<u32>(1u & ~u_input.e, 1u, u_input.e), var_0.zx | _wgslsmith_add_vec2_i32(u_input.b.zx, _wgslsmith_div_vec2_i32(vec2<i32>(8717i, -4832i), vec2<i32>(-66592i, var_0.x))), ~(~select(vec3<u32>(0u, 22556u, u_input.e), vec3<u32>(47866u, u_input.e, u_input.e), vec3<bool>(false, true, true))), 1u | u_input.e, i32(-1i) * -5148i), Struct_1(vec3<u32>(firstLeadingBit(~u_input.e), _wgslsmith_sub_u32(~u_input.e, 1u), u_input.e), abs(var_0.zz), ~vec3<u32>(u_input.e, max(u_input.e, 45836u), ~u_input.e), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50860u, 30934u, 4294967295u), vec3<u32>(u_input.e, u_input.e, u_input.e)), _wgslsmith_mult_u32(33984u, 1u)), -(~u_input.d) ^ -2147483647i));
    var var_2 = Struct_2(var_1.b, var_1.b);
    var_2 = var_1;
    let var_3 = _wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(var_2.a.d >> (var_1.b.c.x % 32u), 1u, ~var_1.a.d)), (firstLeadingBit(vec3<u32>(var_2.b.a.x, u_input.e, u_input.e)) ^ select(vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(14285u, 4294967295u, var_1.a.c.x), vec3<bool>(true, false, true))) | vec3<u32>(var_1.a.a.x, _wgslsmith_add_u32(96592u, 8749u), 1u), select(vec3<bool>(false, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, false), true), all(vec3<bool>(true, true, true)))), _wgslsmith_div_vec3_u32(var_2.b.a, var_2.a.c), var_2.b.c);
    return abs(min(vec2<i32>(15113i, min(~(-73329i), -1i)), -vec2<i32>(select(38292i, -49053i, false), var_1.a.e)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-1603f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-334f))));
    var var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, u_input.e, 1u), reverseBits(vec3<u32>(9498u, 1u, u_input.e))), _wgslsmith_add_vec2_i32(func_3(), u_input.c.yz), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 14039u, u_input.e), vec3<u32>(77123u, 33102u, 0u), vec3<u32>(u_input.e, 1u, 1u)), 1u, _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), ~vec4<u32>(4294967295u, ~(u_input.e ^ 16228u), u_input.e, ~max(1u, 24692u)));
    let var_2 = var_0;
    var_1 = Struct_4(Struct_3(Struct_1(~vec3<u32>(var_1.a.a.a.x, u_input.e, u_input.e), _wgslsmith_sub_vec2_i32(~var_1.a.a.b, -u_input.a.yw), vec3<u32>(var_1.b.x, 51503u ^ u_input.e, var_1.b.x), ~var_1.a.a.a.x, _wgslsmith_div_i32(u_input.a.x & arg_0, max(2147483647i, arg_0)))), ~firstTrailingBit(select(select(var_1.b, var_1.b, vec4<bool>(false, false, false, false)), vec4<u32>(var_1.b.x, u_input.e, u_input.e, 1u) & var_1.b, vec4<bool>(true, true, true, true))));
    var_1 = Struct_4(var_1.a, var_1.b);
    return Struct_4(var_1.a, vec4<u32>(~_wgslsmith_sub_u32(abs(1u), _wgslsmith_clamp_u32(var_1.b.x, 1565u, u_input.e)), ~4294967295u, 1651u, firstLeadingBit(~(~var_1.a.a.d))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    var var_0 = ~(arg_2.a.a.e ^ (max(_wgslsmith_mult_i32(arg_1.a.a.b.x, arg_2.a.a.b.x), min(2352i, 1i)) ^ 0i));
    return func_2(u_input.d & arg_2.a.a.b.x).a;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    var var_0 = vec4<i32>(-u_input.d, _wgslsmith_div_i32(1i, func_3().x), u_input.a.x, -select(countOneBits(arg_1.a.a.e), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.a.e, arg_1.a.a.e, -1i), vec3<i32>(89848i, 0i, -1i)), !arg_3));
    let var_1 = 52140u;
    var var_2 = ~(~arg_1.b);
    var_2 = arg_1.b;
    var_0 = min(-_wgslsmith_clamp_vec4_i32(max(u_input.a, vec4<i32>(-45778i, arg_1.a.a.e, -13167i, arg_1.a.a.e)), vec4<i32>(-1i, 2147483647i, -32502i, var_0.x), u_input.c >> (arg_1.b % vec4<u32>(32u))) | reverseBits(vec4<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(var_0.xxz, vec3<i32>(arg_1.a.a.e, var_0.x, 2147483647i)), var_0.x, 33540i)), _wgslsmith_sub_vec4_i32(max(_wgslsmith_div_vec4_i32(abs(u_input.a), u_input.c | vec4<i32>(var_0.x, var_0.x, 37897i, 2147483647i)), abs(firstLeadingBit(vec4<i32>(-392i, -1i, u_input.d, arg_1.a.a.b.x)))), select(vec4<i32>(-9961i, -20769i << (arg_1.a.a.a.x % 32u), select(u_input.c.x, 1i, arg_3), var_0.x), vec4<i32>(0i, -20016i, 0i, -55067i >> (u_input.e % 32u)), !select(vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(false, true, false, true), vec4<bool>(arg_3, false, arg_3, arg_3)))));
    return arg_2.x;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = 36136u;
    var var_1 = !vec2<bool>(any(vec2<bool>(true, true)), true);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~(~vec3<u32>(65584u, 42629u, arg_0)) << (reverseBits(~vec3<u32>(u_input.e, 7332u, u_input.e)) % vec3<u32>(32u)), Struct_4(func_4(112857u, func_2(u_input.d), func_2(-94562i)), ~vec4<u32>(15489u, u_input.e, 0u, u_input.e) | vec4<u32>(41350u, 1u, 48295u, u_input.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), any(vec2<bool>(!var_1.x, true)))) * _wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(f32(-1f) * -847f)));
    let var_3 = vec3<u32>(15199u, arg_0, select(_wgslsmith_sub_u32(arg_0, arg_0), _wgslsmith_add_u32(~firstLeadingBit(arg_0), u_input.e), select(true, all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), reverseBits(u_input.c.x) == -27579i)));
    let var_4 = arg_0;
    return -1360f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_1(_wgslsmith_sub_u32(1u, ~select(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(85890u, 25129u), 73908u < u_input.e))));
    var var_1 = Struct_2(Struct_1(func_2(u_input.c.x).a.a.c | ~select(vec3<u32>(4294967295u, u_input.e, u_input.e), vec3<u32>(u_input.e, u_input.e, u_input.e), true), vec2<i32>(abs(u_input.c.x), _wgslsmith_div_i32(-u_input.d, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-35910i, u_input.d, 2147483647i)))), vec3<u32>(u_input.e, u_input.e, firstTrailingBit(1u)), min(select(45776u, max(47839u, 0u), any(vec4<bool>(false, true, false, false))), u_input.e), u_input.d), func_2(-2147483647i).a.a);
    var var_2 = ~(~_wgslsmith_clamp_i32(abs(u_input.d), ~u_input.b.x, var_1.a.e & 0i)) < var_1.b.e;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(func_1(37115u)))) - -652f) * _wgslsmith_f_op_f32(func_5(var_1.a.c, Struct_4(func_4(1u, Struct_4(Struct_3(Struct_1(vec3<u32>(1u, var_1.a.a.x, 1u), vec2<i32>(var_1.a.e, -2147483647i), vec3<u32>(var_1.a.d, 30642u, var_1.a.a.x), var_1.a.a.x, 8540i)), vec4<u32>(var_1.a.a.x, var_1.b.d, 46558u, 0u)), Struct_4(Struct_3(var_1.b), vec4<u32>(u_input.e, u_input.e, u_input.e, 1u))), ~vec4<u32>(u_input.e, var_1.a.c.x, u_input.e, u_input.e)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-173f, -1000f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -148f), vec2<f32>(-1030f, 767f)))), any(vec4<bool>(true, true, true, true))))));
    var var_3 = vec4<bool>(any(!vec3<bool>(false, all(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, false, false)))), true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-136f, 1620f, true)), -911f, true)) != 1f, false);
    var var_4 = func_4(19419u, Struct_4(func_2(-(~(-1i))).a, ~firstLeadingBit(vec4<u32>(0u, 40522u, var_1.b.c.x, 23683u))), Struct_4(Struct_3(Struct_1(_wgslsmith_clamp_vec3_u32(var_1.b.c, var_1.a.a, var_1.a.c), abs(var_1.b.b), _wgslsmith_add_vec3_u32(var_1.a.a, var_1.a.a), u_input.e, _wgslsmith_sub_i32(54225i, u_input.d))), min(~(~vec4<u32>(4294967295u, var_1.b.d, u_input.e, 62529u)), select(~vec4<u32>(27478u, u_input.e, u_input.e, var_1.b.d), ~vec4<u32>(var_1.b.d, u_input.e, 4294967295u, 4294967295u), !vec4<bool>(true, var_3.x, var_3.x, var_3.x))))).a;
    var var_5 = false;
    let var_6 = 757f;
    var_3 = !select(select(!(!vec4<bool>(true, var_3.x, var_3.x, false)), select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(false, var_3.x, true, false), !var_3.x), vec4<bool>(!var_3.x, any(vec2<bool>(true, var_3.x)), var_3.x, var_3.x)), select(vec4<bool>(any(var_3.yy), !var_3.x, true, var_3.x), !(!vec4<bool>(var_3.x, var_3.x, var_3.x, false)), !all(var_3.zz)), !(!(!vec4<bool>(true, var_3.x, var_3.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.d, func_2(0i).a.a.b, var_4.e);
}

