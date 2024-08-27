struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 31>;

var<private> global1: vec4<i32> = vec4<i32>(38078i, 0i, -1i, 2147483647i);

var<private> global2: vec4<u32> = vec4<u32>(60611u, 0u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    global1 = u_input.a >> (_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(global2.x, 37467u, 4294967295u, 4294967295u))), ~vec4<u32>(0u, global2.x, ~17025u, ~global2.x)) % vec4<u32>(32u));
    global2 = ~(~vec4<u32>(u_input.d, 32532u, ~firstTrailingBit(1u), _wgslsmith_sub_u32(arg_3.x, 29523u)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, _wgslsmith_f_op_f32(f32(-1f) * -1649f), _wgslsmith_f_op_f32(2444f * -310f), _wgslsmith_f_op_f32(1633f - 1959f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-465f, 1000f, -587f, -1110f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(305f, 2060f, 1752f, -1000f)), select(vec4<bool>(true, false, arg_1.x, false), vec4<bool>(true, arg_1.x, arg_1.x, true), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-294f, 502f, 1359f, -1933f) + vec4<f32>(741f, 297f, 1788f, -355f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(448f, -2497f, -446f, -1927f)))))), vec3<i32>(arg_2.x, 2147483647i, -47121i), Struct_1(-global1.x, any(arg_1), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(845f, -396f) * vec2<f32>(-697f, 1298f)) + vec2<f32>(-2345f, 919f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1387f + -224f), 571f)))), arg_3.x, _wgslsmith_f_op_f32(ceil(660f)));
    let var_1 = Struct_5(firstLeadingBit(countOneBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global2.x, var_0.d, global2.x), vec4<u32>(var_0.d, global2.x, 17512u, 105191u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, abs(var_0.d), arg_3.x, 16978u), vec4<u32>(21888u, 18431u >> (u_input.d % 32u), 4294967295u, ~25909u) ^ ~(~vec4<u32>(0u, 32961u, global2.x, var_0.d))), all(vec3<bool>(var_0.b.x >= _wgslsmith_add_i32(9344i, arg_2.x), true | arg_1.x, !select(var_0.c.b, false, false))), false, Struct_4(Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.e - 1000f))), _wgslsmith_f_op_f32(min(-650f, -893f)), ~(arg_0 ^ u_input.c))));
    let var_2 = var_1.e.a;
    return ~(-abs(u_input.a.x)) == _wgslsmith_add_i32(34042i, 1i);
}

fn func_2(arg_0: i32) -> Struct_5 {
    global0 = array<Struct_4, 31>();
    global0 = array<Struct_4, 31>();
    var var_0 = !(~(-34993i) <= firstTrailingBit(global1.x)) != !func_3(global1.zwy ^ vec3<i32>(u_input.c.x, 28763i, 0i), vec2<bool>(true, true), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, arg_0), vec2<i32>(u_input.c.x, 0i))), ~(vec3<u32>(global2.x, global2.x, 71847u) | vec3<u32>(u_input.d, u_input.d, u_input.d)));
    var var_1 = select(vec3<bool>(!select(all(vec2<bool>(true, false)), false, true), true, !((global2.x <= 25103u) & false)), vec3<bool>(!((17109u >> (global2.x % 32u)) < global2.x), false, !any(vec2<bool>(true, true))), select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, select(43134u <= u_input.d, true, true)), !vec3<bool>(true, u_input.d > 23446u, true)));
    global2 = vec4<u32>(_wgslsmith_dot_vec4_u32(countOneBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, u_input.d, 0u, u_input.d), vec4<u32>(4294967295u, u_input.d, 0u, global2.x)))), min(vec4<u32>(30713u, global2.x, 6563u, 1u) << (vec4<u32>(global2.x, u_input.d, global2.x, u_input.d) % vec4<u32>(32u)), abs(vec4<u32>(global2.x, global2.x, global2.x, 39487u))) ^ vec4<u32>(1u, min(4294967295u, u_input.d), global2.x, global2.x)), _wgslsmith_mod_u32(~(~4294967295u), 126519u), ~global2.x, u_input.d);
    return Struct_5(_wgslsmith_clamp_vec4_u32(~vec4<u32>(25464u, 31326u, u_input.d, 1u) | ~abs(vec4<u32>(global2.x, global2.x, u_input.d, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 51131u, 14369u, u_input.d), vec4<u32>(global2.x, global2.x, u_input.d, global2.x)), ~vec4<u32>(u_input.d, 24293u, 1u, global2.x)) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, u_input.d), vec4<u32>(global2.x, 0u, u_input.d, 6138u), vec4<u32>(11082u, u_input.d, 8492u, global2.x)), select(vec4<u32>(44844u, global2.x, 78961u, u_input.d), vec4<u32>(global2.x, u_input.d, u_input.d, global2.x), false)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 27663u, global2.x, u_input.d), vec4<u32>(4294967295u, 9980u, 42678u, 56111u)), ~vec4<u32>(51139u, u_input.d, 14346u, 3249u)), vec4<u32>(u_input.d, 1u | global2.x, 4459u >> (1u % 32u), u_input.d << (u_input.d % 32u)))), vec4<u32>(0u, countOneBits(~_wgslsmith_add_u32(82343u, 11098u)), abs(abs(global2.x << (u_input.d % 32u))), 3413u), var_1.x, false, Struct_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-562f)), _wgslsmith_f_op_f32(max(-1309f, -529f))), -530f, vec3<i32>(firstTrailingBit(arg_0), global1.x, global1.x))));
}

fn func_4(arg_0: Struct_5, arg_1: u32) -> vec4<u32> {
    let var_0 = Struct_4(arg_0.e.a);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -296f, arg_0.e.a.a, arg_0.e.a.a))), _wgslsmith_clamp_vec3_i32(reverseBits(select(vec3<i32>(var_0.a.c.x, -20285i, -1i), vec3<i32>(1i, var_0.a.c.x, -1i), vec3<bool>(arg_0.c, arg_0.c, true))) << (countOneBits(vec3<u32>(arg_1, 1u, arg_0.a.x)) % vec3<u32>(32u)), firstLeadingBit(min(arg_0.e.a.c >> (global2.www % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(var_0.a.c.x, global1.x, 6309i)))), ~_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, -1i, -2147483647i)), vec3<i32>(-17314i, -2147483647i, var_0.a.c.x))), Struct_1(var_0.a.c.x, _wgslsmith_div_u32(arg_1, global2.x) >= 69878u, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.b, -1986f)) * var_0.a.a)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1571f, 145f), vec2<f32>(-1101f, arg_0.e.a.b)))))), arg_0.b.x | u_input.d, arg_0.e.a.a);
    let var_2 = _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(747f, var_0.a.b)), 682f)));
    global2 = _wgslsmith_mod_vec4_u32(arg_0.b, arg_0.a ^ vec4<u32>(arg_0.b.x, 1u, 37752u ^ (38607u << (var_1.d % 32u)), _wgslsmith_mult_u32(u_input.d, 47735u)));
    var var_3 = ((_wgslsmith_add_u32(func_2(u_input.c.x).a.x, min(28410u, u_input.d)) ^ 4294967295u) | min(u_input.d, abs(u_input.d) >> (max(1u, 1u) % 32u))) < 87631u;
    return firstLeadingBit(firstTrailingBit(vec4<u32>(~global2.x, var_1.d, ~reverseBits(4294967295u), 59484u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> vec4<u32> {
    global0 = array<Struct_4, 31>();
    return _wgslsmith_div_vec4_u32(func_4(func_2(14701i), _wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(global2.x), global2.x), 24325u)), vec4<u32>(_wgslsmith_mod_u32(0u, ~4294967295u & u_input.d), (0u << (u_input.d % 32u)) >> ((global2.x & 31275u) % 32u), ~1u, func_4(func_2(-48488i), abs(_wgslsmith_mult_u32(72043u, 0u))).x));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.yyx);
    var_0 = arg_0.ywz;
    var_0 = arg_0.xwx;
    var_0 = vec3<f32>(-1000f, 1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.e + _wgslsmith_f_op_f32(round(203f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-768f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.a.xyy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.x, arg_2.e.a.b))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1063f, 2297f, arg_2.e.a.a), vec3<f32>(arg_3.e, arg_3.e, arg_3.e)), _wgslsmith_f_op_vec3_f32(arg_3.a.yyx * vec3<f32>(-1000f, arg_3.a.x, arg_2.e.a.b)), !arg_1.xwy)), _wgslsmith_f_op_vec3_f32(step(arg_3.a.yxz, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(362f, arg_3.c.c.x, 932f))))))));
    return u_input.a & select(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, u_input.b.x ^ 9537i, arg_2.e.a.c.x, firstLeadingBit(2147483647i)), -vec4<i32>(global1.x, 29604i, 0i, global1.x)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec4_i32(~u_input.a, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(940f, -1623f, -498f, -869f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2397f, -1020f, -1062f, 573f), vec4<f32>(250f, 530f, -292f, 444f))))), vec4<bool>(!select(true, true, true), true, true, all(vec2<bool>(true, true))), Struct_5(vec4<u32>(~13291u, ~u_input.d, 4294967295u << (u_input.d % 32u), u_input.d), ~func_1(u_input.a.zxx, vec2<f32>(-1428f, 103f)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), func_2(-33954i).e), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1082f, -1112f, -1214f, -917f) - vec4<f32>(-2351f, -1000f, 185f, 577f)) * vec4<f32>(220f, 682f, 343f, -302f)), -(~u_input.c), Struct_1(_wgslsmith_sub_i32(global1.x, 2147483647i), select(false, true, true), vec2<f32>(1013f, 1338f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(674f, 2365f), vec2<f32>(971f, 2550f)))), ~(~78552u), -113f)));
    global1 = _wgslsmith_clamp_vec4_i32(u_input.a, abs(firstLeadingBit(u_input.a)), u_input.a) & vec4<i32>(global1.x, ~(~firstLeadingBit(-51818i)), ~firstTrailingBit(-global1.x), global1.x & 2147483647i);
    global1 = u_input.a;
    var var_0 = _wgslsmith_f_op_f32(661f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(708f))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1064f), -1479f, _wgslsmith_div_f32(-961f, -390f)))) - vec3<f32>(-737f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1642f))), _wgslsmith_div_f32(-157f, -1186f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(594f, 292f, -824f)) + vec3<f32>(805f, -1380f, -1800f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~reverseBits(global2.x), abs(u_input.d)), vec3<f32>(-599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 1017f), firstLeadingBit(-_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xxx, vec3<i32>(-12973i, u_input.b.x, 1i)), select(vec3<i32>(12151i, global1.x, global1.x), vec3<i32>(u_input.b.x, -19432i, u_input.c.x), true))));
}

