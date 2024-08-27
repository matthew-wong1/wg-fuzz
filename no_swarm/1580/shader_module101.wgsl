struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

var<private> global1: array<u32, 21>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> i32 {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    var var_0 = _wgslsmith_mod_i32(~(firstTrailingBit(2147483647i) & -1i), arg_1.c.c);
    var_0 = countOneBits(u_input.b.x);
    let var_1 = arg_1;
    return abs(12801i);
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    var var_0 = firstTrailingBit(u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1174f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-301f, -1690f)) - -595f))))));
    let var_2 = 132f;
    let var_3 = false;
    let var_4 = Struct_2(vec3<i32>(abs(func_3(1219f, Struct_2(vec3<i32>(-1i, u_input.b.x, -31215i), var_2, Struct_1(vec4<f32>(1584f, var_2, 884f, var_2), u_input.b.wyw, u_input.b.x, 115f), var_3, true))), ~1i, -1i), 2609f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 469f, var_2, 1337f))), ~vec3<i32>(-2893i, _wgslsmith_mod_i32(0i, -39818i), u_input.b.x << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 21u)], 21u)] % 32u)), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-387f)))) * var_2)), var_3, u_input.c >= u_input.d);
    return vec3<i32>(abs(0i), min(-firstTrailingBit(-23933i), -abs(var_4.c.b.x)), u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_3(~(~4294967295u), vec4<bool>(!(!arg_2.e), arg_2.d, select(arg_2.e, any(!vec3<bool>(arg_2.e, arg_2.e, arg_2.d)), true), arg_2.e), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_2.c.a.www * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c.a.zyw))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.c.a.xxy, _wgslsmith_f_op_vec3_f32(arg_2.c.a.wyy * arg_2.c.a.zyz), any(vec2<bool>(false, arg_2.d)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1421f, 184f, arg_2.c.a.x) * vec3<f32>(arg_2.b, 1426f, 1788f))))))));
    var var_1 = true && select(arg_2.e, arg_2.d | true, true);
    var_1 = arg_2.e && any(!select(select(vec3<bool>(false, false, var_0.b.x), var_0.b.xyx, var_0.b.x), var_0.b.wwz, !var_0.b.xxw));
    var_1 = var_0.b.x;
    var_1 = true | !all(vec3<bool>(true, arg_2.b >= 334f, false));
    return Struct_3(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(min(0u, 45445u), 21u)], _wgslsmith_mult_u32(4409u, firstLeadingBit(var_0.a))), 21u)], !vec4<bool>(var_0.b.x, arg_2.e, !(arg_2.e || true), arg_2.e), vec3<f32>(-2643f, _wgslsmith_f_op_f32(-1916f + 426f), arg_2.b));
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(489f + 1925f))))) - -1255f)));
    global1 = array<u32, 21>();
    global0 = array<u32, 25>();
    var var_1 = func_4(vec3<i32>(-1i, -2147483647i, reverseBits(u_input.b.x)), func_2(vec2<bool>(~(-2147483647i) > _wgslsmith_mult_i32(u_input.b.x, u_input.b.x), arg_0)), Struct_2(vec3<i32>(u_input.b.x, _wgslsmith_div_i32(0i, -1i), -66363i) << ((max(vec3<u32>(16848u, 113294u, 4294967295u), u_input.a) ^ min(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20046u, 25u)], 21u)], 21u)], 25u)], 25u)], global0[_wgslsmith_index_u32(69064u, 25u)], 52959u))) % vec3<u32>(32u)), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(822f, var_0, var_0, 453f) + vec4<f32>(260f, 1000f, var_0, 1000f))), vec3<i32>(u_input.b.x, ~u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i) | u_input.b.yy, vec2<i32>(40654i, u_input.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0, var_0)))), true && any(!vec2<bool>(arg_0, arg_0)), !(false == (426f >= var_0))));
    let var_2 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(false), select(func_4(u_input.b.wxz, max(vec3<i32>(2147483647i, u_input.b.x, -1i), _wgslsmith_div_vec3_i32(u_input.b.yzz, vec3<i32>(-4462i, u_input.b.x, u_input.b.x))), Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 41577i), u_input.b.zww), _wgslsmith_f_op_f32(f32(-1f) * -777f), Struct_1(vec4<f32>(-1174f, -898f, -1717f, -649f), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b.x, 456f), all(vec4<bool>(false, true, true, false)), false)).b, select(func_4(func_2(vec2<bool>(false, true)), -u_input.b.xxy, Struct_2(vec3<i32>(2147483647i, u_input.b.x, 11434i), -1266f, Struct_1(vec4<f32>(107f, -1466f, 113f, -702f), vec3<i32>(u_input.b.x, 0i, 0i), 11254i, -611f), true, false)).b, vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, true, true)), true, select(false, false, false))), func_4(vec3<i32>(max(u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x & u_input.b.x), u_input.b.wwz, Struct_2(u_input.b.yzy ^ u_input.b.zwz, _wgslsmith_f_op_f32(floor(1067f)), Struct_1(vec4<f32>(-1000f, -1975f, 1041f, 273f), u_input.b.zzw, 2147483647i, 1419f), true, true)).b.x), vec3<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(406f, -1589f), -1374f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1025f, -321f)) + _wgslsmith_f_op_f32(min(594f, -897f)))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0.c.x));
    var_0 = func_4(-(u_input.b.yww << (vec3<u32>(_wgslsmith_div_u32(u_input.a.x, 4294967295u), ~56447u, ~u_input.e.x) % vec3<u32>(32u))), abs(vec3<i32>(func_2(var_0.b.xx).x, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x | u_input.b.x), firstLeadingBit(1i))), Struct_2(vec3<i32>(-u_input.b.x, 0i, u_input.b.x), 1142f, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(686f, 368f, -1436f, -1207f), vec4<f32>(-804f, var_0.c.x, var_0.c.x, var_0.c.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(765f, var_0.c.x, -390f, var_0.c.x))), u_input.b.wwz, -1i, 991f), all(var_0.b.yy), !var_0.b.x));
    global0 = array<u32, 25>();
    var_1 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, var_0.c.x, -312f, 625f) - vec4<f32>(611f, var_0.c.x, var_0.c.x, -372f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 883f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 1428f, var_0.c.x, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1798f, var_0.c.x, 1601f, 656f) + vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 2137f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, -691f)), _wgslsmith_div_vec4_f32(vec4<f32>(1255f, var_0.c.x, -1000f, var_0.c.x), vec4<f32>(-1000f, var_0.c.x, 1190f, -226f))))));
}

