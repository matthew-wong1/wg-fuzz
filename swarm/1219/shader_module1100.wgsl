struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<i32>(33262i, i32(-2147483648), 1i), vec4<u32>(47721u, 1u, 7093u, 81332u)), Struct_1(vec3<i32>(2147483647i, 1i, 18901i), vec4<u32>(55561u, 4294967295u, 0u, 25388u)), Struct_1(vec3<i32>(1i, i32(-2147483648), 4766i), vec4<u32>(135274u, 4294967295u, 0u, 4966u)), Struct_1(vec3<i32>(2147483647i, 5609i, -1i), vec4<u32>(1u, 122842u, 160127u, 3037u)), Struct_1(vec3<i32>(27102i, 2147483647i, i32(-2147483648)), vec4<u32>(63225u, 8683u, 0u, 1u)), Struct_1(vec3<i32>(i32(-2147483648), -12677i, -1i), vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(vec3<i32>(55225i, -33627i, 25424i), vec4<u32>(1u, 1u, 12899u, 0u)), Struct_1(vec3<i32>(-9102i, -2408i, 1i), vec4<u32>(0u, 46846u, 6071u, 2030u)), Struct_1(vec3<i32>(2147483647i, 24595i, 52456i), vec4<u32>(4294967295u, 79885u, 42254u, 121624u)), Struct_1(vec3<i32>(0i, 1i, 1i), vec4<u32>(17297u, 15739u, 155283u, 4294967295u)), Struct_1(vec3<i32>(0i, 2147483647i, -33153i), vec4<u32>(20128u, 1u, 34948u, 1u)), Struct_1(vec3<i32>(0i, -45708i, 0i), vec4<u32>(0u, 19259u, 95325u, 16670u)), Struct_1(vec3<i32>(i32(-2147483648), 26517i, 2690i), vec4<u32>(58298u, 18858u, 1u, 0u)), Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), vec4<u32>(53360u, 4294967295u, 1u, 1428u)), Struct_1(vec3<i32>(-11177i, -1i, -10025i), vec4<u32>(1u, 24566u, 1u, 0u)));

var<private> global2: array<vec3<i32>, 19>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    return true && global0.x;
}

fn func_2() -> vec3<f32> {
    global1 = array<Struct_1, 15>();
    var var_0 = 4294967295u;
    let var_1 = 4294967295u;
    var var_2 = global0.x;
    let var_3 = select(vec3<bool>(true, u_input.a != u_input.a, false), !select(vec3<bool>(true, any(vec3<bool>(false, global0.x, true)), true), select(!vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(global0.x, false, true), vec3<bool>(global0.x, true, false), false), true), true), !vec3<bool>(true, global0.x, true));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(1009f, -1576f)), -555f, -626f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-474f, 395f, -512f) + vec3<f32>(233f, -794f, 531f)))), vec3<bool>(func_3(vec2<u32>(0u, u_input.a)), false, any(var_3.zx)))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(643f, 802f, 160f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-109f, -315f, 978f), vec3<f32>(528f, 1000f, 563f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(739f, 2765f, -400f), _wgslsmith_f_op_vec3_f32(vec3<f32>(247f, 951f, -1323f) + vec3<f32>(105f, -143f, 161f))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> f32 {
    global2 = array<vec3<i32>, 19>();
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_div_vec3_i32(abs(global2[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -7615i, -1i), global2[_wgslsmith_index_u32(select(41081u, 4294967295u, global0.x), 19u)]))), vec4<u32>(u_input.a, ~(~_wgslsmith_mod_u32(19097u, 19780u)), min(~(u_input.a & u_input.a), u_input.a), reverseBits(~u_input.a)));
    global2 = array<vec3<i32>, 19>();
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(var_0.b.x, 19u)], abs(vec4<u32>(_wgslsmith_div_u32(reverseBits(u_input.a), u_input.a), ~abs(var_0.b.x), select(_wgslsmith_add_u32(16263u, var_0.b.x), 66581u, arg_1.x), ~u_input.a)));
    var var_2 = var_0;
    return arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_2()), select(vec4<bool>(true, true, global0.x, all(vec2<bool>(false, false))), select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(false, true, true, global0.x)), min(arg_0.b.x, 24417u) >= 1u))), _wgslsmith_f_op_f32(f32(-1f) * -1793f));
    let var_1 = Struct_1((countOneBits(arg_2.a & vec3<i32>(arg_0.a.x, -15136i, arg_1.a.x)) << (select(vec3<u32>(u_input.a, 7383u, 15746u) << (arg_1.b.xwy % vec3<u32>(32u)), firstLeadingBit(arg_2.b.zyz), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, true, false), false)) % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(-countOneBits(vec3<i32>(20411i, arg_2.a.x, arg_2.a.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(21404i, arg_0.a.x, arg_2.a.x, 2147483647i), vec4<i32>(-2147483647i, -1i, 24271i, 2147483647i)), arg_0.a.x, _wgslsmith_div_i32(2147483647i, -3096i))), _wgslsmith_add_vec4_u32(vec4<u32>(abs(firstTrailingBit(arg_1.b.x)), 1u, ~26475u, arg_2.b.x), countOneBits(~_wgslsmith_add_vec4_u32(arg_2.b, vec4<u32>(37125u, u_input.a, 6056u, u_input.a)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -1000f) + vec3<f32>(var_0.x, -482f, 514f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(699f, -297f, var_0.x)), 229f < var_0.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -268f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -472f)), -1126f, var_0.x)));
    var var_2 = select(vec4<bool>(true, false, true, true), select(!vec4<bool>(false, select(true, global0.x, global0.x), false || global0.x, true), select(select(!vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(true, true, true, true), vec4<bool>(global0.x, global0.x, true, global0.x)), !(!vec4<bool>(true, global0.x, false, global0.x)), !select(vec4<bool>(true, true, true, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x), false)), true), !(!vec4<bool>(false, true, any(vec3<bool>(false, global0.x, false)), true)));
    global0 = vec3<bool>(false, true, _wgslsmith_add_u32(arg_2.b.x, 1u) < 80393u);
    return Struct_1(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.a.x, i32(-1i) * -2147483647i, var_1.a.x), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2667i, 4788i, 22024i), vec3<i32>(arg_2.a.x, -49803i, arg_1.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-36158i, arg_0.a.x), vec2<i32>(arg_0.a.x, var_1.a.x)), _wgslsmith_dot_vec2_i32(var_1.a.zy, arg_1.a.yz)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 29807u, arg_1.b.x), var_1.b.xxz) % vec3<u32>(32u))), arg_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    global2 = array<vec3<i32>, 19>();
    global0 = select(vec3<bool>(global0.x, ((i32(-1i) * -19310i) | arg_1.a.x) <= _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_1.a.x, arg_1.a.x, 0i), ~arg_1.a.x), true), select(select(select(vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), false || global0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, false, false)), _wgslsmith_clamp_i32(-42610i, 2147483647i, arg_0.a.x) < arg_1.a.x), vec3<bool>(true, all(global0.xz), global0.x), !(!all(vec4<bool>(false, false, true, global0.x)))), !vec3<bool>(global0.x, !all(global0.zy), any(vec3<bool>(false, global0.x, true)) || true));
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2012f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f + -229f))), all(vec4<bool>(any(global0.yy), any(vec3<bool>(false, global0.x, global0.x)), all(vec2<bool>(global0.x, true)), global0.x != global0.x))))));
    var var_1 = countOneBits(abs(9228u));
    global0 = vec3<bool>(!(_wgslsmith_f_op_f32(var_0 - var_0) <= _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(select(var_0, 641f, global0.x)))), true, true);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_add_vec3_i32(-(~global2[_wgslsmith_index_u32(u_input.a, 19u)]), func_5(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(73038u, 36124u), 15u)], func_1(Struct_1(global2[_wgslsmith_index_u32(1u, 19u)], vec4<u32>(1u, 0u, 27342u, 23157u)), Struct_1(vec3<i32>(-27340i, -23360i, -7514i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), global1[_wgslsmith_index_u32(u_input.a, 15u)])))), select(~countOneBits(~vec4<u32>(0u, 2565u, 9151u, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(24079u, 4294967295u, u_input.a, 0u), vec4<u32>(1369u, 30663u, u_input.a, 4294967295u), vec4<u32>(53053u, u_input.a, 43837u, u_input.a)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) | vec4<u32>(37483u, u_input.a, u_input.a, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, 84125u, u_input.a))) != ~(23195u >> (u_input.a % 32u))));
    let var_1 = countOneBits(var_0.b.wx);
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -633f, 1093f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(490f, -235f, 757f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1320f, -411f, -1058f), vec3<f32>(572f, 809f, -629f), vec3<bool>(global0.x, true, global0.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1155f, -1642f, -252f) + vec3<f32>(-787f, -423f, -935f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1205f, 773f, -1000f), vec3<f32>(104f, -300f, 1323f), global0.x)), vec3<f32>(-1466f, -141f, -1521f), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, global0.x), global0.x))), !all(vec2<bool>(false, global0.x)))))));
    global0 = select(select(!vec3<bool>(!global0.x, !global0.x, global0.x), vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(var_2.x != 211f, global0.x, true), vec3<bool>(var_0.a.x < var_0.a.x, false, false), vec3<bool>(true, any(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x))), vec3<bool>(!(_wgslsmith_f_op_f32(var_2.x - var_2.x) == _wgslsmith_f_op_f32(min(var_2.x, -396f))), !global0.x, !(!(var_0.a.x >= 0i))), global0.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2381f * var_2.x), _wgslsmith_f_op_f32(1402f + 1431f)))), var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2119f);
    global1 = array<Struct_1, 15>();
    global0 = select(vec3<bool>(true, true, true), select(vec3<bool>(all(vec2<bool>(true, global0.x)), !global0.x, false), select(vec3<bool>(global0.x, select(true, global0.x, global0.x), true), select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, global0.x, false))), vec3<bool>(select(global0.x, true, false), true, true)), !(true | !global0.x)), select(!(!(!vec3<bool>(global0.x, global0.x, false))), select(vec3<bool>(true, global0.x, !global0.x), !select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, true)), select(select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, global0.x), global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, global0.x, true)), true)), select(vec3<bool>(true, true, true), vec3<bool>(global0.x, true, any(global0.zx)), !vec3<bool>(global0.x, global0.x, true))));
    var var_4 = Struct_1(-global2[_wgslsmith_index_u32(1u, 19u)] | abs(global2[_wgslsmith_index_u32(51640u, 19u)]), _wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(1u), ~var_1.x, _wgslsmith_add_u32(var_1.x, 64343u), 45776u) | min(~var_0.b, vec4<u32>(4294967295u, 85104u, var_0.b.x, u_input.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b ^ var_0.b, var_0.b), max(vec4<u32>(var_1.x, 10755u, 0u, 0u), firstTrailingBit(var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_3.x))) * var_2.x));
}

