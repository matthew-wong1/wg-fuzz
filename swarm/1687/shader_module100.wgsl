struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<u32>;

var<private> global2: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(13164i, -43611i, 41869i), vec3<i32>(15459i, -46951i, -51263i), vec3<i32>(-1i, -1i, 43019i), vec3<i32>(-25470i, -47181i, 0i), vec3<i32>(-18329i, 0i, 1i), vec3<i32>(6809i, 2147483647i, 0i), vec3<i32>(-1i, -20770i, 6313i), vec3<i32>(i32(-2147483648), -145i, -1i), vec3<i32>(-10795i, 22677i, 15128i), vec3<i32>(1i, i32(-2147483648), -21484i), vec3<i32>(-6877i, 1i, 2147483647i), vec3<i32>(0i, 4174i, -8875i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(0i, -39013i, 68885i), vec3<i32>(0i, -33480i, i32(-2147483648)), vec3<i32>(0i, -1i, 18204i), vec3<i32>(32280i, 26757i, -12682i), vec3<i32>(2147483647i, -43311i, -16683i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(0i, -46653i, 0i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-5652i, i32(-2147483648), 2147483647i), vec3<i32>(-24515i, -12656i, -1i), vec3<i32>(-11087i, 0i, 39980i), vec3<i32>(8112i, 37918i, 13322i), vec3<i32>(2147483647i, 11336i, -39162i));

var<private> global3: array<f32, 22> = array<f32, 22>(-458f, -1000f, -1839f, -853f, -966f, -1012f, 979f, 205f, 1163f, -371f, -1006f, 332f, 1000f, -211f, -772f, -2271f, 585f, -1078f, -118f, -669f, 1611f, 937f);

var<private> global4: Struct_1 = Struct_1(vec3<f32>(-513f, 175f, -843f), i32(-2147483648), 14560u, 28283u, vec4<f32>(-688f, -496f, 630f, 248f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    global3 = array<f32, 22>();
    return ~(select(vec3<i32>(countOneBits(u_input.c), global4.b, -global4.b), abs(vec3<i32>(36338i, 11827i, global4.b)), vec3<bool>(u_input.a >= global4.d, true, true)) >> ((global1.xxy | vec3<u32>(~1u, ~41577u, _wgslsmith_dot_vec3_u32(global1.yzx, vec3<u32>(global4.c, 0u, global1.x)))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec3_i32(func_3(), reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~global4.c), 26u)]));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d, u_input.a, global1.x, arg_0.c), vec4<u32>(~arg_0.d, 1u, _wgslsmith_add_u32(1u, arg_0.c), ~2625u)), global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(0u, 22u)], arg_0.e.x, 738f, -1234f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e.x, 177f, 1634f, 1736f), vec4<f32>(arg_0.e.x, -495f, 433f, 2102f))), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 22u)], global4.a.x, global3[_wgslsmith_index_u32(u_input.a, 22u)], global3[_wgslsmith_index_u32(global1.x, 22u)]), vec4<f32>(global4.e.x, global4.a.x, global3[_wgslsmith_index_u32(0u, 22u)], -663f)))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3[_wgslsmith_index_u32(~global1.x, 22u)], 951f, -493f, _wgslsmith_f_op_f32(step(global4.e.x, global3[_wgslsmith_index_u32(6621u, 22u)])))))));
    var_0 = min(u_input.b, u_input.b) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 3345u, arg_0.c) ^ global1.zxz, global1.zzw), abs(global1.zxx), abs(min(countOneBits(vec3<u32>(u_input.a, 94658u, global4.c)), min(vec3<u32>(60077u, 4294967295u, global1.x), vec3<u32>(39318u, arg_0.c, var_1.c))))) % vec3<u32>(32u));
    let var_2 = !(global4.c <= global1.x);
    global4 = Struct_1(_wgslsmith_f_op_vec3_f32(min(arg_0.e.xyw, global4.e.xyy)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(var_0.x, arg_0.b) >> (~_wgslsmith_clamp_u32(u_input.a, 36436u, arg_0.d) % 32u), var_0.x), ~var_1.c, max(u_input.a, _wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(u_input.a, var_1.d, 0u, 18569u)), firstLeadingBit(vec4<u32>(u_input.a, 1u, global4.c, 12859u)), !var_2), ~(vec4<u32>(global4.c, 0u, arg_0.d, global4.c) ^ vec4<u32>(4294967295u, global1.x, 44611u, 5971u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, global4.a.x, var_1.e.x, -887f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.e))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global4.e) - _wgslsmith_f_op_vec4_f32(trunc(global4.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.e))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 22u)]))), global3[_wgslsmith_index_u32(~global4.d, 22u)], 499f, -376f));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global4.e.yxx), reverseBits(max(_wgslsmith_sub_i32(-6675i, -58300i) | arg_0, select(-22947i, global4.b, true) & _wgslsmith_add_i32(0i, arg_0))), u_input.a, 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.e.x, -237f, global4.a.x, 1688f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, global3[_wgslsmith_index_u32(u_input.a, 22u)], -1158f)) + _wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], 824f, 1055f), u_input.b.x, u_input.a, u_input.a, global4.e))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, 1450f, global4.a.x, 1331f))));
    global0 = all(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), true != (0u != var_0.c)));
    let var_1 = _wgslsmith_mult_i32(min(arg_0, _wgslsmith_div_i32(var_0.b, u_input.b.x)), 1i);
    global0 = !(select(1i, ~0i, select(select(false, true, false), all(vec4<bool>(false, true, true, false)), true)) > ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.b.yy));
    var var_2 = var_0;
    return ~1u;
}

fn func_4(arg_0: Struct_1) -> bool {
    global4 = arg_0;
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global4.a.x, global3[_wgslsmith_index_u32(global4.c ^ global4.c, 22u)], 767f)));
    var var_1 = u_input.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 22>();
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global4.e.yzy - global4.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(global4.c, 22u)], 1738f, global4.a.x)), global4.e.xzz))), u_input.c, ~global4.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(global4.c, global4.d), ~global4.d) & func_1(u_input.c), vec4<f32>(_wgslsmith_f_op_f32(floor(-1682f)), global4.e.x, global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(u_input.a, 22u)])));
    global1 = min(vec4<u32>(u_input.a, global4.c, global4.d, ~(~u_input.a)), _wgslsmith_div_vec4_u32(~abs(~vec4<u32>(u_input.a, 5315u, u_input.a, 23854u)), firstLeadingBit(~(vec4<u32>(global1.x, 0u, 4294967295u, global4.d) >> (vec4<u32>(1u, global4.d, global4.c, 1u) % vec4<u32>(32u))))));
    global1 = vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, global1.x), ~1u >> (abs(global4.c) % 32u)), ~_wgslsmith_div_u32(35425u, 38862u), ~_wgslsmith_dot_vec3_u32(~select(global1.yww, vec3<u32>(69978u, 4878u, 1u), false), global1.xzy), global4.c >> (~global4.d % 32u));
    let var_1 = var_0;
    global3 = array<f32, 22>();
    global1 = ~firstTrailingBit(firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 0u, 8988u, 23211u), vec4<u32>(global1.x, global1.x, 43833u, u_input.a)), _wgslsmith_div_u32(28192u, 24146u), ~4294967295u, u_input.a)));
    let var_2 = var_0 && (-853f <= global4.e.x);
    global1 = ~vec4<u32>(37226u, 115524u, firstLeadingBit(0u), countOneBits(firstTrailingBit(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<i32>(global4.b, -25102i, global4.b), u_input.a);
}

