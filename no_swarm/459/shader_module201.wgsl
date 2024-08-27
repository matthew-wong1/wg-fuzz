struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: u32 = 42237u;

var<private> global2: array<u32, 11> = array<u32, 11>(4294967295u, 3692u, 0u, 1u, 30374u, 21706u, 92975u, 4294967295u, 8245u, 1u, 1u);

var<private> global3: array<vec4<u32>, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    global1 = _wgslsmith_mod_u32(1u, ~1u << (~arg_3.a % 32u)) >> (arg_2.d.d % 32u);
    return select(select(!(!(!vec2<bool>(arg_2.b, false))), vec2<bool>(arg_2.b, false), select(!select(vec2<bool>(false, false), vec2<bool>(arg_2.b, arg_2.b), arg_2.b), vec2<bool>(1u < arg_2.d.d, arg_3.c.x == -977f), select(select(vec2<bool>(true, false), vec2<bool>(true, arg_2.b), vec2<bool>(arg_2.b, false)), select(vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, false), vec2<bool>(arg_2.b, true)), global2[_wgslsmith_index_u32(20047u, 11u)] != 31904u))), !select(vec2<bool>(true, false), vec2<bool>(any(vec4<bool>(arg_2.b, arg_2.b, false, arg_2.b)), true), arg_2.b == false), select(vec2<bool>(!select(arg_2.b, arg_2.b, false), any(vec3<bool>(true, true, true))), vec2<bool>(true, arg_2.b), arg_2.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> bool {
    global3 = array<vec4<u32>, 19>();
    let var_0 = vec4<bool>(true, arg_0.x, arg_0.x & arg_0.x, true);
    var var_1 = global0.x;
    var var_2 = Struct_1(~24079u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1.a.yy * vec2<f32>(_wgslsmith_f_op_f32(abs(-2033f)), _wgslsmith_f_op_f32(min(arg_1.a.x, 865f)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.a.x), 540f)), _wgslsmith_f_op_f32(-1778f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2297f)))), 60000u, arg_1.a);
    global3 = array<vec4<u32>, 19>();
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = reverseBits(firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, _wgslsmith_clamp_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(60750u, 11u)], 11u)], ~1u, ~global2[_wgslsmith_index_u32(38983u, 11u)])), 11u)]));
    var_0 = countOneBits(countOneBits(_wgslsmith_dot_vec4_u32(select(global3[_wgslsmith_index_u32(124837u, 19u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10830u, 11u)], 19u)], vec4<bool>(arg_0.x, false, arg_0.x, true)), max(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63441u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(19555u, 11u)], 63089u), global3[_wgslsmith_index_u32(105147u, 19u)])) | 1u));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -604f, -486f, 1135f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 501f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + global0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(floor(-923f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1088f)) - global0.x))));
    let var_2 = !func_4(!select(func_3(377f, Struct_3(vec4<f32>(-1000f, var_1.a.x, global0.x, var_1.a.x)), Struct_2(global3[_wgslsmith_index_u32(78350u, 19u)], false, var_1.a.x, Struct_1(26212u, var_1.a.yz, vec2<f32>(859f, 670f), global2[_wgslsmith_index_u32(50400u, 11u)], vec4<f32>(2408f, global0.x, 1000f, -1000f)), u_input.a.zzw), Struct_1(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], global0.zz, var_1.a.zy, global2[_wgslsmith_index_u32(77041u, 11u)], vec4<f32>(var_1.a.x, -1890f, -959f, -961f))), !vec2<bool>(arg_0.x, arg_0.x), arg_0.x), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -365f, var_1.a.x, global0.x))), var_1.a)));
    global3 = array<vec4<u32>, 19>();
    return Struct_2(_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18021u, 11u)], 11u)], 1u, global2[_wgslsmith_index_u32(65228u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(53450u, 11u)], 11u)], 11u)], 11u)], 11u)]), _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 19u)]), _wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global2[_wgslsmith_index_u32(44322u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 1u), global3[_wgslsmith_index_u32(20362u, 19u)])), ~vec4<u32>(firstLeadingBit(534u), _wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(42380u, 11u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)]), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)]), 1u)), arg_1.x, 312f, Struct_1(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(17737u, 11u)], 11u)], 11u)], 11u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, -1121f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-826f))), 1021f), _wgslsmith_div_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], 11u)], global2[_wgslsmith_index_u32(47633u, 11u)]) | reverseBits(global2[_wgslsmith_index_u32(4547u, 11u)] & 4294967295u), _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.a))))), ~vec3<i32>(i32(-1i) * -u_input.a.x, -55404i, 1i));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> i32 {
    var var_0 = ~u_input.a.xxz;
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(1u, func_2(vec3<bool>(arg_0.b, arg_2, arg_2), vec2<bool>(arg_2, true)).a.x), 1u), 4294967295u);
    var var_2 = arg_0;
    let var_3 = func_2(!(!(!(!vec3<bool>(false, arg_2, false)))), select(!(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_0.b, false), false)), select(!select(vec2<bool>(arg_2, arg_2), vec2<bool>(var_2.b, false), vec2<bool>(arg_0.b, arg_2)), select(vec2<bool>(true, arg_2), vec2<bool>(true, true), var_2.b), !(arg_0.e.x != var_0.x)), _wgslsmith_sub_u32(~global2[_wgslsmith_index_u32(28926u, 11u)], arg_0.a.x) <= reverseBits(_wgslsmith_dot_vec2_u32(arg_0.a.wy, arg_0.a.xx))));
    var var_4 = vec4<bool>(true, 67607u >= _wgslsmith_div_u32(42949u, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(var_1, 11u)] & 39436u, ~global2[_wgslsmith_index_u32(4294967295u, 11u)])), true, true);
    return 1i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: i32) -> vec3<f32> {
    var var_0 = (select(u_input.a.x, -1i, (arg_0.x & arg_0.x) || all(vec2<bool>(true, true))) ^ arg_2) & func_5(func_2(arg_0.yzw, !vec2<bool>(true, arg_0.x)), abs(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(arg_3, arg_2) >> (arg_1.zx % vec2<u32>(32u)))), false, vec2<i32>(-18353i, -1i));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, global0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, global0.x)))), -847f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1827f + global0.x) - global0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * -417f), global0.x)))) * -213f));
    let var_1 = arg_0.x != !all(arg_0.yyz);
    var_0 = _wgslsmith_add_i32(24733i, -27785i);
    var_0 = arg_3;
    return vec3<f32>(-1000f, -260f, 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 11>();
    let var_0 = firstTrailingBit(~(~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.zyx, u_input.a.xyy), u_input.a.x)));
    global2 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<bool>(false, true, true, false), vec4<u32>(0u, 44301u, global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(15909u, 11u)]), 16243i, -10269i)) + global0.wyw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-158f, 787f, global0.x))), vec3<bool>(true, true, true)))), _wgslsmith_clamp_vec4_u32(~firstTrailingBit(firstLeadingBit(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9664u, 11u)], 11u)], 19u)])), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(abs(4294967295u), 11u)], global2[_wgslsmith_index_u32(0u, 11u)] ^ global2[_wgslsmith_index_u32(4294967295u, 11u)]), 11u)], 19u)], ~(vec4<u32>(74716u, 107186u, global2[_wgslsmith_index_u32(25521u, 11u)], 1u) >> (vec4<u32>(15415u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 4294967295u) % vec4<u32>(32u)))));
}

