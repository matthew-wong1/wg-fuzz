struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, -1405f);

var<private> global2: array<u32, 30> = array<u32, 30>(54580u, 79178u, 4294967295u, 1u, 94401u, 4294967295u, 72005u, 0u, 27700u, 66726u, 0u, 1u, 4294967295u, 17905u, 27313u, 1u, 70565u, 1u, 63155u, 26137u, 0u, 47087u, 16356u, 36305u, 1u, 69341u, 38749u, 0u, 0u, 68879u);

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(393f), Struct_2(624f), Struct_2(-170f), Struct_2(1389f), Struct_2(-922f), Struct_2(-1420f), Struct_2(259f), Struct_2(-2092f), Struct_2(-252f), Struct_2(190f), Struct_2(-1781f), Struct_2(368f), Struct_2(-1910f), Struct_2(-1569f), Struct_2(-1000f), Struct_2(-957f), Struct_2(1000f), Struct_2(-1465f), Struct_2(-208f), Struct_2(-705f));

var<private> global4: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(-541f), Struct_2(985f), Struct_2(1816f), Struct_2(651f), Struct_2(-1372f), Struct_2(973f), Struct_2(277f), Struct_2(-2398f), Struct_2(1519f), Struct_2(843f), Struct_2(1393f), Struct_2(-141f), Struct_2(-453f), Struct_2(-1984f), Struct_2(-506f), Struct_2(-1535f), Struct_2(1825f), Struct_2(-192f), Struct_2(244f), Struct_2(1104f), Struct_2(601f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    var var_0 = 1i;
    let var_1 = global0.c;
    global4 = array<Struct_2, 21>();
    global2 = array<u32, 30>();
    var var_2 = global4[_wgslsmith_index_u32(1u, 21u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(112f, global1.x)), _wgslsmith_f_op_f32(step(global1.x, global1.x))))))), arg_2.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1708f))))));
    var_0 = global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(0u, 31010u), ~44630u, 31516u), ~(~69452u)), 30u)], 20u)];
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(869f - global1.x), _wgslsmith_f_op_f32(floor(858f)), global0.c)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(ceil(global1.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1490f + -1373f))), _wgslsmith_f_op_f32(-409f * _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a)))), var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(0u, arg_0, true), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a, global1.x), vec2<f32>(var_0.a, global1.x))), arg_0 | arg_0)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-640f, 1076f), var_0.a)), !(global0.c != global0.c))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x))), _wgslsmith_f_op_f32(trunc(268f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(-186f, 420f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, var_1.x, var_0.a, -1000f), vec4<f32>(-127f, var_0.a, -198f, global1.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, global1.x, var_1.x, 303f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1660f, var_0.a, 793f)) + vec4<f32>(var_1.x, var_1.x, 149f, -484f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(245f - global1.x), -417f, _wgslsmith_f_op_f32(var_0.a * -361f)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.x);
    return Struct_2(386f);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = select(vec2<bool>(_wgslsmith_dot_vec4_u32(u_input.a << (vec4<u32>(4294967295u, 39899u, 9792u, global0.a) % vec4<u32>(32u)), u_input.a) != global2[_wgslsmith_index_u32(countOneBits(global0.a) ^ 73620u, 30u)], global0.c), vec2<bool>(all(select(select(vec2<bool>(false, global0.c), vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, global0.c)), select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, true), false), !vec2<bool>(global0.c, false))), any(select(!vec4<bool>(false, false, global0.c, global0.c), !vec4<bool>(true, global0.c, global0.c, false), vec4<bool>(global0.c, global0.c, true, global0.c)))), !(!vec2<bool>(false, !global0.c)));
    global2 = array<u32, 30>();
    global3 = array<Struct_2, 20>();
    let var_1 = _wgslsmith_clamp_vec4_i32(~(countOneBits(-vec4<i32>(1i, global0.b, global0.b, 0i)) | firstLeadingBit(-vec4<i32>(global0.b, 10475i, -2147483647i, -2147483647i))), vec4<i32>(~select(arg_2.x, 0i, all(vec4<bool>(true, global0.c, var_0.x, global0.c))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), min(vec4<i32>(arg_2.x, 2147483647i, -28143i, arg_2.x), vec4<i32>(1i, -13521i, 2147483647i, global0.b))), global0.b, _wgslsmith_sub_i32(-18550i, ~firstTrailingBit(2147483647i))), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.x, arg_2.x), -arg_2.yy) >> (u_input.a.x % 32u), arg_2.x, -1i, _wgslsmith_sub_i32(firstLeadingBit(arg_2.x), arg_2.x)));
    let var_2 = false == ((!any(vec4<bool>(global0.c, false, global0.c, true)) == any(select(vec2<bool>(var_0.x, var_0.x), var_0, true))) & !(!any(vec4<bool>(true, var_0.x, false, var_0.x))));
    return func_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.x, abs(-1i)) | arg_2.x, abs(global0.b)));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = func_4(func_2((i32(-1i) * -global0.b) & -30312i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, _wgslsmith_f_op_f32(trunc(-779f)), _wgslsmith_f_op_f32(min(arg_0.x, global1.x))) - vec3<f32>(874f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f - 299f)), arg_0.x)), vec3<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, global0.b, 24907i), vec3<i32>(-19641i, -2410i, -1i)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(global0.a, 30u)], 55753u, u_input.b.x), u_input.a) % 32u), 1i), -1i, 26215i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0))));
    global3 = array<Struct_2, 20>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)), -1000f, arg_0.x);
    var var_2 = any(select(select(select(vec2<bool>(global0.c, global0.c), !vec2<bool>(global0.c, global0.c), vec2<bool>(global0.c, true)), select(vec2<bool>(global0.c, global0.c), !vec2<bool>(true, global0.c), !global0.c), max(global0.b, global0.b) != (1i << (global2[_wgslsmith_index_u32(1u, 30u)] % 32u))), !vec2<bool>(global0.c, !global0.c), global0.c));
    var var_3 = ~abs(max(vec3<i32>(-1i) * -vec3<i32>(-1i, -27398i, -2147483647i), -vec3<i32>(2147483647i, -21817i, 2147483647i) ^ (vec3<i32>(14008i, 1293i, global0.b) ^ vec3<i32>(global0.b, global0.b, global0.b))));
    return StorageBuffer(-firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.x, 1i, var_3.x), vec3<i32>(2147483647i, var_3.x, global0.b))) << ((u_input.a.wyy >> (u_input.a.wxw % vec3<u32>(32u))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(0i, ~global0.b, -27040i);
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-108f, -1177f))) - _wgslsmith_div_vec2_f32(vec2<f32>(1486f, -2526f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, -484f), false)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, -434f)))))));
    let var_1 = !global0.c;
    let var_2 = vec3<i32>(global0.b, global0.b, ~(-_wgslsmith_mod_i32(0i, ~var_0.x)));
    let var_3 = _wgslsmith_sub_i32(~reverseBits(-firstLeadingBit(-52243i)), -global0.b);
    let x = u_input.a;
    s_output = func_1(vec2<f32>(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(global1.x - global1.x))), -435f));
}

