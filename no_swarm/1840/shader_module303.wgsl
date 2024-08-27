struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 723f;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<vec4<i32>, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: u32) -> Struct_1 {
    return global2[_wgslsmith_index_u32(0u >> (~(1u >> (~_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u)) % 32u), 22u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_2(arg_1.b, vec3<u32>(arg_0, ~arg_0 | ~(2154u & arg_0), u_input.c), func_2(0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + 508f), arg_3.x, _wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-arg_1.b.x)), vec4<f32>(-343f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3, arg_1.b, arg_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -494f, arg_1.b.x, -1348f))) * arg_1.b)), arg_2.wxz);
    var var_1 = select(abs(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-44571i, 19321i), abs(abs(-1i)), countOneBits(_wgslsmith_add_i32(-4735i, 2147483647i)))), _wgslsmith_mult_i32(-(i32(-1i) * -40155i), abs(1i)), all(!(!select(arg_2.zxy, vec3<bool>(true, true, true), false))));
    var_1 = arg_1.a;
    let var_2 = arg_1;
    global3 = array<vec4<i32>, 2>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -587f) + _wgslsmith_f_op_f32(floor(1f)))));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = -556f;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 1000f) - 1803f)), arg_2.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(-472f + 809f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) - _wgslsmith_f_op_f32(func_3(u_input.c, Struct_1(2147483647i, vec4<f32>(1978f, 1000f, -542f, -1774f), true), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<f32>(arg_2.x, -572f, arg_2.x, 1525f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(abs(-2134f)))), arg_2.x, 451f, 1030f));
    let var_2 = global2[_wgslsmith_index_u32(u_input.c, 22u)];
    return Struct_2(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195f + _wgslsmith_f_op_f32(-312f + 195f)) * 1296f), 223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(819f - func_2(u_input.c).b.x) + _wgslsmith_f_op_f32(max(var_2.b.x, -695f)))), _wgslsmith_sub_vec3_u32(~min(countOneBits(vec3<u32>(15880u, 40505u, u_input.c)), vec3<u32>(u_input.c, u_input.c, 0u) | vec3<u32>(38588u, u_input.c, u_input.c)), abs(select(vec3<u32>(u_input.c, 55771u, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<bool>(var_2.c, false, true))) & ~vec3<u32>(41676u, 36075u, u_input.c)), func_2(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1, vec4<f32>(-811f, arg_2.x, var_2.b.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_div_vec4_f32(vec4<f32>(-224f, var_2.b.x, arg_2.x, 1829f), vec4<f32>(-2272f, arg_2.x, var_2.b.x, var_2.b.x))))), select(select(vec3<bool>(true, !arg_0, func_2(u_input.c).c), vec3<bool>(true, arg_0, arg_0), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), !(!vec3<bool>(true, false, var_2.c))));
}

fn func_1() -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(2126f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1637f))))));
    let var_0 = func_4(true, u_input.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1067f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1095f))), _wgslsmith_f_op_f32(func_3(~0u, func_2(u_input.c), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-534f, 1523f, -651f, -667f)))), _wgslsmith_f_op_f32(abs(-100f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3429f, 438f, -1000f, -1424f))))))));
    let var_1 = !(!func_2(168863u).c);
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(func_4(true, _wgslsmith_mult_i32(29064i, u_input.b.x), vec4<f32>(var_0.a.x, var_0.a.x, -522f, 1769f)).b, select(~vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(u_input.c, var_0.b.x, 394u), !var_0.c.c), var_0.e), vec3<u32>(_wgslsmith_sub_u32(50343u, _wgslsmith_clamp_u32(4294967295u, 68679u, 40891u)), firstLeadingBit(_wgslsmith_div_u32(4294967295u, u_input.c)), ~60910u)), vec3<u32>(16061u, ~(31905u | (u_input.c & var_0.b.x)), reverseBits(u_input.c)));
    global3 = array<vec4<i32>, 2>();
    return _wgslsmith_sub_vec3_u32(abs(min(~var_0.b, _wgslsmith_clamp_vec3_u32(var_0.b, ~var_0.b, ~vec3<u32>(4294967295u, u_input.c, var_0.b.x)))), var_0.b ^ ~(~(~var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 435f, -360f, -549f)))), func_1(), Struct_1(~9701i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, -478f, 1000f, 354f) * vec4<f32>(1643f, -1050f, -199f, 1045f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(950f, 2231f, -1000f, -1479f), vec4<f32>(1000f, 1000f, -191f, 625f))))))), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1537f, -1288f, 764f, -357f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, 283f, 196f, -1601f)))))), vec3<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), true, u_input.d > ~(~u_input.d)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - -923f))));
    global2 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(-543f - var_1));
    var_2 = -1386f;
    var var_3 = !select(select(!vec4<bool>(false, false, false, var_0.e.x), select(vec4<bool>(var_0.e.x, var_0.c.c, false, false), vec4<bool>(true, var_0.e.x, false, true), !vec4<bool>(true, var_0.e.x, false, var_0.e.x)), true), select(vec4<bool>(var_1 < -397f, var_0.e.x, all(var_0.e), var_0.e.x), !vec4<bool>(var_0.e.x, var_0.c.c, var_0.c.c, var_0.e.x), !vec4<bool>(true, false, true, var_0.e.x)), vec4<bool>(all(var_0.e.zx), true, var_0.c.c, select(select(var_0.c.c, false, var_0.c.c), true, !var_0.e.x)));
    var var_4 = func_4(var_3.x, _wgslsmith_mod_i32(~u_input.a, 43195i), var_0.a);
    let var_5 = Struct_3(~countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(var_4.b.xz, vec2<u32>(var_4.b.x, u_input.c)), var_4.b.x)), Struct_2(vec4<f32>(-867f, _wgslsmith_f_op_f32(select(-897f, _wgslsmith_f_op_f32(var_1 + var_4.c.b.x), var_3.x)), var_0.d.x, var_4.d.x), vec3<u32>(u_input.c, 1u, 6331u), Struct_1(-1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-772f, -1939f, 1127f, var_4.a.x), vec4<f32>(var_1, var_0.d.x, var_0.d.x, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-289f, 1000f, -1807f, 1000f))), !all(vec4<bool>(var_4.c.c, true, var_4.e.x, var_3.x))), var_4.a, !var_3.ywz), -40425i, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1848f * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 1406f))), var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.zxz, -1341i, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(1u, 8u)], min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_4.c.a, var_4.c.a), global3[_wgslsmith_index_u32(var_5.a.x, 2u)]), global3[_wgslsmith_index_u32(~0u, 2u)]), firstLeadingBit(global3[_wgslsmith_index_u32(16232u, 2u)] & global1[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a, var_5.c ^ -2147483647i, var_4.c.a, _wgslsmith_add_i32(u_input.d, var_5.c)), min(vec4<i32>(-2147483647i, -2147483647i, var_0.c.a, 1i), reverseBits(global1[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_f32(-var_1), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x & u_input.c, select(var_5.b.b.x, var_0.b.x, var_5.b.e.x), 1u), ~vec3<u32>(0u, 1u, 17950u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(17740u, 49190u, 25426u), var_4.b)), var_4.b.x), 2u)]);
}

