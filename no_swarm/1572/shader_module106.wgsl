struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<f32> {
    global1 = array<Struct_2, 17>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(max(-344f, -1388f)), 1991f, global2.x, global2.x))), vec3<f32>(_wgslsmith_div_f32(global2.x, -732f), _wgslsmith_f_op_f32(-1928f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-122f)) + _wgslsmith_f_op_f32(global2.x + global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -789f)))), Struct_2(!any(vec3<bool>(true, true, true)), Struct_1(u_input.b, reverseBits(vec2<u32>(u_input.c.x, 0u)), vec3<f32>(_wgslsmith_f_op_f32(abs(552f)), _wgslsmith_f_op_f32(global2.x - 928f), _wgslsmith_f_op_f32(sign(global2.x))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 122f)))))), Struct_2(all(vec2<bool>(true, any(vec2<bool>(false, true)))), Struct_1(i32(-1i) * -u_input.b, countOneBits(vec2<u32>(u_input.c.x, 4294967295u)), vec3<f32>(-586f, global2.x, -698f), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_vec2_f32(-global2.xx))));
    var var_1 = vec4<i32>(u_input.e.x, abs(abs(u_input.b)) & -(max(-2147483647i, 7388i) | ~u_input.b), -reverseBits(_wgslsmith_add_i32(15890i, u_input.b << (4294967295u % 32u))), 0i);
    return vec2<f32>(global2.x, 1107f);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> bool {
    let var_0 = global2.x;
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.c) + vec3<f32>(global2.x, arg_0.b.c.x, -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-561f, global2.x), 620f, _wgslsmith_f_op_f32(-global2.x)))));
    let var_3 = firstTrailingBit(min(~arg_0.b.a, _wgslsmith_dot_vec2_i32(u_input.e, u_input.e)));
    global1 = array<Struct_2, 17>();
    return var_1.x < var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_0.b.c.x, arg_2.e.x, global2.x) * vec4<f32>(1395f, 959f, global2.x, -757f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_0.b.e.x, arg_0.b.c.x, -412f)))) - vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, -1566f, _wgslsmith_f_op_f32(arg_2.e.x - 900f), _wgslsmith_f_op_f32(select(arg_0.b.e.x, 490f, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.c.x, global2.x, -225f), vec3<f32>(arg_0.b.e.x, 349f, -109f), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_3, false), arg_1))))) - arg_0.b.c), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(28892u, firstTrailingBit(arg_0.b.b.x)), 17u)], arg_0);
    var var_1 = vec2<bool>(select(any(select(vec4<bool>(false, true, arg_3, var_0.c.a), vec4<bool>(arg_1, true, false, arg_1), true && arg_0.b.d.x)), (i32(-1i) * -2147483647i) > _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a, 0i, -1602i, arg_2.a), vec4<i32>(var_0.d.b.a, var_0.c.b.a, -4545i, -10258i)), countOneBits(vec4<i32>(-1i, arg_2.a, arg_2.a, -1i))), all(vec4<bool>(arg_3, any(vec3<bool>(false, false, arg_1)), arg_3, true))), false);
    global1 = array<Struct_2, 17>();
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(var_0.c.b.e.x - 185f))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    var var_1 = _wgslsmith_div_f32(-495f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 877f) - _wgslsmith_f_op_f32(1888f * 730f)), false)))));
    var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.d, arg_2.yz), _wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(u_input.c.x, 35705u))), _wgslsmith_sub_vec2_u32(~(~arg_0), abs(vec2<u32>(~arg_2.x, reverseBits(1u)))));
    global0 = array<vec2<u32>, 16>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(40191u, 17u)], all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(_wgslsmith_sub_i32(u_input.e.x, -9654i), global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_3, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(func_2())), func_3(Struct_2(false, Struct_1(u_input.e.x, vec2<u32>(73450u, 61759u), arg_3, vec2<bool>(false, false), global2.zx)), vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_3.x) * vec2<f32>(arg_3.x, -921f)))))), false));
    return _wgslsmith_f_op_f32(round(1432f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x - 1662f))) - global2.x), _wgslsmith_f_op_f32(-global2.x)) + vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, u_input.d.x), _wgslsmith_f_op_f32(global2.x - 682f), ~u_input.c.zwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, global2.x, global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1641f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) - global2.x))));
    let var_0 = u_input.b;
    global1 = array<Struct_2, 17>();
    var var_1 = select(!vec3<bool>(~u_input.e.x < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -9385i, 2147483647i), vec3<i32>(u_input.b, -18870i, -2147483647i)), !(1262f > global2.x), any(vec3<bool>(true, true, true))), select(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(30229u != u_input.c.x, all(vec4<bool>(false, false, false, false)), true), false), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(any(vec4<bool>(false, false, true, false)), global2.x != global2.x, false), true)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), !any(vec4<bool>(false, true, false, true))));
    var var_2 = global1[_wgslsmith_index_u32(1u, 17u)];
    var var_3 = all(var_1.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.b.c), vec4<i32>(~var_2.b.a ^ _wgslsmith_div_i32(u_input.b, var_2.b.a), countOneBits(abs(u_input.b)) | _wgslsmith_clamp_i32(countOneBits(-1i), ~var_2.b.a, 1i >> (0u % 32u)), var_2.b.a, _wgslsmith_mod_i32(var_0, u_input.e.x)), firstLeadingBit(vec2<i32>(-2147483647i, 1i)));
}

