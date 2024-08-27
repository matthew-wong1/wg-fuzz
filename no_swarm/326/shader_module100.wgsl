struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    global0 = array<i32, 19>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1000f, -620f)), _wgslsmith_f_op_f32(min(971f, -1066f)), all(vec4<bool>(true, false, false, true))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -149f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(842f, 732f))))))));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = vec2<i32>(~1i, countOneBits(-max(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(59183u, 19u)], -17522i), 0i)));
    let var_1 = select(!(!vec2<bool>(arg_1.x < 1u, all(vec2<bool>(true, false)))), !vec2<bool>(true, any(vec2<bool>(true, true))), !((_wgslsmith_mod_i32(-1i, global0[_wgslsmith_index_u32(0u, 19u)]) == 1i) || true));
    let var_2 = !(!select(select(!vec4<bool>(true, var_1.x, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x)), true), vec4<bool>(var_1.x, true, select(var_1.x, true, false), var_1.x), !select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, false, false, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x))));
    let var_3 = false;
    var_0 = ~vec2<i32>(var_0.x << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.x, 1u, 1u, arg_1.x)), vec4<u32>(arg_1.x, 21724u, arg_1.x, arg_1.x)) % 32u), _wgslsmith_sub_i32(u_input.a, 0i));
    return ~4294967295u;
}

fn func_2() -> vec3<bool> {
    global0 = array<i32, 19>();
    let var_0 = Struct_3(~(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], -2147483647i, u_input.a), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 19u)], -7316i, -2147483647i))) & -(vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(18587u, 19u)], u_input.a) | vec4<i32>(global0[_wgslsmith_index_u32(31686u, 19u)], 20181i, u_input.a, 2375i))), _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], 35450i, 0i)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.a & -7100i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0i)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, global0[_wgslsmith_index_u32(0u, 19u)]), vec3<i32>(-2147483647i, u_input.a, global0[_wgslsmith_index_u32(27471u, 19u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(423f + -201f), _wgslsmith_div_f32(-1163f, -1311f)))));
    let var_1 = Struct_3(vec4<i32>(var_0.a.x, -(i32(-1i) * -57066i) >> (~(~0u) % 32u), -1i, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 1u), 19u)]), (_wgslsmith_mult_i32(countOneBits(0i), global0[_wgslsmith_index_u32(0u, 19u)]) >> (~36228u % 32u)) >> (func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), -979f), vec4<u32>(select(3382u, 33401u, true), 0u, select(37463u, 4294967295u, false), 21761u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(func_3())))) % 32u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(426f, var_0.c.x)))))));
    global0 = array<i32, 19>();
    var var_2 = Struct_4(1u, Struct_2(Struct_1(~1u, vec3<i32>(~var_1.b, _wgslsmith_dot_vec3_i32(var_0.a.xyz, vec3<i32>(global0[_wgslsmith_index_u32(1u, 19u)], 1i, 13519i)), -11557i), -(vec2<i32>(var_1.a.x, -24102i) ^ vec2<i32>(var_0.b, u_input.a)))), Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(45958u, 26296u), firstLeadingBit(vec2<u32>(17998u, 11348u))), vec3<i32>(5987i, -var_0.a.x, firstTrailingBit(var_0.b)), _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), -vec2<i32>(var_1.b, -13399i)))));
    return select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), vec3<bool>(true, true, !any(vec4<bool>(true, false, false, true))), true);
}

fn func_1(arg_0: Struct_3) -> vec4<i32> {
    global0 = array<i32, 19>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c.x, var_0.c.x, arg_0.c.x, 584f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.c.x, -1855f, var_0.c.x, arg_0.c.x)))))));
    var var_2 = arg_0;
    var var_3 = !select(select(vec3<bool>(true, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), func_2()), vec3<bool>(all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false)), true, all(vec4<bool>(false, true, false, false))), true);
    return -max(-arg_0.a, var_0.a);
}

fn func_5(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 19>();
    var var_0 = Struct_1(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 23795u, firstTrailingBit(28043u))), ~4294967295u), vec3<i32>(arg_0, arg_1.x, -_wgslsmith_mult_i32(~arg_1.x, u_input.a)), vec2<i32>(-global0[_wgslsmith_index_u32(select(47383u >> (1u % 32u), 1u, true), 19u)], select(4741i, arg_0 << (~41017u % 32u), true)));
    var var_1 = Struct_3(_wgslsmith_div_vec4_i32(countOneBits(abs(countOneBits(vec4<i32>(arg_0, global0[_wgslsmith_index_u32(var_0.a, 19u)], -2966i, arg_1.x)))), abs(_wgslsmith_clamp_vec4_i32(arg_1, arg_1, _wgslsmith_mod_vec4_i32(arg_1, vec4<i32>(0i, arg_0, u_input.a, -1i))))), 0i | ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.b.x, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<i32>(-40920i, 35738i, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = Struct_3(firstTrailingBit(abs(vec4<i32>(~global0[_wgslsmith_index_u32(var_0.a, 19u)], ~43335i, 2147483647i, ~var_0.c.x))), var_0.b.x, var_1.c);
    var_1 = Struct_3(vec4<i32>(-14011i, min(u_input.a, _wgslsmith_sub_i32(~var_0.c.x, arg_1.x ^ arg_1.x)), 19216i >> (~(var_0.a << (57427u % 32u)) % 32u), -13853i), var_0.c.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1327f, -2131f))), var_1.c) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.c.x, -1433f), vec2<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_1.c.x * 326f))))));
    return Struct_2(Struct_1(firstLeadingBit(~var_0.a & var_0.a), ~arg_1.xzz, -(~(~var_0.b.yz))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(22447u, 73807u), vec2<u32>(0u, 56161u)), abs(9799u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 1u, 77497u), vec3<u32>(12256u, 4294967295u, 4294967295u), true), vec3<u32>(24057u, 62001u, 37769u)), ~_wgslsmith_mult_u32(16023u, 51638u)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(Struct_1(5623u, vec3<i32>(8901i, -22362i, global0[_wgslsmith_index_u32(~55404u, 19u)]), vec2<i32>(~global0[_wgslsmith_index_u32(33880u, 19u)], -u_input.a))), func_5(global0[_wgslsmith_index_u32(~(~1u), 19u)], -countOneBits(func_1(Struct_3(vec4<i32>(u_input.a, global0[_wgslsmith_index_u32(76761u, 19u)], -24564i, global0[_wgslsmith_index_u32(4294967295u, 19u)]), -6665i, vec2<f32>(-2753f, -975f))))));
    let var_1 = func_5(var_0.c.a.b.x, vec4<i32>(var_0.b.a.c.x, (i32(-1i) * -2147483647i) & (var_0.c.a.b.x ^ firstLeadingBit(global0[_wgslsmith_index_u32(var_0.b.a.a, 19u)])), _wgslsmith_mod_i32(~(global0[_wgslsmith_index_u32(66781u, 19u)] | u_input.a), _wgslsmith_sub_i32(u_input.a, 0i & var_0.b.a.c.x)), -_wgslsmith_sub_i32(40628i, -1i) >> (~(var_0.c.a.a << (111286u % 32u)) % 32u)));
    let var_2 = true;
    global0 = array<i32, 19>();
    var_0 = Struct_4(_wgslsmith_div_u32(1u, ~25759u), var_0.b, func_5(firstLeadingBit(var_1.a.c.x ^ -u_input.a), ~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_1.a.c.x, var_0.c.a.b.x, global0[_wgslsmith_index_u32(var_1.a.a, 19u)], -1i)), select(vec4<i32>(-78238i, global0[_wgslsmith_index_u32(19714u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(var_1.a.a, 19u)]), vec4<i32>(-15766i, -2147483647i, global0[_wgslsmith_index_u32(34866u, 19u)], 1i), vec4<bool>(true, true, true, false)), min(vec4<i32>(var_1.a.c.x, 1i, -19418i, 2147483647i), vec4<i32>(6321i, 32374i, 11535i, u_input.a)))));
    var_0 = Struct_4(var_1.a.a, Struct_2(var_1.a), func_5(2147483647i, vec4<i32>(u_input.a, 2147483647i, -_wgslsmith_sub_i32(-403i, u_input.a), countOneBits(select(38635i, 2147483647i, false)))));
    let var_3 = ~(~(~firstLeadingBit(vec2<u32>(var_0.c.a.a, 13234u))) >> (firstTrailingBit(select(_wgslsmith_div_vec2_u32(vec2<u32>(10442u, var_1.a.a), vec2<u32>(var_0.b.a.a, var_0.a)), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.a, 7827u), vec2<u32>(var_0.c.a.a, var_1.a.a)), func_2().xx)) % vec2<u32>(32u)));
    global0 = array<i32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, -871f) - vec2<f32>(808f, 1293f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-133f, 100f))))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(697f - 255f), _wgslsmith_div_f32(285f, 978f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(970f, 1000f) - vec2<f32>(2146f, -519f)))))));
}

