struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(-989i, u_input.d.x, arg_1), u_input.a.x, -2910i) | ~vec4<i32>(select(arg_1, 32225i, false), i32(-1i) * -1i, arg_1, -2147483647i), reverseBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i, arg_1, arg_1), vec4<i32>(arg_1, -2147483647i, u_input.d.x, -57170i)), -vec4<i32>(0i, 16580i, -1i, u_input.a.x), vec4<bool>(false, true, true, false)) << ((~arg_0 ^ u_input.e) % vec4<u32>(32u))));
    var_0 = _wgslsmith_mod_vec4_i32(~(~(vec4<i32>(-1i, 29023i, 0i, -2147483647i) << (u_input.e % vec4<u32>(32u)))) >> (~vec4<u32>(~u_input.e.x, abs(1791u), 4294967295u, ~4294967295u) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_dot_vec3_i32(max(var_0.yyx, vec3<i32>(-1i, 1i, var_0.x)), u_input.a), _wgslsmith_clamp_i32(~(i32(-1i) * -58184i), ~31515i, -_wgslsmith_mod_i32(arg_1, 2147483647i)), 39729i, -(i32(-1i) * -15481i) | (_wgslsmith_dot_vec2_i32(u_input.d, u_input.a.xy) & abs(1i))));
    var var_1 = select(~4294967295u, ~u_input.e.x, arg_1 >= (_wgslsmith_mod_i32(arg_1, -51705i) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, arg_1), vec4<i32>(var_0.x, arg_1, arg_1, 0i)))) | min(~(~30933u), max(u_input.c.x, 0u));
    let var_2 = Struct_3(_wgslsmith_dot_vec3_i32(-(~var_0.wzw), _wgslsmith_add_vec3_i32(vec3<i32>(-25535i, abs(-32325i), -9085i), firstLeadingBit(u_input.a) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, 1i), u_input.a, u_input.a))));
    let var_3 = Struct_2(var_0.x);
    return true;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_4(u_input.c.zy);
    let var_1 = select(!vec2<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true))), vec2<bool>(true, true), any(vec4<bool>(any(vec4<bool>(true, true, true, false)) && true, true, func_3(vec4<u32>(4693u, 3378u, u_input.b, u_input.e.x), 2147483647i, 168f) && false, true)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = array<Struct_2, 15>();
    let var_3 = ~_wgslsmith_mult_i32(u_input.d.x, u_input.d.x | _wgslsmith_div_i32(u_input.d.x, u_input.d.x)) >> ((_wgslsmith_dot_vec2_u32(var_0.a, abs(reverseBits(u_input.c.yz))) << (max(~countOneBits(u_input.c.x), 1u) % 32u)) % 32u);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -485f), _wgslsmith_f_op_f32(abs(-755f)))))))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = Struct_2(u_input.a.x);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~0u, 61848u, u_input.c.x, ~u_input.e.x) << (vec4<u32>(28090u, u_input.b, 36023u, u_input.e.x) % vec4<u32>(32u)), ~(~(~u_input.e))), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(734f + _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), ~52956u, firstTrailingBit(u_input.d), _wgslsmith_div_vec3_i32(u_input.a, min(countOneBits(select(vec3<i32>(0i, var_0.a, 10716i), u_input.a, vec3<bool>(true, true, false))), u_input.a)));
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    return Struct_4(_wgslsmith_sub_vec2_u32(var_1.a.ww << (reverseBits(var_1.a.xy) % vec2<u32>(32u)), u_input.e.xz));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_3(i32(-1i) * -u_input.d.x);
    let var_1 = ~(~_wgslsmith_mult_u32(~arg_1.x, u_input.b)) > ~_wgslsmith_mod_u32(~(arg_1.x & 1u), 1u);
    let var_2 = vec4<i32>(1i, var_0.a, 1i, var_0.a);
    return func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2())))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    var var_0 = vec4<u32>(reverseBits(firstTrailingBit(~func_1(false, vec2<u32>(u_input.c.x, u_input.b), arg_0, false).a.x)), u_input.c.x, 0u, _wgslsmith_dot_vec4_u32(u_input.e | u_input.e, _wgslsmith_mod_vec4_u32(u_input.e, u_input.e)));
    let var_1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-416f + -757f), _wgslsmith_f_op_f32(select(-653f, _wgslsmith_f_op_f32(1036f - arg_0.x), false)))), 0u, reverseBits(vec2<i32>(~arg_2.a, _wgslsmith_mult_i32(~(-3625i), -u_input.d.x))), min(u_input.a, reverseBits(u_input.a)));
    global0 = array<Struct_2, 15>();
    var_0 = vec4<u32>(~(~_wgslsmith_add_u32(1u, abs(1u))), func_4(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, -1000f, -934f), vec3<f32>(var_1.b, 701f, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1351f, arg_0.x))))))).a.x, ~func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(111f, arg_0.x, -1000f))).a.x | var_0.x, var_1.a.x);
    var var_2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(round(1750f)), 1452f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_1.b, var_1.b))))));
    return func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) + vec3<f32>(-642f, arg_0.x, var_1.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1325f, var_1.b, arg_0.x)))) - vec3<f32>(arg_0.x, var_1.b, _wgslsmith_f_op_f32(trunc(1084f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2637f, var_1.b, var_1.b), vec3<f32>(arg_0.x, -2582f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -411f, 1030f) * vec3<f32>(var_1.b, -1182f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1027f, 854f, -1000f))))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_4 {
    var var_0 = u_input.b;
    let var_1 = Struct_2(37370i);
    let var_2 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, any(vec2<bool>(true, true)), all(vec3<bool>(true, true, false))), vec4<bool>(!(var_1.a < 34377i), func_3(u_input.e & u_input.e, countOneBits(2147483647i), -408f), false, true), !(!all(vec2<bool>(true, false)))), vec4<bool>(true, all(vec3<bool>(false, all(vec4<bool>(true, false, false, false)), 2147483647i == u_input.d.x)), !(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) <= firstLeadingBit(arg_2.x)), true));
    let var_3 = abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x ^ 1i, ~arg_1.a), u_input.a.xy)) & select(~u_input.d, vec2<i32>(u_input.d.x, _wgslsmith_mult_i32(2147483647i, u_input.d.x)) ^ countOneBits(u_input.d | arg_2), var_2.zx);
    let var_4 = Struct_2(abs(-38724i));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(max(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -19136i));
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    let var_1 = vec3<u32>(~abs(1u), u_input.c.x, firstTrailingBit(u_input.c.x) >> (123860u % 32u));
    var var_2 = func_6(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, -2249f) + vec2<f32>(1228f, -179f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, -467f))), func_1(all(vec2<bool>(true, true)), ~var_1.xx, vec2<f32>(299f, -1966f), true), Struct_3(var_0.a)), Struct_2(1i), _wgslsmith_sub_vec2_i32(~abs(u_input.d), ~(~(vec2<i32>(-41393i, 0i) | vec2<i32>(14551i, var_0.a)))));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 1299f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1735f)), _wgslsmith_f_op_f32(trunc(-161f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, -665f)) + vec2<f32>(305f, 321f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1929f * -1074f), _wgslsmith_f_op_f32(abs(-447f))))));
    var var_4 = all(!select(vec3<bool>(true, true, true), vec3<bool>(false, 164f <= var_3.x, any(vec4<bool>(false, false, true, false))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_5 = Struct_1(~(u_input.e & firstTrailingBit(vec4<u32>(var_1.x, 4272u, 17044u, 28111u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-916f, -1124f))) - _wgslsmith_f_op_f32(317f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), 0u, -(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), u_input.a.xy) | _wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(17768i, -1i))) ^ (-abs(vec2<i32>(var_0.a, -2147483647i)) << ((u_input.c.yy >> (select(u_input.c.yz, vec2<u32>(var_1.x, var_2.a.x), true) % vec2<u32>(32u))) % vec2<u32>(32u))), select(vec3<i32>(_wgslsmith_clamp_i32(-u_input.d.x, ~u_input.a.x, -2147483647i), -2147483647i >> (~u_input.b % 32u), _wgslsmith_dot_vec2_i32(u_input.d, -u_input.a.xx)), countOneBits(u_input.a), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), true))));
    var_4 = any(select(vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), false)), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), var_2.a), vec2<u32>(~var_1.x, 0u), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, 199f)), var_3.x, false)) * 1f), var_3.x, var_3, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -384f)))), 1630f));
}

