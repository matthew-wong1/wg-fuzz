struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -57113i;

var<private> global1: array<i32, 31> = array<i32, 31>(-33064i, 32628i, 30779i, 4838i, -15439i, 2147483647i, 6575i, -26356i, 22188i, i32(-2147483648), 2025i, 2147483647i, -1163i, 2147483647i, 58640i, -1i, 2147483647i, 44843i, i32(-2147483648), 2147483647i, 0i, 2147483647i, -1i, 8429i, i32(-2147483648), 1i, 22417i, 2147483647i, 2147483647i, -1692i, -14753i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1546f, arg_0.c) * vec2<f32>(-641f, arg_0.c))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1000f), vec2<f32>(-2539f, arg_0.c)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-405f, -764f), vec2<f32>(arg_0.c, arg_0.c), arg_0.a.c))) - vec2<f32>(-1318f, _wgslsmith_f_op_f32(ceil(arg_0.c))))), Struct_1(vec2<i32>(~1i, -2147483647i), arg_0.a.a.x, ~global1[_wgslsmith_index_u32(109851u, 31u)] <= 53890i, _wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.a, arg_0.a.d, 23944u), vec3<u32>(27175u, 0u, u_input.a)), ~(vec3<u32>(25631u, 4294967295u, 68417u) | vec3<u32>(0u, arg_0.a.d, 1u)))), Struct_2(arg_0.a, !vec2<bool>(!arg_0.d.x, true), 187f, !arg_0.d), 0u << (((_wgslsmith_div_u32(arg_0.a.d, arg_0.a.d) << (u_input.a % 32u)) >> (~arg_0.a.d % 32u)) % 32u), (-(~vec3<i32>(arg_0.a.a.x, u_input.b.x, arg_0.a.a.x)) ^ reverseBits(vec3<i32>(global1[_wgslsmith_index_u32(1u, 31u)], -11989i, u_input.b.x))) ^ abs(vec3<i32>(30227i, 2147483647i, _wgslsmith_sub_i32(-54357i, -2147483647i))));
    let var_1 = -_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_1.x, -17133i) >> (4294967295u % 32u), ~(~(~(-37343i))));
    var var_2 = -abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_1, 2147483647i), arg_0.a.a) | ~vec2<i32>(var_0.c.a.a.x, arg_0.a.a.x)) | vec2<i32>(_wgslsmith_dot_vec2_i32(select(arg_1.yz | var_0.e.zx, select(u_input.b.yx, u_input.b.xy, arg_0.b), !vec2<bool>(arg_0.a.c, false)), vec2<i32>(firstLeadingBit(var_0.e.x), arg_1.x)), _wgslsmith_mod_i32(44213i, ~var_0.c.a.b));
    return arg_0.a.a.x;
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    var var_0 = countOneBits(vec3<u32>(0u, 15652u, ~arg_0.x));
    let var_1 = Struct_1(_wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.zx), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 31u)] & -37849i, -73157i), func_3(Struct_2(Struct_1(vec2<i32>(u_input.b.x, -31620i), -2172i, true, 1u), vec2<bool>(false, true), 1675f, select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)), -u_input.b)), true, _wgslsmith_dot_vec2_u32(reverseBits(var_0.zz), vec2<u32>(~(~0u), max(4294967295u ^ var_0.x, firstLeadingBit(4294967295u)))));
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, var_1.b, ~var_1.b & global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_0.x, 4294967295u), 31u)], min(-_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(var_0.x, 31u)], u_input.b.x), -u_input.b.x)), vec4<i32>(1i, ~_wgslsmith_mod_i32(10438i, 2147483647i) & (1i | -global1[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, -1i >> (u_input.a % 32u), ~var_1.a.x)), -(_wgslsmith_div_i32(var_1.a.x, 0i) | -1i)));
    var var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-377f, -658f))))))))), vec3<i32>(20300i, 1i, _wgslsmith_add_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, var_2.x, u_input.b.x), var_2.wwz)), _wgslsmith_div_i32(~u_input.b.x, ~var_1.a.x))), -36578i, 101f);
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.zx), -vec2<i32>(var_2.x, u_input.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-11346i, 18878i), var_1.a));
    return 0i;
}

fn func_1() -> bool {
    global0 = -min(func_2(~min(vec4<u32>(0u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), -min(abs(u_input.b.x), global1[_wgslsmith_index_u32(1u, 31u)]));
    var var_0 = Struct_1(-u_input.b.xy | u_input.b.xz, func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1260u, u_input.a, 5010u) | vec4<u32>(0u, 4294967295u, 0u, u_input.a), reverseBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)))), any(!vec2<bool>(4294967295u >= u_input.a, any(vec3<bool>(true, true, true)))), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, u_input.a), u_input.a)));
    var var_1 = true;
    var var_2 = ~_wgslsmith_mod_vec3_u32(abs(firstTrailingBit(~vec3<u32>(5912u, 18972u, u_input.a))), min(vec3<u32>(var_0.d, u_input.a, var_0.d), ~vec3<u32>(6513u, 1u, 1u)) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(74137u, var_0.d, u_input.a), vec3<u32>(var_0.d, u_input.a, 0u)));
    var var_3 = Struct_1(var_0.a, countOneBits(21065i), any(!select(vec4<bool>(var_0.c, false, false, var_0.c), select(vec4<bool>(var_0.c, false, false, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), var_0.c), vec4<bool>(true, true, true, true))), u_input.a);
    return select(var_0.c, !(_wgslsmith_f_op_f32(796f + -172f) >= _wgslsmith_f_op_f32(step(-365f, -346f))), var_0.c) || !(!(!all(vec3<bool>(var_0.c, false, var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-959f, -1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1374f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(453f))))), _wgslsmith_f_op_f32(f32(-1f) * -620f))));
    let var_1 = !all(select(vec3<bool>(true, true, false), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)));
    global1 = array<i32, 31>();
    let var_2 = 1u;
    var var_3 = Struct_4(select(vec4<u32>(~u_input.a, 4294967295u, var_2, u_input.a & var_2), ~firstLeadingBit(vec4<u32>(0u, 5212u, var_2, var_2)), func_1()) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(77336u, u_input.a, 9134u, 56494u), vec4<u32>(48887u, 1u, u_input.a, 1u), vec4<u32>(60678u, 4294967295u, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(12093u, u_input.a, 94819u, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 47027u, 97645u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 28312u, 31258u), vec4<u32>(0u, var_2, u_input.a, var_2), vec4<u32>(var_2, u_input.a, 0u, 4294967295u)) << (abs(vec4<u32>(u_input.a, u_input.a, u_input.a, 92043u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1819f * var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1879f)) * _wgslsmith_f_op_f32(abs(var_0.x)))) + var_0), Struct_3(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(var_0.x)))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), 1i), func_2(~vec4<u32>(4294967295u, 35834u, var_2, var_2)), true, u_input.a), Struct_2(Struct_1(~u_input.b.xy, -u_input.b.x, true, var_2), select(select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(false, var_1)), vec2<bool>(var_1, var_1), func_1()), var_0.x, !(!vec3<bool>(var_1, var_1, false))), ~5861u, u_input.b));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1161f, var_3.c.x, var_3.c.x) * var_3.b))))))));
    var_3 = Struct_4(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_2, var_2, 4294967295u), var_3.a), vec4<u32>(0u, 1u, var_3.a.x, var_3.a.x)))), var_0, vec3<f32>(389f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(441f, var_3.c.x))), _wgslsmith_f_op_f32(-951f - var_0.x)), var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_vec4_i32(-max(vec4<i32>(-1i, var_3.d.e.x, -2147483647i, global1[_wgslsmith_index_u32(u_input.a, 31u)]), vec4<i32>(var_3.d.b.a.x, 1i, 8792i, -76082i)), min(-vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 31u)], -1i, -10594i), vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_2, 31u)], u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 31u)]))), ~(func_3(Struct_2(var_3.d.b, vec2<bool>(var_1, var_1), var_4.x, var_3.d.c.d), vec3<i32>(global1[_wgslsmith_index_u32(var_2, 31u)], u_input.b.x, -2244i) >> (var_3.a.wzz % vec3<u32>(32u))) ^ -38911i), u_input.b);
}

