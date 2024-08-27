struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
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

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(5741u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(32637u, 84116u), vec2<u32>(0u, 0u), vec2<u32>(49901u, 4294967295u), vec2<u32>(4294967295u, 53722u));

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(413f, 9389u, 642f), Struct_1(1175f, 1u, 196f), Struct_1(-145f, 1u, -382f), Struct_1(128f, 6090u, -2142f));

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(10989u, 4632u, 4294967295u), vec3<u32>(42413u, 20423u, 22883u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(17941u, 4594u, 80537u), vec3<u32>(0u, 67819u, 4294967295u), vec3<u32>(11131u, 4294967295u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(3678u, 0u, 4294967295u), vec3<u32>(61017u, 1u, 1u), vec3<u32>(14926u, 1u, 0u), vec3<u32>(1u, 4294967295u, 121472u), vec3<u32>(0u, 15641u, 1u), vec3<u32>(0u, 93219u, 4294967295u), vec3<u32>(17706u, 85216u, 0u), vec3<u32>(1u, 10064u, 0u), vec3<u32>(0u, 10912u, 1u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: u32) -> vec3<u32> {
    return global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x & _wgslsmith_add_u32(4198u, ~4294967295u), u_input.c.x), 16u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    global2 = array<vec3<u32>, 16>();
    var var_0 = vec4<i32>(1i, 2147483647i, 0i, 0i);
    return vec4<bool>(true, all(select(vec4<bool>(arg_1, arg_1, false, select(true, true, true)), select(!vec4<bool>(arg_1, true, true, true), select(vec4<bool>(true, true, arg_2.a.x, false), vec4<bool>(arg_2.a.x, true, arg_1, true), arg_1), arg_2.d), false & any(arg_2.c.c))), false | !all(select(arg_2.c.c.yy, arg_2.c.c.zy, arg_2.c.c.xz)), true);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -185f)))), ~firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -521f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1004f)), ~u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(-777f + 711f)))), vec3<bool>(select(all(vec3<bool>(true, false, false)) && (0u != u_input.a.x), true, true), true, any(func_3(u_input.a, true, Struct_3(vec3<bool>(false, true, true), u_input.d.wzw, Struct_2(Struct_1(-611f, 35963u, -385f), Struct_1(-1000f, u_input.c.x, -739f), vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(u_input.a.x, 4u)], -1637f), true, global1[_wgslsmith_index_u32(4294967295u, 4u)]), 1559f))), global1[_wgslsmith_index_u32(max(u_input.a.x, ~(~u_input.b)), 4u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-895f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    global2 = array<vec3<u32>, 16>();
    var var_1 = ~((54830u ^ var_0.a.b) ^ ~(32921u | abs(u_input.b)));
    var_1 = abs(0u);
    var var_2 = func_1(~firstTrailingBit(u_input.b) ^ ~1u).x;
    return -564f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(func_1(~u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1466f, 970f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(193f, -257f), vec2<f32>(925f, 686f), vec2<bool>(false, false)))))) - vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(464f)) - -737f))), vec4<i32>(-1i) * -u_input.d, vec4<bool>((u_input.e.x >> (u_input.b % 32u)) < _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-762i, -2147483647i, u_input.e.x), u_input.d.wyy), select(u_input.e.x, u_input.e.x, true), u_input.d.x), func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33867u, 2739u, 1u, u_input.b), vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, 0u)), firstLeadingBit(u_input.c.x), reverseBits(u_input.a.x), _wgslsmith_add_u32(u_input.c.x, u_input.c.x)), true, Struct_3(vec3<bool>(true, true, true), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), u_input.d.wxy), Struct_2(global1[_wgslsmith_index_u32(33665u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<bool>(false, false, true), Struct_1(646f, 22385u, -865f), -200f), all(vec2<bool>(false, false)), global1[_wgslsmith_index_u32(4294967295u, 4u)]), 1f).x, true, all(vec2<bool>(true, true))));
    let var_1 = u_input.a.x;
    global2 = array<vec3<u32>, 16>();
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -731f)));
    global0 = array<vec2<u32>, 7>();
    let var_3 = Struct_5(vec3<u32>(64304u, _wgslsmith_div_u32(23218u, var_0.a.x), min(u_input.b, ~var_0.a.x)) | max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 21745u, 20939u), vec3<u32>(1255u, 1u, 4294967295u)) | var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2 - var_2), var_2)) - vec2<f32>(var_2, 440f)), _wgslsmith_add_vec4_i32(-vec4<i32>(8488i, 80697i, var_0.c.x, var_0.c.x) & vec4<i32>(1i, var_0.c.x << (var_1 % 32u), 0i, -9017i), -(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, 69957i, var_0.c.x, u_input.e.x), vec4<i32>(var_0.c.x, 0i, -1i, -4384i)))), select(var_0.d, vec4<bool>(all(var_0.d.xz), !all(vec2<bool>(var_0.d.x, false)), true, false), var_0.d.x));
    global0 = array<vec2<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.x);
}

