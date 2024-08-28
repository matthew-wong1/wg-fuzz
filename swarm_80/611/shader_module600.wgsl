struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 3>;

var<private> global1: u32 = 77850u;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = false;
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(u_input.a, 3852i), -u_input.b.x, (0i << ((arg_0 << ((u_input.c.x >> (37020u % 32u)) % 32u)) % 32u)) & u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.a) ^ _wgslsmith_mod_i32(u_input.b.x, 27653i));
    var var_2 = Struct_3(true, ~_wgslsmith_div_i32(min(var_1.x, -u_input.a), -1i), vec2<i32>(var_1.x ^ u_input.b.x, -_wgslsmith_div_i32(var_1.x, ~8312i)), select(!(true && select(true, false, true)), _wgslsmith_f_op_f32(min(551f, _wgslsmith_f_op_f32(188f - 217f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1033f))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    global1 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, arg_0, u_input.c.x, 0u), _wgslsmith_add_vec4_u32(u_input.c, u_input.c)), u_input.c);
    let var_3 = 262f;
    return abs(~firstTrailingBit(abs(-vec4<i32>(-46890i, -1i, 1i, u_input.b.x))));
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = any(vec2<bool>(select(true, all(vec2<bool>(arg_0.d, arg_0.d)) & true, arg_0.d), select(true, true, arg_0.d)));
    var var_1 = !arg_0.a;
    let var_2 = ~func_3(51206u);
    var_0 = all(select(select(select(select(vec2<bool>(arg_0.d, false), vec2<bool>(false, false), vec2<bool>(arg_0.a, arg_0.d)), !vec2<bool>(arg_0.d, true), vec2<bool>(false, arg_0.d)), !(!vec2<bool>(arg_0.a, arg_0.a)), select(false, true, false)), vec2<bool>(true, !arg_0.a), vec2<bool>(true, arg_0.a)));
    var var_3 = max(var_2.zxy, ~_wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 43850i, var_2.x), vec3<i32>(u_input.a, 52288i, 2147483647i)), vec3<i32>(func_3(4294967295u).x, -u_input.b.x, firstTrailingBit(-2147483647i))));
    return select(vec3<bool>(_wgslsmith_f_op_f32(select(312f, -1000f, false)) >= 288f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(460f, -1209f))) != _wgslsmith_div_f32(-753f, _wgslsmith_div_f32(-512f, -702f)), true), vec3<bool>(false, any(vec2<bool>(arg_0.d, true)), false), select(!(!(!vec3<bool>(true, true, arg_0.a))), vec3<bool>(arg_0.d, arg_0.d, any(select(vec2<bool>(true, arg_0.d), vec2<bool>(false, true), vec2<bool>(arg_0.a, false)))), false));
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<u32>(u_input.c.x, u_input.c.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -891f);
    let var_2 = Struct_2(Struct_1(!func_2(Struct_3(true, u_input.b.x, vec2<i32>(u_input.a, 2147483647i), false))), max(u_input.c.zy, firstLeadingBit(~max(vec2<u32>(u_input.c.x, 23019u), vec2<u32>(var_0.x, var_0.x)))), Struct_1(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))))));
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-517f, -381f, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1))), vec3<f32>(-427f, var_1, _wgslsmith_f_op_f32(699f + 1f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -463f) - vec3<f32>(-495f, -855f, -667f)))))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.xx;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(1493f, -507f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - 548f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(682f))))), -542f));
    global1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~137260u), ~(~var_0.x), u_input.c.x, 85483u), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), u_input.c), ~vec4<u32>(0u, 58533u, 0u, u_input.c.x), func_1())));
    global0 = array<vec2<f32>, 3>();
    let var_2 = !vec4<bool>(select(all(vec2<bool>(true, true)) || any(vec4<bool>(true, false, false, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), true), u_input.b.x != ~1i, !(~u_input.a <= u_input.b.x), func_2(Struct_3(false, -2147483647i, select(u_input.b, u_input.b, vec2<bool>(false, false)), all(vec3<bool>(true, false, true)))).x);
    var var_3 = 4294967295u;
    let var_4 = Struct_3(var_2.x, abs(countOneBits(_wgslsmith_add_i32(u_input.a, firstLeadingBit(u_input.a)))), vec2<i32>(reverseBits(u_input.a), u_input.a), false);
    let var_5 = Struct_2(Struct_1(var_2.xxw), var_0, Struct_1(select(vec3<bool>(false, !var_4.a, var_4.a & var_4.d), vec3<bool>(any(vec2<bool>(true, true)), var_4.d, all(vec3<bool>(var_4.a, var_4.d, var_2.x))), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(max(-_wgslsmith_mod_i32(u_input.a, var_4.b), -var_4.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_4.b), countOneBits(vec2<i32>(-16501i, u_input.b.x)))), select(u_input.c.zw, ~var_5.b, var_4.a), var_0.x, abs(-vec2<i32>(var_4.c.x, _wgslsmith_mult_i32(-35005i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)))));
}

