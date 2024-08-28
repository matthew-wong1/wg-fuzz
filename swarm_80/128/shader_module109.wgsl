struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(31122u, 23859u, 0u), vec3<u32>(1u, 4294967295u, 74088u), vec3<u32>(28956u, 46203u, 1u), vec3<u32>(4294967295u, 0u, 27136u), vec3<u32>(20457u, 0u, 67972u), vec3<u32>(49862u, 28444u, 15884u), vec3<u32>(1u, 0u, 1u), vec3<u32>(1u, 48477u, 4294967295u));

var<private> global1: array<f32, 11> = array<f32, 11>(1350f, 247f, -613f, 1349f, -1570f, -1144f, 1000f, -192f, 798f, 480f, -304f);

var<private> global2: Struct_1 = Struct_1(54038i, vec4<f32>(-520f, -625f, -192f, -1541f));

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_u32(abs(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(88359u, 4294967295u, 4294967295u), global0[_wgslsmith_index_u32(145965u, 8u)], global0[_wgslsmith_index_u32(12427u, 8u)]), global0[_wgslsmith_index_u32(~96333u, 8u)]))), ~1u);
    let var_1 = false;
    var var_2 = global1[_wgslsmith_index_u32(0u, 11u)];
    var var_3 = select(!select(!(!vec3<bool>(var_1, true, false)), !select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, false, false)), vec3<bool>(false, var_1, var_1)), !select(select(!vec3<bool>(false, true, var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, true, false), vec3<bool>(var_1, true, false)), vec3<bool>(var_1, var_1, false)), select(!vec3<bool>(false, var_1, var_1), select(vec3<bool>(false, true, var_1), vec3<bool>(var_1, true, true), true), !vec3<bool>(false, var_1, var_1)), all(vec3<bool>(var_1, var_1, true))), select(select(!select(vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, true), var_1), select(select(vec3<bool>(false, var_1, false), vec3<bool>(false, var_1, var_1), false), vec3<bool>(true, var_1, true), select(true, false, var_1)), any(vec3<bool>(true, var_1, true))), select(vec3<bool>(any(vec4<bool>(true, true, var_1, var_1)), true, true), vec3<bool>(all(vec4<bool>(false, false, false, true)), select(var_1, var_1, var_1), var_1), true), var_1));
    var var_4 = true;
    return ~(~_wgslsmith_mult_u32(1u, firstTrailingBit(26647u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = select(!select(select(select(vec4<bool>(arg_1, arg_3.x, false, arg_3.x), vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_3.x, false, arg_1)), !vec4<bool>(true, arg_1, true, arg_3.x), vec4<bool>(true, false, false, false)), !vec4<bool>(true, arg_1, false, arg_3.x), vec4<bool>(353f <= global3.b.x, false, arg_1 & arg_3.x, arg_3.x && true)), !(!vec4<bool>(851f > global3.b.x, !arg_3.x, !arg_1, !arg_3.x)), select(select(!(!vec4<bool>(arg_1, arg_1, arg_3.x, false)), vec4<bool>(arg_3.x & arg_3.x, 69944u >= arg_0.x, false, false), true), !select(vec4<bool>(arg_1, arg_3.x, arg_3.x, false), select(vec4<bool>(true, arg_3.x, arg_3.x, arg_1), vec4<bool>(true, arg_3.x, arg_1, true), arg_1), select(vec4<bool>(true, arg_1, arg_3.x, arg_3.x), vec4<bool>(false, false, false, false), false)), select(select(!vec4<bool>(true, arg_3.x, true, true), select(vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, true, false, arg_3.x), arg_3.x), select(vec4<bool>(arg_3.x, false, false, true), vec4<bool>(arg_3.x, true, true, arg_3.x), true)), vec4<bool>(false, arg_3.x, arg_1, arg_3.x), vec4<bool>(all(vec2<bool>(false, arg_1)), !arg_1, any(vec2<bool>(arg_3.x, arg_3.x)), all(vec3<bool>(true, arg_1, arg_3.x))))));
    var var_1 = reverseBits(vec4<u32>(select(arg_0.x, firstTrailingBit(4294967295u), !arg_1), ~arg_0.x, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0.x, 1u), min(54794u, arg_0.x)), abs(arg_0.x)));
    return 5417u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2095f);
    var var_1 = Struct_1(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-12696i, global2.a, -14100i) >> (firstTrailingBit(vec3<u32>(61112u, 0u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-arg_0, 57188i, arg_0)), ~_wgslsmith_clamp_i32(11651i, _wgslsmith_clamp_i32(-70489i, global2.a, 0i), _wgslsmith_div_i32(17786i, global2.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, 107f, -1119f, -1197f))), global2.b, vec4<bool>(true, true, true, true))));
    let var_2 = !(!(any(vec3<bool>(true, false, true)) == any(vec3<bool>(true, false, false))) && true);
    let var_3 = Struct_1(_wgslsmith_div_i32(reverseBits(~(-1i << (0u % 32u))), _wgslsmith_mod_i32(abs(u_input.b.x), global4.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.b, _wgslsmith_div_vec4_f32(global3.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, -419f, arg_1.b.x, arg_2), vec4<f32>(1123f, arg_1.b.x, arg_2, global3.b.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -291f), -513f, -1301f) + _wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(-1000f, global4.b.x, global2.b.x, -657f)))));
    global2 = arg_1;
    return ~func_4(vec4<u32>(~(~0u), 1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(44352u, 12311u, 53135u), 1u), 4294967295u & func_3(arg_1)), true, vec2<i32>(-_wgslsmith_dot_vec3_i32(u_input.b.zxy, vec3<i32>(-2147483647i, global4.a, 41054i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, global2.a, -44679i), reverseBits(vec3<i32>(var_3.a, arg_0, 1i)))), !(!(!vec2<bool>(var_2, var_2))));
}

fn func_5(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.b.xw, vec2<f32>(arg_0.x, 2016f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, var_1.x))))));
    var var_3 = Struct_1(24163i, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_2.x, arg_0.x, global2.b.x));
    let var_4 = max(2147483647i, ~var_3.a);
    return _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(~(~4294967295u), 1u)), vec2<u32>(~abs(42872u) >> (1u % 32u), min(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 13732u, 0u, 25458u), vec4<u32>(1u, 1u, 0u, 4294967295u))), 1u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = arg_1 & !(~1264i > u_input.a);
    var var_2 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global4.b.x)), _wgslsmith_f_op_f32(select(-122f, 829f, false)), 218f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.b.x), global1[_wgslsmith_index_u32(func_2(-2147483647i, arg_0, global1[_wgslsmith_index_u32(73979u, 11u)]), 11u)], _wgslsmith_f_op_f32(2428f + global2.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(sign(-671f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 11u)], arg_0.b.x)), _wgslsmith_f_op_f32(-global3.b.x)))));
    let var_3 = arg_0;
    let var_4 = vec2<bool>(true, 46590u < (var_2.x >> ((~100148u >> (var_2.x % 32u)) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-183f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * -1355f))) + 1f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-571f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-6916i, global4.b), true, global2.b)) + 674f)) * 738f));
    let var_1 = 0u;
    let var_2 = Struct_1(-(~global3.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(32897u, 11u)], global4.b.x, -1567f, 1000f))), global4.b)), vec4<f32>(-1257f, -183f, 268f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(global4.b.x * global1[_wgslsmith_index_u32(0u, 11u)])))))));
    global3 = Struct_1(-(0i | u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(198f + global3.b.x), _wgslsmith_f_op_f32(ceil(var_0)), -867f, _wgslsmith_f_op_f32(1000f + var_2.b.x)))));
    let var_3 = var_2;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-772f * _wgslsmith_f_op_f32(max(global3.b.x, global2.b.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1523f, _wgslsmith_f_op_f32(var_2.b.x - var_0), true))), 356f)), -122f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -304f))));
    var var_5 = -38449i;
    var var_6 = Struct_1(1i, global4.b);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_i32(u_input.b >> (~vec4<u32>(0u, 1u, 49643u, 28962u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(var_3.a, 5233i), var_6.a >> (4294967295u % 32u), abs(var_6.a), ~0i)), abs(u_input.b.zx), firstLeadingBit(1i), firstTrailingBit(abs(countOneBits(min(vec3<u32>(var_1, var_1, var_1), global0[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, var_2.b.x, global4.b.x, -978f)), _wgslsmith_f_op_vec4_f32(min(var_3.b, var_3.b))))));
}

