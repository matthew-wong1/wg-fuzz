struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(4294967295u, 4294967295u, 60955u), vec3<u32>(0u, 93759u, 0u), vec3<u32>(8009u, 4294967295u, 0u), vec3<u32>(58267u, 0u, 16156u), vec3<u32>(24254u, 48455u, 80594u), vec3<u32>(0u, 54105u, 4294967295u));

var<private> global1: array<u32, 19> = array<u32, 19>(0u, 4294967295u, 1u, 4294967295u, 9242u, 1u, 2876u, 0u, 4294967295u, 58124u, 16544u, 4294967295u, 93554u, 1u, 42514u, 14582u, 4294967295u, 1u, 0u);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_i32(select(arg_0.a.x, firstLeadingBit(min(arg_0.a.x >> (14607u % 32u), arg_0.b & -40934i)), any(select(select(arg_0.c.wx, vec2<bool>(true, false), arg_0.c.zx), arg_0.c.xy, !arg_0.c.x))), ~arg_0.a.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2412f, 717f, 878f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -2375f, 1518f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-344f, 136f, 1122f))), select(vec3<bool>(arg_0.c.x, true, true), vec3<bool>(arg_0.c.x, true, arg_0.c.x), vec3<bool>(false, false, true)))))));
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.a.xzz >> ((abs(vec3<u32>(global1[_wgslsmith_index_u32(31203u, 19u)], 1u, 42696u)) & ~vec3<u32>(22538u, 69541u, global1[_wgslsmith_index_u32(65118u, 19u)])) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(arg_0.b, i32(-1i) * -1656i), -42109i, ~firstLeadingBit(var_0))), _wgslsmith_div_vec3_i32(-(vec3<i32>(-1i) * -arg_0.a.wyz), arg_0.a.wzw));
    var var_4 = Struct_1(max(vec4<i32>(-55504i, _wgslsmith_dot_vec3_i32(arg_0.a.zxx, arg_0.a.wxw), 2147483647i, var_3.x), vec4<i32>(arg_0.a.x << (u_input.a % 32u), _wgslsmith_clamp_i32(arg_0.b, var_3.x, -5409i), -var_3.x, arg_0.a.x)) & arg_0.a, arg_0.a.x, arg_0.c);
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(~1u), 26988u), ~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]) | ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u | u_input.a, min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 19u)], 19u)], 37328u)), 19u)], u_input.a);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(-381f, 1004f, true)), _wgslsmith_f_op_f32(-2175f + 557f), -151f, -115f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2241f, -1586f, 2369f, 468f)), true))));
    let var_1 = var_0.zww;
    let var_2 = ~firstLeadingBit(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(Struct_1(vec4<i32>(0i, 1i, -9902i, -2147483647i), -72036i, vec4<bool>(true, true, true, true))), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(52151u, 19u)], 19u)])), 19u)], 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)] << (~vec3<u32>(1u, 0u, 0u) % vec3<u32>(32u)), vec3<bool>(true, false, select(false, true, false))));
    global0 = array<vec3<u32>, 6>();
    var var_3 = Struct_1(firstLeadingBit(~vec4<i32>(1i, _wgslsmith_mod_i32(-27242i, -45811i), _wgslsmith_dot_vec2_i32(vec2<i32>(61024i, 0i), vec2<i32>(13864i, 12553i)), -1i)), max(~max(-38363i << (u_input.a % 32u), ~4949i), abs(-1i)), vec4<bool>(true, true, !all(vec4<bool>(true, true, true, true)), true));
    return Struct_1(vec4<i32>(var_3.b | -var_3.b, -2147483647i, var_3.b ^ _wgslsmith_dot_vec3_i32(var_3.a.yyz, vec3<i32>(-2147483647i, var_3.b, var_3.a.x)), _wgslsmith_mult_i32(-1i, var_3.a.x) ^ var_3.a.x) & (vec4<i32>(-1i) * -(vec4<i32>(-14001i, -37656i, -2147483647i, -1i) | var_3.a)), ~var_3.a.x, !var_3.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    global1 = array<u32, 19>();
    global0 = array<vec3<u32>, 6>();
    global1 = array<u32, 19>();
    global0 = array<vec3<u32>, 6>();
    global0 = array<vec3<u32>, 6>();
    return func_2();
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-271f)), _wgslsmith_f_op_f32(-arg_0.x), arg_0.x, -1000f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0, vec4<f32>(573f, -1490f, arg_0.x, arg_0.x))) * vec4<f32>(arg_0.x, arg_0.x, -390f, arg_0.x))))));
    global1 = array<u32, 19>();
    return func_4(func_4(Struct_1(vec4<i32>(1i, -33892i, 0i, arg_1.a.x) & (vec4<i32>(arg_3.a.x, 34336i, arg_3.a.x, -2147483647i) | arg_1.a), min(i32(-1i) * -1i, 0i), vec4<bool>(false || arg_1.c.x, true, arg_3.c.x & arg_1.c.x, true)), firstTrailingBit(vec4<i32>(arg_1.a.x, -9558i, ~arg_3.b, _wgslsmith_sub_i32(-52765i, arg_1.b))), !arg_1.c.x), select(func_4(func_2(), countOneBits(arg_3.a), arg_3.c.x).a, vec4<i32>(arg_3.a.x, ~23607i, -arg_1.b, 2147483647i) >> (countOneBits(~vec4<u32>(global1[_wgslsmith_index_u32(16490u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)], global1[_wgslsmith_index_u32(u_input.a, 19u)])) % vec4<u32>(32u)), arg_2 & true), true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = func_5(vec4<f32>(1237f, -1009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(748f * 1176f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1175f)), _wgslsmith_f_op_f32(f32(-1f) * -1928f))))), func_4(func_2(), select(select(vec4<i32>(-1i, arg_0.a.x, arg_0.b, 2147483647i), firstTrailingBit(arg_1.a), vec4<bool>(arg_1.c.x, false, arg_1.c.x, false)), _wgslsmith_sub_vec4_i32(arg_1.a, min(vec4<i32>(2147483647i, arg_0.a.x, -2147483647i, arg_0.b), vec4<i32>(1i, arg_0.b, -2147483647i, 2147483647i))), select(select(arg_1.c.x, true, true), any(arg_0.c.zwz), true)), true), !select(all(arg_1.c.zyx), true, true), arg_1);
    var var_1 = !(!func_4(Struct_1(abs(vec4<i32>(30877i, 1i, arg_0.a.x, 53106i)), _wgslsmith_add_i32(arg_0.b, -9023i), vec4<bool>(true, arg_0.c.x, arg_0.c.x, var_0.c.x)), var_0.a ^ -vec4<i32>(var_0.b, var_0.a.x, arg_0.b, arg_1.a.x), !func_5(vec4<f32>(-141f, 1000f, 533f, -369f), var_0, var_0.c.x, var_0).c.x).c.yy);
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_4(arg_0, -vec4<i32>(-25213i | var_0.a.x, reverseBits(arg_0.b), -arg_0.b, _wgslsmith_dot_vec3_i32(arg_1.a.yyw, vec3<i32>(18507i, 2147483647i, arg_0.a.x))), arg_1.c.x | arg_1.c.x), func_4(arg_1, func_4(var_0, arg_1.a, var_1.x).a, ~arg_1.a.x > 0i).c.x, func_5(vec4<f32>(1f, 1f, 1f, 1f), Struct_1(vec4<i32>(_wgslsmith_div_i32(arg_0.b, arg_0.b), _wgslsmith_mult_i32(1i, arg_0.a.x), 2147483647i, _wgslsmith_add_i32(arg_1.a.x, arg_0.a.x)), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, 22658i), !func_5(vec4<f32>(595f, -376f, -690f, -911f), Struct_1(vec4<i32>(-24558i, -39853i, arg_1.a.x, 1i), arg_0.b, var_0.c), arg_0.c.x, arg_0).c), all(vec3<bool>(var_1.x, !var_0.c.x, arg_1.c.x)), func_2()));
    let var_3 = reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(26908u, 19u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 19280u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65470u, 19u)], 19u)]), vec3<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 4294967295u, u_input.a))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 1u), 6u)]));
    var var_4 = u_input.a;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(-1252f - -795f)))))));
}

fn func_6(arg_0: f32, arg_1: u32) -> f32 {
    global1 = array<u32, 19>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * -1176f)));
    global1 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1176f, -361f, -1093f));
    var_0 = var_1.x;
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_7(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 2222f, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, 213f, -965f, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2657f, arg_1, arg_1, -861f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1637f, 1000f, arg_1, -117f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, 536f, arg_1)))), Struct_1(vec4<i32>(_wgslsmith_sub_i32(1i, -30715i), _wgslsmith_div_i32(i32(-1i) * -19512i, -2147483647i), arg_2.x, arg_2.x), func_4(arg_3, arg_3.a, u_input.a >= 0u).b >> (global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(42049u, 2931u), 19u)] % 32u), vec4<bool>(all(!vec4<bool>(arg_0, arg_0, false, true)), false, 1i >= arg_3.b, any(vec3<bool>(false, true, true)))), !select(!arg_0, !arg_0, !any(vec3<bool>(true, arg_3.c.x, false))), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -120f, arg_1, -638f))), Struct_1(-vec4<i32>(arg_2.x, arg_3.a.x, arg_3.a.x, arg_2.x), arg_3.a.x, !vec4<bool>(false, arg_3.c.x, arg_0, arg_3.c.x)), func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2634f, arg_1, arg_1, arg_1)), vec4<f32>(arg_1, -930f, arg_1, arg_1)), arg_3, true, func_4(func_2(), vec4<i32>(arg_2.x, arg_2.x, arg_3.a.x, arg_3.a.x), false && arg_3.c.x)).c.x, arg_3));
    return StorageBuffer(_wgslsmith_clamp_i32(-11526i, -2147483647i & _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.b, arg_2.x), 2147483647i), -21419i | arg_3.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true))) || (max(~2417u, 4294967295u) != firstLeadingBit(global1[_wgslsmith_index_u32(1u, 19u)] << (u_input.a % 32u))));
    global0 = array<vec3<u32>, 6>();
    var var_1 = !(false != any(vec3<bool>(true, any(vec3<bool>(false, false, false)), true)));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1906f, 541f)))), 173f))) * 549f);
    var var_4 = 4294967295u;
    var_4 = ~u_input.a;
    var_4 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a), 0u, 40325u, ~4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(53376u, 26284u, global1[_wgslsmith_index_u32(29507u, 19u)], 70617u), vec4<u32>(4294967295u, 26087u, u_input.a, u_input.a), ~vec4<u32>(30537u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 19u)], 28463u))));
    let x = u_input.a;
    s_output = func_7(var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(1i, 1i, -2147483647i, -1i), -2147483647i, vec4<bool>(false, false, true, false)), Struct_1(vec4<i32>(-1i, -25649i, 1i, -10161i), -1i, vec4<bool>(var_2, var_2, var_2, true)))), 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-245f)) * -235f)))), vec3<i32>(0i, -1i, max(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_sub_i32(-1i, -2147483647i)) << (global1[_wgslsmith_index_u32(~abs(4294967295u), 19u)] % 32u)), func_2());
}

