struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = 4294967295u;
    let var_1 = vec2<u32>(0u, arg_1.a);
    let var_2 = -(~vec4<i32>(_wgslsmith_clamp_i32(-22195i, ~u_input.a.x, 25743i), max(~(-1i), 1i), u_input.a.x & arg_1.b, abs(i32(-1i) * -46509i)));
    global0 = vec2<bool>(all(vec2<bool>(true, false)), true);
    var var_3 = -211f;
    return true;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    var_0 = select(vec2<bool>(!(!all(vec4<bool>(false, global0.x, true, true))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.x, true), vec3<bool>(global0.x, var_0.x, false)))), vec2<bool>(any(vec3<bool>(global0.x, global0.x && global0.x, func_3(global0.x, Struct_1(5568u, arg_0)))), !global0.x), vec2<bool>(global0.x, !(!any(vec4<bool>(false, false, true, var_0.x)))));
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(select(max(vec4<i32>(u_input.a.x, 36041i, -2147483647i, -32275i), _wgslsmith_clamp_vec4_i32(vec4<i32>(90359i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(0i, arg_0, 16800i, -14760i), vec4<i32>(arg_0, -2147483647i, 1i, 0i))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, -1i, -2147483647i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0, 7317i, u_input.a.x), vec4<i32>(1i, u_input.a.x, 1i, 2147483647i))), any(select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), false))), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, 61795i, 56476i, -35182i)), _wgslsmith_mult_vec4_i32(vec4<i32>(35268i, 9664i, u_input.a.x, 2147483647i) | vec4<i32>(-2147483647i, -38341i, arg_0, u_input.a.x), select(vec4<i32>(2147483647i, 1i, 11662i, arg_0), vec4<i32>(arg_0, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_0.x, global0.x, false, var_0.x))))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(~2672i, -1i & u_input.a.x, _wgslsmith_add_i32(u_input.a.x, 9234i), u_input.a.x), select(~vec4<i32>(u_input.a.x, u_input.a.x, -33963i, arg_0), abs(vec4<i32>(arg_0, u_input.a.x, u_input.a.x, 0i)), !vec4<bool>(global0.x, false, false, true)))));
    var_0 = select(!vec2<bool>(all(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(var_0.x, global0.x, global0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x))), false), !(!select(vec2<bool>(var_0.x, false), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, true))), var_0.x);
    let var_2 = var_1.x;
    return Struct_1(~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(83988u, 13115u), vec2<u32>(0u, 37932u)), abs(~vec2<u32>(0u, 43588u))), -49520i);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = select(select(vec2<bool>(!(global0.x != global0.x), select(false, global0.x, global0.x) || (global0.x & true)), vec2<bool>(true, true), !vec2<bool>(true, arg_0 < arg_0)), vec2<bool>(false, func_3(!any(vec2<bool>(global0.x, global0.x)), Struct_1(~arg_1.a, firstLeadingBit(-21455i)))), true);
    let var_0 = select(!(!select(select(vec4<bool>(global0.x, true, true, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, false)), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, false, false, false)), global0.x)), vec4<bool>(false, global0.x, all(select(vec2<bool>(true, false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), vec2<bool>(true, true))), (global0.x | global0.x) || true), !(!(!(true || global0.x))));
    let var_1 = countOneBits(_wgslsmith_clamp_vec4_u32((vec4<u32>(4294967295u, arg_1.a, 0u, arg_1.a) & vec4<u32>(arg_1.a, 0u, 4294967295u, 4294967295u)) | ~vec4<u32>(1u, 40325u, 22850u, arg_1.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_1.a, arg_1.a) | vec4<u32>(arg_1.a, arg_1.a, 4294967295u, 43530u), firstTrailingBit(vec4<u32>(18013u, 38540u, 0u, arg_1.a))), select(~vec4<u32>(13260u, 0u, 97925u, 9008u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.a, arg_1.a, 57126u), vec4<u32>(66946u, 87630u, arg_1.a, arg_1.a)), !vec4<bool>(global0.x, global0.x, global0.x, true)))) | _wgslsmith_div_vec4_u32(vec4<u32>(reverseBits(abs(arg_1.a)), 1u, ~arg_1.a, _wgslsmith_mod_u32(max(arg_1.a, 0u), ~arg_1.a)), (firstTrailingBit(vec4<u32>(arg_1.a, 53762u, arg_1.a, arg_1.a)) << (select(vec4<u32>(arg_1.a, 11718u, arg_1.a, 23564u), vec4<u32>(arg_1.a, 8936u, arg_1.a, 49837u), true) % vec4<u32>(32u))) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, 38530u, 0u, arg_1.a), vec4<u32>(arg_1.a, 27440u, arg_1.a, 4294967295u), vec4<u32>(64821u, 0u, 1u, arg_1.a)));
    global0 = var_0.yx;
    var var_2 = ~abs(arg_1.a);
    return Struct_1(~(~firstLeadingBit(var_1.x)), ~u_input.a.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a, 9430u, arg_0.a), vec4<u32>(49770u, arg_0.a, 0u, 89000u)) << (arg_0.a % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(min(vec2<u32>(2237u, arg_0.a), vec2<u32>(4294967295u, arg_0.a)), min(vec2<u32>(48684u, 4686u), vec2<u32>(22747u, arg_0.a))), vec2<u32>(0u, abs(arg_0.a)))) | reverseBits(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(4294967295u, 4294967295u), true), vec2<u32>(68149u, arg_0.a) & vec2<u32>(22004u, 0u)), vec2<u32>(arg_0.a, arg_0.a), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(22561u, 26683u))));
    global0 = select(vec2<bool>(!(global0.x | !global0.x), false), !(!vec2<bool>(arg_0.a > 68742u, true)), !select(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x)), vec2<bool>(false, arg_0.b < 0i), vec2<bool>(global0.x || false, all(vec2<bool>(true, global0.x)))));
    var var_1 = firstTrailingBit(20069i);
    let var_2 = true;
    var_1 = 0i;
    return Struct_1(~arg_0.a, _wgslsmith_add_i32(~firstTrailingBit(u_input.a.x << (var_0.x % 32u)), -2147483647i));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-397f, -104f))), false)), _wgslsmith_f_op_f32(ceil(-1397f)), _wgslsmith_f_op_f32(select(1f, -937f, ~arg_2.a != (1u ^ arg_3.a)))) + vec3<f32>(-608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -520f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + 479f) + -1000f), -542f))));
    global0 = vec2<bool>(any(vec2<bool>(func_2(u_input.a.x).b > 960i, any(!vec3<bool>(false, true, global0.x)))), !arg_1 != !func_3(any(vec3<bool>(global0.x, true, arg_1)), func_2(-1i)));
    var var_1 = abs(vec2<u32>(func_4(var_0.x, func_5(arg_0)).a, 1u));
    var var_2 = select(vec4<bool>(false, true, !func_3(false, func_4(var_0.x, Struct_1(2881u, arg_0.b))), false), select(vec4<bool>(all(!vec2<bool>(arg_1, true)), all(select(vec2<bool>(true, global0.x), vec2<bool>(false, arg_1), vec2<bool>(false, global0.x))), any(!vec3<bool>(arg_1, false, true)), true), !vec4<bool>(global0.x, true, global0.x, any(vec2<bool>(global0.x, global0.x))), all(!(!vec3<bool>(arg_1, true, true)))), true);
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(arg_2.a, arg_0.a), vec2<u32>(1u, arg_0.a), true), vec2<u32>(arg_2.a, 51195u) & vec2<u32>(arg_2.a, var_1.x)), vec2<u32>(~arg_3.a, 12135u)), ~arg_3.b);
    return Struct_1(~arg_2.a, -1i);
}

fn func_1() -> Struct_1 {
    global0 = vec2<bool>(true, global0.x);
    global0 = vec2<bool>(true, true);
    var var_0 = true;
    let var_1 = func_6(Struct_1(4294967295u, u_input.a.x), true, func_5(func_4(-588f, func_2(42507i))), func_4(920f, Struct_1(1u, u_input.a.x)));
    let var_2 = func_5(func_4(-224f, Struct_1(~func_6(var_1, global0.x, var_1, var_1).a, -44411i)));
    return Struct_1(var_2.a, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(~4294967295u, max(4294967295u, 4294967295u), (-55221i & u_input.a.x) < ~u_input.a.x), countOneBits(-u_input.a.x));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-558f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-120f, 1749f)))) - vec2<f32>(-590f, _wgslsmith_f_op_f32(step(-528f, -2296f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-361f, 464f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(413f, -193f))), true))))));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.x, var_2.x), -1520f) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 381f) + vec2<f32>(1522f, var_2.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(158f, 1563f) + vec2<f32>(420f, var_2.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(270f, 374f) - vec2<f32>(-2918f, -873f)), vec2<f32>(var_2.x, 205f)))))));
    var var_3 = _wgslsmith_sub_vec4_i32(~vec4<i32>(var_0.b, (var_0.b & 0i) ^ var_1.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, -1i, -5758i), vec4<i32>(u_input.a.x, var_0.b, -2147483647i, var_0.b)), 1i), ~vec4<i32>(u_input.a.x, -_wgslsmith_add_i32(var_0.b, 1i), -27938i, -(i32(-1i) * -1i)));
    let var_4 = -1i;
    let var_5 = func_6(Struct_1(var_1.a, var_3.x), select(any(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(global0.x, true, global0.x, true))), global0.x && global0.x, true), var_1, func_2(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(265f, var_2.x) + vec2<f32>(var_2.x, 744f)))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_div_f32(-583f, 435f))))), countOneBits(vec4<i32>(-(~(-2147483647i)), var_4 >> (~var_1.a % 32u), func_6(Struct_1(var_1.a, var_5.b), global0.x, func_2(31367i), func_6(var_1, false, var_5, var_1)).b, var_4)), 343f);
}

