struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = arg_1.a;
    let var_1 = Struct_4(arg_1.a, arg_1.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.c - -800f), arg_1.c.x, _wgslsmith_f_op_f32(max(-1196f, -510f)))))), arg_1.a.a, Struct_1(var_0.a.a, vec2<bool>(arg_2, true), _wgslsmith_div_vec2_f32(arg_1.d.a.yz, var_0.a.c), -var_0.a.d));
    var var_2 = var_0.a;
    let var_3 = -var_0.a.d;
    var_0 = arg_1.a;
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_2.a.x, arg_1.e.a.x), -782f, _wgslsmith_f_op_f32(step(1263f, _wgslsmith_div_f32(var_1.e.a.x, _wgslsmith_f_op_f32(var_0.c * var_2.a.x))))), var_1.a.a.a, select(select(vec3<bool>(select(arg_1.a.b, true, true), true, !var_0.b), vec3<bool>(any(vec4<bool>(var_0.b, var_0.a.b.x, false, true)), arg_0.x, true | arg_0.x), !(!vec3<bool>(true, false, arg_0.x))), !select(!vec3<bool>(var_0.a.b.x, false, false), !vec3<bool>(arg_1.a.a.b.x, false, false), all(vec4<bool>(arg_1.e.b.x, arg_2, arg_1.d.b.x, var_1.d.b.x))), !(-253f >= _wgslsmith_f_op_f32(abs(arg_1.d.a.x))))));
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = 18233i;
    global0 = array<vec4<i32>, 28>();
    let var_1 = var_0;
    var var_2 = global2[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 10u)];
    let var_3 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(599f, 383f, 405f)) * vec3<f32>(-315f, -1065f, -1000f)), select(!global2[_wgslsmith_index_u32(arg_0.x, 10u)], !global2[_wgslsmith_index_u32(arg_0.x, 10u)], !var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(265f, -263f) + vec2<f32>(590f, 1938f))), 1i), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(trunc(-324f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1332f + 701f) + -379f)), all(vec4<bool>(var_2.x, var_2.x, false, var_2.x)) | true), max(arg_0, (vec3<u32>(17439u, 0u, 37718u) << (arg_0 % vec3<u32>(32u))) >> (~vec3<u32>(1u, 1u, arg_0.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(max(0u, ~5230u), 10u)], Struct_4(Struct_3(Struct_1(vec3<f32>(171f, -948f, -1316f), global2[_wgslsmith_index_u32(4079u, 10u)], vec2<f32>(475f, 1099f), 1i), true, -750f, true), abs(vec3<u32>(59849u, 73245u, 28247u)), vec3<f32>(-342f, -228f, -1268f), Struct_1(vec3<f32>(1062f, 1000f, 1090f), vec2<bool>(true, var_2.x), vec2<f32>(-244f, 2349f), -7593i), Struct_1(vec3<f32>(358f, 912f, -882f), vec2<bool>(var_2.x, false), vec2<f32>(260f, -136f), var_1)), false, countOneBits(global0[_wgslsmith_index_u32(countOneBits(arg_0.x), 28u)])))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(100f, -450f, -1257f) - vec3<f32>(1589f, 585f, -883f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1142f, 1143f, 723f))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-736f, 1072f, -1232f), vec3<f32>(-542f, 727f, -1074f)))))), vec2<bool>(!any(vec3<bool>(false, var_2.x, var_2.x)), var_2.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1104f, -415f) - vec2<f32>(538f, 447f)), vec2<f32>(1f, 1f))))), 24201i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 180f, 1340f)), vec3<f32>(-2336f, -1497f, 444f)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(621f, 521f, 1151f)))))), !global1[_wgslsmith_index_u32(~15331u, 13u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2358f, 1396f), vec2<f32>(-564f, -551f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(462f, 1336f) - vec2<f32>(103f, -623f)))), 1i));
    return select(global2[_wgslsmith_index_u32(abs(min(~4294967295u, ~1u) & arg_0.x), 10u)], !select(vec2<bool>(select(var_3.a.b, var_3.a.a.b.x, var_2.x), true), !select(vec2<bool>(true, false), var_3.a.a.b, vec2<bool>(true, var_3.a.b)), true), true);
}

fn func_1() -> u32 {
    let var_0 = false;
    global2 = array<vec2<bool>, 10>();
    global2 = array<vec2<bool>, 10>();
    var var_1 = reverseBits(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), firstLeadingBit(~vec4<u32>(37985u, 74863u, 1u, 0u)))));
    var var_2 = vec3<bool>(var_0, any(select(!select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), !select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, false)), !(!vec3<bool>(var_0, false, true)))), any(!func_2(select(vec3<u32>(8250u, 4294967295u, 11040u), vec3<u32>(1u, var_1.x, 4294967295u), false))));
    return select(111105u, 4294967295u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(abs(max(~16244u, 1u)), func_1(), ~1087u);
    global2 = array<vec2<bool>, 10>();
    var var_1 = 1222f;
    global1 = array<vec2<bool>, 13>();
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(272f, -456f, -544f))) - vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(447f, 369f, -441f), vec3<f32>(335f, 875f, -1643f), vec3<bool>(true, true, true)))))), vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(4294967295u, 10u)], Struct_4(Struct_3(Struct_1(vec3<f32>(-764f, 1300f, 726f), vec2<bool>(true, true), vec2<f32>(330f, -1623f), -13452i), true, -427f, false), vec3<u32>(var_0.x, 85262u, 73078u), _wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(false, true), Struct_4(Struct_3(Struct_1(vec3<f32>(368f, -190f, -734f), vec2<bool>(true, true), vec2<f32>(-735f, 1000f), u_input.a.x), false, -571f, false), vec3<u32>(var_0.x, 0u, var_0.x), vec3<f32>(1320f, 929f, -160f), Struct_1(vec3<f32>(660f, 1031f, -1347f), vec2<bool>(false, false), vec2<f32>(-751f, -251f), u_input.a.x), Struct_1(vec3<f32>(999f, -105f, -1000f), vec2<bool>(true, false), vec2<f32>(741f, 733f), 16443i)), true, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), Struct_1(vec3<f32>(258f, -2059f, 1000f), global2[_wgslsmith_index_u32(31739u, 10u)], vec2<f32>(-2764f, 559f), 2147483647i), Struct_1(vec3<f32>(347f, 1078f, -673f), global2[_wgslsmith_index_u32(var_0.x, 10u)], vec2<f32>(-1112f, -189f), 0i)), !all(vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 28u)])).xx, -u_input.a.x >> (0u % 32u)), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), func_2(vec3<u32>(var_0.x, var_0.x, 4294967295u)).x)), _wgslsmith_f_op_f32(round(1f)), !(!any(vec4<bool>(true, true, false, true))));
    global1 = array<vec2<bool>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-171f + -129f), 1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.a.x, 648f)))))));
}

