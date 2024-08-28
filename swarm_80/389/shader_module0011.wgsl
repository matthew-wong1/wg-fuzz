struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<bool, 13>;

var<private> global1: array<f32, 6>;

var<private> global2: array<u32, 2>;

var<private> global3: i32 = 4924i;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(965f + 1000f) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(30283u, 6u)])))));
    global2 = array<u32, 2>();
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(~_wgslsmith_mod_i32(u_input.c, ~u_input.a), _wgslsmith_mult_i32(-abs(u_input.c), -22854i), ~(-2147483647i)), u_input.c & 9120i, _wgslsmith_mult_i32(~max(~u_input.a, 1i), _wgslsmith_sub_i32(u_input.c, ~firstTrailingBit(65360i))), firstTrailingBit(60850i));
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    return var_1.wzz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(217f - _wgslsmith_f_op_f32(-1530f * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, global1[_wgslsmith_index_u32(18506u, 6u)])))) - _wgslsmith_f_op_f32(round(-279f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(68027u, 2u)], 2u)], 6u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 2u)], 6u)]) - arg_1.xz) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.x, -1556f))))) * _wgslsmith_f_op_vec2_f32(-arg_1.xx)), !select(vec2<bool>(global0[_wgslsmith_index_u32(7316u, 13u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(8242u, 13u)], true))), vec2<bool>(global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.b.x, true), 13u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 23438u), 13u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 13u)] || true, arg_2 >= arg_0.x))));
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    var var_1 = vec3<u32>(~6429u >> (_wgslsmith_clamp_u32(4294967295u, 1878u << (0u % 32u), u_input.b.x) % 32u), abs(_wgslsmith_div_u32(4294967295u, 1u >> (u_input.b.x % 32u))), u_input.b.x) >> (abs(vec3<u32>(global2[_wgslsmith_index_u32(45517u, 2u)], ~global2[_wgslsmith_index_u32(1u, 2u)], abs(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)))) % vec3<u32>(32u));
    var var_2 = false | (false == select(global0[_wgslsmith_index_u32(~29142u, 13u)] | (u_input.a != 32451i), _wgslsmith_mod_i32(arg_2, -2147483647i) == min(arg_2, arg_2), false));
    return ~(_wgslsmith_div_vec3_u32(u_input.b, u_input.b) << (u_input.b % vec3<u32>(32u)));
}

fn func_2() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(~u_input.b.x, 6u)], vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], -791f, -1137f), vec4<bool>(true, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], true)) & false, !all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6889u, 2u)], 13u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 2u)], 13u)], false)), any(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34013u, 2u)], 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]))), Struct_1(~vec4<i32>(-1i, 2147483647i, u_input.a & 1i, _wgslsmith_mult_i32(u_input.a, u_input.c)), _wgslsmith_f_op_f32(290f - global1[_wgslsmith_index_u32(abs(firstLeadingBit(0u)), 6u)]), vec2<bool>(true, false), func_4(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 25755i, 1i), func_3(u_input.b), vec3<i32>(u_input.c, u_input.c, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(245f + -994f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16199u, 6u)]), global1[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_mod_i32(-u_input.c, u_input.a ^ 1i))), Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.c, u_input.a, 1i, u_input.c)), abs(abs(vec4<i32>(u_input.a, u_input.c, 2147483647i, 27169i)))), _wgslsmith_f_op_f32(872f * _wgslsmith_f_op_f32(f32(-1f) * -539f)), vec2<bool>(!global0[_wgslsmith_index_u32(10666u, 13u)], true), _wgslsmith_add_vec3_u32(~u_input.b | min(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b), countOneBits(max(vec3<u32>(12425u, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], 1u), u_input.b)))));
    var var_2 = var_1.c;
    var_2 = select(!var_1.c, select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 13u)], var_2.x, global0[_wgslsmith_index_u32(1u, 13u)]), select(!var_1.c, !vec4<bool>(true, var_1.d.c.x, false, false), var_2.x), true), var_1.c, global0[_wgslsmith_index_u32(abs(4294967295u), 13u)]), vec4<bool>(var_2.x, all(vec3<bool>(!var_2.x, all(vec2<bool>(var_2.x, var_2.x)), true)), true, any(var_1.c)));
    var var_3 = !var_1.c;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~(4294967295u ^ (u_input.b.x >> (1u % 32u))), 6u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) + var_1.d.b)), global1[_wgslsmith_index_u32(0u >> (~func_4(vec3<i32>(var_1.e.a.x, 1i, u_input.c), vec3<f32>(var_1.e.b, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], var_1.b.x), -1i).x % 32u), 6u)]) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.e.b * global1[_wgslsmith_index_u32(8547u, 6u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b) - 229f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~min(1u, 4294967295u), 6u)])));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<bool>) -> bool {
    let var_0 = vec2<i32>(-3069i, max(~(-u_input.a) << (37718u % 32u), u_input.a | arg_0.x));
    global1 = array<f32, 6>();
    global0 = array<bool, 13>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-699f + global1[_wgslsmith_index_u32(~1u, 6u)]), _wgslsmith_f_op_vec3_f32(func_2()), select(select(select(arg_2, select(arg_2, vec4<bool>(false, arg_2.x, global0[_wgslsmith_index_u32(22303u, 13u)], true), false), select(arg_2, arg_2, global0[_wgslsmith_index_u32(62771u, 13u)])), arg_2, arg_2), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], !(global0[_wgslsmith_index_u32(0u, 13u)] && false), _wgslsmith_f_op_f32(max(-1078f, global1[_wgslsmith_index_u32(u_input.b.x, 6u)])) != _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.b.x, 6u)])), true), vec4<bool>(true, !global0[_wgslsmith_index_u32(9626u, 13u)] | (u_input.b.x == arg_1), arg_2.x, true)), Struct_1(vec4<i32>(1i, max(~11435i, var_0.x), ~arg_0.x, _wgslsmith_mod_i32(abs(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 10182i, -24402i, arg_0.x), vec4<i32>(u_input.a, arg_0.x, var_0.x, var_0.x)))), global1[_wgslsmith_index_u32(u_input.b.x, 6u)], vec2<bool>(true, !(!arg_2.x)), vec3<u32>(countOneBits(abs(22661u)), arg_1, select(arg_1, global2[_wgslsmith_index_u32(~15418u, 2u)], arg_2.x | false))), Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, u_input.a, 18410i, var_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, 19358i, 24746i, 2147483647i), vec4<i32>(-2147483647i, u_input.a, u_input.c, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-244f)) * 357f), !vec2<bool>(false, all(vec3<bool>(true, global0[_wgslsmith_index_u32(82897u, 13u)], arg_2.x))), select(~u_input.b, vec3<u32>(arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 2u)], arg_1) ^ ~u_input.b, any(arg_2.xw))));
    global1 = array<f32, 6>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (select(~u_input.b.x, 4294967295u, func_1(vec3<i32>(u_input.c, 2147483647i, 1i) ^ vec3<i32>(-2147483647i, u_input.c, u_input.a), ~83450u, !vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]))) ^ firstLeadingBit(u_input.b.x)) | ~reverseBits(47130u);
    let var_1 = vec2<i32>(~(_wgslsmith_sub_i32(abs(u_input.a), u_input.c) << (_wgslsmith_mod_u32(countOneBits(390u), global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 2u)]) % 32u)), 84925i);
    var var_2 = firstTrailingBit(reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, -10404i, var_1.x, var_1.x), firstTrailingBit(vec4<i32>(var_1.x, var_1.x, 0i, 0i))), vec4<i32>(var_1.x, -58090i, 70570i, var_1.x) ^ min(vec4<i32>(-1i, var_1.x, -65700i, 0i), vec4<i32>(u_input.c, -233i, u_input.a, u_input.a)), vec4<i32>(~u_input.a, -9670i, u_input.c, _wgslsmith_sub_i32(0i, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), 1064f) - 1050f));
}

