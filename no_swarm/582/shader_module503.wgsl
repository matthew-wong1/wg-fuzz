struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<u32, 32> = array<u32, 32>(21766u, 1u, 4294967295u, 108573u, 103855u, 13853u, 35979u, 0u, 0u, 0u, 4294967295u, 826u, 0u, 4294967295u, 11949u, 94405u, 1u, 4294967295u, 4294967295u, 1u, 55744u, 51245u, 1u, 1u, 1u, 65435u, 0u, 4294967295u, 9651u, 4294967295u, 42417u, 4294967295u);

var<private> global2: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(u_input.a.xz, u_input.a.zz);
    var_0 = u_input.a.xx;
    var_0 = -u_input.a.zz;
    return true;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_3, 23>();
    var var_0 = ~vec4<i32>(u_input.a.x, u_input.a.x, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_add_i32(0i, -45237i)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 2147483647i)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, global2.a.a.x, 1314f), _wgslsmith_f_op_vec4_f32(vec4<f32>(242f, global2.b.x, -409f, global2.a.a.x) * global2.a.a)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1862f, global2.a.a.x) - _wgslsmith_f_op_vec2_f32(-global2.a.a.wx)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global2.b - vec2<f32>(global2.b.x, global2.b.x)))))), 0u, !select(vec2<bool>(func_3(false, 1000f), true), vec2<bool>(func_3(global2.d.x, -179f), global2.d.x), select(any(vec4<bool>(global2.d.x, true, global2.d.x, true)), false, func_3(global2.e, global2.b.x))), true);
    var var_2 = 1793f;
    var var_3 = true;
    return vec4<u32>(~global1[_wgslsmith_index_u32(1u, 32u)], ~(~global1[_wgslsmith_index_u32(global2.c, 32u)]), var_1.c, _wgslsmith_div_u32(~5164u, _wgslsmith_clamp_u32(0u, ~global1[_wgslsmith_index_u32(var_1.c, 32u)], _wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(var_1.c, 32u)])))) >> ((reverseBits(~vec4<u32>(1u, global2.c, global2.c, 38287u)) ^ firstLeadingBit(vec4<u32>(~global2.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, 50721u, var_1.c, 12201u), vec4<u32>(4294967295u, 1u, 27307u, var_1.c)), min(var_1.c, 1u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)] | 41279u))) % vec4<u32>(32u));
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_1(vec4<f32>(global2.a.a.x, -1475f, 883f, -2498f));
    let var_1 = true;
    var_0 = Struct_1(var_0.a);
    global0 = array<Struct_3, 23>();
    var var_2 = vec2<bool>(false, true);
    return _wgslsmith_clamp_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global2.c, 32u)]), vec3<u32>(global2.c, global1[_wgslsmith_index_u32(global2.c, 32u)], 1u))), vec3<u32>(global1[_wgslsmith_index_u32(~global2.c, 32u)], ~global1[_wgslsmith_index_u32(0u, 32u)], reverseBits(14909u)))), ~select(~vec3<u32>(32652u, 4294967295u, global1[_wgslsmith_index_u32(94450u, 32u)]), vec3<u32>(4294967295u, 0u, ~global1[_wgslsmith_index_u32(79490u, 32u)]), false), vec3<u32>(global1[_wgslsmith_index_u32(17287u, 32u)], _wgslsmith_dot_vec4_u32((vec4<u32>(global1[_wgslsmith_index_u32(global2.c, 32u)], global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)], 0u) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 32u)], 32u)], 66354u, global1[_wgslsmith_index_u32(4294967295u, 32u)], global2.c)) >> (func_2() % vec4<u32>(32u)), reverseBits(vec4<u32>(1u, 81933u, global2.c, global2.c) << (vec4<u32>(6383u, 24199u, 35935u, 5495u) % vec4<u32>(32u)))), ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(11462u, global2.c, 0u), vec3<u32>(1u, global2.c, 46651u), vec3<bool>(true, var_1, global2.e)), _wgslsmith_mult_vec3_u32(vec3<u32>(82414u, global2.c, 41585u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c, 32u)], 32u)], 1u, global2.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zx;
    var var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.c, ~0u) << (countOneBits(firstTrailingBit(4294967295u)) % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(51585u, global1[_wgslsmith_index_u32(global2.c, 32u)], 10538u), func_1())), 28154u, ~9790u);
    global0 = array<Struct_3, 23>();
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 23u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1548f, _wgslsmith_f_op_f32(global2.a.a.x + global2.b.x), _wgslsmith_f_op_f32(select(global2.a.a.x, -1000f, global2.e)), _wgslsmith_f_op_f32(abs(1468f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, 496f, global2.a.a.x) * vec3<f32>(global2.a.a.x, var_3.x, 835f)), vec3<f32>(-634f, global2.a.a.x, 1107f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, -2043f, var_3.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1183f, var_3.x, var_3.x)))))), firstLeadingBit(~vec4<u32>(countOneBits(global1[_wgslsmith_index_u32(global2.c, 32u)]), 4294967295u, 4328u, 117733u ^ var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -960f));
}

