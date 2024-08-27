struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: u32;

var<private> global2: array<u32, 20> = array<u32, 20>(1u, 51422u, 4294967295u, 41991u, 35645u, 9928u, 15383u, 0u, 0u, 0u, 49326u, 4294967295u, 632u, 76327u, 14239u, 19887u, 69870u, 12525u, 58850u, 4294967295u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = all(select(vec4<bool>(false, !arg_1.c.x, _wgslsmith_f_op_f32(max(arg_0.d, 1004f)) > _wgslsmith_f_op_f32(max(1000f, arg_0.d)), true), !(!vec4<bool>(true, arg_0.c.x, false, true)), vec4<bool>(false, (arg_0.d >= 262f) || arg_0.c.x, all(!vec4<bool>(true, arg_0.c.x, arg_0.c.x, false)), true)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + arg_1.d) + -399f) == -1000f;
    var var_2 = vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(select(arg_0.d, 130f, arg_1.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) * _wgslsmith_f_op_f32(sign(1142f)))) - -450f), -397f, 214f);
    let var_3 = -824f;
    global1 = global2[_wgslsmith_index_u32(arg_0.b.x, 20u)];
    return arg_0.a;
}

fn func_2() -> bool {
    let var_0 = 33446u;
    let var_1 = select(vec4<i32>(u_input.a, -(~u_input.a), -func_3(global0[_wgslsmith_index_u32(var_0, 9u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.b, 20u)], 9u)]), -countOneBits(0i)), vec4<i32>(-26633i, u_input.a, select(countOneBits(0i), 26694i, true), func_3(Struct_1(u_input.a, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 20u)], 20u)], u_input.c, u_input.b) | vec3<u32>(4294967295u, 7261u, 1u), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_f_op_f32(max(1458f, 111f))), global0[_wgslsmith_index_u32(var_0, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-473f - 1000f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1518f))));
    let var_2 = Struct_1(~func_3(global0[_wgslsmith_index_u32(u_input.c ^ 758u, 9u)], global0[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)]), abs(~(~vec3<u32>(global2[_wgslsmith_index_u32(94697u, 20u)], u_input.b, global2[_wgslsmith_index_u32(31306u, 20u)]))) << (firstTrailingBit(abs(~vec3<u32>(var_0, u_input.b, 1768u))) % vec3<u32>(32u)), !vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true), -145f);
    var var_3 = -select(var_1, var_1, vec4<bool>(false, all(vec3<bool>(false, var_2.c.x, var_2.c.x)), any(vec4<bool>(var_2.c.x, true, true, true)), true)) | vec4<i32>(-45959i, max(_wgslsmith_clamp_i32(min(61250i, 0i), -var_2.a, countOneBits(10501i)), ~select(var_2.a, -20632i, true)), 2147483647i, -76629i);
    var_3 = var_1;
    return any(vec4<bool>(true, all(!vec3<bool>(false, var_2.c.x, var_2.c.x)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, var_2.c.x, false), 80687u == var_0)), (var_2.b.x ^ ~var_0) > (_wgslsmith_dot_vec2_u32(var_2.b.zy, var_2.b.yx) >> (~0u % 32u))));
}

fn func_1() -> vec3<u32> {
    global2 = array<u32, 20>();
    let var_0 = countOneBits(min(~(~(~vec2<u32>(4294967295u, 27257u))), ~vec2<u32>(8746u, ~u_input.b)));
    let var_1 = !func_2();
    var var_2 = global0[_wgslsmith_index_u32(u_input.c, 9u)];
    var var_3 = -6947i;
    return abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.c >> (u_input.b % 32u), countOneBits(var_0.x), 994u << (var_0.x % 32u)) & var_2.b.x, ~(~global2[_wgslsmith_index_u32(select(41697u, u_input.b, var_2.c.x), 20u)]), ~_wgslsmith_mult_u32(~u_input.c, 4294967295u ^ var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, false & any(vec2<bool>(true, true)), false);
    let var_1 = abs(_wgslsmith_sub_vec3_u32(func_1(), reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(9767u, 4558u, 64386u), vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 20u)], 4294967295u)))));
    let var_2 = 934f;
    global1 = reverseBits(_wgslsmith_dot_vec4_u32(select(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_1.x, 4456u, 2646u), vec4<u32>(5022u, u_input.b, 80551u, u_input.c))), vec4<u32>(11868u, var_1.x, u_input.c, var_1.x) << (~vec4<u32>(var_1.x, 0u, 55099u, u_input.b) % vec4<u32>(32u)), true), ~(abs(vec4<u32>(var_1.x, u_input.c, 1u, 0u)) | vec4<u32>(107015u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], u_input.c, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)))), select(-2147483647i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-32313i, 0i, 0i), vec3<i32>(-23725i, -1i, u_input.a)), ~min(vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(15427i, -2147483647i, 1i))), any(vec3<bool>(false, var_0.x, true))), _wgslsmith_mod_u32(~(~u_input.b), ~_wgslsmith_mult_u32(var_1.x | var_1.x, select(13857u, 0u, true))));
}

