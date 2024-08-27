struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, ~_wgslsmith_mult_u32(arg_2, arg_2), ~u_input.c.x, 1u | _wgslsmith_mult_u32(0u, arg_2)), ~max(vec4<u32>(4294967295u, arg_2, u_input.c.x, arg_2) ^ vec4<u32>(0u, arg_2, u_input.c.x, 9045u), vec4<u32>(u_input.a, arg_2, 4294967295u, arg_2)), ~min(vec4<u32>(arg_2, arg_2, u_input.a, arg_2) | vec4<u32>(arg_2, 66203u, arg_2, u_input.a), ~vec4<u32>(15675u, 0u, u_input.a, 4294967295u))), ~select(select(select(vec4<u32>(4294967295u, arg_2, 63403u, u_input.c.x), vec4<u32>(1u, u_input.a, 4294967295u, u_input.c.x), vec4<bool>(false, true, false, false)), firstTrailingBit(vec4<u32>(4294967295u, 19374u, 31905u, arg_2)), all(vec4<bool>(true, false, true, false))), ~(vec4<u32>(u_input.c.x, 15449u, u_input.c.x, 11804u) & vec4<u32>(35324u, 4294967295u, 22567u, 9126u)), vec4<bool>(false, true, true, true)), abs(vec4<u32>(20037u << (u_input.c.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, 0u), vec3<u32>(u_input.c.x, 0u, arg_2)), 256u, 10374u) & vec4<u32>(min(u_input.a, 17388u), _wgslsmith_add_u32(u_input.c.x, arg_2), u_input.c.x, ~23785u)));
    global0 = true;
    var var_1 = Struct_3(firstTrailingBit(vec2<u32>(arg_2, 1u)), !vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !any(vec2<bool>(false, false)), false, _wgslsmith_f_op_f32(f32(-1f) * -143f) > arg_1.x));
    var var_2 = Struct_3(_wgslsmith_mod_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(647u, u_input.a), vec2<u32>(var_1.a.x, 25830u))), var_0.xw | (var_0.zy ^ vec2<u32>(u_input.c.x, arg_2))) ^ var_0.yx, vec4<bool>(any(vec3<bool>(var_1.b.x, true, any(var_1.b.yzx))), all(select(var_1.b.yw, var_1.b.zw, any(var_1.b.wyx))), _wgslsmith_f_op_f32(arg_1.x - arg_0.x) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_1.x, 218f)), _wgslsmith_f_op_f32(sign(-896f)))), false));
    var var_3 = Struct_3(~var_2.a, !select(var_1.b, var_1.b, any(vec4<bool>(true, false, var_1.b.x, false))));
    return false;
}

fn func_2() -> vec4<u32> {
    global0 = any(!select(vec2<bool>(true, 1u != u_input.a), vec2<bool>(true, true), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1178f, 249f) * vec2<f32>(1107f, 166f)), _wgslsmith_div_vec3_f32(vec3<f32>(-488f, 335f, -569f), vec3<f32>(-101f, -1222f, -2208f)), abs(4294967295u))));
    let var_0 = Struct_2(select(49482u, ~u_input.a, true), Struct_1(119f), true);
    let var_1 = -6851i;
    var var_2 = min(u_input.c.x << (_wgslsmith_clamp_u32(var_0.a, _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(u_input.a, var_0.a)), 0u) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(u_input.c.x), 4294967295u, ~u_input.c.x), firstTrailingBit(vec3<u32>(var_0.a, var_0.a, var_0.a)) ^ min(vec3<u32>(u_input.c.x, 5556u, u_input.c.x), vec3<u32>(1u, u_input.c.x, 1u))), abs(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 11755u, var_0.a), vec3<u32>(22749u, 22230u, 35401u)))));
    let var_3 = ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(var_0.a, u_input.a, 5999u, 0u), vec4<u32>(u_input.a, 21612u, 0u, var_0.a), false), firstTrailingBit(vec4<u32>(var_0.a, 7175u, 1u, var_0.a))), vec4<u32>(u_input.a, _wgslsmith_mult_u32(0u, var_0.a), ~0u, var_0.a), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 69257u, 3776u, 4294967295u), vec4<u32>(41825u, 0u, u_input.c.x, 4294967295u))));
    return vec4<u32>(24253u, var_3.x, var_3.x, firstTrailingBit(68626u)) >> (var_3 % vec4<u32>(32u));
}

fn func_1() -> vec4<bool> {
    var var_0 = abs(max(_wgslsmith_div_vec4_u32(vec4<u32>(40153u, ~29660u, 4294967295u, _wgslsmith_mod_u32(0u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.c.x), vec3<u32>(u_input.a, u_input.c.x, 4294967295u)), 17753u, ~23388u, 4294967295u)), ~vec4<u32>(4294967295u ^ u_input.c.x, ~u_input.c.x, ~89776u, 24980u)));
    var_0 = _wgslsmith_add_vec4_u32(func_2(), ~vec4<u32>(~81689u, _wgslsmith_mult_u32(41661u, var_0.x << (u_input.a % 32u)), ~select(47226u, 0u, true), 8000u));
    global0 = true;
    global0 = !func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, 240f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1255f, -1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(742f, 933f, -1193f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(434f, -1970f, -337f), vec3<f32>(508f, 425f, 1638f), vec3<bool>(false, true, false)))))), abs(reverseBits(~u_input.a)));
    let var_1 = false;
    return !select(!vec4<bool>(var_1 | true, false, true, true), select(!vec4<bool>(true, true, var_1, true), !select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, true, true, var_1)), !(!vec4<bool>(true, var_1, var_1, false))), !((var_1 == false) && var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<u32>(1u, 1u), select(select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, true, false, false), func_1()), true), select(vec4<bool>(func_3(vec2<f32>(115f, -1836f), vec3<f32>(858f, -627f, 1000f), 37762u), any(vec4<bool>(false, true, false, false)), true, false), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(select(-684f, -1342f, false)) >= 1285f), func_1()));
    let var_1 = Struct_4(vec4<f32>(1f, 1f, 1f, 1f), 1i);
    global0 = var_0.b.x;
    let var_2 = Struct_1(1f);
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, -33568i, var_1.b, u_input.b), vec4<i32>(-2147483647i, 8060i, 1i, 26125i)), vec4<i32>(0i, -1i, -1i, 0i) ^ vec4<i32>(var_1.b, 2147483647i, 23869i, u_input.b)) ^ max(vec4<i32>(-38467i, var_1.b, 2147483647i, 39806i), vec4<i32>(var_1.b, u_input.b, 71447i, u_input.b)), abs(vec4<i32>(~u_input.b, u_input.b, u_input.b, u_input.b))) == ~_wgslsmith_div_i32(1i, u_input.b);
    var var_3 = Struct_2(u_input.c.x, Struct_1(-368f), any(var_0.b.yy));
    let var_4 = u_input.a;
    let var_5 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1379f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_1.a.xy)))));
    var_3 = Struct_2(_wgslsmith_mult_u32(var_0.a.x, ~abs(~u_input.c.x)), var_3.b, var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~4294967295u, var_3.a), ~(~30786u)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_4, 24457u), u_input.c), u_input.a), u_input.b, ~u_input.c, -2147483647i);
}

