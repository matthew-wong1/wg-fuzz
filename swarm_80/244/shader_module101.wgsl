struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = max(select(vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(u_input.d, arg_1, -1i, -2147483647i)), -((vec4<i32>(-17707i, 30825i, -1405i, -9648i) | vec4<i32>(64521i, u_input.d, arg_1, u_input.d)) | _wgslsmith_mult_vec4_i32(vec4<i32>(-26814i, 14199i, arg_1, 1i), vec4<i32>(u_input.d, arg_1, arg_1, -2147483647i))), false), _wgslsmith_mod_vec4_i32(select(~(~vec4<i32>(33601i, 12299i, u_input.d, -1384i)), max(~vec4<i32>(-2147483647i, 23840i, 0i, u_input.d), ~vec4<i32>(u_input.d, -2147483647i, arg_1, arg_1)), !arg_0), firstTrailingBit(~(~vec4<i32>(arg_1, 37359i, -12067i, -1i)))));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, var_0.x, -2147483647i, 16923i), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1, arg_1, var_0.x, var_0.x), vec4<i32>(-25467i, u_input.d, -2147483647i, u_input.d), vec4<bool>(arg_0, arg_0, false, arg_0)), ~vec4<i32>(0i, u_input.d, -1i, 1i), ~vec4<i32>(arg_1, var_0.x, 2147483647i, var_0.x)), ~vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) << (reverseBits(u_input.c) % vec4<u32>(32u))), -24308i, i32(-1i) * -u_input.d, _wgslsmith_mult_i32(select(min(arg_1, arg_1), arg_1, !arg_0), _wgslsmith_mod_i32(1i, -26702i))));
    var_0 = vec4<i32>(u_input.d, -1i, _wgslsmith_dot_vec2_i32(var_0.xw, reverseBits(var_0.zw)), ~(~(var_0.x | (arg_1 | var_0.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), _wgslsmith_f_op_f32(f32(-1f) * -1296f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 113f)))), 11823u);
    var_0 = ~(~vec4<i32>(min(_wgslsmith_mod_i32(var_0.x, 13435i), 1i), _wgslsmith_clamp_i32(-9088i, reverseBits(var_0.x), var_0.x | 29917i), 1i, _wgslsmith_clamp_i32(~u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, var_0.x, 4927i), vec4<i32>(var_0.x, 35569i, u_input.d, arg_1)), -1i)));
    return _wgslsmith_clamp_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.x, u_input.d, var_0.x), 15192i), u_input.d), -(vec2<i32>(arg_1 << (0u % 32u), ~49509i) ^ ~(~vec2<i32>(-13414i, 2147483647i))), vec2<i32>(0i, 14452i >> (var_1.b % 32u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(~u_input.c, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-607f, 422f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-443f, -1543f) - vec2<f32>(-1145f, 1189f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1511f, -478f) + vec2<f32>(-1441f, 1061f)), false))), ~_wgslsmith_clamp_u32(u_input.a, firstTrailingBit(u_input.c.x), 0u)), _wgslsmith_sub_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 52726u, u_input.a), u_input.c.ywx) | vec3<u32>(45116u, 0u, u_input.b.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 57574u) >> (u_input.c.yyz % vec3<u32>(32u)), min(u_input.c.wzx, u_input.c.yyz)), countOneBits(~u_input.c.wyy))), reverseBits(abs(u_input.a)));
    let var_1 = var_0;
    var var_2 = var_0;
    let var_3 = countOneBits(abs(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -8099i), vec2<i32>(1i, 1i)))) ^ ((func_3(all(vec4<bool>(true, false, true, false)), 0i, var_1.c.xz >> (vec2<u32>(var_1.b.b, 4294967295u) % vec2<u32>(32u))) ^ select(vec2<i32>(-52095i, u_input.d), ~vec2<i32>(-1i, 1i), true)) >> ((u_input.c.wz | (vec2<u32>(76592u, var_0.d) >> (select(vec2<u32>(4294967295u, var_2.a.x), vec2<u32>(var_0.a.x, var_0.a.x), false) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_4 = var_2.b;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, 291f)) * _wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(arg_0.b.a.x, 2323f, 1932f, arg_0.b.a.x))) + vec4<f32>(-335f, _wgslsmith_f_op_f32(-arg_2.x), -701f, 1153f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(322f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1050f - _wgslsmith_f_op_f32(arg_2.x + -548f))), arg_0.b.a.x, -385f), select(arg_1, arg_1, !select(!arg_1, arg_1, true))));
    let var_1 = vec2<u32>(~_wgslsmith_mod_u32(max(arg_0.c.x, 57422u) & u_input.b.x, abs(_wgslsmith_dot_vec2_u32(arg_0.c.yy, arg_0.a.zw))), select(countOneBits(u_input.a), 55431u, arg_1.x));
    var var_2 = var_0.yz;
    var var_3 = ~u_input.c.xwz;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.x)) - 1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))) - 338f);
    return 32068i;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_clamp_i32(arg_3, -2147483647i, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, ~u_input.d), reverseBits(abs(arg_3)), arg_0.d.x));
    return arg_0;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_2();
    var_0 = Struct_3(abs(~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.b, 1u, var_0.a.x, 6801u), vec4<u32>(var_0.c.x, 12425u, arg_1.c, arg_1.c))), arg_0, min(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(28693u, 34115u, var_0.d), ~vec3<u32>(var_0.d, u_input.c.x, var_0.d)), vec3<u32>(select(u_input.c.x, 1u, true), var_0.a.x, ~arg_1.c)), ~func_2().c), arg_0.b);
    var var_1 = func_5(func_5(Struct_1(-1293f, vec4<f32>(336f, _wgslsmith_f_op_f32(-arg_1.a), 1474f, -547f), arg_0.b, vec4<i32>(_wgslsmith_clamp_i32(arg_1.d.x, arg_1.d.x, -26742i), _wgslsmith_dot_vec4_i32(vec4<i32>(-35812i, u_input.d, u_input.d, u_input.d), vec4<i32>(arg_1.d.x, u_input.d, 20686i, 1i)), ~arg_1.d.x, countOneBits(arg_1.d.x))), false, func_2().b, ~_wgslsmith_mod_i32(-6923i, 2650i)), abs(arg_1.d.x) != firstLeadingBit(countOneBits(-52200i)), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.b.a)), select(22268u, _wgslsmith_clamp_u32(abs(arg_1.c), 1u, 4294967295u), true)), 0i);
    var var_2 = func_2();
    let var_3 = func_2();
    return Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.b.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(458f, -716f))))), var_1.b.xy), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, countOneBits(var_3.a)), _wgslsmith_clamp_u32(0u, ~90537u, var_1.c)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(arg_2, -2147483647i)), -firstTrailingBit(vec2<i32>(-1i, arg_2))), firstTrailingBit(~vec2<i32>(2122i, arg_2))), ~(vec2<i32>(53694i, u_input.d) << (select(max(u_input.b, u_input.b), u_input.b, !arg_0) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_sub_u32(u_input.a, (arg_1.b << (_wgslsmith_dot_vec2_u32(u_input.b >> (u_input.b % vec2<u32>(32u)), ~vec2<u32>(17428u, arg_1.b)) % 32u)) >> (37340u % 32u));
    var var_2 = func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a))), arg_1.b | arg_1.b), func_5(Struct_1(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-110f, -365f, -158f, arg_1.a.x)))), ~22399u, vec4<i32>(u_input.d, 2147483647i, var_0.x, 19414i) & countOneBits(vec4<i32>(var_0.x, -2147483647i, arg_2, u_input.d))), 1i != _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2, u_input.d), vec2<i32>(arg_2, 2147483647i), vec2<i32>(19894i, u_input.d)), vec2<i32>(u_input.d, -27985i)), arg_1, var_0.x ^ func_4(func_2(), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<f32>(arg_1.a.x, -2324f, arg_1.a.x, arg_1.a.x), _wgslsmith_div_i32(arg_2, 0i))));
    var var_3 = func_2();
    let var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -748f)) * vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.a.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(288f + var_3.b.a.x), _wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_sub_u32(var_2.b, var_2.b));
    return func_2();
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = ~(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(1i, -7504i, 0i) | vec3<i32>(u_input.d, -7401i, u_input.d), vec3<i32>(4028i, -50809i, u_input.d), 171f != arg_3), select(-vec3<i32>(u_input.d, 2147483647i, 8399i), countOneBits(vec3<i32>(u_input.d, 29789i, u_input.d)), true)));
    let var_1 = true;
    var var_2 = Struct_3(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, arg_2.b, arg_1.b, 25423u) << ((arg_0.a >> (vec4<u32>(arg_0.a.x, arg_1.b, 4294967295u, arg_0.b.b) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.c, arg_0.a), arg_0.b, u_input.c.ywx, arg_2.b);
    var_2 = arg_0;
    var_2 = Struct_3(~u_input.c, arg_1, (max(vec3<u32>(u_input.c.x, 14792u, var_2.a.x), arg_0.a.xww ^ vec3<u32>(var_2.a.x, 56461u, var_2.d)) << (vec3<u32>(~var_2.b.b, 115771u, 26786u) % vec3<u32>(32u))) ^ func_2().a.zzy, _wgslsmith_mult_u32(_wgslsmith_div_u32(10204u, ~60019u), arg_1.b >> (select(~u_input.b.x, arg_0.b.b, var_1) % 32u)));
    return func_2().b;
}

fn func_8(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> vec3<i32> {
    let var_0 = ~func_1(select(!arg_2.wz, vec2<bool>(any(arg_2.xx), false), !(!arg_2.wx)), Struct_2(vec2<f32>(-344f, -1000f), 4294967295u), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(u_input.d | u_input.d, ~u_input.d))).a;
    let var_1 = func_6(arg_1, func_5(func_5(Struct_1(637f, _wgslsmith_f_op_vec4_f32(vec4<f32>(754f, -217f, 1304f, arg_0.a.x) * vec4<f32>(arg_0.a.x, -1000f, arg_0.a.x, -1182f)), arg_1.b >> (arg_0.b % 32u), vec4<i32>(36073i, u_input.d, u_input.d, 0i)), any(select(arg_2.wzy, vec3<bool>(true, arg_2.x, false), vec3<bool>(false, arg_2.x, false))), Struct_2(arg_1.a, _wgslsmith_add_u32(37410u, arg_1.b)), 1i), arg_3, arg_1, _wgslsmith_dot_vec4_i32(func_5(Struct_1(arg_0.a.x, vec4<f32>(-1278f, arg_1.a.x, arg_1.a.x, -1605f), 4762u, vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), arg_3 && arg_3, Struct_2(arg_1.a, 34956u), _wgslsmith_dot_vec2_i32(vec2<i32>(-9728i, u_input.d), vec2<i32>(-1322i, 67873i))).d, firstTrailingBit(vec4<i32>(u_input.d, -35265i, -23267i, u_input.d)))));
    let var_2 = -1851f;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f) * func_6(Struct_2(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), 1u), Struct_1(var_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1601f, var_1.a.x, -1248f, arg_0.a.x)), ~arg_1.b, firstLeadingBit(vec4<i32>(-600i, u_input.d, u_input.d, 2147483647i)))).a.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -410f))), _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_add_u32(~111223u >> (((u_input.a >> (var_1.b % 32u)) | var_0.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(func_5(Struct_1(414f, vec4<f32>(var_1.a.x, 1000f, -984f, 202f), var_1.b, vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i)), false, Struct_2(arg_0.a, arg_0.b), u_input.d).c, func_6(arg_0, Struct_1(var_2, vec4<f32>(arg_0.a.x, -920f, var_1.a.x, arg_0.a.x), 28998u, vec4<i32>(-17826i, u_input.d, 10008i, -1i))).b, func_6(Struct_2(arg_1.a, 1u), Struct_1(arg_0.a.x, vec4<f32>(1200f, -230f, -1387f, -346f), u_input.c.x, vec4<i32>(16132i, u_input.d, u_input.d, -1i))).b, _wgslsmith_div_u32(6912u, 1u)), func_2().a)), vec4<i32>(~(_wgslsmith_clamp_i32(u_input.d, u_input.d, u_input.d) >> (arg_1.b % 32u)), 33349i & (u_input.d & -69309i), u_input.d, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -54184i, -2147483647i), vec3<i32>(u_input.d, -13494i, 106985i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.d, u_input.d), vec3<i32>(-2147483647i, u_input.d, 0i) | vec3<i32>(2147483647i, u_input.d, u_input.d)))));
    var var_4 = -(u_input.d | u_input.d);
    return ~_wgslsmith_div_vec3_i32(var_3.d.xxy, -select(min(var_3.d.wwz, vec3<i32>(u_input.d, u_input.d, -163i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, var_3.d.x, u_input.d), vec3<i32>(u_input.d, u_input.d, -2147483647i)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(func_7(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true), Struct_2(vec2<f32>(-391f, 804f), 0u), -70583i), Struct_2(func_6(func_6(Struct_2(vec2<f32>(1717f, -817f), u_input.a), Struct_1(-543f, vec4<f32>(-968f, 1050f, 105f, 107f), u_input.c.x, vec4<i32>(-1i, 30183i, u_input.d, 0i))), func_5(Struct_1(-650f, vec4<f32>(581f, 688f, -1000f, -1555f), u_input.c.x, vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), false, Struct_2(vec2<f32>(200f, -422f), u_input.b.x), -2147483647i)).a, u_input.c.x), Struct_2(_wgslsmith_f_op_vec2_f32(floor(func_1(vec2<bool>(false, false), Struct_2(vec2<f32>(630f, 890f), u_input.a), 3230i).b.a)), 1u), func_2().b.a.x), func_7(func_2(), func_1(vec2<bool>(true, true), func_7(func_2(), func_7(Struct_3(vec4<u32>(1u, 49306u, u_input.c.x, 4255u), Struct_2(vec2<f32>(245f, 320f), 4294967295u), vec3<u32>(11392u, 0u, u_input.c.x), 62441u), Struct_2(vec2<f32>(-133f, -1366f), 1u), Struct_2(vec2<f32>(-991f, 1005f), 4294967295u), -291f), Struct_2(vec2<f32>(-622f, -788f), 12719u), _wgslsmith_div_f32(920f, 257f)), u_input.d).b, func_6(Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1052f, -127f), vec2<f32>(-1373f, 134f))), ~42168u), Struct_1(-832f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, 964f, 1167f, 423f)), 10944u, -vec4<i32>(u_input.d, u_input.d, u_input.d, -1i))), 287f), vec4<bool>(all(vec2<bool>(all(vec4<bool>(false, true, false, false)), false)), all(vec2<bool>(true, true)), true, !all(vec3<bool>(true, true, false)) | true), !(true & (11940u != _wgslsmith_div_u32(31602u, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec2<bool>(true, true), Struct_2(vec2<f32>(477f, 1013f), 11242u), var_0.x).b.a.x))))));
    let var_2 = func_5(func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1890f, var_1, var_1) - vec4<f32>(var_1, 434f, var_1, var_1))), 0u, vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, var_0.x, 0i, -24781i)), 25080i, func_4(Struct_3(u_input.c, Struct_2(vec2<f32>(var_1, -1168f), 64478u), u_input.c.xyz, u_input.c.x), vec4<bool>(false, true, false, false), vec4<f32>(var_1, var_1, var_1, -122f), var_0.x))), abs(84624u | u_input.a) > u_input.b.x, func_6(Struct_2(vec2<f32>(-253f, var_1), func_7(Struct_3(u_input.c, Struct_2(vec2<f32>(var_1, var_1), u_input.a), u_input.c.zyz, u_input.c.x), Struct_2(vec2<f32>(-842f, 563f), 19198u), Struct_2(vec2<f32>(var_1, 1294f), u_input.b.x), var_1).b), func_5(Struct_1(1000f, vec4<f32>(var_1, var_1, var_1, -342f), 42433u, vec4<i32>(var_0.x, u_input.d, -2147483647i, 1i)), true, func_6(Struct_2(vec2<f32>(1305f, var_1), u_input.b.x), Struct_1(var_1, vec4<f32>(264f, -303f, 478f, 872f), u_input.c.x, vec4<i32>(24739i, -2147483647i, 650i, 0i))), -1i)), 49504i), (1i != _wgslsmith_mod_i32(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.x, u_input.d, 29798i), vec4<i32>(u_input.d, 1i, 9918i, var_0.x)))) | select(select(select(true, true, false), -222f > var_1, all(vec3<bool>(false, true, true))), ~u_input.b.x != _wgslsmith_clamp_u32(16836u, 36119u, 0u), true), func_7(func_1(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), Struct_2(vec2<f32>(852f, var_1), 0u), u_input.d), func_7(Struct_3(_wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(44728u, 52485u, u_input.a, 53980u)), func_7(Struct_3(u_input.c, Struct_2(vec2<f32>(var_1, var_1), u_input.b.x), u_input.c.yyz, u_input.a), Struct_2(vec2<f32>(var_1, var_1), 27883u), Struct_2(vec2<f32>(var_1, -281f), 35133u), var_1), u_input.c.wzx, ~26273u), func_6(Struct_2(vec2<f32>(var_1, var_1), 2876u), Struct_1(-1000f, vec4<f32>(var_1, -847f, -878f, var_1), 16381u, vec4<i32>(var_0.x, u_input.d, u_input.d, var_0.x))), Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-722f, -416f), vec2<f32>(var_1, var_1)), _wgslsmith_mod_u32(u_input.b.x, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -1369f)), Struct_2(func_7(Struct_3(vec4<u32>(7857u, 90077u, u_input.c.x, u_input.b.x), Struct_2(vec2<f32>(485f, var_1), u_input.a), vec3<u32>(u_input.a, 1u, 0u), 7539u), func_6(Struct_2(vec2<f32>(var_1, -1724f), 56381u), Struct_1(784f, vec4<f32>(var_1, 945f, var_1, var_1), 37394u, vec4<i32>(var_0.x, 1i, u_input.d, 2147483647i))), Struct_2(vec2<f32>(-1216f, var_1), u_input.b.x), var_1).a, ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(297f - 1338f)))), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d, var_0.x), u_input.d) & -29587i).b;
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~1u), 76334u, max(_wgslsmith_mult_u32(7722u, u_input.b.x), 4294967295u), 4294967295u), reverseBits(u_input.c)), func_2().b, abs(~(~select(vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), u_input.c.yxx, vec3<bool>(false, true, true)))), 0u);
    let var_4 = vec3<bool>(true, 0i <= _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.d, -1i, -37306i)), -max(vec3<i32>(var_0.x, u_input.d, var_0.x), vec3<i32>(u_input.d, var_0.x, u_input.d))), false);
    var var_5 = 2147483647i;
    let var_6 = !select(!(!select(vec4<bool>(var_4.x, true, var_4.x, var_4.x), vec4<bool>(true, var_4.x, var_4.x, true), vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x))), select(vec4<bool>(true, var_4.x, !var_4.x, !var_4.x), select(!vec4<bool>(true, false, true, var_4.x), select(vec4<bool>(true, var_4.x, var_4.x, false), vec4<bool>(true, true, var_4.x, var_4.x), vec4<bool>(true, var_4.x, var_4.x, var_4.x)), true), select(vec4<bool>(var_4.x, var_4.x, true, var_4.x), vec4<bool>(var_4.x, var_4.x, false, var_4.x), var_4.x || false)), vec4<bool>(!any(vec4<bool>(var_4.x, false, false, var_4.x)), all(vec2<bool>(false, true)) && !var_4.x, any(var_4.zx), true));
    var_3 = Struct_3(vec4<u32>(37191u, u_input.b.x, 60895u, ~var_3.c.x), func_1(vec2<bool>(true, all(!var_6.zxx)), Struct_2(vec2<f32>(var_2.x, -301f), abs(u_input.c.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, -1i) | vec3<i32>(2147483647i, 16582i, 39040i), vec3<i32>(func_5(Struct_1(var_1, vec4<f32>(1270f, var_2.x, var_2.x, -969f), 1u, vec4<i32>(-25254i, var_0.x, var_0.x, var_0.x)), false, var_3.b, 2147483647i).d.x, reverseBits(18025i), ~(-2147483647i)))).b, u_input.c.zwz, _wgslsmith_mod_u32(~abs(~13199u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, var_0.x, -2147483647i, u_input.d), vec4<i32>(-2147483647i, 0i, -1i, u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, var_0.x, 0i, -2147483647i), vec4<i32>(15340i, var_0.x, -25642i, var_0.x)), var_6.x) >> (~max(_wgslsmith_add_vec4_u32(vec4<u32>(42540u, var_3.d, 35066u, 32132u), u_input.c), ~vec4<u32>(7804u, 1u, 0u, u_input.a)) % vec4<u32>(32u)));
}

