struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    let var_0 = Struct_3(_wgslsmith_div_f32(769f, _wgslsmith_f_op_f32(-arg_0.a.x)), arg_0, Struct_2(17774u, _wgslsmith_f_op_vec4_f32(vec4<f32>(446f, _wgslsmith_f_op_f32(f32(-1f) * -1680f), -1521f, _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1105f, 1341f, arg_0.a.x, -1325f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(366f, arg_0.a.x, arg_0.a.x, -721f))))), _wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(-2147483647i, arg_0.b, arg_3.x))), ~u_input.c.wwy), arg_2));
    global0 = array<i32, 14>();
    var var_1 = all(select(select(select(select(vec2<bool>(arg_1, arg_2), vec2<bool>(var_0.c.d, var_0.c.d), false), vec2<bool>(var_0.c.d, true), false), vec2<bool>(arg_2, !arg_1), !select(vec2<bool>(arg_1, arg_2), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_1))), select(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), var_0.c.d), vec2<bool>(false, false), true), vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_1)), select(vec2<bool>(true, all(vec4<bool>(arg_1, false, false, arg_1))), !vec2<bool>(arg_1, true), arg_1)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, 1607f) + 1000f), -374f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.b.a.x, -3385f))))));
}

fn func_2() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(round(-1654f)))), _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(863f, -2064f, -940f), 0i, vec4<u32>(65258u, 51700u, u_input.b, u_input.d.x)), true, any(vec4<bool>(true, false, false, true)), u_input.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1293f))) * -1340f) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1789f, _wgslsmith_f_op_f32(select(-331f, -453f, true))), -762f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(254f)) * _wgslsmith_f_op_f32(1275f + -1238f)))))), -1190f);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-833f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.wxz, u_input.c.x, vec4<u32>(4294967295u, 4294967295u, u_input.b, 0u)), all(vec2<bool>(false, false)), true, vec4<i32>(-1i, -64822i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 25499i) | u_input.c)))), _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(251f, var_0.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(774f, -1604f, -204f, -1000f))), vec4<f32>(var_0.x, var_0.x, -1384f, _wgslsmith_f_op_f32(sign(-633f))))));
    return !(!(!(all(vec3<bool>(true, true, true)) & false)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>) -> Struct_2 {
    global0 = array<i32, 14>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -1897f), _wgslsmith_f_op_f32(1000f + arg_1.x)))))));
    global0 = array<i32, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.ywy);
    var_0 = arg_1.x;
    return Struct_2(~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1069f, var_1.x, arg_1.x) + vec4<f32>(343f, 1287f, arg_1.x, 479f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, 558f, var_1.x), vec4<f32>(-1303f, 576f, 2109f, 287f), false)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(3071f, -468f, 364f, 888f))))) - _wgslsmith_f_op_vec4_f32(select(arg_1, _wgslsmith_f_op_vec4_f32(-arg_1), arg_0.x))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(26257i, -37536i), -global0[_wgslsmith_index_u32(countOneBits(16115u), 14u)], _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2084i), u_input.c.xyy), u_input.c.wyw)), u_input.c.zyw), any(select(vec4<bool>(arg_0.x == arg_0.x, arg_0.x, arg_0.x, -4936i >= arg_2.x), select(!vec4<bool>(true, true, arg_0.x, false), select(arg_0, vec4<bool>(true, true, arg_0.x, false), true), arg_0.x), vec4<bool>(true, true, u_input.a.x < 0u, true))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    var var_0 = _wgslsmith_mult_u32(u_input.d.x, ~_wgslsmith_div_u32(~abs(u_input.d.x), ~1u));
    let var_1 = func_4(select(!vec4<bool>(false, true, arg_0, func_2()), vec4<bool>(arg_0, all(vec4<bool>(arg_0, arg_2, false, arg_0)) || true, true, true), !(_wgslsmith_mult_i32(24041i, -664i) >= _wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(6110u, 14u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, 409f, -1000f, -201f)))) * vec4<f32>(-304f, _wgslsmith_f_op_f32(abs(-455f)), _wgslsmith_f_op_f32(min(224f, 109f)), -242f))), reverseBits(vec2<i32>(abs(-2639i >> (u_input.a.x % 32u)), -1i)));
    let var_2 = true;
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.d.xz | vec2<u32>(9960u, ~(~u_input.d.x)), _wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, u_input.d.x)), firstLeadingBit(~vec2<u32>(1u, var_1.a))) | u_input.d.zz);
    let var_4 = _wgslsmith_sub_i32(arg_1.x, var_1.c.x);
    return Struct_3(-140f, Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.b.yww), _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(arg_1.x, -2147483647i) >> (~9450u % 32u)), ~vec4<u32>(1u, 1u, 2910u, 15123u) | _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, var_1.a), vec4<u32>(54903u, u_input.d.x, u_input.b, 60749u)), firstLeadingBit(vec4<u32>(18132u, var_1.a, u_input.a.x, 22675u)))), var_1);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.c.d || func_4(vec4<bool>(u_input.c.x <= firstLeadingBit(49629i), arg_2.x || arg_3.c.d, func_1(true, arg_3.c.c.yz << (u_input.a.xx % vec2<u32>(32u)), arg_1.d | false).c.d, arg_2.x || (arg_1.a > 93786u)), arg_1.b, vec2<i32>(~arg_1.c.x, 2147483647i)).d;
    var var_1 = false;
    global0 = array<i32, 14>();
    return arg_3;
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(arg_1.b.a.zx));
    let var_1 = 7149u;
    global0 = array<i32, 14>();
    let var_2 = select(vec4<bool>(!func_4(!vec4<bool>(arg_2.d, arg_2.d, arg_2.d, arg_1.c.d), vec4<f32>(-1956f, -2515f, arg_1.b.a.x, 1000f), u_input.c.ww).d, arg_2.d, func_1(!func_1(true, vec2<i32>(u_input.c.x, arg_1.b.b), true).c.d, -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, arg_3.x), arg_1.c.c.yx), true).c.d, false), select(vec4<bool>(!arg_1.c.d, abs(u_input.a.x) <= ~arg_2.a, false, true), !vec4<bool>(arg_1.b.b <= arg_1.c.c.x, arg_2.d || arg_2.d, !arg_2.d, true), select(!vec4<bool>(arg_1.c.d, arg_2.d, arg_2.d, false), !select(vec4<bool>(true, true, arg_1.c.d, arg_2.d), vec4<bool>(true, arg_2.d, false, arg_2.d), false), !(!arg_2.d))), true);
    var var_3 = func_5(arg_2.a, arg_2, select(vec3<bool>(true | any(vec4<bool>(arg_1.c.d, arg_2.d, false, true)), arg_2.d, true), select(select(select(vec3<bool>(var_2.x, arg_1.c.d, var_2.x), vec3<bool>(arg_1.c.d, var_2.x, arg_2.d), var_2.yzz), select(vec3<bool>(false, var_2.x, arg_2.d), var_2.yyw, arg_1.c.d), 61676i <= arg_3.x), !vec3<bool>(arg_1.c.d, true, arg_1.c.d), !select(vec3<bool>(var_2.x, arg_2.d, false), var_2.yzy, true)), !(!select(var_2.wwx, var_2.zyz, var_2.ywy))), Struct_3(_wgslsmith_f_op_f32(-1081f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -583f)))), func_5(var_1, Struct_2(var_1, arg_1.c.b, arg_1.c.c | arg_1.c.c, any(var_2)), vec3<bool>(select(false, true, arg_2.d), true, any(var_2.wxy)), arg_1).b, arg_2)).c;
    return Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-449f, -2407f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(572f, arg_1.b.a.x, false)))))), func_5(_wgslsmith_sub_u32(0u, 0u), func_5(reverseBits(var_3.a), arg_1.c, var_2.xwy, func_1(true, min(vec2<i32>(var_3.c.x, -49212i), arg_2.c.yy), arg_2.d)).c, vec3<bool>(!(-1004f > var_3.b.x), !(!arg_1.c.d), !all(vec2<bool>(true, true))), arg_1).b, func_5(0u & (0u & arg_1.c.a), func_5(~u_input.b, arg_2, select(!vec3<bool>(arg_1.c.d, true, false), select(vec3<bool>(false, var_2.x, false), var_2.zwz, true), !vec3<bool>(var_2.x, false, true)), Struct_3(_wgslsmith_f_op_f32(-arg_2.b.x), Struct_1(vec3<f32>(var_3.b.x, -418f, var_3.b.x), -1i, arg_1.b.c), Struct_2(arg_1.c.a, vec4<f32>(arg_1.b.a.x, -1453f, arg_1.c.b.x, arg_1.b.a.x), vec3<i32>(2147483647i, var_3.c.x, arg_1.b.b), arg_1.c.d))).c, var_2.wwy, Struct_3(func_1(var_2.x | arg_1.c.d, arg_2.c.zx, any(vec3<bool>(arg_1.c.d, true, var_3.d))).c.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(round(arg_2.b.xzy)), _wgslsmith_mult_i32(var_3.c.x, arg_1.c.c.x), ~vec4<u32>(arg_1.b.c.x, u_input.b, 4294967295u, 5100u)), Struct_2(0u, vec4<f32>(var_3.b.x, arg_1.c.b.x, 1605f, var_3.b.x), u_input.c.xxx & vec3<i32>(arg_0, 0i, arg_0), false))).c);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3) -> vec2<bool> {
    let var_0 = 0u;
    let var_1 = abs((((i32(-1i) * -2147483647i) << (firstLeadingBit(arg_1.c.a) % 32u)) >> (~(79150u ^ var_0) % 32u)) & arg_1.c.c.x);
    global0 = array<i32, 14>();
    var var_2 = u_input.c;
    return vec2<bool>(!func_5(arg_0.b.c.x, Struct_2(arg_1.c.a, vec4<f32>(arg_0.b.a.x, arg_1.b.a.x, arg_1.b.a.x, arg_0.b.a.x), -vec3<i32>(var_1, 0i, arg_1.b.b), true), !vec3<bool>(arg_0.c.d, false, arg_1.c.d), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1540f), arg_1.b, func_4(vec4<bool>(arg_0.c.d, true, true, true), arg_0.c.b, vec2<i32>(-70789i, u_input.c.x)))).c.d, 835f != func_5(reverseBits(var_0 & var_0), arg_0.c, !select(vec3<bool>(true, true, arg_1.c.d), vec3<bool>(false, arg_0.c.d, true), false), arg_1).c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 14>();
    var var_0 = -2982f;
    let var_1 = -(_wgslsmith_div_vec4_i32(~(-u_input.c), ~vec4<i32>(u_input.c.x, u_input.c.x, -17992i, -30375i)) | max(countOneBits(abs(vec4<i32>(1i, u_input.c.x, global0[_wgslsmith_index_u32(1u, 14u)], u_input.c.x))), u_input.c));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(836f * _wgslsmith_f_op_f32(max(-1099f, _wgslsmith_f_op_f32(f32(-1f) * -418f))))));
    global0 = array<i32, 14>();
    var var_3 = func_7(func_6(-min(2147483647i, var_1.x), func_5(_wgslsmith_sub_u32(u_input.a.x | 12629u, 56816u), Struct_2(~u_input.b, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(2429f, var_2, var_2, 302f))), _wgslsmith_add_vec3_i32(var_1.wyx, vec3<i32>(u_input.c.x, 1i, global0[_wgslsmith_index_u32(u_input.b, 14u)])), false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), func_1(true, ~vec2<i32>(-39207i, global0[_wgslsmith_index_u32(58206u, 14u)]), true)), Struct_2(func_1(func_4(vec4<bool>(true, false, true, false), vec4<f32>(var_2, var_2, -407f, 718f), u_input.c.yy).d, func_1(false, var_1.wx, true).c.c.xx, true).b.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -353f, 581f)) + vec4<f32>(var_2, 719f, var_2, -2322f)), vec3<i32>(0i, func_4(vec4<bool>(true, true, true, true), vec4<f32>(var_2, var_2, var_2, 123f), var_1.xy).c.x, _wgslsmith_div_i32(u_input.c.x, 0i)), all(vec4<bool>(true, true, true, false)) | true), firstTrailingBit(max(select(u_input.c.yw, var_1.ww, false), vec2<i32>(-47420i, u_input.c.x) & vec2<i32>(-2147483647i, -17974i)))), func_5(u_input.d.x, Struct_2(u_input.a.x & (u_input.a.x << (u_input.b % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-929f, var_2, var_2, -688f) * vec4<f32>(var_2, 362f, var_2, var_2)), vec3<i32>(-9416i, -13040i, global0[_wgslsmith_index_u32(0u, 14u)]) | (vec3<i32>(u_input.c.x, 46823i, -28199i) & vec3<i32>(-1i, var_1.x, -10214i)), true), vec3<bool>(true && func_2(), all(vec2<bool>(true, true)), !all(vec4<bool>(false, false, true, false))), func_1(true, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.ww, var_1.xw), -var_1.xw), all(vec2<bool>(false, true)))));
    global0 = array<i32, 14>();
    let var_4 = abs(func_6(global0[_wgslsmith_index_u32(1u, 14u)], func_6(-1i, Struct_3(-528f, Struct_1(vec3<f32>(var_2, var_2, -574f), 0i, vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, 4294967295u)), func_6(11491i, Struct_3(1000f, Struct_1(vec3<f32>(var_2, -1000f, var_2), global0[_wgslsmith_index_u32(u_input.b, 14u)], vec4<u32>(u_input.a.x, u_input.d.x, 0u, 1u)), Struct_2(10858u, vec4<f32>(829f, var_2, -221f, var_2), u_input.c.xzx, var_3.x)), Struct_2(1739u, vec4<f32>(1403f, -970f, var_2, var_2), var_1.xyx, var_3.x), u_input.c.xx).c), func_4(select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(false, false, false, var_3.x)), vec4<f32>(241f, var_2, var_2, 711f), ~var_1.yw), select(~vec2<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -27397i), var_1.yx >> (u_input.d.yx % vec2<u32>(32u)), !vec2<bool>(var_3.x, var_3.x))), Struct_2(~1u, func_1(false, ~vec2<i32>(var_1.x, var_1.x), !var_3.x).c.b, abs(vec3<i32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 14u)], var_1.x)), (var_2 < 1129f) && var_3.x), -_wgslsmith_add_vec2_i32(-vec2<i32>(30176i, -5519i), u_input.c.zx)).b.c);
    let x = u_input.a;
    s_output = StorageBuffer(12949u, ~max(var_4.xxx, vec3<u32>(firstTrailingBit(u_input.b), 15503u, _wgslsmith_add_u32(1u, u_input.d.x))), firstTrailingBit(-(var_1.x >> (0u % 32u))) << (1u % 32u), _wgslsmith_sub_i32(min(func_6(-1i, Struct_3(1066f, Struct_1(vec3<f32>(var_2, 1005f, var_2), -2147483647i, var_4), Struct_2(4294967295u, vec4<f32>(var_2, 215f, 451f, var_2), u_input.c.zxx, var_3.x)), Struct_2(var_4.x, vec4<f32>(-995f, -756f, var_2, 321f), vec3<i32>(-19732i, -2147483647i, var_1.x), true), func_4(vec4<bool>(var_3.x, var_3.x, true, var_3.x), vec4<f32>(1224f, var_2, -1040f, var_2), var_1.zw).c.yz).b.b, func_5(0u, Struct_2(u_input.a.x, vec4<f32>(-683f, -1718f, -450f, -2052f), var_1.xxz, var_3.x), vec3<bool>(var_3.x, true, false), func_5(u_input.b, Struct_2(u_input.a.x, vec4<f32>(-315f, -790f, -856f, var_2), u_input.c.xxx, false), vec3<bool>(false, true, var_3.x), Struct_3(var_2, Struct_1(vec3<f32>(var_2, 937f, 433f), global0[_wgslsmith_index_u32(u_input.a.x, 14u)], vec4<u32>(var_4.x, 3534u, 1u, 95485u)), Struct_2(var_4.x, vec4<f32>(var_2, var_2, 1813f, var_2), var_1.zzw, true)))).b.b), ~(1i << (_wgslsmith_add_u32(u_input.b, 1u) % 32u))), u_input.c.yy);
}

