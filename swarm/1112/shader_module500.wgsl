struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
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

var<private> global0: array<u32, 18>;

var<private> global1: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true));

var<private> global2: vec4<f32> = vec4<f32>(-929f, -1260f, 306f, 1230f);

var<private> global3: Struct_2 = Struct_2(Struct_1(2147483647i, 0u, vec4<u32>(10516u, 0u, 24535u, 7487u)), vec2<f32>(-770f, 548f), vec2<f32>(-1000f, 788f), vec2<f32>(764f, 1312f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_0 = vec2<bool>(!any(!(!global1[_wgslsmith_index_u32(129337u, 27u)])), arg_1.x);
    var var_1 = arg_2;
    var var_2 = Struct_2(arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(617f, _wgslsmith_div_f32(1836f, global2.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.wy)), vec2<f32>(2909f, _wgslsmith_f_op_f32(step(global2.x, -558f))), vec2<bool>(var_0.x, 36467u >= global0[_wgslsmith_index_u32(global3.a.b, 18u)])))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2.wz + vec2<f32>(643f, -1347f)), vec2<f32>(1612f, global3.d.x))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1124f), 1735f));
    return arg_2.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    let var_0 = select(_wgslsmith_sub_vec2_u32(vec2<u32>(min(max(11232u, 4294967295u), ~u_input.a), u_input.a), reverseBits(u_input.c.zx)), vec2<u32>(_wgslsmith_div_u32(14543u, _wgslsmith_dot_vec4_u32(func_3(-2147483647i, arg_0, Struct_1(arg_1, 11968u, vec4<u32>(global3.a.b, 1u, 85529u, 9579u))), ~u_input.c)), ~(max(global0[_wgslsmith_index_u32(0u, 18u)], 34370u) ^ ~4294967295u)), !(!(abs(global3.a.c.x) <= (global3.a.c.x ^ global3.a.c.x))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.b.x)), _wgslsmith_f_op_f32(trunc(1000f)));
    global2 = vec4<f32>(-813f, -1953f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f)));
    let var_2 = u_input.a < _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(57110u, 18u)], _wgslsmith_sub_u32(6665u, _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(1u, 1u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -959f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.b.x)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b.x), global2.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global3.d.x)), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.b.x)) * _wgslsmith_f_op_f32(abs(global3.c.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), 0i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39088u, 18u)], 18u)], 27u)])))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global3.c.x + 2129f), _wgslsmith_f_op_f32(max(-1081f, global3.c.x)), global3.b.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(294f, 451f, 187f, -412f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, global3.d.x, -2425f, global3.d.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-178f, global2.x, 1113f, -352f), vec4<f32>(-242f, -153f, 1443f, global3.c.x))), select(vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(16950u, 27u)], vec4<bool>(false, true, false, true))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -740f, global3.c.x, -150f)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))))))) + -1331f);
    global1 = array<vec4<bool>, 27>();
    var var_2 = Struct_1(2147483647i, ~_wgslsmith_clamp_u32(min(global0[_wgslsmith_index_u32(global3.a.b & global3.a.c.x, 18u)], 4294967295u), 0u, firstTrailingBit(_wgslsmith_add_u32(11260u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25996u, 18u)], 18u)], 18u)], 18u)]))), vec4<u32>(countOneBits(~(0u & global0[_wgslsmith_index_u32(0u, 18u)])), firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(39986u, 28442u), 18u)] >> (~4294967295u % 32u)), abs(17976u), _wgslsmith_clamp_u32((global3.a.b ^ global0[_wgslsmith_index_u32(global3.a.c.x, 18u)]) >> (28199u % 32u), 14519u, 33666u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global2.wyy);
    return vec4<f32>(1193f, global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1102f))) * _wgslsmith_f_op_f32(var_0.x - 862f)), _wgslsmith_f_op_f32(f32(-1f) * -731f));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(min(select(countOneBits(-1i), ~arg_1.a, any(vec3<bool>(false, false, false))), global3.a.a) | ~2147483647i);
    var var_1 = 760f;
    let var_2 = arg_1;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(627f, arg_0.x, -2555f, global3.d.x), vec4<f32>(arg_0.x, global2.x, 193f, 633f)), vec4<f32>(arg_0.x, 1078f, 824f, 115f))) * arg_0));
    global1 = array<vec4<bool>, 27>();
    return arg_1;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<u32, 18>();
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 697f, global3.c.x, global2.x))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -973f, global2.x, global2.x)), Struct_1(-1i, ~arg_3.b, ~vec4<u32>(u_input.a, arg_2.x, 64001u, arg_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(161f, global2.x))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(843f, -146f), global2.zw)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, -955f)))), global3.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(global3.c, vec2<f32>(1692f, global2.x))))) * vec2<f32>(-3497f, _wgslsmith_f_op_f32(-global3.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.c.x, global3.d.x)))))));
    var_0 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.c, vec2<f32>(_wgslsmith_f_op_f32(545f - var_0.c.x), _wgslsmith_f_op_f32(trunc(-1104f)))))), global3.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.d))))));
    global1 = array<vec4<bool>, 27>();
    let var_1 = arg_3.a;
    return func_4(vec4<f32>(_wgslsmith_f_op_f32(abs(-540f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(global2.x, 1557f))) * global3.d.x), -1066f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, false), var_0.a.a, global1[_wgslsmith_index_u32(arg_3.b, 27u)]))) - global3.b.x)), arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) - _wgslsmith_f_op_f32(-1f))));
    let var_1 = !(_wgslsmith_mult_i32(-2147483647i, firstLeadingBit(2147483647i)) <= reverseBits(~global3.a.a ^ u_input.b.x));
    var var_2 = true & !var_1;
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, global3.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, global3.b.x))), true))), global3.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(135f, -321f))))));
    let var_3 = !(_wgslsmith_sub_i32(0i, -63497i) > ~(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -1i, -1i), vec4<i32>(global3.a.a, global3.a.a, 1i, -9417i)) >> (firstTrailingBit(global0[_wgslsmith_index_u32(global3.a.b, 18u)]) % 32u)));
    let var_4 = func_5(vec3<i32>(u_input.b.x, -27824i, global3.a.a), firstTrailingBit(u_input.b.x), _wgslsmith_mod_vec2_u32(global3.a.c.zy >> (global3.a.c.yw % vec2<u32>(32u)), vec2<u32>(global3.a.b << (0u % 32u), ~0u) & _wgslsmith_add_vec2_u32(global3.a.c.zy, vec2<u32>(1u, 42311u))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(448f, global2.x, -1610f, -472f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(-1597f, global3.b.x, global3.b.x, 632f))), global3.a));
    var var_5 = any(!(!select(vec2<bool>(false, var_3), select(vec2<bool>(false, var_1), vec2<bool>(true, var_3), vec2<bool>(true, false)), select(vec2<bool>(false, var_1), vec2<bool>(var_1, false), vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

