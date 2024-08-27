struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> i32 {
    global0 = -vec3<i32>(18092i, -_wgslsmith_sub_i32(2682i, global0.x), -min(global0.x, global0.x) << (u_input.e % 32u));
    global0 = vec3<i32>(u_input.d, min(50458i, global0.x), min(1i, u_input.a));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2349f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(487f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(var_0)), u_input.d);
    var var_2 = Struct_1(105f, -(_wgslsmith_sub_i32(11608i, 0i) & -u_input.d));
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global0 = vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.b, 1i, 2147483647i, global0.x), vec4<i32>(global0.x, global0.x, 17713i, -2147483647i), vec4<bool>(true, true, true, true)), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.b, -63976i, 0i))), vec4<i32>(_wgslsmith_add_i32(-1i, countOneBits(-1i)), u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(8242i, global0.x, global0.x, 0i), vec4<i32>(global0.x, -2147483647i, u_input.b, global0.x)), -(u_input.a | u_input.d))), max(_wgslsmith_clamp_i32(-21064i, func_3(true), abs(firstTrailingBit(global0.x))), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(1i, u_input.a, u_input.a), global0.x & ~global0.x)));
    global0 = abs(vec3<i32>(_wgslsmith_dot_vec2_i32(~(vec2<i32>(global0.x, -26962i) ^ vec2<i32>(0i, 31699i)), ~select(vec2<i32>(1i, global0.x), global0.zy, vec2<bool>(true, true))), firstLeadingBit(~abs(global0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, global0.x, global0.x, -10962i), -vec4<i32>(u_input.b, u_input.a, -13381i, -16658i), vec4<i32>(-2147483647i, 1i, 0i, global0.x) ^ vec4<i32>(u_input.d, u_input.b, -15103i, 1i)), firstLeadingBit(vec4<i32>(u_input.b, 67958i, 135i, global0.x) ^ vec4<i32>(1i, u_input.b, global0.x, 8312i)))));
    let var_0 = 1i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.x), 0i), ~(~abs(~u_input.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(arg_0 + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a.a, _wgslsmith_div_f32(-2050f, arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1325f)), -1000f, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))))));
    return -1i;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> i32 {
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(-1i, -2147483647i, 33627i, -15602i)), abs(vec4<i32>(arg_1.a.b, arg_2, 14031i, -72158i) & vec4<i32>(-2147483647i, 2147483647i, arg_1.a.b, arg_2))), 1i, -global0.x << (firstTrailingBit(~u_input.c) % 32u)), -(abs(vec3<i32>(1i, global0.x, global0.x)) >> (vec3<u32>(arg_1.b, 4294967295u, arg_0) % vec3<u32>(32u))) >> (abs(vec3<u32>(1u, ~arg_1.b, firstTrailingBit(39173u))) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-(~firstTrailingBit(vec3<i32>(global0.x, -57356i, -10069i))), ~(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, arg_2, 5369i), vec3<i32>(u_input.d, -15652i, 0i)))), -global0.x);
    var var_1 = firstLeadingBit(select(vec4<i32>(_wgslsmith_clamp_i32(-1184i, 34220i, arg_1.a.b), global0.x, _wgslsmith_dot_vec2_i32(global0.zy, countOneBits(vec2<i32>(u_input.d, 24066i))), -1i), ~vec4<i32>(-5799i, -2147483647i, -var_0, -19138i), (all(vec4<bool>(true, true, true, true)) || true) & (-1123f <= _wgslsmith_f_op_f32(step(arg_1.a.a, arg_1.a.a)))));
    var var_2 = arg_1.a;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -961f);
    return arg_2;
}

fn func_1() -> i32 {
    global0 = vec3<i32>(_wgslsmith_dot_vec4_i32(min(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, global0.x, 12651i, 2147483647i), vec4<i32>(0i, 2147483647i, -21850i, global0.x)), vec4<i32>(-3264i, select(global0.x, -4503i, false), i32(-1i) * -44140i, -global0.x)), vec4<i32>(abs(1i), -9835i, global0.x, firstLeadingBit(0i) | u_input.d)), _wgslsmith_add_i32(_wgslsmith_sub_i32(global0.x, _wgslsmith_sub_i32(2147483647i, countOneBits(2147483647i))), 2147483647i), -1i);
    global0 = vec3<i32>(-(_wgslsmith_mod_i32(max(-39129i, 1i), firstLeadingBit(0i)) | _wgslsmith_div_i32(max(12127i, global0.x), 1i)), _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-56628i, u_input.d, u_input.b, -2147483647i), ~vec4<i32>(u_input.d, 2147483647i, u_input.a, global0.x))), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.d, u_input.a, -2392i), -vec4<i32>(1i, 23331i, 2147483647i, global0.x)))), _wgslsmith_div_i32(_wgslsmith_mod_i32(94494i, func_4(~u_input.e, Struct_2(Struct_1(1648f, -1i), 7799u), func_2(vec3<f32>(566f, 1242f, 935f)))), func_3(1i == _wgslsmith_mod_i32(-2147483647i, u_input.d))));
    let var_0 = Struct_2(Struct_1(1000f, -1i), 0u);
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.b, 31113i, -9032i), vec3<i32>(1i, -10120i, -1i)), vec3<i32>(-8471i, u_input.b, u_input.a)), vec3<i32>(_wgslsmith_mult_i32(31290i, var_0.a.b) ^ ~var_0.a.b, -1i, global0.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(select(vec3<i32>(1i, var_0.a.b, u_input.d), vec3<i32>(1i, 40773i, global0.x), false)), vec3<i32>(u_input.b, reverseBits(var_0.a.b), -1i)), max(-(vec3<i32>(1i, u_input.d, -53766i) << (vec3<u32>(30934u, 6488u, u_input.c) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(var_0.a.b, global0.x, u_input.a)), -vec3<i32>(-2147483647i, global0.x, 5774i)))));
    let var_1 = var_0;
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(-(~global0.x), abs(_wgslsmith_clamp_i32(var_0.a.b, var_1.a.b, -2147483647i))), -27476i) >> (reverseBits(var_1.b) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    global0 = _wgslsmith_div_vec3_i32(~abs(vec3<i32>(-1i, i32(-1i) * -1817i, -1i)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, global0.x, 1i, global0.x), vec4<i32>(global0.x, 2147483647i, u_input.b, u_input.a)), -1i), -_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, global0.x, -2147483647i), ~vec3<i32>(26266i, u_input.d, u_input.d))));
    var var_1 = vec2<i32>(~_wgslsmith_mult_i32(-65167i, ~u_input.b), -_wgslsmith_add_i32(func_1() << (~var_0 % 32u), global0.x));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -2101f), _wgslsmith_div_i32(_wgslsmith_mult_i32(6825i, ~(var_1.x & global0.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 0i, var_1.x), vec3<i32>(global0.x, 0i, 0i))));
    let var_3 = _wgslsmith_mult_u32(min(34273u, u_input.e), 507u);
    var var_4 = ~vec4<u32>(_wgslsmith_add_u32(reverseBits(var_3 << (19779u % 32u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, var_3), firstLeadingBit(vec2<u32>(u_input.e, 14833u)))), ~_wgslsmith_div_u32(1u, u_input.e), ~_wgslsmith_mult_u32(var_3, 11098u) >> (~_wgslsmith_mod_u32(63499u, 46652u) % 32u), _wgslsmith_clamp_u32(u_input.c, var_0, min(var_0, _wgslsmith_mult_u32(var_0, var_3))));
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))) - 1f), var_2.a);
    var var_6 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(901f * var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(global0.x, var_1.x, u_input.a) >> (vec3<u32>(max(var_4.x, 134923u), _wgslsmith_add_u32(var_3, 3232u), 19722u) % vec3<u32>(32u))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_4.zw, ~(~var_4.zw)), firstTrailingBit(firstLeadingBit(var_4.wx))), -8286i, ~(~vec2<u32>(63496u, 1u) & _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(var_4.yy, vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec2_u32(var_4.zz, vec2<u32>(u_input.e, var_0)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a * var_5.x))), _wgslsmith_f_op_f32(1000f + 192f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1098f)), _wgslsmith_f_op_f32(-var_5.x))))));
}

