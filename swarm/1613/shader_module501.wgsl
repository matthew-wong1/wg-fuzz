struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<i32> = vec4<i32>(1i, -48272i, -19493i, 58896i);

var<private> global2: vec2<f32> = vec2<f32>(-945f, 2502f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_3) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(round(global2.x))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_2.b.x)));
    global2 = arg_2.b.xy;
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.ywz)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, -565f, 1146f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -956f, global2.x), _wgslsmith_f_op_vec3_f32(arg_2.b.wxy * arg_2.b.xzz), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, false, true), false))))), all(vec3<bool>(arg_1, !(!arg_1), !(!arg_1)))));
    var var_1 = Struct_1(~(~arg_2.d.b.x | _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.c.d, global1.x), firstLeadingBit(vec2<i32>(arg_2.c.a, global1.x)))), global1.yzz, arg_0, -_wgslsmith_mod_i32(~global1.x, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.c.b.xz, vec2<i32>(global1.x, 2147483647i)), firstTrailingBit(arg_2.d.b.xz))), _wgslsmith_div_u32(abs(0u), u_input.b.x));
    var var_2 = min(arg_2.a.xxy, _wgslsmith_clamp_vec3_u32(vec3<u32>(44529u, var_1.e, arg_0) >> (arg_2.a.wzx % vec3<u32>(32u)), vec3<u32>(max(46428u, reverseBits(2616u)), arg_2.c.c | 20705u, _wgslsmith_dot_vec4_u32(arg_2.a & vec4<u32>(66642u, arg_0, 0u, arg_2.d.e), vec4<u32>(arg_2.d.c, 4294967295u, arg_0, 0u) ^ vec4<u32>(arg_2.a.x, u_input.e.x, 0u, 12542u))), vec3<u32>(min(~0u, firstTrailingBit(1u)), _wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_mult_u32(0u, 14784u)), ~22320u)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(-global1.x, _wgslsmith_mult_i32(6284i, var_1.d), -1i), vec3<i32>(global1.x, -firstTrailingBit(65638i), -1i));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_4 {
    let var_0 = firstLeadingBit(~(~vec4<i32>(-2147483647i, global1.x, -28483i, -37408i) >> (vec4<u32>(63950u, u_input.b.x, u_input.d, 4294967295u) % vec4<u32>(32u)))) ^ vec4<i32>(global1.x, -2147483647i, ~63145i, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), i32(-1i) * -1120i, global1.x | global1.x, global1.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, 2147483647i, global1.x), vec4<i32>(42648i, -18625i, 22673i, global1.x)), _wgslsmith_add_vec4_i32(vec4<i32>(67792i, 2147483647i, -13260i, global1.x), vec4<i32>(global1.x, 0i, 2147483647i, -22153i)), reverseBits(vec4<i32>(global1.x, global1.x, 2147483647i, 12076i)))));
    var var_1 = Struct_1(global1.x, vec3<i32>(var_0.x, ((global1.x | global1.x) >> (1u % 32u)) << (_wgslsmith_sub_u32(arg_0, arg_0 ^ 48479u) % 32u), reverseBits(-1i)), u_input.e.x, var_0.x, _wgslsmith_mult_u32(0u, abs(~_wgslsmith_add_u32(19541u, arg_0))));
    let var_2 = Struct_4(Struct_1(func_3(reverseBits(firstTrailingBit(4294967295u)), true, Struct_3(~vec4<u32>(u_input.b.x, 1u, 91530u, var_1.e), _wgslsmith_div_vec4_f32(vec4<f32>(-378f, 1000f, global2.x, -672f), vec4<f32>(1682f, 425f, arg_1.x, global2.x)), Struct_1(global1.x, var_1.b, u_input.a, -41949i, 25910u), Struct_1(-1i, var_1.b, 56827u, var_0.x, u_input.c))), max(global1.yyx, vec3<i32>(-2147483647i, ~global1.x, 2147483647i)), abs(7774u), ~min(_wgslsmith_div_i32(var_1.b.x, 2147483647i), min(global1.x, 1i)), 54259u));
    var_1 = Struct_1(abs((3462i >> (var_1.e % 32u)) >> (0u % 32u)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(0i), reverseBits(var_0.x), var_1.b.x), vec3<i32>(-1i) * -vec3<i32>(var_2.a.a, 2147483647i, var_1.b.x))), var_1.e, _wgslsmith_mod_i32(var_0.x & var_2.a.a, i32(-1i) * -(var_2.a.a << (u_input.d % 32u))), ~arg_0);
    global2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.xy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-213f, 1876f)))), all(vec2<bool>(false, true)))), vec2<bool>(true, true))), vec2<f32>(-107f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-747f, 1000f, true))))))));
    return Struct_4(var_2.a);
}

fn func_1() -> u32 {
    var var_0 = func_2(_wgslsmith_mult_u32(max(abs(~u_input.a), ~u_input.c), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1750f, _wgslsmith_f_op_f32(select(global2.x, global2.x, true))) * vec3<f32>(-297f, -1114f, global2.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, global2.x) * vec3<f32>(1513f, 1061f, -450f))))))));
    return _wgslsmith_dot_vec3_u32(countOneBits(min(vec3<u32>(u_input.a, ~u_input.e.x, u_input.a), ~u_input.b.www)), firstLeadingBit(~vec3<u32>(var_0.a.c, 1u & var_0.a.c, ~var_0.a.e)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec2_i32(func_2(1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(909f, global2.x, false)) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(634f + global2.x)), -862f)).a.b.yy, global1.zy);
    global0 = func_2(~((1u >> (firstTrailingBit(36991u) % 32u)) | func_1()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-966f, global2.x, global2.x)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1006f, 618f)), 451f, _wgslsmith_f_op_f32(min(global2.x, -899f)))))).a.a;
    var var_1 = func_2(0u, vec3<f32>(_wgslsmith_f_op_f32(floor(594f)), _wgslsmith_f_op_f32(sign(776f)), global2.x)).a;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1000f, global2.x, global2.x) + vec4<f32>(-351f, global2.x, global2.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(816f, global2.x, global2.x, global2.x) * vec4<f32>(global2.x, global2.x, -661f, global2.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(824f * global2.x), -2137f, _wgslsmith_f_op_f32(min(977f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)), _wgslsmith_f_op_f32(1000f - global2.x), global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 1644f, 669f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1402f, -1000f, global2.x, global2.x) + vec4<f32>(777f, -294f, global2.x, global2.x))))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), true))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1602f * _wgslsmith_f_op_f32(-571f * var_2.x)))))));
    return ~reverseBits(565i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(global2.x - global2.x))))));
    global1 = vec4<i32>(-1i, func_4(func_1(), u_input.a, Struct_1(-_wgslsmith_div_i32(global1.x, -2147483647i), min(firstTrailingBit(vec3<i32>(14176i, 2147483647i, -42272i)), global1.xyy & vec3<i32>(global1.x, -2147483647i, 2147483647i)), ~u_input.a << (~u_input.a % 32u), func_3(u_input.e.x, false, Struct_3(u_input.b, vec4<f32>(global2.x, 851f, 572f, global2.x), Struct_1(global1.x, vec3<i32>(global1.x, global1.x, global1.x), 0u, 2147483647i, u_input.a), Struct_1(global1.x, global1.xzz, u_input.d, -1i, 4294967295u))) ^ global1.x, ~u_input.a)), _wgslsmith_mod_i32(global1.x, ~_wgslsmith_add_i32(-80712i, global1.x) & -42124i), 1i);
    global1 = min(-((countOneBits(vec4<i32>(global1.x, 1i, 2147483647i, 30540i)) >> (firstTrailingBit(vec4<u32>(u_input.d, u_input.e.x, 69067u, u_input.e.x)) % vec4<u32>(32u))) | (vec4<i32>(39936i, global1.x, global1.x, 0i) | firstLeadingBit(vec4<i32>(-15801i, 25765i, global1.x, -1i)))), ~(~(-vec4<i32>(-6154i, global1.x, -1i, -28176i) & select(vec4<i32>(global1.x, 1552i, -9630i, 0i), vec4<i32>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(false, false, false, false)))));
    let var_0 = Struct_3(~vec4<u32>(select(~u_input.e.x, 0u, all(vec4<bool>(false, true, true, false))), u_input.d ^ ~u_input.e.x, 1u, ~9148u), vec4<f32>(global2.x, -693f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(trunc(global2.x))))), _wgslsmith_f_op_f32(-global2.x)), func_2(max(_wgslsmith_add_u32(75799u, u_input.e.x), u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1348f, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1187f, -1437f, -123f)))))).a, Struct_1(global1.x, global1.zwx, 0u, select(_wgslsmith_sub_i32(18268i << (u_input.d % 32u), _wgslsmith_add_i32(-2147483647i, global1.x)), global1.x, !(global2.x != global2.x)), _wgslsmith_dot_vec2_u32(u_input.e, u_input.b.xz)));
    var var_1 = Struct_2(select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), any(vec3<bool>(true, true, true))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))) & select(any(vec3<bool>(true, true, false)), true, true)), ~(select(vec3<i32>(-2147483647i, global1.x, 19795i) >> (var_0.a.wzx % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-2147483647i, -18759i, global1.x)), 18956i > global1.x) | var_0.d.b), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c.e, 4294967295u), var_0.a.wy, firstTrailingBit(var_0.a.xy)), u_input.b.wy >> (vec2<u32>(countOneBits(4294967295u), _wgslsmith_mod_u32(var_0.d.e, u_input.a)) % vec2<u32>(32u))));
    global0 = firstTrailingBit(reverseBits(_wgslsmith_dot_vec3_i32(global1.zyx, -global1.xxw)) ^ var_1.b.x);
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.b.xz)));
    let var_2 = ~(~(~(~84337u))) ^ var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.c, global1.x, select(firstTrailingBit(firstLeadingBit(vec4<i32>(0i, -99755i, 46653i, 56235i) ^ vec4<i32>(-61656i, var_1.b.x, 47319i, var_0.d.a))), (firstLeadingBit(vec4<i32>(-1i, -45636i, 1i, 1i)) | vec4<i32>(var_1.b.x, var_1.b.x, -2147483647i, 2147483647i)) & select(select(vec4<i32>(var_0.d.b.x, var_0.c.a, var_1.b.x, global1.x), vec4<i32>(-49738i, var_0.d.a, global1.x, 0i), vec4<bool>(false, var_1.a.x, false, var_1.a.x)), vec4<i32>(-1394i, -35687i, global1.x, global1.x), !vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), vec4<bool>(!all(vec2<bool>(var_1.a.x, false)), select(true, any(var_1.a), true), !all(vec2<bool>(var_1.a.x, true)), false)), -(vec3<i32>(-1i) * -vec3<i32>(var_0.c.b.x, 17199i, global1.x)));
}

