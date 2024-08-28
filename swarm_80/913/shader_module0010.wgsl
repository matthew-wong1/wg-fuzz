struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(1051f - 1039f);
    let var_1 = Struct_1(~(~(-abs(vec2<i32>(u_input.b, 27760i)))), -764f, !arg_1.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b));
    let var_2 = ~(var_1.a >> (vec2<u32>(_wgslsmith_clamp_u32(arg_0.x, 13368u, arg_0.x) >> (~u_input.c % 32u), 4294967295u) % vec2<u32>(32u)));
    let var_3 = arg_0.x;
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global0 = arg_0.a.x;
    let var_0 = arg_0.c;
    global0 = -(i32(-1i) * -u_input.b) >> ((abs(_wgslsmith_add_u32(_wgslsmith_div_u32(2346u, u_input.c), 1u)) & firstTrailingBit(1u)) % 32u);
    global0 = arg_1 & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 73360i, _wgslsmith_dot_vec4_i32(vec4<i32>(-379i, arg_0.a.x, arg_0.a.x, -46878i), vec4<i32>(arg_1, arg_0.a.x, arg_1, arg_0.a.x)), -30201i) << (abs(~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~(~(-vec4<i32>(-43491i, arg_1, arg_0.a.x, -1i))));
    var var_1 = countOneBits(vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_1), _wgslsmith_sub_vec2_i32(vec2<i32>(-37599i, arg_1), vec2<i32>(u_input.b, 2147483647i)))), max(_wgslsmith_mod_i32(arg_1, arg_0.a.x) << (~u_input.a.x % 32u), -u_input.b), firstLeadingBit(arg_1)));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(func_2(~vec2<u32>(1u, u_input.a.x), vec2<bool>(false, true)), 17712i, ~arg_1) ^ -vec3<i32>(-arg_1, -arg_0.a.x, u_input.b), vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(var_1.zx, _wgslsmith_sub_vec2_i32(arg_0.a, max(vec2<i32>(1i, arg_1), var_1.zx))), -954i));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>) -> f32 {
    var var_0 = arg_1;
    let var_1 = select(vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !(0i < (2147483647i << (arg_0.x % 32u))), false, ~0i >= u_input.b), select(vec4<bool>(!any(vec3<bool>(false, true, true)), false, any(vec3<bool>(true, true, false)), !any(vec2<bool>(true, false))), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)))), (-u_input.b >= max(-2147483647i, 15726i)) && true), true);
    var_0 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1704f))));
    let var_2 = ~(~_wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.b, -2147483647i, -2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, 42503i)) ^ vec4<i32>(-18229i, -1i, u_input.b, u_input.b), ~(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(24829u, 0u, u_input.c, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, 1i, 0i, 16138i), vec4<i32>(66220i, u_input.b, u_input.b, 5168i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = u_input.b;
    global0 = ~(i32(-1i) * -14557i);
    var var_0 = Struct_1(abs(-vec2<i32>(_wgslsmith_div_i32(37804i, u_input.b), select(u_input.b, 0i, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1539f))), -1751f)), u_input.b != u_input.b);
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~8528i, 22714i), ~(var_0.a.x >> (45701u % 32u)), -39412i), _wgslsmith_add_vec3_i32(-reverseBits(vec3<i32>(var_0.a.x, -1i, 0i)), -(~vec3<i32>(u_input.b, 17251i, -5299i)))), -(func_1(Struct_1(var_0.a, var_0.b, var_0.c), _wgslsmith_dot_vec2_i32(var_0.a, var_0.a)) & min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -38046i, 1i), vec3<i32>(u_input.b, var_0.a.x, -1i)), abs(vec3<i32>(var_0.a.x, -2147483647i, var_0.a.x)))));
    var_0 = Struct_1(var_0.a << (u_input.a.xx % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x, 32520u, u_input.c, u_input.c), var_0.b, u_input.a)) * _wgslsmith_f_op_f32(var_0.b + var_0.b)) - var_0.b) * var_0.b), select(-855f < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.b, -757f))), all(vec2<bool>(var_0.c, all(vec2<bool>(var_0.c, var_0.c)))), !any(vec2<bool>(true, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(46141u, u_input.c, 0u))), vec3<u32>(abs(21416u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.c), select(4294967295u, 1u, false), _wgslsmith_mult_u32(11666u, 12305u)), abs(max(0u, u_input.c))), max(~u_input.a, vec3<u32>(92814u, u_input.a.x, u_input.a.x)) << (vec3<u32>(_wgslsmith_mult_u32(49211u, u_input.c), 113640u, 27852u) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * var_0.b)) + _wgslsmith_div_f32(var_0.b, -277f)), var_0.b, 1076f, -1216f), min(~(~(~vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c))), ~firstLeadingBit(vec4<u32>(u_input.c, 1u, 33305u, u_input.c)) ^ ~firstTrailingBit(vec4<u32>(u_input.c, 0u, 4294967295u, 0u))), _wgslsmith_clamp_i32(min(58692i, 27205i), var_0.a.x, var_0.a.x) >> (abs(min(min(u_input.c, u_input.a.x), u_input.a.x)) % 32u));
}

