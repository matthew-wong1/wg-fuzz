struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    let var_0 = ~73478u;
    global0 = Struct_2(global0.a, global0.b, -u_input.c.xzz, abs(-1i) << (~(~_wgslsmith_add_u32(7816u, arg_0.x)) % 32u));
    let var_1 = select(countOneBits(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, -1i), firstLeadingBit(global0.b.wx)), global0.c.yz, !(!global0.a.x))), _wgslsmith_clamp_vec2_i32(-global0.b.yx, -abs(_wgslsmith_mod_vec2_i32(global0.b.yy, vec2<i32>(-2147483647i, global0.b.x))), countOneBits(vec2<i32>(6868i, _wgslsmith_sub_i32(u_input.c.x, global0.c.x)))), select(global0.a.xx, global0.a.xx, vec2<bool>(any(select(global0.a, vec3<bool>(global0.a.x, true, global0.a.x), global0.a.x)), global0.a.x)));
    let var_2 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-1000f, 710f), 1240f, _wgslsmith_f_op_f32(max(-311f, -789f)))))), _wgslsmith_add_u32(_wgslsmith_mod_u32(~0u >> (0u % 32u), ~(~22027u)), abs(~(~1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(527f - 1373f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1010f)), -1377f, global0.a.x)), false)), _wgslsmith_f_op_f32(sign(509f))), vec3<u32>(arg_0.x, ~1u, 0u));
    var var_3 = Struct_4(var_2.e, Struct_1(vec3<u32>(1u, reverseBits(~var_0), 4294967295u), vec3<f32>(688f, -1246f, _wgslsmith_f_op_f32(-var_2.b.x)), min(1u, 0u), var_2.d, vec3<u32>(u_input.b, 95315u, reverseBits(u_input.a ^ 1u))));
    return global0.c;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = global0.b.zxy;
    var_0 = -(~u_input.c.zzz);
    var_0 = select(func_3(~(~vec3<u32>(u_input.b, 16289u, u_input.a))), global0.b.www, vec3<bool>(select(!(arg_0 & arg_0), false, true), !global0.a.x | true, global0.a.x));
    let var_1 = !select(!(!global0.a), vec3<bool>(true & !global0.a.x, false, any(vec2<bool>(true, false))), global0.a);
    var var_2 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(global0.b, max(~(~vec4<i32>(2147483647i, 11372i, 59981i, var_0.x)), global0.b)), u_input.c);
    return -760f;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<i32>) -> vec3<f32> {
    var var_0 = global0.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-558f, -571f), vec2<f32>(335f, -402f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1800f, 258f)))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, -982f) * vec2<f32>(120f, -924f)) + vec2<f32>(850f, -244f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), !any(arg_1.b.a))))));
    let var_2 = Struct_4(abs(vec3<u32>(~arg_0, 4294967295u, ~(~24574u))), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, 11538u, 14603u) << ((vec3<u32>(1u, 1u, u_input.a) | vec3<u32>(u_input.b, u_input.a, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(u_input.b, ~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, arg_0), vec3<u32>(3379u, arg_0, 1668u)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-202f, 1514f, var_1.x), vec3<f32>(var_1.x, var_1.x, -1906f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -240f)))), 50981u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(arg_2.b.a.x)), 729f))), reverseBits(countOneBits(~vec3<u32>(u_input.a, 58958u, 1u)))));
    let var_3 = -(arg_2.b.b << (~(~vec4<u32>(18555u, var_2.b.c, 0u, var_2.b.a.x)) % vec4<u32>(32u)));
    let var_4 = 33116u;
    return _wgslsmith_f_op_vec3_f32(-var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<bool>(~u_input.b >= u_input.a, global0.c.x >= -32932i, !global0.a.x), ~global0.b, global0.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32((vec2<i32>(global0.b.x, -1i) ^ global0.c.xz) & abs(u_input.c.xy), -_wgslsmith_mult_vec2_i32(u_input.c.xy, vec2<i32>(-21199i, -659i))), -2147483647i));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(41173u, Struct_3(global0.a.x, Struct_2(global0.a, u_input.c, u_input.c.wyw, u_input.c.x)), Struct_3(true, Struct_2(vec3<bool>(global0.a.x, false, global0.a.x), vec4<i32>(u_input.c.x, global0.d, u_input.c.x, global0.b.x), vec3<i32>(global0.b.x, -1i, -2719i), u_input.c.x)), global0.b.wy)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-601f, 350f, 338f)))), vec3<f32>(-2517f, _wgslsmith_f_op_f32(1000f * -839f), _wgslsmith_f_op_f32(step(-572f, -1023f)))))));
    let var_1 = !(-482f < _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(f32(-1f) * -881f))));
    var var_2 = Struct_2(!select(select(select(global0.a, vec3<bool>(var_1, true, global0.a.x), false), vec3<bool>(true, false, false), global0.a), vec3<bool>(!var_1, false, true), all(global0.a.zy)), global0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.x, 51553i, -37623i), u_input.c.yyy), 13683i);
    global0 = Struct_2(vec3<bool>(!global0.a.x, _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(min(1024f, var_0.x)))) >= 263f, var_1), select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.d, -5287i, u_input.c.x, 17088i) << (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b), vec4<u32>(30700u, u_input.b, u_input.a, 0u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-40156i, 0i, global0.b.x, 2147483647i), var_2.b, vec4<i32>(-34131i, -1i, var_2.d, global0.d)), vec4<i32>(2147483647i, -2147483647i, global0.d, global0.b.x))), vec4<i32>(var_2.b.x, countOneBits(1i) >> (u_input.a % 32u), -u_input.c.x >> (~4294967295u % 32u), 0i), var_2.a.x & all(vec3<bool>(var_2.a.x, global0.a.x, false))), firstLeadingBit(reverseBits(-vec3<i32>(-2655i, -3203i, global0.c.x))), -1i ^ (select(-1i, select(u_input.c.x, 0i, var_1), var_2.a.x) << (u_input.a % 32u)));
    let var_3 = Struct_1(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 15777u, u_input.a, 0u) << (vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(64175u, u_input.b, 4294967295u, 74282u))), u_input.b, 8945u | u_input.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(366f, -1564f)), _wgslsmith_f_op_f32(f32(-1f) * -335f)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -681f))))), _wgslsmith_mod_u32(u_input.a & (1u >> (~u_input.a % 32u)), 1u), 1000f, vec3<u32>(30334u, abs(firstLeadingBit(u_input.b) | max(1u, 33392u)), 58559u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(242f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1035f) + var_0.x), var_0.x), var_3.b.x, var_3.d), max(25989i & _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(15438i, -1i)), var_2.b.x));
}

