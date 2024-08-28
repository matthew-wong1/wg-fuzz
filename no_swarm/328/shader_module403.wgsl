struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(113f, -940f, -1639f), vec3<f32>(1248f, 159f, -352f), vec3<f32>(-288f, 458f, -1516f), vec3<f32>(1410f, 747f, 1642f), vec3<f32>(-908f, 1097f, -1806f), vec3<f32>(400f, -3031f, -1000f), vec3<f32>(-2551f, -709f, 645f), vec3<f32>(-1000f, 500f, 286f), vec3<f32>(1367f, 483f, 324f), vec3<f32>(673f, 1000f, 1534f), vec3<f32>(-523f, 456f, -1492f), vec3<f32>(353f, 244f, -1394f), vec3<f32>(2300f, 280f, 278f), vec3<f32>(2513f, 1000f, 1000f), vec3<f32>(-266f, -212f, 1319f), vec3<f32>(422f, -1316f, -1175f), vec3<f32>(-736f, 1000f, 660f), vec3<f32>(-2531f, -714f, -188f), vec3<f32>(966f, 1000f, -409f), vec3<f32>(-696f, 1187f, -951f), vec3<f32>(-988f, 331f, 915f), vec3<f32>(1000f, -768f, -1145f), vec3<f32>(-1171f, 1060f, 1523f), vec3<f32>(574f, 1845f, 671f), vec3<f32>(-1000f, 1366f, -204f), vec3<f32>(918f, -1238f, 378f), vec3<f32>(-1573f, -1361f, 1060f), vec3<f32>(1778f, 646f, 440f), vec3<f32>(-567f, -1108f, 979f), vec3<f32>(1650f, -158f, 1293f), vec3<f32>(-675f, 1000f, -448f), vec3<f32>(685f, -1311f, -1086f));

var<private> global1: vec3<i32> = vec3<i32>(19167i, 1i, -1i);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true), 1557f, true, vec3<bool>(false, true, true), 1000f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(0u, u_input.a.x >> (0u % 32u), 45426u)) >> (~(u_input.a.x ^ _wgslsmith_mult_u32(1u, u_input.a.x)) % 32u), 32u)]);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) - -620f)), var_0.x);
    var var_2 = ~_wgslsmith_add_i32(1i, ~global1.x);
    var var_3 = Struct_1(select(global2.a, select(global2.a, vec3<bool>(global2.d.x, true, true), !select(vec3<bool>(global2.d.x, global2.a.x, global2.d.x), vec3<bool>(true, false, false), global2.d)), global2.c), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(864f, var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1408f, 1000f, true)))))), global2.a.x, select(select(global2.a, !vec3<bool>(global2.d.x, false, global2.c), min(global1.x, global1.x) < (global1.x | 64642i)), !global2.a, (0u < u_input.a.x) | true), var_0.x);
    global0 = array<vec3<f32>, 32>();
    return global2.c;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32((i32(-1i) * -1i) >> (_wgslsmith_mod_u32((arg_0.a >> (arg_0.b % 32u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(11130u, 0u), u_input.a), arg_0.a) % 32u), reverseBits(_wgslsmith_div_i32(global1.x, 2504i)));
    var var_1 = ~arg_0.b;
    let var_2 = global2.a.xz;
    let var_3 = -(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-2147483647i, var_0), -9600i, -global1.x) ^ 0i);
    global2 = Struct_1(vec3<bool>(true, true, func_3(vec2<f32>(_wgslsmith_f_op_f32(select(global2.b, global2.e, false)), global2.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.e))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2.b))))), global2.e)), !(all(vec3<bool>(var_2.x, false, false)) & all(select(vec4<bool>(true, true, false, global2.d.x), vec4<bool>(true, global2.a.x, true, false), vec4<bool>(true, false, false, global2.a.x)))), select(!(!(!global2.d)), !vec3<bool>(all(vec4<bool>(true, false, global2.c, global2.c)), true, all(global2.d)), !any(global2.a.yx) && any(!global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(-529f * global2.b)))));
    return Struct_1(vec3<bool>(false, func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e, global2.e))), any(vec4<bool>(false, true, global2.c, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) + _wgslsmith_f_op_f32(global2.e - -1567f)) * -1221f), false, global2.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-712f + -313f)), _wgslsmith_f_op_f32(step(2068f, _wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(-1390f + 816f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2502f, global2.b, global2.e, global2.e), vec4<f32>(arg_0.b, 1131f, arg_0.b, global2.b))))))), vec4<f32>(global2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.e)) + global2.e), -166f)));
    let var_1 = func_2(Struct_2(~4294967295u, _wgslsmith_mod_u32(48031u ^ (0u ^ u_input.a.x), 1u)));
    var var_2 = var_0;
    let var_3 = func_2(Struct_2(~0u ^ ~u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_clamp_u32(4294967295u & u_input.a.x, u_input.a.x, u_input.a.x))));
    let var_4 = Struct_2(~4294967295u & ~u_input.a.x, 0u);
    return !((-global1.x >> (u_input.a.x % 32u)) < min(40245i, -2147483647i));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    global1 = vec3<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, _wgslsmith_mult_i32(arg_1, -29308i), -1i), _wgslsmith_mult_vec3_i32(-vec3<i32>(34078i, -26284i, 15431i), vec3<i32>(arg_1, global1.x, arg_1))), _wgslsmith_dot_vec4_i32(vec4<i32>(-arg_1, arg_1, arg_1, -1i), min(vec4<i32>(countOneBits(arg_1), 17725i, -global1.x, reverseBits(100297i)), vec4<i32>(global1.x, global1.x, firstTrailingBit(arg_1), _wgslsmith_clamp_i32(arg_1, global1.x, arg_1)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(805f)), _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(abs(arg_2.x))))) - vec2<f32>(arg_2.x, arg_3.b));
    var var_1 = !(!(!(!global2.a)));
    let var_2 = !global2.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(arg_2.wwy))));
    return Struct_2(~(~u_input.a.x), ~(u_input.a.x | ~(0u >> (0u % 32u))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> bool {
    global1 = ~(~(-arg_3));
    global1 = _wgslsmith_clamp_vec3_i32(arg_3, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -arg_3, ~(-vec3<i32>(56030i, global1.x, global1.x)), arg_3), -arg_3, any(vec3<bool>(true, true, true)) || !(!global2.c)), arg_3);
    var var_0 = func_2(Struct_2(_wgslsmith_mod_u32(arg_0.b, _wgslsmith_mult_u32(1u, arg_0.a) | u_input.a.x), countOneBits(arg_0.b)));
    var var_1 = func_2(func_4(any(global2.d), max(~arg_3.x, select(arg_3.x, min(62987i, -1i), var_0.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, -514f, 220f, var_0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-139f, 109f, var_0.b, -1000f))))), Struct_1(!global2.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b))), true && !var_0.a.x, var_0.a, -1596f)));
    var_0 = func_2(arg_0);
    return func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(func_5(func_4(func_1(Struct_1(vec3<bool>(global2.c, false, global2.a.x), -3171f, true, vec3<bool>(true, global2.d.x, global2.a.x), global2.e), false, global2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, -4930i, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global2.b, global2.e, global2.b) * vec4<f32>(-1000f, global2.e, global2.e, 1771f)), func_2(Struct_2(u_input.a.x, u_input.a.x))), global2.c, ~global1.zz, vec3<i32>(select(-9706i, 31950i, global2.c), -53988i, global1.x)), func_5(Struct_2(u_input.a.x, ~u_input.a.x), select(false, global2.d.x, func_2(Struct_2(u_input.a.x, u_input.a.x)).a.x), ~abs(vec2<i32>(40716i, 1i)), firstLeadingBit(~vec3<i32>(global1.x, 43758i, 5224i))), global2.c), global2.b, false, select(func_2(Struct_2(_wgslsmith_sub_u32(1u, u_input.a.x), ~4294967295u)).a, vec3<bool>(!any(global2.a), !select(global2.d.x, true, global2.c), global2.a.x), vec3<bool>(true, select(false, true, false), global2.c & !global2.d.x)), _wgslsmith_f_op_f32(select(global2.e, -984f, true)));
    var var_1 = u_input.a.x;
    global0 = array<vec3<f32>, 32>();
    global2 = Struct_1(!vec3<bool>(global2.a.x, any(!vec3<bool>(global2.d.x, false, true)), func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, -134f) * vec2<f32>(318f, var_0.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f * var_0.e)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-568f * -949f))), -1536f, func_1(Struct_1(var_0.a, _wgslsmith_f_op_f32(-1000f * var_0.b), true, vec3<bool>(true, true, var_0.c), var_0.b), false, select(vec3<bool>(false, global2.d.x, false), vec3<bool>(var_0.a.x, false, true), global2.a)))), true || (_wgslsmith_div_i32(max(global1.x, 0i), 38995i) > global1.x), global2.d, var_0.e);
    var var_2 = var_0.e;
    var var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -314f));
    let var_4 = firstTrailingBit(vec3<i32>(31011i, firstLeadingBit(global1.x ^ global1.x), global1.x) ^ -((vec3<i32>(-2147483647i, global1.x, global1.x) & vec3<i32>(2147483647i, global1.x, -2147483647i)) << (~vec3<u32>(35371u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))));
    let var_5 = -38648i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, var_0.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e + var_3.x))), var_3.x, -767f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1015f, global2.e)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-619f, var_0.b)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(362f, -253f))), true & global2.a.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1729f, var_0.e)))), select(vec2<u32>(_wgslsmith_div_u32(0u, 40868u), reverseBits(1u)), ~u_input.a ^ vec2<u32>(0u, 34502u), true));
}

