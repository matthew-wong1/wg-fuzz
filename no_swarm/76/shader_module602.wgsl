struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-615f, 440f, 498f), vec3<f32>(1000f, -157f, 1128f), vec3<f32>(1605f, -1227f, -2039f), vec3<f32>(-1428f, 401f, 1466f), vec3<f32>(401f, -675f, -178f), vec3<f32>(-1000f, -1590f, -874f), vec3<f32>(-279f, -820f, -155f), vec3<f32>(471f, -1000f, -1869f), vec3<f32>(-1884f, 105f, 894f), vec3<f32>(-1000f, -306f, -1886f), vec3<f32>(125f, -537f, -321f), vec3<f32>(-650f, 173f, 1668f), vec3<f32>(-173f, 1144f, 718f), vec3<f32>(-984f, 490f, 1092f), vec3<f32>(-988f, 1751f, 426f), vec3<f32>(730f, 1382f, 1182f), vec3<f32>(-424f, -812f, 957f), vec3<f32>(949f, 1048f, 1757f), vec3<f32>(-140f, 821f, 248f), vec3<f32>(1318f, 1000f, 1623f), vec3<f32>(-1349f, -367f, -226f), vec3<f32>(1053f, -526f, -1551f), vec3<f32>(-427f, -1273f, 904f), vec3<f32>(807f, 1033f, -1000f), vec3<f32>(1046f, -616f, 192f), vec3<f32>(-1417f, -1490f, 672f), vec3<f32>(-848f, -257f, -1352f), vec3<f32>(1634f, -825f, -326f), vec3<f32>(2856f, -1000f, 465f));

var<private> global1: Struct_1;

var<private> global2: bool;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(35387i, 33554i, ~1i, -_wgslsmith_div_i32(global1.c, 1i)), abs(vec4<i32>(_wgslsmith_mult_i32(-2147483647i, arg_1), 5692i | arg_1, global1.d & 21629i, 1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + global1.b) + _wgslsmith_f_op_f32(sign(-1410f))), _wgslsmith_add_i32(0i, ~(~(global1.a.x << (arg_0.x % 32u)))), 38668i);
    global2 = true;
    global2 = any(!vec3<bool>(true, true, global1.b < global1.b)) && (~_wgslsmith_add_u32(arg_0.x, ~4294967295u) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 56641u) | vec3<u32>(776u, 0u, arg_0.x), firstTrailingBit(vec3<u32>(15946u, arg_0.x, arg_0.x))));
    var var_1 = Struct_1(vec4<i32>(max(global1.c, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(11436i, var_0.a.x))), _wgslsmith_div_i32(14568i, firstLeadingBit(1i)), ~global1.d, u_input.a.x & _wgslsmith_mod_i32(-1i, 1i)), arg_2.x, _wgslsmith_sub_i32(u_input.a.x, -10749i), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, select(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, 18992i, global1.c), global1.a.wzx), any(vec4<bool>(false, false, false, true))) << (_wgslsmith_add_u32(arg_0.x, 21155u) % 32u)));
    let var_2 = var_0.a.x >= u_input.a.x;
    return _wgslsmith_f_op_f32(var_0.b - var_0.b);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = Struct_1(global1.a, global1.b, abs(i32(-1i) * -44524i), -2147483647i);
    global0 = array<vec3<f32>, 29>();
    var_0 = Struct_1(var_0.a, var_0.b, -1i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-3262i, 2147483647i), -40365i));
    global2 = true;
    global1 = Struct_1(~(~(~(-global1.a))), 1296f, var_0.d, -1i);
    return _wgslsmith_mod_i32(global1.a.x ^ -1i, ~_wgslsmith_mult_i32(arg_0, -1884i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(abs(vec2<u32>(0u, 0u)), -8853i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -205f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b))))) - -1000f));
    var_1 = _wgslsmith_f_op_f32(-1230f + _wgslsmith_f_op_f32(-arg_2.b));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(31580u, 29u)] - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-436f, _wgslsmith_f_op_f32(round(arg_1.b)), arg_1.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(38637u, 29u)] + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.b, -647f, arg_1.b)))))));
    global2 = all(vec4<bool>(select(false, true, false) || false, all(vec4<bool>(true, any(vec2<bool>(true, false)), true, arg_1.b != -107f)), !any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))));
    return Struct_1(-abs(~arg_0.a), 1082f, -1i, -(_wgslsmith_mult_i32(77099i, var_0.d) << (~arg_3.x % 32u)) ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_0.a.yw, ~vec2<i32>(arg_0.c, 15214i)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, arg_2.d), arg_0.d)));
}

fn func_1() -> Struct_1 {
    global2 = true;
    let var_0 = func_4(Struct_1(abs(global1.a & vec4<i32>(global1.d, -4778i, global1.c, u_input.a.x)), _wgslsmith_f_op_f32(func_2(~vec2<u32>(1u, 1u), u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -485f)))), global1.a.x, u_input.a.x), Struct_1(global1.a, global1.b, min(_wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.a.x), global1.c), _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(global1.a.x, global1.d, global1.a.x))), vec3<i32>(-global1.a.x, ~u_input.a.x, func_3(-2147483647i)))), Struct_1(global1.a, global1.b, u_input.a.x, global1.a.x), abs(vec3<u32>(1u, 40897u, reverseBits(1u))));
    var var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), select(!vec2<bool>(false, any(vec3<bool>(true, true, true))), vec2<bool>(true, !all(vec4<bool>(false, true, false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true);
    let var_2 = func_4(func_4(func_4(var_0, func_4(Struct_1(global1.a, global1.b, 2147483647i, u_input.a.x), var_0, func_4(Struct_1(var_0.a, 697f, u_input.a.x, var_0.c), var_0, Struct_1(vec4<i32>(global1.d, 2147483647i, 30194i, -21000i), 1000f, -62154i, 39291i), vec3<u32>(4294967295u, 5548u, 50717u)), vec3<u32>(1u, 1u, 1u)), var_0, vec3<u32>(~4294967295u, ~31704u, firstLeadingBit(4294967295u))), func_4(Struct_1(vec4<i32>(0i, -10173i, global1.d, 5823i), global1.b, var_0.c, ~global1.d), Struct_1(vec4<i32>(2147483647i, global1.d, -2147483647i, -53892i), _wgslsmith_f_op_f32(abs(-1283f)), -global1.d, var_0.d), Struct_1(vec4<i32>(var_0.a.x, -16645i, 33512i, -1i), -982f, firstLeadingBit(43910i), -14758i), vec3<u32>(~1u, min(1u, 0u), 1u)), var_0, select(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_div_u32(31838u, 4294967295u), _wgslsmith_div_u32(1u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<bool>(true, true, true))), var_0, var_0, ~(~vec3<u32>(~31710u, 1u, 27600u)));
    global1 = var_0;
    return Struct_1(vec4<i32>(var_0.a.x, firstTrailingBit(u_input.a.x), func_4(func_4(var_2, var_2, var_0, vec3<u32>(7578u, 1u, 0u)), Struct_1(vec4<i32>(global1.c, global1.a.x, var_0.d, u_input.a.x) | var_0.a, _wgslsmith_f_op_f32(1407f - var_0.b), u_input.a.x, ~(-39355i)), func_4(var_0, Struct_1(global1.a, -447f, 9366i, global1.a.x), var_0, max(vec3<u32>(106990u, 0u, 0u), vec3<u32>(51908u, 4294967295u, 229u))), vec3<u32>(1u, 1u, 1u)).c, func_4(func_4(Struct_1(global1.a, -2422f, var_2.d, var_0.a.x), func_4(Struct_1(var_0.a, global1.b, -17129i, 22350i), Struct_1(global1.a, var_0.b, 2147483647i, -11497i), var_2, vec3<u32>(11943u, 7132u, 0u)), var_0, max(vec3<u32>(26064u, 34461u, 66261u), vec3<u32>(32066u, 0u, 1u))), var_2, var_0, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(23327u, 10051u, 175u), vec3<u32>(1u, 72082u, 10464u)), countOneBits(vec3<u32>(0u, 1u, 25153u)))).a.x), global1.b, i32(-1i) * -(29971i << (0u % 32u)), global1.a.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = global1.d;
    global2 = firstTrailingBit(~0u) != 1u;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.a.x, u_input.a.x & 0i, u_input.a.x, _wgslsmith_div_i32(0i, -2147483647i)), global1.a), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 2062i, 0i), vec4<i32>(global1.c, u_input.a.x, -2147483647i, global1.c))), -1420f, ~u_input.a.x, -23059i);
    global1 = Struct_1(-global1.a, 1334f, func_5(!vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, false))), func_1(), Struct_1(vec4<i32>(_wgslsmith_sub_i32(-58518i, u_input.a.x), 82372i, global1.d, u_input.a.x), _wgslsmith_f_op_f32(-global1.b), u_input.a.x, -1i)), -8838i);
    var var_0 = !vec3<bool>(!any(vec2<bool>(true, true)) & true, all(vec3<bool>(true, true, false)), false);
    var var_1 = vec4<bool>(select(!all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, true), var_0.x)), false, _wgslsmith_add_i32(countOneBits(25936i), 1i) < global1.c), var_0.x, 0u == ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(14520u, 7217u), firstTrailingBit(4294967295u)), false);
    global2 = !all(!select(select(vec3<bool>(var_0.x, true, false), var_1.zzx, true), var_1.wwy, var_1.zww));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.b)) * _wgslsmith_f_op_f32(-645f * -243f)) + -1901f)), _wgslsmith_mult_i32(~(u_input.a.x << (38256u % 32u)), 23938i), 60529u);
}

