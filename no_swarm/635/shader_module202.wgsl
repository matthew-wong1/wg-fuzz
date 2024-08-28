struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<f32>(-552f, 1151f, 1000f), vec2<i32>(57020i, 50681i), true)), Struct_2(Struct_1(vec3<f32>(974f, -254f, -142f), vec2<i32>(37110i, -1i), true)), Struct_2(Struct_1(vec3<f32>(-752f, 943f, 333f), vec2<i32>(9516i, -22276i), false)), Struct_2(Struct_1(vec3<f32>(-279f, 456f, -1450f), vec2<i32>(-1i, -15140i), false)), Struct_2(Struct_1(vec3<f32>(-320f, -1000f, -1000f), vec2<i32>(-8245i, 2147483647i), true)), Struct_2(Struct_1(vec3<f32>(-405f, 1000f, 872f), vec2<i32>(-31740i, -34430i), true)), Struct_2(Struct_1(vec3<f32>(-430f, 664f, -165f), vec2<i32>(-7168i, -108672i), true)), Struct_2(Struct_1(vec3<f32>(-264f, 186f, -901f), vec2<i32>(-19599i, -1297i), false)), Struct_2(Struct_1(vec3<f32>(-330f, 1572f, -711f), vec2<i32>(-25260i, 1i), false)), Struct_2(Struct_1(vec3<f32>(1888f, 299f, -240f), vec2<i32>(2147483647i, 15241i), true)), Struct_2(Struct_1(vec3<f32>(1738f, -1000f, 2066f), vec2<i32>(i32(-2147483648), -36463i), false)), Struct_2(Struct_1(vec3<f32>(-374f, 652f, 1881f), vec2<i32>(4746i, 0i), false)), Struct_2(Struct_1(vec3<f32>(351f, 583f, -716f), vec2<i32>(i32(-2147483648), 15075i), false)), Struct_2(Struct_1(vec3<f32>(-1234f, -1588f, -1299f), vec2<i32>(-8516i, -1i), true)), Struct_2(Struct_1(vec3<f32>(370f, -1196f, 1000f), vec2<i32>(92772i, -10957i), false)), Struct_2(Struct_1(vec3<f32>(-1813f, -1064f, 1495f), vec2<i32>(0i, 2147483647i), true)), Struct_2(Struct_1(vec3<f32>(244f, 1890f, 357f), vec2<i32>(1i, -18145i), true)), Struct_2(Struct_1(vec3<f32>(1021f, 508f, -1050f), vec2<i32>(-6040i, -50519i), false)), Struct_2(Struct_1(vec3<f32>(-255f, -1689f, 710f), vec2<i32>(1i, 1i), false)), Struct_2(Struct_1(vec3<f32>(669f, -628f, -162f), vec2<i32>(3889i, 1i), false)), Struct_2(Struct_1(vec3<f32>(201f, -536f, 830f), vec2<i32>(2147483647i, 0i), false)), Struct_2(Struct_1(vec3<f32>(-1198f, 797f, 1251f), vec2<i32>(0i, 18272i), true)), Struct_2(Struct_1(vec3<f32>(1759f, -1792f, -102f), vec2<i32>(-32366i, 1i), true)));

var<private> global2: u32 = 17185u;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: array<Struct_3, 25>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    let var_0 = -260f;
    return u_input.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> u32 {
    global4 = array<Struct_3, 25>();
    var var_0 = -(i32(-1i) * -(u_input.b << (0u % 32u)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1880f, -276f, global0.x, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_1.a.a.x, global0.x, global0.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1191f, -897f, arg_3.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, global0.x, global0.x), vec4<f32>(arg_1.a.a.x, -1905f, 1000f, global0.x), vec4<bool>(arg_3.b.c, arg_1.a.c, arg_2.x, true)))))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(arg_1.a.a.x, -612f)), arg_3.b.a.x, -248f, _wgslsmith_f_op_f32(abs(-452f))))));
    let var_1 = all(!(!(!(!vec3<bool>(false, arg_3.b.c, false)))));
    var var_2 = firstLeadingBit(arg_0.x);
    return select(u_input.a, ~reverseBits(_wgslsmith_clamp_u32(firstTrailingBit(arg_3.c), ~4294967295u, ~arg_3.c)), !all(vec4<bool>(1u > u_input.c, arg_2.x, true, all(vec3<bool>(true, arg_2.x, arg_2.x)))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = 26743u;
    global1 = array<Struct_2, 23>();
    var var_1 = global0.x > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(ceil(global0.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0.ywx);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global0.x, global0.x, -1149f)))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(937f, global0.x, -1000f, global0.x) * vec4<f32>(var_2.x, 1743f, global0.x, 2410f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(722f, global0.x, var_2.x, var_2.x), vec4<f32>(global0.x, var_2.x, 140f, var_2.x), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, -381f, global0.x, var_2.x))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(353f, var_2.x, 900f, -286f), vec4<f32>(-290f, var_2.x, var_2.x, var_2.x)))))))));
    return 9261u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, -1062f, 417f, -293f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, global0.x, global0.x, -1091f))), vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-global0.x), -254f)))));
    var var_0 = ~(~firstLeadingBit(vec3<u32>(u_input.c, 1u, u_input.c)) | min(vec3<u32>(0u, 47107u, u_input.a), vec3<u32>(u_input.c, u_input.d.x, 34692u))) & (~vec3<u32>(u_input.d.x, func_1(vec4<i32>(11609i, 68624i, u_input.b, 3533i), global3.x), ~u_input.d.x) | ~vec3<u32>(_wgslsmith_sub_u32(5211u, u_input.d.x), func_2(vec4<i32>(u_input.b, -18088i, u_input.b, 35862i), global1[_wgslsmith_index_u32(1u, 23u)], global3.zy, Struct_3(1000f, Struct_1(vec3<f32>(global0.x, global0.x, 208f), vec2<i32>(-35209i, u_input.b), global3.x), 50387u, vec4<i32>(u_input.b, 1i, 1i, u_input.b))), ~1u));
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), global0.x, _wgslsmith_div_f32(-623f, -1717f)), ~(-select(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, 11562i), global3.yz)), true));
    var var_2 = _wgslsmith_f_op_f32(exp2(global0.x)) > -388f;
    let var_3 = ~vec3<u32>(u_input.c, abs(_wgslsmith_clamp_u32(147010u, 4294967295u, 13150u)), max(~u_input.d.x, ~0u)) & vec3<u32>(38248u, func_3(-40767i), u_input.a);
    global2 = ~firstLeadingBit(10225u);
    var var_4 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a.x, var_1.a.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(581f + var_1.a.a.x) * var_1.a.a.x)), abs(vec2<i32>(~var_1.a.b.x, 21364i)), true));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(680f, var_4.a.a.x, global0.x, 749f), vec4<f32>(1000f, 1000f, global0.x, var_4.a.a.x))) + vec4<f32>(global0.x, -2449f, 1052f, _wgslsmith_f_op_f32(-741f + global0.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1878f, 445f, -734f, var_1.a.a.x))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.a.x, 571f, -1808f, global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(1199f, var_1.a.a.x, var_4.a.a.x, var_1.a.a.x), vec4<f32>(-1323f, global0.x, global0.x, var_1.a.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.a.a.x, var_1.a.a.x, 135f, -590f), vec4<f32>(-632f, var_4.a.a.x, -385f, var_1.a.a.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.a.a.x, var_1.a.a.x, -1859f, 396f), vec4<f32>(-1375f, -1000f, var_1.a.a.x, -404f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(426f, -314f, global0.x, 1354f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(104f, global0.x, var_1.a.a.x, global0.x), vec4<f32>(-221f, -878f, -348f, -1151f)))))))));
    var var_5 = global4[_wgslsmith_index_u32(u_input.d.x, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_4.a.a.x + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_4.a.a.x, -135f)))), var_5.a, var_4.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2457f, var_4.a.a.x, var_5.b.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1490f, var_5.a, var_4.a.a.x, var_4.a.a.x) - vec4<f32>(var_4.a.a.x, -455f, var_5.a, 349f)) - vec4<f32>(636f, var_4.a.a.x, -278f, -512f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(292f, var_5.a, -1105f, -835f), vec4<f32>(202f, var_4.a.a.x, var_4.a.a.x, -1010f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-887f, 1221f, -790f, var_4.a.a.x) - vec4<f32>(var_4.a.a.x, 1152f, var_4.a.a.x, var_5.a)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * 1000f), 906f, global0.x, _wgslsmith_div_f32(999f, 368f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1310f, var_5.b.a.x, 1196f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_5.b.a.x, var_5.a, -222f), vec4<f32>(var_4.a.a.x, -1065f, -251f, 430f))))), countOneBits(9416u), _wgslsmith_f_op_f32(-var_5.a));
}

