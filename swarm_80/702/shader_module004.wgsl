struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> bool {
    let var_0 = 37174i;
    var var_1 = vec2<bool>(!(!any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))), all(vec4<bool>(true, all(vec3<bool>(false, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), true)));
    var var_2 = Struct_2(339f);
    var var_3 = -((~countOneBits(vec2<i32>(-6046i, -1i)) << (u_input.b.yy % vec2<u32>(32u))) << (u_input.b.xx % vec2<u32>(32u)));
    var_3 = reverseBits(vec2<i32>(arg_2.a, u_input.c));
    return var_1.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = ~1i << (~(~u_input.b.x) % 32u);
    let var_1 = ~_wgslsmith_sub_u32(~u_input.b.x, ~(~0u) << (0u % 32u));
    let var_2 = Struct_1(reverseBits(-6115i) & arg_1, _wgslsmith_f_op_f32(trunc(578f)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-639f - -296f) + 506f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-750f, -1328f))))));
    var var_3 = !func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1969f, -954f, 332f) + vec3<f32>(227f, 923f, -885f))), vec3<f32>(_wgslsmith_f_op_f32(step(771f, 1034f)), _wgslsmith_f_op_f32(abs(-1866f)), _wgslsmith_div_f32(-2165f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(694f, 1089f, -1684f, -516f) * vec4<f32>(-776f, 226f, 439f, 304f))))), Struct_3(arg_3.a, _wgslsmith_mult_i32(u_input.c, reverseBits(arg_2.x))));
    let var_4 = !select(vec4<bool>(arg_3.b, all(vec4<bool>(var_2.b, true, var_2.b, true)), var_2.b, true), !vec4<bool>(var_2.b, !arg_3.b, true, arg_3.b), true);
    return select(vec4<bool>(var_4.x, 152f >= _wgslsmith_f_op_f32(-670f - _wgslsmith_f_op_f32(select(1000f, -392f, false))), all(vec3<bool>(true, arg_3.b == var_2.b, false)), all(vec4<bool>(var_4.x | true, true, u_input.e.x <= -2147483647i, !var_4.x))), var_4, var_4);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_2(750f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -147f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f)));
    let var_2 = func_4(_wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.b.xz), firstTrailingBit(u_input.c), reverseBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(u_input.e, countOneBits(vec2<i32>(0i, -20020i))), vec2<i32>(u_input.e.x, u_input.c) | ~vec2<i32>(u_input.c, u_input.e.x), ~u_input.e)), Struct_1(~firstLeadingBit(1i), (func_3(vec3<f32>(arg_0.a, var_0.a, arg_0.a), vec4<f32>(arg_0.a, -141f, 329f, var_0.a), Struct_3(-44907i, u_input.c)) != true) & true));
    var_1 = 816f;
    return Struct_3(0i, _wgslsmith_add_i32(i32(-1i) * -18001i, firstTrailingBit(-(u_input.e.x >> (arg_3 % 32u)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = !((11858i & _wgslsmith_dot_vec4_i32(vec4<i32>(21915i, -2147483647i, -16329i, u_input.e.x), ~vec4<i32>(-3427i, -13793i, u_input.c, arg_0.b))) == 1i);
    var_0 = 36703u < ~(~u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.b.x, u_input.d), u_input.b.xyx) % 32u));
    let var_1 = func_2(arg_1, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1760f, _wgslsmith_f_op_f32(round(205f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) * _wgslsmith_f_op_f32(-arg_1.a)))), min(62615u, _wgslsmith_mod_u32(abs(4294967295u), 50842u)) == u_input.b.x, 24831u);
    var_0 = false;
    var var_2 = u_input.e;
    return Struct_1(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_2.x, -16620i), -(var_2.x << (select(4294967295u, u_input.a, false) % 32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(~1022i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, arg_0.a, u_input.e.x), vec3<i32>(49038i, u_input.e.x, var_1.b))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(27036i, arg_0.a, u_input.c), vec3<i32>(var_1.b, var_1.a, -1i), vec3<i32>(-2147483647i, var_1.a, var_1.a)), vec3<i32>(-37085i, -1i, 15857i)))), true);
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-362f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> bool {
    var var_0 = min(~vec3<u32>(~(~1u), ~1u, ~(~u_input.b.x)), ~u_input.b.xwy & vec3<u32>(_wgslsmith_div_u32(u_input.d, 4294967295u), ~_wgslsmith_mod_u32(u_input.b.x, 23375u), arg_1.x));
    var var_1 = Struct_3(1i, _wgslsmith_mult_i32(-34890i, u_input.c));
    var var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -143f))), 171f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(710f)) * _wgslsmith_f_op_f32(abs(-205f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -506f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(832f - 767f))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(1302f - -595f));
    var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-192f, var_3.a, arg_0.b)))), -1623f)), var_2.x, -979f), vec3<f32>(_wgslsmith_f_op_f32(func_6(abs(_wgslsmith_add_i32(-1i, -1i)), func_5(func_2(Struct_2(var_3.a), Struct_2(935f), arg_0.b, 24083u), Struct_2(var_3.a), _wgslsmith_div_vec4_f32(vec4<f32>(-317f, -204f, var_3.a, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))))), -236f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_3.a, var_3.a), _wgslsmith_f_op_f32(round(437f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-468f)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(12326i <= (u_input.e.x | min(_wgslsmith_mod_i32(19762i, u_input.c), -1i)), all(select(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, u_input.b.x == u_input.d), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), u_input.d < 1u), func_1(Struct_1(0i, true), ~vec3<u32>(4294967295u, u_input.d, 16886u)))));
    var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(~(reverseBits(25996i) | ~min(u_input.c, u_input.c)), -_wgslsmith_div_i32(-22476i, u_input.e.x));
    var var_2 = countOneBits(vec4<i32>(var_1.a, -49031i, func_5(var_1, Struct_2(_wgslsmith_f_op_f32(887f + 477f)), vec4<f32>(_wgslsmith_div_f32(-1947f, 609f), _wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(f32(-1f) * -341f))).a, firstLeadingBit(var_1.a)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -902f);
    let var_4 = !(!select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, true, false, true), var_0.x), any(vec4<bool>(false, var_0.x, true, var_0.x)) | true));
    var_0 = vec2<bool>(all(var_4.zx), select(var_0.x, (!var_0.x != false) && true, true));
    var var_5 = func_2(Struct_2(2481f), Struct_2(-2187f), !var_4.x, _wgslsmith_sub_u32(u_input.b.x, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(618f, -1040f, -802f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(min(-1046f, -843f)), 1f)), var_4.wxx)), u_input.d);
}

