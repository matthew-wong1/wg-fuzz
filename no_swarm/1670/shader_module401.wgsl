struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<i32>(85978i, 42091i)), Struct_1(vec2<i32>(24393i, -1i)), Struct_1(vec2<i32>(1808i, 1i)), Struct_1(vec2<i32>(-2147i, -68134i)), Struct_1(vec2<i32>(0i, 1i)));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> i32 {
    global0 = array<Struct_1, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1050f, 1336f, -292f) * vec3<f32>(1379f, -1345f, -1000f)), vec3<f32>(-459f, -1221f, 1000f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1677f, -330f, -310f)))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-813f + 632f), -1353f, _wgslsmith_f_op_f32(2006f + 723f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(254f, 1292f, 358f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1412f, _wgslsmith_f_op_f32(156f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -753f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, -1378f, 717f)))), select(vec3<bool>(false, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1504f, 320f));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.yy)));
    return abs(-_wgslsmith_mod_i32(-abs(46126i), firstTrailingBit(2147483647i) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, -14085i, -33087i), vec4<i32>(21633i, 33627i, -37322i, -2147483647i))));
}

fn func_3() -> i32 {
    var var_0 = select(max(_wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(1u), _wgslsmith_mult_u32(u_input.b, 0u)), select(min(u_input.a.x, u_input.a.x), ~1u, select(true, true, false))), firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, u_input.b) & u_input.b)), 1u, true);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(253f, -792f) * vec2<f32>(531f, 2059f)), vec2<f32>(101f, -400f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, -794f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(704f, -1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-570f, -1000f) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 844f), vec2<f32>(1000f, -1000f)))), _wgslsmith_div_i32(countOneBits(2147483647i), i32(-1i) * -1i) <= firstTrailingBit(firstLeadingBit(2147483647i)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(sign(-324f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) + vec3<f32>(-1127f, var_1.x, 147f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(389f, 722f, var_1.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-383f, var_1.x, var_1.x))) + vec3<f32>(var_1.x, -1000f, var_1.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -191f, -697f) - vec3<f32>(-360f, var_1.x, 1910f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1034f, -339f, var_1.x) * vec3<f32>(-1112f, 164f, var_1.x)))))));
    var_0 = 17586u;
    let var_3 = Struct_1(~max(vec2<i32>(i32(-1i) * -1i, 1i), max(vec2<i32>(-10565i, -5223i), -vec2<i32>(-1i, -39689i))));
    return _wgslsmith_mod_i32(-27404i | (43521i ^ var_3.a.x), 51040i);
}

fn func_1() -> Struct_1 {
    var var_0 = abs(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_mult_u32(~19762u, countOneBits(u_input.b))), countOneBits(u_input.b), select(u_input.a.x, _wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(0u, 20392u)), true)));
    global0 = array<Struct_1, 5>();
    let var_1 = -vec4<i32>(_wgslsmith_dot_vec2_i32(-abs(vec2<i32>(2147483647i, -7590i)), ~(~vec2<i32>(-19745i, -85463i))), func_2(), _wgslsmith_sub_i32(_wgslsmith_add_i32(~0i, -1i), func_3()), ~2147483647i);
    global0 = array<Struct_1, 5>();
    var var_2 = global0[_wgslsmith_index_u32(0u, 5u)];
    return Struct_1(vec2<i32>((~0i & _wgslsmith_div_i32(var_1.x, var_2.a.x)) | ~(~var_1.x), 1i));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(arg_0.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x), -firstTrailingBit(arg_0.x))), vec2<i32>(-2147483647i, arg_1.a.x));
    var_0 = ~abs(arg_0) ^ ~arg_1.a;
    var_0 = abs(-vec2<i32>(reverseBits(abs(arg_1.a.x)), _wgslsmith_sub_i32(var_0.x ^ arg_1.a.x, 1i)));
    let var_1 = Struct_1(vec2<i32>(firstTrailingBit(arg_0.x) << (113161u % 32u), abs(1i)));
    return Struct_1(~(~(-arg_0)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    var var_0 = global0[_wgslsmith_index_u32(~37708u, 5u)];
    var_0 = Struct_1(~(vec2<i32>(-1i) * -(~arg_1.a)));
    var var_1 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, false, true), vec3<bool>(true, true, true)), !(!vec3<bool>(arg_3.x, false, arg_3.x)), !select(vec3<bool>(true, arg_3.x, false), vec3<bool>(false, true, false), true)));
    return Struct_1(min(func_4(~arg_1.a, arg_1).a ^ arg_0.a, vec2<i32>(2147483647i, ~_wgslsmith_div_i32(arg_1.a.x, 14285i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    let var_0 = func_5(global0[_wgslsmith_index_u32(~min(61209u, ~4294967295u), 5u)], func_4(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -39482i), _wgslsmith_mult_vec2_i32(vec2<i32>(6019i, 21645i), vec2<i32>(39804i, -38816i))), func_1()), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a.x, 7561u), u_input.a, firstLeadingBit(u_input.a))), u_input.a), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    let var_1 = func_1();
    global0 = array<Struct_1, 5>();
    var var_2 = select(vec4<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, ~firstTrailingBit(35374u)), 30752u, ~(~(u_input.b ^ u_input.b))), select(u_input.a, u_input.a, vec4<bool>(any(vec2<bool>(true, true)), var_0.a.x >= var_0.a.x, true, false)) | firstLeadingBit(select(vec4<u32>(u_input.a.x, 24458u, 4294967295u, 93415u), abs(vec4<u32>(u_input.a.x, u_input.b, 0u, 4294967295u)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)))), vec4<bool>(!any(vec4<bool>(true, true, true, true)), var_0.a.x == max(var_1.a.x, func_1().a.x), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a.x << ((u_input.b ^ 26470u) % 32u), var_2.x, var_2.x, var_2.x), _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(45743u, 0u))), vec2<u32>(10476u, reverseBits(1u)), abs(u_input.a.zx)), ~min(~u_input.b, _wgslsmith_dot_vec2_u32(var_2.yx, vec2<u32>(u_input.b, 0u))), select(var_0.a, -vec2<i32>(-23281i, var_1.a.x) >> (select(vec2<u32>(u_input.a.x, var_2.x), abs(vec2<u32>(u_input.a.x, var_2.x)), true) % vec2<u32>(32u)), !(all(vec3<bool>(false, false, true)) && true)), max(var_1.a.x << (abs(var_2.x) % 32u), var_0.a.x));
}

