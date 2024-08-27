struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    return select(!select(arg_0.yy, vec2<bool>(true, true), arg_0.yz), vec2<bool>(arg_0.x & any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), false), (((64379u << (u_input.c.x % 32u)) | firstLeadingBit(4294967295u)) | ~(~u_input.a.x)) != ~(~u_input.d.x));
}

fn func_4(arg_0: vec2<bool>) -> vec3<bool> {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-891f))) != _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -361f)))));
    var var_1 = -vec2<i32>(u_input.b.x, 1i);
    let var_2 = _wgslsmith_add_i32(max(~countOneBits(u_input.b.x), -(var_1.x & var_1.x)), select(0i, _wgslsmith_sub_i32(~u_input.b.x, 2147483647i), any(!select(vec3<bool>(false, true, arg_0.x), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, false)))));
    var var_3 = Struct_3(vec2<i32>(-40863i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b, abs(vec2<i32>(var_1.x, u_input.b.x))), ~max(vec2<i32>(var_1.x, var_2), vec2<i32>(-34137i, -31896i)))), vec3<i32>(reverseBits(-var_1.x), -22164i, 1i));
    var_3 = Struct_3(-(~abs(u_input.b)), -vec3<i32>((var_2 << (61440u % 32u)) >> (u_input.c.x % 32u), -51651i, ~(~2147483647i)));
    return !(!vec3<bool>(u_input.d.x < _wgslsmith_div_u32(15685u, 11997u), all(vec3<bool>(true, arg_0.x, arg_0.x)), any(!vec2<bool>(var_0, false))));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<u32> {
    var var_0 = func_4(select(!select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), false), !vec2<bool>(true, arg_1)), vec2<bool>(any(vec4<bool>(arg_1, arg_1, arg_1, true)), arg_1), func_3(vec3<bool>(true, !arg_1, 0u <= u_input.a.x))));
    let var_1 = 1i & firstLeadingBit(u_input.b.x);
    return vec4<u32>(countOneBits(~_wgslsmith_mult_u32(abs(13842u), firstLeadingBit(4294967295u))), u_input.a.x, arg_0.x, 1u);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_i32(u_input.b.x, ~(-u_input.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(247f, -676f, 488f, 1920f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-449f, -879f, 409f, 157f) * vec4<f32>(1130f, -228f, 1000f, 1578f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1652f))), 673f, 1322f, -402f)));
    var var_1 = u_input.a;
    var_1 = ~vec4<u32>(62257u, 0u | (u_input.d.x | _wgslsmith_mult_u32(33964u, 0u)), 54857u, var_1.x);
    var_1 = reverseBits(func_2(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, var_1.x, 0u, var_1.x), u_input.a), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.d.x, 0u, var_1.x, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 38094u, 36022u), vec4<u32>(var_1.x, var_1.x, 59767u, 1u))), all(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    var_1 = ~abs(vec4<u32>(1u, ~u_input.c.x, 18728u, _wgslsmith_sub_u32(~var_1.x, ~var_1.x)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec2<i32>(u_input.b.x, abs(_wgslsmith_clamp_i32(-2147483647i, 1i, -1i))) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(50242i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), select(_wgslsmith_sub_i32(-10122i, u_input.b.x), -43181i & u_input.b.x, any(vec3<bool>(false, false, false)))), select(vec3<i32>(11590i, -(i32(-1i) * -22986i), i32(-1i) * -2147483647i), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.b.x, 1i, 10145i) >> (u_input.d % vec3<u32>(32u)), -vec3<i32>(40626i, u_input.b.x, 41477i)), vec3<i32>(u_input.b.x, -1i, i32(-1i) * -18419i), -(~vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i))), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))));
    let var_1 = firstLeadingBit(vec4<i32>(-1i, firstLeadingBit(~(~5355i)), var_0.b.x, select(var_0.b.x, u_input.b.x << (60626u % 32u), true & all(vec3<bool>(true, false, true)))));
    let var_2 = vec4<u32>(16481u, _wgslsmith_mod_u32(4294967295u, 50076u), ~func_1(), _wgslsmith_mult_u32(func_2(u_input.a | vec4<u32>(u_input.a.x, 79105u, 0u, u_input.d.x), false).x, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-368f + -811f), _wgslsmith_f_op_f32(-1160f - -339f), 1175f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(741f, -190f, -1354f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 377f, -414f), vec3<f32>(387f, -1000f, -598f)))))), ~_wgslsmith_mod_u32(min(var_2.x, _wgslsmith_add_u32(11322u, var_2.x)), ~u_input.d.x), var_1.ywx, 702f);
}

