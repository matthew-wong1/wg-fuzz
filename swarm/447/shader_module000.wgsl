struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<f32, 29> = array<f32, 29>(-560f, 1038f, 2148f, -462f, -824f, -1000f, 1050f, -1477f, 166f, -1893f, -831f, -305f, 134f, 1406f, -707f, 1641f, 106f, -314f, -1000f, -581f, 1236f, 944f, 492f, -1000f, 476f, 475f, 298f, -2052f, -298f);

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(i32(-2147483648), 31056i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, -22927i, i32(-2147483648)), vec4<i32>(-42854i, i32(-2147483648), -12133i, 40767i), vec4<i32>(0i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(0i, -1i, 2147483647i, 2047i), vec4<i32>(-13016i, -37070i, -33640i, 62451i), vec4<i32>(-9187i, 27324i, 1i, -1i), vec4<i32>(34980i, -1i, -39214i, 0i), vec4<i32>(1i, -28404i, 2147483647i, -21469i), vec4<i32>(i32(-2147483648), 1i, 41135i, 38536i), vec4<i32>(-21613i, 27451i, -41134i, 1i), vec4<i32>(58746i, -15616i, 2147483647i, 26618i), vec4<i32>(0i, 10502i, 36621i, 0i), vec4<i32>(-62014i, 1i, -1i, -2810i), vec4<i32>(2147483647i, 1i, -1i, -1i), vec4<i32>(0i, i32(-2147483648), 1i, -39396i), vec4<i32>(-32509i, 95036i, -15371i, 19787i), vec4<i32>(6968i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(i32(-2147483648), -4129i, 0i, -54322i), vec4<i32>(24817i, i32(-2147483648), 0i, -5287i), vec4<i32>(-32636i, -1i, 0i, -1i), vec4<i32>(2147483647i, -51114i, 1i, 16364i), vec4<i32>(43613i, 16623i, 50420i, -74975i), vec4<i32>(2147483647i, 2147483647i, 27346i, -1i), vec4<i32>(36519i, 0i, i32(-2147483648), -16338i), vec4<i32>(1i, 3896i, 21282i, i32(-2147483648)));

var<private> global3: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    return vec3<u32>(u_input.a & (min(~u_input.a, ~0u) & _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 9008u, 0u, 0u), vec4<u32>(86674u, u_input.a, u_input.a, u_input.a)), ~132087u)), min(~firstLeadingBit(0u), countOneBits(~(u_input.a | 1u))), ~(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(34896u, 9287u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), abs(u_input.a), arg_1.c.x)));
}

fn func_2(arg_0: i32) -> bool {
    global2 = array<vec4<i32>, 26>();
    global1 = array<f32, 29>();
    global2 = array<vec4<i32>, 26>();
    var var_0 = vec3<u32>(1u, abs(min(u_input.a, 28159u)), u_input.a) ^ abs(vec3<u32>(firstTrailingBit(4294967295u), 1u >> (u_input.a % 32u), select(45011u, 28852u, true)) & func_3(-23547i, global0[_wgslsmith_index_u32(~25449u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]));
    global0 = array<Struct_1, 6>();
    return !(select(!any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true)), true) | select(_wgslsmith_mod_i32(arg_0, arg_0) != -18989i, _wgslsmith_f_op_f32(floor(-522f)) == _wgslsmith_div_f32(273f, 234f), true));
}

fn func_1() -> i32 {
    let var_0 = select(select(vec4<bool>(!all(vec3<bool>(true, true, false)), true || func_2(-1i), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_2(1i), true, false), vec4<bool>(true, true, false, false)), true), select(select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, select(true, true, true), any(vec2<bool>(false, false))), vec4<bool>(false, !any(vec2<bool>(true, true)), true, any(vec2<bool>(true, true)))), true);
    let var_1 = var_0.yxx;
    global1 = array<f32, 29>();
    var var_2 = (abs(~vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(4294967295u, (u_input.a | 2718u) & 0u) % vec2<u32>(32u))) ^ func_3(_wgslsmith_div_i32(2896i, _wgslsmith_mult_i32(select(1i, 28468i, var_1.x), 0i)), global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 1587u) >> (vec4<u32>(35189u, 62330u, u_input.a, 1u) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, 19008u, u_input.a)), vec4<u32>(66693u & u_input.a, 0u, 1u, u_input.a)), 6u)]).xz;
    var var_3 = ~49506u;
    return -_wgslsmith_add_i32(-24047i, 2791i);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global3 = select(arg_2.c.x, select(arg_2.c.x, all(!arg_2.d), all(arg_2.c)) & false, false);
    global1 = array<f32, 29>();
    global2 = array<vec4<i32>, 26>();
    var var_0 = arg_2;
    global2 = array<vec4<i32>, 26>();
    return Struct_1(var_0.a, vec4<i32>(var_0.b.x, arg_1, abs(-arg_2.b.x >> (u_input.a % 32u)), (i32(-1i) * -2147483647i) >> (u_input.a % 32u)), select(var_0.c, var_0.c, false), select(!(!(!var_0.c.yz)), vec2<bool>(!all(arg_2.d), select(-2147483647i >= arg_1, true && arg_2.c.x, false)), vec2<bool>(!(u_input.a != u_input.a), var_0.c.x)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    var var_0 = ~(u_input.a & ~func_3(-arg_0.b.x, Struct_1(arg_0.a, vec4<i32>(arg_0.a, 1i, 2147483647i, arg_0.b.x), vec3<bool>(false, false, arg_1), vec2<bool>(false, false)), global0[_wgslsmith_index_u32(42632u, 6u)]).x);
    global3 = all(select(vec4<bool>(!arg_1, any(vec3<bool>(true, false, false)), true, false), !vec4<bool>(false, false, any(vec2<bool>(arg_1, true)), true), vec4<bool>(arg_0.d.x, arg_0.d.x, !any(arg_0.c), func_2(arg_0.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 29u)])));
    var var_2 = func_4(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 4294967295u, u_input.a, 0u)), abs(abs(vec4<u32>(19991u, u_input.a, u_input.a, 4294967295u)))), 29u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~u_input.a, 29u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 29u)] - global1[_wgslsmith_index_u32(u_input.a, 29u)])))), func_1(), func_4(var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a, arg_0.a), vec2<i32>(arg_0.a, 1i)), func_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 29u)], 395f)))), arg_0.b.x, Struct_1(arg_0.a & arg_0.b.x, vec4<i32>(0i, arg_0.b.x, arg_0.b.x, arg_0.a), !arg_0.c, !arg_0.c.xz))));
    var var_3 = arg_0.a;
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1000f - -611f)) + _wgslsmith_f_op_f32(1012f + 2043f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1229f, 445f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(109738u, 30259u)) | ~u_input.a), max(0u & u_input.a, firstTrailingBit(53u)), firstLeadingBit(~u_input.a), u_input.a), vec4<u32>(_wgslsmith_sub_u32(1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(12180u, u_input.a)) % 32u), ~0u), _wgslsmith_mod_u32(~1u, 109593u), u_input.a, ~_wgslsmith_sub_u32(~u_input.a, ~89729u))), 6u)];
    var var_1 = Struct_1(-1i & var_0.b.x, (-var_0.b | _wgslsmith_div_vec4_i32(-global2[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_mod_vec4_i32(vec4<i32>(-38787i, 2147483647i, 37740i, -20599i), vec4<i32>(var_0.a, 30002i, -72774i, var_0.b.x)))) | select(countOneBits(-vec4<i32>(-1i, 0i, var_0.b.x, var_0.b.x)), -(~global2[_wgslsmith_index_u32(u_input.a, 26u)]), false), var_0.c, vec2<bool>(true, true));
    let var_2 = Struct_1(var_0.a, vec4<i32>(var_1.a, 10429i, 68904i, var_1.b.x), var_1.c, vec2<bool>(true, true));
    let var_3 = (-1i << (u_input.a % 32u)) & ((~_wgslsmith_mult_i32(-15297i, var_1.a) >> (u_input.a % 32u)) & min(-44637i, 44162i));
    let var_4 = var_2;
    let var_5 = Struct_1(var_0.a, -var_0.b, select(var_2.c, select(var_0.c, var_2.c, var_2.c), var_4.c.x), !var_2.c.xy);
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_f_op_f32(min(204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 29u)]))))), _wgslsmith_mod_i32(-abs(-1i), 1i), Struct_1(func_1(), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(28903i, 0i, 31515i), vec3<i32>(-2147483647i, var_0.a, var_0.b.x)), 49218i, -var_1.a, reverseBits(0i)), var_5.c, !select(vec2<bool>(var_5.d.x, var_0.d.x), vec2<bool>(true, var_4.d.x), var_5.d.x))), true);
}

