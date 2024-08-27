struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-1107f, 1312f, 709f, 104f), vec4<f32>(628f, 136f, 1000f, 3007f), vec4<f32>(-832f, 510f, -2100f, -715f), vec4<f32>(1580f, 135f, -184f, -1119f), vec4<f32>(-179f, 1566f, -1000f, -2130f), vec4<f32>(1516f, 678f, 1000f, 171f), vec4<f32>(1134f, 604f, -794f, 616f), vec4<f32>(-1985f, -822f, 2221f, -1570f), vec4<f32>(-1000f, -981f, 544f, 1957f), vec4<f32>(-1168f, 434f, 684f, 1637f), vec4<f32>(-1437f, -1047f, 2178f, 1905f), vec4<f32>(126f, -468f, -1766f, -1864f), vec4<f32>(804f, -2032f, -1493f, 260f), vec4<f32>(526f, 230f, 1143f, -2393f), vec4<f32>(394f, -1244f, -1000f, 729f), vec4<f32>(-598f, -530f, -556f, 354f), vec4<f32>(193f, 663f, 1371f, -1871f), vec4<f32>(917f, -1069f, 1632f, 1742f), vec4<f32>(-2504f, 438f, 503f, 196f));

var<private> global2: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    global1 = array<vec4<f32>, 19>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 747f, -2123f) - vec3<f32>(-991f, -1000f, arg_2)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2, arg_2) - vec3<f32>(arg_2, 1401f, arg_2)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -570f, 1165f)))));
    var var_2 = global0.x;
    var var_3 = select(vec3<bool>(true, true, false), select(!(!(!vec3<bool>(arg_0, true, false))), vec3<bool>(true, true, arg_1.a.x), vec3<bool>(all(vec2<bool>(arg_0, false)), all(vec3<bool>(false, true, arg_1.a.x)), !arg_1.a.x)), vec3<bool>(any(vec3<bool>(var_1.x <= var_1.x, true, false)), !(!arg_0) == true, all(vec4<bool>(true, arg_1.a.x | arg_0, !global0.x, false))));
    return select(select(vec3<bool>(all(select(vec3<bool>(true, true, var_3.x), vec3<bool>(var_0.a.x, var_3.x, global0.x), var_3.x)), arg_2 > -427f, !(!global0.x)), select(!vec3<bool>(false, var_0.a.x, false), vec3<bool>(all(vec2<bool>(global0.x, false)), any(var_0.a), !arg_0), select(!vec3<bool>(arg_0, global0.x, arg_0), vec3<bool>(false, var_3.x, global0.x), vec3<bool>(arg_1.a.x, arg_0, var_3.x))), false), vec3<bool>(!var_0.a.x, (!global0.x || any(vec3<bool>(arg_0, global0.x, true))) && (all(vec4<bool>(false, true, false, arg_1.a.x)) && all(arg_1.a)), any(vec4<bool>(global0.x & arg_0, all(vec4<bool>(arg_1.a.x, false, true, global0.x)), true, !var_3.x))), !select(vec3<bool>(0u == u_input.a, global0.x, arg_1.a.x), select(select(vec3<bool>(false, false, var_3.x), vec3<bool>(false, global0.x, false), true), vec3<bool>(arg_1.a.x, var_3.x, false), vec3<bool>(true, true, true)), select(select(vec3<bool>(var_3.x, true, arg_0), vec3<bool>(global0.x, var_0.a.x, arg_0), vec3<bool>(arg_1.a.x, arg_0, global0.x)), vec3<bool>(true, true, true), u_input.b <= -8962i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec3<f32> {
    let var_0 = ~13333i;
    let var_1 = Struct_1(arg_0.yz);
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(576f, _wgslsmith_f_op_f32(exp2(arg_1)), arg_1) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1784f, arg_1, arg_1) * vec3<f32>(arg_1, arg_1, arg_1))))))));
    global1 = array<vec4<f32>, 19>();
    let var_3 = vec3<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1542f, arg_1)) >= _wgslsmith_f_op_f32(208f + _wgslsmith_f_op_f32(arg_1 * 1085f))), any(arg_0.xx));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 1019f, var_2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2 + vec3<f32>(arg_1, arg_1, var_2.x)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_2)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, 1000f, arg_1)))))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0)))), -1721f) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, 1350f, var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(!vec3<bool>(arg_1.x, global0.x, false), var_0)) * vec3<f32>(-192f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1720f)), _wgslsmith_f_op_f32(-arg_0)), 142f)));
    var var_2 = global2[_wgslsmith_index_u32(u_input.a & _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(u_input.a | ~u_input.a, abs(1u))), 28u)];
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + -299f)));
    var var_4 = Struct_1(vec2<bool>(true, true));
    return global2[_wgslsmith_index_u32(~u_input.a, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(-1638f, select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -376f) <= _wgslsmith_f_op_f32(step(-2009f, 412f)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1895f, 1614f)))), !vec3<bool>(arg_1.a.x, all(vec3<bool>(arg_0.a.x, global0.x, arg_0.a.x)), arg_1.a.x), select(vec3<bool>(true, arg_0.a.x, func_1(true, arg_1, -533f).x), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, arg_0.a.x), vec3<bool>(true, false, arg_1.a.x), vec3<bool>(arg_0.a.x, true, arg_1.a.x))))), -(2147483647i >> (~abs(u_input.a) % 32u)), ~(-2147483647i));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~_wgslsmith_mod_u32(u_input.a, u_input.a)), 0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), select(u_input.a << (15427u % 32u), _wgslsmith_mult_u32(u_input.a, u_input.a), true))), abs(vec3<u32>(_wgslsmith_mod_u32(63124u, ~50554u), (u_input.a << (u_input.a % 32u)) >> ((u_input.a << (1u % 32u)) % 32u), 4294967295u))), 28u)];
    let var_2 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(func_2(-2791f, vec3<bool>(true, false, true), u_input.c.x, u_input.b).a.x | (global0.x | arg_1.a.x), true), func_1(true, global2[_wgslsmith_index_u32(u_input.a, 28u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-549f + -237f), _wgslsmith_f_op_f32(round(725f)), global0.x))).yy));
    let var_3 = func_2(1059f, vec3<bool>(!var_2.a.x, any(!(!vec3<bool>(global0.x, true, true))), var_2.a.x), ~u_input.b, -u_input.c.x);
    global2 = array<Struct_1, 28>();
    return Struct_1(global0.zy);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global1 = array<vec4<f32>, 19>();
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1270f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1944f - 1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, true, global0.x), 1014f)).x))), !select(vec3<bool>(true, true, func_2(-130f, vec3<bool>(global0.x, true, true), -23768i, -13274i).a.x), vec3<bool>(func_1(true, Struct_1(vec2<bool>(global0.x, false)), -810f).x, true, true), select(vec3<bool>(true, global0.x, false), vec3<bool>(false, arg_0.a.x, false), !vec3<bool>(arg_0.a.x, global0.x, arg_0.a.x))), u_input.b, (i32(-1i) * -23937i) >> ((~1u & (4294967295u << (u_input.a % 32u))) % 32u));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))));
    let var_1 = arg_0;
    var var_2 = arg_0;
    var_2 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1296f * _wgslsmith_f_op_f32(-945f - -836f)))) * _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(var_1.a.x, true, select(true, arg_0.a.x, true)), _wgslsmith_f_op_f32(151f * 207f))).x), !(!(!vec3<bool>(var_1.a.x, var_1.a.x, var_2.a.x))), 9986i, _wgslsmith_sub_i32(u_input.b << (4294967295u % 32u), select(~u_input.b, countOneBits(u_input.c.x), true)));
    let var_3 = _wgslsmith_f_op_f32(-1984f - _wgslsmith_f_op_f32(max(-1115f, _wgslsmith_f_op_f32(select(-1136f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(max(-290f, -1602f)))), true)))));
    return func_5(Struct_1(!var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = !func_1(false, global2[_wgslsmith_index_u32(countOneBits(abs(u_input.a)) ^ u_input.a, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(357f)), 1f))));
    global1 = array<vec4<f32>, 19>();
    var var_2 = func_6(func_5(func_4(global2[_wgslsmith_index_u32(4294967295u, 28u)], func_2(-1000f, vec3<bool>(var_1.x, global0.x, global0.x), i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.b, 0i)))));
    var var_3 = _wgslsmith_mod_vec2_i32(~select(vec2<i32>(countOneBits(u_input.c.x), 57203i >> (u_input.a % 32u)), _wgslsmith_mult_vec2_i32(u_input.c.yw, _wgslsmith_add_vec2_i32(vec2<i32>(54595i, 2147483647i), u_input.c.yx)), select(!vec2<bool>(var_2.a.x, true), var_1.yy, true)), countOneBits(abs(_wgslsmith_add_vec2_i32(abs(u_input.c.ww), -vec2<i32>(u_input.b, -6432i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-446f + 942f), _wgslsmith_f_op_f32(trunc(-473f)), _wgslsmith_div_f32(-385f, -1253f))))), countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.zxw, abs(vec3<i32>(var_3.x, 20723i, u_input.b))), u_input.c.wyy)), vec3<i32>(var_0, var_3.x ^ ~var_0, reverseBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, 1i, u_input.c.x), 2147483647i))), var_0);
}

