struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5;

var<private> global2: array<vec4<bool>, 19>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: Struct_3) -> vec3<u32> {
    global1 = Struct_5(all(select(!select(vec3<bool>(arg_2.x, arg_2.x, global0.a), vec3<bool>(arg_2.x, true, global1.a), vec3<bool>(global1.a, global1.a, arg_2.x)), select(!vec3<bool>(arg_2.x, false, global1.a), vec3<bool>(false, true, true), global1.a), select(4651i, arg_0.a.x, global1.a) != ~(-1i))));
    let var_0 = arg_3;
    var var_1 = max(u_input.b, arg_1.x << (u_input.e.x % 32u));
    let var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, arg_3.b.a.x, u_input.a, u_input.d)), ~abs(vec4<i32>(arg_0.a.x, 0i, arg_3.b.a.x, 1i) >> (vec4<u32>(u_input.e.x, u_input.b, arg_1.x, u_input.e.x) % vec4<u32>(32u)))) | firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(34603i, _wgslsmith_sub_i32(arg_3.a.a.x, -2147483647i)), reverseBits(arg_3.b.a.x) << (reverseBits(u_input.b) % 32u), ~(-1i), -1i));
    var var_3 = Struct_4(arg_2, 24301i, (firstLeadingBit(firstLeadingBit(u_input.e.ywy)) & ~vec3<u32>(u_input.e.x, u_input.e.x, arg_1.x)) ^ vec3<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_mod_u32(614u, 6740u), 84449u), u_input.b & reverseBits(u_input.b), ~u_input.b));
    return u_input.e.xyz;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 1i, ~(~u_input.a), min(~15662i, u_input.a)), vec4<i32>(u_input.d, 2147483647i >> (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u), -17713i >> (u_input.e.x % 32u), abs(~u_input.a))) | -(~vec4<i32>(-1621i, i32(-1i) * -29802i, u_input.d, ~u_input.d));
    let var_1 = min(abs(abs(u_input.e.wzz)), vec3<u32>(_wgslsmith_clamp_u32(~28979u, u_input.b, u_input.e.x << (3223u % 32u)) << (u_input.e.x % 32u), ~u_input.b, 0u));
    global1 = Struct_5(!(!global0.a));
    global0 = Struct_5(true);
    var var_2 = Struct_3(Struct_1(vec3<i32>(firstTrailingBit(1i), ~(-2147483647i), ~(-4300i)) << (_wgslsmith_clamp_vec3_u32(func_3(Struct_1(var_0.wzx), u_input.e.wy, vec2<bool>(false, false), Struct_3(Struct_1(u_input.c), Struct_1(vec3<i32>(-14829i, 0i, 1i)))), vec3<u32>(30795u, var_1.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_1.x, 1u), vec3<u32>(3742u, 4294967295u, var_1.x))) % vec3<u32>(32u))), Struct_1(vec3<i32>(-(-1i | u_input.a), -2147483647i, var_0.x)));
    return 21342i;
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = vec3<i32>(select(u_input.a, ~firstLeadingBit(u_input.d << (arg_0.c.x % 32u)), true), 0i, arg_0.b);
    let var_1 = Struct_1(~vec3<i32>(func_2(), ~(-2147483647i), ~u_input.c.x));
    global1 = Struct_5(arg_0.a.x);
    global0 = Struct_5(true);
    let var_2 = 1991f;
    return select(-(~countOneBits(arg_0.b)) <= 33242i, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_f_op_f32(max(3440f, -402f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 433f)), vec2<f32>(-1206f, 1085f), !vec2<bool>(global1.a, global1.a))))), any(vec3<bool>(func_1(Struct_4(vec2<bool>(global1.a, false), -9753i, vec3<u32>(4294967295u, u_input.e.x, u_input.b))), false, true)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1810f) + _wgslsmith_f_op_f32(530f + _wgslsmith_f_op_f32(f32(-1f) * -641f))), -1704f));
    var var_1 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 33905u, 0u, 1u), vec4<u32>(0u, 41366u, 28092u, 54020u) << (u_input.e % vec4<u32>(32u)))));
    let var_2 = 3593i;
    var var_3 = ~firstTrailingBit(u_input.e);
    global0 = Struct_5(any(!vec2<bool>(false, global0.a)));
    let var_4 = Struct_4(!vec2<bool>(global1.a, global1.a), _wgslsmith_div_i32(-_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(var_2, u_input.c.x)), var_2), ~vec3<u32>(var_3.x, var_3.x, max(firstLeadingBit(u_input.e.x), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

