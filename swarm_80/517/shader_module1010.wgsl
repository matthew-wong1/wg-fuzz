struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec4<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) - -1606f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1607f))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(min(global1.x, global1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 212f))), ~global0.x >= reverseBits(global0.x))), _wgslsmith_f_op_f32(-global1.x)));
    global0 = vec2<u32>(~u_input.d.x, ~abs(global0.x)) ^ u_input.d.xz;
    global0 = vec2<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, abs(~global0.x)), u_input.d.xx));
    var var_0 = Struct_2(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 189f) + _wgslsmith_f_op_f32(-486f - global1.x)))), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, 7446i, 49066i, 74083i), abs(vec4<i32>(1i, 1i, arg_1.a.x, 34169i)))), false, Struct_1(arg_2), min(4294967295u, ~0u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-253f)) + global1.x), Struct_2(var_0.a, Struct_1(var_0.b.a), any(arg_0), Struct_1(~(arg_2 | vec4<i32>(418i, -1i, -2147483647i, u_input.b))), ~var_0.e), ~var_0.e, Struct_1(arg_2));
    return _wgslsmith_clamp_vec4_i32(arg_1.a, select(_wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1717i, var_0.d.a.x, arg_1.a.x, -8732i), vec4<i32>(2147483647i, arg_2.x, 2147483647i, -7393i)), ~(-vec4<i32>(0i, arg_1.a.x, 8124i, -18992i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, -40021i, var_1.d.a.x, 25794i), arg_2) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, 8827u, global0.x, var_0.e), vec4<u32>(1u, global0.x, 66930u, u_input.d.x)) % 32u), 1i, 0i, arg_2.x), vec4<bool>(!var_0.c, all(!vec4<bool>(true, false, arg_0.x, var_1.b.c)), true, (u_input.b <= 1i) || select(var_1.b.c, true, var_0.c))), var_0.d.a);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    let var_0 = ~max(-2147483647i | _wgslsmith_mod_i32(1i, arg_0.a.x), 12261i) >= 2147483647i;
    var var_1 = any(vec2<bool>(arg_2.x, true));
    var var_2 = vec4<i32>(27987i, abs(~arg_0.a.x), select(-arg_3, _wgslsmith_sub_i32(u_input.c.x, -u_input.b), arg_1), ~arg_0.a.x);
    var var_3 = arg_0;
    var var_4 = _wgslsmith_sub_vec3_i32(~(-(vec3<i32>(arg_3, var_2.x, 1i) << (u_input.d % vec3<u32>(32u)))) ^ u_input.a, vec3<i32>(-2147483647i, select(var_2.x, -34097i, var_0), ~1i & arg_3));
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_mult_u32(global0.x & 4294967295u, 11673u)), global0.x), u_input.d.x);
}

fn func_2(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(604f, global1.x, true)), _wgslsmith_f_op_f32(trunc(global1.x)))))), Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 17452i, arg_0.x, arg_0.x) ^ vec4<i32>(1i, 921i, -10844i, -64376i), _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_0.x, 0i, u_input.c.x, u_input.a.x), vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, 0i), false), -vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, -60509i, 0i, arg_0.x) >> (vec4<u32>(21621u, u_input.d.x, 0u, 1u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -74790i, -26242i, 66809i)))), 1u <= func_4(Struct_1(func_3(vec2<bool>(false, false), Struct_1(vec4<i32>(38205i, u_input.a.x, arg_0.x, arg_0.x)), vec4<i32>(-4453i, u_input.b, u_input.b, 0i))), any(vec4<bool>(false, false, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), u_input.b), Struct_1(~(-vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, u_input.a.x))), u_input.d.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - -1000f), global1.x)) + global1.x)), var_0, max(u_input.d.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(global0.x, u_input.d.x, 51745u, var_0.e)), select(vec4<u32>(var_0.e, u_input.d.x, 0u, 128131u), vec4<u32>(4294967295u, var_0.e, var_0.e, 59077u), var_0.c)), firstLeadingBit(select(vec4<u32>(43813u, var_0.e, 7300u, 22691u), vec4<u32>(0u, global0.x, 5966u, 26028u), false)))), Struct_1(max(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_0.d.a, var_0.d.a), -vec4<i32>(-36498i, -40231i, -13124i, -2147483647i)), reverseBits(-var_0.b.a))));
    let var_2 = _wgslsmith_div_i32(~_wgslsmith_clamp_i32(abs(2208i), var_0.b.a.x, abs(_wgslsmith_div_i32(17674i, var_0.b.a.x))), -1i >> (1u % 32u));
    let var_3 = var_0.b.a.x;
    let var_4 = var_1.b.d;
    return var_0.c;
}

fn func_1() -> vec2<bool> {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), _wgslsmith_div_f32(-276f, global1.x), all(vec2<bool>(true, true)))), -1000f));
    return vec2<bool>(true, select(true, any(vec2<bool>(true, true)), all(vec4<bool>(global1.x >= global1.x, func_2(u_input.c), true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1.x, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, -1132f), vec2<f32>(197f, -584f))))), Struct_1(~abs(vec4<i32>(u_input.a.x, u_input.b, u_input.b, 2147483647i))), any(vec2<bool>(false, true)) || true, Struct_1(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.b, -90798i, -26194i, u_input.c.x), vec4<i32>(50143i, -9201i, u_input.c.x, u_input.c.x)), -vec4<i32>(1i, 2147483647i, 25430i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, -53099i, 1i))), _wgslsmith_mult_u32(4294967295u, global0.x)), 21407u, Struct_1(vec4<i32>(countOneBits(_wgslsmith_sub_i32(1i, 2147483647i)), 1i, 11167i, _wgslsmith_mult_i32(i32(-1i) * -17552i, -26094i))));
    let var_1 = select(!(!(!select(vec2<bool>(true, var_0.b.c), vec2<bool>(false, var_0.b.c), vec2<bool>(true, true)))), select(func_1(), !(!vec2<bool>(var_0.b.c, var_0.b.c)), var_0.b.c), select(!select(select(vec2<bool>(var_0.b.c, var_0.b.c), vec2<bool>(var_0.b.c, var_0.b.c), vec2<bool>(true, false)), !vec2<bool>(true, var_0.b.c), var_0.d.a.x >= -23854i), select(!vec2<bool>(true, var_0.b.c), select(select(vec2<bool>(var_0.b.c, false), vec2<bool>(true, var_0.b.c), true), func_1(), select(vec2<bool>(var_0.b.c, true), vec2<bool>(false, var_0.b.c), vec2<bool>(var_0.b.c, false))), _wgslsmith_f_op_f32(ceil(-1908f)) <= -941f), select(func_1(), vec2<bool>(var_0.b.c, true), true)));
    var var_2 = var_0.d.a.x;
    var var_3 = u_input.d;
    let var_4 = !select(var_1.x, true, false);
    let var_5 = Struct_3(var_0.a, Struct_2(vec2<f32>(-1228f, 1483f), var_0.d, var_0.b.c, var_0.d, global0.x), ~1u, Struct_1(-vec4<i32>(func_3(var_1, var_0.d, var_0.d.a).x, -1i, ~16964i, 46632i)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}

