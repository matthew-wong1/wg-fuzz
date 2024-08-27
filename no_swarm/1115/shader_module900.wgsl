struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, false, false, true, true, false, true, false, true, false, true, true, false, true, false, false, false, false, true, false, true, true, false, true, false, false, true, true, true);

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(2147483647i, -6552i), vec2<i32>(-14427i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), 74i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -3126i), vec2<i32>(3717i, -20280i), vec2<i32>(16221i, 2147483647i));

var<private> global2: array<bool, 30> = array<bool, 30>(false, false, false, true, true, false, false, false, true, false, false, false, false, false, true, true, false, true, false, true, true, false, true, false, false, true, true, false, true, false);

var<private> global3: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    global3 = array<vec2<bool>, 20>();
    let var_0 = Struct_1(false, true, !vec3<bool>(!select(true, arg_1.a, true), arg_1.e < _wgslsmith_clamp_u32(12726u, 24006u, u_input.e), true), true, _wgslsmith_mod_u32(arg_1.e, 33778u) | _wgslsmith_clamp_u32(arg_0.x, ~1u, reverseBits(~arg_0.x)));
    let var_1 = select(u_input.b.wx, vec2<u32>(~firstLeadingBit(4294967295u), 0u) & arg_0.xy, !(all(!arg_1.c) & true));
    var var_2 = any(vec2<bool>(!select(!arg_1.d, var_1.x > 105914u, all(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.e, 29u)], arg_1.c.x, arg_1.a))), !all(select(arg_1.c.yx, global3[_wgslsmith_index_u32(var_1.x, 20u)], var_0.c.zz))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-101f, 748f, -1000f, 141f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1453f, 1630f, -1844f, -182f), vec4<f32>(1570f, -671f, -489f, 1122f), true)))))))));
    return ~(select(~88263u, u_input.a, true & select(global2[_wgslsmith_index_u32(var_1.x, 30u)], global2[_wgslsmith_index_u32(0u, 30u)], false)) | (_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e, 29117u, arg_0.x), vec3<u32>(34567u, 4294967295u, arg_1.e))) & ~firstTrailingBit(17490u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(true, !global2[_wgslsmith_index_u32(4294967295u, 30u)], !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], false, true)), true, ~u_input.e), !vec3<bool>(!global0[_wgslsmith_index_u32(3640u, 29u)] | true, all(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false)), false & arg_3), select(!vec3<bool>(select(false, global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e, 29u)], arg_3)), global2[_wgslsmith_index_u32(61290u, 30u)]), vec3<bool>(any(!global3[_wgslsmith_index_u32(u_input.b.x, 20u)]), any(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)])) | !arg_3, _wgslsmith_f_op_f32(arg_2.x - arg_2.x) == 241f), !(!select(vec3<bool>(arg_3, false, true), vec3<bool>(arg_3, true, arg_3), true))), Struct_1(all(select(vec4<bool>(true, false, false, arg_3), !vec4<bool>(arg_3, false, arg_3, global2[_wgslsmith_index_u32(54948u, 30u)]), select(vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(80070u, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], false, false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.b.x, 30u)], false)))), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], false)), vec3<bool>(false == any(vec3<bool>(global2[_wgslsmith_index_u32(0u, 30u)], true, arg_3)), false, all(select(global3[_wgslsmith_index_u32(129820u, 20u)], global3[_wgslsmith_index_u32(29335u, 20u)], global3[_wgslsmith_index_u32(4294967295u, 20u)]))), true, _wgslsmith_div_u32(_wgslsmith_add_u32(func_3(u_input.b.wyz, Struct_1(false, false, vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 30u)], true), true, u_input.b.x)), _wgslsmith_mult_u32(u_input.e, 1u)), _wgslsmith_mod_u32(u_input.b.x, 75751u))));
    var var_1 = firstTrailingBit(-vec4<i32>(_wgslsmith_div_i32(43844i, -36160i), u_input.c.x, abs(arg_1), -16714i)) & vec4<i32>(-1i, -(i32(-1i) * -1i), countOneBits(_wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(-70187i, arg_0.x)) | _wgslsmith_dot_vec2_i32(arg_0.zx, global1[_wgslsmith_index_u32(40048u, 8u)])), abs(-1i));
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(15996i, -12409i, -1i, -2147483647i) << (u_input.b % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-10922i, arg_0.x, -2147483647i, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0.x, -25255i, -13565i), vec4<i32>(u_input.c.x, arg_0.x, -1i, 1i))) | min(vec4<i32>(u_input.d.x, -65365i, arg_0.x, -15441i), vec4<i32>(u_input.c.x, -4474i, -283i, u_input.d.x))), ~(-_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(arg_1, 1i, 2147483647i, arg_1)), select(vec4<i32>(21637i, 0i, -1i, -2147483647i), vec4<i32>(21328i, 54407i, var_1.x, arg_0.x), global0[_wgslsmith_index_u32(0u, 29u)]))));
    var var_3 = _wgslsmith_f_op_f32(-1590f * 1f);
    let var_4 = Struct_1(var_0.d.c.x, var_0.c.x, !select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_0.a.e, 30u)]), select(select(var_0.b, vec3<bool>(false, false, arg_3), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), select(vec3<bool>(var_0.a.b, global2[_wgslsmith_index_u32(var_0.d.e, 30u)], false), var_0.a.c, var_0.c), !arg_3), false), !(!(-var_2.x < (var_1.x >> (2421u % 32u)))), ~3133u | func_3(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, var_0.a.e), vec3<u32>(var_0.d.e, var_0.d.e, 4294967295u)) & vec3<u32>(47235u, 55956u, 0u), Struct_1(false, arg_3, vec3<bool>(var_0.b.x, var_0.c.x, arg_3), all(var_0.b.xz), 4294967295u >> (u_input.a % 32u))));
    return arg_2.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> vec3<bool> {
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    global3 = array<vec2<bool>, 20>();
    let var_0 = select(select(global3[_wgslsmith_index_u32(~4294967295u, 20u)], select(!(!global3[_wgslsmith_index_u32(arg_0.e, 20u)]), arg_0.c.yz, arg_0.c.yx), true), vec2<bool>(true, true), arg_0.c.zz);
    var var_1 = vec3<bool>(!(u_input.b.x < 67095u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(select(4294967295u | arg_0.e, _wgslsmith_sub_u32(31124u, 1u), true), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.e, 14487u, arg_0.e), u_input.b.wzw), u_input.b.ywz))), 29u)], (_wgslsmith_f_op_f32(1232f * _wgslsmith_f_op_f32(func_2(vec3<i32>(arg_1.x, u_input.d.x, -1i), 1i, vec2<f32>(1103f, 1000f), false))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-359f)) - _wgslsmith_f_op_f32(sign(-1599f)))) | any(var_0));
    return arg_0.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> f32 {
    let var_0 = all(select(select(select(!vec4<bool>(arg_0.x, false, true, global2[_wgslsmith_index_u32(arg_1.a.e, 30u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 30u)], false), vec4<bool>(false, true, true, true)), !select(vec4<bool>(arg_1.d.a, true, false, false), vec4<bool>(arg_1.c.x, true, true, global0[_wgslsmith_index_u32(arg_1.a.e, 29u)]), arg_1.b.x), vec4<bool>(any(vec4<bool>(true, true, false, true)), func_1(arg_1.a, vec4<i32>(-15589i, 0i, u_input.d.x, 46253i), arg_0.x).x, true, global2[_wgslsmith_index_u32(~1u, 30u)])), select(vec4<bool>(arg_0.x, arg_1.b.x, !arg_1.a.a, !arg_0.x), select(select(vec4<bool>(arg_1.b.x, arg_1.d.d, global2[_wgslsmith_index_u32(arg_1.a.e, 30u)], arg_1.b.x), vec4<bool>(arg_1.c.x, global2[_wgslsmith_index_u32(1u, 30u)], true, global2[_wgslsmith_index_u32(15527u, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], arg_0.x, false, true)), vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 30u)], true), vec4<bool>(arg_0.x, arg_0.x, false, arg_1.a.b)), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], arg_1.a.c.x, true, arg_1.d.a), vec4<bool>(arg_1.b.x, true, true, arg_0.x), arg_0.x)), func_1(Struct_1(true, true, arg_0, true, 2395u), vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i), all(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(arg_2, 29u)], arg_0.x))).x || (1u <= select(19072u, 0u, arg_0.x))));
    let var_1 = u_input.c.x;
    global0 = array<bool, 29>();
    let var_2 = Struct_1(select(any(select(arg_0.yz, !vec2<bool>(arg_1.a.b, global0[_wgslsmith_index_u32(1u, 29u)]), true)), any(arg_0), all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], false)) || true), false, arg_1.c, !arg_0.x, 1u);
    let var_3 = 33301i;
    return 576f;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), -1000f, any(select(func_1(Struct_1(false, false, vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.e, 30u)]), false, u_input.a), ~vec4<i32>(1i, u_input.c.x, 1i, 1826i), !global2[_wgslsmith_index_u32(36041u, 30u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(~u_input.a, 30u)], true), !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, 4294967295u), 30u)]))));
    var var_2 = Struct_1(func_1(Struct_1(any(!global3[_wgslsmith_index_u32(u_input.a, 20u)]), global0[_wgslsmith_index_u32(firstLeadingBit(11383u), 29u)] && (global2[_wgslsmith_index_u32(8024u, 30u)] || global2[_wgslsmith_index_u32(u_input.e, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(57737u, 30u)], !global0[_wgslsmith_index_u32(u_input.e, 29u)], true), _wgslsmith_sub_u32(u_input.e, u_input.a) == (1u | u_input.b.x), _wgslsmith_sub_u32(4294967295u, 27771u)), _wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 2147483647i))), abs(vec4<i32>(u_input.c.x, -32507i, -1i, u_input.d.x)) ^ ~vec4<i32>(-2147483647i, u_input.c.x, u_input.d.x, u_input.d.x)), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.a, u_input.a), 29u)]).x, !any(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)], true), vec3<bool>(false, global2[_wgslsmith_index_u32(89956u, 30u)], false), false)), func_1(Struct_1(func_1(Struct_1(false, false, vec3<bool>(global2[_wgslsmith_index_u32(10933u, 30u)], true, global0[_wgslsmith_index_u32(9327u, 29u)]), false, 0u), vec4<i32>(u_input.c.x, u_input.d.x, 19418i, u_input.d.x) << (u_input.b % vec4<u32>(32u)), global0[_wgslsmith_index_u32(62656u, 29u)] || false).x, _wgslsmith_f_op_f32(arg_1.x - -1060f) != arg_0.x, select(vec3<bool>(true, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), true), all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 30u)], false, global2[_wgslsmith_index_u32(15032u, 30u)])), ~_wgslsmith_clamp_u32(u_input.b.x, 30664u, 30613u)), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.c.x), vec4<i32>(u_input.c.x, -44175i, -24858i, -6817i)), any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 30u)], true), global0[_wgslsmith_index_u32(40003u, 29u)]), vec2<bool>(global0[_wgslsmith_index_u32(38963u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), !global3[_wgslsmith_index_u32(u_input.b.x, 20u)]))), any(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(15065u, 30u)], true, global0[_wgslsmith_index_u32(u_input.a, 29u)], global2[_wgslsmith_index_u32(u_input.e, 30u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(20628u, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true), true))), 68150u);
    global2 = array<bool, 30>();
    var var_3 = Struct_1(var_2.d, u_input.a >= ~_wgslsmith_clamp_u32(~0u, max(u_input.b.x, 9809u), 21621u << (var_2.e % 32u)), var_2.c, true, abs(~func_3(vec3<u32>(1u, 1u, 1u), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 30u)], true, vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 30u)], false), false, 0u))));
    return Struct_1(false, !func_1(Struct_1(true, global2[_wgslsmith_index_u32(43709u, 30u)], vec3<bool>(var_2.b, var_3.a, global0[_wgslsmith_index_u32(var_3.e, 29u)]), true, 23818u), vec4<i32>(u_input.c.x, -9709i, 1i, u_input.c.x), false).x || (var_2.b == all(!var_2.c)), select(!var_3.c, vec3<bool>(true, false, _wgslsmith_mult_u32(u_input.e, u_input.e) == ~1u), select(vec3<bool>(false, u_input.c.x <= u_input.c.x, global0[_wgslsmith_index_u32(var_2.e | u_input.e, 29u)]), !vec3<bool>(global2[_wgslsmith_index_u32(118925u, 30u)], false, true), !func_1(Struct_1(var_3.c.x, var_3.b, var_3.c, global0[_wgslsmith_index_u32(25763u, 29u)], var_3.e), vec4<i32>(-1i, u_input.d.x, -59536i, u_input.d.x), false))), global0[_wgslsmith_index_u32(var_3.e, 29u)], var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 30>();
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(293f, -421f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1447f, -489f) + vec2<f32>(108f, 660f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1087f, 1000f), vec2<f32>(-936f, -702f), global2[_wgslsmith_index_u32(u_input.b.x, 30u)]))))), _wgslsmith_div_vec4_f32(vec4<f32>(204f, _wgslsmith_f_op_f32(step(-1095f, 678f)), _wgslsmith_f_op_f32(func_4(func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.e, 29u)], false, vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), false, 0u), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 2147483647i), true), Struct_2(Struct_1(true, global2[_wgslsmith_index_u32(u_input.e, 30u)], vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.e, 30u)]), global2[_wgslsmith_index_u32(85171u, 30u)], u_input.a), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global2[_wgslsmith_index_u32(u_input.a, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.e, 29u)], global2[_wgslsmith_index_u32(u_input.e, 30u)], vec3<bool>(global0[_wgslsmith_index_u32(u_input.e, 29u)], true, global2[_wgslsmith_index_u32(1u, 30u)]), global2[_wgslsmith_index_u32(u_input.e, 30u)], u_input.b.x)), reverseBits(0u), _wgslsmith_f_op_f32(-1039f * 1342f))), -905f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(945f, 574f, -1102f, 956f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(452f, 582f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f)), -1000f))));
    let var_2 = Struct_2(func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_1.zz, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, var_1.x)), vec2<bool>(true, true)))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(568f, _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)), -838f)), vec3<bool>(true, !(!(global2[_wgslsmith_index_u32(0u, 30u)] | true)), false), var_0.c, var_0);
    global2 = array<bool, 30>();
    var var_3 = func_1(var_2.a, vec4<i32>(select(min(1i, u_input.c.x), i32(-1i) * -31787i, !global0[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 8u)] & vec2<i32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(reverseBits(59995u), 8u)]), _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x, 0i), -u_input.d.x), 1i) ^ firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 1i, u_input.d.x, 0i), vec4<i32>(u_input.d.x, -1i, 0i, u_input.d.x)), select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, -7372i), vec4<i32>(17942i, -10240i, u_input.c.x, -1i), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 30u)], var_0.d, var_2.b.x)))), any(select(vec4<bool>(var_0.a, all(var_2.c), true, true), select(vec4<bool>(true, var_2.d.a, var_2.c.x, true), vec4<bool>(global0[_wgslsmith_index_u32(16076u, 29u)], false, true, global2[_wgslsmith_index_u32(var_2.d.e, 30u)]), any(var_2.c.zy)), !select(vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(true, var_2.b.x, global2[_wgslsmith_index_u32(64620u, 30u)], global2[_wgslsmith_index_u32(89546u, 30u)]), vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)]))))).zx;
    let var_4 = var_1;
    var var_5 = var_2;
    let var_6 = ~var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), abs(u_input.d.x));
}

