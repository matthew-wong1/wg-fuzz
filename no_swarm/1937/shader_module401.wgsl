struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: vec4<u32>;

var<private> global3: f32;

var<private> global4: array<bool, 32> = array<bool, 32>(false, false, true, true, true, false, true, false, false, true, false, true, true, false, false, false, true, true, true, true, true, false, true, false, false, false, false, false, true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global0 = Struct_1(-u_input.d, global0.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d, -2260f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(816f * 1632f), -1497f), _wgslsmith_f_op_f32(ceil(global0.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.x))) * 1519f));
    global1 = _wgslsmith_clamp_i32(global0.a, (global0.a >> (0u % 32u)) ^ min(-global0.a, u_input.d & 2147483647i), -47767i) & -1i;
    let var_0 = Struct_1(~(-37064i) >> ((36717u << (~global0.b.x % 32u)) % 32u), vec2<u32>(1u, 66492u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1819f, 2484f, -745f), global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1294f));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1290f - global0.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)))));
    let var_2 = Struct_4(Struct_3(~global2.xzy, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * -100f) - var_0.d), true, _wgslsmith_sub_vec3_u32(global2.yxx, ~vec3<u32>(117489u, u_input.b.x, global0.b.x))), Struct_2(~abs(vec2<u32>(4294967295u, global0.b.x)) | u_input.b, vec3<i32>(firstLeadingBit(u_input.d), firstLeadingBit(-var_0.a), abs(_wgslsmith_add_i32(1532i, -45474i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.c.x, global0.d, var_0.c.x))), var_0, _wgslsmith_mult_u32(4294967295u, u_input.a.x >> (global0.b.x % 32u))));
    return !(!any(vec2<bool>(!global4[_wgslsmith_index_u32(0u, 32u)], var_2.a.d)));
}

fn func_4(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_5, arg_3: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_add_u32(4294967295u, _wgslsmith_mult_u32(1u, ~(~global0.b.x)));
    var var_1 = arg_2;
    let var_2 = global2.x;
    var var_3 = arg_3.c;
    global0 = Struct_1(global0.a, arg_2.b.ww, _wgslsmith_f_op_vec3_f32(global0.c + var_1.a.b.d.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(f32(-1f) * -477f)), 1000f, false)));
    return ~countOneBits(arg_1);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(~u_input.a.x, global0.b.x, func_4(vec3<bool>(!global4[_wgslsmith_index_u32(global0.b.x, 32u)], !global4[_wgslsmith_index_u32(4294967295u, 32u)], func_3()), ~88790u, Struct_5(Struct_4(Struct_3(u_input.a, u_input.c, -1987f, global4[_wgslsmith_index_u32(21836u, 32u)], global2.ywy), Struct_2(u_input.b, u_input.e, vec4<f32>(1409f, global0.d, global0.c.x, global0.d), Struct_1(global0.a, vec2<u32>(8406u, global0.b.x), vec3<f32>(global0.d, global0.d, global0.d), global0.c.x), u_input.c)), ~vec4<u32>(u_input.b.x, 48813u, 18956u, u_input.b.x), u_input.a, vec3<f32>(-2694f, global0.c.x, -2095f), Struct_3(global2.zxz, global2.x, global0.c.x, global4[_wgslsmith_index_u32(53968u, 32u)], vec3<u32>(global0.b.x, global2.x, global2.x))), Struct_1(51333i, vec2<u32>(32321u, 4294967295u), global0.c, _wgslsmith_f_op_f32(global0.c.x - global0.d)))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-794f + _wgslsmith_div_f32(1000f, 877f)), global0.d))), false, select(u_input.a, countOneBits(~(~vec3<u32>(42847u, 71435u, 4294967295u))), select(global4[_wgslsmith_index_u32(global2.x, 32u)], true, global4[_wgslsmith_index_u32(select(45368u, global0.b.x ^ global2.x, any(vec3<bool>(false, global4[_wgslsmith_index_u32(global2.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)]))), 32u)])));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1639f, _wgslsmith_f_op_f32(abs(-735f)), _wgslsmith_f_op_f32(2176f * var_0.c)));
    global3 = global0.d;
    let var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(reverseBits(firstLeadingBit(112282u)), 32296u), 32u)] | (_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1292f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d)))) != 1317f);
    let var_3 = Struct_1(30930i, ~global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c, global0.c)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 150f, -172f), vec3<f32>(var_0.c, global0.d, -1491f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.c - global0.c), _wgslsmith_f_op_vec3_f32(global0.c * vec3<f32>(global0.c.x, var_1.x, -542f))))))), var_0.c);
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_3 {
    global2 = firstTrailingBit(vec4<u32>(global0.b.x >> (global0.b.x % 32u), arg_0.b.x & (~0u >> (global0.b.x % 32u)), _wgslsmith_dot_vec2_u32(~firstLeadingBit(arg_1.a.a.yy), ~abs(vec2<u32>(3503u, global2.x))), arg_1.b.e & 26410u));
    global2 = vec4<u32>((firstLeadingBit(_wgslsmith_mod_u32(13220u, 1u)) >> (_wgslsmith_add_u32(95237u, arg_1.a.e.x) % 32u)) >> (87461u % 32u), max(~u_input.a.x, abs(abs(5907u))), ~arg_0.b.x, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global2.zw, vec2<u32>(1u, arg_0.b.x)) ^ (arg_0.b.x | global2.x), ~global0.b.x) >> (firstLeadingBit(func_2().b.x) % 32u));
    var var_0 = vec2<f32>(arg_1.b.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)))));
    global3 = arg_1.b.d.c.x;
    global2 = _wgslsmith_div_vec4_u32(~(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_1.b.a.x, arg_1.b.a.x, 1u, 4294967295u), vec4<u32>(global2.x, 83718u, 1u, 0u), vec4<bool>(false, true, false, arg_1.a.d)), vec4<u32>(53832u, global0.b.x, u_input.a.x, u_input.b.x), select(vec4<u32>(global2.x, 1u, u_input.c, 0u), vec4<u32>(global0.b.x, global0.b.x, global2.x, 29070u), arg_1.a.d)) << (abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 69795u, arg_1.b.d.b.x, 4294967295u), vec4<u32>(arg_0.b.x, 88273u, 58487u, 1u))) % vec4<u32>(32u))), vec4<u32>(~u_input.c, _wgslsmith_mod_u32(global0.b.x, max(global2.x, global0.b.x)), ~(~global0.b.x), firstLeadingBit(u_input.b.x | arg_0.b.x)) & vec4<u32>(arg_1.a.a.x, arg_1.b.a.x, arg_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, global0.b.x, arg_1.a.a.x, global2.x), reverseBits(vec4<u32>(55142u, 5777u, 41987u, 63415u)))));
    return Struct_3(~vec3<u32>(min(4294967295u, ~52133u), abs(~arg_1.a.a.x), 8459u >> ((70534u << (arg_0.b.x % 32u)) % 32u)), reverseBits(arg_1.a.e.x), -1399f, global4[_wgslsmith_index_u32(~12773u, 32u)], ~(global2.xzx ^ max(vec3<u32>(u_input.b.x, global0.b.x, arg_1.a.a.x), arg_1.a.a)));
}

fn func_6(arg_0: Struct_5, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = abs(vec4<i32>(_wgslsmith_div_i32(arg_1.a.b.d.a, 0i), arg_2.x, ~(~u_input.d | reverseBits(30029i)), abs(abs(arg_0.a.b.d.a ^ 0i))));
    var var_1 = true;
    var var_2 = 13469u;
    let var_3 = arg_1.a.a.c;
    let var_4 = !(!(!(!(!vec3<bool>(arg_1.a.a.d, true, global4[_wgslsmith_index_u32(global2.x, 32u)])))));
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = 5386i <= global0.a;
    var_0 = arg_0.a < -(~(-33827i ^ (arg_0.a & u_input.e.x)));
    global4 = array<bool, 32>();
    var var_1 = !vec2<bool>(false, global4[_wgslsmith_index_u32(~u_input.c, 32u)]);
    var var_2 = Struct_2(firstLeadingBit(_wgslsmith_add_vec2_u32(~max(global0.b, vec2<u32>(global2.x, 9670u)), _wgslsmith_div_vec2_u32(arg_0.b, vec2<u32>(u_input.b.x, u_input.a.x) << (vec2<u32>(global2.x, 45662u) % vec2<u32>(32u))))), vec3<i32>(u_input.d, abs(~_wgslsmith_sub_i32(28588i, global0.a)), _wgslsmith_dot_vec3_i32(countOneBits(u_input.e >> (global2.wyx % vec3<u32>(32u))), u_input.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, -401f, arg_0.c.x, 1000f) * vec4<f32>(-1580f, 703f, -912f, global0.c.x))), vec4<f32>(-2667f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1362f), arg_0.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(240f, arg_0.d, 941f, -844f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, global0.c.x, 2519f, arg_0.d) + vec4<f32>(910f, arg_0.c.x, global0.c.x, arg_0.d)), true)))), Struct_1(arg_0.a, reverseBits(vec2<u32>(_wgslsmith_sub_u32(u_input.c, 14575u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(43597u, arg_0.b.x, 1u)))), func_2().c, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(arg_0.c.x - -208f)), func_5(arg_0, Struct_4(Struct_3(global2.xxy, arg_0.b.x, -1561f, arg_1.x, global2.xyz), Struct_2(arg_0.b, vec3<i32>(arg_0.a, -67369i, global0.a), vec4<f32>(global0.c.x, 1000f, arg_0.c.x, 238f), arg_0, u_input.a.x))).c)), _wgslsmith_add_u32(12039u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.xxw & vec3<u32>(u_input.c, 43606u, 0u), u_input.a, global2.zwx), global2.xzx)));
    return Struct_3(vec3<u32>(~(15225u ^ u_input.b.x) & arg_0.b.x, arg_0.b.x, 46871u), countOneBits(~func_4(select(vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 32u)], true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.b.x, 32u)], var_1.x, false), vec3<bool>(false, arg_1.x, false)), u_input.c, Struct_5(Struct_4(Struct_3(vec3<u32>(1u, 1u, 0u), 16407u, arg_0.c.x, true, global2.yxz), Struct_2(var_2.a, vec3<i32>(-1i, -8985i, u_input.d), var_2.c, Struct_1(-2147483647i, vec2<u32>(55645u, 1070u), global0.c, arg_0.d), global2.x)), vec4<u32>(42862u, var_2.a.x, global0.b.x, 22601u), vec3<u32>(var_2.e, var_2.e, 0u), arg_0.c, Struct_3(u_input.a, var_2.a.x, global0.c.x, true, u_input.a)), arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -486f), !all(vec4<bool>(all(vec2<bool>(var_1.x, var_1.x)), arg_1.x || arg_1.x, !global4[_wgslsmith_index_u32(arg_0.b.x, 32u)], true)), select(~vec3<u32>(21201u, firstLeadingBit(global0.b.x), global0.b.x), countOneBits(countOneBits(func_5(Struct_1(48443i, vec2<u32>(arg_0.b.x, u_input.b.x), vec3<f32>(arg_0.c.x, global0.d, -845f), var_2.c.x), Struct_4(Struct_3(u_input.a, arg_0.b.x, global0.c.x, true, global2.wwy), Struct_2(vec2<u32>(13852u, global0.b.x), u_input.e, var_2.c, arg_0, var_2.d.b.x))).a)), vec3<bool>(true | all(vec3<bool>(global4[_wgslsmith_index_u32(1u, 32u)], arg_1.x, var_1.x)), true, _wgslsmith_f_op_f32(step(global0.c.x, global0.c.x)) >= 907f)));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_3(vec3<u32>(68089u, firstTrailingBit(~_wgslsmith_add_u32(global0.b.x, 2291u)), ~56194u), ~0u, -1462f, any(!vec4<bool>(4294967295u != global2.x, true & global4[_wgslsmith_index_u32(u_input.c, 32u)], global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.x, 1u), 32u)], global4[_wgslsmith_index_u32(~u_input.a.x, 32u)])), firstTrailingBit(~vec3<u32>(global2.x, 4294967295u, 0u)));
    let var_1 = func_7(func_6(Struct_5(Struct_4(Struct_3(vec3<u32>(12388u, global2.x, 0u), u_input.c, var_0.c, true, vec3<u32>(1u, u_input.a.x, 30845u)), Struct_2(u_input.a.yy, u_input.e, arg_0, Struct_1(205i, global2.xz, global0.c, var_0.c), global0.b.x)), ~(~vec4<u32>(var_0.b, 0u, 18143u, 11457u)), abs(~u_input.a), _wgslsmith_f_op_vec3_f32(-arg_0.wxz), func_5(func_2(), Struct_4(Struct_3(vec3<u32>(var_0.b, 30531u, 45684u), global0.b.x, var_0.c, true, vec3<u32>(global2.x, 1u, 78688u)), Struct_2(var_0.e.xx, u_input.e, vec4<f32>(global0.d, 139f, var_0.c, global0.d), Struct_1(35474i, var_0.a.xz, vec3<f32>(arg_0.x, var_0.c, -1338f), var_0.c), 1628u)))), Struct_5(Struct_4(Struct_3(var_0.a, 51181u, arg_0.x, var_0.d, u_input.a), Struct_2(var_0.e.zy, vec3<i32>(-2147483647i, -1i, u_input.e.x), vec4<f32>(arg_0.x, -312f, global0.c.x, -104f), Struct_1(-4501i, global2.yx, global0.c, global0.c.x), u_input.b.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(48804u, 43272u, u_input.c, 1u), vec4<u32>(1u, 16469u, 4294967295u, u_input.c), vec4<u32>(4294967295u, 86249u, 4294967295u, u_input.c)), ~vec4<u32>(global0.b.x, 4294967295u, u_input.b.x, 1u)), global2.xww, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 719f, global0.c.x))), Struct_3(vec3<u32>(0u, 110188u, 26984u), 5170u, 1000f, all(vec3<bool>(true, true, var_0.d)), vec3<u32>(0u, 2773u, 46834u))), reverseBits(u_input.e), select(vec2<i32>(-13546i, u_input.e.x), -abs(vec2<i32>(-40450i, u_input.e.x)), false)), select(select(select(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(false, true), true), select(vec2<bool>(var_0.d, false), vec2<bool>(global4[_wgslsmith_index_u32(1u, 32u)], true), vec2<bool>(var_0.d, global4[_wgslsmith_index_u32(u_input.a.x, 32u)])), true), vec2<bool>(!var_0.d, true), var_0.d), vec2<bool>(true, false), false));
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_f_op_f32(ceil(-1000f))))));
    var var_2 = func_5(Struct_1(u_input.e.x << (var_1.b % 32u), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global2.x), var_1.a.yz) & var_0.a.xz, func_5(func_2(), Struct_4(Struct_3(var_0.a, var_0.e.x, -2181f, false, vec3<u32>(4294967295u, u_input.a.x, var_1.b)), Struct_2(global2.zy, vec3<i32>(u_input.d, 1i, global0.a), vec4<f32>(507f, global0.c.x, 798f, -1670f), Struct_1(u_input.e.x, vec2<u32>(15558u, var_1.a.x), arg_0.zwz, -354f), u_input.c))).e.zz), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -235f, -877f)), vec3<f32>(2473f, global0.c.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zzx) - _wgslsmith_f_op_vec3_f32(-global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(235f + var_1.c)))), Struct_4(func_5(Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 25492i, u_input.d), vec3<i32>(-2147483647i, -1i, u_input.d)), vec2<u32>(1u, 1u), vec3<f32>(-1940f, var_1.c, 138f), -866f), Struct_4(var_1, Struct_2(var_0.e.zx, u_input.e, vec4<f32>(316f, -926f, global0.c.x, arg_0.x), Struct_1(2147483647i, vec2<u32>(u_input.c, u_input.a.x), arg_0.yxw, 329f), var_0.e.x))), Struct_2(~global0.b << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.x), vec2<u32>(42661u, 24680u), var_0.e.xx) % vec2<u32>(32u)), ~(-vec3<i32>(global0.a, 2147483647i, u_input.d)), vec4<f32>(_wgslsmith_div_f32(-540f, var_0.c), global0.d, _wgslsmith_f_op_f32(max(-756f, var_1.c)), global0.d), func_6(Struct_5(Struct_4(Struct_3(u_input.a, 4294967295u, -422f, true, u_input.a), Struct_2(global2.wx, u_input.e, vec4<f32>(340f, var_1.c, -360f, global0.c.x), Struct_1(-35658i, var_0.e.zz, arg_0.xzx, 1392f), var_0.b)), vec4<u32>(30069u, 52385u, 0u, 4294967295u), vec3<u32>(var_0.b, 23330u, 4294967295u), vec3<f32>(-1376f, arg_0.x, -1328f), Struct_3(var_1.a, global0.b.x, -947f, global4[_wgslsmith_index_u32(global2.x, 32u)], var_1.e)), Struct_5(Struct_4(Struct_3(vec3<u32>(1u, 19994u, u_input.a.x), 21393u, arg_0.x, global4[_wgslsmith_index_u32(var_0.e.x, 32u)], vec3<u32>(global0.b.x, 45602u, 412u)), Struct_2(vec2<u32>(global0.b.x, 4294967295u), u_input.e, vec4<f32>(var_1.c, -641f, global0.c.x, 2069f), Struct_1(-30190i, vec2<u32>(var_1.b, 50374u), arg_0.xxz, -3051f), 0u)), vec4<u32>(global0.b.x, global0.b.x, u_input.b.x, var_1.b), vec3<u32>(4648u, 76453u, global0.b.x), global0.c, Struct_3(vec3<u32>(0u, 4294967295u, var_0.a.x), var_1.e.x, -1000f, true, u_input.a)), select(vec3<i32>(-1i, u_input.e.x, 2147483647i), vec3<i32>(u_input.e.x, global0.a, -1i), vec3<bool>(false, global4[_wgslsmith_index_u32(var_1.e.x, 32u)], global4[_wgslsmith_index_u32(var_1.a.x, 32u)])), ~vec2<i32>(-1i, u_input.d)), ~_wgslsmith_mod_u32(1u, global2.x)))).c;
    global4 = array<bool, 32>();
    return 26904u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(countOneBits(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, global2.x, global2.x, global0.b.x)), vec4<u32>(u_input.b.x, 0u, global2.x, global0.b.x) & vec4<u32>(global2.x, 4294967295u, global2.x, 0u)) << (vec4<u32>(min(0u, 1u), u_input.b.x, u_input.a.x, _wgslsmith_mod_u32(41154u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(abs(34182u), ~(~62708u), global2.x, ~_wgslsmith_div_u32(17781u, global0.b.x)), vec4<u32>(26970u, abs(1u), 34998u, func_1(vec4<f32>(620f, global0.d, global0.c.x, -454f))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 28672u, u_input.c, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, u_input.b.x, 82450u, 4294967295u), vec4<u32>(65633u, global2.x, 14560u, u_input.a.x)))));
    global0 = Struct_1(global0.a, firstTrailingBit(global2.wz) ^ ~max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), global2.wz), ~global0.b), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.d, global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_div_f32(121f, global0.d), _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))));
    var var_0 = Struct_2(abs(_wgslsmith_sub_vec2_u32(~global0.b, vec2<u32>(global2.x, global0.b.x))) | ((global0.b & vec2<u32>(u_input.b.x, global0.b.x)) << ((_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 0u), vec2<u32>(global0.b.x, global0.b.x)) << (vec2<u32>(global2.x, 15476u) % vec2<u32>(32u))) % vec2<u32>(32u))), ~(((u_input.e ^ vec3<i32>(-2147483647i, global0.a, u_input.e.x)) << (vec3<u32>(global0.b.x, u_input.b.x, global2.x) % vec3<u32>(32u))) << (vec3<u32>(1u, _wgslsmith_div_u32(global2.x, 44003u), ~16014u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, global0.d, -1000f, -1004f) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.c.x, -679f, -1000f, global0.d), vec4<f32>(global0.d, -362f, global0.c.x, global0.c.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1074f, global0.c.x, global0.d, 1277f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-474f, global0.d, global0.d, 858f), vec4<f32>(-395f, -718f, global0.d, 1438f), vec4<bool>(true, global4[_wgslsmith_index_u32(global2.x, 32u)], true, global4[_wgslsmith_index_u32(2507u, 32u)]))) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.d, global0.d, global0.d, global0.c.x), vec4<f32>(global0.c.x, global0.d, 877f, global0.d))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, -214f, global0.d, global0.d) + vec4<f32>(768f, global0.c.x, global0.d, 1490f)))))), func_6(Struct_5(Struct_4(func_7(Struct_1(0i, vec2<u32>(26418u, 205u), global0.c, -898f), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], false)), Struct_2(vec2<u32>(4294967295u, 18824u), u_input.e, vec4<f32>(global0.c.x, global0.c.x, global0.d, global0.d), Struct_1(2147483647i, u_input.a.yx, global0.c, 1132f), u_input.c)), vec4<u32>(~global2.x, global0.b.x, global0.b.x, _wgslsmith_sub_u32(4294967295u, global0.b.x)), min(vec3<u32>(u_input.c, 4294967295u, u_input.a.x) | global2.zxw, vec3<u32>(u_input.b.x, 12074u, u_input.c) | vec3<u32>(global2.x, 36334u, 43239u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.c.x, 713f)), func_7(Struct_1(-1i, global2.wz, global0.c, 293f), select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], true), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 32u)], false), global4[_wgslsmith_index_u32(52635u, 32u)]))), Struct_5(Struct_4(func_7(Struct_1(u_input.e.x, vec2<u32>(u_input.c, global0.b.x), global0.c, -685f), vec2<bool>(global4[_wgslsmith_index_u32(global0.b.x, 32u)], false)), Struct_2(global2.ww, vec3<i32>(global0.a, 2147483647i, u_input.e.x), vec4<f32>(global0.d, global0.d, 185f, -2257f), Struct_1(u_input.e.x, vec2<u32>(global2.x, global2.x), vec3<f32>(global0.c.x, -1172f, -1358f), global0.d), u_input.b.x)), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 0u, global2.x, 1u), ~vec4<u32>(0u, 0u, u_input.b.x, global2.x)), ~vec3<u32>(1u, 5174u, u_input.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0.c))), Struct_3(vec3<u32>(1u, global0.b.x, u_input.a.x) | global2.zyz, ~u_input.b.x, 108f, true, vec3<u32>(u_input.b.x, global0.b.x, 19856u))), u_input.e, u_input.e.xz), u_input.c | ~global2.x);
    var var_1 = Struct_3(u_input.a, reverseBits(global0.b.x), _wgslsmith_f_op_f32(1000f + var_0.d.d), true, global2.yyz ^ vec3<u32>(~var_0.a.x & func_5(var_0.d, Struct_4(Struct_3(vec3<u32>(1u, u_input.c, 2081u), 51272u, var_0.d.c.x, global4[_wgslsmith_index_u32(62933u, 32u)], vec3<u32>(global2.x, 12336u, var_0.d.b.x)), Struct_2(vec2<u32>(global2.x, global2.x), u_input.e, vec4<f32>(var_0.c.x, global0.d, global0.d, var_0.c.x), var_0.d, u_input.c))).b, select(73386u >> (0u % 32u), 6984u, global4[_wgslsmith_index_u32(u_input.b.x, 32u)]), _wgslsmith_clamp_u32(global0.b.x, u_input.a.x, global0.b.x) ^ func_1(vec4<f32>(var_0.d.d, global0.c.x, 1170f, var_0.c.x))));
    var var_2 = Struct_5(Struct_4(func_5(Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, 696f, 1015f)), 1398f), Struct_4(func_7(Struct_1(u_input.e.x, vec2<u32>(1u, var_1.a.x), vec3<f32>(global0.c.x, 298f, 1869f), 965f), vec2<bool>(false, global4[_wgslsmith_index_u32(global2.x, 32u)])), Struct_2(var_1.e.yy, vec3<i32>(var_0.b.x, u_input.e.x, 5315i), vec4<f32>(-1000f, var_0.c.x, 135f, -1212f), Struct_1(global0.a, u_input.a.xz, global0.c, global0.c.x), 1u))), Struct_2(vec2<u32>(~var_0.d.b.x, firstTrailingBit(global2.x)), u_input.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(596f, global0.d, -247f, 1237f) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(465f, -425f, global0.d, 182f)))), Struct_1(-2147483647i, vec2<u32>(35717u, u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_0.c.x, 1000f)), _wgslsmith_div_f32(var_1.c, var_1.c)), ~625u)), select(~_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, global0.b.x, var_0.e) << (vec4<u32>(13295u, u_input.b.x, var_0.e, 22631u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.x, global2.x, 4294967295u), vec4<u32>(var_1.e.x, 1502u, var_0.a.x, 31992u))), ~(~select(vec4<u32>(59352u, u_input.b.x, 2502u, 1u), vec4<u32>(var_0.a.x, 37516u, u_input.b.x, 13455u), global4[_wgslsmith_index_u32(4294967295u, 32u)])), true), (func_7(func_2(), !vec2<bool>(var_1.d, var_1.d)).e ^ u_input.a) ^ ~var_1.e, var_0.d.c, func_7(Struct_1(-2147483647i, u_input.b, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, -468f, global0.d), _wgslsmith_f_op_vec3_f32(round(global0.c)))), 238f), !select(vec2<bool>(false, var_1.d), vec2<bool>(true, true), true)));
    var var_3 = true;
    var var_4 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~73556u | ~(~(~var_1.a.x)), var_0.d.c.zx, 0i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.c.x * -696f) - _wgslsmith_f_op_f32(func_5(Struct_1(1i, u_input.a.xx, vec3<f32>(global0.d, var_0.c.x, -1382f), -1867f), Struct_4(var_2.a.a, var_2.a.b)).c + 1143f)), 2948f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(func_6(Struct_5(var_2.a, var_2.b, global2.wwy, var_4.d.c, Struct_3(var_1.e, var_2.e.b, var_0.c.x, var_1.d, global2.xyw)), Struct_5(Struct_4(Struct_3(vec3<u32>(var_0.a.x, 5411u, 34406u), 4294967295u, var_1.c, var_1.d, vec3<u32>(1u, var_1.b, 0u)), var_2.a.b), vec4<u32>(u_input.c, global2.x, 20968u, global0.b.x), var_2.b.zww, vec3<f32>(-417f, 1122f, -455f), var_2.a.a), var_2.a.b.b, vec2<i32>(var_0.b.x, var_2.a.b.b.x)).c.x)), -2585f), _wgslsmith_f_op_f32(floor(-1134f))), vec4<f32>(-586f, _wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(Struct_1(-2147483647i, vec2<u32>(var_0.d.b.x, var_0.d.b.x), var_0.d.c, -527f), Struct_4(Struct_3(var_1.a, 23066u, 2420f, var_2.e.d, vec3<u32>(71430u, 12536u, var_0.e)), var_2.a.b)).c - var_1.c))), var_2.a.b.d.d));
}

