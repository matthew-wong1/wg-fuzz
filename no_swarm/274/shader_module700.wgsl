struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
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

var<private> global0: array<bool, 30> = array<bool, 30>(true, false, false, true, true, true, true, true, true, true, true, false, true, false, false, true, true, false, true, true, true, false, false, false, true, true, true, true, true, true);

var<private> global1: bool = false;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = arg_0;
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let var_1 = Struct_2(arg_1.d, ~vec2<i32>(~(i32(-1i) * -54855i), -arg_1.b.x >> (reverseBits(arg_0.a.x) % 32u)), 388f, firstLeadingBit(firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(2147483647i, u_input.d.x), i32(-1i) * -1i, -44882i, arg_1.a.x))), vec3<bool>(min(countOneBits(u_input.d.x), _wgslsmith_add_i32(arg_1.b.x, 11550i)) != countOneBits(arg_1.d.x), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(28676u, 30u)], false, arg_1.e.x, false), vec4<bool>(false, arg_1.e.x, true, arg_1.e.x), global0[_wgslsmith_index_u32(1u, 30u)])), -1000f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(342f))))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(trunc(var_1.c)), global0[_wgslsmith_index_u32(arg_2.x, 30u)])) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-532f * -3622f))))), 1039f);
    return ~var_1.b.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 30>();
    var var_0 = -17968i;
    var_0 = _wgslsmith_dot_vec4_i32(abs(firstTrailingBit(~arg_2.a)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.d.x, func_3(arg_3, Struct_2(vec4<i32>(arg_2.a.x, 32561i, 5274i, arg_2.a.x), vec2<i32>(u_input.d.x, 41834i), -728f, u_input.d, arg_2.e), arg_0, vec3<f32>(-908f, -277f, -194f))), 0i), arg_2.d.x, ~firstLeadingBit(-45364i), u_input.d.x));
    let var_1 = Struct_1(arg_0.zz);
    let var_2 = Struct_2(arg_2.d, u_input.d.zz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(286f, arg_2.c)))) + _wgslsmith_f_op_f32(abs(283f))), vec4<i32>(abs(reverseBits(u_input.d.x)), 54540i >> ((8058u ^ _wgslsmith_div_u32(var_1.a.x, 49404u)) % 32u), arg_2.a.x, arg_2.a.x), !vec3<bool>(global0[_wgslsmith_index_u32(~(~4294967295u), 30u)], min(u_input.a, 1u) != abs(var_1.a.x), !(global0[_wgslsmith_index_u32(3912u, 30u)] & true)));
    return 31195u;
}

fn func_2() -> u32 {
    global1 = true;
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, -311f, 1707f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1526f, -1406f, -2298f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1989f, 334f, -587f) * vec3<f32>(-126f, -341f, -2278f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(192f, 337f, 1087f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1591f, -1480f, 584f))))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(212f, 357f, 233f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(628f, 1000f, -2069f), vec3<f32>(-651f, 287f, -587f))))), vec3<f32>(_wgslsmith_div_f32(-916f, 194f), _wgslsmith_f_op_f32(sign(457f)), -1184f), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)], false)))))));
    var var_1 = any(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 30u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true), select(vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]))), vec2<bool>(true, true), vec2<bool>(true, !global0[_wgslsmith_index_u32(1u, 30u)])));
    return func_4(firstLeadingBit(vec4<u32>(97794u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(100042u, u_input.c.x), u_input.b.wx), _wgslsmith_div_u32(u_input.a, 0u)), 60245u, 27968u)), Struct_1(u_input.c), Struct_2(select(-u_input.d, vec4<i32>(~2147483647i, u_input.d.x | 2147483647i, func_3(Struct_1(vec2<u32>(u_input.a, u_input.c.x)), Struct_2(vec4<i32>(u_input.d.x, 30810i, u_input.d.x, -2147483647i), u_input.d.yz, var_0.x, u_input.d, vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 30u)], true, true)), vec4<u32>(u_input.b.x, 1u, u_input.a, 0u), vec3<f32>(2089f, var_0.x, 1021f)), _wgslsmith_dot_vec2_i32(u_input.d.wy, vec2<i32>(u_input.d.x, 14616i))), true), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.d.ww, u_input.d.xz, u_input.d.yy)), _wgslsmith_div_f32(-475f, -199f), vec4<i32>(10624i, firstTrailingBit(~(-18428i)), 39783i, abs(_wgslsmith_sub_i32(30372i, u_input.d.x))), select(!vec3<bool>(global0[_wgslsmith_index_u32(77464u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false), vec3<bool>(any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), global0[_wgslsmith_index_u32(u_input.b.x, 30u)] & true, all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, true))), select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(64370u, 30u)]), global0[_wgslsmith_index_u32(u_input.c.x, 30u)] & true))), Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_clamp_u32(3090u, u_input.c.x, u_input.a)), u_input.b.x ^ 44952u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = array<bool, 30>();
    let var_0 = u_input.d.yz;
    global1 = select(any(arg_1.ww), true, true);
    let var_1 = Struct_2(u_input.d, ~max(var_0, ~u_input.d.xz), arg_2.x, ~u_input.d, arg_1.wxw);
    let var_2 = var_1.c;
    return Struct_1(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(max(vec2<u32>(0u, u_input.b.x), arg_0.a), abs(vec2<u32>(6139u, u_input.a))), abs(~reverseBits(vec2<u32>(36136u, arg_3.x))), select(~_wgslsmith_div_vec2_u32(vec2<u32>(6626u, 132467u), vec2<u32>(arg_0.a.x, arg_3.x)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(arg_3, arg_0.a), select(vec2<u32>(arg_3.x, arg_3.x), arg_3, arg_1.zx)), vec2<bool>(var_1.e.x && arg_1.x, true))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> vec3<u32> {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_f32(min(365f, 1810f));
    var var_1 = func_5(Struct_1(vec2<u32>(func_2(), 0u)), select(vec4<bool>(!arg_2.e.x, false, false, global0[_wgslsmith_index_u32(abs(0u), 30u)]), vec4<bool>(all(select(arg_2.e.yz, arg_0.e.xy, false)), any(select(vec2<bool>(arg_2.e.x, true), vec2<bool>(false, arg_2.e.x), vec2<bool>(global0[_wgslsmith_index_u32(72875u, 30u)], true))), arg_0.e.x, arg_2.e.x), (~arg_0.d.x < _wgslsmith_sub_i32(u_input.d.x, u_input.d.x)) & false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -998f)))), u_input.c);
    let var_2 = Struct_2(u_input.d, vec2<i32>(arg_2.a.x, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1546f * _wgslsmith_f_op_f32(min(arg_0.c, -245f))), 347f, global0[_wgslsmith_index_u32(11019u, 30u)]))), ~vec4<i32>(_wgslsmith_add_i32(arg_2.a.x, 1i) & ~arg_2.a.x, _wgslsmith_sub_i32(-1i, arg_2.d.x >> (45693u % 32u)), ~arg_0.a.x, 0i), arg_0.e);
    let var_3 = select(u_input.d.yz, vec2<i32>(((-66247i >> (var_1.a.x % 32u)) >> (~var_1.a.x % 32u)) << (arg_1 % 32u), -2147483647i), select(arg_2.e.zy, !arg_0.e.xz, select(arg_2.e.xx, var_2.e.yx, !select(var_2.e.x, false, true))));
    return vec3<u32>(arg_3, 4294967295u, 4294967295u);
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    var var_0 = func_5(Struct_1(func_1(arg_1, ~(~arg_2.x), Struct_2(max(u_input.d, arg_1.a), -u_input.d.xx, 472f, vec4<i32>(arg_1.b.x, arg_0.x, 0i, arg_0.x), select(arg_1.e, arg_1.e, true)), 4294967295u).yz), !(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, false, global0[_wgslsmith_index_u32(arg_2.x, 30u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(7423u, 30u)], false, true), vec4<bool>(true, false, arg_1.e.x, true)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(48757u, 30u)]), vec4<bool>(arg_1.e.x, false, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]), true))), vec2<f32>(-1191f, arg_1.c), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_2.xx, vec2<u32>(4294967295u, 44552u)), u_input.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(max(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(4294967295u, arg_2.x)), _wgslsmith_div_vec2_u32(arg_2.yy, u_input.c)), ~reverseBits(u_input.b.xw))));
    let var_1 = Struct_1(func_1(arg_1, u_input.b.x, Struct_2(~u_input.d, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.b, vec2<i32>(arg_1.b.x, u_input.d.x)), abs(vec2<i32>(arg_1.d.x, arg_0.x)), arg_1.d.xw | arg_0.zy), 1000f, vec4<i32>(firstLeadingBit(u_input.d.x), -arg_0.x, ~u_input.d.x, _wgslsmith_clamp_i32(-7385i, 26550i, -1i)), !(!vec3<bool>(global0[_wgslsmith_index_u32(24581u, 30u)], true, true))), var_0.a.x & arg_2.x).zz);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1078f, arg_1.c))), vec2<f32>(-507f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(step(1609f, 1302f)))))));
    let var_3 = Struct_2(u_input.d, -vec2<i32>(-(~arg_0.x), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, arg_0.x)), _wgslsmith_f_op_f32(round(820f)), u_input.d, !arg_1.e);
    var var_4 = false;
    return ~(_wgslsmith_div_u32(~var_1.a.x, arg_2.x | var_0.a.x) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~0u, ~28073u, 4294967295u, func_6(_wgslsmith_sub_vec3_i32(-(u_input.d.zwy | u_input.d.yzx), ~_wgslsmith_mod_vec3_i32(vec3<i32>(10980i, -1i, u_input.d.x), vec3<i32>(-17453i, u_input.d.x, 0i))), Struct_2(vec4<i32>(1i, u_input.d.x, u_input.d.x, max(u_input.d.x, u_input.d.x)), vec2<i32>(u_input.d.x >> (u_input.a % 32u), _wgslsmith_mult_i32(u_input.d.x, 29231i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)), vec4<i32>(u_input.d.x, _wgslsmith_div_i32(-1i, -10917i), u_input.d.x, -u_input.d.x), vec3<bool>(global0[_wgslsmith_index_u32(119399u, 30u)] != false, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], false)))), abs(~func_1(Struct_2(u_input.d, vec2<i32>(1i, 0i), -260f, u_input.d, vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(16879u, 30u)])), u_input.a, Struct_2(vec4<i32>(-45895i, u_input.d.x, -52169i, u_input.d.x), vec2<i32>(u_input.d.x, -2147483647i), -1230f, u_input.d, vec3<bool>(global0[_wgslsmith_index_u32(0u, 30u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), 0u))));
    let var_1 = Struct_1(~u_input.b.yz);
    let var_2 = Struct_1(var_0.wx);
    global1 = false;
    var_0 = _wgslsmith_mod_vec4_u32(u_input.b ^ min(u_input.b, u_input.b), u_input.b);
    global0 = array<bool, 30>();
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(914f, 797f, true)) + _wgslsmith_f_op_f32(f32(-1f) * -1144f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(494f, 2003f), 1f) + 402f)), -1172f);
    var var_4 = var_1;
    var_4 = Struct_1(~_wgslsmith_mod_vec2_u32(var_1.a, var_0.ww));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(533f, 1219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(329f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, var_3.x, -1578f, var_3.x), vec4<f32>(var_3.x, -1000f, 339f, var_3.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, var_3.x, -284f, var_3.x) - vec4<f32>(var_3.x, 318f, -243f, var_3.x))))), select(var_4.a.x, _wgslsmith_mod_u32(39388u, select(var_1.a.x, 66801u, global0[_wgslsmith_index_u32(20676u, 30u)]) | 1u), all(select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 30u)], false, global0[_wgslsmith_index_u32(var_4.a.x, 30u)]), vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 30u)], true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(round(var_3.x))))) * var_3.x));
}

