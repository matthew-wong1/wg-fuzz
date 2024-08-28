struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 1>;

var<private> global1: vec3<i32> = vec3<i32>(38183i, 2147483647i, -18321i);

var<private> global2: i32;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(441f, -336f, -699f), vec3<f32>(1168f, 2115f, 487f), vec3<f32>(459f, -211f, -397f), vec3<f32>(100f, -465f, 1563f), vec3<f32>(-1000f, 299f, -1000f), vec3<f32>(1015f, -702f, -385f), vec3<f32>(-1000f, -132f, -239f), vec3<f32>(-899f, -1000f, 749f), vec3<f32>(743f, -207f, 1000f), vec3<f32>(269f, 931f, 1543f), vec3<f32>(-1553f, -611f, -768f), vec3<f32>(-574f, 835f, -983f), vec3<f32>(-743f, 840f, 372f), vec3<f32>(-813f, 1237f, -592f), vec3<f32>(583f, 1000f, -573f), vec3<f32>(-166f, 1099f, 911f), vec3<f32>(-517f, 1000f, 2797f), vec3<f32>(-202f, -301f, -695f), vec3<f32>(1064f, -1285f, -1028f), vec3<f32>(519f, 1175f, 965f), vec3<f32>(-1794f, 785f, 620f), vec3<f32>(686f, -333f, -1209f), vec3<f32>(-583f, -1686f, 398f), vec3<f32>(3176f, 119f, 169f), vec3<f32>(-251f, -1000f, -702f));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(any(!(!(!vec3<bool>(arg_0.a, false, arg_0.a)))), _wgslsmith_f_op_f32(abs(arg_0.b)), arg_0.c);
    var var_1 = arg_0.a;
    var_1 = all(!select(select(vec4<bool>(arg_0.a, arg_0.a, var_0.a, global4.a), !vec4<bool>(arg_0.a, var_0.a, global4.a, true), global1.x != global1.x), vec4<bool>(true, all(vec2<bool>(global4.a, true)), select(false, arg_0.a, arg_0.a), select(false, true, true)), global1.x > -global1.x));
    let var_2 = true;
    var var_3 = Struct_3(global4.a, arg_1, select(vec3<i32>(global1.x, 1i, min(select(global1.x, global1.x, true), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_1, 1u)], vec2<i32>(0i, -15473i)))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(global1.x, -2147483647i, global1.x), vec3<i32>(1i, global1.x, global1.x), min(vec3<i32>(global1.x, 1i, global1.x), vec3<i32>(1i, 0i, global1.x))), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -16670i, -2147483647i), firstTrailingBit(vec3<i32>(1i, global1.x, global1.x)))), any(vec3<bool>(arg_0.a, true, true))));
    return vec4<bool>(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) < _wgslsmith_div_f32(-578f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.b)), var_0.c.x))), false, false, !(!(var_3.c.x != ~global1.x)));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1447f, -391f, global4.a)))) + _wgslsmith_f_op_f32(step(-751f, -1095f)));
    global2 = -_wgslsmith_sub_i32(-global1.x, 29510i);
    let var_1 = global1.x;
    let var_2 = Struct_3(global1.x != (select(global1.x, min(global1.x, global1.x), global4.a) & -2147483647i), u_input.c, select(_wgslsmith_mult_vec3_i32(-select(vec3<i32>(26148i, global1.x, -4942i), vec3<i32>(global1.x, 0i, global1.x), false), vec3<i32>(global1.x, 1i, -1i) << (~vec3<u32>(u_input.d.x, 54389u, 8523u) % vec3<u32>(32u))), select(abs(vec3<i32>(global1.x, global1.x, global1.x)), min(vec3<i32>(2147483647i, -55855i, global1.x), vec3<i32>(-1i, global1.x, -1i)), any(vec3<bool>(global4.a, true, false))) ^ -vec3<i32>(2147483647i, -2147483647i, 0i), !(!select(vec3<bool>(global4.a, false, false), vec3<bool>(global4.a, false, global4.a), vec3<bool>(global4.a, global4.a, global4.a)))));
    return select(select(select(vec4<bool>(select(var_2.a, false, false), false, !global4.a, false), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, var_2.a, false, global4.a), false), func_3(Struct_2(var_2.a, -402f, vec2<f32>(global4.b, global4.c.x)), 0u, u_input.d)), !select(!vec4<bool>(false, var_2.a, global4.a, false), select(vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(false, var_2.a, global4.a, global4.a), global4.a), !vec4<bool>(false, false, false, global4.a)), vec4<bool>(!any(vec3<bool>(false, global4.a, true)), true, false, u_input.c > 1u)), !vec4<bool>(var_2.a, (false && global4.a) | select(global4.a, true, false), true, !func_3(Struct_2(false, 1414f, vec2<f32>(-1700f, -158f)), 1u, u_input.d).x), !(reverseBits(u_input.b) <= reverseBits(49482u)) | false);
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(442f, _wgslsmith_f_op_f32(round(global4.b)), _wgslsmith_div_f32(-1358f, global4.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1023f, global4.b, -1681f), vec3<f32>(_wgslsmith_div_f32(-1430f, -1130f), global4.b, _wgslsmith_f_op_f32(f32(-1f) * -1038f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1103f, 1091f), _wgslsmith_f_op_f32(abs(global4.b)), global4.c.x))))));
    var var_1 = ~u_input.d.x;
    global2 = global1.x;
    let var_2 = select(!(!func_2()), !select(func_2(), vec4<bool>(global1.x == global1.x, global4.a, true, func_3(Struct_2(global4.a, -574f, global4.c), 37713u, vec2<u32>(u_input.d.x, u_input.b)).x), arg_0), !func_3(Struct_2(global4.a, _wgslsmith_div_f32(var_0.x, -1000f), vec2<f32>(global4.c.x, var_0.x)), u_input.a, vec2<u32>(~u_input.d.x, u_input.c)));
    var var_3 = global4.c;
    return u_input.b ^ u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~func_1(global4.a), max(countOneBits(0u), 4294967295u) & u_input.c);
    var var_1 = Struct_4(~23730i, func_3(Struct_2(all(func_3(Struct_2(global4.a, global4.b, vec2<f32>(global4.b, global4.b)), var_0.x, u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) - _wgslsmith_f_op_f32(global4.c.x + global4.c.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global4.c, vec2<f32>(global4.b, -817f))), _wgslsmith_f_op_vec2_f32(select(global4.c, global4.c, vec2<bool>(true, true))))), select(1u << (var_0.x % 32u), u_input.b, true), countOneBits(u_input.d)).x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), -2384f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.c.x)))), global4.a, Struct_3(true, ~_wgslsmith_sub_u32(abs(56752u), var_0.x), select(vec3<i32>(~(-1i), 17207i, min(global1.x, -2147483647i)), vec3<i32>(global1.x, global1.x, 29487i) >> (select(vec3<u32>(21720u, 41166u, 36262u), vec3<u32>(32731u, 0u, u_input.b), global4.a) % vec3<u32>(32u)), !(26399u > var_0.x))));
    var var_2 = Struct_2(global4.a, 1115f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global4.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(329f, -150f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(488f, -273f) + global4.c)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1576f, var_1.c.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1094f)))));
    var_2 = Struct_2(true == !(global4.a != (var_1.d || global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x)), _wgslsmith_f_op_vec2_f32(sign(var_1.c.yz)));
    var var_3 = Struct_2(global4.a, _wgslsmith_f_op_f32(-1517f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.b, _wgslsmith_f_op_f32(min(var_1.c.x, global4.b)))) * global4.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global4.c + _wgslsmith_f_op_vec2_f32(-var_2.c))));
    var_3 = Struct_2(true != !(var_3.a & !var_2.a), global4.b, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(660f - -146f) - var_3.c.x))), var_3.c.x));
    var var_4 = _wgslsmith_mod_u32(53708u, var_1.e.b);
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(var_1.c.xz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(905f, -120f), _wgslsmith_f_op_vec2_f32(-var_2.c)))), min(vec4<i32>(-1i) * -(vec4<i32>(var_1.e.c.x, var_1.e.c.x, 48681i, var_1.e.c.x) >> (vec4<u32>(var_1.e.b, var_0.x, var_0.x, 24340u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.e.c.x, min(global1.x, var_1.a), 2147483647i, 1i), vec4<i32>(global1.x, _wgslsmith_clamp_i32(-4295i, 7703i, -58842i), i32(-1i) * -2147483647i, -global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global4.c, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_5.b.x, -23876i), vec3<i32>(var_5.b.x, 13543i, 14158i), vec3<i32>(6622i, var_5.b.x, global1.x)), var_5.b.zyz | _wgslsmith_add_vec3_i32(var_1.e.c, var_1.e.c)), abs(abs(var_5.b.xzy << (vec3<u32>(var_0.x, u_input.a, u_input.b) % vec3<u32>(32u))))), global1.x, vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x - var_5.a.x), _wgslsmith_div_f32(124f, -1172f)))), _wgslsmith_f_op_f32(884f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x), _wgslsmith_f_op_f32(381f + var_5.a.x))))));
}

