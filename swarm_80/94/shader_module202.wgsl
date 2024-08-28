struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> i32 {
    let var_0 = true;
    let var_1 = vec3<f32>(global0[_wgslsmith_index_u32(abs(4294967295u), 3u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(52878u, u_input.b.x)), 3u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1084f))), all(!(!vec4<bool>(var_0, var_0, true, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 3u)])) * global0[_wgslsmith_index_u32(1u, 3u)]));
    let var_2 = u_input.d.x << (select(u_input.a.x, u_input.b.x, all(select(vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(true, true, false), vec3<bool>(false, var_0, var_0), var_0), any(vec4<bool>(var_0, var_0, false, true))))) % 32u);
    var var_3 = u_input.a.xzz;
    let var_4 = Struct_2(max(632u, 810u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(trunc(-276f))), var_1.xz)), 531f, false);
    return _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(abs(u_input.d), ~(-u_input.d))), 2147483647i, u_input.d.x);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> u32 {
    let var_0 = any(!select(!vec3<bool>(false, arg_2.d, true), vec3<bool>(global0[_wgslsmith_index_u32(14884u, 3u)] <= 1138f, false, true), vec3<bool>(arg_2.e.x != global0[_wgslsmith_index_u32(4294967295u, 3u)], all(vec4<bool>(false, arg_2.d, true, arg_2.a)), 26897u <= u_input.a.x)));
    var var_1 = func_3();
    var var_2 = Struct_2(_wgslsmith_mod_u32(~arg_2.b | max(arg_0 | 4294967295u, ~67817u), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 11442u, 37439u, 0u), vec4<u32>(4294967295u, arg_0, 30639u, u_input.a.x)), u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_2.b, 3u)])), _wgslsmith_div_f32(813f, arg_2.c), true || var_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_2.b, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(426f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 3u)]) + 1000f)))), all(!vec3<bool>(var_0, var_0, false)) & false);
    var_2 = Struct_2(~_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(var_2.a, 1u, 0u, u_input.a.x)), ~select(vec4<u32>(16200u, var_2.a, var_2.a, 21344u), u_input.a, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_2.e)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.b - arg_2.e), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-422f, var_2.c), var_2.b))), _wgslsmith_f_op_vec2_f32(-arg_2.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(181f, -712f)))))), var_2.d);
    var var_3 = var_2.d;
    return 1087u;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~((~(~15823u) ^ _wgslsmith_mod_u32(~u_input.a.x, func_2(4294967295u, u_input.a.ywy, Struct_1(false, 1u, global0[_wgslsmith_index_u32(48536u, 3u)], arg_1, vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(15640u, 3u)])), u_input.d))) >> (_wgslsmith_mult_u32(42678u, 8393u) % 32u)), 3u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -328f, false)), 692f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(149f, global0[_wgslsmith_index_u32(39276u, 3u)])))))));
    var var_2 = (select(true, all(!vec4<bool>(arg_1, false, false, arg_1)), any(vec4<bool>(true, true, arg_1, arg_1)) | true) | (arg_1 == arg_1)) | !arg_1;
    var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)] + _wgslsmith_f_op_f32(var_1.x * 1123f));
    let var_3 = Struct_1(arg_1, firstLeadingBit(u_input.a.x) ^ ~(u_input.b.x << ((u_input.a.x | u_input.b.x) % 32u)), var_1.x, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), global0[_wgslsmith_index_u32(~u_input.a.x, 3u)])));
    return !select(vec2<bool>(var_3.a, var_3.d), select(!select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, var_3.a), select(vec2<bool>(true, true), vec2<bool>(var_3.a, arg_1), global0[_wgslsmith_index_u32(u_input.a.x, 3u)] < var_1.x)), var_3.d);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(true, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0 & 7565u, ~1u), 3u)] * global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, 127423u) ^ _wgslsmith_mult_u32(arg_1.x, 20646u), 3u)]) - _wgslsmith_f_op_f32(1555f - global0[_wgslsmith_index_u32(~arg_1.x, 3u)])), true, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(min(0u, arg_0), 3u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(arg_1.x, 3u)], global0[_wgslsmith_index_u32(43628u, 3u)]))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-451f, 156f))), vec2<f32>(-1111f, global0[_wgslsmith_index_u32(30044u, 3u)]))))));
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, 536f, 255f, 1510f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-142f, var_0.e.x, 717f, var_0.c), vec4<f32>(-1070f, 1000f, var_0.e.x, var_0.e.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(arg_1.x, 3u)], global0[_wgslsmith_index_u32(var_0.b, 3u)], -609f, 1000f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(631f, var_0.c, -1081f, -295f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(var_0.b, 3u)], 924f, var_0.e.x), vec4<bool>(var_0.a, arg_2, false, false))) - _wgslsmith_div_vec4_f32(vec4<f32>(636f, var_0.c, -404f, var_0.c), vec4<f32>(global0[_wgslsmith_index_u32(24475u, 3u)], var_0.c, global0[_wgslsmith_index_u32(0u, 3u)], 137f))))))));
    let var_2 = Struct_2(43137u >> (_wgslsmith_div_u32(~23448u | ~u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.x, arg_0), u_input.a.x)) % 32u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-977f, _wgslsmith_f_op_f32(round(-864f))), -1000f))), 477f, true);
    return Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(var_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-972f, var_1.x) * vec2<f32>(var_0.c, var_1.x)))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(291f * global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.a, 0u), 3u)]), _wgslsmith_f_op_f32(abs(var_0.c))))), all(!(!select(vec3<bool>(true, arg_2, var_0.a), vec3<bool>(false, false, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(12943u, u_input.b.yz, all(func_1(u_input.c.x, true)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), countOneBits(-56580i), ~(-1i)), vec3<i32>(8834i, _wgslsmith_dot_vec3_i32(vec3<i32>(-16151i, u_input.d.x, -2147483647i), u_input.d.zyx), u_input.c.x)));
    var var_1 = Struct_1(u_input.a.x <= u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, var_0.d), ~u_input.a), var_0.a & ~1u, var_0.a), _wgslsmith_clamp_u32(var_0.a, var_0.a, u_input.a.x | _wgslsmith_sub_u32(39374u, 0u))), 3u)], _wgslsmith_mult_u32(4294967295u, firstLeadingBit(var_0.a)) <= select(~var_0.a ^ (u_input.a.x | u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(23971u, var_0.a, u_input.a.x, u_input.a.x)) | ~u_input.a.x, all(vec3<bool>(var_0.d, var_0.d, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)))));
    let var_2 = Struct_1(!(!(44419i < u_input.c.x) && !var_0.d), 14616u, var_0.b.x, any(select(vec2<bool>(true, false), vec2<bool>(any(vec2<bool>(var_0.d, false)), var_1.a), select(select(vec2<bool>(false, var_0.d), vec2<bool>(true, var_0.d), var_1.a), select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.d, true), true), any(vec4<bool>(var_1.d, true, true, var_0.d))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1523f)), _wgslsmith_f_op_f32(f32(-1f) * -859f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 3u)] - -795f))), var_1.c));
    var var_3 = u_input.d.ywz;
    var var_4 = true;
    var_3 = firstTrailingBit(vec3<i32>(u_input.d.x, -u_input.d.x, 1i));
    var_3 = firstLeadingBit(_wgslsmith_mod_vec3_i32(firstLeadingBit(~(u_input.d.yww >> (u_input.b % vec3<u32>(32u)))), u_input.d.zyx >> (vec3<u32>(9247u, ~44827u, countOneBits(1u)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(u_input.b.xx, u_input.b.zx, ~_wgslsmith_mod_vec2_u32(u_input.b.yy, vec2<u32>(14771u, var_1.b))), vec2<u32>(~(~(var_2.b << (u_input.a.x % 32u))), reverseBits(abs(_wgslsmith_dot_vec3_u32(u_input.a.wwy, vec3<u32>(var_1.b, var_1.b, 4294967295u))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-311f + _wgslsmith_f_op_f32(var_0.c + global0[_wgslsmith_index_u32(4294967295u, 3u)])), 1037f)));
}

