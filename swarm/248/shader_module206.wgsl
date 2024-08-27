struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>) -> bool {
    var var_0 = arg_0.d;
    var var_1 = false;
    return true;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(reverseBits(select(vec4<i32>(~u_input.d, abs(-2147483647i), -1i >> (0u % 32u), _wgslsmith_mult_i32(-1i, -2147483647i)), countOneBits(-vec4<i32>(u_input.d, u_input.d, 1675i, u_input.d)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), func_3(Struct_4(true, 1u, vec2<f32>(-171f, 1217f), Struct_3(Struct_2(-23179i, Struct_1(vec3<bool>(false, false, true), 1u, vec3<f32>(-2317f, -2145f, -144f))), 766f, u_input.d)), vec3<i32>(u_input.d, -45449i, u_input.d))))), max(~(-vec4<i32>(u_input.a, 0i, 2147483647i, 122412i) >> (~vec4<u32>(arg_0, 0u, 88631u, u_input.b) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 2147483647i, u_input.a, u_input.a), ~vec4<i32>(5627i, u_input.a, u_input.a, u_input.d)))), vec4<i32>(_wgslsmith_add_i32(~7113i, u_input.d) ^ 0i, ~(-abs(u_input.d)), -26508i, u_input.a));
    global0 = 1u;
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1 >> (10657u % 32u), ~1u, 1u, ~4294967295u), ~vec4<u32>(88541u, 1u, 0u, 91669u) ^ vec4<u32>(1447u, arg_0, u_input.b, arg_1), ~vec4<u32>(58125u, u_input.b, 27470u, 47940u)), vec4<u32>(1u & ~u_input.b, 4294967295u, 0u, arg_0)), firstLeadingBit(firstLeadingBit(~vec4<u32>(u_input.b, arg_0, 1u, 0u))));
    global0 = ~_wgslsmith_dot_vec2_u32(~max(vec2<u32>(15u, 16626u), ~vec2<u32>(arg_0, arg_1)), vec2<u32>(arg_1, _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, 1u), max(28035u, u_input.b))));
    var var_1 = Struct_2(2147483647i, Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), func_3(Struct_4(true, arg_0, vec2<f32>(-1969f, 622f), Struct_3(Struct_2(u_input.a, Struct_1(vec3<bool>(false, false, true), 47620u, vec3<f32>(641f, -1265f, -872f))), 663f, -1106i)), var_0.wxy)), ~30348u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f * -101f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-474f - -270f), _wgslsmith_f_op_f32(f32(-1f) * -724f))), -226f)));
    return vec2<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, abs(~14155u), arg_1));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    let var_0 = arg_1;
    global0 = ~max(~1u, ~1u);
    let var_1 = vec2<u32>(_wgslsmith_div_u32(~(~var_0), u_input.c), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(func_2(~1u, var_0), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, arg_1), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_0), vec2<u32>(u_input.b, u_input.c)))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 1391u), vec2<u32>(22669u, 37897u)), vec2<u32>(u_input.c, u_input.c))));
    var var_2 = arg_1;
    var_2 = ~(u_input.b << (20784u % 32u));
    return ~(var_0 & _wgslsmith_add_u32(arg_1, 4294967295u << (countOneBits(var_1.x) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(func_1(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.a, -68930i), vec4<i32>(-2147483647i, u_input.a, u_input.d, u_input.a)), u_input.b) | max(u_input.b, func_2(~u_input.c, 4294967295u).x));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-107f - -505f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-117f, _wgslsmith_div_f32(262f, 459f))), _wgslsmith_f_op_f32(-1570f - _wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1137f)))), -1076f)), 123f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1023f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-392f + -988f))), _wgslsmith_f_op_f32(f32(-1f) * -225f))));
    var var_1 = Struct_1(vec3<bool>(all(vec3<bool>(false, false, true)) & true, true, select(u_input.d >= 2147483647i, !all(vec4<bool>(true, false, true, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))))), u_input.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -609f), var_0.x, false)), var_0.x, var_0.x), vec3<f32>(var_0.x, -1818f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1030f))), all(vec2<bool>(true, true)))));
    var_1 = Struct_1(vec3<bool>(var_1.a.x, true, var_1.a.x), 12268u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-466f, var_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.c.x - -1000f), var_0.x, var_1.a.x)), var_1.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1800f, 540f)), _wgslsmith_div_vec3_f32(var_0.xyw, var_0.wyw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1000f, 2480f) * vec3<f32>(763f, 1073f, var_0.x))))));
    var var_2 = ~(~((vec3<u32>(0u, u_input.c, var_1.b) ^ vec3<u32>(40119u, 21481u, var_1.b)) & vec3<u32>(var_1.b, var_1.b, u_input.c)) << (select(select(vec3<u32>(30189u, u_input.b, 1u), vec3<u32>(0u, var_1.b, u_input.b), var_1.a.x) | ~vec3<u32>(u_input.b, 0u, 1u), ~vec3<u32>(5766u, 0u, 2211u), select(var_1.a, !vec3<bool>(true, var_1.a.x, false), var_1.a.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))))), var_2.x);
}

