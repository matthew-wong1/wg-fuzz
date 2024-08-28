struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-11022i, -11089i, 35425i, -1i);

var<private> global1: array<bool, 12>;

var<private> global2: array<i32, 9> = array<i32, 9>(-1i, i32(-2147483648), -9684i, -19460i, -1i, 55046i, 2147483647i, 1i, -1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    let var_0 = select(vec3<bool>(any(!(!arg_0.zy)), global1[_wgslsmith_index_u32(28503u, 12u)], any(vec2<bool>(true, false))), !vec3<bool>(false, true, global1[_wgslsmith_index_u32(~1u, 12u)]), vec3<bool>(_wgslsmith_mult_i32(u_input.a.x, -1i) <= _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 9u)], global0.x, u_input.a.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec4<i32>(-23983i, u_input.a.x, 2147483647i, 2147483647i)), vec4<i32>(global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.a.x, global0.x)), false, !(true || all(arg_0.yz))));
    global2 = array<i32, 9>();
    global1 = array<bool, 12>();
    global0 = -min(~vec4<i32>(-1i >> (u_input.b.x % 32u), _wgslsmith_mult_i32(1i, -32567i), -36919i, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, global0.x, 32729i) << (vec4<u32>(47389u, 43818u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(global0.x, 6775i, -39322i, 0i)));
    global1 = array<bool, 12>();
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1824f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1381f), 219f, any(vec2<bool>(arg_0.x, global1[_wgslsmith_index_u32(57411u, 12u)])))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-345f, _wgslsmith_div_f32(-730f, -1778f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-713f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(191f, -1118f, -1279f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(124f, -120f, 562f), vec3<f32>(1803f, 1000f, -1000f))))))))));
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -527f, 413f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, 198f, arg_0)))) - vec3<f32>(_wgslsmith_f_op_f32(1676f - arg_0), _wgslsmith_f_op_f32(max(-397f, -166f)), _wgslsmith_f_op_f32(f32(-1f) * -1662f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)], false))) + vec3<f32>(arg_0, arg_0, arg_0)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 12u)] | false, any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(8953u, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)]))), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true), select(vec3<bool>(false, true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), select(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(40275u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(21180u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true), vec3<bool>(false, false, true)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], true, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 963f, arg_0), vec3<f32>(arg_0, -591f, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(624f, arg_0, arg_0), vec3<f32>(510f, arg_0, -103f))))), true));
    let var_1 = Struct_3(Struct_2(!select(select(vec2<bool>(false, true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), false), select(vec2<bool>(global1[_wgslsmith_index_u32(14748u, 12u)], global1[_wgslsmith_index_u32(0u, 12u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), !global1[_wgslsmith_index_u32(4294967295u, 12u)]), (_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) << (~102251u % 32u)) != -14451i, Struct_1(vec4<u32>(1u, u_input.b.x, ~6022u, abs(u_input.b.x)), false, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(37836u, 12u)]), vec2<bool>(true, false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)])))), Struct_2(vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false, true)), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(61890u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false))), global1[_wgslsmith_index_u32(~3656u, 12u)], Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, 34474u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 6384u, 114407u), vec4<u32>(49998u, u_input.b.x, u_input.b.x, 25103u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(62813u, u_input.b.x)), 12u)], vec2<bool>(true, true))));
    global0 = _wgslsmith_mult_vec4_i32(min(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-11347i, global0.x, arg_1.x, -1i), vec4<i32>(u_input.a.x, -25496i, arg_1.x, global0.x), vec4<i32>(u_input.a.x, arg_1.x, global2[_wgslsmith_index_u32(60013u, 9u)], 8835i))), ~vec4<i32>(-1i, ~u_input.a.x, -arg_1.x, firstTrailingBit(global2[_wgslsmith_index_u32(var_1.b.c.a.x, 9u)]))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~global0.zwx, u_input.a & vec3<i32>(-1i, global2[_wgslsmith_index_u32(48527u, 9u)], 46141i)), global2[_wgslsmith_index_u32(8207u, 9u)], u_input.a.x ^ global0.x), abs(_wgslsmith_dot_vec2_i32(countOneBits(arg_1), -vec2<i32>(global2[_wgslsmith_index_u32(var_1.b.c.a.x, 9u)], global2[_wgslsmith_index_u32(69374u, 9u)]))), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(~113497u, ~1948u)), 9u)], -1i));
    var var_2 = var_1.a;
    let var_3 = false;
    return countOneBits(select(countOneBits(vec2<i32>(-1i, -1i)), -(~vec2<i32>(0i, arg_1.x)), _wgslsmith_f_op_f32(217f + arg_0) < _wgslsmith_f_op_f32(-var_0.x))) ^ max(vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.a.xz, ~global0.yx), _wgslsmith_dot_vec4_i32(-vec4<i32>(-15013i, global0.x, 17754i, 58646i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(66721u, 9u)], 2147483647i, arg_1.x), vec4<i32>(arg_1.x, 8784i, -2147483647i, 0i), vec4<i32>(arg_1.x, global0.x, 6880i, global0.x)))), vec2<i32>(-(global0.x >> (0u % 32u)), ~(~2665i)));
}

fn func_1() -> vec2<bool> {
    global2 = array<i32, 9>();
    var var_0 = -2057f;
    var_0 = 499f;
    let var_1 = global1[_wgslsmith_index_u32(~29594u, 12u)];
    let var_2 = vec4<i32>(global2[_wgslsmith_index_u32(~u_input.b.x, 9u)], _wgslsmith_sub_i32(u_input.a.x, ~u_input.a.x), ~reverseBits(_wgslsmith_add_i32(-38364i, -9918i)), 55471i | firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.zz, global0.xy, vec2<i32>(-36813i, -36344i)), func_2(1118f, vec2<i32>(-1999i, -12317i)))));
    return vec2<bool>(all(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(2053u, 12u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 12u)]), false)), global1[_wgslsmith_index_u32(~u_input.b.x, 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 12>();
    let var_0 = select(!func_1(), func_1(), select(!vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x >= 1u), vec2<bool>(true, all(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)]))), global1[_wgslsmith_index_u32(u_input.b.x, 12u)]));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-652f, -430f, -1000f), vec3<f32>(458f, -1419f, -718f))), vec3<f32>(928f, _wgslsmith_f_op_f32(min(-404f, -435f)), _wgslsmith_f_op_f32(-483f + -557f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-468f, -1000f, 198f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1047f, -254f, 1542f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1581f, 1516f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1547f * 1064f))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1000f)))), 677f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -862f), -390f)))), select(vec3<bool>(func_1().x, var_0.x, var_0.x), select(select(vec3<bool>(var_0.x, false, false), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 12u)], true, global1[_wgslsmith_index_u32(0u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false, var_0.x), vec3<bool>(true, global1[_wgslsmith_index_u32(5565u, 12u)], true)), true), !(!vec3<bool>(false, var_0.x, false)), select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false, false), vec3<bool>(true, var_0.x, var_0.x), false), vec3<bool>(var_0.x, false, true), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 12u)], false)))), func_1().x)));
    var var_2 = u_input.b.x;
    var var_3 = var_1.x;
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(~1u, 9u)], ((global2[_wgslsmith_index_u32(16437u, 9u)] << (u_input.b.x % 32u)) << ((4294967295u >> (u_input.b.x % 32u)) % 32u)) ^ global0.x, -1i, u_input.a.x), vec4<i32>(-1i, _wgslsmith_sub_i32(u_input.a.x, reverseBits(2440i)), u_input.a.x, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(24727i, global0.x), global0.xw), select(u_input.a.yy, vec2<i32>(global2[_wgslsmith_index_u32(1u, 9u)], u_input.a.x), var_0)))), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.xy, u_input.a.xy << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0.wz, u_input.a.xz), -u_input.a.x, -55309i), global0.x, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b.x, 4294967295u, 33094u) ^ vec3<u32>(u_input.b.x, 15506u, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(45912u, u_input.b.x, 0u), vec3<u32>(48607u, u_input.b.x, u_input.b.x))), 9u)], -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~min(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 29259u, 55526u, 1u), vec4<u32>(29101u, 0u, 4294967295u, 1u), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 1u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), func_2(_wgslsmith_f_op_f32(-var_1.x), global0.xx).x, var_1.x, 320f);
}

