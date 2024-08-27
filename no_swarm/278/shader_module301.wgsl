struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-693f, -264f, 1154f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = 1074f;
    var var_1 = Struct_1(u_input.a.x);
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(u_input.a.x, var_1.a, u_input.a.x, var_1.a), vec4<i32>(var_1.a, var_1.a, var_1.a, u_input.a.x), false), -vec4<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), 1i, abs(var_1.a))));
    var_1 = Struct_1(~(~u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, global0.x, 624f) + arg_2.a.yyw) + arg_2.a.xyw) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2.a.wzx)))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1378f, -1316f, -1000f), vec3<f32>(var_0, var_2.x, 506f), arg_2.c.a.x))))), arg_2.a.yxw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.a.ywz))))));
}

fn func_2() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-3027f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), 259f))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(true, vec2<u32>(4294967295u, 4294967295u), global0.x), vec4<u32>(55745u, 2436u, 19452u, 4294967295u), Struct_3(vec4<f32>(-530f, global0.x, 408f, global0.x), 146f, Struct_2(vec4<bool>(false, true, false, false), 15286u), Struct_2(vec4<bool>(true, false, true, false), 83029u), global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(972f, global0.x, -972f) + vec3<f32>(-1201f, global0.x, 1476f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, global0.x, global0.x)))), true)))));
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -2065f, -888f, global0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, -1276f, global0.x, -357f))))), global0.x, Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), ~(~1u)), Struct_2(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), 1u), global0.x);
    let var_1 = var_0;
    var var_2 = var_1.c;
    let var_3 = vec4<bool>(any(select(vec2<bool>(all(var_1.c.a), any(var_1.d.a)), select(select(var_2.a.ww, var_1.c.a.ww, false), select(var_0.c.a.zy, vec2<bool>(var_1.d.a.x, var_1.c.a.x), vec2<bool>(var_2.a.x, var_0.d.a.x)), select(vec2<bool>(true, var_2.a.x), var_0.c.a.xw, var_1.d.a.x)), var_0.d.a.x)), var_2.a.x, any(!var_0.c.a.wx), false);
    return var_0.d;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(arg_0, 263f))), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(974f - -1063f))), _wgslsmith_f_op_f32(trunc(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f * global0.x)))), _wgslsmith_f_op_f32(-global0.x), func_2(), func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, 551f))) * 478f))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(trunc(global0.x)))), arg_0, _wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(select(arg_0, 1700f, var_0.c.a.x)))) - var_0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -923f))), Struct_2(select(!(!var_0.d.a), select(var_0.d.a, select(vec4<bool>(var_0.c.a.x, var_0.d.a.x, var_0.c.a.x, var_0.c.a.x), var_0.d.a, var_0.c.a), true), true), func_2().b), Struct_2(var_0.c.a, abs(1u)), _wgslsmith_f_op_f32(step(-805f, var_0.a.x)));
    var var_1 = var_0.c.a.x;
    var_0 = Struct_3(var_0.a, global0.x, var_0.d, var_0.c, _wgslsmith_f_op_f32(step(arg_0, -2147f)));
    var var_2 = Struct_5(Struct_3(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-365f, global0.x))), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1876f)), global0.x, var_0.d, func_2(), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(all(var_0.c.a.wzw), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 30141u), vec2<u32>(var_0.c.b, var_0.d.b), vec2<u32>(var_0.c.b, 1u)), _wgslsmith_f_op_f32(var_0.a.x * -1461f)), ~(~vec4<u32>(74135u, 102955u, 0u, var_0.d.b)), Struct_3(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(809f, -880f, 176f, arg_0)), -764f, var_0.c, func_2(), _wgslsmith_f_op_f32(-1152f - 498f)))).x));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = vec4<i32>(-1i, ~(-u_input.a.x), _wgslsmith_dot_vec3_i32(-(~u_input.a), firstLeadingBit(vec3<i32>(2147483647i | u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -2147483647i))), ~u_input.a.x);
    let var_2 = Struct_3(vec4<f32>(-939f, _wgslsmith_f_op_f32(select(var_0, 757f, false)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -868f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0 * -679f), _wgslsmith_div_f32(-527f, -1761f), true)))), global0.x, Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, true, false), vec4<bool>(true, true, func_1(global0.x, vec4<i32>(79771i, u_input.a.x, -2147483647i, 1i)), true)), ~(1u >> (0u % 32u))), Struct_2(vec4<bool>(all(vec2<bool>(false, false)), true, false, var_0 > _wgslsmith_f_op_f32(global0.x - var_0)), 28739u), _wgslsmith_f_op_f32(-global0.x));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a * vec4<f32>(399f, var_0, -327f, global0.x)) + var_2.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(false, vec2<u32>(var_2.d.b, 50165u), var_0), vec4<u32>(var_2.c.b, var_2.c.b, var_2.c.b, 154177u), var_2)).x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(1077f, 1358f)), _wgslsmith_f_op_f32(var_2.a.x - -1102f), _wgslsmith_f_op_f32(max(var_2.b, -289f))))), true)));
    var var_4 = vec4<bool>(var_2.d.a.x, _wgslsmith_sub_u32(~(~var_2.c.b), 100582u) >= ~firstLeadingBit(abs(var_2.d.b)), func_2().a.x, ~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(51417i, -44780i, var_1.x, -2147483647i), vec4<i32>(1i, u_input.a.x, u_input.a.x, -27501i)), ~vec4<i32>(-3064i, 0i, var_1.x, var_1.x)) < var_1.x);
    var var_5 = Struct_5(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(-var_3)), vec4<f32>(var_3.x, _wgslsmith_div_f32(744f, 446f), 882f, var_3.x)), 873f, var_2.c, Struct_2(select(vec4<bool>(true, var_2.d.a.x, false, var_4.x), select(vec4<bool>(true, false, var_2.c.a.x, false), vec4<bool>(var_2.d.a.x, true, true, false), var_4.x), select(var_2.c.a, vec4<bool>(true, var_4.x, false, true), true)), _wgslsmith_mult_u32(var_2.c.b, ~var_2.c.b)), _wgslsmith_f_op_f32(var_3.x * -670f)));
    var_1 = -vec4<i32>(-42662i, -35848i, -3707i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(max(u_input.a.x, var_1.x), u_input.a.x, _wgslsmith_mod_i32(var_1.x, var_1.x)), -24317i));
    let var_6 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(var_3.wzw)), max(~vec4<u32>(4294967295u, var_5.a.c.b, 4294967295u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_5.a.d.b, 4294967295u, var_5.a.c.b, 10283u), vec4<u32>(var_2.c.b, 4294967295u, 39730u, 82494u)) << (select(vec4<u32>(var_2.d.b, 7873u, 0u, var_2.c.b), vec4<u32>(var_2.d.b, 0u, 11083u, 0u), var_2.c.a) % vec4<u32>(32u))) & ~(countOneBits(vec4<u32>(4294967295u, var_2.c.b, 59043u, var_5.a.d.b)) << (vec4<u32>(2030u, var_5.a.c.b, 34612u, var_2.c.b) % vec4<u32>(32u))));
}

