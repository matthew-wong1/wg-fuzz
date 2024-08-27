struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec3<i32> {
    let var_0 = -508f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-500f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2052f)) + _wgslsmith_f_op_f32(458f * -2242f)), _wgslsmith_f_op_f32(-328f - _wgslsmith_div_f32(-657f, 1902f)))));
    let var_1 = all(vec2<bool>(var_0, ~firstTrailingBit(4294967295u) <= 1u));
    var var_2 = 4294967295u;
    let var_3 = ~vec4<u32>(1u, 5502u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(6561u, 35529u), ~vec2<u32>(34103u, 0u)), _wgslsmith_div_u32(_wgslsmith_div_u32(36115u, 56975u), 1u)), ~(~31697u));
    let var_4 = var_3.x;
    return vec3<i32>(u_input.a, abs(u_input.a), u_input.a);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(249f)), _wgslsmith_div_f32(arg_2, arg_0.b.x))), arg_0.b.x, !any(vec2<bool>(arg_0.a, false))))), 313f);
    let var_1 = arg_1.a.xz;
    let var_2 = arg_0.c;
    let var_3 = Struct_4(select(min(arg_1.a, arg_1.a), arg_1.a, !(!select(vec4<bool>(arg_0.a, false, false, arg_0.a), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(true, arg_0.a, true, arg_0.a)))));
    var var_4 = arg_0.e;
    return var_3.a.x;
}

fn func_2(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_1(-1i);
    let var_1 = vec4<u32>(~((firstLeadingBit(arg_0.a.x) << (~17743u % 32u)) & 0u), _wgslsmith_mult_u32(func_3(Struct_3(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-557f, 569f, -553f)), _wgslsmith_div_vec4_i32(vec4<i32>(57701i, u_input.a, -1i, -1i), vec4<i32>(u_input.a, var_0.a, var_0.a, u_input.a)), Struct_1(var_0.a), Struct_1(1i)), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1123f))), func_3(Struct_3(true, vec3<f32>(-1058f, -817f, 344f), ~vec4<i32>(var_0.a, -34871i, u_input.a, -1943i), var_0, var_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(332f, 390f) - _wgslsmith_f_op_f32(-1034f + 1012f)))), min(4294967295u, ~arg_0.a.x), arg_0.a.x & 9658u);
    let var_2 = var_1.wyz;
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1144f * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(812f, -937f))))), _wgslsmith_f_op_f32(-682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-807f + 1000f))), !(!((var_2.x ^ 4294967295u) > ~4294967295u))));
    var var_4 = Struct_3(true, vec3<f32>(_wgslsmith_f_op_f32(select(var_3, -1192f, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(exp2(var_3))))), -216f), vec4<i32>(0i, u_input.a, firstLeadingBit(_wgslsmith_div_i32(u_input.a, -u_input.a)), u_input.a), var_0, Struct_1(u_input.a));
    return Struct_3(var_4.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_4.b.x * _wgslsmith_f_op_f32(315f * var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3, var_3))), -1315f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, 1551f, var_3)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3, var_4.b.x, var_3)))))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_4.e.a, var_0.a, -1i) >> (arg_0.a % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, -30089i, 83747i)), vec4<i32>(38092i, 2147483647i, _wgslsmith_div_i32(var_4.c.x, -6314i), 39813i >> (var_1.x % 32u)), vec4<i32>(-var_4.e.a, -15224i, -18767i, min(u_input.a, -1i))), var_4.d, Struct_1(func_1().x));
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_2(arg_0.b, arg_0.d);
    var var_1 = ~_wgslsmith_add_u32(~1u, min(1u, ~(~31605u)));
    var var_2 = (arg_0.c.wyy ^ (arg_0.c.yzy << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))) & (-arg_0.c.wwx << (~vec3<u32>(select(13771u, 1u, true), 32423u, ~49907u) % vec3<u32>(32u)));
    let var_3 = Struct_4(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) << (vec4<u32>(_wgslsmith_sub_u32(reverseBits(4294967295u), ~33212u), 90166u, func_3(Struct_3(arg_0.a, arg_0.b, vec4<i32>(var_2.x, u_input.a, arg_0.d.a, 3364i), Struct_1(var_2.x), Struct_1(var_2.x)), Struct_4(vec4<u32>(4294967295u, 0u, 16660u, 0u)), _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(44365u, 1u), countOneBits(1u))) % vec4<u32>(32u)));
    let var_4 = Struct_3((_wgslsmith_add_u32(min(1u, 0u), _wgslsmith_add_u32(var_3.a.x, var_3.a.x)) | func_3(Struct_3(arg_0.a, var_0.a, arg_0.c, Struct_1(var_2.x), Struct_1(1i)), Struct_4(var_3.a), 673f)) > abs(~(~14261u)), arg_0.b, vec4<i32>(countOneBits(_wgslsmith_div_i32(-2147483647i, 1i) & abs(u_input.a)), max(~(arg_0.d.a | -1i), max(~2147483647i, -2147483647i)), -1i, 1i), arg_0.e, Struct_1(~arg_0.e.a));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-1910i, -15376i, -_wgslsmith_add_i32(14422i, ~u_input.a)) | ~(func_1() & reverseBits(vec3<i32>(-1i, u_input.a, 2147483647i)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-570f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -593f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1737f)), _wgslsmith_f_op_f32(242f * 1125f))))));
    let var_3 = 16532u;
    let var_4 = true;
    let var_5 = false;
    var var_6 = ~vec4<i32>(4790i, _wgslsmith_mult_i32(30356i, var_0.x), _wgslsmith_sub_i32(-43144i >> (0u % 32u), -var_1.x), u_input.a) >> (~(~abs(select(vec4<u32>(1u, var_3, 1u, var_3), vec4<u32>(8121u, var_3, var_3, 52996u), vec4<bool>(var_4, var_5, true, false)))) % vec4<u32>(32u));
    let var_7 = ~(~var_3);
    let var_8 = func_4(func_2(Struct_4(~(vec4<u32>(43137u, var_3, var_7, var_3) | vec4<u32>(57923u, 24694u, var_3, var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_8.a.x, 1003f, var_8.a.x, var_8.a.x), vec4<f32>(var_2.x, 518f, var_8.a.x, -591f), false)) - vec4<f32>(var_2.x, -1250f, var_8.a.x, -2774f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1310f, var_8.a.x, var_8.a.x, var_2.x) * vec4<f32>(var_8.a.x, var_8.a.x, 201f, 243f)))))), ~_wgslsmith_add_vec2_i32(vec2<i32>(-4861i, abs(4914i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-16064i, var_8.b.a), reverseBits(vec2<i32>(23941i, -8910i)), vec2<i32>(-1i, u_input.a))));
}

