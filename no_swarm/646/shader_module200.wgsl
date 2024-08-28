struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 16143i;

var<private> global1: array<f32, 27> = array<f32, 27>(1000f, -1131f, 218f, 1000f, 1568f, -694f, 1112f, 2088f, 379f, -944f, -654f, -2224f, 664f, -1000f, 143f, 200f, 195f, -1450f, -418f, -913f, -1232f, 1484f, -807f, 1000f, 1280f, -140f, -116f);

var<private> global2: array<i32, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], -946f, 107f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(123f, global1[_wgslsmith_index_u32(8509u, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]) * vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(72179u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], -1925f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1025f, -1341f, global1[_wgslsmith_index_u32(45511u, 27u)]), vec3<f32>(340f, 967f, -2328f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a, 27u)], 828f)))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 27u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a, 27u)] - _wgslsmith_f_op_f32(-538f - global1[_wgslsmith_index_u32(33453u, 27u)])) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-175f, global1[_wgslsmith_index_u32(u_input.a, 27u)]) + _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a, 27u)]))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_0.a.x, global1[_wgslsmith_index_u32(28970u, 27u)], 358f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a))), var_0.a, vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec2<bool>(false, true)) & select(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(-var_0.a.x))))));
    global1 = array<f32, 27>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.x)) * -926f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 27u)], -1348f))) * var_1.a.x), -2303f)));
    var var_3 = abs(reverseBits(~firstLeadingBit(vec4<u32>(10560u, u_input.a, u_input.a, 1u))));
    return vec2<u32>(2326u, ~_wgslsmith_mod_u32(~0u, var_3.x) | _wgslsmith_mult_u32(9394u, ~var_3.x));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = vec4<u32>(((13113u ^ arg_0.x) & _wgslsmith_dot_vec2_u32(func_3(), ~vec2<u32>(1u, arg_0.x))) >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 1u, arg_0.x)), arg_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0, arg_0), u_input.a), 6445u) % 32u), _wgslsmith_div_u32(0u, ~max(~u_input.a, 6348u)), u_input.a, u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(abs(countOneBits(2483u)), 27u)])), 1173f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(904f + -1768f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 27u)] + global1[_wgslsmith_index_u32(32746u, 27u)])))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-171f, 1227f))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))))), vec2<bool>(true, false)));
    global2 = array<i32, 8>();
    let var_2 = -(global2[_wgslsmith_index_u32(~4294967295u, 8u)] | abs(-1i));
    var var_3 = vec3<i32>(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(-1i, 17080i, 19113i, 50705i)) ^ abs(min(vec4<i32>(u_input.c, u_input.b, -18989i, var_2), vec4<i32>(global2[_wgslsmith_index_u32(12339u, 8u)], 0i, -17964i, 0i))), firstLeadingBit(select(vec4<i32>(-2147483647i, 1i, var_2, var_2) | vec4<i32>(-27223i, global2[_wgslsmith_index_u32(33856u, 8u)], 35114i, global2[_wgslsmith_index_u32(arg_0.x, 8u)]), countOneBits(vec4<i32>(-20118i, 9678i, -22116i, u_input.c)), vec4<bool>(true, true, true, true)))), ~reverseBits(-min(u_input.c, u_input.b)), u_input.b);
    return ~(-(global2[_wgslsmith_index_u32(arg_0.x, 8u)] ^ -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(22423i, u_input.d))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<f32, 27>();
    var var_0 = arg_1.a.x;
    global0 = min(~(~reverseBits(~(-2147483647i))), func_2(vec2<u32>(_wgslsmith_add_u32(4294967295u, 2493u & u_input.a), _wgslsmith_sub_u32(abs(u_input.a), _wgslsmith_mod_u32(u_input.a, 1u)))));
    let var_1 = arg_1;
    global1 = array<f32, 27>();
    return ~(~(~abs(vec2<u32>(109491u, u_input.a) ^ vec2<u32>(4294967295u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 8>();
    var var_0 = _wgslsmith_clamp_vec2_u32(max(~(~vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(26913u, u_input.a), func_1(true, Struct_1(vec3<f32>(-147f, global1[_wgslsmith_index_u32(u_input.a, 27u)], 1131f), global1[_wgslsmith_index_u32(u_input.a, 27u)])))) | _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a) | _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 4294967295u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), vec2<bool>(true, false)) ^ ~vec2<u32>(7070u, u_input.a)), ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, 10919u), vec2<u32>(u_input.a, 23104u)), vec2<u32>(1u, 4294967295u)) << (vec2<u32>(0u, _wgslsmith_add_u32(u_input.a, 23980u >> (u_input.a % 32u))) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mult_u32(~1u >> (u_input.a % 32u), 65913u), 4294967295u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-273f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a, 27u)]))), _wgslsmith_f_op_f32(1f + -306f))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_3().x, 27u)]));
    let var_2 = vec4<u32>(var_0.x, ~(~var_0.x), ~(~_wgslsmith_add_u32(var_0.x ^ var_0.x, _wgslsmith_mod_u32(u_input.a, 0u))), ~_wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(u_input.a, 82351u)), ~0u ^ ~var_0.x));
    let var_3 = global2[_wgslsmith_index_u32(4294967295u, 8u)] & ~(-2147483647i);
    var var_4 = _wgslsmith_div_vec3_u32(abs(~(~var_2.xwx)), vec3<u32>(~(~0u), 4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-u_input.c, var_3)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(440i, var_3), ~vec2<i32>(global2[_wgslsmith_index_u32(var_4.x, 8u)], 0i)))), _wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14473u, 27u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5188u, 27u)]) * _wgslsmith_div_f32(-495f, -642f)))), var_0.x, ~select(1u, func_3().x, true));
}

