struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<i32>(-2625i, 21760i, 32371i), vec3<u32>(33346u, 1u, 48268u)), Struct_2(vec3<i32>(26603i, 29208i, -17794i), vec3<u32>(797u, 9479u, 126032u)), Struct_2(vec3<i32>(1i, 41530i, 4677i), vec3<u32>(86182u, 60294u, 0u)), Struct_2(vec3<i32>(-29257i, 1i, i32(-2147483648)), vec3<u32>(1u, 60888u, 1u)), Struct_2(vec3<i32>(-9218i, 1i, 66884i), vec3<u32>(4294967295u, 26424u, 96197u)), Struct_2(vec3<i32>(-3865i, 0i, 1i), vec3<u32>(4294967295u, 1u, 0u)), Struct_2(vec3<i32>(17929i, -76560i, -1i), vec3<u32>(0u, 1u, 0u)), Struct_2(vec3<i32>(0i, 3658i, -64055i), vec3<u32>(24131u, 55929u, 50179u)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 60885i), vec3<u32>(35899u, 22072u, 4294967295u)), Struct_2(vec3<i32>(29599i, 2147483647i, 1i), vec3<u32>(13877u, 22419u, 4294967295u)), Struct_2(vec3<i32>(-19816i, 27989i, 2147483647i), vec3<u32>(47013u, 1u, 0u)), Struct_2(vec3<i32>(i32(-2147483648), -8021i, 21877i), vec3<u32>(0u, 0u, 9369u)), Struct_2(vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<u32>(4294967295u, 4294967295u, 23225u)), Struct_2(vec3<i32>(-50121i, -2196i, -14562i), vec3<u32>(21041u, 1u, 4605u)));

var<private> global1: array<f32, 27>;

var<private> global2: vec3<f32> = vec3<f32>(-1636f, 758f, -1026f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> u32 {
    global2 = vec3<f32>(-2633f, _wgslsmith_f_op_f32(ceil(global2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(910f, global1[_wgslsmith_index_u32(u_input.a, 27u)])))) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.e | 67542u, 27u)])))));
    let var_0 = _wgslsmith_f_op_f32(-465f + _wgslsmith_f_op_f32(select(arg_1.c.a, _wgslsmith_f_op_f32(245f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f * global1[_wgslsmith_index_u32(1u, 27u)]) + -1295f)), true)));
    let var_1 = ~(_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(arg_1.e, 32851u, 12287u, arg_1.e)), vec4<u32>(arg_1.b.x, arg_1.e, ~4294967295u, min(u_input.a, arg_1.e))) | abs(_wgslsmith_sub_u32(arg_1.e, arg_1.b.x) ^ (0u & u_input.a)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(172f, var_0, global1[_wgslsmith_index_u32(52909u, 27u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1292f, arg_1.c.a, arg_1.d.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-910f, global2.x, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-496f, -956f), 214f, 295f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(42144u, 27u)] - arg_1.c.a) + -952f), 856f, 1552f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1028f, arg_1.d.a), _wgslsmith_f_op_f32(step(2146f, 831f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 27u)] - global2.x)) - vec3<f32>(var_0, arg_1.d.a, var_0))));
    global1 = array<f32, 27>();
    return 0u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global1 = array<f32, 27>();
    var var_0 = Struct_3(true, vec4<u32>(~func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), true), Struct_3(false, vec4<u32>(1u, 1u, 1u, arg_0.b.x), Struct_1(1608f, arg_0.a.xy, arg_2.b.x), arg_2, 20899u)), 0u, arg_0.b.x, ~max(u_input.a ^ u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 108107u), arg_0.b))), arg_2, arg_2, firstTrailingBit(arg_0.b.x));
    let var_1 = Struct_3(!(!all(!vec2<bool>(var_0.a, true))), ~min(vec4<u32>(reverseBits(54936u), _wgslsmith_dot_vec4_u32(var_0.b, var_0.b), arg_0.b.x, u_input.a), ~(~vec4<u32>(32647u, 0u, 4294967295u, var_0.e))), arg_2, arg_2, 1u);
    let var_2 = _wgslsmith_f_op_f32(abs(-943f));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a)))), -565f, _wgslsmith_f_op_f32(-1626f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_mod_u32(4762u, 1u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(round(273f)), true)), 1415f, _wgslsmith_f_op_f32(abs(-628f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1410f)))))));
    let var_1 = func_2(global0[_wgslsmith_index_u32(u_input.a, 14u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(120f, arg_1.x, global1[_wgslsmith_index_u32(49985u, 27u)], -837f), vec4<f32>(-1427f, global2.x, 1133f, var_0.x)))))), Struct_1(global2.x, -(vec2<i32>(1i, 1i) & _wgslsmith_div_vec2_i32(vec2<i32>(0i, -12969i), vec2<i32>(u_input.b, u_input.b))), _wgslsmith_mult_i32(-27618i, -1i)));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), var_0.x, 1000f) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 27u)] - arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(415f))), any(vec4<bool>(true, true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(arg_1.x * var_0.x))), -152f, -349f));
    global2 = _wgslsmith_f_op_vec3_f32(-var_0.zxw);
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(~0i, min(u_input.b, -5020i), _wgslsmith_clamp_i32(0i, 44080i, -27789i))), abs(~_wgslsmith_div_vec3_i32(vec3<i32>(-61275i, 15033i, u_input.c), vec3<i32>(u_input.c, -8546i, u_input.b)))), vec3<i32>(i32(-1i) * -26148i, firstLeadingBit(0i), u_input.c));
    return min(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(67381u, 0u)), vec2<u32>(arg_2, 4294967295u)), ~(~(~vec2<u32>(4294967295u, var_1)))) ^ ~vec2<u32>(~0u, ~_wgslsmith_add_u32(59286u, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.a) ^ ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), func_1(global2.yx, _wgslsmith_f_op_vec2_f32(-global2.yx), ~0u, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 27u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(522f + global2.x))), select(vec2<i32>(1i, countOneBits(u_input.b) & (0i >> (u_input.a % 32u))), -(~vec2<i32>(u_input.b, -2147483647i)) | -min(vec2<i32>(-23825i, u_input.b), vec2<i32>(-1i, u_input.c)), all(vec2<bool>(any(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true))))), -64407i);
    var var_2 = var_1;
    let var_3 = var_2.a;
    global0 = array<Struct_2, 14>();
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-728f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 825f, false)) + -459f)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, global1[_wgslsmith_index_u32(25439u, 27u)], -1049f), vec3<f32>(-118f, var_1.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, 184f, var_1.a), vec3<f32>(var_2.a, 1519f, var_2.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(438f, var_1.a, -1608f)))))));
    let var_5 = Struct_3(false, ~select(vec4<u32>(u_input.a, reverseBits(7570u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(7609u, u_input.a)), 1u), ~vec4<u32>(u_input.a, u_input.a, 43769u, u_input.a), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_f32(1119f - global1[_wgslsmith_index_u32(0u, 27u)]), ~vec2<i32>(-86857i, firstTrailingBit(1603i)), -var_1.b.x), var_1, u_input.a);
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_5.c.c, var_5.d.c, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-13907i, -55868i, var_5.c.b.x), vec3<i32>(u_input.b, 1i, var_6.c))), select(vec3<i32>(var_5.d.c, -2147483647i, u_input.c) ^ vec3<i32>(var_2.c, var_6.c, var_6.b.x), vec3<i32>(var_5.c.c, 0i, var_5.c.c), any(vec2<bool>(var_5.a, var_5.a)))), ~_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.c, 1i, var_2.c), vec3<i32>(var_5.c.b.x, -2147483647i, u_input.c), vec3<bool>(var_5.a, false, false)), ~vec3<i32>(var_6.c, -1i, var_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~0u, 27u)])), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a, 27u)])) - _wgslsmith_f_op_f32(-606f + var_5.c.a)), 108f), -1512f));
}

