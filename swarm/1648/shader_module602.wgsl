struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 34843i;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<u32> = vec4<u32>(1u, 0u, 21148u, 97830u);

var<private> global3: i32 = 0i;

var<private> global4: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<f32>(-163f, 1157f, -366f)), Struct_1(vec3<f32>(-1481f, 934f, -105f)), Struct_1(vec3<f32>(1494f, -103f, 1871f)), Struct_1(vec3<f32>(-244f, 2343f, 215f)), Struct_1(vec3<f32>(1442f, -1353f, -324f)), Struct_1(vec3<f32>(-1633f, -1664f, 939f)), Struct_1(vec3<f32>(2921f, -354f, -509f)), Struct_1(vec3<f32>(-1453f, -1287f, 147f)), Struct_1(vec3<f32>(195f, -1436f, -1000f)), Struct_1(vec3<f32>(-2068f, 299f, -837f)), Struct_1(vec3<f32>(1558f, -326f, -454f)), Struct_1(vec3<f32>(-1126f, -433f, -509f)), Struct_1(vec3<f32>(-276f, 1723f, -876f)), Struct_1(vec3<f32>(302f, -339f, -1197f)), Struct_1(vec3<f32>(-118f, 1121f, -938f)), Struct_1(vec3<f32>(-1121f, -163f, -1534f)), Struct_1(vec3<f32>(2192f, 1339f, 228f)), Struct_1(vec3<f32>(106f, -128f, -1495f)), Struct_1(vec3<f32>(-347f, 985f, -1034f)), Struct_1(vec3<f32>(-824f, -1095f, 2174f)), Struct_1(vec3<f32>(821f, -905f, -1125f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(abs(-565f));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-789f - var_0) * _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(floor(-819f)), _wgslsmith_f_op_f32(-242f - -886f)));
    var var_2 = reverseBits(countOneBits(firstTrailingBit(vec2<u32>(global2.x, 74228u)) & global2.wx));
    var var_3 = global4[_wgslsmith_index_u32(var_2.x, 21u)];
    var var_4 = ~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-57981i, -16806i, 0i, -2147483647i), countOneBits(countOneBits(vec4<i32>(-6024i, 73303i, 26561i, 21632i)))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 27244i, reverseBits(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(0i, -2147483647i))), ~firstTrailingBit(vec4<i32>(3929i, 0i, 1i, -8521i))));
    return var_3.a;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> f32 {
    global2 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(select(4294967295u, arg_1.x, true), ~arg_1.x, arg_1.x | arg_1.x, 44622u >> (global2.x % 32u)), vec4<u32>(0u, global2.x, ~u_input.a.x, _wgslsmith_mult_u32(global2.x, 45115u))), abs(vec4<u32>(_wgslsmith_add_u32(abs(global2.x), _wgslsmith_clamp_u32(arg_1.x, u_input.b.x, arg_1.x)), arg_1.x, ~_wgslsmith_add_u32(arg_1.x, u_input.b.x), arg_1.x)), ~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, global2.x, 60817u), vec4<u32>(global2.x, global2.x, 9221u, 34109u)), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 27904u, 20400u, 4294967295u), vec4<u32>(arg_1.x, 0u, u_input.a.x, 50962u)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 4294967295u, u_input.c, 4294967295u), vec4<u32>(3812u, 1691u, 162509u, 33269u)))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(132f, 993f, -1309f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1821f, 1414f, 3289f), vec3<f32>(748f, 912f, 262f))))));
    global4 = array<Struct_1, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(sign(531f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1752f), _wgslsmith_f_op_f32(-319f * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1877f)), var_0.a))));
    var var_2 = var_0;
    return _wgslsmith_f_op_f32(-var_0.a.x);
}

fn func_1() -> f32 {
    global0 = -10042i;
    var var_0 = Struct_2((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, u_input.a.x, 76621u), vec4<u32>(global2.x, u_input.b.x, 0u, 1u)) | global2.x) | _wgslsmith_mod_u32(global2.x, 0u), vec2<f32>(_wgslsmith_f_op_f32(func_2(true, global2.zwy)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1732f, _wgslsmith_f_op_f32(max(-791f, 771f)))), -1187f))), min(4322i, 1i), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(-39176i, 2147483647i, 1i, 0i) << (abs(vec4<u32>(3818u, u_input.b.x, u_input.c, 22800u)) % vec4<u32>(32u))), reverseBits(vec4<i32>(~(-1i), i32(-1i) * -41421i, reverseBits(-2147483647i), _wgslsmith_add_i32(-1i, 0i)))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(4294967295u, global2.x, u_input.a.x) ^ max(vec3<u32>(global2.x, global2.x, u_input.a.x), vec3<u32>(22529u, 0u, 1u))), select(global2.yzy, ~vec3<u32>(18371u, 0u, u_input.b.x), vec3<bool>(true, true, all(vec4<bool>(false, true, false, false))))));
    global4 = array<Struct_1, 21>();
    global3 = 0i;
    global2 = vec4<u32>(u_input.b.x << ((var_0.e.x & 4294967295u) % 32u), var_0.e.x, 30040u, 31825u);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-982f * var_0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))))));
}

fn func_4(arg_0: bool) -> Struct_2 {
    var var_0 = !(!vec4<bool>(any(vec4<bool>(arg_0, true, false, arg_0)), false, all(!vec2<bool>(arg_0, false)), all(!vec2<bool>(false, arg_0))));
    let var_1 = global4[_wgslsmith_index_u32(global2.x, 21u)];
    global1 = -(~abs(max(-2147483647i, 0i)) | _wgslsmith_clamp_i32(-_wgslsmith_add_i32(30032i, -9221i), ~(-3818i), countOneBits(1i)));
    let var_2 = global2.wx;
    let var_3 = global4[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.b.x)), 21u)];
    return Struct_2(~(~(~var_2.x)), _wgslsmith_div_vec2_f32(var_3.a.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.a.xz)))), -1i, abs(firstTrailingBit(abs(vec4<i32>(11167i, 2147483647i, 5898i, -1i)))) & vec4<i32>(-15847i, 1426i, 0i, -44656i), select(vec3<u32>(_wgslsmith_mod_u32(var_2.x, global2.x), _wgslsmith_div_u32(61311u, u_input.c), _wgslsmith_mult_u32(u_input.b.x, u_input.c)) >> (~vec3<u32>(u_input.a.x, 1u, global2.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, var_2.x, 4294967295u)), global2.xxz, ~global2.xwz), select(!var_0.xxw, select(select(var_0.xxw, var_0.yxw, vec3<bool>(true, false, arg_0)), !vec3<bool>(var_0.x, false, false), vec3<bool>(arg_0, var_0.x, var_0.x)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -512f) == _wgslsmith_f_op_f32(sign(1684f)));
    global1 = var_0.d.x << (global2.x % 32u);
    global1 = -74735i;
    global0 = -(~(-36317i));
    let var_1 = vec2<u32>(reverseBits(global2.x) & _wgslsmith_clamp_u32(0u, ~_wgslsmith_mult_u32(var_0.e.x, u_input.c), var_0.a >> (abs(var_0.a) % 32u)), var_0.a);
    var var_2 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), 11326u <= var_1.x), !vec2<bool>(var_0.d.x > -1574i, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))));
    global3 = (-(~0i << (_wgslsmith_mult_u32(u_input.a.x, u_input.c) % 32u)) >> (0u % 32u)) << (4294967295u % 32u);
    global3 = -abs(-_wgslsmith_clamp_i32(1i, 42328i, var_0.c)) & 31016i;
    var var_3 = !(!vec4<bool>(var_2.x, false, true, !select(var_2.x, true, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(select(abs(select(var_0.d.xxw, var_0.d.xyz, var_2.x)), var_0.d.zww, var_3.wwy), max(-(vec3<i32>(var_0.d.x, var_0.d.x, var_0.c) << (global2.wyx % vec3<u32>(32u))), vec3<i32>(1i, var_0.c >> (0u % 32u), var_0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(880f)))), -var_0.d.yxy | vec3<i32>(1i, countOneBits(~(-12583i)), -var_0.c));
}

