struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-27634i, vec2<f32>(799f, 678f), 0u, vec2<f32>(276f, -108f), vec3<u32>(23030u, 0u, 0u));

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: f32;

var<private> global3: array<bool, 13>;

var<private> global4: array<bool, 7> = array<bool, 7>(false, true, false, true, true, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = 4294967295u << (_wgslsmith_div_u32(0u, ~(u_input.b.x >> (u_input.b.x % 32u))) % 32u);
    let var_1 = Struct_2(Struct_1(-1i, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 633f) - vec2<f32>(1778f, global0.d.x)), vec2<f32>(global0.d.x, global0.d.x), true)), vec2<f32>(_wgslsmith_f_op_f32(floor(global0.b.x)), 420f))), u_input.b.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-296f, global0.d.x) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-362f, -1891f)))), global0.b)), global0.e), vec4<bool>(true, global4[_wgslsmith_index_u32(~(~(global0.e.x >> (u_input.b.x % 32u))), 7u)], true, global4[_wgslsmith_index_u32(97238u, 7u)]));
    let var_2 = Struct_1(-_wgslsmith_add_i32(0i, _wgslsmith_div_i32(2147483647i, u_input.a) & (u_input.a ^ 1i)), global0.b, countOneBits(abs(global0.e.x | global0.e.x) >> (4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x * -1562f)), global0.b.x)), var_1.a.e);
    var var_3 = Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.a.b)) + var_2.b) - _wgslsmith_f_op_vec2_f32(-var_2.b)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(270f - global0.b.x))))), 13195u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(var_2.b - var_1.a.b)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_2.b))))))), abs(~var_2.e) & countOneBits(global0.e));
    var_3 = Struct_1(-(~(-(arg_0.x << (0u % 32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b) - vec2<f32>(var_3.b.x, -2316f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d + vec2<f32>(-644f, var_3.d.x)))), ~(~_wgslsmith_mod_u32(var_3.e.x, abs(var_2.c))), global0.b, select(vec3<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 90485u, 97345u, 57390u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_3.c)), abs(global0.c)), ~(var_2.e.x | var_2.e.x)), _wgslsmith_div_vec3_u32(var_3.e, ~(~var_2.e)), select(var_1.b.yxz, !select(vec3<bool>(var_1.b.x, var_1.b.x, false), var_1.b.wxy, var_1.b.x), select(vec3<bool>(true, false, false), !vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 7u)], true), !global3[_wgslsmith_index_u32(16759u, 13u)]))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1055f)) - -939f)), _wgslsmith_f_op_f32(f32(-1f) * -1295f)));
}

fn func_2() -> Struct_1 {
    global3 = array<bool, 13>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(-2147483647i, -1i, u_input.a, global0.a))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.b.x, 1832f, true)))) * _wgslsmith_f_op_f32(-global0.d.x)));
    global1 = array<vec2<bool>, 9>();
    let var_1 = vec2<bool>(global3[_wgslsmith_index_u32(~(~26407u), 13u)], global4[_wgslsmith_index_u32(~27185u, 7u)]);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(237f, global0.d.x, 738f)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -515f), _wgslsmith_f_op_f32(abs(global0.b.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1840f, var_0.x, -374f), vec3<f32>(global0.d.x, global0.b.x, -526f))))))))));
    return Struct_1(i32(-1i) * -1i, vec2<f32>(-175f, 813f), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.e.x, u_input.b.x, 4294967295u, 39614u), reverseBits(vec4<u32>(global0.c, global0.e.x, global0.c, u_input.b.x)))) << (u_input.b.x % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, global0.b.x), global0.d))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, var_2.x), var_2.zy))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + vec2<f32>(-1216f, var_0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, global0.b.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(-991f, var_0.x), var_0)))), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.c, u_input.b.x, 4294967295u), countOneBits(global0.e)), ~(~global0.e), !vec3<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, false)) << (~reverseBits(vec3<u32>(global0.c, 15868u, 39200u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-508f - global0.d.x))) - global0.b.x)));
    let var_1 = global0.c;
    let var_2 = func_2();
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(global0.a, ~(-reverseBits(-39523i))), ~(-(~arg_2.yy) >> (~global0.e.yz % vec2<u32>(32u))));
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.x, -683f, 1223f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.b.x, -2550f, 857f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1457f, -1101f, 469f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(190f, 2070f, -1122f), vec3<f32>(var_2.d.x, 512f, global0.d.x))), vec3<f32>(var_2.b.x, -918f, 1812f), select(arg_1.x, true, false))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, 392f, var_2.b.x) - vec3<f32>(246f, -140f, -148f)))))));
    return Struct_2(var_2, select(vec4<bool>(arg_0, !all(vec4<bool>(global4[_wgslsmith_index_u32(var_2.e.x, 7u)], true, false, global3[_wgslsmith_index_u32(u_input.b.x, 13u)])), !arg_0, global3[_wgslsmith_index_u32(~17775u, 13u)]), vec4<bool>(false, false, false, true), global4[_wgslsmith_index_u32(2021u, 7u)]));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global0 = Struct_1(_wgslsmith_add_i32(arg_2.a.a >> (arg_1 % 32u), _wgslsmith_clamp_i32(1i, global0.a, countOneBits(-10307i))), _wgslsmith_f_op_vec2_f32(sign(global0.b)), ~_wgslsmith_mod_u32(46970u, global0.c), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(arg_3.x, 749i, arg_3.x, global0.a)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global0.d.x, 1348f))), _wgslsmith_f_op_f32(ceil(global0.b.x))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.e.x, 4294967295u, arg_2.a.c), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.a.c, arg_1, arg_2.a.c), global0.e), vec3<u32>(u_input.b.x, 2009u, 48935u))));
    var var_0 = func_1(global3[_wgslsmith_index_u32(max(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, arg_1, 50118u), ~37742u)), 13u)], !(!select(select(arg_2.b.xyy, arg_2.b.xyz, arg_2.b.xxy), arg_2.b.xxz, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_3.x, 15786i), _wgslsmith_dot_vec2_i32(arg_3.xy, arg_3.yx), arg_2.a.a, select(global0.a, u_input.a, func_1(true, vec3<bool>(true, true, arg_2.b.x), vec4<i32>(global0.a, -557i, -45910i, global0.a)).b.x)), abs(min(vec4<i32>(arg_3.x, arg_3.x, arg_3.x, 1i), vec4<i32>(u_input.a, u_input.a, 0i, 46277i)) | vec4<i32>(0i, u_input.a, global0.a, 17587i)))).b.x;
    let var_1 = 4294967295u;
    let var_2 = !vec4<bool>(all(!vec2<bool>(false, arg_2.b.x)) && global4[_wgslsmith_index_u32(var_1, 7u)], !(_wgslsmith_f_op_f32(-616f - arg_0) < _wgslsmith_f_op_f32(-446f + global0.d.x)), true, true);
    global4 = array<bool, 7>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-532f, firstTrailingBit(countOneBits(4294967295u) >> (global0.e.x % 32u)) | global0.e.x, func_1(all(vec2<bool>(true, global0.d.x >= global0.b.x)), !(!select(vec3<bool>(false, true, true), vec3<bool>(true, global4[_wgslsmith_index_u32(global0.c, 7u)], global3[_wgslsmith_index_u32(1u, 13u)]), global4[_wgslsmith_index_u32(u_input.b.x, 7u)])), vec4<i32>(-55736i, 1615i, u_input.a, u_input.a)), countOneBits(vec3<i32>(1i, -u_input.a, u_input.a & global0.a)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, ~global0.a, _wgslsmith_div_i32(global0.a, 37486i)), reverseBits(firstTrailingBit(vec3<i32>(-4765i, -2147483647i, 13700i)))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_sub_vec3_u32(var_1.a.e, ~global0.e);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(_wgslsmith_f_op_f32(max(func_1(var_1.b.x, var_0.b.xxz, vec4<i32>(var_1.a.a, -11196i, -29483i, -2147483647i)).a.d.x, _wgslsmith_f_op_f32(-var_1.a.b.x))), ~global0.e.x, Struct_2(Struct_1(global0.a, vec2<f32>(var_1.a.b.x, -359f), u_input.b.x, vec2<f32>(global0.d.x, 996f), vec3<u32>(var_1.a.e.x, 8927u, var_2.x)), !vec4<bool>(false, var_1.b.x, var_0.b.x, global3[_wgslsmith_index_u32(1u, 13u)])), -reverseBits(vec3<i32>(global0.a, 2147483647i, 1i))).a.b.x) * _wgslsmith_f_op_f32(-var_1.a.d.x));
    let var_4 = _wgslsmith_sub_vec2_u32(min(var_2.zy, vec2<u32>(65248u, abs(~var_0.a.c))), vec2<u32>(_wgslsmith_clamp_u32(0u, global0.c, ~(~u_input.b.x)), 37328u));
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2085f)) + 730f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_i32(select(~vec4<i32>(var_0.a.a, var_1.a.a, var_1.a.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, 2147483647i, -35608i, -34497i), vec4<i32>(u_input.a, -1i, var_1.a.a, var_0.a.a)), global0.c != var_0.a.c), select(vec4<i32>(var_1.a.a, 1i, 2147483647i, 0i), vec4<i32>(2147483647i, -2147483647i, var_1.a.a, -2147483647i) >> (vec4<u32>(var_0.a.e.x, var_4.x, 9279u, var_2.x) % vec4<u32>(32u)), vec4<bool>(global4[_wgslsmith_index_u32(var_4.x, 7u)], false, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(select(1i, ~var_0.a.a, any(vec3<bool>(global3[_wgslsmith_index_u32(37125u, 13u)], global4[_wgslsmith_index_u32(38394u, 7u)], true))), _wgslsmith_mult_i32(var_0.a.a, -27723i) ^ u_input.a, u_input.a, (33496i | u_input.a) & var_0.a.a))));
    var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, var_5.x, global0.d.x, 426f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-806f, func_1(true, vec3<bool>(global4[_wgslsmith_index_u32(global0.e.x, 7u)], var_0.b.x, var_1.b.x), -vec4<i32>(global0.a, var_0.a.a, var_0.a.a, global0.a)).a.b.x, _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1367f) + _wgslsmith_f_op_f32(-942f + var_0.a.d.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -377f), -998f, -479f) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(101f, -1167f, global0.d.x, -1000f) * vec4<f32>(var_5.x, var_0.a.b.x, var_0.a.b.x, -237f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_5.x, -295f, var_5.x, 398f))))))), _wgslsmith_dot_vec2_u32(~func_2().e.yz, var_1.a.e.xz), -1000f, ~var_1.a.a, -380f);
}

