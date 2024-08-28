struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(62537i, -1759i, 1i, 2147483647i), vec3<u32>(4294967295u, 4294967295u, 142577u), vec4<i32>(1i, 1i, 57258i, 1i));

var<private> global2: Struct_1 = Struct_1(vec4<i32>(-5928i, 1i, 10931i, 2147483647i), vec3<u32>(3371u, 13774u, 1u), vec4<i32>(22231i, i32(-2147483648), 15178i, 1i));

var<private> global3: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(~global0.a, global2.b, firstTrailingBit(vec4<i32>(firstLeadingBit(select(1i, 0i, false)), -_wgslsmith_add_i32(-26604i, 51000i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.x), global2.a.wx) & ~u_input.a.x, ~global2.a.x >> (global2.b.x % 32u))));
    var var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(arg_2));
    var var_3 = arg_0;
    var var_4 = vec3<bool>(false, arg_0, true);
    return vec3<bool>(-_wgslsmith_dot_vec4_i32(abs(global1.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(-76001i, -860i, 2147483647i, global2.a.x), vec4<i32>(global0.a.x, 12568i, 1i, arg_1.x), global2.a)) <= global2.a.x, reverseBits(~33941u << ((global2.b.x >> (1u % 32u)) % 32u)) < _wgslsmith_dot_vec2_u32(global2.b.zy, countOneBits(abs(vec2<u32>(global0.b.x, global1.b.x)))), all(vec3<bool>(!all(vec3<bool>(arg_0, false, false)), all(vec4<bool>(false, arg_0, arg_0, var_4.x)) && (var_4.x & arg_0), false)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global2.c, _wgslsmith_mod_vec3_u32(global1.b, ~vec3<u32>(0u, select(4294967295u, global0.b.x, true), reverseBits(global0.b.x))), abs(~global0.c));
    let var_1 = Struct_1(max(vec4<i32>(~abs(46726i), 0i, ~_wgslsmith_sub_i32(var_0.a.x, global1.c.x), u_input.a.x), countOneBits(~firstLeadingBit(vec4<i32>(-1i, 39737i, var_0.c.x, 2147483647i)))), ~(select(global2.b, global2.b, func_3(true, global2.c.zyx, vec3<f32>(1000f, -1000f, 2291f))) << (var_0.b % vec3<u32>(32u))), _wgslsmith_mod_vec4_i32(reverseBits(var_0.c), global0.c));
    var var_2 = var_1;
    let var_3 = var_1;
    var var_4 = firstTrailingBit(_wgslsmith_mult_vec4_u32(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.x, 27688u, 48819u, 75888u), vec4<u32>(global0.b.x, global2.b.x, global1.b.x, global2.b.x))), ~min(~vec4<u32>(var_3.b.x, 1u, 1u, var_1.b.x), ~vec4<u32>(global2.b.x, var_2.b.x, global2.b.x, 6237u))));
    return Struct_1(vec4<i32>(min(-1i, _wgslsmith_add_i32(var_0.a.x, ~var_1.a.x)), 2147483647i, -_wgslsmith_dot_vec2_i32(~global2.a.xx, -vec2<i32>(var_1.c.x, 1138i)), var_0.c.x), ~vec3<u32>(var_1.b.x, 4294967295u, max(4294967295u, reverseBits(var_1.b.x))), _wgslsmith_add_vec4_i32(global2.a, vec4<i32>(0i, _wgslsmith_mod_i32(2147483647i, -1i), -8769i, ~var_2.c.x)) << (~vec4<u32>(0u, _wgslsmith_clamp_u32(var_1.b.x, 4294967295u, var_1.b.x), 4259u << (0u % 32u), ~global2.b.x) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = Struct_1(-_wgslsmith_add_vec4_i32(arg_0, ~(vec4<i32>(-1i, u_input.a.x, global0.a.x, 66355i) & global0.a)), vec3<u32>(40833u, ~arg_2.b.x, ~1u), global1.a >> (~max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, global0.b.x, arg_1.b.x, 0u), vec4<u32>(arg_2.b.x, global2.b.x, arg_1.b.x, 1u)), vec4<u32>(4294967295u, global0.b.x, arg_2.b.x, 1u)) % vec4<u32>(32u)));
    global3 = ~(_wgslsmith_dot_vec3_u32(arg_2.b, countOneBits(vec3<u32>(1144u, 1u, global2.b.x))) | 1u);
    let var_0 = 553f;
    global0 = func_2();
    global3 = ~(~3208u);
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-814f + _wgslsmith_f_op_f32(486f * -932f)), -592f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, 348f)), vec2<f32>(-714f, 138f)) + vec2<f32>(_wgslsmith_f_op_f32(1626f + 1670f), _wgslsmith_f_op_f32(floor(880f))))), arg_0));
    let var_2 = func_2();
    global0 = var_2;
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(var_2.c, select(~vec4<i32>(29978i, var_2.a.x, global2.a.x, arg_1.c.x), vec4<i32>(firstLeadingBit(40591i), 1i, var_0.a.x >> (6547u % 32u), ~global1.a.x), arg_0.x)), arg_2.b, vec4<i32>(_wgslsmith_mult_i32(abs(42940i), 26967i), min(min(firstLeadingBit(arg_2.a.x), select(global2.a.x, -2147483647i, false)), arg_2.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global2.c.x), ~vec2<i32>(-4579i, var_2.a.x)), -(~19528i)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + 313f), _wgslsmith_f_op_f32(1409f - var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(global2.a.x, 21968i, var_0.c.x), var_0.a.zzw), global1.c.zxx >> (~(arg_2.b << (var_0.b % vec3<u32>(32u))) % vec3<u32>(32u))), var_2.b.yz, vec3<u32>(4294967295u, ~4294967295u, ~var_3.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(!(!vec2<bool>(all(vec2<bool>(true, false)), func_1(vec4<i32>(1i, 2147483647i, global1.a.x, u_input.a.x), Struct_1(global1.c, global2.b, vec4<i32>(-2147483647i, u_input.a.x, -59609i, -2147483647i)), Struct_1(global2.c, global1.b, vec4<i32>(2147483647i, u_input.a.x, global1.c.x, 1i))))), Struct_1(-vec4<i32>(_wgslsmith_div_i32(global2.c.x, -1i), -79610i, -2147483647i, -global2.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(global1.b.x, global2.b.x, 4294967295u)), vec3<u32>(0u, ~0u, 44264u)), global1.c), Struct_1(~_wgslsmith_add_vec4_i32(global0.a, global1.a), ~global1.b, _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647i, global1.a.x, 1i, -27807i)), global2.a)));
}

