struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1323f;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(true, true, vec2<bool>(true, true), vec3<bool>(false, false, false), -15418i), Struct_1(true, true, vec2<bool>(false, false), vec3<bool>(false, true, false), 0i), Struct_1(true, true, vec2<bool>(true, true), vec3<bool>(false, true, true), 43594i), Struct_1(false, false, vec2<bool>(false, true), vec3<bool>(false, false, true), 13125i), Struct_1(true, true, vec2<bool>(true, false), vec3<bool>(false, true, true), -24040i), Struct_1(false, true, vec2<bool>(true, true), vec3<bool>(false, true, true), 31480i), Struct_1(false, true, vec2<bool>(true, true), vec3<bool>(false, false, true), 16979i), Struct_1(false, false, vec2<bool>(false, false), vec3<bool>(true, false, false), -25042i), Struct_1(false, true, vec2<bool>(false, false), vec3<bool>(true, false, true), 2147483647i), Struct_1(true, true, vec2<bool>(false, true), vec3<bool>(true, false, true), 1i), Struct_1(true, false, vec2<bool>(false, true), vec3<bool>(false, true, false), i32(-2147483648)), Struct_1(true, true, vec2<bool>(false, false), vec3<bool>(false, true, true), -63490i), Struct_1(true, false, vec2<bool>(false, false), vec3<bool>(true, false, false), 1i), Struct_1(true, true, vec2<bool>(false, true), vec3<bool>(true, true, true), 1649i), Struct_1(true, false, vec2<bool>(false, true), vec3<bool>(true, false, true), 41410i), Struct_1(false, true, vec2<bool>(false, true), vec3<bool>(false, false, false), -1i), Struct_1(false, false, vec2<bool>(false, true), vec3<bool>(true, true, true), -1i), Struct_1(false, false, vec2<bool>(true, true), vec3<bool>(false, false, true), 1i), Struct_1(true, true, vec2<bool>(true, true), vec3<bool>(true, true, false), -6155i), Struct_1(false, false, vec2<bool>(true, true), vec3<bool>(true, false, false), 0i), Struct_1(false, true, vec2<bool>(false, false), vec3<bool>(true, true, true), -5305i), Struct_1(false, false, vec2<bool>(true, false), vec3<bool>(true, false, true), 65347i), Struct_1(true, false, vec2<bool>(false, true), vec3<bool>(true, true, false), 1i), Struct_1(true, false, vec2<bool>(true, true), vec3<bool>(false, false, true), -1i), Struct_1(true, true, vec2<bool>(true, false), vec3<bool>(true, false, false), 57241i));

var<private> global2: Struct_4;

var<private> global3: array<u32, 14>;

var<private> global4: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(38083u, 61u), vec2<u32>(4294967295u, 12072u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 30864u), vec2<u32>(21367u, 93109u), vec2<u32>(25660u, 0u), vec2<u32>(62715u, 47238u), vec2<u32>(51215u, 0u), vec2<u32>(16655u, 32537u), vec2<u32>(0u, 0u), vec2<u32>(38330u, 39936u), vec2<u32>(1u, 64109u), vec2<u32>(1u, 25090u), vec2<u32>(4294967295u, 0u), vec2<u32>(72195u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(29486u, 33988u), vec2<u32>(10893u, 4294967295u), vec2<u32>(3466u, 0u), vec2<u32>(37680u, 0u), vec2<u32>(23619u, 1004u), vec2<u32>(47611u, 31115u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 14326u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> vec2<i32> {
    let var_0 = Struct_4(Struct_2(arg_1.a, vec2<i32>(_wgslsmith_dot_vec2_i32(global2.a.b, arg_1.b) & _wgslsmith_add_i32(2147483647i, arg_1.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(-50736i, global2.c.a, 1i, -1i), vec4<i32>(arg_1.b.x, global2.a.b.x, 2147483647i, -2147483647i)))), select(global2.a.b, arg_1.b, vec2<bool>(true, 0u < global3[_wgslsmith_index_u32(1u, 14u)])), Struct_3(-1i));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~abs(u_input.c.x), 14u)] | arg_0.x, 14u)], 14u)], ~_wgslsmith_mod_u32(1u, ~99853u)), 25u)];
    var var_2 = global1[_wgslsmith_index_u32(3927u, 25u)];
    var var_3 = var_0.c;
    var var_4 = arg_1.b;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(-10766i, -13060i), _wgslsmith_div_vec2_i32(arg_1.b, vec2<i32>(global2.a.b.x ^ arg_1.b.x, arg_1.b.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~(-(~(-2147483647i)));
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.a) - _wgslsmith_f_op_vec2_f32(global2.a.a * vec2<f32>(global2.a.a.x, -498f)))), _wgslsmith_div_vec2_i32(vec2<i32>(var_0, -2147483647i), _wgslsmith_mod_vec2_i32(global2.b, vec2<i32>(1i, var_0))) | -func_3(vec4<u32>(u_input.c.x, 0u, 4294967295u, 16116u), global2.a, false, global2.a.a.x)), firstTrailingBit(_wgslsmith_sub_vec2_i32(global2.a.b, global2.a.b)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(global2.b.x, _wgslsmith_add_i32(-1i, 0i)), -global2.a.b), Struct_3(-4415i));
    global3 = array<u32, 14>();
    global0 = global2.a.a.x;
    global3 = array<u32, 14>();
    return var_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_4 {
    global3 = array<u32, 14>();
    global0 = _wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-370f * arg_0.a.x)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f * 1511f) * _wgslsmith_f_op_f32(sign(592f))), -368f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -630f));
    return Struct_4(arg_0, ~global2.a.b, Struct_3(firstLeadingBit(-1i)));
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = reverseBits(u_input.b.wyw);
    global3 = array<u32, 14>();
    var var_1 = func_4(func_2(), global2.c);
    let var_2 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(14545u, 14u)], 4294967295u, global3[_wgslsmith_index_u32(0u, 14u)]), abs(vec3<u32>(0u, 0u, global3[_wgslsmith_index_u32(0u, 14u)]))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 28952u), u_input.b.xzz)) | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(9263u), 14u)], 14u)], 4294967295u, ~1628u, var_0.x);
    var_0 = abs(u_input.b.xzw);
    return var_1.a.a.x;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = global2.c;
    global1 = array<Struct_1, 25>();
    var var_1 = global2.a.b;
    var_1 = func_2().b;
    let var_2 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3[_wgslsmith_index_u32(30279u, 14u)], 43151u >> (abs(max(u_input.a.x, 0u)) % 32u)), 14u)], 25u)];
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2.a.a.x - global2.a.a.x), 998f, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(floor(arg_0.x))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_0)), _wgslsmith_div_vec4_f32(arg_0, arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1727f * arg_0.x) - arg_0.x), _wgslsmith_f_op_f32(max(global2.a.a.x, global2.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(582f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.a.x;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, -262f, -2986f, global2.a.a.x) - vec4<f32>(global2.a.a.x, -1215f, -422f, 1000f))) * vec4<f32>(global2.a.a.x, -453f, global2.a.a.x, _wgslsmith_f_op_f32(func_1(Struct_4(global2.a, vec2<i32>(-31270i, -2147483647i), global2.c))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1448f), _wgslsmith_f_op_f32(f32(-1f) * -450f), global2.a.a.x, -267f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global2.a.a.x, -822f, -717f), vec4<f32>(985f, -2054f, 1000f, 1557f)))))), Struct_1(global2.c.a < firstLeadingBit(26247i), !all(vec3<bool>(false, false, false)), vec2<bool>(true, true), select(vec3<bool>(true, all(vec2<bool>(true, true)), any(vec3<bool>(true, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(global2.a.b.x == 40025i, true, true)), _wgslsmith_div_i32(abs(global2.b.x) >> (abs(4294967295u) % 32u), func_3(u_input.b, global2.a, true, _wgslsmith_f_op_f32(f32(-1f) * -241f)).x)));
}

