struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1447f, -642f), 387f, vec2<i32>(i32(-2147483648), 1i), vec2<u32>(4294967295u, 0u), vec2<f32>(-491f, 1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> f32 {
    global0 = array<vec2<u32>, 5>();
    global1 = arg_0;
    let var_0 = ~countOneBits(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.d.x, u_input.e.x, 20340u), select(u_input.e, u_input.e, vec3<bool>(true, arg_1, false)))));
    global0 = array<vec2<u32>, 5>();
    let var_1 = select(firstTrailingBit(~(~(~vec4<u32>(36934u, 0u, u_input.e.x, 20930u)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, u_input.e.x, 23189u, 0u) ^ vec4<u32>(global1.d.x, global1.d.x, global1.d.x, 53947u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0, global1.d.x, 70991u), vec4<u32>(63929u, global1.d.x, var_0, var_0)), ~vec4<u32>(var_0, 18210u, u_input.e.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 63489u, 21730u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 0u, var_0, 0u), vec4<u32>(var_0, 19379u, var_0, u_input.e.x), vec4<u32>(u_input.e.x, 4294967295u, u_input.e.x, arg_0.d.x))), vec4<u32>(arg_0.d.x, u_input.e.x, _wgslsmith_clamp_u32(0u, 0u, 69328u), _wgslsmith_mod_u32(u_input.e.x, 7809u))), !vec4<bool>(all(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(arg_1, true))), -1089f >= _wgslsmith_f_op_f32(-574f + arg_0.e.x), !any(vec4<bool>(false, arg_2, false, arg_2)), false & !arg_2));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-611f * 250f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(abs(-584f)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(arg_2.zz, arg_2.x, vec2<i32>(-1i, -22628i), u_input.e.yx, arg_2.zx), arg_1, true))), _wgslsmith_div_f32(662f, _wgslsmith_f_op_f32(abs(global1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(arg_2.x, -1116f), global1.a.x, vec2<i32>(-4912i, -2147483647i), vec2<u32>(10085u, 11010u), vec2<f32>(arg_2.x, global1.b)), arg_1, arg_1)) + 886f) * global1.b), -_wgslsmith_add_vec2_i32(~(~global1.c), global1.c), vec2<u32>(u_input.e.x, abs(reverseBits(global1.d.x))) << (global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0, 21785u), arg_0 | 29915u), 5u)] % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(arg_2.xx, _wgslsmith_f_op_vec2_f32(ceil(arg_2.yz))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_2.xx + vec2<f32>(_wgslsmith_f_op_f32(222f - global1.e.x), _wgslsmith_f_op_f32(ceil(global1.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1019f))))), -440f, min(u_input.a, _wgslsmith_add_vec2_i32(-(~vec2<i32>(u_input.b, global1.c.x)), u_input.a)), ~select(vec2<u32>(u_input.e.x, abs(u_input.e.x)), abs(global1.d) | ~global1.d, vec2<bool>(all(vec2<bool>(false, arg_1)), any(vec3<bool>(arg_1, arg_1, false)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-803f, global1.e.x) + vec2<f32>(global1.a.x, 384f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-206f, 403f) - arg_2.zz))), !select(vec2<bool>(false, false), vec2<bool>(arg_1, false), false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.xz + global1.e) - _wgslsmith_div_vec2_f32(global1.e, vec2<f32>(arg_2.x, global1.a.x)))))));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-411f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x - global1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1215f), global1.a.x))), arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(597f, 1530f), vec2<f32>(-594f, 1242f))), _wgslsmith_f_op_f32(f32(-1f) * -1989f), select(global1.c, u_input.a, arg_1), min(global1.d, vec2<u32>(u_input.e.x, global1.d.x)), _wgslsmith_f_op_vec2_f32(global1.e - global1.a)), !arg_1, any(select(vec4<bool>(true, true, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(true, false, arg_1, false))))))));
    var var_1 = reverseBits(global0[_wgslsmith_index_u32(54478u, 5u)]);
    let var_2 = _wgslsmith_mult_u32(54962u, global1.d.x);
    return var_0.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(func_2(91182u, arg_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, global1.e.x, -511f), vec3<f32>(global1.a.x, 1568f, global1.a.x)) - vec3<f32>(-1386f, global1.e.x, global1.e.x)))), _wgslsmith_div_f32(-1293f, arg_1.b)), -1415f, vec2<i32>(_wgslsmith_div_i32(-global1.c.x, _wgslsmith_div_i32(2147483647i, -1i)) >> (((global1.d.x << (global1.d.x % 32u)) >> (~18998u % 32u)) % 32u), _wgslsmith_dot_vec2_i32(u_input.a, min(u_input.a, vec2<i32>(u_input.b, -23796i)) ^ arg_1.c)), u_input.e.zy, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global1.a.x, global1.b), arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global1.a, global1.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(543f, 216f)))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.e.x, var_0.a.x)))) - _wgslsmith_f_op_vec2_f32(-global1.e)) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e, arg_1.a, arg_0.xz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-839f, arg_1.e.x))), var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1351f)), vec2<i32>(u_input.c, min(-arg_1.c.x ^ (u_input.b << (0u % 32u)), ~_wgslsmith_mult_i32(var_0.c.x, 2147483647i))), min(vec2<u32>(_wgslsmith_sub_u32(global1.d.x, max(116273u, global1.d.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(9715u, 4294967295u, 50195u), ~vec3<u32>(arg_1.d.x, 1658u, var_0.d.x))), ~reverseBits(global0[_wgslsmith_index_u32(u_input.e.x, 5u)])), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(round(var_0.a.x))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1551f, 1722f)))))), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_mod_vec2_i32(vec2<i32>(max(arg_2.c.x, _wgslsmith_mult_i32(20627i, u_input.a.x)), countOneBits(global1.c.x) ^ _wgslsmith_mult_i32(global1.c.x, 2147483647i)), vec2<i32>(~12561i, reverseBits(arg_0.c.x))), global0[_wgslsmith_index_u32(0u, 5u)] >> (u_input.e.xx % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x * 732f), _wgslsmith_f_op_f32(-arg_0.b), !var_0)))));
    var var_1 = arg_2;
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(703f + var_1.a.x), _wgslsmith_f_op_f32(914f * 343f)))), arg_0.e.x), -1161f, vec2<i32>(~firstTrailingBit(-global1.c.x), 0i), _wgslsmith_sub_vec2_u32(global1.d, _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.d.x) << (select(vec2<u32>(global1.d.x, 1u), global0[_wgslsmith_index_u32(var_1.d.x, 5u)], true) % vec2<u32>(32u)), ~vec2<u32>(29628u, global1.d.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(-102f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.a.x, 1123f)))))));
    var var_3 = arg_2;
    return func_1(vec3<bool>(!(!var_0), all(!select(vec2<bool>(false, true), vec2<bool>(var_0, var_0), vec2<bool>(arg_1, false))), arg_0.c.x == countOneBits(~arg_3)), var_2);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = select(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), true), select(select(vec3<bool>(true, true, arg_2.x < -40168i), vec3<bool>(select(true, false, true), -469f > arg_0.a.x, true), select(false, true, false) & false), vec3<bool>(true, true, !any(vec3<bool>(false, true, false))), vec3<bool>(all(vec3<bool>(true, true, true)), true, true)), all(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), vec3<bool>(false, u_input.e.x == 0u, false), vec3<bool>(true, true, true))));
    global0 = array<vec2<u32>, 5>();
    let var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.x, global1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, -1868f)))));
    let var_2 = u_input.e.x;
    var var_3 = ~reverseBits(vec4<u32>(arg_0.d.x, countOneBits(4294967295u), ~28944u, ~4294967295u) | vec4<u32>(firstLeadingBit(global1.d.x), _wgslsmith_clamp_u32(43522u, arg_1.d.x, u_input.e.x), global1.d.x, u_input.e.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), !all(vec2<bool>(false, false)))), true);
    var var_1 = 144f;
    var_0 = select(select(vec3<bool>(!var_0.x, true, var_0.x), func_5(func_4(func_1(vec3<bool>(true, var_0.x, var_0.x), Struct_1(global1.e, global1.a.x, vec2<i32>(global1.c.x, global1.c.x), global1.d, vec2<f32>(global1.e.x, global1.e.x))), select(var_0.x, true, false), func_1(vec3<bool>(var_0.x, var_0.x, false), Struct_1(vec2<f32>(914f, -640f), -616f, vec2<i32>(global1.c.x, global1.c.x), u_input.e.xy, vec2<f32>(global1.e.x, global1.b))), select(31266i, -23957i, false)), Struct_1(global1.e, _wgslsmith_f_op_f32(step(-1256f, global1.e.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, global1.c.x), global1.c), vec2<u32>(61308u, u_input.e.x), global1.a), vec4<i32>(u_input.a.x, 0i, abs(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, 0i, 39936i, 38321i), vec4<i32>(1i, 1i, 0i, global1.c.x)))), true), !func_5(func_4(Struct_1(vec2<f32>(global1.e.x, global1.b), global1.b, vec2<i32>(30100i, -2147483647i), vec2<u32>(22167u, 4294967295u), global1.a), false & var_0.x, func_1(vec3<bool>(var_0.x, true, false), Struct_1(global1.e, global1.e.x, u_input.a, global1.d, global1.a)), 18918i), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.e), -1575f, vec2<i32>(global1.c.x, 1i), min(global1.d, global1.d), vec2<f32>(1000f, global1.a.x)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-61420i, -1i, u_input.a.x, u_input.b)), ~vec4<i32>(global1.c.x, global1.c.x, global1.c.x, 1i))), true);
    var var_2 = u_input.a.x;
    var_1 = global1.b;
    global0 = array<vec2<u32>, 5>();
    let var_3 = func_1(select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(!(!var_0.x), true, ~u_input.e.x >= ~u_input.e.x), var_0.x), Struct_1(func_1(func_5(func_4(Struct_1(vec2<f32>(global1.e.x, 291f), -1097f, vec2<i32>(2147483647i, -17477i), vec2<u32>(51282u, 64639u), global1.e), var_0.x, Struct_1(global1.e, global1.e.x, vec2<i32>(29185i, global1.c.x), u_input.e.yz, global1.e), -1i), func_1(vec3<bool>(var_0.x, var_0.x, false), Struct_1(global1.a, -573f, vec2<i32>(global1.c.x, global1.c.x), vec2<u32>(u_input.e.x, 4294967295u), global1.a)), vec4<i32>(-7099i, global1.c.x, u_input.a.x, 18003i)), Struct_1(func_1(vec3<bool>(false, var_0.x, var_0.x), Struct_1(global1.a, global1.a.x, vec2<i32>(global1.c.x, u_input.d), vec2<u32>(0u, 68499u), global1.a)).a, global1.e.x, u_input.a, func_4(Struct_1(vec2<f32>(-255f, 729f), 1000f, vec2<i32>(u_input.c, global1.c.x), vec2<u32>(0u, u_input.e.x), vec2<f32>(global1.b, -272f)), var_0.x, Struct_1(vec2<f32>(global1.a.x, global1.e.x), -1906f, global1.c, u_input.e.yz, global1.e), -2147483647i).d, global1.a)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, _wgslsmith_f_op_f32(global1.b + global1.e.x)))), select(vec2<i32>(1i, -25560i), firstTrailingBit(~u_input.a), vec2<bool>(var_0.x | false, all(var_0.zy))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.e.x, 3076u, 0u), max(global1.d.x ^ global1.d.x, ~global1.d.x)), 5u)], vec2<f32>(global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.e.x + -1156f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b - 332f))), _wgslsmith_div_f32(var_3.a.x, _wgslsmith_f_op_f32(func_3(var_3, false, true))))) - _wgslsmith_f_op_f32(func_2(firstLeadingBit(var_3.d.x), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-124f, global1.b, -857f) * vec3<f32>(global1.b, var_3.b, var_3.e.x)) + vec3<f32>(-139f, 1045f, 516f))))), _wgslsmith_div_u32(~reverseBits(u_input.e.x), _wgslsmith_mult_u32(18806u, var_3.d.x)), (_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.d)), var_3.c, vec2<i32>(global1.c.x, -2147483647i)) >> (reverseBits(global1.d & vec2<u32>(var_3.d.x, u_input.e.x)) % vec2<u32>(32u))) << (func_4(func_4(Struct_1(vec2<f32>(-356f, global1.e.x), 971f, global1.c, u_input.e.zy, var_3.e), var_0.x, func_1(vec3<bool>(var_0.x, true, true), Struct_1(vec2<f32>(global1.b, -522f), global1.e.x, vec2<i32>(-22491i, -11144i), global0[_wgslsmith_index_u32(u_input.e.x, 5u)], var_3.e)), 1358i), !var_0.x & true, var_3, _wgslsmith_add_i32(-27453i, -6508i)).d % vec2<u32>(32u)), ~var_3.d.x, ~(~(~vec4<u32>(60051u, u_input.e.x, global1.d.x, global1.d.x) ^ vec4<u32>(var_3.d.x, 4294967295u, var_3.d.x, u_input.e.x))));
}

