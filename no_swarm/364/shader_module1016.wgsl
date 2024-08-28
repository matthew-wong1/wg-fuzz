struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec3<u32>(40703u, 33681u, 7909u)), Struct_3(vec3<u32>(0u, 0u, 4294967295u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    global0 = array<Struct_3, 2>();
    global0 = array<Struct_3, 2>();
    return !(!all(vec2<bool>(true, false)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec3<u32>(2302u, 1u, ~min(~arg_1.x, 20355u));
    global0 = array<Struct_3, 2>();
    var var_1 = !(!vec4<bool>(all(vec2<bool>(true, true)), arg_1.x < (var_0.x & u_input.b.x), true, func_3()));
    global0 = array<Struct_3, 2>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(402f, _wgslsmith_f_op_f32(step(1692f, _wgslsmith_f_op_f32(-arg_0))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x) + var_2.a)))))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, u_input.d) & vec4<u32>(var_0.x, 10534u, arg_1.x, arg_1.x), vec4<u32>(var_0.x, var_0.x, u_input.b.x, var_0.x)), _wgslsmith_add_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.d, 9053u, 4294967295u), vec4<u32>(0u, u_input.a, var_0.x, 17527u))), vec4<u32>(var_0.x, firstLeadingBit(0u), firstTrailingBit(1u), ~var_0.x)), false));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = func_2(arg_0.a.a.x, arg_0.b.zwz).a.a.x;
    var var_1 = Struct_3(_wgslsmith_clamp_vec3_u32(abs(arg_0.b.yxz) & vec3<u32>(arg_0.b.x, ~9880u, ~arg_0.b.x), _wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, arg_0.b.x, 1u), vec3<u32>(arg_0.b.x, u_input.a, 29034u)) << (countOneBits(arg_0.b.zzz) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, 1u, 16229u), arg_0.b.wyz)), firstTrailingBit(vec3<u32>(arg_0.b.x, arg_0.b.x, 0u) << ((arg_0.b.zyy | vec3<u32>(4294967295u, arg_0.b.x, 37336u)) % vec3<u32>(32u)))));
    global0 = array<Struct_3, 2>();
    let var_2 = vec3<bool>(all(vec4<bool>(false, true, true | select(true, true, false), true)), true, u_input.a <= u_input.e.x);
    var var_3 = func_2(var_0, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-497f + arg_0.a.a.x))), ~var_1.a).b.wyy).a;
    return _wgslsmith_add_i32(countOneBits(u_input.c.x), _wgslsmith_div_i32(i32(-1i) * -u_input.c.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(~u_input.c.x, -20921i), abs(firstTrailingBit(u_input.c.x)))));
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1564f * 1296f), _wgslsmith_f_op_f32(-1367f + 1000f), 212f, _wgslsmith_f_op_f32(sign(218f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-239f, -693f, 464f, 159f))) + vec4<f32>(-473f, 532f, -1172f, 1283f)))), vec4<i32>(-_wgslsmith_mod_i32(u_input.c.x, ~17592i), u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(-1i, -10155i)), 28713i << (_wgslsmith_mod_u32(u_input.e.x, u_input.a) % 32u)), -_wgslsmith_mult_i32(u_input.c.x, 3406i)), _wgslsmith_div_f32(1683f, _wgslsmith_f_op_f32(f32(-1f) * -240f)), _wgslsmith_sub_i32(u_input.c.x, func_4(func_2(_wgslsmith_f_op_f32(-1110f * -1383f), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.b.x, u_input.d))))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 2>();
    let x = u_input.a;
    s_output = func_1();
}

