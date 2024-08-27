struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(i32(-2147483648), 1i, -1i, 2147483647i, i32(-2147483648), 13709i, 2147483647i, 2147483647i, 32040i);

var<private> global1: Struct_2 = Struct_2(vec3<i32>(16159i, 1i, 1i), vec2<bool>(false, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    var var_0 = -global1.a.xz | vec2<i32>(-54666i, _wgslsmith_mult_i32(~(u_input.a | global1.a.x), u_input.a));
    global0 = array<i32, 9>();
    let var_1 = Struct_2(vec3<i32>(28658i, ~(~_wgslsmith_mult_i32(20030i, -49969i)), ~global0[_wgslsmith_index_u32(~1u, 9u)]), !vec2<bool>(!all(vec3<bool>(global1.b.x, global1.b.x, true)), global1.b.x));
    return !(!(!vec3<bool>(!global1.b.x, !global1.b.x, global1.b.x)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = !(!(!func_2(-1000f)));
    var var_1 = global1.b.x;
    return any(vec3<bool>(true, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(127566u, 9u)], 0i) != u_input.a, !(609f > _wgslsmith_f_op_f32(select(362f, -529f, global1.b.x)))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = abs(vec3<u32>(1u, ~_wgslsmith_add_u32(0u, ~1u), ~firstTrailingBit(1u)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), -675f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(385f, -436f)), 237f);
    var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-324f, var_1.x)), -1214f)), -401f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1213f + var_1.x))))))));
    global1 = Struct_2(~(~min(global1.a, ~vec3<i32>(u_input.a, -1i, 1i))), !global1.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, 923f), -504f, -1245f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1326f, var_1.x, var_1.x, 1000f))), !arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1256f), -1088f, _wgslsmith_div_f32(var_1.x, -414f), 640f))));
    return !(!vec2<bool>(true, global1.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_5, arg_3: Struct_3) -> vec4<bool> {
    global1 = Struct_2(select(reverseBits(vec3<i32>(2147483647i, arg_1, global1.a.x) & vec3<i32>(global0[_wgslsmith_index_u32(1u, 9u)], 37414i, global0[_wgslsmith_index_u32(arg_2.b, 9u)])), arg_0.a.a.a, func_2(-154f)), vec2<bool>(!global1.b.x, arg_3.a.b.x));
    var var_0 = ~(~vec3<u32>(1u, 56169u, ~6955u)) & (_wgslsmith_mod_vec3_u32(~vec3<u32>(33618u, 30103u, arg_2.b) ^ countOneBits(vec3<u32>(1u, arg_2.b, 1u)), ~reverseBits(vec3<u32>(4294967295u, arg_2.b, arg_2.b))) >> ((~firstTrailingBit(vec3<u32>(0u, 49660u, arg_2.b)) >> (vec3<u32>(max(1u, 19154u), arg_2.b, max(arg_2.b, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, _wgslsmith_div_i32(abs(-26792i), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_3.a.a.x, arg_1, arg_1, global1.a.x), vec4<i32>(1i, global0[_wgslsmith_index_u32(arg_2.b, 9u)], u_input.a, global0[_wgslsmith_index_u32(arg_2.b, 9u)]) & vec4<i32>(arg_1, global0[_wgslsmith_index_u32(arg_2.b, 9u)], 45107i, -2206i)))), firstTrailingBit(-select(arg_2.d.a, arg_0.a.a.a, !global1.b.x)));
    var var_2 = (firstTrailingBit(select(74355u, arg_2.b, true) & 0u) >> ((~firstTrailingBit(1u) << (1u % 32u)) % 32u)) == ~1u;
    let var_3 = min(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.d.a.x, arg_0.a.c, -1i, arg_2.d.a.x)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -11921i, arg_1, global0[_wgslsmith_index_u32(var_0.x, 9u)]), vec4<i32>(-2147483647i, -28785i, arg_1, arg_3.a.a.x)), firstTrailingBit(vec4<i32>(arg_2.c.x, 13896i, arg_1, -2147483647i))), _wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(var_0.x, 9u)], arg_1, 2147483647i) << (vec4<u32>(var_0.x, 20280u, var_0.x, var_0.x) % vec4<u32>(32u))), ~select(vec4<i32>(arg_0.a.c, 1i, arg_2.d.a.x, arg_0.a.c), vec4<i32>(u_input.a, u_input.a, arg_1, arg_1), vec4<bool>(false, false, true, arg_0.b)))));
    return vec4<bool>(false, true, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f * _wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_0.a.b, global1.b.x))))).x, func_3(all(vec3<bool>(true, true, true))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    let var_0 = select(vec4<bool>(true, !(func_1(-1000f, 1i, 1u, Struct_1(vec4<f32>(570f, -1387f, 833f, -1112f), -1033f)) | true), global1.b.x, true), vec4<bool>(global1.b.x, true, (23983i <= u_input.a) && global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -242f)) >= _wgslsmith_f_op_f32(-448f - _wgslsmith_f_op_f32(select(214f, 1444f, false)))), func_4(Struct_4(Struct_3(Struct_2(vec3<i32>(global1.a.x, 0i, global1.a.x), global1.b), -1000f, countOneBits(46226i)), global1.b.x, global1.b.x), global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(0u, 0u)) % 32u), 9u)], Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1160f, -328f, 222f, 1000f)), _wgslsmith_f_op_f32(ceil(-2171f))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(47748u, 0u, 36996u, 4294967295u)), ~abs(global1.a.xz), Struct_2(global1.a, func_3(true))), Struct_3(Struct_2(max(global1.a, vec3<i32>(1i, -50742i, -2147483647i)), select(vec2<bool>(global1.b.x, false), global1.b, global1.b)), -1000f, global0[_wgslsmith_index_u32(66940u, 9u)])));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-232f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1040f), -514f)) + -1054f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x | 23975i, u_input.a, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(16478u, 9u)], reverseBits(16154i), -35173i)), vec3<i32>(~(-2722i), -10131i, ~global0[_wgslsmith_index_u32(firstTrailingBit(42907u), 9u)])), func_3(true));
    global1 = Struct_2(global1.a, func_2(_wgslsmith_f_op_f32(ceil(637f))).xz);
    var var_2 = Struct_4(Struct_3(Struct_2(abs(vec3<i32>(u_input.a, u_input.a, 38251i)), global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1013f) * -1373f) + 1f), ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, -42848i), global1.a.yy))), true, true);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(463f, var_2.a.b))) + var_2.a.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))))) + var_2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(361f, _wgslsmith_div_f32(218f, -1197f), global0[_wgslsmith_index_u32(91111u, 9u)], min(max(6018i, 2147483647i), -16749i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2.a.b)))) * 143f), 323f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.b))), var_2.a.b));
}

