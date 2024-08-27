struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(29490i, 12322i), vec2<i32>(-12314i, -1i), vec2<i32>(1i, -3898i), vec2<i32>(1i, 10684i), vec2<i32>(25794i, 2147483647i), vec2<i32>(27658i, 27422i), vec2<i32>(-1i, 56372i), vec2<i32>(-19212i, -1i), vec2<i32>(-1i, -41261i), vec2<i32>(136i, -16387i), vec2<i32>(2147483647i, -7487i), vec2<i32>(27004i, 1i), vec2<i32>(12806i, -65318i), vec2<i32>(27791i, 0i), vec2<i32>(3895i, 2664i), vec2<i32>(205i, -1i), vec2<i32>(28388i, -1120i), vec2<i32>(-29986i, 21044i));

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(0u, 11349u, 36348u, 2769u), vec4<u32>(43270u, 1u, 1u, 4294967295u), vec4<u32>(10778u, 30766u, 46634u, 1u), vec4<u32>(1u, 28972u, 18166u, 51050u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(4336u, 102990u, 22550u, 11316u), vec4<u32>(4294967295u, 4294967295u, 1u, 33763u), vec4<u32>(1962u, 0u, 48759u, 1u));

var<private> global3: array<i32, 29>;

var<private> global4: vec2<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global4 = ~abs(_wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x & 4294967295u, u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, 7756u, u_input.c.x)), 18u)], vec2<i32>(global4.x | global4.x, ~1i)));
    global2 = array<vec4<u32>, 8>();
    var var_0 = vec3<f32>(-157f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(816f - 1f), _wgslsmith_f_op_f32(select(-606f, 1932f, !all(vec2<bool>(false, true)))), global1.a.x || true)), _wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_1(select(!(!vec2<bool>(true, arg_0.a.x)), arg_0.a, true));
    global2 = array<vec4<u32>, 8>();
    return vec2<bool>(false | all(vec3<bool>(false, global1.a.x, var_1.a.x)), any(vec3<bool>(false, global1.a.x, true)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(!select(global1.a, func_3(Struct_1(global1.a)), global1.a.x));
    let var_1 = ~0i == _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2, global4.x), ~u_input.d.wy)), vec2<i32>(select(2147483647i, -global3[_wgslsmith_index_u32(u_input.c.x, 29u)], any(vec3<bool>(true, true, false))), arg_2 >> (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.c.x, 8u)]) % 32u)));
    global1 = Struct_1(!vec2<bool>(_wgslsmith_f_op_f32(-arg_0) < _wgslsmith_f_op_f32(arg_0 + 237f), true || select(var_0.a.x, false, arg_1)));
    var var_2 = _wgslsmith_dot_vec3_u32(min(firstLeadingBit(vec3<u32>(u_input.c.x, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x)))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 13652u), ~vec3<u32>(u_input.c.x, 46616u, 1u)), vec3<u32>(~u_input.c.x, u_input.c.x, ~20410u))), min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 637u, ~u_input.c.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 1u, 125896u), ~vec3<u32>(u_input.c.x, 65287u, u_input.c.x))), vec3<u32>(max(u_input.c.x, u_input.c.x), ~45760u, u_input.c.x) << ((min(vec3<u32>(1u, 1u, u_input.c.x), vec3<u32>(u_input.c.x, 105740u, u_input.c.x)) & max(vec3<u32>(1u, u_input.c.x, 0u), vec3<u32>(1u, u_input.c.x, u_input.c.x))) % vec3<u32>(32u))));
    var var_3 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(2103f, -557f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_3.x, 195f, var_0.a.x)), -1067f)))), 188f);
    return Struct_1(select(!global1.a, var_0.a, vec2<bool>(true, true)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f) - 1187f)), global1.a.x, 6198i, vec4<f32>(1f, 1f, 1f, 1f));
    global3 = array<i32, 29>();
    let var_0 = ~_wgslsmith_add_u32(~(~abs(u_input.c.x)), u_input.c.x);
    let var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) - 1f), !func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-788f, 1000f)), all(select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(false, true, global1.a.x, true), vec4<bool>(global1.a.x, arg_0, global1.a.x, global1.a.x))), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4294967295u, 29u)] & -26726i, ~u_input.a), vec4<f32>(1f, 1f, 1f, 1f)).a.x, global4.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f) - 176f), 325f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(898f)), 1016f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(574f, -1217f, 1502f, -673f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1203f, 345f, -906f, 294f))))))));
    let var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1032f, 389f))))), global1.a.x, min(-firstTrailingBit(global4.x) >> (32430u % 32u), 21420i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(487f, -493f, _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -975f), _wgslsmith_div_f32(-521f, -879f))))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = firstLeadingBit(-35043i);
    global3 = array<i32, 29>();
    var var_1 = abs(vec2<u32>(64398u, _wgslsmith_dot_vec2_u32(vec2<u32>(~0u, 13666u), countOneBits(~vec2<u32>(u_input.c.x, 7850u)))));
    var var_2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -859f), false, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -global3[_wgslsmith_index_u32(42447u, 29u)], global4.x), ~_wgslsmith_sub_vec3_i32(u_input.d.xzx, u_input.d.xwx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(690f, 1576f, -101f, 808f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-650f, 1111f, 968f, 1184f), vec4<f32>(286f, -1000f, -580f, 314f))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(830f, 587f, 603f, -1880f)))))));
    return firstLeadingBit(arg_3);
}

fn func_5(arg_0: i32, arg_1: vec4<f32>) -> Struct_1 {
    global3 = array<i32, 29>();
    var var_0 = vec3<bool>(true, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(~47898u, 29u)] >> (max(18569u, 0u) % 32u)) != -1i, global1.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(ceil(-331f)), true)));
    var_1 = _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(trunc(-293f))))));
    let var_2 = vec4<u32>(~4294967295u, u_input.c.x, 1u, 4294967295u);
    return func_1(global1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(abs(vec4<i32>(u_input.a, -2147483647i, -1097i, 0i))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, global3[_wgslsmith_index_u32(1u, 29u)], 1i, global4.x), reverseBits(u_input.d))), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 29u)], 14908i), func_4(func_1(global1.a.x), select(vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, true), global1.a.x), func_3(Struct_1(global1.a)).x, vec4<i32>(global4.x, global4.x, 1i, global3[_wgslsmith_index_u32(u_input.c.x, 29u)])))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-642f, _wgslsmith_div_f32(-1149f, 281f)), -1109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(334f - 981f)))), 884f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-324f, -621f)), _wgslsmith_div_f32(882f, -181f))) - _wgslsmith_f_op_f32(round(-352f)))));
    global2 = array<vec4<u32>, 8>();
    global2 = array<vec4<u32>, 8>();
    let var_1 = global3[_wgslsmith_index_u32(~56430u, 29u)];
    var var_2 = !vec4<bool>(true && global1.a.x, global1.a.x, true, all(!(!vec4<bool>(false, false, var_0.a.x, var_0.a.x))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1711f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1444f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1975f))))));
    let var_4 = min(abs(firstTrailingBit(-35451i & _wgslsmith_clamp_i32(u_input.b, u_input.b, global3[_wgslsmith_index_u32(u_input.c.x, 29u)]))), global4.x);
    let var_5 = Struct_1(var_0.a);
    var_0 = Struct_1(vec2<bool>(all(select(vec4<bool>(false, var_2.x, true, global1.a.x), vec4<bool>(var_5.a.x, false, false, false), select(vec4<bool>(true, false, true, var_5.a.x), vec4<bool>(global1.a.x, var_0.a.x, var_5.a.x, global1.a.x), vec4<bool>(true, true, false, true)))), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(var_3)), var_3, 364f, -588f), ~vec3<i32>(-global4.x, -2147483647i, 1i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_4, -1i), vec2<i32>(27485i, 1i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, 1770f, var_3, var_3)), select(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, 4294967295u))), 8u)], vec4<u32>(1u, u_input.c.x, countOneBits(_wgslsmith_mult_u32(u_input.c.x, 6026u)), ~_wgslsmith_mult_u32(75774u, 395u)), var_5.a.x != func_5(~20193i, vec4<f32>(var_3, -401f, -458f, 607f)).a.x));
}

