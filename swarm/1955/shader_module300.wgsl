struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = ~(~u_input.b.x);
    let var_1 = ~u_input.b.x;
    let var_2 = select(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), ~6479u != _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), select(all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(-1324f + -2040f)) >= _wgslsmith_f_op_f32(floor(-240f)), any(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true)))));
    let var_3 = Struct_3(_wgslsmith_add_vec3_u32(~vec3<u32>(57148u, 0u, var_1) & reverseBits(vec3<u32>(var_1, 1u, 50542u)), abs(~vec3<u32>(u_input.b.x, u_input.b.x, 0u))) ^ max(~(~vec3<u32>(83760u, 4294967295u, 23587u)), max(vec3<u32>(4294967295u, 1u, 0u), ~vec3<u32>(u_input.b.x, 4294967295u, 50359u))), u_input.a);
    var var_4 = Struct_1(var_2.xz, _wgslsmith_div_u32(abs(14321u), 2938u));
    return 1u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0.x & !arg_0.x;
    var var_1 = true;
    global1 = u_input.a;
    var var_2 = u_input.b.x;
    var var_3 = select(!select(vec2<bool>(true || arg_0.x, true && arg_0.x), select(arg_0.xx, !vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x)), arg_0.zz), !vec2<bool>(true, !arg_0.x), true);
    return Struct_1(arg_0.ww, func_3());
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = func_2(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -456f) * 969f), -1000f)));
    var var_1 = Struct_5(vec4<bool>(any(vec4<bool>(var_0.b > 50974u, func_2(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x), vec2<f32>(1532f, -195f)).a.x, true, true)), false, false, var_0.a.x), _wgslsmith_f_op_f32(min(-1422f, 3198f)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_mult_u32(countOneBits(0u), 0u), 0u), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.b.x, 0u), vec4<u32>(arg_0.x, arg_0.x, 0u, 0u)), firstTrailingBit(vec4<u32>(0u, 1u, arg_0.x, 2984u))), _wgslsmith_div_u32(~var_0.b, ~4294967295u), _wgslsmith_div_u32(1u, 107516u) | arg_0.x, 26708u ^ ~u_input.b.x)), Struct_1(var_0.a, 32025u));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.b, _wgslsmith_mult_u32(~(~1u), var_1.c.x), 77768u, _wgslsmith_mult_u32(firstTrailingBit(28087u), max(22160u, var_1.c.x)) >> ((~64765u ^ _wgslsmith_add_u32(var_1.d.b, var_1.c.x)) % 32u)), ~(~vec4<u32>(max(arg_0.x, var_0.b), u_input.b.x, ~var_0.b, var_0.b)));
    let var_3 = select(select(vec3<bool>(true, false, var_1.a.x), select(!select(vec3<bool>(true, var_1.a.x, false), vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_0.a.x, true)), var_1.a.yzy, var_1.a.zyy), var_1.a.x), !vec3<bool>(false, var_0.a.x, var_0.a.x), !((~var_2.x & u_input.b.x) <= 75157u));
    var var_4 = Struct_5(vec4<bool>(var_1.d.a.x, true, !var_1.d.a.x, var_3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-737f)))))), ~vec4<u32>(_wgslsmith_div_u32(0u, func_2(var_1.a, vec2<f32>(-138f, 555f)).b), reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 0u, 1u), var_2.wxy ^ vec3<u32>(var_1.c.x, arg_0.x, 20416u)), abs(var_0.b)), Struct_1(!(!(!vec2<bool>(var_1.a.x, var_3.x))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 28932u), var_1.c.xx), _wgslsmith_add_u32(firstLeadingBit(27773u), _wgslsmith_sub_u32(arg_0.x, 15253u)))));
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(var_0.b, 0u), func_2(vec4<bool>(true, true, !var_0.a.x, false), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(753f, -995f)))).b, 4294967295u), arg_1.x);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = vec3<i32>(-1553i, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(19033i, 12138i) << (u_input.b % vec2<u32>(32u))), firstLeadingBit(-vec2<i32>(-18919i, u_input.a))), -abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, -2147483647i, 1i, -2147483647i) << (vec4<u32>(u_input.b.x, 1u, 33700u, arg_1.a.x) % vec4<u32>(32u)), vec4<i32>(40611i, 0i, 75494i, 0i))));
    return Struct_2(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -45115i, arg_0), -vec3<i32>(68685i, -1i, 2147483647i)) << (u_input.b.x % 32u), -_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1.b, 2147483647i), u_input.a), -_wgslsmith_dot_vec4_i32(vec4<i32>(-89922i, arg_1.b, 2147483647i, 2147483647i), select(vec4<i32>(-25062i, -21653i, 27588i, -2147483647i), vec4<i32>(16399i, -10890i, arg_1.b, arg_0), true)), 0i | var_0.x), func_2(select(vec4<bool>(any(vec3<bool>(false, true, false)), true, all(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, true))), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(229f + 293f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)))), func_2(select(vec4<bool>(4294967295u >= arg_1.a.x, true, all(vec3<bool>(false, false, true)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-752f, -495f)), _wgslsmith_f_op_f32(trunc(486f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-301f - 646f)))), ~52654u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, 2147483647i), vec3<i32>(u_input.a, 28925i, 1i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, 11209i), vec3<i32>(u_input.a, 113940i, u_input.a))), i32(-1i) * -2147483647i), func_1(~select(~vec3<u32>(19014u, u_input.b.x, 83444u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 53859i), vec2<i32>(74794i, -2147483647i))))), firstTrailingBit(-29918i));
    global1 = 51816i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(33067i, var_0.a.x, firstLeadingBit(u_input.a) ^ 1i), 739f, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d & _wgslsmith_mod_u32(var_0.b.b, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x >> (var_0.b.b % 32u), select(61856u, u_input.b.x, true)), 7074u), vec3<u32>(6719u, _wgslsmith_dot_vec2_u32(u_input.b ^ u_input.b, vec2<u32>(var_0.c.b, 48833u) << (vec2<u32>(766u, u_input.b.x) % vec2<u32>(32u))), var_0.b.b)), -445f, max(vec4<u32>(min(_wgslsmith_clamp_u32(1u, 59337u, var_0.d), 39842u), _wgslsmith_mod_u32(u_input.b.x, var_0.b.b), ~func_4(17035i, Struct_3(vec3<u32>(0u, 35596u, 75427u), var_0.a.x), var_0.a.x).d, reverseBits(func_4(6786i, Struct_3(vec3<u32>(17450u, u_input.b.x, 1u), 8649i), var_0.a.x).b.b)), reverseBits(~(~vec4<u32>(u_input.b.x, u_input.b.x, 45720u, var_0.b.b)))));
}

