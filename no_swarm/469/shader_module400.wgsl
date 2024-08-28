struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec2<u32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(1i, -3581i, 44010i), vec3<u32>(25803u, 4294967295u, 0u), 40600u, false, false);

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_4, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: Struct_5) -> vec2<f32> {
    global1 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(global0.b.x, _wgslsmith_sub_u32(u_input.a, global1.x), ~4294967295u, 35707u), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 35964u, 4294967295u, global0.c), vec4<u32>(4294967295u, arg_0.b.c.x, 4294967295u, 25989u)), ~vec4<u32>(1850u, 4294967295u, u_input.a, 28246u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x >> (20006u % 32u), global0.c ^ 14373u, 50079u >> (global1.x % 32u), 66594u), abs(vec4<u32>(global0.c, u_input.a, global0.c, 79259u) << (vec4<u32>(arg_0.b.c.x, u_input.a, global1.x, arg_0.b.a.a.d.b.x) % vec4<u32>(32u)))));
    global2 = array<Struct_4, 6>();
    let var_0 = 25269u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, _wgslsmith_f_op_f32(f32(-1f) * -492f), arg_0.c, _wgslsmith_f_op_f32(round(-511f)))));
    var var_2 = global0.e;
    return var_1.wz;
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(858f, -417f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(852f, arg_0.x, -761f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -1000f))), any(vec2<bool>(true, global0.e)))))), select(vec3<bool>(true, all(vec4<bool>(global0.d, global0.d, global0.e, global0.d)), global0.e), !(!vec3<bool>(global0.e, true, false)), true)));
    let var_1 = ~(~global0.b.x);
    var var_2 = Struct_5(_wgslsmith_div_i32(u_input.b.x, 44845i), global2[_wgslsmith_index_u32(u_input.a, 6u)], var_0.x, vec3<bool>(!(!(!global0.e)), true, global0.d));
    global0 = var_2.b.a.a.c;
    let var_3 = select(~vec4<u32>(4294967295u, reverseBits(76003u), var_2.b.a.a.d.b.x, var_2.b.a.a.b.b.x), vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(1u, global0.c)), global1.ww), min(_wgslsmith_dot_vec2_u32(global0.b.xy, vec2<u32>(var_1, var_1)), global1.x ^ var_1) & ~1u, global0.b.x, _wgslsmith_add_u32(var_1, global1.x)), false);
    return var_2.d.yx;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_1(abs(vec3<i32>(-1i) * -arg_2), ~select(~(~vec3<u32>(u_input.a, u_input.a, global1.x)), vec3<u32>(max(33158u, global0.c), abs(0u), ~u_input.a), vec3<bool>(true, true, global0.e)), u_input.a, func_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-604f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_0) * arg_0))).x, (firstLeadingBit(global1.x) <= 13058u) || func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(196f, -107f) * vec2<f32>(arg_0, 556f)))).x);
    let var_1 = Struct_4(Struct_3(Struct_2(u_input.b & min(u_input.b, vec4<i32>(u_input.b.x, var_0.a.x, 1i, arg_2.x)), Struct_1(reverseBits(vec3<i32>(var_0.a.x, 0i, u_input.b.x)), ~var_0.b, _wgslsmith_add_u32(44008u, global1.x), true, all(vec4<bool>(arg_1.x, true, true, global0.e))), Struct_1(abs(vec3<i32>(u_input.b.x, global0.a.x, u_input.b.x)), select(vec3<u32>(25797u, 19540u, 38938u), global1.wxz, arg_3), 10860u, true, global0.a.x == u_input.b.x), Struct_1(var_0.a, vec3<u32>(var_0.c, u_input.a, u_input.a), var_0.c, var_0.d, true), Struct_1(var_0.a, ~global0.b, ~1u, arg_2.x != -2147483647i, select(arg_1.x, arg_3, false)))), arg_3, global0.b.xz);
    var_0 = var_1.a.a.b;
    global0 = var_1.a.a.c;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)));
    return Struct_2(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-21508i, var_0.a.x, countOneBits(2147483647i), u_input.b.x)), select(min(u_input.b, -u_input.b), var_1.a.a.a, false)), var_1.a.a.e, var_1.a.a.b, Struct_1(vec3<i32>(_wgslsmith_div_i32(0i, ~var_0.a.x), u_input.b.x, reverseBits(i32(-1i) * -8971i)), var_0.b ^ var_0.b, _wgslsmith_mult_u32(~1u, 1u), var_0.e, true), var_1.a.a.c);
}

fn func_1() -> bool {
    let var_0 = func_4(791f, select(!vec2<bool>(true, !global0.e), select(!vec2<bool>(true, global0.e), func_3(_wgslsmith_f_op_vec2_f32(func_2(Struct_5(u_input.b.x, Struct_4(Struct_3(Struct_2(vec4<i32>(global0.a.x, 1i, global0.a.x, 2147483647i), Struct_1(vec3<i32>(-8628i, -10905i, u_input.b.x), global0.b, u_input.a, global0.e, global0.d), Struct_1(u_input.b.xwz, global1.xxy, global1.x, global0.e, global0.e), Struct_1(global0.a, vec3<u32>(26711u, global0.b.x, 60273u), global0.c, global0.e, global0.e), Struct_1(vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<u32>(60979u, 68502u, 4294967295u), global0.b.x, false, false))), true, global0.b.zx), 1135f, vec3<bool>(false, global0.e, false))))), true), !(!select(vec2<bool>(false, false), vec2<bool>(true, global0.d), true))), vec3<i32>(-1i) * -(reverseBits(vec3<i32>(-6261i, global0.a.x, -104i)) & u_input.b.yyy), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1806f, -831f))).x);
    global0 = func_4(_wgslsmith_f_op_f32(ceil(-2099f)), vec2<bool>(true, true), (min(-global0.a, var_0.e.a << (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u))) ^ -vec3<i32>(6181i, u_input.b.x, 45927i)) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, reverseBits(u_input.b.x), reverseBits(u_input.b.x)), vec3<i32>(max(var_0.a.x, 17126i), global0.a.x, ~var_0.b.a.x)), global0.d).c;
    var var_1 = true;
    global0 = Struct_1(var_0.d.a, global1.wyw, abs(var_0.d.c & 4294967295u), global0.e, true);
    var_1 = all(!(!vec2<bool>(true, global0.d))) & var_0.d.e;
    return global0.e != global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 6>();
    var var_0 = select(-select(-vec3<i32>(u_input.b.x, 9309i, global0.a.x) >> (vec3<u32>(global1.x, 4294967295u, 8960u) % vec3<u32>(32u)), vec3<i32>(global0.a.x, u_input.b.x, select(-9515i, 74131i, true)), true), vec3<i32>(0i, u_input.b.x, global0.a.x), !func_1());
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, global1.x), 0u), countOneBits(min(63992u, _wgslsmith_add_u32(u_input.a, global0.c)))), 0u, max(1u, ~(~0u)));
    var var_2 = vec3<i32>(1i, 16168i, -22160i);
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1469f)) * -1065f)))));
    var_0 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global0.a.x, 7406i), -3612i), global0.a.x, -2147483647i), u_input.b.xwz);
    var_1 = ~(~firstTrailingBit(u_input.a & global0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<i32>(~(-1i), -var_0.x, firstLeadingBit(var_2.x), var_0.x), ~(u_input.b ^ u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(173f))), ~u_input.a, ~global0.b.yy, -(u_input.b.yw | func_4(var_3, func_3(vec2<f32>(-430f, var_3)), u_input.b.zwy, all(vec2<bool>(true, true))).b.a.yz));
}

