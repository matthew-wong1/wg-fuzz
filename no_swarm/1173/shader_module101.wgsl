struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_2(select(!(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), global0.x)), vec2<bool>(true, true), vec2<bool>(1000f < _wgslsmith_div_f32(898f, global1.x), all(!vec3<bool>(false, global0.x, global0.x)))), Struct_1(u_input.c.zx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1034f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f * 117f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_f_op_f32(f32(-1f) * -920f), -684f)), Struct_1(vec2<i32>(select(2147483647i, 58057i, true), 32261i), _wgslsmith_f_op_f32(floor(659f)), global1.yzx), Struct_1(_wgslsmith_sub_vec2_i32(min(u_input.c.zx, u_input.c.yx), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 2147483647i), u_input.c.xx, u_input.c.yx), u_input.c.zx, max(u_input.c.zx, u_input.c.yx))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1890f, 756f, -1378f))))))), select(u_input.c.zy, min(vec2<i32>(-5821i, i32(-1i) * -13803i), u_input.c.zx), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, true), true)));
    let var_1 = global1.zzz;
    var_0 = Struct_2(select(vec2<bool>(global0.x | false, var_0.a.x), var_0.a, vec2<bool>(true, true)), var_0.d, var_0.b, Struct_1(vec2<i32>(~u_input.c.x, reverseBits(u_input.c.x)), var_0.b.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b - global1.x)), _wgslsmith_f_op_f32(-var_1.x), 2123f)), reverseBits(abs(select(~u_input.c.yz, select(var_0.c.a, var_0.d.a, global0.x), vec2<bool>(false, false)))));
    let var_2 = var_0.d.c.x;
    let var_3 = Struct_2(vec2<bool>(!(true && (0i >= u_input.c.x)), ~4294967295u >= u_input.b.x), var_0.c, Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, 1241i), u_input.c.yx), vec2<i32>(57097i, 2147483647i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_0.b.c.x, global1.x)) + _wgslsmith_f_op_f32(floor(854f))), _wgslsmith_f_op_vec3_f32(-global1.xwx)), var_0.d, max(vec2<i32>(u_input.c.x, firstTrailingBit(-26711i) << ((4294967295u << (u_input.a % 32u)) % 32u)), abs(-var_0.e)));
    return vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-970f)) * _wgslsmith_f_op_f32(round(-679f))))), var_3.d.b, var_1.x, global1.x);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), -367f, _wgslsmith_f_op_f32(ceil(-527f)), _wgslsmith_f_op_f32(-arg_1.d.c.x)))));
    return Struct_1(arg_1.c.a, -1009f, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.c.c)))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    var var_0 = Struct_3(max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, firstLeadingBit(arg_2.x)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, arg_2.x)), vec2<u32>(arg_2.x, 1u))), vec2<u32>(_wgslsmith_add_u32(arg_2.x, 0u), u_input.a)));
    let var_1 = select(vec3<bool>(global0.x | arg_1.a.x, arg_1.a.x, any(vec4<bool>(false, false, arg_1.a.x, false))), vec3<bool>(global0.x, _wgslsmith_f_op_f32(-arg_1.b.b) < -1850f, true), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, global0.x, true)), vec3<bool>(true, true, true), true)));
    global0 = !(!select(select(!vec2<bool>(var_1.x, global0.x), arg_1.a, arg_1.a.x), arg_1.a, !vec2<bool>(true, arg_1.a.x)));
    var_0 = Struct_3(vec2<u32>(1u, _wgslsmith_clamp_u32(arg_2.x, u_input.a, ~countOneBits(27736u))));
    var_0 = Struct_3(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_2, firstLeadingBit(u_input.b.xx)), select(~1u, ~0u, arg_1.a.x), arg_2.x), (_wgslsmith_div_u32(53606u, 4294967295u) << ((4294967295u & arg_2.x) % 32u)) & arg_2.x));
    return arg_1.a.x;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 508f, -332f) + vec4<f32>(1417f, global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -387f, -495f, -1458f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1508f, -210f, 185f, global1.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(535f, global1.x, global1.x, global1.x))))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(max(-517f, -378f))), 1383f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-351f, global1.x)))))));
    var var_0 = Struct_2(vec2<bool>(arg_1, true), func_2(Struct_3(abs(abs(u_input.b.yz))), Struct_2(vec2<bool>(true & arg_2, arg_1), func_2(Struct_3(vec2<u32>(20703u, u_input.a)), Struct_2(vec2<bool>(global0.x, true), Struct_1(vec2<i32>(arg_0, u_input.c.x), -142f, vec3<f32>(-310f, -443f, -321f)), Struct_1(u_input.c.xy, 1036f, vec3<f32>(-290f, 321f, global1.x)), Struct_1(vec2<i32>(arg_0, arg_0), 794f, vec3<f32>(global1.x, global1.x, global1.x)), u_input.c.yx)), func_2(Struct_3(u_input.b.yy), Struct_2(vec2<bool>(global0.x, arg_2), Struct_1(vec2<i32>(-26367i, u_input.c.x), global1.x, vec3<f32>(global1.x, -1166f, -416f)), Struct_1(vec2<i32>(2147483647i, -20233i), global1.x, global1.yxy), Struct_1(u_input.c.zx, -451f, global1.zyy), u_input.c.zz)), Struct_1(u_input.c.zy & u_input.c.yx, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(764f, 761f, -624f)))), vec2<i32>(_wgslsmith_mod_i32(1i, arg_0), _wgslsmith_add_i32(-2147483647i, arg_0)))), Struct_1(vec2<i32>(arg_0, -9234i), global1.x, global1.zxy), Struct_1(~u_input.c.zz, global1.x, vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.x, -726f)), _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_mult_vec2_i32(u_input.c.yz, u_input.c.xx));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x)));
    return Struct_2(vec2<bool>(any(select(!var_0.a, !var_0.a, var_0.a)), true), func_2(Struct_3(firstLeadingBit(u_input.b.zy)), Struct_2(!var_0.a, func_2(Struct_3(vec2<u32>(24170u, 4294967295u)), Struct_2(vec2<bool>(false, arg_2), Struct_1(vec2<i32>(-1i, arg_0), var_0.b.b, var_0.d.c), Struct_1(vec2<i32>(-2147483647i, -28948i), var_0.c.b, vec3<f32>(-626f, -1357f, var_0.d.c.x)), Struct_1(vec2<i32>(var_0.d.a.x, -1679i), var_0.c.c.x, vec3<f32>(global1.x, global1.x, var_0.d.c.x)), u_input.c.xy)), func_2(Struct_3(vec2<u32>(7971u, u_input.b.x)), Struct_2(vec2<bool>(arg_1, global0.x), Struct_1(vec2<i32>(u_input.c.x, -2147483647i), 1329f, global1.xxy), var_0.d, var_0.b, var_0.c.a)), Struct_1(u_input.c.xy, _wgslsmith_f_op_f32(ceil(var_0.b.b)), _wgslsmith_f_op_vec4_f32(func_3()).zxz), func_2(Struct_3(u_input.b.yz), Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(-1i, 36647i), global1.x, vec3<f32>(var_0.b.c.x, -1034f, var_0.c.c.x)), Struct_1(vec2<i32>(1i, 2147483647i), global1.x, vec3<f32>(-221f, -209f, 707f)), var_0.b, vec2<i32>(2147483647i, 2147483647i))).a)), var_0.d, func_2(Struct_3(u_input.b.xz), Struct_2(select(var_0.a, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, global0.x)), vec2<bool>(true, true)), var_0.c, var_0.b, var_0.c, vec2<i32>(var_0.b.a.x, 0i) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)))), ~vec2<i32>(i32(-1i) * -1i, -arg_0));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<bool>) -> bool {
    let var_0 = func_5(1i, false, !any(!vec4<bool>(arg_3.x, true, global0.x, false)) & func_4(vec4<f32>(_wgslsmith_f_op_f32(691f + 179f), -1723f, _wgslsmith_f_op_f32(-arg_1.c.x), 1000f), Struct_2(arg_0.yw, func_2(Struct_3(vec2<u32>(0u, arg_2.x)), Struct_2(arg_3.yw, arg_1, arg_1, Struct_1(vec2<i32>(u_input.c.x, arg_1.a.x), 247f, arg_1.c), arg_1.a)), func_2(Struct_3(arg_2.zx), Struct_2(arg_3.yy, Struct_1(u_input.c.yy, -1309f, vec3<f32>(global1.x, global1.x, arg_1.b)), Struct_1(vec2<i32>(2147483647i, 1i), -600f, arg_1.c), arg_1, u_input.c.yx)), func_2(Struct_3(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<bool>(arg_3.x, arg_0.x), Struct_1(vec2<i32>(u_input.c.x, 14132i), 114f, vec3<f32>(1926f, -196f, -134f)), arg_1, Struct_1(arg_1.a, -240f, vec3<f32>(-275f, 833f, arg_1.b)), arg_1.a)), _wgslsmith_sub_vec2_i32(u_input.c.xx, u_input.c.yz)), ~_wgslsmith_add_vec2_u32(u_input.b.yz, arg_2.zz)));
    let var_1 = abs(u_input.c.x);
    let var_2 = arg_1;
    var var_3 = 1f;
    var var_4 = Struct_2(var_0.a, func_5(var_1, true, true).c, var_0.c, arg_1, ~(-vec2<i32>(14555i, 1i) | var_0.c.a));
    return !(!var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + -1645f))), _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 1075f) + _wgslsmith_f_op_f32(abs(-1739f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + global1.x)))) * -744f));
    let var_0 = _wgslsmith_mod_vec4_i32(select(-(-vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.c.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 0u, 10043u), vec4<u32>(51165u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 54336i, u_input.c.x), vec4<i32>(u_input.c.x, -41260i, -1i, u_input.c.x)) >> (vec4<u32>(u_input.a, u_input.b.x, 36105u, 1u) % vec4<u32>(32u))), select(vec4<bool>(true, false, func_1(vec4<bool>(global0.x, true, true, global0.x), Struct_1(vec2<i32>(-1i, u_input.c.x), 723f, global1.wxz), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec4<bool>(false, false, true, false)), global0.x), !vec4<bool>(false, false, true, global0.x), global0.x)), ~(~vec4<i32>(u_input.c.x, u_input.c.x, 59194i, u_input.c.x) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -24127i, -1i, 12564i), vec4<i32>(-2147483647i, 48248i, u_input.c.x, u_input.c.x))));
    var var_1 = Struct_3(abs(_wgslsmith_clamp_vec2_u32(u_input.b.yz, ~abs(u_input.b.yz), ~u_input.b.zx)));
    let var_2 = func_2(Struct_3(firstLeadingBit(var_1.a)), func_5(-_wgslsmith_add_i32(var_0.x, countOneBits(-36669i)), true, true)).a;
    let var_3 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()).x)), 0i, var_1.a.x, var_3, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1809f, global1.x, global1.x, global1.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 496f, -1000f, 1977f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -1649f, global1.x, global1.x), vec4<f32>(461f, global1.x, -1577f, -1879f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-711f, global1.x, global1.x, global1.x), vec4<f32>(global1.x, -710f, global1.x, global1.x))))), true)));
}

