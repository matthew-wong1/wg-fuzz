struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(-402f, 1154f, 373f, -170f, -520f, -460f, -467f, -173f, 1000f, 1211f, 562f, -1062f);

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 16946u);

var<private> global2: bool;

var<private> global3: array<Struct_2, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(select(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(18745i, u_input.a.x), u_input.a.yz)), -u_input.a.x, any(vec2<bool>(true, true))));
    global2 = ((_wgslsmith_add_i32(-24143i >> (u_input.c.x % 32u), u_input.b & u_input.b) ^ ~(-64677i)) <= (-14801i << (_wgslsmith_div_u32(~1u, ~global1.x) % 32u))) || !(global0[_wgslsmith_index_u32(u_input.c.x, 12u)] != 1013f);
    var var_1 = any(select(vec2<bool>(all(vec3<bool>(true, false, false)) | true, true), vec2<bool>(!any(vec3<bool>(true, true, false)), !(2147483647i == u_input.a.x)), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_2 = vec2<bool>(false, false);
    var var_3 = ~_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, ~global1.x), min(33494u, select(global1.x, u_input.c.x, var_2.x))) >> (_wgslsmith_mod_u32(u_input.c.x, ~(~4294967295u)) % 32u);
    return ~(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, u_input.c.x, global1.x), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x) >> (u_input.c.yyy % vec3<u32>(32u))), reverseBits(vec3<u32>(1u, u_input.c.x, global1.x))) >> (u_input.c.zwx % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    global0 = array<f32, 12>();
    var var_0 = vec2<u32>(~(0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 1u, u_input.c.x), u_input.c | u_input.c) % 32u)), 9420u);
    var var_1 = !vec4<bool>(false, arg_0, arg_0, true);
    var var_2 = func_3();
    var var_3 = Struct_1(!arg_1.xy, countOneBits(~select(u_input.a.xz << (u_input.c.xy % vec2<u32>(32u)), u_input.a.xy, select(vec2<bool>(false, arg_1.x), vec2<bool>(false, true), arg_0))), global0[_wgslsmith_index_u32(1079u, 12u)]);
    return var_3.b.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    var var_0 = -vec3<i32>(func_2(arg_0.x, select(arg_0.zwy, vec3<bool>(false, arg_0.x, false), all(vec2<bool>(arg_0.x, arg_0.x)))), u_input.b, abs(1i ^ -u_input.a.x));
    let var_1 = Struct_1(vec2<bool>(all(arg_0.www), arg_0.x), _wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 18012i), vec2<i32>(var_0.x, u_input.a.x))), abs(abs(vec2<i32>(-2364i, var_0.x)))) & abs(var_0.zx), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1299f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global0[_wgslsmith_index_u32(u_input.c.x, 12u)]) - _wgslsmith_f_op_f32(trunc(arg_2))))))));
    let var_2 = global1.x;
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstTrailingBit(abs(firstLeadingBit(global1.x))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 577u, u_input.c.x), u_input.c.yzw) >> (~83537u % 32u))), vec2<u32>(0u, global1.x));
    global0 = array<f32, 12>();
    return vec3<bool>(arg_0.x, select((true & (var_1.c == -1749f)) & all(vec3<bool>(false, false, true)), true, all(vec4<bool>(var_1.a.x, true, true, true))), var_1.a.x | all(vec4<bool>(!var_1.a.x, arg_0.x, true | var_1.a.x, false)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> bool {
    var var_0 = max(_wgslsmith_div_i32(u_input.b, abs(22001i)), _wgslsmith_div_i32(reverseBits(44175i), arg_2.b.x ^ arg_2.b.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-758f)) - _wgslsmith_f_op_f32(arg_2.c * 985f)))) - 920f);
    var var_2 = -477f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-803f - _wgslsmith_f_op_f32(floor(437f))));
    return arg_2.a.x && select(arg_2.a.x, arg_0.x, all(vec2<bool>(any(vec3<bool>(true, true, arg_2.a.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c.wz;
    var var_0 = _wgslsmith_add_i32(u_input.a.x, 0i);
    var_0 = -2147483647i;
    global0 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.x >> (126223u % 32u), 12u)] - 1690f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1291f * 796f))) - _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~(~u_input.c.x), 12u)]))));
    var var_2 = ~u_input.a.x;
    var var_3 = Struct_1(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 12u)] >= global0[_wgslsmith_index_u32(1u, 12u)], true), vec2<bool>(select(true, true, true), true), func_4(func_1(vec4<bool>(true, true, true, false), Struct_2(u_input.b), 2184f), ~vec2<u32>(global1.x, global1.x), Struct_1(vec2<bool>(true, true), vec2<i32>(21207i, -1i), 661f))), firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, -4497i), func_2(false, vec3<bool>(false, false, false))) & _wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(37635i, u_input.b))), -1188f);
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-828f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, global1.x), 12u)])), -1242f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(21570u, 12u)])) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.x, 12u)])))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~global1.x, 12u)])), global0[_wgslsmith_index_u32(0u, 12u)], all(var_3.a))), !func_1(!select(vec4<bool>(var_3.a.x, true, true, var_3.a.x), vec4<bool>(true, var_3.a.x, true, true), vec4<bool>(true, var_3.a.x, false, true)), Struct_2(~u_input.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.c)), -260f))).x));
    var var_5 = Struct_2(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(16382u, 12u)], var_3.c), -(~(~(-var_3.b.x))));
}

