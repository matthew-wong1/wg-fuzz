struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(-2277f, -231f), vec2<f32>(896f, -867f), vec2<f32>(553f, -355f), vec2<f32>(-257f, 411f), vec2<f32>(-595f, 1301f), vec2<f32>(1000f, 540f), vec2<f32>(-403f, 1000f), vec2<f32>(1074f, -796f), vec2<f32>(117f, 499f), vec2<f32>(-1966f, -1045f), vec2<f32>(-133f, 1262f), vec2<f32>(-447f, 111f), vec2<f32>(1023f, 352f), vec2<f32>(857f, -1045f), vec2<f32>(1000f, 1582f), vec2<f32>(-594f, 227f), vec2<f32>(-140f, 1514f), vec2<f32>(-256f, 1049f), vec2<f32>(2159f, -250f), vec2<f32>(-878f, -1469f), vec2<f32>(412f, -443f), vec2<f32>(-171f, 106f), vec2<f32>(929f, 1108f), vec2<f32>(206f, 1405f), vec2<f32>(158f, 606f), vec2<f32>(-347f, -649f), vec2<f32>(1576f, 1457f), vec2<f32>(-1964f, -1107f));

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec2<i32>(-23482i, 20368i), vec4<f32>(530f, 909f, 1731f, -593f), 1000f), Struct_3(vec2<i32>(-11013i, 31416i), vec4<f32>(-2303f, 2471f, -458f, -1300f), -1658f), Struct_3(vec2<i32>(-8958i, -40731i), vec4<f32>(-850f, 1845f, 845f, -2004f), -488f), Struct_3(vec2<i32>(3494i, -1i), vec4<f32>(-1000f, -1743f, 781f, -1922f), -1581f), Struct_3(vec2<i32>(2147483647i, -6711i), vec4<f32>(-2388f, -1842f, 2658f, 754f), 505f), Struct_3(vec2<i32>(-4562i, 75572i), vec4<f32>(-438f, -318f, -1000f, -733f), -152f), Struct_3(vec2<i32>(-15343i, -2046i), vec4<f32>(-474f, -327f, -1555f, -1121f), 579f), Struct_3(vec2<i32>(61301i, 74427i), vec4<f32>(-157f, 786f, -1466f, -214f), 786f), Struct_3(vec2<i32>(1i, 33936i), vec4<f32>(-778f, 865f, 720f, -1344f), -659f), Struct_3(vec2<i32>(1i, -38929i), vec4<f32>(161f, 899f, 455f, -342f), 214f), Struct_3(vec2<i32>(-9738i, 2147483647i), vec4<f32>(-915f, 562f, -472f, -191f), 1000f), Struct_3(vec2<i32>(-30871i, 15044i), vec4<f32>(-237f, -1694f, -1852f, -1070f), -366f), Struct_3(vec2<i32>(-39928i, 15317i), vec4<f32>(-952f, 948f, 1187f, 1082f), 1823f), Struct_3(vec2<i32>(31674i, 35017i), vec4<f32>(-789f, -562f, 268f, 1050f), -528f));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1) -> u32 {
    let var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) * var_0));
    let var_2 = -u_input.b.x;
    let var_3 = Struct_1(!vec3<bool>(false, all(!vec4<bool>(false, false, arg_0.x, true)), arg_0.x), 2147483647i);
    let var_4 = Struct_2(Struct_1(vec3<bool>(false, (i32(-1i) * -22681i) <= _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-14996i, 1i, global0.x)), var_3.a.x), 0i));
    return 46257u;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = -u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, -335f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) + _wgslsmith_div_f32(423f, 1492f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -2469f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.x))))))), vec3<f32>(arg_0.x, -222f, arg_0.x), select(vec3<bool>(true, all(vec4<bool>(true, false, false, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))), select(vec3<bool>(true, true, true), vec3<bool>(1i < global0.x, true, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)) | false)));
    var var_2 = Struct_1(select(vec3<bool>(true, true, ~u_input.c.x != ~6521u), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), 2159f >= _wgslsmith_f_op_f32(-arg_0.x)), false), -47228i);
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, 1555f, var_1.x) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, 105f, var_1.x)))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1584f, 1872f, var_1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), true | all(vec4<bool>(true, var_2.a.x, true, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(var_1.x * 734f)), arg_0.x))));
    var var_3 = -u_input.b.x;
    return 31940u;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, true, select(any(vec3<bool>(true, true, true)), func_2(vec2<bool>(false, false), global2[_wgslsmith_index_u32(arg_0.x, 14u)], Struct_1(vec3<bool>(true, false, true), 20847i)) <= abs(arg_0.x), true)), firstTrailingBit(~(global0.x ^ _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, global0.x))));
    let var_1 = ~select(countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(7956u, arg_0.x, 8804u), vec3<u32>(arg_0.x, u_input.c.x, arg_0.x))), abs(~(~vec3<u32>(4294967295u, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_u32(max(arg_0.x, u_input.c.x), _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 32851u), u_input.c.x) != ~func_3(global1[_wgslsmith_index_u32(35525u, 28u)]));
    var var_2 = any(select(var_0.a, !vec3<bool>(any(vec4<bool>(var_0.a.x, false, false, var_0.a.x)), !var_0.a.x, true), true));
    var var_3 = var_0;
    let var_4 = global2[_wgslsmith_index_u32(~4294967295u, 14u)];
    return Struct_1(select(vec3<bool>(!var_0.a.x, !any(vec4<bool>(false, var_0.a.x, false, true)), !select(var_3.a.x, var_0.a.x, var_0.a.x)), !var_0.a, select(var_0.a.x, var_0.a.x, true)), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(9875u, u_input.c.x), vec2<u32>(4294967295u, u_input.c.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(201f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(779f)) * -1000f) * _wgslsmith_f_op_f32(-1083f + _wgslsmith_f_op_f32(f32(-1f) * -144f))), -143f));
    global1 = array<vec2<f32>, 28>();
    let var_2 = var_0.a.a;
    var var_3 = !(!(!select(vec3<bool>(var_2.x, var_0.a.a.x, var_2.x), var_0.a.a, var_0.a.a)));
    let var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~1u & _wgslsmith_clamp_u32(0u, u_input.c.x, 2211u), reverseBits(62095u), 17967u), min(~max(vec3<u32>(1u, u_input.c.x, u_input.c.x), vec3<u32>(8389u, u_input.c.x, 4055u)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 43355u), vec3<u32>(7030u, u_input.c.x, u_input.c.x)))), min(vec3<u32>(max(0u, 1u), u_input.c.x, ~0u), ~vec3<u32>(1u, u_input.c.x, 35835u) | ~vec3<u32>(u_input.c.x, 4294967295u, 0u))), firstTrailingBit(select(vec3<u32>(u_input.c.x, u_input.c.x << (u_input.c.x % 32u), 30598u & u_input.c.x), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(1u, u_input.c.x, 4294967295u)), !var_0.a.a)));
    var_0 = Struct_2(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(select(~vec3<u32>(0u, 0u, u_input.c.x), firstLeadingBit(vec3<u32>(u_input.c.x, 36941u, var_4)), select(vec3<bool>(true, var_0.a.a.x, true), vec3<bool>(var_0.a.a.x, false, false), true)) ^ reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(var_4, 48775u, 12918u)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(6143u, 4294967295u, u_input.c.x, u_input.c.x) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 25997u, 4294967295u, 20124u), vec4<u32>(u_input.c.x, u_input.c.x, var_4, var_4)) % vec4<u32>(32u))), ~vec4<u32>(0u, u_input.c.x, 60769u, 0u) & vec4<u32>(u_input.c.x | 121046u, _wgslsmith_dot_vec4_u32(vec4<u32>(23626u, 4294967295u, 1u, var_4), vec4<u32>(54340u, u_input.c.x, var_4, 4294967295u)), abs(4294967295u), var_4)), max(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(29237u, 0u, 1u)), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_4, u_input.c.x)), abs(u_input.c.x))), min(_wgslsmith_div_vec3_u32(vec3<u32>(2006u, 0u, var_4), vec3<u32>(u_input.c.x, u_input.c.x, 30493u)) >> (~vec3<u32>(var_4, 9262u, u_input.c.x) % vec3<u32>(32u)), ~(vec3<u32>(var_4, var_4, 4294967295u) ^ vec3<u32>(0u, u_input.c.x, u_input.c.x)))), 0i, vec2<u32>(_wgslsmith_mod_u32(var_4, ~35358u), 1u));
}

