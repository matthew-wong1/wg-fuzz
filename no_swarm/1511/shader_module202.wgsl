struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(35407i), Struct_2(1i), Struct_2(2147483647i), Struct_2(-32323i), Struct_2(5254i), Struct_2(-32564i), Struct_2(33546i), Struct_2(1i), Struct_2(9997i), Struct_2(-26529i), Struct_2(-63719i), Struct_2(-22597i), Struct_2(7252i));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec2<f32>(-1000f, -1536f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_3(4294967295u, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], vec3<u32>(u_input.a.x, select(u_input.a.x, _wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(arg_0.x, global1.a.x, false)), min(u_input.a, u_input.a)), 1u != min(u_input.a.x, 57969u)), u_input.a.x), 2147483647i);
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~min(var_0.c.x, 0u), ~(~4294967295u)), u_input.a.yz | select(~vec2<u32>(u_input.a.x, var_0.a), ~vec2<u32>(0u, 25036u), false), var_0.c.yx);
    let var_2 = select(global1.a, !(!global1.a), any(vec4<bool>(false, !arg_0.x, !all(vec3<bool>(true, arg_0.x, false)), global1.a.x)));
    let var_3 = firstTrailingBit(reverseBits(var_0.d) ^ ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.b.a, 0i), vec3<i32>(-10321i, 21058i, var_0.d))) ^ var_0.b.a;
    let var_4 = any(select(select(vec3<bool>(true, false, true), select(vec3<bool>(arg_0.x, false, arg_0.x), global1.a, true), !vec3<bool>(arg_0.x, var_2.x, var_2.x)), !global1.a, !(!select(vec3<bool>(false, var_2.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, false), true))));
    return var_3;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = func_3(select(select(vec2<bool>(true, true | global1.a.x), global1.a.yy, global1.a.xz), vec2<bool>(false, !(global1.a.x | true)), !vec2<bool>(1059f == global1.b.x, global1.a.x)));
    return u_input.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = global1.a.x;
    global0 = array<Struct_2, 13>();
    let var_1 = Struct_1(!select(select(select(vec3<bool>(false, false, true), global1.a, global1.a), global1.a, vec3<bool>(global1.a.x, global1.a.x, true)), vec3<bool>(false, global1.a.x, false), any(!vec3<bool>(global1.a.x, global1.a.x, true))), global1.b);
    return Struct_1(select(vec3<bool>(true, true, !(global1.a.x || true)), select(global1.a, !global1.a, select(select(vec3<bool>(var_1.a.x, false, global1.a.x), var_1.a, vec3<bool>(var_1.a.x, global1.a.x, global1.a.x)), select(global1.a, global1.a, global1.a), global1.a)), var_1.a), var_1.b);
}

fn func_1(arg_0: Struct_4) -> u32 {
    global0 = array<Struct_2, 13>();
    global1 = Struct_1(global1.a, vec2<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(246f * -684f)));
    global1 = func_4(min(abs(vec4<u32>(~u_input.a.x, abs(4294967295u), 9923u, ~u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(func_2(vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_0.a.a), Struct_2(arg_0.a.a)), ~4294967295u, u_input.a.x, ~u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(36939u, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(51969u, 27255u, 790u, u_input.a.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 37122u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)), select(~vec4<u32>(59390u, 0u, 1262u, 52631u), vec4<u32>(u_input.a.x, u_input.a.x, 115618u, 57024u) | vec4<u32>(21843u, 0u, u_input.a.x, 59305u), !vec4<bool>(false, false, false, global1.a.x)))), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1207f)))), -vec3<i32>(arg_0.a.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a, arg_0.a.a), vec2<i32>(arg_0.a.a, arg_0.a.a)) & _wgslsmith_mod_i32(arg_0.a.a, 24544i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.a, 0i, arg_0.a.a, -1i), vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, 88378i)), vec4<i32>(arg_0.a.a, 13789i, arg_0.a.a, 1i))));
    var var_0 = vec4<bool>(!all(func_4(vec4<u32>(4294967295u, u_input.a.x, 35835u, u_input.a.x), 1340f, vec3<i32>(1i, arg_0.a.a, arg_0.a.a)).a) || ((~arg_0.a.a | 5889i) != _wgslsmith_sub_i32(arg_0.a.a, 0i)), all(select(!vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), vec4<bool>(true, any(vec3<bool>(true, global1.a.x, global1.a.x)), true, -1075f < global1.b.x), true)), !(arg_0.a.a < 42744i), all(vec3<bool>(false, false, true)));
    let var_1 = Struct_2(-12755i);
    return u_input.a.x;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    global1 = Struct_1(!vec3<bool>(global1.a.x, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, global1.b.x)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1237f, 1000f) + _wgslsmith_f_op_vec2_f32(abs(global1.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(765f, global1.b.x) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b.x, -268f))))))));
    let var_0 = func_3(global1.a.zy) & firstLeadingBit(0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, 1000f, -1203f, global1.b.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, -1369f), global1.a.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(781f, 455f, _wgslsmith_f_op_f32(-855f * global1.b.x), -1337f)))));
    global0 = array<Struct_2, 13>();
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b.x, var_1.x, -1508f, 1323f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, 894f, var_1.x, var_1.x), vec4<f32>(global1.b.x, -529f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1714f, global1.b.x, var_1.x, var_1.x))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b.x, 1002f, global1.b.x, 500f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(func_4(vec4<u32>(10225u, arg_0.x, 1u, 49444u), global1.b.x, vec3<i32>(1i, 30448i, 29196i)).b.x, func_4(arg_1, var_1.x, vec3<i32>(var_0, -29361i, 19213i)).b.x, _wgslsmith_f_op_f32(1264f - global1.b.x), -1607f), vec4<f32>(_wgslsmith_div_f32(483f, global1.b.x), _wgslsmith_div_f32(global1.b.x, global1.b.x), var_1.x, 633f), vec4<bool>(true, all(vec3<bool>(global1.a.x, false, global1.a.x)), false || global1.a.x, var_0 == -2147483647i))) * vec4<f32>(global1.b.x, 814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f)), var_1.x))));
    return global0[_wgslsmith_index_u32(0u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<u32>(max(u_input.a.x, ~countOneBits(31105u)), 4294967295u), abs(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 1u), u_input.a.x), u_input.a.x, ~64674u << (countOneBits(u_input.a.x) % 32u), _wgslsmith_mod_u32(func_1(Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 13u)])), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_0.a, -30367i) ^ vec3<i32>(-1i, var_0.a, 42488i), -vec3<i32>(var_0.a, 1i, 1i), firstTrailingBit(vec3<i32>(2147483647i, var_0.a, 1i)))), abs(vec3<i32>(abs(var_0.a), ~var_0.a, firstTrailingBit(var_0.a)))), vec4<u32>(~_wgslsmith_sub_u32(u_input.a.x & u_input.a.x, 42618u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 65697u, u_input.a.x, u_input.a.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, 37582u), vec4<u32>(23498u, u_input.a.x, u_input.a.x, u_input.a.x)))), ~max(u_input.a.x ^ 54264u, u_input.a.x), min(0u & u_input.a.x, u_input.a.x) | u_input.a.x), 5220u, firstTrailingBit(abs(countOneBits(vec3<i32>(var_0.a, var_0.a, 35558i))) & _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_0.a, var_0.a, 23229i), vec3<i32>(0i, 40135i, var_0.a), false), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, -26631i, 1i), vec3<i32>(var_0.a, 2147483647i, 6109i)))));
}

