struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_1(1i, vec3<u32>(4294967295u, 4294967295u, 123757u), 1137f, vec3<f32>(-685f, 541f, -2034f)), vec3<i32>(1i, i32(-2147483648), -30599i), false, Struct_2(0u, vec4<i32>(2147483647i, 43741i, 2147483647i, i32(-2147483648)))), Struct_3(Struct_1(1i, vec3<u32>(16921u, 4294967295u, 1u), 843f, vec3<f32>(-810f, -1000f, -2099f)), vec3<i32>(-14641i, 1i, 54356i), false, Struct_2(3615u, vec4<i32>(0i, 1i, 10953i, -8730i))), Struct_3(Struct_1(-25602i, vec3<u32>(68320u, 6788u, 8445u), 699f, vec3<f32>(344f, 859f, -1138f)), vec3<i32>(i32(-2147483648), -35708i, -31848i), false, Struct_2(33724u, vec4<i32>(2147483647i, 9578i, 17128i, -1i))), Struct_3(Struct_1(16818i, vec3<u32>(4294967295u, 4294967295u, 31968u), -208f, vec3<f32>(-455f, 1000f, 501f)), vec3<i32>(-23823i, 40108i, -35388i), true, Struct_2(22036u, vec4<i32>(18269i, 27891i, -9124i, i32(-2147483648)))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_3) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1153f, -194f, 417f, 2311f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1465f, arg_1, -264f)) * vec4<f32>(-290f, 420f, -779f, -1277f)))), arg_3.d);
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    let var_1 = select(vec2<bool>(true, arg_0), vec2<bool>(true, !(~arg_3.d.b.x != arg_3.d.b.x)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(var_0.b.b.x, var_0.b.b.x), -1i) <= arg_3.d.b.x);
    let var_2 = ~1u;
    return any(select(vec2<bool>(_wgslsmith_f_op_f32(-arg_3.a.d.x) >= _wgslsmith_f_op_f32(-arg_2), true), select(!select(vec2<bool>(arg_0, false), var_1, var_1), var_1, any(select(vec4<bool>(false, var_1.x, arg_0, arg_0), vec4<bool>(arg_3.c, var_1.x, arg_0, true), var_1.x))), true));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    global0 = array<Struct_3, 4>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-588f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1172f, _wgslsmith_f_op_f32(f32(-1f) * -873f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -545f)))))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> i32 {
    global0 = array<Struct_3, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-2127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.c * arg_1.a.c)), -393f) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) + arg_1.a.c), arg_1.a.d.x, arg_1.a.d.x));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.d.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-839f, arg_1.a.c, false)), var_0.x), -2166f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -981f), var_0.x)) - arg_1.a.c)));
    var var_2 = select(arg_1.d.b.xy, firstTrailingBit(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-26575i, arg_0), arg_1.d.b.zy))) ^ -(~arg_1.d.b.zw), !select(select(select(vec2<bool>(true, false), vec2<bool>(false, arg_1.c), vec2<bool>(arg_1.c, arg_1.c)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(arg_1.c, false)), arg_1.c), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.c), vec2<bool>(true, true), false), arg_1.c), vec2<bool>(!arg_1.c, arg_1.c | false)));
    var_2 = vec2<i32>(var_2.x, -66562i | abs(countOneBits(var_2.x)));
    return -2147483647i;
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.d.yz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1i, arg_0.b.x, select(vec3<bool>(all(vec3<bool>(false, false, true)), true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), any(vec2<bool>(true, true))))) - arg_0.c);
    let var_2 = 814f;
    var var_3 = Struct_1((_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.a, arg_0.a), arg_0.a) | _wgslsmith_mod_i32(~(-1i), 6837i)) | -2147483647i, arg_0.b, _wgslsmith_div_f32(279f, _wgslsmith_f_op_f32(exp2(var_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.d), arg_0.d)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.d.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2, -108f), vec2<f32>(250f, arg_0.d.x)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1017f, 1004f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-235f, -1008f)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-794f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1616f))), global0[_wgslsmith_index_u32(1u, 4u)]), true, all(vec4<bool>(true, func_1(true, -300f, -646f, global0[_wgslsmith_index_u32(9445u, 4u)]), true, true))), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), any(vec3<bool>(false, true, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true))));
    var var_1 = -countOneBits(-21283i);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(410f, 1337f, 395f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, 1991f, -522f, -2716f))) - vec4<f32>(_wgslsmith_f_op_f32(func_2(-1i, 37436u, vec3<bool>(false, var_0.x, true))), _wgslsmith_f_op_f32(select(1178f, 239f, var_0.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -2576f))), var_0.x)), Struct_2(0u, vec4<i32>(_wgslsmith_sub_i32(44800i, -7804i), 25244i, 42153i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 65355i), vec2<i32>(7929i, 1i))) >> (vec4<u32>(u_input.a, 8467u, 31270u, abs(u_input.a)) % vec4<u32>(32u))));
    let var_3 = select(min(abs(min(vec4<i32>(-37787i, 22316i, 2147483647i, -49854i) & var_2.b.b, _wgslsmith_div_vec4_i32(var_2.b.b, var_2.b.b))), -(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.b.x, var_2.b.b.x, var_2.b.b.x, var_2.b.b.x), vec4<i32>(var_2.b.b.x, -1i, var_2.b.b.x, 20778i)) >> ((vec4<u32>(u_input.a, u_input.a, 4294967295u, var_2.b.a) & vec4<u32>(var_2.b.a, var_2.b.a, 1u, u_input.a)) % vec4<u32>(32u)))), var_2.b.b, vec4<bool>(true, false, func_4(Struct_1(func_3(-2147483647i, Struct_3(Struct_1(var_2.b.b.x, vec3<u32>(u_input.a, u_input.a, var_2.b.a), -1704f, var_2.a.yxw), var_2.b.b.wwz, false, var_2.b)), ~vec3<u32>(var_2.b.a, 19504u, 26247u), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_vec3_f32(select(var_2.a.xyy, vec3<f32>(-2285f, 914f, -607f), false)))), all(!(!var_0.zx))));
    let var_4 = var_3.xwx;
    let var_5 = global0[_wgslsmith_index_u32(abs(1u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_sub_vec4_i32(var_5.d.b ^ vec4<i32>(-27666i, -20244i, 43329i, var_4.x), ~vec4<i32>(64299i, -16825i, var_2.b.b.x, -12190i)), reverseBits(~vec4<i32>(var_3.x, var_5.a.a, 1i, var_5.d.b.x))), var_2.a.zx, firstTrailingBit(_wgslsmith_mult_u32(~firstLeadingBit(var_5.d.a), u_input.a)), var_2.a.zwx, max(var_5.a.a, min(var_2.b.b.x, -6220i) | ~var_5.d.b.x));
}

