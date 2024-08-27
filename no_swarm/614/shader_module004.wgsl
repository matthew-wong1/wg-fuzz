struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-1629f, -573f), Struct_1(147f, -623f), Struct_1(1085f, 670f), Struct_1(-1141f, 289f), Struct_1(-619f, 612f), Struct_1(-108f, -388f), Struct_1(249f, 623f), Struct_1(1484f, -611f), Struct_1(-1083f, 927f), Struct_1(1792f, -919f), Struct_1(805f, -424f), Struct_1(-201f, 1194f));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    let var_0 = ~(_wgslsmith_mult_vec4_u32(vec4<u32>(14737u & u_input.a, ~u_input.d, 4294967295u, ~u_input.a), reverseBits(vec4<u32>(u_input.d, 4294967295u, u_input.d, u_input.a)) >> (~vec4<u32>(1u, u_input.a, 11964u, 0u) % vec4<u32>(32u))) >> (vec4<u32>(1u, ~u_input.a, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, u_input.d), u_input.d, 0u << (u_input.a % 32u)), ~_wgslsmith_mult_u32(4294967295u, u_input.d)) % vec4<u32>(32u)));
    let var_1 = !arg_0 && (1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-929f))));
    let var_2 = global2[_wgslsmith_index_u32(var_0.x ^ 0u, 12u)];
    global2 = array<Struct_1, 12>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) - _wgslsmith_f_op_f32(round(var_2.a)))), var_2.a));
    return ~12390i;
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = u_input.d;
    let var_1 = -firstLeadingBit(vec2<i32>(countOneBits(global0.x), func_3(arg_0.x, global2[_wgslsmith_index_u32(var_0, 12u)]))) << (vec2<u32>(_wgslsmith_div_u32(u_input.d, 1u), 9877u) % vec2<u32>(32u));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 330f) * _wgslsmith_f_op_f32(f32(-1f) * -304f)), _wgslsmith_f_op_f32(f32(-1f) * -477f), all(select(arg_0.xzy, vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, arg_0.x)))))), -411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(214f - -1000f))) + 1379f)), _wgslsmith_f_op_f32(sign(1009f)));
    let var_3 = _wgslsmith_mod_vec3_i32(firstTrailingBit(~max(-vec3<i32>(-13353i, 3851i, -2147483647i), vec3<i32>(-42455i, -68037i, global0.x))), vec3<i32>(u_input.b, var_1.x, ~1i));
    global0 = -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, var_1.x), max(vec2<i32>(global0.x, -1i), var_1)), -_wgslsmith_sub_vec2_i32(var_3.zy, vec2<i32>(var_3.x, var_1.x))), ~vec2<i32>(var_1.x, 2147483647i >> (u_input.a % 32u)));
    return u_input.c | min(var_1.x, u_input.c >> (select(var_0, min(u_input.d, u_input.a), true) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32) -> i32 {
    global0 = _wgslsmith_mult_vec2_i32(firstLeadingBit(min(vec2<i32>(-44363i, 1i), firstLeadingBit(vec2<i32>(1i, arg_2)))) | firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2, u_input.c), vec2<i32>(arg_2, arg_1)), -vec2<i32>(arg_2, arg_1))), select(abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(arg_1, global0.x))), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, global0.x), vec2<i32>(global0.x, -2147483647i)), !(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0))));
    global2 = array<Struct_1, 12>();
    let var_0 = abs(min(-countOneBits(vec4<i32>(arg_1, -74292i, arg_2, arg_1)) & ~abs(vec4<i32>(arg_2, arg_1, global0.x, 0i)), ~abs(select(vec4<i32>(-1i, global0.x, -58280i, 0i), vec4<i32>(arg_2, arg_1, 54495i, 10015i), vec4<bool>(arg_0, arg_0, arg_0, true)))));
    global1 = !arg_0;
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1786f, -1166f, _wgslsmith_f_op_f32(ceil(-2148f))) - vec4<f32>(170f, _wgslsmith_f_op_f32(sign(-252f)), _wgslsmith_f_op_f32(-1242f - -628f), _wgslsmith_f_op_f32(min(-133f, 530f)))), vec4<f32>(1f, 1f, 1f, 1f)), ~vec3<i32>(21446i, _wgslsmith_add_i32(max(u_input.c, 0i), -var_0.x), (-25865i & arg_2) | ~(-27882i)), Struct_2(global2[_wgslsmith_index_u32(4294967295u << (u_input.a % 32u), 12u)]), -538f);
    return _wgslsmith_mod_i32(~select(var_1.b.x & -var_0.x, arg_2, true), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~abs(var_0.x), u_input.b), func_2(vec4<bool>(all(vec4<bool>(false, arg_0, false, false)), true, arg_0, all(vec2<bool>(arg_0, true)))), countOneBits(~global0.x)));
}

fn func_5(arg_0: u32, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(399f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-155f)), _wgslsmith_f_op_f32(-1870f * 874f), true)) - _wgslsmith_f_op_f32(step(-444f, _wgslsmith_f_op_f32(1086f - -627f))))));
    global1 = true;
    let var_1 = -1i;
    var var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0), vec2<u32>(16773u, 1u))), countOneBits(arg_0) >> (u_input.d % 32u)), select(firstTrailingBit(countOneBits(vec2<u32>(arg_0, 108728u))), vec2<u32>(_wgslsmith_add_u32(~1u, countOneBits(1u)), reverseBits(1u)), 1u >= arg_0));
    let var_3 = _wgslsmith_mult_u32(4294967295u, ~(arg_0 ^ ~0u)) <= arg_0;
    return Struct_2(global2[_wgslsmith_index_u32(u_input.d, 12u)]);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 12u)]);
    var var_1 = Struct_1(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -2898f));
    let var_2 = vec4<i32>(u_input.b, -u_input.b, 26381i, global0.x);
    var_0 = func_5(_wgslsmith_add_u32(abs(~19457u), arg_0), func_4(arg_0 >= max(arg_0, 22766u), 1i, _wgslsmith_clamp_i32(~u_input.b, func_2(vec4<bool>(false, false, false, false)), abs(-15999i))) & abs(countOneBits(var_2.x >> (arg_0 % 32u))));
    var var_3 = Struct_2(var_0.a);
    return -709f;
}

fn func_6(arg_0: i32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(374f))) < _wgslsmith_f_op_f32(func_1(102700u));
    let var_1 = 693f;
    let var_2 = u_input.b;
    global2 = array<Struct_1, 12>();
    global1 = _wgslsmith_sub_i32(~func_4(true, -8087i, arg_0 ^ 5525i), -18478i) > -32511i;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-260f)), -625f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 12>();
    let var_0 = func_6(-5861i, _wgslsmith_f_op_f32(func_1(9176u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~32765u, _wgslsmith_mult_i32(~u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -64313i), vec3<i32>(global0.x, -2147483647i, global0.x)))).a.b - _wgslsmith_f_op_f32(-var_0.a.b)));
    var var_2 = var_0.a.b;
    let var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1752f))), var_0.a.b, 270f), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(global0.x, 0i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.c, -23610i))), func_4(true, firstTrailingBit(-17130i), -47476i)), u_input.c, global0.x), Struct_2(func_6(-25170i, 259f).a), -2273f);
    var_2 = 644f;
    let var_4 = select(vec4<bool>(!all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), true, false, !(_wgslsmith_f_op_f32(var_1 + var_1) <= _wgslsmith_f_op_f32(-1320f * var_0.a.a))), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), !(!all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(508f * var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1, -288f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), max(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -31036i, global0.x, u_input.c), vec4<i32>(u_input.c, global0.x, 871i, var_3.b.x), vec4<i32>(1i, global0.x, global0.x, -30649i)), vec4<i32>(global0.x, global0.x, 45007i, global0.x) >> (vec4<u32>(u_input.d, 39590u, u_input.a, 0u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(var_3.b.x, -27837i, -1i, var_3.b.x) ^ vec4<i32>(u_input.b, u_input.b, 16273i, -2147483647i), reverseBits(vec4<i32>(var_3.b.x, 3623i, -2147483647i, -2147483647i)), false), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.c, global0.x, global0.x, 35250i), vec4<i32>(-79869i, 25733i, var_3.b.x, -10906i) << (vec4<u32>(u_input.d, 4294967295u, 1u, u_input.a) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, _wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(func_1(u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -895f)) - var_3.a.xyz), vec2<u32>(max(54967u, u_input.d), u_input.d));
}

