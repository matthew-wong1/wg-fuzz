struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(571f, 1781f, 204f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_4(global0.x, reverseBits(countOneBits(~(~35692u))), _wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(1u, 0u))), select(~countOneBits(vec2<u32>(1u, arg_1)), u_input.c.yx, true)), !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))));
    var var_1 = ~select(~vec4<u32>(var_0.c.x, _wgslsmith_mult_u32(var_0.c.x, arg_1), arg_1, u_input.a), firstTrailingBit(abs(u_input.d) & u_input.d), !vec4<bool>(!var_0.d, false, select(false, var_0.d, var_0.d), true));
    var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(737f)), max(arg_1, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(55751u, 52011u, arg_1, 9377u)), u_input.d), 32118u)), ~firstTrailingBit(var_0.c), true);
    var_1 = _wgslsmith_div_vec4_u32(~u_input.d, abs(vec4<u32>(min(18691u, 1u), reverseBits(u_input.d.x), reverseBits(~4294967295u), _wgslsmith_div_u32(arg_1, 1u))));
    let var_2 = 4294967295u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global0.x, 1130f) - vec3<f32>(var_0.a, var_0.a, -1260f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(387f)), _wgslsmith_f_op_f32(trunc(-253f)), 848f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(-var_0.a), -513f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-301f, var_0.a, global0.x))) - _wgslsmith_div_vec3_f32(vec3<f32>(209f, var_0.a, var_0.a), vec3<f32>(815f, global0.x, -1223f)))), vec3<f32>(-586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1072f + var_0.a) + _wgslsmith_f_op_f32(min(1946f, var_0.a))), global0.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_add_u32(~(~min(30533u, u_input.c.x)) | reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x), u_input.d.x)), ~(~_wgslsmith_add_u32(~6173u, u_input.a)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, -1607f, global0.x))))));
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(1i, 1i, 1i, 1i), var_0))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -1423f) + vec3<f32>(306f, global0.x, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1908f, -235f, global0.x))) - vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, -1187f)))));
    let var_1 = select(vec2<bool>(arg_0.a, any(vec4<bool>(arg_1.x, arg_0.c.x || false, true, global0.x >= -918f))), select(arg_0.c.xx, select(arg_1, vec2<bool>(false, false), vec2<bool>(false, !arg_1.x)), arg_1.x), ((abs(-1i) ^ _wgslsmith_clamp_i32(1i, 40279i, -17286i)) >= _wgslsmith_sub_i32(9147i, _wgslsmith_mod_i32(-18021i, 2147483647i))) || true);
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_clamp_i32(1i, -986i, ~24829i)), select(-30106i << (u_input.c.x % 32u), firstLeadingBit(1i), true), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(-1i, -5628i), vec2<i32>(-6287i, -1i), vec2<bool>(false, var_1.x)), vec2<i32>(0i, 7405i), _wgslsmith_clamp_vec2_i32(vec2<i32>(33588i, 1i), vec2<i32>(-2147483647i, 1i), vec2<i32>(1i, 1i))))), ~reverseBits(_wgslsmith_sub_vec3_i32(-vec3<i32>(-49382i, 41207i, -2147483647i), vec3<i32>(1i, 1i, 1i))));
    return global0.x;
}

fn func_1() -> vec4<bool> {
    let var_0 = !vec2<bool>(true, (_wgslsmith_clamp_u32(29240u, 1u, 66596u) & (u_input.b & u_input.b)) > (_wgslsmith_mod_u32(18401u, u_input.a) ^ _wgslsmith_div_u32(u_input.a, u_input.b)));
    global0 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-292f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(true, var_0.x, vec4<bool>(var_0.x, var_0.x, true, false)), vec2<bool>(false, false), ~37001u)))));
    var var_1 = Struct_3(-36737i);
    var var_2 = !vec2<bool>(!(!(var_1.a != 0i)), true);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1731f * 1f), 1000f, var_2.x)), _wgslsmith_f_op_f32(global0.x * global0.x), global0.x)));
    return vec4<bool>(var_2.x, !var_2.x, false, any(vec3<bool>(true, global0.x >= _wgslsmith_f_op_f32(select(global0.x, 1425f, var_2.x)), !any(var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!(24681u >= abs(u_input.a))), true, select(vec4<bool>(false, true, any(func_1()), true), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), func_1(), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), func_1().x), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_0 = Struct_1(select(true, true, false), !(!var_0.c.x | true), var_0.c);
    let var_1 = -32614i;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -387f))))), 2428f));
    var var_2 = var_0.c.xw;
    global0 = _wgslsmith_f_op_vec3_f32(func_3(max(select(vec4<i32>(1i, -29696i, var_1, 2147483647i), vec4<i32>(var_1, -1i, -2147483647i, var_1), true) >> ((u_input.d >> (vec4<u32>(u_input.a, u_input.c.x, 19387u, 18487u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<i32>(var_1, -1i, var_1, -1i), select(vec4<i32>(var_1, var_1, var_1, -2147483647i), vec4<i32>(var_1, var_1, 2147483647i, var_1), var_2.x), var_0.b)) >> (vec4<u32>(~(~4294967295u), 0u, u_input.a, u_input.c.x << (u_input.a % 32u)) % vec4<u32>(32u)), 67197u));
    let var_3 = vec2<i32>(~firstLeadingBit(1i), 0i) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(var_1, 2147483647i)), -vec2<i32>(var_1, 25143i)), -77359i);
    let var_4 = vec3<u32>(1u, u_input.d.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x);
}

