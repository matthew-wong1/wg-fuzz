struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 31842u, 47286u), vec3<u32>(39107u, 0u, 6177u), vec3<u32>(58438u, 4294967295u, 86337u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(18693u, 34474u, 37246u), vec3<u32>(5338u, 1u, 4294967295u), vec3<u32>(0u, 51564u, 1u), vec3<u32>(1u, 0u, 38204u), vec3<u32>(28700u, 35681u, 27301u), vec3<u32>(70172u, 18784u, 16920u), vec3<u32>(0u, 1u, 1u), vec3<u32>(1u, 0u, 0u), vec3<u32>(42929u, 66778u, 69695u), vec3<u32>(21863u, 1u, 86912u), vec3<u32>(28181u, 37557u, 0u), vec3<u32>(0u, 19005u, 76020u), vec3<u32>(1u, 35330u, 55112u), vec3<u32>(1u, 58931u, 7269u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(121268u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 17257u), vec3<u32>(2695u, 52487u, 0u), vec3<u32>(43539u, 4294967295u, 0u), vec3<u32>(15858u, 0u, 9021u), vec3<u32>(1u, 1709u, 10612u), vec3<u32>(0u, 1u, 1395u), vec3<u32>(4294967295u, 19848u, 22930u), vec3<u32>(27075u, 0u, 57899u), vec3<u32>(4294967295u, 32057u, 1u), vec3<u32>(4294967295u, 63117u, 1u), vec3<u32>(4294967295u, 3644u, 1u));

var<private> global2: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = -197f;
    let var_1 = u_input.b.yx;
    let var_2 = min(-(vec4<i32>(-1i) * -vec4<i32>(-39349i, u_input.a, 55769i, u_input.c.x)), reverseBits(vec4<i32>(u_input.c.x, ~(-49214i), _wgslsmith_dot_vec3_i32(u_input.c.wzy, vec3<i32>(u_input.a, -41755i, 0i)), 29723i)));
    global1 = array<vec3<u32>, 31>();
    let var_3 = Struct_1(u_input.b.yz, _wgslsmith_f_op_f32(min(1322f, -1120f)), 2147483647i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1489f)), -283f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1807f, 403f), _wgslsmith_f_op_f32(-322f + -570f)) + vec2<f32>(1029f, _wgslsmith_div_f32(-1110f, -1765f))))));
    return false;
}

fn func_2(arg_0: vec3<u32>) -> vec2<u32> {
    global2 = reverseBits(arg_0.x);
    let var_0 = u_input.a;
    var var_1 = Struct_1(firstTrailingBit(~(vec2<u32>(85695u, 1u) & vec2<u32>(u_input.b.x, arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1227f) - -561f)) + -1699f), abs(var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(-1259f, _wgslsmith_f_op_f32(237f - 121f)), vec2<bool>(true, all(vec3<bool>(true, true, false)))))));
    var var_2 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.d.x < var_1.d.x, func_3(), false, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)));
    var var_3 = countOneBits(-(~var_1.c));
    return firstLeadingBit(countOneBits(firstTrailingBit(arg_0.xx)));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> vec2<u32> {
    global2 = 0u;
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0, u_input.d), arg_0), ~4294967295u) >> (min(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(u_input.b.ww, vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, u_input.d))), func_2(u_input.b.yyw ^ global1[_wgslsmith_index_u32(1u, 31u)]) & abs(_wgslsmith_clamp_vec2_u32(u_input.b.wx, vec2<u32>(1u, arg_0), vec2<u32>(u_input.b.x, arg_0)))) % vec2<u32>(32u));
    let var_1 = Struct_1(vec2<u32>(var_0.x, _wgslsmith_add_u32(~u_input.b.x, 25349u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-782f)), -659f) * 1f)), -abs(u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-936f, 479f))), vec2<f32>(-1200f, 826f)) - vec2<f32>(_wgslsmith_f_op_f32(416f * 906f), _wgslsmith_f_op_f32(trunc(283f))))));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(round(var_1.d.x))))), u_input.c.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b, 331f))), _wgslsmith_f_op_vec2_f32(-var_1.d)))))));
    let var_3 = 31771i;
    return vec2<u32>(71046u, _wgslsmith_div_u32(u_input.d, ~1u ^ arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(u_input.d, vec2<i32>(-_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a)), _wgslsmith_div_f32(-1308f, _wgslsmith_f_op_f32(sign(717f))), 1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(655f * 1426f)))), -1000f));
    var var_1 = !select(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(8833u < ~u_input.b.x, false, !(var_0.d.x < 376f)), vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true, true));
    var_1 = !select(vec3<bool>(any(vec2<bool>(var_1.x, false)), select(false, var_1.x, !var_1.x), var_1.x), select(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(true, false, false), vec3<bool>(false, var_1.x, var_1.x)), vec3<bool>(false, any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)), func_3()), true), !select(vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, false, false)));
    var_1 = !vec3<bool>(51655u >= u_input.b.x, false, any(vec3<bool>(var_1.x, true, var_1.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - var_0.d.x) + var_0.b), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(var_0.d.x + var_0.b)))) + var_0.d);
    var var_3 = -1665f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1328f)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.b, -1147f, false))))))), _wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(trunc(var_2.x))), vec3<u32>(17354u, func_1(~max(u_input.d, 0u), _wgslsmith_clamp_vec2_i32(vec2<i32>(30878i, 1i), firstLeadingBit(vec2<i32>(-1i, u_input.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(-2147483647i, -2147483647i)))).x, ~2055u));
}

