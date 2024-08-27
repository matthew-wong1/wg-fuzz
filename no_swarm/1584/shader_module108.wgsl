struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(-965f, -140f, -1569f, 1000f, 977f, 2206f, 694f, -1589f, 497f, 589f, -678f, -561f, -670f, 173f, 268f, 265f, -156f, 2194f, -298f, -1000f, 1390f, -250f, 1243f, -1015f, 923f, -2078f, 1700f, -892f, -576f, 603f, -827f);

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: array<i32, 27> = array<i32, 27>(-40018i, -1i, 27845i, 1i, i32(-2147483648), 0i, 43705i, -42733i, 74901i, -1i, i32(-2147483648), 1i, 30637i, 11161i, i32(-2147483648), 58291i, -1367i, 2147483647i, -1i, -17567i, 1i, -51172i, 2147483647i, 5767i, -3601i, 26275i, -1i);

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: i32) -> vec4<f32> {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] * 655f)), _wgslsmith_f_op_f32(-377f - _wgslsmith_f_op_f32(-arg_1)), -1018f, _wgslsmith_f_op_f32(f32(-1f) * -925f)) - vec4<f32>(-1463f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(535f)), global3.x), 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, _wgslsmith_f_op_f32(select(arg_1, arg_1, true)), _wgslsmith_f_op_f32(arg_1 * arg_1), global3.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-arg_1), global0[_wgslsmith_index_u32(u_input.b.x << (global1.x % 32u), 31u)], _wgslsmith_f_op_f32(step(-531f, global3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-197f, 521f, -1000f, -904f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global3.x, global0[_wgslsmith_index_u32(global1.x, 31u)], 113f))))));
    let var_0 = !all(select(select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false)), arg_0 <= 20068u), vec4<bool>(true, true, false, false), vec4<bool>(all(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(global1.x, 31u)] <= arg_1, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)))));
    let var_1 = any(select(select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0, false, false)), false), vec3<bool>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 31u)]) != arg_1, var_0 | !var_0, var_0), select(!vec3<bool>(false, false, var_0), !select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, var_0)), !(!vec3<bool>(var_0, var_0, var_0)))));
    var var_2 = Struct_3(abs(vec4<i32>(abs(arg_2), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(14110u, 27u)], 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global1.x, 27u)], u_input.a.x), vec2<i32>(global2[_wgslsmith_index_u32(32297u, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)])), -1i)) ^ ~(-firstLeadingBit(u_input.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 0i | global2[_wgslsmith_index_u32(arg_0, 27u)]), -32205i), vec2<i32>(-1i) * -(~vec2<i32>(-1i, arg_2))));
    let var_3 = Struct_4(u_input.c.x, Struct_3(_wgslsmith_sub_vec4_i32(select(~var_2.a, u_input.c | u_input.c, true), ~u_input.c & abs(vec4<i32>(-10623i, arg_2, -1i, global2[_wgslsmith_index_u32(1u, 27u)]))), u_input.a), Struct_2(1766f), Struct_2(arg_1), Struct_2(-1140f));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global3.x)))), -1315f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1, global0[_wgslsmith_index_u32(u_input.b.x, 31u)]), var_3.d.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1821f * global3.x), _wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: Struct_3) -> i32 {
    let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(-919f + _wgslsmith_f_op_f32(f32(-1f) * -1151f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.x, 2314f, true)) + _wgslsmith_f_op_f32(global3.x + -308f))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 31u)]))) <= _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(global1.x, 31u)], false))));
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, -835f, global3.x, 1999f)) * vec4<f32>(-1347f, 1561f, global0[_wgslsmith_index_u32(1u, 31u)], 559f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], global3.x, 770f, global3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1000f, -177f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, -1000f, global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b.x, 32996u), 27u)]))));
    var var_1 = max(~abs(~(vec4<u32>(global1.x, global1.x, u_input.b.x, u_input.b.x) << (vec4<u32>(1u, 4294967295u, 0u, 1u) % vec4<u32>(32u)))), ~(vec4<u32>(24530u, _wgslsmith_mult_u32(4294967295u, global1.x), global1.x, 85605u) | vec4<u32>(u_input.b.x, 4294967295u, ~0u, 1u)));
    var_1 = firstLeadingBit(vec4<u32>(var_1.x | _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(46801u, 43579u, var_1.x, 37931u)), ~vec4<u32>(global1.x, global1.x, global1.x, global1.x)), 0u, ~_wgslsmith_clamp_u32(~0u, 1u, ~15456u), 0u));
    var var_2 = var_0.x;
    return ~(-_wgslsmith_dot_vec3_i32(~min(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], -41994i, -1878i), vec3<i32>(19803i, arg_0.a.x, arg_0.b.x)), vec3<i32>(global2[_wgslsmith_index_u32(16018u, 27u)] >> (0u % 32u), min(-1i, arg_0.b.x), _wgslsmith_div_i32(global2[_wgslsmith_index_u32(1u, 27u)], 0i))));
}

fn func_1(arg_0: u32) -> Struct_4 {
    return Struct_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(abs(global2[_wgslsmith_index_u32(1u, 27u)]), func_2(Struct_3(u_input.c, u_input.a))), firstTrailingBit(global2[_wgslsmith_index_u32(0u, 27u)]) ^ 2147483647i) >> (~1u % 32u), Struct_3(u_input.c, vec2<i32>(u_input.c.x, ~(-global2[_wgslsmith_index_u32(12831u, 27u)]))), Struct_2(_wgslsmith_f_op_f32(-global3.x)), Struct_2(global3.x), Struct_2(832f));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> StorageBuffer {
    var var_0 = vec2<i32>(-u_input.a.x, -16253i);
    let var_1 = ~firstLeadingBit(min(vec2<u32>(global1.x ^ u_input.b.x, 1u), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, global1.x), u_input.b.zx << (u_input.b.zz % vec2<u32>(32u)))));
    var var_2 = Struct_1(any(!vec2<bool>(true, all(vec4<bool>(true, true, false, true)))), select(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), false, any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(false, true), true))));
    global0 = array<f32, 31>();
    let var_3 = _wgslsmith_sub_i32(countOneBits(-(-4223i & u_input.c.x)), -12182i);
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, _wgslsmith_f_op_f32(global3.x + 490f), 59668i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1624f, arg_2.c.a, var_2.a))))), func_1(~_wgslsmith_mod_u32(global1.x, 4294967295u)).e.a, _wgslsmith_f_op_f32(1495f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(16330u, 67513u), u_input.b.x >> (3296u % 32u), firstLeadingBit(4294967295u)), ~(~global1.x), u_input.b.x), ~(~global1.x)), 27u)], 2147483647i & (_wgslsmith_div_i32(countOneBits(global2[_wgslsmith_index_u32(5999u, 27u)]), u_input.a.x) | 2147483647i), select(i32(-1i) * -6625i, -_wgslsmith_add_i32(-1i, global2[_wgslsmith_index_u32(1u, 27u)]) | 18218i, !(true | select(true, false, false))));
    var_0 = u_input.c.xwx;
    let x = u_input.a;
    s_output = func_4(1355f, global2[_wgslsmith_index_u32(23373u, 27u)], func_1(4294967295u));
}

