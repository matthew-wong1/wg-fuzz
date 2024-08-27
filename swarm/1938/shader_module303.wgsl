struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(2147483647i, 0i, 0i, 0i), vec4<i32>(1i, 1i, -1i, -60519i), vec4<i32>(0i, 2147483647i, -1i, 15438i), vec4<i32>(2147483647i, 0i, 2147483647i, 52271i), vec4<i32>(1i, -48984i, 1i, -11832i), vec4<i32>(-13299i, 0i, 61813i, 1i), vec4<i32>(i32(-2147483648), 0i, 1i, 3111i), vec4<i32>(46312i, -20023i, -8931i, 35024i), vec4<i32>(1i, 1i, -1i, -1i), vec4<i32>(1i, 14061i, 13621i, 0i), vec4<i32>(15205i, -1i, 1i, i32(-2147483648)), vec4<i32>(-1i, 1285i, -46771i, i32(-2147483648)), vec4<i32>(102i, -1i, -84437i, 16964i), vec4<i32>(-1i, -1i, -1i, 59690i), vec4<i32>(21851i, i32(-2147483648), 1i, 28744i), vec4<i32>(0i, 4674i, -4053i, 0i), vec4<i32>(8406i, i32(-2147483648), 1i, -1i), vec4<i32>(10543i, 0i, -42604i, 2147483647i), vec4<i32>(1i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, 2147483647i, 0i, 2147483647i), vec4<i32>(-56903i, -1i, 59754i, i32(-2147483648)), vec4<i32>(-14766i, 42933i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = !vec2<bool>(true, !all(vec3<bool>(true, true, true)));
    var_0 = select(!select(!(!vec2<bool>(true, var_0.x)), vec2<bool>(false, any(vec2<bool>(false, true))), vec2<bool>(true, var_0.x)), !select(vec2<bool>(true, var_0.x), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), true), vec2<bool>(true, true), false), true), all(!vec4<bool>(u_input.c < global0.x, false && var_0.x, any(vec2<bool>(var_0.x, var_0.x)), 100450u < u_input.e)));
    var var_1 = global0.x;
    var var_2 = select(!vec2<bool>(any(vec4<bool>(true, false, true, var_0.x)), any(!vec2<bool>(var_0.x, var_0.x))), !select(select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), all(vec4<bool>(var_0.x, false, false, true))), select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, var_0.x))), vec2<bool>(!(_wgslsmith_f_op_f32(trunc(-1115f)) < _wgslsmith_f_op_f32(f32(-1f) * -1382f)), var_0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2106f, -1924f, -793f), _wgslsmith_f_op_vec3_f32(vec3<f32>(782f, 342f, -703f) * vec3<f32>(-107f, 1690f, 706f)))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-1017f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f)), _wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(trunc(724f)))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.x, var_3.x)) - 1857f))), false))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1158f, _wgslsmith_f_op_f32(f32(-1f) * -445f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1010f) - vec2<f32>(902f, 1660f))))) - vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-319f, 102f)));
    global1 = array<vec4<i32>, 22>();
    global1 = array<vec4<i32>, 22>();
    var var_1 = Struct_2(1051f, Struct_1(vec4<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -255f), _wgslsmith_f_op_f32(func_3()), 1162f), false, _wgslsmith_add_i32(firstTrailingBit(u_input.a.x), max(global0.x, _wgslsmith_div_i32(-13625i, -24243i))), true || select(any(vec3<bool>(true, false, true)), true, true)));
    global0 = vec4<i32>(-14822i, reverseBits(var_1.b.c), (i32(-1i) * -23154i) << (u_input.b.x % 32u), u_input.c);
    return _wgslsmith_f_op_f32(min(-1365f, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f + -1273f))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global0.x), global0.yz);
    var_0 = vec2<i32>(1i, 2147483647i);
    global0 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(global1[_wgslsmith_index_u32(u_input.d.x, 22u)], u_input.a), u_input.a), -58049i, 36064i, ~2147483647i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(363f, -1372f, -980f, -916f) * vec4<f32>(1159f, -1536f, -551f, 1377f))))), any(vec2<bool>(true, true)), -(firstTrailingBit(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.e, 22u)], vec4<i32>(u_input.c, 47407i, 45617i, var_0.x))) ^ _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.yyy), -vec3<i32>(global0.x, global0.x, u_input.a.x))), any(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, _wgslsmith_f_op_f32(func_2()) < -1145f, any(vec3<bool>(true, true, true)))));
    global1 = array<vec4<i32>, 22>();
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), var_1.a.x), Struct_1(vec4<f32>(3188f, _wgslsmith_f_op_f32(f32(-1f) * -1315f), var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), -462f))), global0.x <= -27894i, countOneBits(u_input.c), all(!select(vec2<bool>(false, var_1.d), vec2<bool>(var_1.d, true), vec2<bool>(var_1.b, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_1();
    global1 = array<vec4<i32>, 22>();
    var var_2 = reverseBits(var_0.b.c);
    var_2 = min(global0.x, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(0u << (~u_input.e % 32u), -u_input.a, ~(~(~u_input.b.x)));
}

