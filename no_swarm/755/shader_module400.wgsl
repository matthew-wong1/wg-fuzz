struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(113673u, 1u, -1569f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 1u), false), vec2<bool>(true, true), 0i);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> i32 {
    global0 = Struct_4(~(~(~37548u)), 1u, 545f);
    let var_0 = Struct_4(global0.a, min(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.b.x, ~global1.a.a.x), 1u), 53285u), -921f);
    var var_1 = -(~firstLeadingBit(vec3<i32>(global1.c, u_input.c.x, -1i) & countOneBits(u_input.c.wxx)));
    var_1 = (vec3<i32>(_wgslsmith_add_i32(1i, var_1.x ^ u_input.c.x), min(2147483647i >> (global1.a.a.x % 32u), u_input.c.x ^ u_input.c.x), i32(-1i) * -7130i) ^ (vec3<i32>(-1i) * -u_input.c.wzx)) & -u_input.c.ywy;
    let var_2 = Struct_4(_wgslsmith_add_u32(~select(47857u, 1u, global1.b.x) | 16263u, 4032u), ~_wgslsmith_add_u32((global0.b & 30021u) << (1u % 32u), min(_wgslsmith_mult_u32(43401u, 0u), global1.a.a.x)), _wgslsmith_div_f32(global0.c, var_0.c));
    return countOneBits(0i);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(402f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(643f * 145f)), true, countOneBits(u_input.c.zy | ~u_input.c.yy), global1.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1849f, global0.c, -1041f, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, arg_1, -420f, -1292f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * 368f) + _wgslsmith_div_f32(-1050f, -118f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - -155f), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(global0.c + -1000f))), vec4<f32>(955f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.c - global0.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -506f)), 552f)));
    var var_2 = Struct_4(global1.a.a.x, 1u << (0u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
    let var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1334f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f))), 1682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_div_f32(887f, -469f)))), var_0.b != !(!var_0.b), -(-var_0.c << (~vec2<u32>(1u, 138442u) % vec2<u32>(32u))) & _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c.x, -15573i), ~vec2<i32>(14605i, -70855i)), _wgslsmith_mod_vec2_i32(max(var_0.c, u_input.c.wz), _wgslsmith_mod_vec2_i32(vec2<i32>(-1703i, global1.c), u_input.c.zy))), Struct_1(vec2<u32>(_wgslsmith_sub_u32(var_2.b, 21232u) & _wgslsmith_mod_u32(74926u, 75760u), ~(~10687u)), var_0.b | !all(vec4<bool>(true, false, false, global1.b.x))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-var_0.a);
    return _wgslsmith_sub_i32(_wgslsmith_sub_i32(0i, -1i), -13640i) != u_input.c.x;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-251f, 906f, global0.c))))), all(vec2<bool>(func_3(4294967295u, 1327f, ~vec3<u32>(global1.a.a.x, 4294967295u, 32839u)), true)), vec2<i32>(global1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(select(global1.c, u_input.c.x, true), u_input.c.x), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global1.c, 1i), vec2<i32>(global1.c, 0i)), u_input.c.yz))), Struct_1(~countOneBits(~vec2<u32>(20132u, 0u)), true));
    global2 = var_0.d;
    var var_1 = Struct_3(var_0.a, !any(vec4<bool>(true, false, func_3(u_input.a.x, global0.c, vec3<u32>(1u, var_0.d.a.x, 0u)), true)), max(firstLeadingBit(u_input.c.xx) & ((vec2<i32>(19480i, var_0.c.x) >> (vec2<u32>(global1.a.a.x, arg_0) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(1401u, 4294967295u), u_input.b.xy, global2.a) % vec2<u32>(32u))), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(u_input.c.x, 1i, -2147483647i), ~global1.c))), var_0.d);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - _wgslsmith_f_op_vec3_f32(sign(var_0.a))), global1.a.b, vec2<i32>(18194i, _wgslsmith_mod_i32(32170i, _wgslsmith_dot_vec2_i32(~vec2<i32>(46514i, -6340i), vec2<i32>(var_0.c.x, var_0.c.x)))), var_1.d);
    let var_3 = vec3<bool>(true, var_0.b, false);
    return 34711u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_div_vec3_i32(~(vec3<i32>(u_input.c.x, 1i, -1i) << (u_input.b.wyy % vec3<u32>(32u))) << (u_input.b.xww % vec3<u32>(32u)), vec3<i32>(u_input.c.x, func_1(), -(2147483647i & global1.c))) & abs(min(vec3<i32>(-1784i, -8894i, global1.c & -2147483647i), ~u_input.c.xzy));
    let var_2 = global1.a;
    global2 = Struct_1(vec2<u32>((select(4294967295u, u_input.a.x, false) & 41632u) ^ 46383u, global2.a.x), !var_2.b);
    var var_3 = firstLeadingBit(global1.a.a.x);
    let var_4 = u_input.c.zzz;
    var var_5 = !vec3<bool>(global2.b, global2.b, false);
    var var_6 = Struct_4(min(~func_2(u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b)), 1u, _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(ceil(global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec2_u32(global2.a, abs(var_2.a) | ~vec2<u32>(39774u, global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - global0.c) * -1129f), _wgslsmith_f_op_f32(round(var_6.c))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-811f - var_6.c) - _wgslsmith_f_op_f32(min(global0.c, 1124f))), _wgslsmith_f_op_f32(round(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_6.c)), var_6.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.c - 904f))), -241f)));
}

