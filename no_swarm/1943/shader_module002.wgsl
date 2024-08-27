struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0.e.c;
    var var_1 = Struct_5(global0.c.x, u_input.a, _wgslsmith_f_op_f32(trunc(701f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_0.a, arg_0.e.a.x)) - _wgslsmith_f_op_f32(var_0.x * 264f))), max(min(8529u, 40559u), _wgslsmith_sub_u32(u_input.b.x, 1u >> (1u % 32u))), 63246u);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(f32(-1f) * -1391f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.c.x) + _wgslsmith_f_op_f32(round(-878f))))), global0.c.x) + _wgslsmith_f_op_vec3_f32(global0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.c))))));
    var var_3 = Struct_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(ceil(-1160f)))), _wgslsmith_f_op_f32(-arg_0.a)), -_wgslsmith_add_i32(1i, max(_wgslsmith_mod_i32(-46786i, var_1.b), 1i)), !all(!(!global0.a)), abs(0u), 35032u);
    var var_4 = Struct_1(_wgslsmith_mod_u32(~1u, 1u), _wgslsmith_f_op_f32(-1f));
    return ~firstTrailingBit(~(var_4.a | 0u));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_2(global0.a, _wgslsmith_div_vec3_u32(~abs(select(global0.b, vec3<u32>(1u, global0.b.x, 0u), vec3<bool>(global0.a.x, false, global0.a.x))), ~(~global0.b) & ~(vec3<u32>(u_input.b.x, 58705u, u_input.b.x) >> (global0.b % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global0.c.x + -362f)) + _wgslsmith_f_op_vec3_f32(-global0.c)));
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_add_i32(countOneBits(u_input.d), _wgslsmith_div_i32(-10958i, _wgslsmith_sub_i32(firstLeadingBit(-24969i), 57770i))), global0.a.x, _wgslsmith_div_u32(u_input.b.x, ~(~(~27631u))), max(reverseBits(29436u), max(~4294967295u, 0u)) >> (func_3(Struct_3(global0.c.x, ~global0.b.x, ~10534u, u_input.b.xx & u_input.b.yy, Struct_2(vec2<bool>(global0.a.x, global0.a.x), vec3<u32>(0u, 43564u, 0u), vec3<f32>(global0.c.x, global0.c.x, 719f)))) % 32u));
    let var_1 = _wgslsmith_div_u32(~func_3(Struct_3(_wgslsmith_f_op_f32(-var_0.a), ~43331u, firstLeadingBit(var_0.e), abs(global0.b.zz), Struct_2(global0.a, u_input.b, global0.c))), var_0.e);
    global0 = Struct_2(vec2<bool>(!any(select(vec4<bool>(true, var_0.c, false, var_0.c), vec4<bool>(global0.a.x, false, var_0.c, var_0.c), vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x))), true), firstLeadingBit(~(~global0.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.c, global0.c)) * _wgslsmith_f_op_vec3_f32(-global0.c)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(global0.c.x, -310f)), _wgslsmith_div_f32(-2337f, var_0.a), _wgslsmith_f_op_f32(1194f + -1155f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.c, global0.c)))))));
    let var_2 = _wgslsmith_add_vec2_u32(~(~select(vec2<u32>(88590u, global0.b.x), vec2<u32>(var_1, var_1), global0.a)), vec2<u32>(~(~var_1), _wgslsmith_mod_u32(var_1, u_input.b.x) | var_1)) | _wgslsmith_add_vec2_u32(max(global0.b.xx >> (vec2<u32>(30996u, 11948u) % vec2<u32>(32u)), ~u_input.b.xx) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xy, global0.b.yy), abs(u_input.b.yx)), ~select(~vec2<u32>(30730u, u_input.b.x), u_input.b.xz, global0.a.x != var_0.c));
    return !vec2<bool>(true, ((var_0.e << (0u % 32u)) | 4294967295u) <= 1u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a - 1022f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b - arg_2.b) - arg_2.b))), 1000f));
    let var_1 = firstTrailingBit(abs(_wgslsmith_add_vec4_i32(-vec4<i32>(-1i, arg_1.b, 1i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(510i, -23572i, 2147483647i, arg_1.b) & vec4<i32>(17296i, 0i, -23044i, u_input.a), select(vec4<i32>(927i, arg_1.b, arg_1.b, u_input.d), vec4<i32>(u_input.a, 2147483647i, u_input.d, u_input.a), vec4<bool>(true, arg_1.c, true, false))))));
    global0 = Struct_2(func_2(), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(52979u, 10562u, 0u) << (vec3<u32>(34100u, 1u, arg_1.e) % vec3<u32>(32u)), arg_3.e.b)), _wgslsmith_f_op_vec3_f32(sign(global0.c)));
    var var_2 = 0i;
    let var_3 = vec4<bool>(arg_1.c, (arg_1.c != global0.a.x) || arg_1.c, arg_1.c, global0.a.x);
    return Struct_1(8275u, _wgslsmith_f_op_f32(round(arg_3.e.c.x)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_5) -> vec4<bool> {
    var var_0 = 15951i;
    let var_1 = Struct_3(896f, arg_1.a.a, ~4294967295u, u_input.b.xz, Struct_2(select(select(vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(arg_3.c, global0.a.x), select(vec2<bool>(global0.a.x, false), arg_1.d.yz, arg_1.d.x)), arg_1.d.yy, false), max(~_wgslsmith_add_vec3_u32(global0.b, u_input.b), u_input.b), global0.c));
    let var_2 = Struct_4(arg_1.a, _wgslsmith_div_vec4_f32(arg_1.b, arg_1.b), _wgslsmith_f_op_vec2_f32(exp2(arg_2.zy)), select(select(vec3<bool>(var_1.e.a.x || true, true, global0.b.x < 0u), select(vec3<bool>(false, false, false), vec3<bool>(arg_3.c, false, arg_1.d.x), true), arg_1.d), arg_1.d, arg_1.d), -383i);
    global0 = var_1.e;
    return !(!vec4<bool>(!(!global0.a.x), arg_3.c, all(select(arg_1.d.yz, global0.a, vec2<bool>(false, var_1.e.a.x))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_4(select(global0.b.x, u_input.b.x >> (u_input.b.x % 32u), all(vec3<bool>(global0.a.x, true, global0.a.x))), Struct_4(func_1(vec3<f32>(-441f, 801f, global0.c.x), Struct_5(global0.c.x, u_input.d, true, global0.b.x, global0.b.x), Struct_1(24833u, global0.c.x), Struct_3(global0.c.x, u_input.b.x, global0.b.x, vec2<u32>(global0.b.x, 0u), Struct_2(global0.a, vec3<u32>(u_input.b.x, u_input.b.x, 42258u), global0.c))), vec4<f32>(793f, 597f, global0.c.x, global0.c.x), vec2<f32>(global0.c.x, global0.c.x), vec3<bool>(global0.a.x, false, global0.a.x), ~u_input.e.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, global0.c.x)))), Struct_5(1588f, ~(-37189i), func_2().x, 4294967295u, countOneBits(4294967295u))), func_4(8217u, Struct_4(func_1(global0.c, Struct_5(-1399f, -17065i, true, global0.b.x, 4294967295u), Struct_1(global0.b.x, 271f), Struct_3(-977f, 1u, global0.b.x, u_input.b.yy, Struct_2(vec2<bool>(global0.a.x, true), global0.b, vec3<f32>(global0.c.x, global0.c.x, 297f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, 242f, -1466f, global0.c.x))), global0.c.zy, !vec3<bool>(global0.a.x, global0.a.x, global0.a.x), u_input.c.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, -253f, -226f) - global0.c), global0.c), Struct_5(_wgslsmith_f_op_f32(224f - -378f), ~(-1i), true, 1u, 4294967295u)), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, global0.a.x), vec2<bool>(global0.a.x, global0.a.x))), all(vec4<bool>(false, global0.a.x, false, true)), true, false)), !(!(!select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(false, global0.a.x, global0.a.x, false), global0.a.x))), vec4<bool>(any(!global0.a), all(vec4<bool>(true | global0.a.x, !global0.a.x, select(global0.a.x, true, true), false)), false, global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(6283i, _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(23950u, u_input.b.x, global0.b.x)), vec3<u32>(firstTrailingBit(~100657u), 47367u, _wgslsmith_mult_u32(~0u, select(1u, 2869u, true)))), global0.b.x, ~_wgslsmith_mod_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(u_input.b.zz, global0.b.xz, u_input.b.zz)), ~_wgslsmith_div_vec2_u32(global0.b.yy, u_input.b.zx)));
}

