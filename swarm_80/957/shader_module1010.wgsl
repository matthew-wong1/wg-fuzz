struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, false), vec4<f32>(1556f, -1577f, 643f, -2302f), vec3<bool>(true, true, true));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_4(arg_1);
    var_0 = Struct_4(Struct_2(arg_1.a, vec4<f32>(2474f, global0.b.x, 922f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -179f), arg_0.a.b.x))), select(select(select(vec3<bool>(false, false, true), arg_1.c, arg_0.d.x), arg_1.c, select(arg_0.d, arg_0.d, vec3<bool>(false, false, true))), !arg_1.c, !(!global0.c.x))));
    var var_1 = _wgslsmith_sub_vec2_i32(max(countOneBits(~(u_input.a.yx ^ u_input.c.xx)), u_input.c.xx), u_input.a.zy);
    var var_2 = _wgslsmith_dot_vec3_u32(abs(countOneBits(abs(vec3<u32>(4294967295u, 4294967295u, u_input.b)))), vec3<u32>(~_wgslsmith_add_u32(12324u, u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 77307u), vec3<u32>(u_input.b, 506u, 52877u)), ~(~u_input.b))) < 1u;
    let var_3 = false;
    return select(vec3<bool>(~2905u == u_input.b, all(!select(arg_0.c, vec4<bool>(var_3, false, arg_0.d.x, true), var_0.a.a.b)), !(min(u_input.b, 59300u) > abs(u_input.b))), vec3<bool>(true, var_3, all(vec3<bool>(var_0.a.a.b, any(vec4<bool>(true, arg_1.c.x, true, var_0.a.a.b)), arg_1.c.x))), global0.c.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_vec3_u32(~(vec3<u32>(u_input.b, 1u, 0u) >> (vec3<u32>(arg_1.x, 0u, u_input.b) % vec3<u32>(32u))), ~vec3<u32>(~u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b), vec3<u32>(~u_input.b, 1u, ~_wgslsmith_sub_u32(arg_1.x, 4294967295u))) & select(select(min(vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, u_input.b, 1u)) << (vec3<u32>(37499u, arg_1.x, 0u) % vec3<u32>(32u)), ~(~vec3<u32>(arg_1.x, 12611u, arg_1.x)), arg_0.x), firstLeadingBit(vec3<u32>(u_input.b, 51945u, arg_1.x)) | vec3<u32>(arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(118547u, 25081u, arg_1.x, arg_1.x), vec4<u32>(u_input.b, 4294967295u, 1u, 1u)), ~1u), !(!func_3(Struct_3(Struct_2(Struct_1(-2147483647i, false), global0.b, var_0.wyx), u_input.a.x, arg_2, vec3<bool>(false, global0.a.b, arg_2.x)), Struct_2(Struct_1(global0.a.a, global0.a.b), vec4<f32>(279f, -1070f, -1595f, 410f), arg_2.xyw))));
    let var_2 = global0.a;
    global0 = Struct_2(Struct_1(1i, !var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, arg_3, global0.b.x, arg_3))), vec4<f32>(-1078f, arg_3, global0.b.x, 2601f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, -572f, 200f, 409f) * _wgslsmith_f_op_vec4_f32(ceil(global0.b))), global0.c.x))), select(vec3<bool>(false, true, true), global0.c, all(select(arg_2, vec4<bool>(arg_0.x, false, true, true), arg_2)) && !(-2575f > arg_3)));
    let var_3 = 241f;
    return Struct_2(global0.a, vec4<f32>(1162f, arg_3, var_3, global0.b.x), select(var_0.wxw, func_3(Struct_3(Struct_2(global0.a, global0.b, arg_0), _wgslsmith_div_i32(global0.a.a, u_input.c.x), !vec4<bool>(var_0.x, false, false, false), func_3(Struct_3(Struct_2(Struct_1(0i, arg_2.x), global0.b, global0.c), global0.a.a, arg_2, vec3<bool>(arg_0.x, true, false)), Struct_2(global0.a, vec4<f32>(var_3, global0.b.x, global0.b.x, arg_3), global0.c))), Struct_2(Struct_1(25907i, arg_2.x), _wgslsmith_f_op_vec4_f32(exp2(global0.b)), vec3<bool>(false, var_2.b, arg_0.x))), !select(select(arg_0, vec3<bool>(true, var_0.x, true), global0.c.x), vec3<bool>(true, var_0.x, var_2.b), var_2.b)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    global0 = func_2(select(!(!global0.c), !vec3<bool>(0u < u_input.b, false, u_input.b <= u_input.b), vec3<bool>(_wgslsmith_clamp_i32(-2147483647i, 25660i, global0.a.a) != 2147483647i, all(global0.c.yy) || true, _wgslsmith_f_op_f32(sign(1138f)) < _wgslsmith_f_op_f32(f32(-1f) * -830f))), vec2<u32>(~(~min(36634u, arg_2.x)), ~29568u), !vec4<bool>(!any(vec3<bool>(false, global0.c.x, true)), all(!vec4<bool>(true, true, true, global0.c.x)), false, all(!vec3<bool>(global0.a.b, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))));
    global0 = func_2(!(!func_2(global0.c, arg_2, vec4<bool>(global0.a.b, global0.c.x, global0.c.x, global0.a.b), -444f).c), ~(max(~vec2<u32>(10664u, arg_2.x), arg_2) & arg_2), !select(select(vec4<bool>(global0.c.x, true, global0.a.b, global0.c.x), select(vec4<bool>(global0.a.b, false, global0.a.b, false), vec4<bool>(true, global0.a.b, true, global0.a.b), vec4<bool>(false, true, global0.a.b, global0.a.b)), !vec4<bool>(global0.a.b, false, false, global0.a.b)), !vec4<bool>(true, global0.c.x, false, false), vec4<bool>(global0.a.b, func_3(Struct_3(Struct_2(global0.a, global0.b, global0.c), arg_1, vec4<bool>(global0.a.b, global0.a.b, global0.c.x, global0.a.b), vec3<bool>(global0.c.x, global0.c.x, true)), Struct_2(Struct_1(global0.a.a, global0.c.x), vec4<f32>(global0.b.x, global0.b.x, 794f, 1000f), vec3<bool>(global0.c.x, global0.a.b, true))).x, true, false && global0.a.b)), _wgslsmith_f_op_f32(select(global0.b.x, _wgslsmith_f_op_f32(trunc(global0.b.x)), true)));
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~(~1u), 1u), u_input.b), arg_2);
    var_0 = arg_2.x << (~arg_2.x % 32u);
    return Struct_2(func_2(func_3(Struct_3(Struct_2(global0.a, global0.b, vec3<bool>(global0.a.b, global0.c.x, global0.c.x)), _wgslsmith_sub_i32(arg_0, 2147483647i), select(vec4<bool>(true, true, global0.c.x, true), vec4<bool>(global0.a.b, false, true, global0.a.b), global0.c.x), global0.c), func_2(global0.c, _wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, 34358u), arg_2), select(vec4<bool>(global0.c.x, global0.c.x, false, true), vec4<bool>(false, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x)), global0.b.x)), arg_2, vec4<bool>(0i < u_input.a.x, global0.a.b, global0.c.x, all(!global0.c)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-481f * _wgslsmith_f_op_f32(-108f - -2004f)))).a, global0.b, !global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 13094i;
    global0 = func_1(-u_input.c.x, var_0, firstLeadingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(10769u, 1u))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), global0.b.x));
    let var_3 = Struct_3(Struct_2(func_2(global0.c, abs(countOneBits(vec2<u32>(u_input.b, var_1))), select(vec4<bool>(global0.c.x, global0.a.b, global0.a.b, true), !vec4<bool>(global0.a.b, global0.a.b, true, global0.c.x), global0.b.x <= global0.b.x), -1264f).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 155f, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, 1121f, global0.b.x, global0.b.x))), !global0.c), ~global0.a.a, !select(select(select(vec4<bool>(false, false, true, global0.a.b), vec4<bool>(global0.c.x, global0.a.b, global0.c.x, false), vec4<bool>(global0.a.b, false, global0.c.x, global0.a.b)), vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x), !vec4<bool>(global0.c.x, global0.a.b, false, false)), select(vec4<bool>(global0.c.x, true, false, global0.a.b), select(vec4<bool>(false, global0.a.b, global0.a.b, global0.a.b), vec4<bool>(global0.a.b, true, true, global0.c.x), vec4<bool>(global0.a.b, global0.c.x, false, true)), !vec4<bool>(global0.a.b, true, false, global0.a.b)), true), select(global0.c, !(!select(global0.c, global0.c, vec3<bool>(false, global0.c.x, global0.a.b))), !(!(!global0.c))));
    var var_4 = u_input.c;
    let var_5 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 91180u, var_1, 4294967295u)), ~vec4<u32>(var_1, u_input.b, u_input.b, u_input.b)), firstTrailingBit(abs(vec4<u32>(var_1, 4294967295u, var_1, var_1))) >> (vec4<u32>(abs(42196u), u_input.b, _wgslsmith_div_u32(0u, 1u), ~4294967295u) % vec4<u32>(32u)));
    var var_6 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.b.x + global0.b.x) + -473f)))), ~vec3<i32>(1i, 2147483647i, _wgslsmith_mod_i32(var_3.b, 40487i)), max(var_5.wxx, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, var_5.x) ^ vec3<u32>(0u, 4294967295u, 48397u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1, var_1, var_5.x), vec3<u32>(u_input.b, var_1, 4294967295u))) & (vec3<u32>(u_input.b, 4294967295u, 1u) << (var_5.zyw % vec3<u32>(32u)))), abs(~(vec4<u32>(u_input.b, 4294967295u, var_5.x, u_input.b) >> (vec4<u32>(59075u, 4294967295u, var_1, 4294967295u) % vec4<u32>(32u)))) << (var_5 % vec4<u32>(32u)));
}

