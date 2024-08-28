struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<u32>(4294967295u, 17249u, 8703u), false, 0i, -702f), Struct_1(vec3<u32>(1u, 0u, 7638u), false, -40715i, -628f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), true, -9756i, 1211f), Struct_1(vec3<u32>(29599u, 0u, 1u), false, 1i, -688f));

var<private> global1: Struct_1;

var<private> global2: i32 = 1i;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(1u, 1u, 82820u), false, i32(-2147483648), -1000f);

var<private> global4: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    return vec3<u32>(u_input.a, 70927u, ~0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(abs(~_wgslsmith_mod_vec3_u32(~global3.a, ~global1.a)), true, select(-17316i, 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d + global3.d)) == _wgslsmith_f_op_f32(exp2(global3.d))), _wgslsmith_f_op_f32(global3.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - global1.d)) + global3.d)));
    global2 = -2147483647i;
    let var_1 = Struct_1(_wgslsmith_sub_vec3_u32(abs(abs(global3.a)), ~min(max(global1.a, vec3<u32>(var_0.a.x, global1.a.x, 45338u)), var_0.a)), true, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c, 0i, min(55925i, global3.c)), vec3<i32>(global3.c, global1.c, 0i)), 12514i), global1.d);
    var var_2 = _wgslsmith_f_op_f32(-global3.d);
    global1 = Struct_1(global1.a, any(!vec4<bool>(all(vec4<bool>(global1.b, true, false, global1.b)), var_0.b, !var_1.b, select(false, global3.b, global3.b))), min(var_1.c, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(30012i, 1i, 0i, 2147483647i)), vec4<i32>(0i, _wgslsmith_add_i32(-77519i, var_0.c), _wgslsmith_dot_vec2_i32(vec2<i32>(-13867i, 2147483647i), vec2<i32>(1818i, var_1.c)), 11646i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -688f) - global1.d));
    return var_0.d;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    let var_0 = -35057i;
    var var_1 = global4[_wgslsmith_index_u32(global1.a.x, 27u)];
    global0 = array<Struct_1, 4>();
    global1 = Struct_1(~_wgslsmith_mod_vec3_u32(global1.a, ~global3.a) | vec3<u32>(global3.a.x, global1.a.x, _wgslsmith_add_u32(global3.a.x, firstTrailingBit(17716u))), all(global4[_wgslsmith_index_u32(global1.a.x, 27u)]), abs(arg_0.x), _wgslsmith_f_op_f32(max(1126f, arg_2)));
    global0 = array<Struct_1, 4>();
    return ~((reverseBits(u_input.a) ^ 4294967295u) << (global3.a.x % 32u)) >> (global3.a.x % 32u);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    var var_0 = arg_0.x;
    global1 = Struct_1(vec3<u32>(u_input.a, _wgslsmith_mod_u32(4294967295u, global1.a.x >> (_wgslsmith_mult_u32(0u, 27864u) % 32u)), 4294967295u), !global3.b, abs(2147483647i), global1.d);
    var var_1 = select(!vec3<bool>(global3.d <= 869f, false, !global3.b && (true & global1.b)), !select(!select(vec3<bool>(global1.b, global3.b, false), vec3<bool>(false, true, true), false), vec3<bool>(global3.b, !global1.b, true), arg_0.x || arg_0.x), !vec3<bool>(!(global1.a.x == global3.a.x), !arg_0.x, true));
    var var_2 = vec3<i32>(firstTrailingBit(2147483647i), 4727i, global3.c) << (func_2(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(5494u, 1u, global1.a.x), global1.a ^ vec3<u32>(global1.a.x, global1.a.x, 1u)), global1.a | (global3.a | vec3<u32>(25799u, 1u, u_input.a))), !(!all(vec4<bool>(true, false, var_1.x, false))), global0[_wgslsmith_index_u32(0u, 4u)]) % vec3<u32>(32u));
    let var_3 = ~func_2(~abs(func_2(global3.a, arg_0.x, Struct_1(global3.a, true, 0i, global1.d))), !global3.b, global0[_wgslsmith_index_u32(4294967295u, 4u)]).x;
    return func_4(reverseBits(max(vec4<i32>(-global1.c, 38084i, global3.c, ~26912i), firstTrailingBit(~vec4<i32>(global3.c, 23878i, -1i, global3.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1274f, 551f, -427f, 270f), vec4<f32>(global3.d, global3.d, global3.d, 589f))), vec4<f32>(-1718f, -2055f, _wgslsmith_f_op_f32(func_3()), global3.d))), 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(func_1(vec2<bool>((13971u >= global1.a.x) | global1.b, false))), 4u)];
    global1 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 27570u, 1u, 77473u), vec4<u32>(1033u, global3.a.x, global1.a.x, global1.a.x)), ~var_0.a.x), var_0.a.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, global1.a.x), ~global3.a.x, _wgslsmith_sub_u32(u_input.a, global3.a.x))), select(reverseBits(global3.a ^ vec3<u32>(u_input.a, 56606u, 1u)), abs(var_0.a >> (vec3<u32>(7808u, u_input.a, 4294967295u) % vec3<u32>(32u))), !vec3<bool>(global1.b, global1.b, var_0.b))), all(!(!select(vec4<bool>(global1.b, true, var_0.b, false), vec4<bool>(false, var_0.b, false, global1.b), true))), _wgslsmith_clamp_i32(0i, u_input.b, _wgslsmith_add_i32(-(var_0.c | var_0.c), -_wgslsmith_sub_i32(1i, 0i))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-764f, global1.d))));
    global3 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(~1u)), 4u)];
    global2 = min(var_0.c, 1i);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a.x, global3.a.x << (countOneBits(abs(var_0.a.x) >> (~76890u % 32u)) % 32u)), 4u)];
    var_1 = Struct_1(~global1.a, _wgslsmith_f_op_f32(exp2(var_0.d)) >= var_1.d, ~(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(max(-1000f, global3.d)))) * global1.d));
    global1 = global0[_wgslsmith_index_u32(global1.a.x, 4u)];
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(global1.c, -1i, u_input.b), ~vec3<i32>(_wgslsmith_mult_i32(-27889i, 14778i), ~var_0.c, min(var_1.c, global3.c)), select(vec3<bool>(any(vec3<bool>(false, global3.b, false)), true, var_0.b), select(!vec3<bool>(global3.b, var_0.b, var_1.b), vec3<bool>(false, false, true), select(vec3<bool>(true, var_0.b, false), vec3<bool>(false, true, var_1.b), global1.b)), true)));
}

