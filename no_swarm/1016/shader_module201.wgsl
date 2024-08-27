struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec4<bool>;

var<private> global3: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    let var_0 = Struct_2(select(select(global2.wz, !select(global2.xw, vec2<bool>(global2.x, true), vec2<bool>(global1.x, global2.x)), !(!global2.xx)), !select(vec2<bool>(global2.x, false), vec2<bool>(true, global1.x), false), false));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.x, 306f, arg_2.d.x, arg_2.d.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -528f, arg_2.d.x, arg_2.d.x), vec4<f32>(-1337f, global0.x, 639f, global0.x), vec4<bool>(global2.x, false, false, false))))))), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.d.x, 294f)) - _wgslsmith_f_op_f32(sign(767f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -730f) + _wgslsmith_f_op_f32(f32(-1f) * -1842f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), vec4<f32>(arg_2.d.x, _wgslsmith_f_op_f32(global0.x + 1680f), -202f, 1f)));
    var var_2 = arg_2;
    let var_3 = var_0.a.x;
    var var_4 = 1289f;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-839f)))), -417f));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: i32) -> vec3<u32> {
    var var_0 = select(vec4<bool>(!(520f != _wgslsmith_f_op_f32(-237f - arg_0.x)), !global2.x, global1.x, true), select(!vec4<bool>(arg_1.c.x > 0u, global1.x, true, false), select(vec4<bool>(global2.x & true, true, global1.x || false, arg_0.x == -821f), select(select(vec4<bool>(false, true, true, global1.x), vec4<bool>(true, global2.x, true, global1.x), true), select(vec4<bool>(true, global2.x, false, true), vec4<bool>(global1.x, global1.x, false, true), global1.x), vec4<bool>(global1.x, true, true, true)), vec4<bool>(global1.x, global1.x, all(global2.wwz), true)), vec4<bool>(all(global2.yw), select(true, !global2.x, true), true, true)), !select(vec4<bool>(arg_2.x < arg_2.x, false, any(global2.wwx), arg_1.a.x < -26602i), !vec4<bool>(false, true, global1.x, global1.x), !vec4<bool>(global2.x, global2.x, global1.x, global1.x)));
    var var_1 = Struct_1(vec2<i32>(max(arg_1.a.x, 57101i), reverseBits(~(~34551i))), vec4<u32>(~arg_2.x, ~arg_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_2.x, 0u), 18597u, countOneBits(0u)), arg_1.c.yzw), arg_1.c.x), max(max(vec4<u32>(abs(arg_2.x), ~23643u, _wgslsmith_add_u32(arg_1.c.x, arg_1.b.x), arg_1.b.x | 18869u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 0u, arg_1.c.x, 4294967295u), vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 4294967295u))), ~firstLeadingBit(vec4<u32>(1u, arg_1.b.x, 1u, arg_2.x) >> (vec4<u32>(26160u, arg_1.c.x, 1u, arg_2.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.x, arg_1.d.x, 842f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-170f, -484f, arg_1.d.x)))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, -1434f, arg_1.d.x))))));
    var_0 = !(!(!vec4<bool>(global1.x, all(vec3<bool>(var_0.x, global2.x, false)), any(vec4<bool>(var_0.x, false, true, var_0.x)), true)));
    var var_2 = ~(vec4<i32>(-1i, _wgslsmith_add_i32(~u_input.a, _wgslsmith_sub_i32(-10516i, var_1.a.x)), firstLeadingBit(2147483647i), i32(-1i) * -arg_1.a.x) >> (~(~vec4<u32>(arg_2.x, 30178u, var_1.c.x, arg_2.x) << (abs(arg_1.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(var_1.a.x, 38615i, 2147483647i), countOneBits(-2147483647i)), arg_1.c, abs(_wgslsmith_sub_vec4_u32(arg_2, arg_2)), _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(1254f, arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))));
    return var_3.b.yyw;
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    global1 = !arg_0;
    var var_0 = Struct_2(vec2<bool>(any(!(!vec4<bool>(global1.x, global1.x, true, true))), true));
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-824f * -1000f), global0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(1u, 1u, 1u), vec4<u32>(0u, 18086u, 1u, 1u), Struct_1(vec2<i32>(u_input.a, u_input.a), vec4<u32>(97723u, 0u, 1040u, 4294967295u), vec4<u32>(46996u, 19809u, 8617u, 4294967295u), vec3<f32>(global0.x, global0.x, global0.x)), 8296i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x)))))), Struct_1(vec2<i32>(12466i, countOneBits(-24093i)) | vec2<i32>(u_input.a, ~u_input.a), ~vec4<u32>(15314u, ~1u, ~0u, 43156u), firstTrailingBit(vec4<u32>(~0u, ~1u, _wgslsmith_mult_u32(6196u, 0u), reverseBits(1u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1499f, -678f, 1219f))))))), vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(63838u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(16471u, 72560u), vec2<u32>(4294967295u, 45344u))), 70315u, _wgslsmith_dot_vec2_u32(abs(firstLeadingBit(vec2<u32>(4294967295u, 60098u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 42542u), vec2<u32>(6125u, 735u)), ~1u)), 1u), u_input.a | u_input.a);
    let var_2 = abs(u_input.a) ^ select(1i, 13502i, global2.x);
    var var_3 = Struct_2(vec2<bool>(!all(!global2.ywz), false));
    return global0.x;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: f32) -> u32 {
    global2 = select(vec4<bool>(arg_0, any(vec4<bool>(any(global2.wyz), any(vec2<bool>(true, global1.x)), select(false, false, false), global2.x)), false, !all(!vec3<bool>(global1.x, global2.x, global1.x))), select(!(!(!vec4<bool>(false, false, true, arg_0))), !(!(!vec4<bool>(false, arg_0, arg_0, true))), !select(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(global1.x, arg_0, global1.x, true), vec4<bool>(arg_0, false, global1.x, arg_0)), vec4<bool>(false, false, arg_0, arg_0), !vec4<bool>(true, true, arg_0, false))), vec4<bool>(!arg_0 == !(false && global1.x), all(select(!vec4<bool>(true, true, global2.x, false), !vec4<bool>(arg_0, false, global2.x, true), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f - arg_3)) <= 450f, arg_0));
    let var_0 = ~(~(~2147483647i));
    var var_1 = Struct_2(global2.yy);
    var var_2 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(~select(0i, -36202i, true), ~_wgslsmith_add_i32(var_0, arg_1)), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, var_0), -vec2<i32>(10699i, arg_1))));
    let var_3 = arg_2;
    return 86049u;
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = ~vec4<u32>(countOneBits(func_5(false, u_input.a, 1u, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))))), 74626u, ~35120u, max(1u, ~_wgslsmith_mult_u32(0u, 1u)));
    var var_1 = all(select(global2.xwx, !global2.zwy, global1.x));
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(arg_0, all(vec3<bool>(global1.x, all(global2.ywx), arg_0)), global2.x), false);
    global3 = -1172f;
    global1 = var_2.yz;
    return select(select(!vec4<bool>(var_2.x, all(vec4<bool>(global1.x, arg_0, false, global1.x)), !global2.x, false | arg_0), !vec4<bool>(true, global1.x, all(vec2<bool>(false, true)), false || var_2.x), !vec4<bool>(true, var_2.x, true, global1.x)), vec4<bool>(any(vec3<bool>(true, true, any(global2.xyw))), !all(vec3<bool>(true, false, global2.x)), false, select((4294967295u ^ var_0.x) < 1u, select(!arg_0, true, global2.x), true)), !vec4<bool>(~var_0.x >= 31345u, true, false, var_2.x));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> Struct_2 {
    global3 = arg_3.a;
    let var_0 = Struct_3(global0.x);
    let var_1 = arg_2.x;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a + -119f), _wgslsmith_f_op_f32(func_2(arg_2.zw))));
    let var_2 = arg_0.x;
    return Struct_2(global2.yz);
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<i32>) -> Struct_3 {
    var var_0 = arg_1.a.x;
    let var_1 = -2147483647i;
    return Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f * -2089f)))));
}

fn func_8(arg_0: u32, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> StorageBuffer {
    global1 = vec2<bool>(52645u >= ~arg_0, global2.x);
    var var_0 = select(global2.wz, global2.xx, true);
    global3 = _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(func_2(vec2<bool>(true, !all(global2.yz)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(344f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a - -105f), arg_2.a) + _wgslsmith_f_op_f32(global0.x * 181f)), true)));
    var var_2 = -vec4<i32>(0i, arg_3, _wgslsmith_add_i32(u_input.a, arg_3), u_input.a);
    return StorageBuffer(vec2<i32>(-_wgslsmith_mod_i32(abs(-8005i), 7721i), ~_wgslsmith_dot_vec2_i32(var_2.wy & vec2<i32>(29101i, var_2.x), var_2.yz)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, arg_2.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global0.x);
    var var_1 = reverseBits(select(-vec3<i32>(-2147483647i, u_input.a, u_input.a) & ~(-vec3<i32>(0i, u_input.a, -62310i)), ~vec3<i32>(u_input.a, u_input.a, 1i) | vec3<i32>(-13067i, 2147483647i, _wgslsmith_sub_i32(u_input.a, u_input.a)), true));
    let var_2 = global2.wxx;
    let var_3 = Struct_3(362f);
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(432f + var_3.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1425f, _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_div_vec2_f32(vec2<f32>(945f, global0.x), vec2<f32>(var_3.a, -1096f))))));
    let x = u_input.a;
    s_output = func_8(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 13934u, 84020u, 4294967295u), ~vec4<u32>(1u, 41516u, 58799u, 4294967295u)), abs(_wgslsmith_sub_u32(61278u, 0u))), _wgslsmith_mod_u32(4064u, 1u)), !all(!select(vec4<bool>(var_2.x, true, global2.x, true), vec4<bool>(false, var_2.x, false, false), true)), func_7(656f, func_6(vec3<u32>(50127u, ~60772u, 1u), vec3<i32>(-u_input.a, _wgslsmith_add_i32(u_input.a, 1i), _wgslsmith_mod_i32(15232i, u_input.a)), func_1(global2.x), Struct_3(_wgslsmith_f_op_f32(-global0.x))), Struct_3(-2890f), ~(vec2<i32>(2147483647i, u_input.a) & _wgslsmith_mult_vec2_i32(vec2<i32>(22997i, var_1.x), vec2<i32>(22910i, u_input.a)))), var_1.x);
}

