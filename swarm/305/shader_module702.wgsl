struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: array<u32, 16> = array<u32, 16>(24034u, 4294967295u, 0u, 4294967295u, 12863u, 0u, 7604u, 44928u, 71912u, 27252u, 0u, 1u, 36868u, 10869u, 65834u, 1u);

var<private> global2: array<vec4<bool>, 18>;

var<private> global3: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1141f, 530f, -1650f), vec3<f32>(673f, -249f, -901f), vec3<f32>(1563f, -2171f, 1553f), vec3<f32>(-1442f, 207f, -172f), vec3<f32>(1031f, -1000f, -326f), vec3<f32>(603f, 694f, 225f), vec3<f32>(-717f, 1820f, -1321f), vec3<f32>(2027f, 1695f, 1404f), vec3<f32>(538f, -414f, -1950f), vec3<f32>(-369f, -968f, -1260f), vec3<f32>(-114f, -158f, 242f));

var<private> global4: array<f32, 32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = ~firstLeadingBit(28837u);
    var var_1 = Struct_2(Struct_1(-firstTrailingBit(countOneBits(vec4<i32>(u_input.c, 22859i, 0i, u_input.d)))), !arg_0 && arg_0, ~countOneBits(_wgslsmith_mult_u32(u_input.b << (1u % 32u), 30108u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)]), 32u)], 160f, _wgslsmith_f_op_f32(713f * -240f), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(32515u, 32u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(19143u, 32u)], -1334f, global4[_wgslsmith_index_u32(u_input.b, 32u)], -229f)))));
    let var_2 = ~49362u;
    let var_3 = Struct_4(Struct_2(var_1.a, var_1.b, 52606u, var_1.d), !vec4<bool>(arg_0, !(!arg_0), var_1.b, true), select(select(!vec2<bool>(arg_0, false), vec2<bool>(var_2 >= global1[_wgslsmith_index_u32(var_1.c, 16u)], any(vec3<bool>(arg_0, true, true))), (arg_0 & true) && var_1.b), vec2<bool>(all(!vec3<bool>(var_1.b, arg_0, false)), any(vec3<bool>(false, arg_0, var_1.b))), vec2<bool>(false, false)));
    let var_4 = Struct_3(!vec3<bool>(true, arg_0, true), _wgslsmith_mod_u32(~4294967295u, ~5999u), var_3.b.x);
    return Struct_2(var_1.a, var_1.b, var_1.c, vec4<f32>(global4[_wgslsmith_index_u32(~var_4.b, 32u)], -1075f, var_1.d.x, _wgslsmith_f_op_f32(var_3.a.d.x * 676f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1401f, 1530f, _wgslsmith_f_op_f32(-1865f * global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_f_op_f32(select(661f, -456f, false))), _wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], -1696f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20251u, 16u)], 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(32132u, 16u)], 16u)], 32u)]), vec4<f32>(-1385f, global4[_wgslsmith_index_u32(0u, 32u)], -385f, 1000f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], 542f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], 990f, 403f) + vec4<f32>(1957f, global4[_wgslsmith_index_u32(u_input.b, 32u)], global4[_wgslsmith_index_u32(5518u, 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11956u, 16u)], 16u)], 16u)], 16u)], 32u)]))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-510f, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 32u)], global4[_wgslsmith_index_u32(1118u, 32u)]))))) * vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(5934u, u_input.a.x), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 32u)])), _wgslsmith_f_op_f32(min(1074f, global4[_wgslsmith_index_u32(77926u, 32u)])))), global4[_wgslsmith_index_u32(u_input.a.x, 32u)], -1321f));
    let var_1 = Struct_4(func_2(any(select(vec2<bool>(false, false), vec2<bool>(true, true), true))), select(select(global2[_wgslsmith_index_u32(~func_2(false).c, 18u)], global2[_wgslsmith_index_u32(6430u, 18u)], vec4<bool>(true, true, true, true)), select(global2[_wgslsmith_index_u32(~(96635u << (u_input.a.x % 32u)), 18u)], !global2[_wgslsmith_index_u32(countOneBits(27760u), 18u)], select(select(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21840u, 16u)], 16u)], 18u)], true)), select(vec4<bool>(func_2(true).b, true, 0i >= u_input.d, true), select(select(global2[_wgslsmith_index_u32(u_input.a.x, 18u)], vec4<bool>(true, false, false, true), false), select(vec4<bool>(false, true, false, true), global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(477u, 18u)]), vec4<bool>(true, false, false, true)), false)), select(!vec2<bool>(all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)));
    var var_2 = var_1.a.a;
    global3 = array<vec3<f32>, 11>();
    var var_3 = var_1.a.a;
    return select(!var_1.c.x, var_2.a.x != abs(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -58049i), vec2<i32>(48782i, -22324i)), -vec2<i32>(2147483647i, var_3.a.x))), true);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = func_2(all(vec4<bool>(arg_0 & arg_0, arg_0 & (u_input.a.x >= 48569u), all(select(vec4<bool>(false, false, false, arg_0), vec4<bool>(false, arg_0, true, true), vec4<bool>(false, arg_0, arg_0, arg_0))), true)));
    var var_1 = select(vec4<bool>(arg_0, func_3() & (arg_0 | arg_0), arg_0, any(vec3<bool>(var_0.b, all(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c, 16u)], 18u)]), any(global2[_wgslsmith_index_u32(3215u, 18u)])))), select(vec4<bool>(all(vec2<bool>(true, true)), !(!arg_0), true, func_2(any(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.x, 16u)], 18u)])).b), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u >> (global1[_wgslsmith_index_u32(4294967295u, 16u)] % 32u), 42934u) >> (var_0.c % 32u), 18u)], any(vec4<bool>(true || var_0.b, arg_0, all(vec3<bool>(false, var_0.b, arg_0)), true))), select(global2[_wgslsmith_index_u32(~firstTrailingBit(global1[_wgslsmith_index_u32(14591u, 16u)]), 18u)], select(vec4<bool>(true, !var_0.b, false | arg_0, true), vec4<bool>(func_2(false).b, -1000f <= global4[_wgslsmith_index_u32(3429u, 32u)], true, all(vec2<bool>(var_0.b, true))), !(true | arg_0)), var_0.b || !any(vec2<bool>(false, true))));
    global0 = array<vec2<i32>, 25>();
    global1 = array<u32, 16>();
    var var_2 = _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(~(~arg_2.x & ~global1[_wgslsmith_index_u32(4294967295u, 16u)])), 32u)] + -1015f);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_div_f32(-524f, -2590f)), global4[_wgslsmith_index_u32(1u, 32u)]))), vec3<u32>(func_2(_wgslsmith_clamp_i32(-8173i, 2147483647i, 2147483647i) < var_0.a.a.x).c, func_2(var_0.a.a.x >= (var_0.a.a.x << (global1[_wgslsmith_index_u32(74547u, 16u)] % 32u))).c, var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(firstLeadingBit(9750u), 32u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 32u)] * 1109f), global4[_wgslsmith_index_u32(~u_input.a.x, 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 16u)] | 70234u, 32u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 16u)], 32u)], global4[_wgslsmith_index_u32(27959u, 32u)]), vec4<f32>(1000f, -1142f, -3129f, 223f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)]))) + _wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10446u, 16u)], 32u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(30097u, 32u)], 347f, global4[_wgslsmith_index_u32(0u, 32u)], global4[_wgslsmith_index_u32(u_input.a.x, 32u)]))))), _wgslsmith_clamp_vec3_u32(abs(abs(~vec3<u32>(u_input.a.x, 1u, 30801u))), ~reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13568u, 16u)], 16u)], 16u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50568u, 16u)], 16u)])), abs(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.b, 17011u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 43234u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 16u)], 16u)], 4294967295u, 4294967295u))))));
}

