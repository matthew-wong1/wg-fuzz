struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(72378u, vec3<i32>(52848i, -2843i, -99i), true, false, 0u), Struct_1(4294967295u, vec3<i32>(-8958i, -24008i, 0i), true, false, 23458u), Struct_1(23087u, vec3<i32>(1i, -24866i, 1i), true, true, 16081u), Struct_1(73787u, vec3<i32>(-1i, 1i, 1i), true, false, 3182u), Struct_1(0u, vec3<i32>(-38499i, 2147483647i, 2147483647i), true, true, 4294967295u), Struct_1(12778u, vec3<i32>(29334i, -12800i, 1i), false, false, 24073u), Struct_1(0u, vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), false, false, 4294967295u), Struct_1(13885u, vec3<i32>(0i, -16038i, -24015i), true, false, 21082u), Struct_1(4294967295u, vec3<i32>(-57509i, -1i, 1i), true, true, 1u), Struct_1(27333u, vec3<i32>(i32(-2147483648), 2147483647i, 41558i), true, false, 4294967295u), Struct_1(0u, vec3<i32>(1i, 45805i, -17155i), true, false, 4294967295u), Struct_1(0u, vec3<i32>(0i, 0i, -35716i), false, false, 44785u), Struct_1(1u, vec3<i32>(-1i, -43701i, 68530i), true, false, 1u), Struct_1(11982u, vec3<i32>(-17085i, i32(-2147483648), 31946i), false, false, 0u), Struct_1(9492u, vec3<i32>(-3i, 46984i, -1i), true, false, 1u), Struct_1(24541u, vec3<i32>(-7104i, 16489i, -21286i), true, false, 22685u), Struct_1(8358u, vec3<i32>(2147483647i, 47211i, -26804i), false, true, 0u), Struct_1(0u, vec3<i32>(-2809i, -61343i, -27273i), true, false, 0u), Struct_1(45312u, vec3<i32>(4276i, 12408i, -1i), true, true, 6044u), Struct_1(10725u, vec3<i32>(-10501i, -1i, -1i), true, true, 0u), Struct_1(36432u, vec3<i32>(i32(-2147483648), 6051i, 17019i), false, false, 51848u), Struct_1(83879u, vec3<i32>(43784i, 22224i, -2085i), false, true, 36879u), Struct_1(1u, vec3<i32>(-36794i, -1i, -26237i), true, true, 33239u), Struct_1(5517u, vec3<i32>(i32(-2147483648), 1013i, 56691i), true, false, 6398u), Struct_1(1u, vec3<i32>(1i, -1i, 1i), false, false, 4294967295u), Struct_1(1u, vec3<i32>(-1491i, -3807i, 0i), false, false, 1u), Struct_1(0u, vec3<i32>(0i, -1i, 6979i), false, true, 0u), Struct_1(113182u, vec3<i32>(15074i, -1170i, 1i), false, true, 1u), Struct_1(35058u, vec3<i32>(28451i, -1i, 63709i), true, false, 1u), Struct_1(1u, vec3<i32>(-1i, 14263i, 0i), true, true, 4294967295u), Struct_1(1u, vec3<i32>(-1i, 0i, 38928i), true, false, 6238u), Struct_1(18584u, vec3<i32>(-40925i, 1i, -33459i), true, false, 4294967295u));

var<private> global2: array<vec2<i32>, 31>;

var<private> global3: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-272f, 104f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2600f, 1479f))), -1398f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1070f, -391f, 739f) + _wgslsmith_div_vec3_f32(vec3<f32>(988f, 334f, 269f), vec3<f32>(158f, -984f, 1100f)))))));
    global1 = array<Struct_1, 32>();
    var var_1 = Struct_1(_wgslsmith_sub_u32(max(18497u, 10015u), _wgslsmith_mult_u32(~4294967295u, 77240u)), arg_0.b, all(vec4<bool>(arg_1.c, all(vec3<bool>(false, false, false)), arg_0.c, true)), true, _wgslsmith_clamp_u32(1u, 17515u, arg_1.a));
    return ~arg_0.e;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_0.a;
    let var_0 = Struct_1((arg_1.e | _wgslsmith_div_u32(1u, ~arg_1.a)) >> (~arg_1.e % 32u), arg_1.b, ((!arg_1.d || true) != (countOneBits(arg_0.a) != func_3(arg_1, arg_0, arg_1.e))) && arg_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1134f + 2540f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - 1615f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(527f)), 403f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1207f, -160f) - _wgslsmith_f_op_f32(f32(-1f) * -345f)))), ~(~_wgslsmith_sub_u32(arg_1.e, ~arg_1.e)));
    let var_1 = ~countOneBits(countOneBits(vec4<u32>(28205u, 23430u, 13448u, 0u) | vec4<u32>(arg_1.e, var_0.e, 1u, arg_1.e)) << (~(vec4<u32>(arg_1.a, u_input.c, 17413u, arg_1.e) << (vec4<u32>(4294967295u, 1u, 1u, arg_1.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global2 = array<vec2<i32>, 31>();
    global1 = array<Struct_1, 32>();
    return Struct_1(min(14441u, ~arg_1.e), vec3<i32>(-arg_1.b.x, arg_0.b.x, _wgslsmith_div_i32(arg_0.b.x, u_input.b)), false, true, _wgslsmith_mod_u32(~var_0.e, var_1.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(arg_1.c, arg_2.d, arg_2.c);
    global0 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~8660u, select(countOneBits(42968u), max(arg_2.a, u_input.c), true)) >> (48908u % 32u), select(3163u, _wgslsmith_mod_u32(~0u, ~(~arg_2.e)), any(vec4<bool>(arg_1.d && true, false, arg_1.c && true, arg_0.x < arg_0.x))));
    let var_1 = arg_0.x;
    var var_2 = -arg_2.b.x;
    global0 = 45483u;
    return Struct_1(4294967295u, -vec3<i32>(-arg_1.b.x >> (abs(75765u) % 32u), -max(u_input.b, 9576i), -(u_input.b | arg_2.b.x)), !(!(-25312i >= arg_2.b.x) || false), true, _wgslsmith_sub_u32(~arg_2.a, 1u >> (_wgslsmith_clamp_u32(arg_1.e, arg_1.e, arg_2.a) % 32u)) >> ((firstTrailingBit(~1u) | _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.zy)) % 32u));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), func_2(global1[_wgslsmith_index_u32(46155u, 32u)], global1[_wgslsmith_index_u32(~u_input.a.x, 32u)]), Struct_1(_wgslsmith_mod_u32(~(~0u), ~(u_input.c | 4294967295u)), vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -72866i, u_input.b), vec4<i32>(u_input.b, -1i, 36194i, 98019i))), func_2(func_2(Struct_1(u_input.c, vec3<i32>(-2147483647i, u_input.b, u_input.b), false, false, 4294967295u), global1[_wgslsmith_index_u32(1u, 32u)]), Struct_1(128745u, vec3<i32>(-2147483647i, u_input.b, u_input.b), false, true, 1u)).b.x, ~(~(-30574i))), firstLeadingBit(9304i) <= u_input.b, true, ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)));
    let var_1 = Struct_1(44748u, _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, -56862i, reverseBits(1i)), -vec3<i32>(var_0.b.x, var_0.b.x, -23654i) & var_0.b), !(select(4294967295u, 0u | u_input.a.x, true) != u_input.c), var_0.a > ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 41145u, u_input.a.x), u_input.a) | abs(u_input.c)) ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 19462u), u_input.a.xy), func_3(global1[_wgslsmith_index_u32(var_0.a, 32u)], Struct_1(12325u, var_0.b, var_0.d, var_0.d, 80944u), u_input.c), 4294967295u)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1943f, 1117f) - _wgslsmith_div_f32(861f, 1031f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1833f, 692f) - _wgslsmith_div_f32(1224f, -155f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-229f + -1446f), -273f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1341f)) * _wgslsmith_f_op_f32(265f - 640f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(546f, 483f)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-787f, 1517f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1017f, 1000f), 293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 856f)))));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), !var_0.c));
    return StorageBuffer(~(~var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 31>();
    let var_0 = Struct_1(104826u, vec3<i32>(~(-u_input.b) ^ abs(1i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(12130u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)]), 5660i), _wgslsmith_add_i32(firstLeadingBit(u_input.b), ~_wgslsmith_mod_i32(u_input.b, u_input.b))), all(vec2<bool>(true, true)), true, ~abs(u_input.a.x));
    let x = u_input.a;
    s_output = func_1();
}

