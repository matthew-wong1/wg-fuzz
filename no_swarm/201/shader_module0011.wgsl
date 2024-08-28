struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<f32, 24> = array<f32, 24>(231f, 714f, 1601f, -495f, 1000f, 136f, 1772f, 763f, 1341f, -1478f, 1178f, 795f, -687f, 1000f, -524f, -1000f, 400f, 882f, 1391f, 1475f, 280f, 1544f, 1561f, 767f);

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, false), 2283f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(false, false, true), -1000f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), -365f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), 1942f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, false), 216f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, true, false), 666f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), 1356f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), -2928f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, false), -2095f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, true), -810f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, true, false), 782f), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, false, false), 785f), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, true), -1149f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 2583f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false), -1000f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, true), 993f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), -260f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, false), -1902f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, false), -361f), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), 1770f), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), -1857f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, false), -1638f), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 1000f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), -2683f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, false), 3076f), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, true), -1000f), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, false, false), 667f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, true), 210f), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, true), -1288f));

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = ~(vec4<u32>(39557u, firstLeadingBit(0u), 5069u, 1u) | vec4<u32>(~u_input.b, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)]), vec4<u32>(1u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30289u, 3u)], 3u)], u_input.b)), 3u)], _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.b), vec3<u32>(u_input.b, u_input.b, 5690u))), ~(~global0[_wgslsmith_index_u32(65188u, 3u)]), ~(~u_input.b)));
    let var_1 = Struct_2(vec3<u32>(112091u << ((var_0.x >> (28419u % 32u)) % 32u), firstLeadingBit(u_input.b), 33264u));
    var var_2 = var_1;
    var var_3 = !vec4<bool>(false, !all(vec2<bool>(true, false)), ((u_input.b << (65336u % 32u)) < global0[_wgslsmith_index_u32(0u, 3u)]) | all(vec2<bool>(true, true)), false);
    let var_4 = 9892u;
    return 8330u;
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    var var_0 = Struct_3(Struct_2(max(vec3<u32>(arg_0, func_3(), _wgslsmith_sub_u32(4294967295u, arg_1)), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.b, arg_0))), ~u_input.a.x, !all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))) && any(vec3<bool>(arg_1 <= 1u, true, any(vec2<bool>(true, true)))));
    global1 = array<f32, 24>();
    var var_1 = !(!(!select(select(vec4<bool>(true, var_0.c, var_0.c, false), vec4<bool>(var_0.c, var_0.c, var_0.c, true), false), select(vec4<bool>(true, false, true, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false), var_0.c), var_0.c)));
    var var_2 = ~select(vec4<i32>(var_0.b, var_0.b, 71071i, ~(-27921i)), firstTrailingBit(vec4<i32>(reverseBits(u_input.a.x), 2147483647i, var_0.b << (global0[_wgslsmith_index_u32(20667u, 3u)] % 32u), var_0.b | 10536i)), vec4<bool>(false, false, false && any(vec4<bool>(false, var_1.x, var_1.x, true)), all(vec4<bool>(true, true, true, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 24u)])) * -862f), -464f, -1450f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 3u)], 24u)]))));
    return var_0.a.a.x <= ~(~firstLeadingBit(4294967295u));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> bool {
    return func_2(abs(0u), u_input.b >> (~1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-102f, global1[_wgslsmith_index_u32(96358u, 24u)], 297f), vec3<f32>(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12962u, 3u)], 3u)], 24u)], -347f)))))))));
    let var_1 = vec2<bool>(true & !(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 1u, 1558u), vec4<u32>(65115u, 68851u, 4294967295u, 78737u)) <= global0[_wgslsmith_index_u32(0u, 3u)]), !func_1(any(vec2<bool>(true, true)), _wgslsmith_sub_vec4_i32(~vec4<i32>(51287i, 1i, 28069i, -1i), vec4<i32>(-40884i, 0i, 2147483647i, 42973i) | vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(2895u, u_input.b, 4294967295u, 30951u), vec4<u32>(u_input.b, 44477u, global0[_wgslsmith_index_u32(20855u, 3u)], 53058u))));
    var var_2 = u_input.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.b, 24u)], -149f)), global1[_wgslsmith_index_u32(u_input.b, 24u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35414u, 3u)], 24u)]))) - vec4<f32>(-487f, _wgslsmith_div_f32(807f, _wgslsmith_f_op_f32(max(772f, -2029f))), global1[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), global1[_wgslsmith_index_u32(~0u, 24u)])))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1397f, _wgslsmith_f_op_f32(sign(-629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 24u)]))), -735f)))));
    global3 = u_input.a.x;
    global0 = array<u32, 3>();
    let var_4 = Struct_3(Struct_2(~vec3<u32>(~68658u, ~1u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b, 3u)], 3u)])), firstTrailingBit(_wgslsmith_mod_i32(3410i, _wgslsmith_sub_i32(u_input.a.x, -2147483647i))), !(all(select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, false, false), false)) && var_1.x));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1051f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), vec3<u32>(1u, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_4.a.a.x, 3u)] | 4294967295u, ~u_input.b), 3u)] >> ((0u << (firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)]) % 32u)) % 32u), global0[_wgslsmith_index_u32(~(~var_4.a.a.x) << (reverseBits(~81543u) % 32u), 3u)]), ~countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, 37608i, 0i) | vec4<i32>(var_4.b, u_input.a.x, var_4.b, u_input.a.x), -vec4<i32>(var_4.b, u_input.a.x, 2147483647i, -7625i), select(vec4<i32>(u_input.a.x, 29656i, var_4.b, 1i), vec4<i32>(2147483647i, var_4.b, var_4.b, 36733i), vec4<bool>(true, var_1.x, false, false)))), var_4.a.a.xz);
}

