struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<i32, 14> = array<i32, 14>(28782i, -37640i, -3461i, i32(-2147483648), 55525i, 2945i, -28492i, 1i, 2844i, -49412i, 2147483647i, 30906i, 2147483647i, 42759i);

var<private> global2: array<u32, 19> = array<u32, 19>(4035u, 4294967295u, 12861u, 1u, 66349u, 97711u, 79907u, 4294967295u, 1u, 0u, 14801u, 1u, 4294967295u, 1u, 11674u, 60423u, 77203u, 37904u, 4294967295u);

var<private> global3: bool;

var<private> global4: array<Struct_5, 15>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = global4[_wgslsmith_index_u32(0u, 15u)];
    var var_1 = arg_2;
    global2 = array<u32, 19>();
    global4 = array<Struct_5, 15>();
    var var_2 = !var_0.a;
    return _wgslsmith_f_op_f32(abs(-517f));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = vec3<u32>(83295u, 0u, ~4294967295u);
    let var_1 = u_input.d;
    let var_2 = Struct_2(!(all(vec2<bool>(true, true)) && (_wgslsmith_f_op_f32(arg_1 + arg_1) < -389f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -662f), _wgslsmith_f_op_f32(abs(471f))), arg_1, _wgslsmith_f_op_f32(func_3(reverseBits(vec2<i32>(0i, global1[_wgslsmith_index_u32(arg_2, 14u)])), ~vec3<u32>(29172u, global2[_wgslsmith_index_u32(63293u, 19u)], 0u), Struct_1(vec3<u32>(var_0.x, 71116u, var_0.x), -2147483647i, 1559f))), 152f) + vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(775f)) + -859f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))))), !all(vec4<bool>(true, 1i >= var_1, arg_0.a.x, true)), -358f);
    global3 = arg_2 != abs(_wgslsmith_dot_vec3_u32(vec3<u32>(32357u, global2[_wgslsmith_index_u32(arg_2, 19u)], 94270u) ^ ~vec3<u32>(1u, var_0.x, arg_2), abs(vec3<u32>(1u, var_0.x, var_0.x) & vec3<u32>(arg_2, arg_2, arg_2))));
    let var_3 = Struct_3(var_2, firstTrailingBit(-min(global1[_wgslsmith_index_u32(arg_2, 14u)], i32(-1i) * -42347i)), vec4<bool>(!any(arg_0.a.yy), any(arg_0.a.yz), var_1 == 28452i, select(var_2.a, 4294967295u < var_0.x, true)));
    return Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(~101u, countOneBits(4294967295u), 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 1u, 48524u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 19u)], arg_2, var_0.x)) ^ vec3<u32>(4707u, var_0.x, 1u)), var_3.b | 2147483647i, var_2.d);
}

fn func_1() -> Struct_1 {
    var var_0 = global0.x;
    let var_1 = func_2(global4[_wgslsmith_index_u32(3037u, 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1437f - _wgslsmith_f_op_f32(-293f * 339f)))), 27980u, 2147483647i);
    global0 = select(select(select(vec2<bool>(global0.x, global0.x), select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), true), ~22897u != global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20514u, 19u)], 19u)]), !select(!vec2<bool>(global0.x, false), !vec2<bool>(true, global0.x), !global0.x), all(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, true, false), !global0.x))), vec2<bool>(true, all(!vec4<bool>(true, global0.x, false, global0.x))), true);
    global2 = array<u32, 19>();
    let var_2 = true;
    return func_2(global4[_wgslsmith_index_u32(var_1.a.x, 15u)], _wgslsmith_f_op_f32(f32(-1f) * -365f), 57150u, -17764i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<u32, 19>();
    var var_1 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~firstTrailingBit(var_0.a), select(abs(var_0.a), ~var_0.a, vec3<bool>(false, global0.x, global0.x))), abs(vec3<u32>(~var_0.a.x, _wgslsmith_mult_u32(var_0.a.x, var_0.a.x), select(var_0.a.x, var_0.a.x, global0.x))));
    global4 = array<Struct_5, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

