struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 174f;

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: u32 = 1u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global2 = 63628u;
    global0 = _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-992f + arg_0.x), _wgslsmith_f_op_f32(round(-984f)), false))))));
    global1 = array<vec4<bool>, 27>();
    global2 = ~(min(u_input.a, u_input.a) << (u_input.a % 32u));
    let var_0 = Struct_2(reverseBits(~_wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, 8726i, 2147483647i, -2147483647i), abs(vec4<i32>(-2147483647i, 5820i, 1i, 11136i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(207f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(floor(-1336f)), Struct_1(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(9617i, 2147483647i, 25855i), vec3<i32>(2147483647i, -12986i, -17869i))) ^ 1i, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u) >> (vec2<u32>(8911u, u_input.a) % vec2<u32>(32u)), abs(vec2<u32>(u_input.a, u_input.a))), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1580f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(arg_0.x)), true))))));
    return -1971f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_sub_i32(-2147483647i, arg_1.x), u_input.a, arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(257f, -204f))))))));
    var var_1 = 41496u;
    let var_2 = vec3<f32>(267f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.d, var_0.d, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - -2574f))), _wgslsmith_f_op_f32(-var_0.d));
    var var_3 = Struct_2(select(min(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(var_0.a, 2147483647i, var_0.a, -14611i), vec4<i32>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<i32>(1i, arg_1.x, arg_1.x, var_0.a) & vec4<i32>(0i, var_0.a, arg_1.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(48020i, -5356i, 0i, var_0.a), vec4<i32>(1016i, -9154i, var_0.a, var_0.a))), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_0.a, arg_1.x, var_0.a), vec4<i32>(arg_1.x, var_0.a, 0i, 2147483647i))), vec4<i32>(firstTrailingBit(var_0.a), -13086i, -1i, 1i), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_0.b), 4294967295u) ^ 40835u, 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(1530f - var_2.x)))) * 380f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(735f)))), Struct_1(~reverseBits(var_0.a), var_0.b, any(vec3<bool>(!var_0.c, var_0.a <= arg_1.x, var_0.c)), _wgslsmith_f_op_f32(var_0.d + -340f)));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.d.d - var_2.x), 895f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_2.zx)))))));
    return var_3.a;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1552f) * _wgslsmith_f_op_f32(step(1f, -875f))));
    let var_1 = ~(~(-2147483647i));
    global2 = ~u_input.a >> (select(21084u, ~25221u, all(vec2<bool>(false, false)) & true) % 32u);
    var var_2 = false;
    var var_3 = abs(~(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_1, var_1, -687i, 22523i)), min(vec4<i32>(44642i, 6220i, var_1, 1i), vec4<i32>(-1i, 13648i, var_1, var_1))) | func_2(any(vec3<bool>(false, true, true)), max(vec2<i32>(1595i, -21910i), vec2<i32>(-19308i, var_1)))));
    return ~(-2613i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>(-1257i, -reverseBits(1i), 1i, ~(func_1() ^ 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1713f, -397f), -1049f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f + -1236f) + _wgslsmith_f_op_f32(round(2069f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(845f, 860f)), _wgslsmith_f_op_f32(f32(-1f) * -497f), true)) * _wgslsmith_f_op_f32(step(898f, -551f)))), _wgslsmith_f_op_f32(step(-833f, 1211f)), Struct_1(11325i, u_input.a, (i32(-1i) * -2147483647i) >= (_wgslsmith_dot_vec4_i32(vec4<i32>(46976i, 39382i, -13695i, 1i), vec4<i32>(-1i, -2147483647i, -8514i, 1i)) ^ ~4869i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1064f)))), _wgslsmith_f_op_f32(round(-1094f))))));
    var var_1 = ~(vec4<u32>(firstLeadingBit(~4294967295u), _wgslsmith_clamp_u32(4294967295u, ~0u, ~47263u), 4294967295u, 1u & (4294967295u ^ var_0.d.b)) | select(~vec4<u32>(36463u, 0u, var_0.d.b, u_input.a), _wgslsmith_sub_vec4_u32(max(vec4<u32>(3126u, var_0.d.b, 1u, var_0.d.b), vec4<u32>(4294967295u, u_input.a, u_input.a, 1u)), max(vec4<u32>(u_input.a, var_0.d.b, 28324u, u_input.a), vec4<u32>(u_input.a, var_0.d.b, 46478u, var_0.d.b))), select(select(global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)], global1[_wgslsmith_index_u32(u_input.a, 27u)]), vec4<bool>(false, true, false, true), -721f < var_0.b)));
    let var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(var_0.a.yw, ~(-vec2<i32>(var_0.a.x, var_0.d.a))), 60116u, all(select(select(!vec3<bool>(false, true, var_0.d.c), vec3<bool>(true, true, true), vec3<bool>(var_0.d.c, false, var_0.d.c)), vec3<bool>(any(vec2<bool>(var_0.d.c, true)), true, var_0.d.c), true)), _wgslsmith_f_op_f32(var_0.c + var_0.c));
    let var_3 = firstTrailingBit(30196i);
    global2 = 33325u;
    global1 = array<vec4<bool>, 27>();
    let var_4 = Struct_1(var_0.d.a, 1u, var_2.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(129f, -138f)))));
    let var_5 = vec2<f32>(var_0.d.d, var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~0u, min(var_4.b & 1u, _wgslsmith_mult_u32(107425u, var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-465f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1212f - var_5.x)))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_4.b, (var_0.d.b ^ 34678u) & _wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_clamp_u32(~u_input.a, var_2.b, 37261u >> (0u % 32u))), var_1.xwx), var_0.a, var_5);
}

