struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<u32, 9>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = vec3<bool>(all(vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), arg_2.a.x)), true, !all(vec4<bool>(false, true, true, arg_2.a.x)))), arg_2.a.x, any(vec3<bool>(any(!vec3<bool>(arg_2.a.x, false, arg_2.a.x)), ~arg_2.b.x > _wgslsmith_mult_i32(26178i, u_input.c), false)));
    var var_1 = Struct_2(Struct_1(var_0.xy, vec2<i32>(-1i) * -select(vec2<i32>(arg_2.b.x, arg_2.b.x), vec2<i32>(arg_2.b.x, u_input.b), arg_2.a.x), 559f), arg_2, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(352f, arg_2.c)), _wgslsmith_f_op_f32(trunc(arg_2.c))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(vec4<bool>(false, arg_2.a.x, false, !(false && var_0.x)), !(!(!vec4<bool>(var_0.x, arg_2.a.x, var_0.x, var_0.x))), vec4<bool>(true, select(true, arg_2.a.x, true), arg_2.a.x, false)), ~select((vec4<u32>(u_input.a, arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 0u) << (vec4<u32>(u_input.a, 1945u, 10710u, 36204u) % vec4<u32>(32u))) << (~vec4<u32>(arg_0.x, 603u, arg_0.x, 0u) % vec4<u32>(32u)), vec4<u32>(1u, 20263u, ~33295u, global1[_wgslsmith_index_u32(arg_0.x, 9u)]), vec4<bool>(false, false, !arg_2.a.x, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.c))), arg_2.c, -1046f, -479f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-378f, var_1.b.c, var_1.b.c, var_1.b.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, var_1.a.c, 1562f, -534f) + vec4<f32>(var_1.a.c, var_1.a.c, var_1.b.c, 344f)), var_1.d)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.c, arg_2.c, arg_2.c, var_1.a.c))))))) + vec4<f32>(var_1.a.c, _wgslsmith_f_op_f32(step(arg_2.c, _wgslsmith_f_op_f32(step(-627f, -785f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -1743f)))), _wgslsmith_f_op_f32(-1644f * _wgslsmith_f_op_f32(-arg_2.c))));
    var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.c, var_2.x, -156f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c, var_2.x, arg_2.c, 1769f) * vec4<f32>(-812f, 890f, arg_2.c, arg_2.c)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(402f, var_1.b.c, arg_2.c, var_1.a.c))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, -1316f, -305f, 297f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1440f, var_1.a.c, arg_2.c, 573f))))));
    let var_3 = Struct_1(vec2<bool>(~(~var_1.e.x) > (arg_1.x | ~global1[_wgslsmith_index_u32(54487u, 9u)]), _wgslsmith_f_op_f32(f32(-1f) * -1477f) <= _wgslsmith_f_op_f32(max(314f, _wgslsmith_f_op_f32(-var_1.b.c)))), arg_2.b, -640f);
    return max(~abs(4294967295u), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, var_1.e.x ^ 22791u), 1u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~func_3((vec2<u32>(32987u, 4294967295u) ^ vec2<u32>(global1[_wgslsmith_index_u32(1u, 9u)], 17162u)) >> (abs(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 4294967295u) | ~abs(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 9u)])), Struct_1(select(arg_0.a, !vec2<bool>(arg_2.x, false), arg_2.x), ~vec2<i32>(-41861i, arg_1) & vec2<i32>(29016i, arg_0.b.x), _wgslsmith_f_op_f32(-1850f * -488f))), 4u)];
    var_0 = Struct_1(!var_0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(307f * _wgslsmith_div_f32(492f, _wgslsmith_f_op_f32(-370f + -1998f)))));
    var_0 = Struct_1(var_0.a, firstTrailingBit(-select(vec2<i32>(u_input.c, 17039i), vec2<i32>(-2147483647i, -2147483647i), vec2<bool>(false, true))), -847f);
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(true, !arg_2.x), vec2<bool>(var_0.a.x | true, arg_1 > 2147483647i), false), vec2<i32>(~1i, -arg_1), 359f), arg_0, true, !(!(!select(vec4<bool>(arg_2.x, var_0.a.x, var_0.a.x, false), vec4<bool>(var_0.a.x, true, false, arg_0.a.x), vec4<bool>(true, arg_2.x, true, arg_0.a.x)))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 39495u, _wgslsmith_mod_u32(4294967295u, 52411u), ~u_input.a), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], countOneBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55931u, 9u)], 9u)]), _wgslsmith_mod_u32(u_input.a, 4294967295u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~38049u, 9u)], 9u)]), false), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(6259u, u_input.a), vec2<u32>(21738u, u_input.a)), u_input.a, u_input.a, global1[_wgslsmith_index_u32(9772u, 9u)]), ~_wgslsmith_add_vec4_u32(vec4<u32>(1363u, u_input.a, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 4294967295u), vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.a, 9u)], 43355u, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<u32>(38122u, 119854u, u_input.a, 13475u)))));
    var var_2 = arg_0;
    return Struct_2(arg_0, arg_0, !any(vec4<bool>(true, var_0.a.x, arg_2.x, false)) & !arg_2.x, select(!(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, false, var_0.a.x))), vec4<bool>((arg_2.x && false) & (var_0.b.x >= arg_1), arg_0.a.x && true, select(var_2.a.x, 975f < var_0.c, arg_2.x && arg_0.a.x), var_1.d.x), true), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, 538u, u_input.a)), var_1.e.yww), ~4294967295u, ~_wgslsmith_add_u32(var_1.e.x, var_1.e.x), ~global1[_wgslsmith_index_u32(var_1.e.x, 9u)]), ~var_1.e));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = arg_1;
    var var_1 = arg_0.b;
    var var_2 = global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(27816u, 9u)], 4u)];
    global0 = array<Struct_1, 4>();
    let var_3 = ~(~func_3(~arg_0.e.wy, arg_0.e.zy, global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0.e.x, 4294967295u), 4u)]));
    return abs(36323i);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = select(firstTrailingBit(max(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.c), arg_2.b) >> (_wgslsmith_div_vec2_u32(arg_1.zy, arg_1.zy) % vec2<u32>(32u)), select(arg_2.b, firstLeadingBit(vec2<i32>(0i, arg_2.b.x)), 307f <= arg_2.c))), vec2<i32>(reverseBits(countOneBits(u_input.c)), func_4(func_2(arg_2, ~arg_2.b.x, select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, arg_2.a.x), arg_0)), _wgslsmith_div_u32(0u, u_input.a))), arg_2.a.x);
    return 1u;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    global1 = array<u32, 9>();
    var var_0 = -arg_1;
    var var_1 = 0u;
    let var_2 = Struct_1(func_2(arg_0.a, _wgslsmith_clamp_i32(arg_0.b.b.x, 1i, u_input.b), vec3<bool>(select(any(arg_0.b.a), !arg_0.d.x, u_input.a > arg_0.e.x), false, arg_0.c)).d.zx, ~arg_0.b.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.c))), arg_0.a.c, false)));
    let var_3 = !vec2<bool>(var_2.a.x, _wgslsmith_add_u32(global1[_wgslsmith_index_u32(47190u, 9u)], min(0u, u_input.a)) == (global1[_wgslsmith_index_u32(arg_0.e.x, 9u)] & ~arg_0.e.x));
    return select(vec3<bool>(func_2(arg_0.b, -var_2.b.x, vec3<bool>(false, all(vec2<bool>(var_3.x, var_2.a.x)), var_2.a.x)).c, select(true, true, var_2.a.x), any(arg_0.d.yzw)), func_2(global0[_wgslsmith_index_u32(85225u ^ _wgslsmith_sub_u32(arg_0.e.x, arg_0.e.x), 4u)], countOneBits(reverseBits(-arg_0.b.b.x)), !arg_0.d.wyy).d.www, true == any(!arg_0.d.yxy));
}

fn func_6(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = vec4<i32>(abs(9685i), u_input.b, ~(_wgslsmith_add_i32(u_input.b, u_input.b | -2147483647i) & ~(~u_input.b)), 22553i);
    global1 = array<u32, 9>();
    var var_1 = _wgslsmith_mult_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(36427u, 9u)], 9u)]), vec3<u32>(global1[_wgslsmith_index_u32(20628u, 9u)], 65779u, 19860u)), ~vec3<u32>(u_input.a, 1u, global1[_wgslsmith_index_u32(84304u, 9u)]))) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(99767u, global1[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a), ~vec3<u32>(1256u, u_input.a, u_input.a)), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(0u, 9u)], 4294967295u, 7958u))) % vec3<u32>(32u)), vec3<u32>(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(func_2(func_2(Struct_1(arg_0.yx, vec2<i32>(2147483647i, var_0.x), -592f), 2147483647i, arg_0).a, -var_0.x, func_5(Struct_2(Struct_1(arg_0.zz, vec2<i32>(2147483647i, 23835i), 1033f), Struct_1(vec2<bool>(arg_0.x, arg_0.x), var_0.zy, -229f), arg_0.x, vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<u32>(1u, u_input.a, u_input.a, global1[_wgslsmith_index_u32(10298u, 9u)])), 31756i)).e.x, 9u)], 9u)], ~abs(global1[_wgslsmith_index_u32(4345u, 9u)]), _wgslsmith_sub_u32(13809u, u_input.a)));
    let var_2 = 112062u;
    let var_3 = vec3<bool>(any(vec3<bool>(true, false, true)), !(func_4(Struct_2(global0[_wgslsmith_index_u32(var_1.x, 4u)], global0[_wgslsmith_index_u32(21921u, 4u)], arg_0.x, vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<u32>(33019u, 1u, var_1.x, 54065u)), global1[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 9u)], 9u)], 4u)], -1i, vec3<bool>(arg_0.x, arg_0.x, false)).e.x, 9u)]) > u_input.b), !(!(!all(vec2<bool>(false, false)))));
    return Struct_2(func_2(func_2(Struct_1(arg_0.yy, var_0.yx, _wgslsmith_div_f32(-866f, 530f)), 1i, arg_0).b, _wgslsmith_clamp_i32(-5754i, -1i, min(0i, 1i)) >> (~(~42143u) % 32u), !vec3<bool>(arg_0.x, arg_0.x, any(vec3<bool>(true, var_3.x, false)))).a, func_2(func_2(global0[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(var_1.x, 4u)], u_input.c, vec3<bool>(arg_0.x, true, arg_0.x)).e.x, 4u)], u_input.b, select(arg_0, vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, false, true))).b, 27485i, !vec3<bool>(true, arg_0.x || true, false)).b, select(!(!var_3.x), false, all(func_2(Struct_1(arg_0.zy, var_0.zy, 2053f), var_0.x, vec3<bool>(var_3.x, arg_0.x, arg_0.x)).d.zw) && any(vec2<bool>(false, arg_0.x))), !(!select(select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, var_3.x, arg_0.x, arg_0.x), vec4<bool>(true, true, var_3.x, arg_0.x)), func_2(Struct_1(vec2<bool>(var_3.x, false), vec2<i32>(-7381i, 27705i), -1661f), u_input.c, vec3<bool>(true, true, true)).d, !vec4<bool>(false, true, arg_0.x, true))), ~select(~(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(79514u, 9u)], 29550u, 42918u) << (vec4<u32>(var_2, var_2, 0u, 0u) % vec4<u32>(32u))), countOneBits(func_2(global0[_wgslsmith_index_u32(u_input.a, 4u)], -1i, vec3<bool>(var_3.x, false, arg_0.x)).e), vec4<bool>(false, 26529u == var_2, true, any(vec2<bool>(arg_0.x, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 9>();
    global0 = array<Struct_1, 4>();
    let var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(46237u, 9u)]);
    var var_1 = func_6(func_5(Struct_2(Struct_1(vec2<bool>(false, false), -vec2<i32>(26546i, 1i), 1f), global0[_wgslsmith_index_u32(~(~u_input.a), 4u)], (global1[_wgslsmith_index_u32(1u, 9u)] << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61678u, 9u)], 9u)], 9u)] % 32u)) > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 73724u, var_0, var_0), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 9u)], 9u)], var_0, var_0, u_input.a)), vec4<bool>(false, true, all(vec2<bool>(false, true)), true), vec4<u32>(1u, func_1(false, vec3<u32>(26916u, 5793u, u_input.a), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40485u, 9u)], 9u)], 4u)]), _wgslsmith_clamp_u32(u_input.a, 10327u, 1u), ~4294967295u)), u_input.b));
    let var_2 = var_1.a.c;
    var var_3 = Struct_2(Struct_1(vec2<bool>(var_1.c, true), vec2<i32>(-(u_input.c >> (18074u % 32u)), func_2(var_1.b, u_input.b, var_1.d.www).b.b.x), 250f), Struct_1(var_1.b.a, ~var_1.a.b, -1618f), true, vec4<bool>(true, false, false, true), _wgslsmith_mult_vec4_u32(var_1.e, firstTrailingBit(~countOneBits(var_1.e))));
    global0 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(2081f);
}

