struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: Struct_4,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_3(global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(global2.x - global2.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.b, 1086f), _wgslsmith_f_op_f32(arg_0.c.x * global1.d.b))), -363f, arg_0.b)));
    let var_1 = !all(select(vec4<bool>(any(vec2<bool>(global1.b, true)), true, false, global1.b), !(!vec4<bool>(global1.b, false, global1.b, true)), vec4<bool>(global1.e.x < global1.e.x, false, global1.b, true)));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -862f, global2.x, -727f))), vec4<f32>(global1.a.a.x, 511f, -675f, arg_0.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, global2.x, arg_0.c.x, var_0.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, -677f, arg_0.c.x, -1000f)))), global1.d.a.x), -969f, _wgslsmith_f_op_vec3_f32(global1.a.a.wyz - _wgslsmith_f_op_vec3_f32(-vec3<f32>(431f, global2.x, _wgslsmith_f_op_f32(select(-803f, global1.d.b, true))))));
    var var_2 = global2.x;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(firstLeadingBit(u_input.e)), ~(u_input.e & u_input.d.zy)), 6u)];
    return global1.e.x;
}

fn func_2() -> Struct_5 {
    let var_0 = -vec3<i32>(func_3(Struct_3(Struct_1(global1.a.a, global1.a.a.x), 1718f, _wgslsmith_f_op_vec3_f32(global2.wyx + global2.zzx))), -1i, global1.e.x);
    let var_1 = u_input.c.x;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global1.d.a)));
    global0 = array<vec3<bool>, 6>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.d.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1489f, -925f, 1000f, global2.x) - vec4<f32>(273f, global1.d.a.x, global1.a.b, -487f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1576f, -896f, 1293f, -1000f))))), global1.a.b), true, global2.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.d.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * 638f)), vec3<i32>(countOneBits(global1.e.x), global1.e.x & var_0.x, _wgslsmith_mod_i32(-1i, -2147483647i >> (0u % 32u)) << (u_input.d.x % 32u)));
    return Struct_5(global1.e.x << (~u_input.d.x % 32u), u_input.e.x, min(var_0, vec3<i32>(-1i) * -(~vec3<i32>(28050i, -12093i, var_0.x))), Struct_4(~(abs(vec4<u32>(u_input.d.x, u_input.e.x, 4294967295u, 84348u)) >> (vec4<u32>(u_input.b, var_1, 3432u, var_1) % vec4<u32>(32u))), global1.a, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, 0i, var_0.x), global1.e, vec3<i32>(u_input.a.x, global1.e.x, u_input.a.x)), vec3<i32>(0i, var_0.x, 21430i)), func_3(Struct_3(global1.d, -1012f, global1.a.a.xyz)), -firstLeadingBit(var_0.x), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -38707i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2094f, 1000f))), _wgslsmith_f_op_vec2_f32(select(global2.zy, vec2<f32>(-544f, 543f), vec2<bool>(global1.b, false))))), true), u_input.d.wwy);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: Struct_3) -> Struct_4 {
    var var_0 = global1.b;
    let var_1 = ~u_input.b;
    let var_2 = Struct_2(arg_0.d.b, true, -1942f, Struct_1(vec4<f32>(global1.d.a.x, _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_f32(arg_0.d.d.x + _wgslsmith_f_op_f32(max(arg_1.b, global1.a.b))), _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(arg_2.a.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.b, arg_1.a.x) + 908f))), -(~vec3<i32>(u_input.a.x, u_input.a.x, firstLeadingBit(u_input.a.x))));
    let var_3 = _wgslsmith_add_vec3_i32(abs(arg_0.c), vec3<i32>(-2147483647i, (_wgslsmith_dot_vec3_i32(vec3<i32>(-21543i, u_input.a.x, var_2.e.x), vec3<i32>(24627i, -1i, -1i)) ^ ~arg_0.a) ^ -1i, ~(-2147483647i)));
    let var_4 = all(!vec2<bool>(var_2.e.x == var_3.x, global1.b)) & !global1.b;
    return Struct_4(~(~u_input.d), arg_1, vec4<i32>(-4760i, -(i32(-1i) * -1i), ~var_2.e.x, arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1692f, -1132f))))), !((var_1 == 33599u) & all(select(vec4<bool>(true, true, false, var_2.b), vec4<bool>(false, arg_0.d.e, true, true), vec4<bool>(global1.b, true, true, global1.b)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> u32 {
    var var_0 = func_4(func_2(), global1.d, Struct_3(arg_1, global2.x, global2.xyx));
    var var_1 = -(abs(_wgslsmith_mod_i32(1i, global1.e.x)) >> (1u % 32u)) >= -firstTrailingBit(_wgslsmith_add_i32(arg_0.x, 1i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.a.ww + var_0.b.a.yw) * _wgslsmith_f_op_vec2_f32(-var_0.d))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(313f, 860f)), _wgslsmith_f_op_f32(round(var_0.d.x))) * _wgslsmith_f_op_vec2_f32(ceil(func_2().d.d)))));
    var var_3 = arg_2.x;
    global2 = _wgslsmith_f_op_vec4_f32(-global1.a.a);
    return ~arg_2.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    global0 = array<vec3<bool>, 6>();
    var var_0 = all(!vec3<bool>(arg_3.a.x > _wgslsmith_f_op_f32(-1000f * -936f), !(global1.b || global1.b), false));
    var var_1 = Struct_3(func_2().d.b, 880f, vec3<f32>(427f, _wgslsmith_f_op_f32(round(-1574f)), _wgslsmith_f_op_f32(-arg_3.b)));
    var var_2 = Struct_3(func_2().d.b, -1296f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 2085f) - arg_3.a.wyy))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b, arg_3.a.x, 609f) + vec3<f32>(var_1.b, -293f, arg_0.x))))))));
    let var_3 = func_4(Struct_5(~2147483647i, 4292u, firstTrailingBit(global1.e), Struct_4(vec4<u32>(_wgslsmith_mult_u32(arg_1.x, u_input.c.x), 1u, u_input.e.x, arg_2.x), global1.a, _wgslsmith_sub_vec4_i32(~vec4<i32>(15780i, global1.e.x, u_input.a.x, u_input.a.x), func_2().d.c), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_f_op_f32(f32(-1f) * -1217f)), all(select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(true, false)))), vec3<u32>(_wgslsmith_mod_u32(~arg_1.x, func_4(Struct_5(global1.e.x, 1u, global1.e, Struct_4(vec4<u32>(0u, 0u, 32059u, arg_1.x), arg_3, vec4<i32>(-19911i, -2147483647i, global1.e.x, -35292i), vec2<f32>(var_2.a.b, 668f), global1.b), vec3<u32>(arg_2.x, 43716u, 0u)), var_2.a, Struct_3(Struct_1(var_2.a.a, global2.x), 1000f, vec3<f32>(var_2.c.x, -487f, var_1.a.a.x))).a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_1.yx, arg_2.zx), arg_2.x), 1u)), arg_3, Struct_3(global1.a, arg_3.a.x, global1.d.a.wxx));
    return Struct_4(vec4<u32>(arg_2.x, _wgslsmith_add_u32(func_1(vec3<i32>(global1.e.x, var_3.c.x, u_input.a.x), Struct_1(arg_3.a, arg_0.x), vec2<u32>(18270u, u_input.c.x)) & (u_input.c.x >> (49616u % 32u)), var_3.a.x ^ ~29667u), _wgslsmith_mod_u32(arg_1.x, var_3.a.x), var_3.a.x), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_3.b.a.x, 168f), _wgslsmith_f_op_f32(step(1446f, var_3.d.x)), _wgslsmith_f_op_f32(1000f + 760f), global2.x), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1201f, 2565f, -694f, -678f), global1.d.a))), func_4(func_2(), func_2().d.b, Struct_3(Struct_1(var_1.a.a, 492f), func_4(Struct_5(-14193i, 4294967295u, global1.e, var_3, arg_1.zxy), Struct_1(var_3.b.a, arg_3.a.x), Struct_3(Struct_1(vec4<f32>(1266f, 1125f, global1.a.b, arg_3.a.x), global1.c), 763f, vec3<f32>(global2.x, var_1.b, arg_3.b))).d.x, global2.yzz)).d.x), _wgslsmith_mod_vec4_i32(select(var_3.c, -vec4<i32>(var_3.c.x, 7605i, 1i, -33882i), global1.b), ~vec4<i32>(-var_3.c.x, global1.e.x | u_input.a.x, ~global1.e.x, u_input.a.x >> (var_3.a.x % 32u))), vec2<f32>(arg_3.b, _wgslsmith_f_op_f32(-func_2().d.b.b)), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    global0 = array<vec3<bool>, 6>();
    let var_0 = func_5(vec4<f32>(global2.x, _wgslsmith_f_op_f32(exp2(global1.c)), global1.d.a.x, _wgslsmith_f_op_f32(sign(-1108f))), vec4<u32>(~func_1(global1.e, Struct_1(vec4<f32>(global2.x, 1329f, global2.x, global1.d.b), global2.x), u_input.c.xy), ~(~firstLeadingBit(21511u)), ~u_input.e.x, u_input.e.x << (_wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.c.x), ~u_input.b) % 32u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.d.x) >> (_wgslsmith_mod_u32(u_input.b, u_input.e.x) % 32u), ~(~1u), u_input.d.x) << (~u_input.d.wyz % vec3<u32>(32u)), func_2().d.b);
    let var_1 = vec3<u32>(0u, select(0u, ~min(~u_input.d.x, _wgslsmith_dot_vec4_u32(u_input.d, var_0.a)), var_0.e), ~select(var_0.a.x, var_0.a.x, func_4(Struct_5(0i, 0u, var_0.c.wxx, Struct_4(var_0.a, Struct_1(vec4<f32>(var_0.b.b, global1.a.a.x, 456f, 1387f), 1019f), vec4<i32>(global1.e.x, global1.e.x, global1.e.x, global1.e.x), var_0.b.a.zw, true), vec3<u32>(var_0.a.x, 79537u, 39230u)), Struct_1(vec4<f32>(1533f, 1831f, var_0.b.b, global1.d.b), global1.d.a.x), Struct_3(Struct_1(vec4<f32>(-276f, 210f, var_0.b.b, 1430f), -679f), var_0.b.b, vec3<f32>(1095f, global1.c, global2.x))).e & !global1.b));
    global0 = array<vec3<bool>, 6>();
    let var_2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(min(u_input.d.x, var_2), 91025u)), _wgslsmith_add_vec2_u32(~(~vec2<u32>(var_0.a.x, 1u)), _wgslsmith_clamp_vec2_u32(~u_input.d.xz, u_input.d.yx, vec2<u32>(var_2, var_0.a.x)))));
}

