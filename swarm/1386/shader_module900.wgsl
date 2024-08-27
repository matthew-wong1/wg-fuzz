struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
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

var<private> global0: bool = false;

var<private> global1: u32;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(26095i, -1i, 1i), 1i, vec4<bool>(true, false, true, true), vec4<u32>(37047u, 36834u, 26712u, 22935u)), Struct_1(vec3<i32>(-3666i, 0i, 15792i), 35716i, vec4<bool>(false, true, false, false), vec4<u32>(104922u, 4294967295u, 32379u, 4294967295u)), Struct_1(vec3<i32>(-25900i, i32(-2147483648), i32(-2147483648)), 30767i, vec4<bool>(false, false, false, false), vec4<u32>(4072u, 4294967295u, 4294967295u, 0u)), Struct_1(vec3<i32>(-1i, 0i, -83980i), i32(-2147483648), vec4<bool>(false, true, true, true), vec4<u32>(1u, 0u, 22633u, 4294967295u)), Struct_1(vec3<i32>(-14092i, 2147483647i, 2082i), 2147483647i, vec4<bool>(false, true, false, false), vec4<u32>(50835u, 0u, 39792u, 0u)), Struct_1(vec3<i32>(-1216i, 70000i, i32(-2147483648)), 57648i, vec4<bool>(false, false, true, true), vec4<u32>(17599u, 27858u, 2012u, 34872u)), Struct_1(vec3<i32>(0i, 9271i, i32(-2147483648)), -21214i, vec4<bool>(true, true, true, true), vec4<u32>(35566u, 4128u, 7437u, 28881u)), Struct_1(vec3<i32>(-10342i, i32(-2147483648), 64857i), 26530i, vec4<bool>(false, true, true, true), vec4<u32>(49198u, 32618u, 12146u, 35857u)), Struct_1(vec3<i32>(68135i, 0i, 1i), 2147483647i, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 63195u, 25836u, 17196u)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -15113i), 9174i, vec4<bool>(true, false, false, false), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(vec3<i32>(-36599i, 20777i, 2147483647i), -47772i, vec4<bool>(false, true, true, false), vec4<u32>(0u, 1u, 69024u, 35754u)), Struct_1(vec3<i32>(8047i, 1i, 2147483647i), 2147483647i, vec4<bool>(true, false, false, false), vec4<u32>(1u, 14133u, 105217u, 69798u)), Struct_1(vec3<i32>(-368i, 32895i, 0i), 2147483647i, vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 1u, 37540u, 48378u)), Struct_1(vec3<i32>(-31159i, -4168i, 8616i), 0i, vec4<bool>(false, true, false, false), vec4<u32>(9887u, 12766u, 38335u, 88463u)), Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), -58116i, vec4<bool>(false, true, true, false), vec4<u32>(3395u, 0u, 13600u, 4294967295u)), Struct_1(vec3<i32>(1i, -6535i, 12870i), i32(-2147483648), vec4<bool>(true, false, false, false), vec4<u32>(1u, 1u, 4294967295u, 54727u)), Struct_1(vec3<i32>(0i, -16005i, 55544i), 2147483647i, vec4<bool>(true, false, false, false), vec4<u32>(0u, 8826u, 45972u, 20761u)), Struct_1(vec3<i32>(27378i, -1i, 15447i), -6221i, vec4<bool>(false, true, false, false), vec4<u32>(28004u, 37385u, 16037u, 4294967295u)), Struct_1(vec3<i32>(-1i, 2147483647i, 16695i), i32(-2147483648), vec4<bool>(true, false, false, true), vec4<u32>(1u, 69162u, 100102u, 18996u)), Struct_1(vec3<i32>(-19322i, -7280i, 0i), 0i, vec4<bool>(true, true, false, false), vec4<u32>(1u, 1u, 4294967295u, 24426u)), Struct_1(vec3<i32>(-11195i, 22079i, i32(-2147483648)), -48226i, vec4<bool>(false, false, true, true), vec4<u32>(0u, 4294967295u, 4294967295u, 1u)), Struct_1(vec3<i32>(1i, 2147483647i, -27729i), 1i, vec4<bool>(false, true, false, true), vec4<u32>(5905u, 1u, 1u, 4294967295u)), Struct_1(vec3<i32>(-9313i, -16546i, 1i), 1i, vec4<bool>(false, false, true, false), vec4<u32>(1u, 9066u, 46653u, 46408u)), Struct_1(vec3<i32>(0i, -10530i, -16539i), 1i, vec4<bool>(false, false, true, true), vec4<u32>(52320u, 36601u, 4378u, 1u)), Struct_1(vec3<i32>(8844i, 0i, 1i), 38226i, vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, 4598u, 72621u, 0u)), Struct_1(vec3<i32>(-22357i, 18495i, 2147483647i), -1i, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 41198u, 32580u, 0u)), Struct_1(vec3<i32>(-60974i, -60997i, 29888i), i32(-2147483648), vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 4294967295u, 20369u, 4294967295u)), Struct_1(vec3<i32>(2147483647i, 1i, 0i), -19692i, vec4<bool>(true, true, true, true), vec4<u32>(0u, 4294967295u, 19992u, 16825u)), Struct_1(vec3<i32>(0i, 21949i, 0i), i32(-2147483648), vec4<bool>(true, false, false, false), vec4<u32>(31780u, 0u, 3836u, 0u)));

var<private> global3: vec2<i32> = vec2<i32>(-41125i, i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.c, 29u)];
    var var_1 = arg_1.x;
    var var_2 = true;
    let var_3 = 29772u;
    global1 = 0u;
    return global2[_wgslsmith_index_u32(abs(var_3), 29u)];
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.c, _wgslsmith_clamp_u32(u_input.d.x, u_input.a.x, ~u_input.d.x)), (u_input.a.x << (1u % 32u)) | ~36293u);
    var var_0 = Struct_1(vec3<i32>(u_input.b, -1i, u_input.b), ((global3.x << (u_input.a.x % 32u)) | _wgslsmith_sub_i32(2147483647i, 2147483647i >> (u_input.d.x % 32u))) | u_input.b, select(func_2(arg_0.yz, vec2<bool>(true, true)).c, select(vec4<bool>(all(vec2<bool>(false, true)), 2629u < u_input.e, true, true), vec4<bool>(true, true, true, true), false), 7606u < u_input.a.x), select(u_input.d, firstTrailingBit(vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(u_input.c, 69595u, u_input.a.x), ~29310u, _wgslsmith_add_u32(u_input.e, u_input.d.x))), true));
    global2 = array<Struct_1, 29>();
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.zy, vec2<f32>(314f, -949f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zz + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -325f), vec2<f32>(-1057f, -482f)))))), select(!func_2(vec2<f32>(1351f, -252f), func_2(arg_0.xx, vec2<bool>(var_0.c.x, false)).c.ww).c.ww, var_0.c.xy, true));
    var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(~54043u), 29u)];
    return arg_0.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_1, 29>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1228f, 1298f, 152f, 1557f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, 842f, -1059f, 340f)))))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(291f - 1869f), -806f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(845f, -441f)))), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-341f, -1296f, -463f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(vec3<f32>(-294f, -2317f, 1000f))), -1000f, 622f)), Struct_1(_wgslsmith_div_vec3_i32(arg_0.zzx, vec3<i32>(firstTrailingBit(arg_0.x), -2147483647i, -arg_0.x)), arg_0.x, func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(708f, -914f)))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)).c, u_input.d & _wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, u_input.d)), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-709f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-264f - -1000f)))))));
    var var_2 = vec2<f32>(-684f, -1173f);
    var_2 = var_0.a.xw;
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    global3 = vec2<i32>(arg_0.a.x, ~(-15068i)) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_1.a.yy), vec2<i32>(2147483647i, arg_1.b)), _wgslsmith_clamp_vec2_i32(arg_1.a.zy, firstLeadingBit(arg_1.a.zy), -vec2<i32>(arg_1.b, arg_1.b))), countOneBits(abs(reverseBits(-168i))));
    var var_0 = max(_wgslsmith_clamp_vec3_i32(vec3<i32>(~u_input.b, 1i, -45478i), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, arg_1.b, u_input.b)), arg_0.a & vec3<i32>(u_input.b, u_input.b, 4200i)), reverseBits(abs(arg_0.a))) >> (vec3<u32>(~arg_0.d.x, _wgslsmith_div_u32(_wgslsmith_div_u32(16494u, 1u), _wgslsmith_dot_vec3_u32(arg_1.d.xxz, vec3<u32>(37841u, arg_2, 0u))), 1u) % vec3<u32>(32u)), arg_0.a);
    global2 = array<Struct_1, 29>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(-870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(-542f, 1087f, 337f))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(460f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1204f) + 2114f)), _wgslsmith_f_op_f32(ceil(1f)))));
    return firstLeadingBit(countOneBits(~abs(~vec4<i32>(-2147483647i, u_input.b, arg_1.a.x, arg_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -max(-firstLeadingBit(-vec4<i32>(-10153i, u_input.b, 2147483647i, u_input.b)), ~func_4(func_1(vec4<i32>(global3.x, -2147483647i, 2147483647i, 2147483647i)), Struct_1(vec3<i32>(-1i, u_input.b, -2147483647i), -43715i, vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, u_input.c, u_input.e, 1u)), _wgslsmith_mod_u32(u_input.c, 1u)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) * _wgslsmith_f_op_f32(f32(-1f) * -853f)), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1501f) - -1554f), -318f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(446f, -1208f, -281f, -645f))))))), func_1(var_0), vec3<f32>(736f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(104f + -737f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1320f)))))), func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, 1i, u_input.b), vec4<i32>(-1i, -1i, -45389i, var_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-5487i, global3.x, u_input.b, 22081i), var_0)), var_0)), -u_input.b);
    let var_2 = var_1.b.b;
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.c.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + -581f), _wgslsmith_f_op_f32(max(var_1.a.x, var_1.a.x))) + _wgslsmith_f_op_vec2_f32(-var_1.c.xx)))));
    let var_4 = u_input.a.yx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1086f, 560f))))), var_1.a.yx, var_1.b.c.xx)));
}

