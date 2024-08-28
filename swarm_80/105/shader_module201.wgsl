struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-221f, -629f), vec2<f32>(1157f, 104f), vec2<f32>(1000f, -516f), vec2<f32>(-486f, 885f), vec2<f32>(1944f, -1000f), vec2<f32>(1734f, -235f), vec2<f32>(799f, 1956f), vec2<f32>(1642f, -100f), vec2<f32>(1036f, 387f));

var<private> global1: array<i32, 12> = array<i32, 12>(-1i, 14912i, -24628i, 22615i, 14645i, 2147483647i, -23693i, 17773i, -1i, -1i, 0i, 1i);

var<private> global2: bool;

var<private> global3: array<u32, 7> = array<u32, 7>(19196u, 4294967295u, 0u, 24347u, 0u, 4458u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 12>();
    let var_0 = Struct_1(1032f, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1280f, _wgslsmith_f_op_f32(sign(643f)))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-406f, 1458f, -738f)))));
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(~(-vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 7u)], 7u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)]) | ~vec2<i32>(var_0.b, u_input.c)), -vec2<i32>(-2147483647i, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, var_0.a, 1127f) + var_0.d)) + vec3<f32>(_wgslsmith_f_op_f32(var_0.a + -794f), var_0.d.x, _wgslsmith_f_op_f32(-var_0.a))) * _wgslsmith_f_op_vec3_f32(step(var_0.d, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a, var_0.d.x, var_0.a)))))), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, 29214i, 9796i, var_0.b) ^ ~vec4<i32>(var_0.b, global1[_wgslsmith_index_u32(4294967295u, 12u)], 9226i, global1[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.b, var_0.b, var_0.b, 0i), vec4<i32>(var_0.b, u_input.c, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.b, 12u)]), ~vec4<i32>(-10894i, -33424i, global1[_wgslsmith_index_u32(u_input.b, 12u)], global1[_wgslsmith_index_u32(234u, 12u)]))), _wgslsmith_mod_i32(min(_wgslsmith_clamp_i32(2147483647i, 0i, -2147483647i), -2147483647i >> (u_input.d % 32u)), countOneBits(u_input.c)), ~var_0.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(26881i, var_0.b, var_0.b), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, -1i, global1[_wgslsmith_index_u32(0u, 12u)]), -vec3<i32>(-11396i, 1i, u_input.c)))));
    global1 = array<i32, 12>();
    global3 = array<u32, 7>();
    return var_1;
}

fn func_3(arg_0: i32) -> Struct_2 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1422f, -934f, -1000f, _wgslsmith_div_f32(863f, 604f)))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))));
    global2 = !(!all(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)));
    var var_2 = all(!vec4<bool>(any(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))), true, !(u_input.c <= u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(step(-609f, var_1.x))))));
    return Struct_2(vec2<i32>(i32(-1i) * -55540i, ~(-2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(max(1803f, -538f)), _wgslsmith_f_op_f32(-var_1.x))))), vec4<i32>(53256i, _wgslsmith_sub_i32(38753i, -(u_input.c << (4294967295u % 32u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.e.wxy), ~min(u_input.e.zxz, u_input.e.yzx)), 12u)], global1[_wgslsmith_index_u32(9549u, 12u)]));
}

fn func_2() -> bool {
    let var_0 = func_3(1i);
    global3 = array<u32, 7>();
    var var_1 = vec4<f32>(342f, var_0.b.x, -416f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-356f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1651f - -713f))))))));
    return _wgslsmith_mod_u32(64647u, 13421u) < ~(4294967295u >> ((firstTrailingBit(4294967295u) & 528u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<vec2<f32>, 9>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.b - vec3<f32>(var_0.b.x, var_0.b.x, 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -1727f, -373f) - var_0.b), vec3<f32>(-221f, 1000f, -136f)))) - vec3<f32>(278f, _wgslsmith_f_op_f32(-var_0.b.x), -1312f));
    global0 = array<vec2<f32>, 9>();
    global3 = array<u32, 7>();
    var var_2 = vec4<bool>(u_input.e.x >= ~(~4294967295u), true, true, select((all(vec2<bool>(true, true)) && all(vec2<bool>(true, true))) | select(func_2(), false, all(vec4<bool>(true, false, true, false))), all(vec2<bool>(true, false)) || false, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x))), var_0.b.x, _wgslsmith_f_op_vec2_f32(trunc(var_1.zy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1, var_1, var_2.wyy)) * vec3<f32>(-412f, var_1.x, -893f)) - vec3<f32>(-200f, func_3(-60789i).b.x, _wgslsmith_f_op_f32(f32(-1f) * -420f)))));
}

