struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: Struct_3;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = global1.b;
    global0 = array<Struct_1, 12>();
    var var_1 = Struct_3(Struct_1(firstTrailingBit(select(-global1.a.a, -global1.a.a, true)), 3042u <= _wgslsmith_sub_u32(~11405u, min(28642u, global1.c.x)), !global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 165f, global1.a.d.x, -1363f), _wgslsmith_f_op_vec4_f32(-global1.a.d)))), global1.b, _wgslsmith_sub_vec3_u32(global1.c, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.d)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(248f + global1.d) - _wgslsmith_f_op_f32(select(1118f, global1.d, global1.b))))));
    return global0[_wgslsmith_index_u32(firstLeadingBit(global1.c.x), 12u)];
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> vec2<u32> {
    global0 = array<Struct_1, 12>();
    var var_0 = func_2(global1.c.x);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -622f);
    let var_2 = false;
    global0 = array<Struct_1, 12>();
    return vec2<u32>(109503u, ~(~abs(_wgslsmith_mult_u32(0u, 1449u))));
}

fn func_3() -> vec3<i32> {
    let var_0 = 1304f;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + global1.d), func_2(global1.c.x).d.x));
    let var_2 = 1u;
    global1 = Struct_3(global0[_wgslsmith_index_u32(global1.c.x, 12u)], true, ~vec3<u32>(26443u, global1.c.x, 33764u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_div_f32(global1.a.d.x, 1356f))));
    var var_3 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.c.x, u_input.a.x), vec2<u32>(var_2, 7187u)), max(vec2<u32>(50041u, u_input.a.x), u_input.a))), ~_wgslsmith_mod_u32(~7516u, global1.c.x)) ^ ~(~(func_1(global1.a.c, vec3<u32>(0u, 4294967295u, u_input.a.x)) | u_input.a));
    return vec3<i32>(global1.a.a, abs(countOneBits(~25101i)), ~(-countOneBits(24376i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_4(false);
    var var_1 = !select(!vec4<bool>(true, var_0.a, true, global1.a.c), select(select(select(vec4<bool>(global1.a.b, global1.b, false, global1.a.c), vec4<bool>(false, false, arg_3, global1.b), false), vec4<bool>(false, true, true, global1.a.b), arg_3), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, arg_3, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.d.c, false, false, true), vec4<bool>(false, true, arg_2.b.x, arg_2.b.x)), vec4<bool>(false, false, var_0.a, var_0.a)), vec4<bool>(var_0.a || arg_2.d.c, all(vec4<bool>(false, arg_3, false, global1.b)), false, arg_2.d.c)), all(select(arg_2.e, select(arg_2.e, vec3<bool>(false, arg_3, true), arg_2.e), arg_2.e)));
    let var_2 = 151f;
    var_1 = !vec4<bool>(var_0.a, global1.a.b, !(any(vec3<bool>(false, arg_3, var_0.a)) & !arg_3), arg_3);
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, u_input.a.x), 12u)], var_0.a, global1.c, _wgslsmith_f_op_f32(trunc(349f)));
    return Struct_2(func_2(reverseBits(var_3.c.x)), select(select(var_1.zz, !select(vec2<bool>(false, true), vec2<bool>(false, false), var_1.x), select(vec2<bool>(var_1.x, false), arg_2.e.xy, var_3.b)), arg_2.b, !any(select(arg_2.e, vec3<bool>(var_3.a.b, arg_2.d.c, true), vec3<bool>(false, var_1.x, true)))), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(13170u, ~u_input.a.x), u_input.a)).d.x, Struct_1(6455i, var_3.b, global1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(519f, -481f, 2161f, var_3.a.d.x) + vec4<f32>(var_2, arg_2.a.d.x, -252f, var_3.a.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.d + vec4<f32>(-464f, var_3.d, -1436f, global1.d)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.d.d.x, 287f, global1.a.d.x, -830f)))))), vec3<bool>(arg_2.b.x, any(vec3<bool>(true, select(var_1.x, true, false), !arg_3)), arg_3));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_3 {
    var var_0 = global1.b;
    let var_1 = 0u;
    var var_2 = _wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(-913f + 2312f));
    var_0 = all(!vec4<bool>(func_2(~4294967295u).c, arg_0.a <= -37802i, func_2(arg_3).c, func_4(select(vec2<u32>(1974u, arg_3), global1.c.zx, arg_2.e.yx), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global1.a.a, arg_0.a), vec3<i32>(-87431i, global1.a.a, arg_2.d.a)), Struct_2(Struct_1(arg_2.a.a, arg_1, arg_2.a.b, arg_2.a.d), vec2<bool>(true, true), arg_0.d.x, arg_0, vec3<bool>(false, false, true)), arg_1).d.b));
    var var_3 = Struct_1(min(29748i, _wgslsmith_clamp_i32(arg_2.a.a, reverseBits(_wgslsmith_clamp_i32(1i, arg_2.a.a, 29973i)), _wgslsmith_clamp_i32(-2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-37053i, arg_2.a.a, 0i, 757i), vec4<i32>(arg_2.d.a, arg_2.a.a, 3191i, arg_0.a))))), global1.a.c, !(true & (16123i > arg_2.d.a)), _wgslsmith_f_op_vec4_f32(arg_0.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - global1.a.d)));
    return Struct_3(Struct_1(arg_0.a, ~_wgslsmith_mod_u32(var_1, var_1) >= arg_3, arg_1 != all(select(arg_2.b, vec2<bool>(arg_2.d.b, false), arg_2.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1556f, 1142f)) - _wgslsmith_f_op_f32(abs(333f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(arg_2.d.d.x - arg_2.a.d.x)), -582f, -1240f)), (!(arg_0.c & false) | true) || false, ~vec3<u32>(~var_1, var_1 << ((29179u << (var_1 % 32u)) % 32u), _wgslsmith_mod_u32(4294967295u, u_input.a.x) | 22225u), -128f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global1 = func_5(global1.a, global1.a.b, func_4(_wgslsmith_div_vec2_u32(func_1(true, max(vec3<u32>(u_input.a.x, 1960u, global1.c.x), global1.c)), max(vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(25012u, 22440u), global1.c.xz, vec2<u32>(u_input.a.x, 0u)))), func_3(), Struct_2(global0[_wgslsmith_index_u32(func_1(global1.a.b, global1.c).x >> (1u % 32u), 12u)], vec2<bool>(true, true), _wgslsmith_f_op_f32(max(-850f, global1.d)), Struct_1(-global1.a.a, true, true, global1.a.d), vec3<bool>(select(global1.a.c, global1.b, global1.b), all(vec3<bool>(true, global1.b, global1.b)), global1.a.a < global1.a.a)), any(select(!vec2<bool>(global1.a.b, global1.b), vec2<bool>(global1.a.c, true), true))), _wgslsmith_sub_u32(1u, 1u));
    let var_1 = vec2<u32>(u_input.a.x | (9611u << (~(global1.c.x & 80356u) % 32u)), ~u_input.a.x);
    let var_2 = _wgslsmith_add_vec3_i32(-_wgslsmith_sub_vec3_i32(~vec3<i32>(global1.a.a, global1.a.a, global1.a.a), ~vec3<i32>(-14121i, global1.a.a, -35636i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(2147483647i, -29500i), global1.a.a), ~(~vec3<i32>(0i, global1.a.a, 7730i)))) & max(_wgslsmith_mult_vec3_i32(vec3<i32>(select(2147483647i, 24398i, global1.a.b), i32(-1i) * -5985i, global1.a.a), firstLeadingBit(vec3<i32>(2147483647i, 14488i, 1i)) & vec3<i32>(global1.a.a, 0i, global1.a.a)), ~(~countOneBits(vec3<i32>(global1.a.a, -2147483647i, 59044i))));
    var_0 = ~(~(~abs(1u)));
    var var_3 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global1.a.d), min(countOneBits(-global1.a.a), global1.a.a & -30458i), ~vec3<i32>(~_wgslsmith_sub_i32(var_2.x, global1.a.a), func_2(func_5(Struct_1(21230i, true, global1.b, global1.a.d), global1.a.b, Struct_2(global1.a, vec2<bool>(global1.a.b, global1.b), 398f, Struct_1(global1.a.a, global1.b, global1.a.c, global1.a.d), vec3<bool>(false, true, global1.b)), var_1.x).c.x).a, global1.a.a), ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, var_1.x)), var_1), ~_wgslsmith_clamp_vec2_u32(global1.c.zx, vec2<u32>(14429u, u_input.a.x), vec2<u32>(9115u, u_input.a.x))));
}

