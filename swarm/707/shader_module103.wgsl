struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 265f;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = true;
    var var_1 = ~abs(firstLeadingBit(min(u_input.e.zy, u_input.e.zx))) & ~vec2<u32>(_wgslsmith_div_u32(min(u_input.c, u_input.d), 13056u), ~4294967295u);
    global0 = arg_0.e.a;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(f32(-1f) * -234f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.a)))) * _wgslsmith_f_op_vec2_f32(-var_2.c.yz)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(-var_2.c.x))))), _wgslsmith_f_op_f32(-1000f - -1594f)));
    return false;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    let var_0 = Struct_1(188f);
    global0 = arg_2;
    var var_1 = Struct_1(-1052f);
    global0 = -918f;
    global0 = arg_1.x;
    return ~(-u_input.b);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1246f, 302f, -952f), vec3<f32>(-872f, 933f, -1000f)))) + vec3<f32>(-875f, _wgslsmith_f_op_f32(round(650f)), _wgslsmith_f_op_f32(f32(-1f) * -2102f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1156f, 1000f, -459f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1312f, -471f, -594f), vec3<f32>(380f, -334f, -1253f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1672f, -240f, -1534f), vec3<f32>(1361f, -1939f, 1292f)))))));
    var var_1 = false;
    let var_2 = _wgslsmith_clamp_i32(func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * -1303f), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-433f, var_0.x, 1875f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), -652f), firstLeadingBit(-countOneBits(~u_input.a)), 2147483647i);
    return Struct_1(_wgslsmith_f_op_f32(-678f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) - var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1250f))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(arg_0.a, -131f), _wgslsmith_f_op_f32(arg_0.a + 1f));
    var var_1 = 1u;
    let var_2 = arg_0;
    var var_3 = var_2;
    let var_4 = arg_0;
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = ~1u;
    let var_1 = !select(vec3<bool>(!(u_input.d <= var_0), false, select(false, true, true)), select(!arg_0.xyx, select(arg_0.zzx, arg_0.xxz, !arg_0.x), !arg_0.wwy), arg_0.x);
    var var_2 = func_2(vec4<i32>(2147483647i, -18842i, ~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1509f, 1083f, arg_2) - vec3<f32>(604f, -622f, arg_1.a)), -1161f), _wgslsmith_mod_i32(max(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, 3209i), vec4<i32>(0i, u_input.b, u_input.b, 26705i))), max(1i, u_input.a))));
    var_2 = arg_1;
    var var_3 = vec3<bool>(arg_1.a >= arg_2, all(!arg_0), !all(arg_0));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec4<bool>(true, true, func_1(Struct_2(Struct_1(-278f), vec4<i32>(-2147483647i, u_input.a, -24967i, u_input.b), vec4<f32>(1157f, -425f, -717f, -986f), vec3<i32>(u_input.b, u_input.b, u_input.a), Struct_1(834f)), true), true), func_4(func_2(vec4<i32>(u_input.b, 1i, u_input.b, 5579i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + _wgslsmith_f_op_f32(-1165f + 1246f)), ~1u)) - 879f));
    var var_1 = select(!vec2<bool>(true, !select(false, true, true)), select(vec2<bool>(true, false), select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), u_input.e.x <= 14683u), vec2<bool>(true, true), !(u_input.d == u_input.e.x)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), any(!vec4<bool>(true, true, var_0.a > var_0.a, select(false, true, true))));
    let var_2 = Struct_2(func_4(func_4(func_4(Struct_1(1000f)))), vec4<i32>(-(~(u_input.a << (4294967295u % 32u))), 32286i, -2147483647i, ~max(1i, firstTrailingBit(u_input.a))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -201f, 773f, var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_0.a, var_0.a) + vec4<f32>(-597f, var_0.a, var_0.a, -1385f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(341f, var_0.a, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1597f, var_0.a, 601f, var_0.a), vec4<f32>(-1414f, 1085f, var_0.a, var_0.a)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)), 607f, _wgslsmith_f_op_f32(sign(-969f))), all(vec3<bool>(true, true, true)))), vec3<i32>(_wgslsmith_sub_i32(-u_input.b, func_3(vec2<f32>(-663f, var_0.a), vec3<f32>(var_0.a, var_0.a, var_0.a), var_0.a)) | (66845i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, 39753i), vec4<i32>(u_input.b, u_input.a, u_input.a, 14713i))), u_input.b, 52317i), func_4(var_0));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(460f * -263f))));
    let var_3 = select(vec2<bool>(true, !all(select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true), var_1.x))), !select(!vec2<bool>(var_1.x, false), select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), false), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))), 1527f, var_2.a.a, var_2.c.x), ~_wgslsmith_mod_u32(u_input.d, u_input.d ^ abs(10824u)), max(0i ^ (var_2.d.x & -1i), _wgslsmith_mod_i32(var_2.d.x, var_2.d.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2.a.a, 767f, var_0.a)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_2.c, vec4<f32>(var_0.a, -1000f, var_2.a.a, -1433f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1223f + -1768f) + -1585f), 507f, -1444f, 1000f)), _wgslsmith_dot_vec2_i32(max(abs(~var_2.b.xx), ~vec2<i32>(31415i, var_2.d.x)), var_2.d.zx));
}

