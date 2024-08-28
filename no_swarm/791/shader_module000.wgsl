struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: vec2<i32>;

var<private> global2: bool;

var<private> global3: array<u32, 27> = array<u32, 27>(1u, 0u, 1u, 0u, 39756u, 152128u, 10573u, 83740u, 1u, 9745u, 4294967295u, 0u, 0u, 4294967295u, 4294967295u, 2697u, 58996u, 0u, 63839u, 10792u, 1u, 1u, 4294967295u, 1823u, 14575u, 13535u, 13571u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_2(u_input.e, global1.x, arg_2, Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(u_input.c & vec3<u32>(4294967295u, u_input.c.x, 4294967295u), vec3<u32>(1u, u_input.c.x, 8489u))), vec3<u32>(101340u, _wgslsmith_dot_vec2_u32(u_input.c.xy | u_input.c.zx, ~vec2<u32>(arg_0.x, arg_0.x)), 94700u >> (arg_0.x % 32u)), ~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], 4294967295u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), arg_0.xyz), vec3<u32>(53866u, 4294967295u, 0u)), select(vec2<bool>(all(vec4<bool>(false, false, true, global0.x)), false), !(!vec2<bool>(global0.x, global0.x)), vec2<bool>(any(vec4<bool>(false, false, global0.x, false)), true)), vec4<u32>(u_input.c.x, select(u_input.c.x, arg_0.x, global0.x), _wgslsmith_add_u32(u_input.c.x, 1u), ~u_input.c.x) | (countOneBits(vec4<u32>(5950u, arg_0.x, global3[_wgslsmith_index_u32(12458u, 27u)], u_input.c.x)) | vec4<u32>(u_input.c.x, 72655u, arg_0.x, u_input.c.x))));
    let var_1 = arg_0.x;
    global1 = _wgslsmith_mod_vec2_i32(-var_0.a, ~(~(vec2<i32>(16738i, -102309i) >> (arg_0.ww % vec2<u32>(32u))) << (u_input.c.yx % vec2<u32>(32u))));
    var var_2 = Struct_3(1u);
    let var_3 = Struct_3(_wgslsmith_dot_vec4_u32(max(abs(max(vec4<u32>(1u, 0u, arg_0.x, var_2.a), arg_0)), vec4<u32>(_wgslsmith_clamp_u32(var_1, global3[_wgslsmith_index_u32(var_2.a, 27u)], 54451u), ~global3[_wgslsmith_index_u32(0u, 27u)], ~u_input.c.x, _wgslsmith_div_u32(28642u, var_0.d.c.x))), vec4<u32>(var_2.a, var_2.a, reverseBits(17572u), arg_0.x)));
    return !vec3<bool>(var_2.a >= 82289u, global0.x | true, true);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = select(select(vec3<bool>(all(vec3<bool>(global0.x, false, global0.x)), global0.x, global0.x), select(!vec3<bool>(global0.x, true, global0.x), func_3(min(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 27u)], 27u)], u_input.c.x, 74910u, 4294967295u), vec4<u32>(104248u, 104804u, 21195u, u_input.c.x)), _wgslsmith_div_i32(u_input.b, -20737i), _wgslsmith_f_op_f32(f32(-1f) * -1121f)), _wgslsmith_add_u32(u_input.c.x, u_input.c.x) > 1u), select(select(!vec3<bool>(false, global0.x, global0.x), func_3(vec4<u32>(1u, 9012u, global3[_wgslsmith_index_u32(arg_0.x, 27u)], arg_0.x), u_input.d.x, arg_1.x), func_3(vec4<u32>(u_input.c.x, 29402u, arg_0.x, 0u), u_input.e.x, 381f)), vec3<bool>(any(vec3<bool>(global0.x, false, global0.x)), arg_1.x >= 1750f, false && global0.x), select(func_3(vec4<u32>(51789u, global3[_wgslsmith_index_u32(arg_0.x, 27u)], global3[_wgslsmith_index_u32(u_input.c.x, 27u)], 999u), 59112i, -325f), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, true, true), false), !vec3<bool>(false, global0.x, false)))), vec3<bool>(global0.x, global0.x, false), all(select(vec3<bool>(false & global0.x, global0.x, false), vec3<bool>(any(global0.zx), all(global0.yy), arg_1.x == arg_1.x), vec3<bool>(func_3(vec4<u32>(4294967295u, arg_0.x, global3[_wgslsmith_index_u32(45843u, 27u)], 1u), -2147483647i, arg_1.x).x, false, func_3(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], 63029u, 27878u, 0u), global1.x, arg_1.x).x))));
    let var_1 = var_0.yy;
    var var_2 = _wgslsmith_f_op_f32(trunc(arg_1.x));
    var var_3 = true;
    let var_4 = Struct_2(-_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.e, u_input.e)), _wgslsmith_mult_vec2_i32(max(u_input.e, vec2<i32>(u_input.a.x, 2147483647i)), u_input.d)), i32(-1i) * -(u_input.d.x & _wgslsmith_sub_i32(u_input.d.x, global1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2072f)) * _wgslsmith_f_op_f32(ceil(1118f))))), Struct_1(~4294967295u, ~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 1u), arg_0.x ^ u_input.c.x, global3[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)]), 27u)]), arg_0, func_3(vec4<u32>(countOneBits(33709u), max(1u, arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(23269u, 27u)], 27u)], 0u, 1u, 4294967295u), vec4<u32>(108147u, global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(65735u, 27u)], u_input.c.x)), ~arg_0.x), _wgslsmith_mult_i32(u_input.e.x, -global1.x), _wgslsmith_f_op_f32(-1000f * -191f)).zz, vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 0u) ^ global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 69754u), 27u)], _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(44585u, u_input.c.x, arg_0.x, u_input.c.x), vec4<u32>(u_input.c.x, 103799u, global3[_wgslsmith_index_u32(arg_0.x, 27u)], 103728u))), u_input.c.x, global3[_wgslsmith_index_u32(0u, 27u)])));
    return Struct_3(var_4.d.c.x);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = func_2(arg_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(272f, -1782f) + vec2<f32>(-396f, 1488f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, 861f)) + vec2<f32>(1616f, 756f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2189f, -327f) * vec2<f32>(1000f, -636f)))))));
    global1 = vec2<i32>(0i, -(~1i)) << (vec2<u32>(~(~countOneBits(arg_1.a)), _wgslsmith_div_u32(arg_1.e.x, 16963u)) % vec2<u32>(32u));
    global3 = array<u32, 27>();
    global3 = array<u32, 27>();
    let var_1 = !vec4<bool>(true, false, arg_0.d.x, any(!select(vec3<bool>(true, global0.x, true), vec3<bool>(arg_0.d.x, false, false), vec3<bool>(global0.x, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2398f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~u_input.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, _wgslsmith_f_op_f32(1f - 648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(477f)) + 237f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1804f, -1636f), -1318f, _wgslsmith_f_op_f32(func_1(Struct_1(36637u, u_input.c, u_input.c, vec2<bool>(global0.x, false), vec4<u32>(109688u, 13618u, u_input.c.x, u_input.c.x)), Struct_1(u_input.c.x, u_input.c, u_input.c, vec2<bool>(false, false), vec4<u32>(u_input.c.x, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], global3[_wgslsmith_index_u32(1u, 27u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(109f, -441f, -569f), vec3<f32>(-1000f, -1031f, -600f), global0.x))))));
    global1 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a.xz), firstTrailingBit(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(u_input.d, u_input.d)), _wgslsmith_div_vec2_i32(~u_input.d, vec2<i32>(~(-u_input.e.x), -1i)));
    global3 = array<u32, 27>();
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_clamp_i32(-28805i, 1i, 19208i), ~max(5534i, u_input.e.x), min(u_input.b, global1.x)), firstTrailingBit(u_input.a));
    let var_2 = Struct_2(countOneBits(firstLeadingBit(u_input.d)), global1.x, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1803f)))), Struct_1(~0u, u_input.c | u_input.c, vec3<u32>(1u, 8901u, ~(~global3[_wgslsmith_index_u32(7836u, 27u)])), global0.xx, ~vec4<u32>(17907u, _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(19147u, 27u)]), u_input.c.x & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)] << (74199u % 32u))));
    var var_3 = !(firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.b.x, var_2.d.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 27u)]), vec3<u32>(7962u, 1u, 18288u))) != ~(~27505u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, var_1.x, var_1.x, var_1.x) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, 217f, 1518f))))) - vec4<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(f32(-1f) * -2514f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-521f + var_2.c), _wgslsmith_div_f32(var_2.c, 1000f), false)))), 1622f, var_2.d.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(108f, var_1.x, -548f, var_2.c), vec4<f32>(274f, var_2.c, var_2.c, -753f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_1.x, -1680f, var_2.c))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, var_1.x, var_2.c, var_2.c), vec4<f32>(var_2.c, var_2.c, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2034f, var_1.x, 1104f, -798f), vec4<f32>(-460f, var_2.c, var_2.c, var_2.c), var_2.d.d.x)))))), vec3<i32>(u_input.a.x, -firstTrailingBit(u_input.e.x ^ 0i), -u_input.a.x));
}

