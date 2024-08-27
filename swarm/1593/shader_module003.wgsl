struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 1u;

var<private> global2: array<u32, 9> = array<u32, 9>(59122u, 24723u, 40830u, 56174u, 47943u, 54432u, 0u, 85044u, 1u);

var<private> global3: vec3<f32>;

var<private> global4: array<u32, 30> = array<u32, 30>(0u, 1u, 1u, 71827u, 4294967295u, 71551u, 0u, 4294967295u, 81337u, 44900u, 1u, 16384u, 48709u, 50282u, 0u, 0u, 1u, 8317u, 97087u, 21110u, 29850u, 1u, 1u, 4294967295u, 4294967295u, 49921u, 1u, 56404u, 232u, 46465u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(firstTrailingBit(abs(arg_1.zzz)) ^ arg_1.zzz, ~_wgslsmith_add_vec3_u32(~arg_1.zyw, countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(10613u, 30u)], 29198u, global4[_wgslsmith_index_u32(0u, 30u)]))), countOneBits(arg_1.xwz)), global3.x, vec3<bool>(true, true, true));
    global0 = var_0.c.x;
    global2 = array<u32, 9>();
    global0 = var_0.c.x;
    global4 = array<u32, 30>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -379f))) + global3.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    global1 = global4[_wgslsmith_index_u32(arg_0, 30u)] ^ (~global4[_wgslsmith_index_u32(arg_1.a.x >> (reverseBits(103u) % 32u), 30u)] ^ abs(~_wgslsmith_sub_u32(4294967295u, 4294967295u)));
    var var_0 = -127f;
    let var_1 = arg_2;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1143f + -1289f) * 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(330f + arg_3.b))), _wgslsmith_f_op_f32(func_3(-2147483647i, ~(~vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4654u, 30u)], 30u)], 7826u, arg_2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b - 756f)))) * _wgslsmith_f_op_f32(floor(778f))));
    global4 = array<u32, 30>();
    return arg_2.a.yy;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-(~arg_1.x), -1084i, arg_1.x, u_input.a), vec4<i32>(abs(arg_2), 30498i, abs(u_input.a), _wgslsmith_add_i32(116750i, arg_2)) | vec4<i32>(_wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.xz), i32(-1i) * -14550i, arg_2, _wgslsmith_div_i32(arg_2, u_input.a))), (_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_1.x, -22204i, arg_1.x, arg_1.x), vec4<i32>(arg_2, arg_2, -12086i, u_input.a), true), vec4<i32>(71237i, u_input.a, arg_2, arg_2), vec4<i32>(-1i, -18663i, u_input.a, arg_1.x)) >> (vec4<u32>(~arg_0.x, global4[_wgslsmith_index_u32(54938u, 30u)] ^ 4294967295u, global4[_wgslsmith_index_u32(min(0u, 41189u), 30u)], arg_0.x) % vec4<u32>(32u))) | ~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_1.x, 2147483647i, -2147483647i, -29211i), ~vec4<i32>(9738i, arg_1.x, -2147483647i, arg_1.x)));
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(global4[_wgslsmith_index_u32(arg_0.x, 30u)], arg_0.x, 0u))), vec3<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(global4[_wgslsmith_index_u32(9146u, 30u)]), 9u)], 21539u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, 1u, 15684u, 2980u)), vec4<u32>(global4[_wgslsmith_index_u32(27265u, 30u)], global2[_wgslsmith_index_u32(37886u, 9u)], arg_0.x, 27930u) & vec4<u32>(5739u, global4[_wgslsmith_index_u32(53840u, 30u)], global2[_wgslsmith_index_u32(arg_0.x, 9u)], 124132u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, global4[_wgslsmith_index_u32(0u, 30u)], arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(23348u, global2[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 30u)]), vec3<u32>(global4[_wgslsmith_index_u32(0u, 30u)], 52951u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(41879u, 30u)], 30u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.x, global2[_wgslsmith_index_u32(0u, 9u)]), vec3<u32>(44511u, arg_0.x, 27669u)))), _wgslsmith_f_op_f32(step(319f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.x - global3.x))), 1448f))), !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), !(-2305f > global3.x), true));
    let var_2 = var_1.b;
    var var_3 = var_1.c.x;
    var var_4 = Struct_1(~(~vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_0.x, arg_0.x) & _wgslsmith_add_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(var_1.a.x, 9u)], global4[_wgslsmith_index_u32(var_1.a.x, 30u)]), var_1.a)), var_1.b, vec3<bool>(false, true, global2[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(0u, 30u)]), 9u)] < arg_0.x));
    return var_4.c.x & true;
}

fn func_1() -> Struct_1 {
    global0 = func_4(_wgslsmith_mult_vec2_u32(~func_2(37332u, Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 50743u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 30u)]), global3.x, vec3<bool>(true, false, false)), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 30u)], 9u)], global2[_wgslsmith_index_u32(12738u, 9u)], global4[_wgslsmith_index_u32(58021u, 30u)]), 648f, vec3<bool>(true, true, true)), Struct_1(vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20506u, 9u)], 9u)], 30u)], 30u)]), -107f, vec3<bool>(true, true, true))) >> (vec2<u32>(5270u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 30u)] & 30073u) % vec2<u32>(32u)), ~vec2<u32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 30u)], 23277u) & select(max(vec2<u32>(0u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(46978u, 30u)])), ~vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 30u)], 9u)], 30u)], 30u)], 1u), true)), -(~vec3<i32>(2147483647i, u_input.a, u_input.a)) & -countOneBits(vec3<i32>(u_input.a, 55108i, 6808i)), -_wgslsmith_sub_i32(firstTrailingBit(~u_input.a), _wgslsmith_div_i32(~(-14980i), ~9033i)));
    global0 = false;
    return Struct_1(vec3<u32>(abs(global2[_wgslsmith_index_u32(~1u, 9u)]), _wgslsmith_div_u32(4294967295u, global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(0u, 30u)]), 30u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 9u)], 9u)], 9u)], 2165u, global4[_wgslsmith_index_u32(1u, 30u)]), vec4<u32>(47755u, 4294967295u, 0u, global2[_wgslsmith_index_u32(0u, 9u)])) << (4294967295u % 32u)), _wgslsmith_f_op_f32(-1650f + _wgslsmith_f_op_f32(-1f)), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !(!any(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(3435i, u_input.a, u_input.a, -1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -10767i), -vec4<i32>(u_input.a, u_input.a, u_input.a, -33774i))), reverseBits(u_input.a), 2147483647i << (var_0.a.x % 32u)));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(736f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(595f, var_0.b)))))) > global3.x;
    global0 = max(select(global4[_wgslsmith_index_u32(var_0.a.x, 30u)], 0u, any(select(var_0.c, var_0.c, var_0.c.x))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(~54596u), ~(~1u)), 30u)]) > _wgslsmith_div_u32(~min(global4[_wgslsmith_index_u32(0u, 30u)], reverseBits(global2[_wgslsmith_index_u32(var_0.a.x, 9u)])), var_0.a.x);
    let var_2 = var_0.a.zx;
    global4 = array<u32, 30>();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mod_u32(func_2(48888u, Struct_1(vec3<u32>(var_0.a.x, 0u, 4294967295u), -456f, vec3<bool>(false, var_0.c.x, var_3.c.x)), var_3, var_3).x, 0u)), -1i, _wgslsmith_div_u32(var_0.a.x, var_3.a.x));
}

