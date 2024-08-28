struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 29395i);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 117061u, 4294967295u, 913u);

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<u32>(1u, 35225u), vec3<f32>(1007f, -1336f, 1849f), -708f, 2147483647i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<f32>(-491f, 125f, 1000f), -1000f, 1i), Struct_1(vec2<u32>(21288u, 4294967295u), vec3<f32>(428f, -1037f, 583f), 482f, i32(-2147483648)), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-619f, -1287f, -1067f), -952f, 2433i), Struct_1(vec2<u32>(15465u, 35842u), vec3<f32>(1198f, -1044f, -1611f), -1000f, -29717i), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<f32>(2038f, -699f, -1286f), -477f, 21583i), Struct_1(vec2<u32>(23143u, 15126u), vec3<f32>(572f, -186f, 321f), -2255f, -54645i), Struct_1(vec2<u32>(1u, 0u), vec3<f32>(1019f, 2015f, 295f), -437f, 0i), Struct_1(vec2<u32>(5344u, 2394u), vec3<f32>(447f, -2407f, -745f), 121f, 20382i), Struct_1(vec2<u32>(1u, 85674u), vec3<f32>(-1000f, -353f, 517f), -412f, 1i), Struct_1(vec2<u32>(13966u, 51389u), vec3<f32>(-1000f, -332f, 1512f), 416f, 48689i), Struct_1(vec2<u32>(1u, 49067u), vec3<f32>(-2019f, -1717f, -169f), -1469f, 48259i), Struct_1(vec2<u32>(0u, 747u), vec3<f32>(-273f, -993f, 873f), -305f, 2548i), Struct_1(vec2<u32>(0u, 27387u), vec3<f32>(448f, -176f, -1054f), -1438f, 0i), Struct_1(vec2<u32>(4294967295u, 15997u), vec3<f32>(233f, 620f, 725f), 1000f, 1i), Struct_1(vec2<u32>(49281u, 36170u), vec3<f32>(-687f, 1141f, -907f), 1938f, -1i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_1(~global1.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.a.b) * arg_1.a.b), _wgslsmith_f_op_f32(max(arg_0, arg_0)), ~(arg_1.a.d << (u_input.a % 32u)));
    global2 = array<Struct_1, 16>();
    global0 = arg_2;
    global2 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.a.c, var_0.c)), -1349f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return ~var_0.a.x;
}

fn func_2() -> Struct_2 {
    global2 = array<Struct_1, 16>();
    let var_0 = Struct_2(Struct_1(countOneBits(~global1.zz), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-806f, -486f, -700f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1480f * 969f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(min(-478f, -988f)))), global0.x), (true == !(28073u < global1.x)) && true, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1638f - -984f))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, global1.x), u_input.a, _wgslsmith_div_u32(u_input.a, 1u)), 16u)], false, _wgslsmith_clamp_u32(17653u, u_input.a, u_input.a)), vec2<i32>(select(global0.x, 12345i, true), min(abs(global0.x), -global0.x))));
    let var_1 = Struct_1(select(~vec2<u32>(_wgslsmith_mult_u32(18652u, 78493u), ~1u), _wgslsmith_mod_vec2_u32(reverseBits(~var_0.a.a), ~(~var_0.a.a)), select(vec2<bool>(false, any(vec3<bool>(var_0.b, var_0.b, var_0.b))), select(select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.b)), select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)), any(vec2<bool>(true, false))), !(global0.x <= 0i))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2321f), 377f, var_0.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-289f, -663f)))), _wgslsmith_f_op_f32(f32(-1f) * -212f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2068f) - _wgslsmith_f_op_f32(-499f + -527f)))), var_0.a.d);
    var var_2 = Struct_1(~(~(~vec2<u32>(var_0.c, 1u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -990f))) * var_0.a.c), _wgslsmith_f_op_f32(-var_1.b.x), 1028f), 353f, _wgslsmith_mod_i32(-2547i, _wgslsmith_add_i32(global0.x, _wgslsmith_mod_i32(~var_0.a.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -60961i), vec2<i32>(var_0.a.d, -1i))))));
    var_2 = var_0.a;
    return Struct_2(Struct_1(reverseBits(select(var_1.a, vec2<u32>(34832u, var_0.a.a.x), vec2<bool>(var_0.b, false))) >> (global1.wy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(max(var_2.b, _wgslsmith_f_op_vec3_f32(-var_0.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) * -1987f) + _wgslsmith_f_op_f32(-286f + _wgslsmith_div_f32(-1000f, 1326f))), global0.x | -17411i), all(vec2<bool>(false, var_0.b)), ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(15046u, 10669u, var_0.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, 1u, 3573u), global1.zxw))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> u32 {
    global1 = abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 37913u, 5873u), vec4<u32>(arg_1.x, arg_1.x, 4294967295u, arg_1.x)), arg_1.x, global1.x >> (u_input.a % 32u), countOneBits(64134u)) << (vec4<u32>(~arg_1.x, ~u_input.a ^ _wgslsmith_div_u32(global1.x, 4294967295u), _wgslsmith_sub_u32(global1.x, global1.x) << (40850u % 32u), 28177u) % vec4<u32>(32u)));
    let var_0 = 1000f;
    var var_1 = func_2();
    var var_2 = select(arg_0, arg_0, vec2<bool>(all(vec2<bool>(var_1.a.d >= 0i, var_1.b)), var_1.a.b.x >= _wgslsmith_f_op_f32(f32(-1f) * -814f)));
    global0 = vec2<i32>(-1i) * -min(_wgslsmith_add_vec2_i32(vec2<i32>(29117i, -37417i), -vec2<i32>(var_1.a.d, 14437i)), ~select(vec2<i32>(19674i, global0.x), vec2<i32>(global0.x, var_1.a.d), vec2<bool>(false, true)));
    return select(arg_1.x & select(~(~1u), firstLeadingBit(4294967295u), true), ~global1.x, !(!(!var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = -select(_wgslsmith_div_vec4_i32(~max(vec4<i32>(2147483647i, 2147483647i, global0.x, global0.x), vec4<i32>(1i, 0i, -35298i, global0.x)), abs(vec4<i32>(global0.x, 0i, global0.x, 10395i))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, ~global0.x, global0.x), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, 1i, global0.x, 43433i)), vec4<i32>(0i, -2147483647i, -2147483647i, global0.x))), !vec4<bool>(true, true, global0.x > global0.x, false));
    var_0 = ~var_1.x;
    global1 = (vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(20688u, 1u, u_input.a, 16240u)), vec4<u32>(u_input.a, 0u, global1.x, u_input.a) | vec4<u32>(u_input.a, global1.x, global1.x, global1.x)), ~(~u_input.a), 94366u, 59335u) | ((~vec4<u32>(40303u, 3303u, 1u, u_input.a) | vec4<u32>(76761u, 24959u, global1.x, 1115u)) | (select(vec4<u32>(70819u, global1.x, global1.x, 65559u), vec4<u32>(1u, global1.x, u_input.a, 0u), true) << (~vec4<u32>(global1.x, global1.x, 7316u, 0u) % vec4<u32>(32u))))) & vec4<u32>(44627u, func_1(vec2<bool>(true, false), ~vec2<u32>(u_input.a, global1.x)), ~u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(133808u, u_input.a), global1.xx));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-518f, 399f))), _wgslsmith_f_op_f32(-1374f - 348f), -1216f)));
    var_0 = var_1.x;
    let var_3 = Struct_2(func_2().a, 309u <= ~global1.x, ~global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(global1.x, var_3.c), vec4<u32>(~global1.x, countOneBits(u_input.a), 1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, var_3.c, global1.x, u_input.a), vec4<u32>(0u, 29930u, 11227u, var_3.a.a.x), vec4<bool>(var_3.b, false, true, false)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 6379u, u_input.a, var_3.a.a.x), vec4<u32>(global1.x, 24366u, 38310u, var_3.c)))));
}

