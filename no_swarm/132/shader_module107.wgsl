struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_5) -> vec2<i32> {
    global0 = reverseBits(~abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(global0.x, -19178i)) << (u_input.c % vec2<u32>(32u))));
    let var_0 = (select(1u, 15018u, any(select(vec2<bool>(arg_0.b.a.e.x, arg_0.b.a.d.x), arg_0.b.a.e.xx, vec2<bool>(false, false)))) ^ ~(~(~4434u))) != ~_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(37324u, 5110u, u_input.c.x), vec3<u32>(40181u, u_input.c.x, 6972u)), _wgslsmith_mult_vec3_u32(vec3<u32>(37980u, u_input.c.x, u_input.c.x) & vec3<u32>(37000u, u_input.c.x, u_input.c.x), vec3<u32>(6974u, u_input.c.x, 0u)));
    global0 = -((-vec2<i32>(34204i, 16970i) & vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 36909i, 54245i), vec3<i32>(arg_0.c.a.a.x, arg_0.b.a.b.a.x, -66193i)), ~(-6202i))) | -arg_0.b.b.c.a.yy);
    var var_1 = true;
    let var_2 = arg_0.a.x;
    return ~_wgslsmith_div_vec2_i32(vec2<i32>(-49152i, arg_0.a.x), select(~(-arg_0.c.a.a.yx), _wgslsmith_div_vec2_i32(arg_0.b.b.a.a.xy, arg_0.a.zx) & ~arg_0.b.b.c.a.yz, true));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: vec2<bool>) -> i32 {
    global0 = select(-(func_3(Struct_5(vec3<i32>(52153i, 2147483647i, 41293i), Struct_4(Struct_3(Struct_1(vec3<i32>(u_input.d, 0i, 2147483647i)), Struct_1(vec3<i32>(8075i, -14560i, global0.x)), Struct_2(Struct_1(vec3<i32>(963i, 0i, u_input.a)), vec4<f32>(arg_2, arg_2, 499f, 1233f), Struct_1(vec3<i32>(global0.x, u_input.d, global0.x))), vec2<bool>(false, false), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true)), Struct_2(Struct_1(vec3<i32>(2147483647i, -2147483647i, u_input.a)), vec4<f32>(arg_2, 972f, arg_0.x, arg_0.x), Struct_1(vec3<i32>(u_input.d, u_input.d, 21151i)))), Struct_2(Struct_1(vec3<i32>(-30078i, global0.x, 0i)), vec4<f32>(arg_2, arg_0.x, arg_2, arg_2), Struct_1(vec3<i32>(1i, global0.x, 19288i))))) & vec2<i32>(_wgslsmith_clamp_i32(global0.x, u_input.a, global0.x), min(1i, global0.x))), vec2<i32>(global0.x, 30688i), arg_3.x);
    global0 = ~vec2<i32>(~func_3(Struct_5(vec3<i32>(1i, global0.x, -14305i), Struct_4(Struct_3(Struct_1(vec3<i32>(-2147483647i, -2147483647i, u_input.a)), Struct_1(vec3<i32>(u_input.a, 1i, global0.x)), Struct_2(Struct_1(vec3<i32>(global0.x, global0.x, 7922i)), vec4<f32>(arg_0.x, arg_2, arg_2, 1343f), Struct_1(vec3<i32>(1i, u_input.b, -20170i))), vec2<bool>(arg_3.x, true), vec4<bool>(false, arg_3.x, true, arg_3.x)), Struct_2(Struct_1(vec3<i32>(global0.x, -1i, -2147483647i)), vec4<f32>(arg_2, arg_0.x, 1000f, 292f), Struct_1(vec3<i32>(0i, 49016i, 2147483647i)))), Struct_2(Struct_1(vec3<i32>(global0.x, -59590i, u_input.d)), vec4<f32>(362f, -1276f, arg_0.x, arg_0.x), Struct_1(vec3<i32>(u_input.d, -10580i, global0.x))))).x & _wgslsmith_mod_i32(~1i, i32(-1i) * -2147483647i), -1i);
    global0 = vec2<i32>(abs(~max(u_input.a, global0.x)), 7946i);
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1833f + arg_0.x) + -436f), arg_2, _wgslsmith_f_op_f32(arg_2 * 218f))));
    var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1051f, arg_2)) * -1415f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2296f, arg_0.x), -1895f)), _wgslsmith_div_f32(484f, _wgslsmith_f_op_f32(-arg_0.x))))), -1019f);
    return _wgslsmith_sub_i32(-_wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-10926i, u_input.a, global0.x))), vec3<i32>(_wgslsmith_div_i32(global0.x, 0i), abs(-1i), u_input.a)), u_input.d);
}

fn func_1(arg_0: f32) -> vec3<u32> {
    global0 = abs(vec2<i32>(min(u_input.a, ~_wgslsmith_div_i32(u_input.b, 1i)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))), firstTrailingBit(vec3<u32>(4294967295u, 1u, u_input.c.x) | vec3<u32>(u_input.c.x, 50778u, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2026f) - _wgslsmith_f_op_f32(arg_0 + arg_0)), vec2<bool>(false, false))));
    var var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1438f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1853f, arg_0) - vec2<f32>(-1575f, arg_0))) * vec2<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(-2192f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(404f, 1092f)) * _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0, arg_0)))) + var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(arg_0)))))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_0.x), vec2<f32>(719f, var_0.x))))))));
    global0 = _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(global0.x), 15965i | ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global0.x), vec2<i32>(global0.x, 13130i))), -max(~_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(u_input.a, -1i)), (vec2<i32>(-3790i, global0.x) << (vec2<u32>(140606u, u_input.c.x) % vec2<u32>(32u))) >> (u_input.c % vec2<u32>(32u))));
    var var_1 = countOneBits(~u_input.c.x);
    return vec3<u32>(u_input.c.x, 42493u, ~40110u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(firstTrailingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), min(vec3<u32>(u_input.c.x, 22479u, 41183u), vec3<u32>(u_input.c.x, 19391u, u_input.c.x)))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(333f, -1283f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(135f, 247f) - -788f))));
    let var_1 = Struct_5(_wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(u_input.b, -12346i, global0.x) ^ reverseBits(vec3<i32>(u_input.a, global0.x, global0.x))), countOneBits(min(~vec3<i32>(-24831i, u_input.b, 36396i), -vec3<i32>(u_input.b, u_input.d, global0.x)))), Struct_4(Struct_3(Struct_1(vec3<i32>(global0.x, global0.x, global0.x) & vec3<i32>(u_input.a, -1i, global0.x)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0.x, -84400i), vec3<i32>(u_input.a, 1i, 1i))), Struct_2(Struct_1(vec3<i32>(-2147483647i, 21712i, u_input.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, 1000f, -674f, -123f)), Struct_1(vec3<i32>(1i, u_input.a, 39065i))), vec2<bool>(true, true), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, -20800i, u_input.b), vec3<i32>(1i, -10472i, u_input.d))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), Struct_1(vec3<i32>(global0.x, -24979i, 6679i) & vec3<i32>(global0.x, 1i, u_input.a)))), Struct_2(Struct_1(vec3<i32>(1i, u_input.d, 0i | global0.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1770f, 667f, 896f, 656f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -585f, 137f, -552f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, 371f, -1108f, -1000f))))), Struct_1(vec3<i32>(~global0.x, 6540i, -u_input.a))));
    let var_2 = Struct_3(var_1.b.b.c, var_1.b.a.b, Struct_2(var_1.b.b.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-647f, var_1.c.b.x, var_1.c.b.x, var_1.c.b.x))), Struct_1(~(-vec3<i32>(1i, 61892i, 1i)))), !vec2<bool>(!(var_1.b.a.d.x & var_1.b.a.e.x), !var_1.b.a.d.x), select(var_1.b.a.e, var_1.b.a.e, all(!select(vec2<bool>(var_1.b.a.d.x, var_1.b.a.e.x), vec2<bool>(var_1.b.a.d.x, var_1.b.a.e.x), false))));
    global0 = _wgslsmith_clamp_vec2_i32(-select(var_2.a.a.zy, vec2<i32>(-25281i, var_1.a.x), vec2<bool>(false, any(var_1.b.a.e))), min(vec2<i32>(-4673i, abs(0i >> (var_0 % 32u))), -(var_1.b.a.b.a.yx | var_2.c.c.a.zz)), var_1.b.b.a.a.yz);
    var var_3 = vec3<bool>(!(!(!any(var_2.e.xzz))), !((any(var_1.b.a.e) || var_1.b.a.d.x) && true), true);
    var var_4 = var_2.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-43733i), _wgslsmith_add_vec2_i32(select((vec2<i32>(var_2.b.a.x, -2147483647i) << (u_input.c % vec2<u32>(32u))) | var_1.c.c.a.yz, _wgslsmith_add_vec2_i32(~var_2.a.a.zz, max(var_2.a.a.yx, vec2<i32>(var_4.a.x, global0.x))), var_3.x || var_1.b.a.e.x), reverseBits((vec2<i32>(u_input.a, var_1.b.b.c.a.x) ^ vec2<i32>(u_input.b, -42366i)) >> (~u_input.c % vec2<u32>(32u)))));
}

