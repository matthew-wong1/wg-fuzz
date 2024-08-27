struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, true, true, true, true, true, false, true, false, true, true, false, true, true, true, false, false, true, true, false, false, false, false, false, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec2<u32>) -> i32 {
    global0 = vec3<bool>(all(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 25u)], arg_1.a, global0.x, false), vec4<bool>(global0.x, false, global0.x, true), true))), all(vec3<bool>(true, true, true)), arg_0.b.a.x <= -30611i);
    let var_0 = vec4<f32>(864f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(arg_0.b.b.x * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.x, _wgslsmith_f_op_f32(arg_0.a - arg_0.a)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -852f)))));
    global0 = vec3<bool>(global0.x, !any(vec2<bool>(global0.x && arg_1.a, true)), !(global0.x != true));
    global0 = vec3<bool>(global1[_wgslsmith_index_u32(~43673u, 25u)], _wgslsmith_f_op_f32(ceil(1928f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1029f)) + _wgslsmith_f_op_f32(-var_0.x)), arg_1.a);
    global1 = array<bool, 25>();
    return arg_0.b.a.x << (~(~0u) % 32u);
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_4(arg_0.x, Struct_2(vec4<i32>(12438i, i32(-1i) * -u_input.a, u_input.a, -(2147483647i << (0u % 32u))), vec2<f32>(_wgslsmith_f_op_f32(max(548f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x))));
    global1 = array<bool, 25>();
    let var_1 = arg_0.x;
    var var_2 = -1i <= var_0.b.a.x;
    let var_3 = _wgslsmith_clamp_vec3_i32(var_0.b.a.zzw, max(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(15938i, var_0.b.a.x, -1i), var_0.b.a.yyw)), vec3<i32>(arg_1, firstTrailingBit(arg_1), -1i) ^ var_0.b.a.yww), _wgslsmith_mod_vec3_i32(~firstTrailingBit(reverseBits(var_0.b.a.yzy)), var_0.b.a.zxw));
    return select(vec4<bool>(-var_3.x < u_input.a, select(false, any(select(arg_3, arg_3, vec3<bool>(false, true, global0.x))), ~arg_1 > -1i), global1[_wgslsmith_index_u32(~1u, 25u)], any(select(vec4<bool>(false, true, true, global0.x), vec4<bool>(true, global0.x, false, arg_2), false)) & true), select(select(select(vec4<bool>(arg_2, arg_3.x, false, arg_2), select(vec4<bool>(false, arg_3.x, false, true), vec4<bool>(global0.x, true, arg_3.x, global0.x), vec4<bool>(arg_2, arg_3.x, global1[_wgslsmith_index_u32(591u, 25u)], global1[_wgslsmith_index_u32(29011u, 25u)])), !vec4<bool>(true, arg_2, false, false)), !(!vec4<bool>(global0.x, arg_2, true, true)), _wgslsmith_div_f32(arg_0.x, var_1) > -770f), vec4<bool>(all(select(vec4<bool>(false, arg_3.x, true, arg_3.x), vec4<bool>(true, global1[_wgslsmith_index_u32(52149u, 25u)], true, true), vec4<bool>(arg_3.x, true, false, false))), -1i > _wgslsmith_clamp_i32(-2147483647i, 16936i, -2435i), global0.x, global1[_wgslsmith_index_u32(1u, 25u)]), select(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~102207u, _wgslsmith_dot_vec2_u32(vec2<u32>(26251u, 1705u), vec2<u32>(26306u, 105553u))), 25u)], true, false)), all(select(select(arg_3, arg_3, arg_3.x), select(arg_3, !vec3<bool>(true, true, global1[_wgslsmith_index_u32(9589u, 25u)]), select(arg_3, arg_3, false)), vec3<bool>(any(vec2<bool>(true, false)), arg_3.x, any(vec2<bool>(true, true))))));
}

fn func_5(arg_0: vec4<bool>) -> bool {
    global1 = array<bool, 25>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(242f, -900f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2527f, 1000f))), true))), -132f);
    let var_1 = Struct_1(u_input.a, vec3<i32>(-1i, -(i32(-1i) * -2147483647i), u_input.a));
    var_0 = vec2<f32>(416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = _wgslsmith_mult_i32(~(-34395i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, _wgslsmith_div_u32(59613u, 16594u), 1u, reverseBits(1u))) % 32u), _wgslsmith_sub_i32(var_1.b.x, u_input.a) << ((countOneBits(1u) | firstTrailingBit(1u)) % 32u));
    return global1[_wgslsmith_index_u32(22853u, 25u)];
}

fn func_2() -> vec3<i32> {
    global1 = array<bool, 25>();
    let var_0 = vec4<bool>(func_5(select(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1807f, -1060f, -455f, -1487f) - vec4<f32>(1809f, -105f, 507f, -1000f)), func_3(Struct_4(-1562f, Struct_2(vec4<i32>(8325i, 16062i, u_input.a, u_input.a), vec2<f32>(450f, -921f))), Struct_3(false), vec2<u32>(3616u, 1u)), true, select(vec3<bool>(false, false, true), vec3<bool>(global0.x, false, false), global1[_wgslsmith_index_u32(1931u, 25u)])), vec4<bool>(global0.x, !global1[_wgslsmith_index_u32(64556u, 25u)], true, any(vec3<bool>(false, true, global0.x))), true)), true, !global1[_wgslsmith_index_u32(countOneBits(~1u), 25u)], func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, 656f, -313f, 673f)) + vec4<f32>(1410f, 1045f, -127f, -1000f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-439f, -247f, 1182f, -298f) * vec4<f32>(-1000f, -219f, -1300f, -304f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1401f, -695f, 914f, -1014f) - vec4<f32>(-426f, -1054f, -130f, 129f)))), _wgslsmith_sub_i32(~(-u_input.a), -65424i), global1[_wgslsmith_index_u32(4294967295u, 25u)], select(!vec3<bool>(false, global0.x, global0.x), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], true, global0.x), vec3<bool>(any(global0.zy), any(vec4<bool>(global1[_wgslsmith_index_u32(9859u, 25u)], false, false, false)), true))).x);
    var var_1 = select(min(-(~firstTrailingBit(vec3<i32>(u_input.a, 1i, 2147483647i))), vec3<i32>(~(~58668i), max(~u_input.a, min(2147483647i, 37885i)), u_input.a)), ~(~vec3<i32>(u_input.a, firstLeadingBit(-24897i), 2147483647i)), vec3<bool>(false, (select(42168u, 1u, var_0.x) < 0u) | any(var_0.zxw), true));
    let var_2 = reverseBits(vec4<i32>(u_input.a, ~(-28483i), select(_wgslsmith_clamp_i32(var_1.x, u_input.a, 2147483647i), _wgslsmith_mod_i32(-35202i, 2147483647i), global0.x || global0.x), -16063i));
    var_1 = var_2.wyx;
    return min(vec3<i32>(-1i) * -var_2.yyw, var_2.xwy);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = Struct_4(-902f, Struct_2(arg_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.b, _wgslsmith_f_op_vec2_f32(sign(arg_2.b))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), arg_2.b.x))));
    let var_1 = Struct_3(global0.x);
    let var_2 = reverseBits(4294967295u);
    var var_3 = var_2 & _wgslsmith_dot_vec3_u32(vec3<u32>(42627u, var_2, var_2), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2, 0u, var_2), vec3<u32>(var_2, var_2, var_2)) ^ vec3<u32>(1u, var_2, var_2)));
    var var_4 = Struct_2(~countOneBits(arg_2.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_3, -462f), arg_3)), arg_2.b)));
    return 0u;
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.b.x) * arg_1.b.b.x), _wgslsmith_f_op_f32(arg_1.a * arg_1.b.b.x), 996f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-148f + 348f) - _wgslsmith_f_op_f32(503f - arg_1.a))))));
    global1 = array<bool, 25>();
    var var_1 = select(select(func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, var_0.x, 1395f, arg_1.a)))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 22740i), max(u_input.a, arg_1.b.a.x)), true, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-952f, 1000f, var_0.x, arg_1.a) - vec4<f32>(1229f, 407f, arg_1.b.b.x, var_0.x)), 2147483647i, true, vec3<bool>(global0.x, false, false)).wwx), !vec4<bool>(all(global0.zz), all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 25u)], global1[_wgslsmith_index_u32(arg_0.x, 25u)])), !global0.x, global0.x), select(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(18126u, 25u)]), !(!vec4<bool>(arg_2.a, false, arg_2.a, true)), _wgslsmith_f_op_f32(1687f * var_0.x) > -344f)), vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 25u)], all(!vec2<bool>(arg_2.a, global1[_wgslsmith_index_u32(arg_0.x, 25u)])), var_0.x == var_0.x, u_input.a >= 4984i), select(vec4<bool>(arg_2.a, true, true, false), vec4<bool>(!any(vec4<bool>(false, global0.x, false, true)), var_0.x < _wgslsmith_f_op_f32(798f * arg_1.a), true, global1[_wgslsmith_index_u32(1u, 25u)] & all(vec2<bool>(false, false))), vec4<bool>(804f >= _wgslsmith_f_op_f32(-1012f - var_0.x), false, !global1[_wgslsmith_index_u32(arg_0.x, 25u)], !(!global0.x))));
    var var_2 = arg_2;
    var var_3 = arg_0.x;
    return true;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = func_7(vec4<u32>(17293u, ~abs(~37931u), 1u, func_6(vec3<i32>(~50073i, -12634i, u_input.a), abs(func_2()), Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 1u, 67085u, 36915u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(863f, -507f))), _wgslsmith_f_op_f32(min(901f, _wgslsmith_f_op_f32(911f - -830f))))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1218f))), Struct_2(firstTrailingBit(vec4<i32>(0i, -2147483647i, u_input.a, 14025i) & vec4<i32>(u_input.a, 2147483647i, u_input.a, -2147483647i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-888f, 377f) * vec2<f32>(789f, -990f)) + vec2<f32>(979f, -758f)))), Struct_3(true));
    global0 = vec3<bool>(var_0, global0.x, false);
    global0 = !(!select(vec3<bool>(global1[_wgslsmith_index_u32(min(61450u, 1u), 25u)], global1[_wgslsmith_index_u32(1u, 25u)], false), func_4(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-148f, 1000f, 1335f, 2103f))), abs(-36712i), arg_0, vec3<bool>(false, true, var_0)).xyx, true));
    global0 = select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)] && true, true, any(vec3<bool>(true, false, var_0))), !select(vec3<bool>(arg_0, var_0, true), vec3<bool>(var_0, true, global0.x), vec3<bool>(global0.x, global1[_wgslsmith_index_u32(15275u, 25u)], false)), vec3<bool>(!var_0, true, var_0 || false)), vec3<bool>(true, true, arg_0), !vec3<bool>(global0.x & arg_0, global1[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)], func_4(vec4<f32>(-1127f, 1266f, 867f, -806f), 1i, var_0, vec3<bool>(var_0, true, false)).x)), vec3<bool>(arg_0, true, !global0.x), true);
    var var_1 = -326f;
    return vec4<bool>(true, arg_0, true, all(!(!(!vec4<bool>(arg_0, global1[_wgslsmith_index_u32(21359u, 25u)], true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(global1[_wgslsmith_index_u32(1u, 25u)], !any(func_1(!global1[_wgslsmith_index_u32(22970u, 25u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~countOneBits(~43994u), firstLeadingBit(_wgslsmith_add_u32(2379u, 54141u)) >> (1u % 32u)), 25u)]);
    global1 = array<bool, 25>();
    var_0 = vec3<bool>(var_0.x, func_7(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(31437u, 19856u), _wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), 8498u, 1u), vec4<u32>(~1u, ~14663u, 1u, abs(47687u))), Struct_4(1f, Struct_2(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 1i, 18159i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 355f)))), Struct_3(true)), !func_1(false).x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2235f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(858f, -1000f)))))));
    var var_2 = true;
    var var_3 = Struct_1(u_input.a | 1280i, vec3<i32>(~0i, u_input.a, u_input.a));
    var var_4 = Struct_1(-u_input.a, abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(var_3.a, var_3.b.x, 0i), vec3<i32>(2147483647i, var_3.b.x, -32040i), select(vec3<bool>(false, global1[_wgslsmith_index_u32(23256u, 25u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], global0.x, true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 25u)], true, true))), vec3<i32>(firstTrailingBit(16758i), ~u_input.a, u_input.a), vec3<i32>(u_input.a, -9764i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -4008i, 1i, var_3.b.x), vec4<i32>(2147483647i, -22797i, u_input.a, u_input.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_2().x);
}

