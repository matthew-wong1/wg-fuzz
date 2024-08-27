struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<u32>) -> i32 {
    var var_0 = min(arg_2.a, vec4<u32>(20514u, arg_3.x | ~arg_2.a.x, ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 4294967295u, 28178u), ~arg_2.b.a), 30417u));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(select(-25396i >> (var_0.x % 32u), reverseBits(arg_2.b.b.x), !(!arg_1.b.c)), firstTrailingBit(10717i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.b.x, arg_2.c.b.x, 1i, 1i), vec4<i32>(-1i, arg_0.b.x, -9038i, u_input.a)) & 43284i, -12626i)), vec3<i32>(55625i, 13615i, min(u_input.a, -2147483647i)));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    var var_0 = Struct_1(4294967295u, vec4<i32>(func_3(arg_0.b, arg_0, arg_0, ~vec3<u32>(0u, 25595u, 1u)), max(1i, func_3(arg_0.c, Struct_2(arg_0.a, arg_0.c, arg_0.c), arg_0, vec3<u32>(arg_0.a.x, arg_0.b.a, 55303u))), reverseBits(arg_0.b.b.x << (arg_0.b.a % 32u)), 2147483647i) ^ arg_0.c.b, !(!arg_0.b.c), arg_0.b.d);
    var var_1 = arg_0.b;
    var_1 = arg_0.b;
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~arg_0.a, arg_0.a), arg_0.a | abs(vec4<u32>(var_0.a, var_0.a, var_1.a, 11453u))) ^ arg_0.a, arg_0.b, arg_0.b);
    var var_3 = select(vec3<bool>(var_2.c.c, (-1i < var_1.b.x) == false, all(!vec2<bool>(true, var_0.c))), !(!select(!vec3<bool>(true, arg_0.c.c, false), select(vec3<bool>(true, var_1.c, false), vec3<bool>(true, var_1.c, arg_1), vec3<bool>(var_2.c.c, true, true)), false)), !vec3<bool>(true, true, any(vec2<bool>(var_2.c.c, arg_0.b.c))));
    return var_2.c.d;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(arg_0.b.x, u_input.a);
    let var_1 = arg_0.d;
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~arg_0.a, 18597u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, 0u), vec4<u32>(arg_0.a, 1u, 4294967295u, arg_0.a))), 21084u) & _wgslsmith_mult_vec2_u32(~abs(max(vec2<u32>(arg_0.a, 4294967295u), vec2<u32>(arg_0.a, arg_0.a))), ~(~vec2<u32>(16314u, 0u)));
    var var_3 = arg_0.c;
    var var_4 = Struct_2(~vec4<u32>(_wgslsmith_sub_u32(~var_2.x, _wgslsmith_add_u32(arg_0.a, 1808u)), reverseBits(~1u), _wgslsmith_add_u32(0u, var_2.x), _wgslsmith_clamp_u32(42005u, var_2.x, 1u) | (37087u >> (var_2.x % 32u))), arg_0, Struct_1(~(~(~4734u)), arg_0.b, arg_0.c && !all(vec2<bool>(true, arg_0.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1316f * -1781f) * var_1.x), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -2178f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1, -1742f)))))));
    return Struct_2(vec4<u32>(1521u & var_4.b.a, 1u, 0u, ~_wgslsmith_add_u32(var_4.b.a, max(var_2.x, var_2.x))), var_4.b, Struct_1(select(_wgslsmith_dot_vec2_u32(var_4.a.zy, var_4.a.zw) ^ countOneBits(var_2.x), 0u, arg_0.c), vec4<i32>(~(-7146i), var_4.c.b.x, -71911i, countOneBits(arg_0.b.x)) << (~select(var_4.a, vec4<u32>(var_4.b.a, 0u, var_4.b.a, 49862u), var_4.c.c) % vec4<u32>(32u)), !any(vec2<bool>(arg_0.c, arg_0.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, -1233f)), _wgslsmith_div_f32(-332f, -789f), -615f, _wgslsmith_f_op_f32(arg_1 * -872f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_4.b.d.x, -102f), var_1, vec4<bool>(false, arg_0.c, true, true))), _wgslsmith_f_op_vec4_f32(-arg_0.d), arg_0.a != var_4.b.a)))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<f32>(-356f, 273f);
    var var_1 = func_4(Struct_1(34386u, countOneBits(~(vec4<i32>(u_input.a, -2147483647i, 3764i, 15558i) >> (vec4<u32>(28522u, 73592u, 0u, 64862u) % vec4<u32>(32u)))), !(!any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_2(vec4<u32>(4294967295u, 1u, 14206u, 4294967295u), Struct_1(1u, vec4<i32>(u_input.a, -16260i, -2147483647i, 2147483647i), false, vec4<f32>(var_0.x, var_0.x, var_0.x, -1009f)), Struct_1(4294967295u, vec4<i32>(41944i, -18906i, u_input.a, u_input.a), true, vec4<f32>(var_0.x, 2391f, var_0.x, -296f))), true)) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x, -379f))), var_0.x);
    var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_1.c.d.x))));
    var_1 = Struct_2(vec4<u32>(~(~var_1.c.a), 1u, var_1.b.a, max(1u, countOneBits(var_1.a.x))), var_1.c, var_1.c);
    var_0 = vec2<f32>(-2121f, -1713f);
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(countOneBits(abs(~20130u)), -vec4<i32>(~_wgslsmith_dot_vec3_i32(var_0.b.yyz, var_0.b.xzx), _wgslsmith_mod_i32(-u_input.a, 0i), 1i, -35234i), _wgslsmith_f_op_f32(var_0.d.x * -1031f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(1485f * _wgslsmith_f_op_f32(343f + var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 549f) * func_4(Struct_1(1u, vec4<i32>(0i, 0i, var_0.b.x, -1990i), var_0.c, vec4<f32>(var_0.d.x, 803f, var_0.d.x, -1086f)), var_0.d.x).c.d.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-2198f, var_0.d.x)), _wgslsmith_f_op_f32(-var_0.d.x)))))));
    let var_1 = Struct_1(1u, vec4<i32>(-1i) * -var_0.b, true, vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * var_0.d.x))));
    var_0 = func_1();
    var var_2 = Struct_2(firstLeadingBit(vec4<u32>(var_1.a & 0u, 1u, ~4294967295u, var_0.a)) & ~min(~vec4<u32>(56885u, 4294967295u, 34769u, var_0.a), ~vec4<u32>(42210u, 0u, 33931u, var_1.a)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(func_4(Struct_1(0u, var_0.b, true, var_0.d), 819f).c.a, abs(var_0.a)), ~(var_0.a | 26959u)), ~(~(-var_1.b)), any(!select(vec4<bool>(false, var_1.c, true, var_0.c), vec4<bool>(true, false, false, var_1.c), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1383f * -183f), _wgslsmith_f_op_f32(ceil(1019f)), _wgslsmith_f_op_f32(1281f * var_0.d.x), _wgslsmith_f_op_f32(-var_0.d.x)) * var_0.d)), func_4(Struct_1(countOneBits(0u), var_1.b, var_1.c, _wgslsmith_f_op_vec4_f32(ceil(func_1().d))), var_1.d.x).c);
    let var_3 = firstTrailingBit(~var_2.a.wzy & func_4(var_2.b, -1658f).a.zyz);
    let var_4 = !vec3<bool>(all(vec3<bool>(var_1.c, false, !var_0.c)), ~abs(2147483647i) < var_1.b.x, var_2.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(var_2.a.xy, vec2<u32>(var_3.x, 74677u)), 1u);
}

