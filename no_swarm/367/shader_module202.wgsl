struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = Struct_4(u_input.b.yz, arg_0.a.a);
    var var_1 = arg_0.b.xzw;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.e.b.a, arg_0.d.d), vec2<i32>(302i, u_input.d)), _wgslsmith_clamp_vec2_i32(vec2<i32>(4974i, u_input.d), arg_0.d.c.zy, arg_2)), ~(_wgslsmith_clamp_i32(u_input.d, arg_2.x, arg_0.e.b.a) & ~9443i), arg_0.d.b.a), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.e.d, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.d.c.x, -2147483647i, arg_2.x) | arg_0.e.c, firstLeadingBit(arg_0.d.c)), ~(~arg_2.x)), arg_0.d.c));
    let var_3 = !arg_0.e.a;
    return abs(~arg_0.e.e.yy);
}

fn func_2() -> Struct_1 {
    let var_0 = all(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = Struct_4(_wgslsmith_clamp_vec2_u32(u_input.c.zx << (func_3(Struct_5(Struct_1(var_0, vec3<u32>(41299u, 0u, u_input.b.x)), vec4<f32>(-1000f, -952f, -1244f, 1202f), -1332f, Struct_3(var_0, Struct_2(1i), vec3<i32>(-45931i, u_input.d, u_input.d), u_input.d, vec4<u32>(u_input.b.x, 40964u, 24832u, 30694u)), Struct_3(var_0, Struct_2(0i), vec3<i32>(u_input.d, 55877i, -60981i), 9527i, u_input.b)), 53914u, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(14515i, -2147483647i))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(92286u, u_input.c.x) | u_input.b.xy), u_input.b.xx), u_input.b.wz), !all(!vec3<bool>(var_0, true, var_0)));
    let var_2 = countOneBits(_wgslsmith_div_vec4_u32(u_input.b, abs(vec4<u32>(var_1.a.x, ~4294967295u, 38420u, var_1.a.x))));
    var var_3 = vec2<bool>(true, var_1.b);
    let var_4 = Struct_5(Struct_1(!var_1.b, var_2.yyy), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-687f))), 1588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -710f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1087f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(708f + -162f))), _wgslsmith_f_op_f32(617f - -235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(481f)), 795f)) - 1f)), Struct_3(all(!(!vec3<bool>(var_1.b, true, var_1.b))), Struct_2(_wgslsmith_add_i32(firstLeadingBit(10475i), u_input.d ^ 1i)), -vec3<i32>(i32(-1i) * -20528i, -7769i, firstLeadingBit(-10707i)), u_input.d ^ min(u_input.d, min(u_input.d, u_input.d)), vec4<u32>(u_input.c.x, var_1.a.x, _wgslsmith_dot_vec3_u32(var_2.wyz, _wgslsmith_sub_vec3_u32(u_input.c.ywy, vec3<u32>(var_1.a.x, 36515u, 4294967295u))), reverseBits(4294967295u | var_2.x))), Struct_3(var_0, Struct_2(_wgslsmith_clamp_i32(-2147483647i, -50072i, _wgslsmith_mod_i32(1i, u_input.d))), vec3<i32>(countOneBits(1i), abs(0i), 34634i), ~(firstTrailingBit(u_input.d) | 102405i), var_2));
    return Struct_1(true, var_4.a.b);
}

fn func_4(arg_0: Struct_5) -> i32 {
    let var_0 = select(!(!select(!vec4<bool>(arg_0.d.a, arg_0.a.a, arg_0.a.a, arg_0.a.a), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, -(~u_input.d) <= firstTrailingBit(-u_input.d), arg_0.e.a), true);
    var var_1 = u_input.a;
    var var_2 = ~_wgslsmith_mult_u32(4294967295u, arg_0.e.e.x);
    var var_3 = arg_0.d;
    var var_4 = arg_0.a;
    return _wgslsmith_sub_i32(i32(-1i) * -arg_0.d.b.a, 17189i);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_add_i32(func_4(Struct_5(func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-487f, -1238f, -361f, -624f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, -1117f, -1164f, -742f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_3(all(vec3<bool>(true, false, false)), arg_1, ~vec3<i32>(u_input.d, -35802i, 33575i), i32(-1i) * -2147483647i, u_input.b), Struct_3(func_2().a, Struct_2(29754i), vec3<i32>(-7769i, 16014i, arg_1.a) | vec3<i32>(1i, -25759i, u_input.d), reverseBits(-2147483647i), firstTrailingBit(u_input.b)))), u_input.d);
    var var_1 = Struct_2(i32(-1i) * -1i);
    var_1 = Struct_2(-5840i);
    let var_2 = Struct_2(arg_1.a);
    var_1 = Struct_2(-12133i);
    return vec4<i32>(~1i, -1i, 1i & (~var_2.a ^ 2147483647i), i32(-1i) * -9571i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-(~(-u_input.d)), ~u_input.d, 1i, _wgslsmith_dot_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 0i, 1i) | vec3<i32>(-48352i, -39182i, u_input.d), select(vec3<i32>(2147483647i, -1i, u_input.d), vec3<i32>(-12293i, 0i, 9344i), false)), vec3<i32>(-(~(-1i)), u_input.d, u_input.d)));
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(min(vec4<i32>(var_0.x, -2147483647i, u_input.d, -119972i), vec4<i32>(29250i, u_input.d, u_input.d, u_input.d)), firstTrailingBit(vec4<i32>(-11540i, var_0.x, -23950i, u_input.d)))), func_1(1i, Struct_2(_wgslsmith_div_i32(u_input.d, 1i)), u_input.b.wyx), vec4<i32>(-19049i, func_4(Struct_5(Struct_1(true, u_input.b.zyx), vec4<f32>(1292f, 1240f, 374f, 302f), -879f, Struct_3(true, Struct_2(-1i), var_0.xxx, -2147483647i, vec4<u32>(40646u, 49087u, u_input.c.x, u_input.b.x)), Struct_3(false, Struct_2(1i), var_0.zyw, u_input.d, vec4<u32>(u_input.c.x, 1u, 59387u, u_input.b.x)))), firstLeadingBit(u_input.d) ^ 1155i, var_0.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 23866i, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.d), vec2<i32>(40198i, -1i))), -firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, 10865i))));
    var_0 = abs(-(~(-vec4<i32>(u_input.d, u_input.d, 2147483647i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(var_0.yxw) & var_0.xxy);
}

