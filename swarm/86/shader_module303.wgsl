struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<bool, 27> = array<bool, 27>(true, false, false, true, true, false, true, true, false, true, false, false, false, true, true, true, true, true, true, false, true, false, true, false, false, true, false);

var<private> global2: Struct_5;

var<private> global3: array<f32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_4(firstLeadingBit(1u), !all(!select(vec3<bool>(true, global2.d.a, true), vec3<bool>(true, global2.d.a, false), vec3<bool>(global2.d.a, false, global1[_wgslsmith_index_u32(0u, 27u)]))), Struct_2(vec4<u32>(57368u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(32690u, 25u)], global2.e.c.e.x, 18214u, 4294967295u), select(vec4<u32>(4294967295u, 1563u, global0[_wgslsmith_index_u32(global2.b.x, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), vec4<u32>(16130u, global2.e.c.e.x, 6758u, 0u), vec4<bool>(true, false, global2.e.a, false))), ~firstTrailingBit(52126u), 4294967295u ^ (6014u & arg_0)), Struct_1(global2.e.d.x, global2.e.b, vec2<f32>(-436f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.e.c.e.x, 19u)])), vec2<f32>(_wgslsmith_f_op_f32(abs(global2.d.c.d.x)), -2134f), global2.d.c.e), 38323u), -144f);
    global1 = array<bool, 27>();
    var var_1 = min(min(vec2<u32>(~_wgslsmith_add_u32(965u, global2.e.c.e.x), 1u), var_0.c.b.e.yx), vec2<u32>(~_wgslsmith_div_u32(var_0.a << (6850u % 32u), 1u), global0[_wgslsmith_index_u32(1u, 25u)]));
    global2 = Struct_5(u_input.a.x, abs(vec2<u32>(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(arg_0, 16032u)), 25u)], var_0.c.a.x)), ~159973u, Struct_3(global2.d.a, min(global2.e.b << (vec4<u32>(0u, 23700u, global2.b.x, arg_0) % vec4<u32>(32u)), countOneBits(var_0.c.b.b)) << (var_0.c.a % vec4<u32>(32u)), var_0.c.b, max(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, 0i, 1975i), global2.d.d)), select(max(global2.e.c.b, var_0.c.b.b), vec4<i32>(var_0.c.b.b.x, var_0.c.b.b.x, 49235i, 0i), !vec4<bool>(global1[_wgslsmith_index_u32(33763u, 27u)], false, true, false))), u_input.a.x), Struct_3(true, -_wgslsmith_div_vec4_i32(select(vec4<i32>(2147483647i, 7130i, u_input.a.x, 2147483647i), global2.e.c.b, true), -var_0.c.b.b), var_0.c.b, var_0.c.b.b, min(abs(20211i), ~(~global2.a))));
    var_1 = ~var_0.c.b.e.yy;
    return !(global2.d.a && !(!global2.e.a | global2.e.a));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(787f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) * 505f), func_3(~arg_1.b.x), global2.e.a, !(func_3(5426u) || arg_1.d.a));
    let var_1 = arg_0;
    var var_2 = Struct_1(~1i, reverseBits(firstTrailingBit(~vec4<i32>(arg_0.c.b.b.x, var_1.c.b.a, u_input.a.x, arg_0.c.b.b.x))) | max(vec4<i32>(-u_input.a.x, var_1.c.b.a | var_1.c.b.b.x, 2147483647i >> (var_1.a % 32u), arg_0.c.b.a), -vec4<i32>(var_1.c.b.a, var_1.c.b.b.x, u_input.a.x, var_1.c.b.a)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.d, arg_2.x, arg_1.d.a)), -937f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.d.c.d)) * vec2<f32>(277f, 969f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(abs(310f))), var_1.c.b.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), -2318f) + vec2<f32>(765f, _wgslsmith_f_op_f32(max(213f, -929f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d.c.d * _wgslsmith_f_op_vec2_f32(-arg_2)))), select(arg_0.c.a.xyw, global2.d.c.e | arg_0.c.a.yzx, true));
    let var_3 = Struct_2(arg_0.c.a, Struct_1(_wgslsmith_add_i32(1i, -2147483647i >> (~4294967295u % 32u)), arg_0.c.b.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.b.d.x, 1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(441f, arg_0.d) * vec2<f32>(global3[_wgslsmith_index_u32(arg_0.c.b.e.x, 19u)], arg_1.d.c.d.x)))), vec2<f32>(var_1.c.b.c.x, _wgslsmith_f_op_f32(exp2(arg_0.c.b.c.x))), ~(~var_2.e)), ~0u);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.d.c.c.x))));
    return !select(!var_0.yz, vec2<bool>(firstLeadingBit(global0[_wgslsmith_index_u32(global2.d.c.e.x, 25u)]) > _wgslsmith_add_u32(8743u, 15604u), !any(var_0)), arg_0.b);
}

fn func_1() -> Struct_4 {
    let var_0 = !select(!vec2<bool>(true, any(vec4<bool>(global2.e.a, false, global1[_wgslsmith_index_u32(global2.c, 27u)], false))), !select(func_2(Struct_4(global2.b.x, true, Struct_2(vec4<u32>(global2.d.c.e.x, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65664u, 25u)], 25u)], 1u), Struct_1(u_input.a.x, vec4<i32>(global2.a, global2.e.c.a, -1i, u_input.a.x), global2.d.c.c, global2.e.c.d, global2.e.c.e), global0[_wgslsmith_index_u32(global2.d.c.e.x, 25u)]), global2.d.c.c.x), Struct_5(37190i, vec2<u32>(global0[_wgslsmith_index_u32(51399u, 25u)], global2.e.c.e.x), 9111u, global2.e, Struct_3(false, global2.d.c.b, global2.e.c, global2.e.c.b, global2.e.d.x)), vec2<f32>(684f, global2.e.c.d.x)), !vec2<bool>(global2.e.a, false), vec2<bool>(false, global2.d.a)), !select(vec2<bool>(global1[_wgslsmith_index_u32(56127u, 27u)], false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(global2.d.a, false)), !vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 27u)])));
    global1 = array<bool, 27>();
    let var_1 = Struct_4(global2.b.x | ~(~global2.d.c.e.x), !(~firstLeadingBit(-2147483647i) >= -_wgslsmith_dot_vec2_i32(global2.e.c.b.zz, global2.d.d.yx)), Struct_2(~(vec4<u32>(global0[_wgslsmith_index_u32(global2.b.x, 25u)], 0u, 1u, global0[_wgslsmith_index_u32(78664u, 25u)]) ^ (vec4<u32>(4294967295u, global2.e.c.e.x, 1944u, global2.d.c.e.x) | vec4<u32>(28694u, 30423u, global2.e.c.e.x, global2.c))), Struct_1(-61843i, vec4<i32>(1i, global2.e.d.x, ~u_input.a.x, _wgslsmith_mod_i32(0i, -1835i)), _wgslsmith_f_op_vec2_f32(-global2.e.c.c), vec2<f32>(1188f, global3[_wgslsmith_index_u32(global2.b.x, 19u)]), vec3<u32>(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global2.b.x, 25u)], 25u)], global0[_wgslsmith_index_u32(~0u, 25u)], 12594u)), ~firstLeadingBit(_wgslsmith_mult_u32(global2.c, global0[_wgslsmith_index_u32(15458u, 25u)]))), 1530f);
    let var_2 = (~firstTrailingBit(~var_1.c.b.b.x) << (global0[_wgslsmith_index_u32(~(~50485u), 25u)] % 32u)) & 0i;
    global1 = array<bool, 27>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<bool, 27>();
    var var_1 = global0[_wgslsmith_index_u32(countOneBits(81774u), 25u)];
    var_1 = ~min(4036u, var_0.c.b.e.x);
    global2 = Struct_5(-947i, reverseBits(~max(vec2<u32>(global2.d.c.e.x, global2.b.x), vec2<u32>(0u, 0u))), ~global0[_wgslsmith_index_u32(min(1u, var_0.a) & var_0.a, 25u)] & ~(~_wgslsmith_mult_u32(var_0.c.b.e.x, global2.d.c.e.x)), global2.d, global2.d);
    var var_2 = vec4<i32>(~(~(~(-2147483647i))), -2147483647i << (global0[_wgslsmith_index_u32(4294967295u, 25u)] % 32u), 0i, countOneBits(1i)) ^ max(global2.d.c.b, var_0.c.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + global2.d.c.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f + var_0.d)), 779f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.e.c.c.x, _wgslsmith_f_op_f32(floor(-1157f)), _wgslsmith_div_f32(var_0.d, 184f), global3[_wgslsmith_index_u32(47543u, 19u)]))));
}

