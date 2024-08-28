struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_3 = Struct_3(vec2<i32>(45146i, 2822i), vec4<bool>(true, false, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f * 396f), _wgslsmith_f_op_f32(ceil(-529f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(334f, 245f) - vec2<f32>(2919f, 953f)), vec2<f32>(1056f, -1537f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(984f, 1131f))))))));
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(4734u, u_input.b.x, 4294967295u, u_input.c.x), u_input.b)), _wgslsmith_add_vec4_u32(u_input.b, select(vec4<u32>(u_input.b.x, u_input.b.x, 113016u, 4294967295u), firstLeadingBit(vec4<u32>(90184u, 0u, u_input.b.x, 0u)), global2.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, -232f, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-979f, -1627f, 1017f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-574f, -374f, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -454f)))), u_input.b.wyw);
    var var_2 = Struct_2(var_1.c.xy, _wgslsmith_f_op_f32(var_1.b.x - 553f), var_1, global1[_wgslsmith_index_u32(u_input.a.x, 7u)]);
    var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(14852u | countOneBits(var_2.c.a), u_input.b.x), var_2.a, select(min(select(var_2.a, vec2<u32>(var_1.c.x, var_1.c.x), global2.b.x), vec2<u32>(4294967295u, 1u)), vec2<u32>(1u, select(25792u, var_2.d.a, global2.b.x)), global2.b.yw)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1282f))), -1051f) - -649f), var_2.c, Struct_1(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), var_1.b, var_2.c.c));
    global1 = array<Struct_1, 7>();
    return ~u_input.c;
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2((func_3(global2.b.x) & _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.c.x), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(26127u, u_input.b.x)))) >> ((select(countOneBits(u_input.b.yw), ~vec2<u32>(u_input.b.x, 23296u), true || global2.b.x) ^ u_input.a) % vec2<u32>(32u)), 1000f, global1[_wgslsmith_index_u32(select(1u, select(4294967295u, ~select(1780u, u_input.b.x, global2.b.x), global2.b.x), true), 7u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_div_u32(countOneBits(u_input.a.x), abs(u_input.b.x))), 7u)]);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)) - _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1531f))))));
    let var_2 = var_0.d;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u | ~u_input.c.x, ~var_2.a), 7u)];
    let var_4 = select(vec2<bool>(false, global2.b.x & (1i < firstTrailingBit(-2147483647i))), select(select(select(!vec2<bool>(global2.b.x, true), global2.b.xw, 1u == var_3.a), !select(global2.b.zw, vec2<bool>(true, global2.b.x), global2.b.xy), true), global2.b.zz, u_input.a.x > _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, var_0.d.a), vec2<u32>(1u, 0u)))), any(vec3<bool>(true, all(vec2<bool>(global2.b.x, true)), any(vec2<bool>(false, false)))) && (all(vec3<bool>(global2.b.x, global2.b.x, true)) && (global2.b.x && !global2.b.x)));
    return Struct_3(_wgslsmith_sub_vec2_i32(reverseBits(global2.a | reverseBits(global2.a)), ~global2.a), select(select(vec4<bool>(true, all(vec2<bool>(global2.b.x, true)), any(vec4<bool>(global2.b.x, var_4.x, true, var_4.x)), !global2.b.x), global2.b, global2.b), global2.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1519f - -559f), _wgslsmith_div_f32(-1000f, 121f))) <= arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_2(~vec2<u32>(countOneBits(4294967295u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_add_u32(0u, u_input.a.x))), _wgslsmith_f_op_f32(sign(-533f)), Struct_1(0u & u_input.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_2)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_0.b)))), abs(~vec3<u32>(arg_0.a, u_input.b.x, arg_0.c.x))), Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(reverseBits(1u), 24155u, ~u_input.a.x), u_input.c.x), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(max(arg_0.b.x, 397f)), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(50409u, arg_0.a, 49044u) & u_input.b.zzx, vec3<u32>(arg_0.c.x | u_input.c.x, arg_0.c.x, 52747u), arg_0.c)));
    let var_1 = Struct_2(~arg_0.c.xz, var_0.b, var_0.c, Struct_1(var_0.d.c.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1230f, 1835f, arg_0.b.x) - var_0.d.b), vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-arg_2.x), arg_2.x))), ~var_0.c.c << (var_0.c.c % vec3<u32>(32u))));
    global2 = Struct_3(global2.a, vec4<bool>(!(~var_0.d.a == var_1.c.c.x), false, var_1.a.x >= ~_wgslsmith_mod_u32(arg_0.c.x, var_1.c.c.x), arg_1.b.x));
    var var_2 = Struct_1(_wgslsmith_sub_u32(arg_0.c.x, 1u & ~var_1.a.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.d.a, _wgslsmith_mod_u32(7451u, var_0.c.c.x), select(20536u, var_0.d.a, true), _wgslsmith_mod_u32(1u, arg_0.c.x)), u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.d.b, _wgslsmith_f_op_vec3_f32(-var_0.c.b), !global2.b.yww))) - _wgslsmith_f_op_vec3_f32(-arg_0.b)), var_1.d.c ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 8425u, 4294967295u), ~(~vec3<u32>(1u, 6158u, 33200u)), u_input.b.yww));
    var var_3 = false;
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_2.c.b.zz, vec2<f32>(-290f, -426f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(163f, -1294f), vec2<f32>(528f, -1507f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d.b.yx)))))));
    var var_2 = u_input.b;
    let var_3 = false;
    var var_4 = ~(vec3<i32>(2147483647i, 22159i, -global2.a.x & _wgslsmith_add_i32(0i, global2.a.x)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(38736u, 1u), u_input.b.x, 1u), arg_2.c.c, select(max(vec3<u32>(1u, 0u, arg_2.d.a), u_input.b.yyz), arg_2.d.c | vec3<u32>(arg_2.c.c.x, u_input.b.x, 0u), global2.b.zyy)) % vec3<u32>(32u)));
    return Struct_2(max(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, var_2.x)), u_input.b.wy), ~abs(_wgslsmith_add_vec2_u32(arg_2.a, u_input.c))), -135f, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(36158u, 7u)]);
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    global2 = func_4(Struct_1(countOneBits(125u), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.b)), -1993f), arg_0.c.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<u32>(u_input.a.x | 4294967295u, arg_0.a.x, _wgslsmith_mult_u32(u_input.a.x, arg_0.a.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.c.x, 0u), u_input.c))), Struct_3(firstLeadingBit(vec2<i32>(global2.a.x, ~global2.a.x)), vec4<bool>(any(func_4(Struct_1(arg_0.d.c.x, arg_0.d.b, u_input.b.wxy), Struct_3(vec2<i32>(global2.a.x, 1i), global2.b), vec3<f32>(arg_0.b, -1701f, 1548f)).b.zyz), true, global2.b.x, true)), arg_0.d.b);
    global0 = global2.a.x;
    var var_0 = global2.a;
    let var_1 = vec3<bool>(false, true, global2.b.x);
    let var_2 = vec4<i32>(-2147483647i, -reverseBits(func_2(_wgslsmith_f_op_vec2_f32(-arg_0.d.b.yx)).a.x), ~(var_0.x << (min(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(29763u, arg_0.c.c.x, u_input.b.x, arg_0.a.x))) % 32u)), abs(-1i));
    return Struct_3(-vec2<i32>(-global2.a.x, var_0.x), select(vec4<bool>(-9722i > var_0.x, !any(global2.b), !(global2.b.x & false), all(!global2.b)), !(!(!vec4<bool>(false, false, global2.b.x, global2.b.x))), false && global2.b.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> f32 {
    let var_0 = func_6(func_5(func_4(Struct_1(~u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, -333f)), ~vec3<u32>(45335u, u_input.a.x, 33475u)), func_2(_wgslsmith_f_op_vec2_f32(-arg_0.xz)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, -1408f))))), !vec2<bool>(-40580i == global2.a.x, true), Struct_2(~select(u_input.a, vec2<u32>(11371u, u_input.c.x), global2.b.xx), _wgslsmith_f_op_f32(-563f * _wgslsmith_div_f32(508f, -423f)), global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 7u)], Struct_1(u_input.b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1281f, arg_0.x, arg_0.x), arg_0.yyy, true)), u_input.b.wzw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 1754f), _wgslsmith_f_op_f32(-472f + arg_0.x)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_0.zxz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_5(var_0, global2.b.xx, Struct_2(u_input.b.xy, 426f, global1[_wgslsmith_index_u32(16676u, 7u)], Struct_1(u_input.c.x, arg_0.xzx, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), arg_0.x).d.b) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_0.yyx)))))), vec3<f32>(-504f, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_0.x));
    return 425f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(188f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1268f, 183f), _wgslsmith_f_op_f32(func_1(vec4<f32>(-447f, -818f, 462f, 919f), vec4<i32>(-2147483647i, 0i, -1i, -10275i))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1637f, _wgslsmith_f_op_f32(abs(-160f)), !global2.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(495f, -728f))))));
    let var_1 = Struct_2(u_input.b.yx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1709f * -342f)) - _wgslsmith_f_op_f32(max(-565f, _wgslsmith_div_f32(1183f, 1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1179f, 630f) - _wgslsmith_f_op_f32(667f * 747f))))), global1[_wgslsmith_index_u32(func_5(Struct_3(~firstLeadingBit(vec2<i32>(2147483647i, -30582i)), global2.b), global2.b.zx, func_5(Struct_3(global2.a, vec4<bool>(true, true, true, true)), !vec2<bool>(global2.b.x, false), func_5(func_6(Struct_2(vec2<u32>(4294967295u, u_input.c.x), -196f, global1[_wgslsmith_index_u32(70046u, 7u)], Struct_1(u_input.c.x, vec3<f32>(-1057f, 224f, -228f), u_input.b.ywz))), global2.b.zx, Struct_2(vec2<u32>(u_input.a.x, u_input.b.x), 258f, Struct_1(6593u, vec3<f32>(-1873f, 1542f, -483f), vec3<u32>(u_input.c.x, u_input.b.x, 24922u)), Struct_1(4294967295u, vec3<f32>(-1405f, -421f, 1548f), vec3<u32>(1u, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -584f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1471f, 467f))), 372f).c.a, 7u)], global1[_wgslsmith_index_u32(abs(u_input.a.x), 7u)]);
    let var_2 = u_input.a.x;
    global2 = Struct_3(global2.a, vec4<bool>(!func_6(func_5(Struct_3(vec2<i32>(global2.a.x, 48356i), vec4<bool>(global2.b.x, false, false, global2.b.x)), vec2<bool>(false, false), var_1, var_1.b)).b.x, func_4(func_5(Struct_3(vec2<i32>(0i, 2147483647i), vec4<bool>(true, true, false, false)), global2.b.xz, Struct_2(var_1.c.c.xy, -948f, Struct_1(var_2, var_1.d.b, vec3<u32>(1u, 0u, var_2)), var_1.c), var_1.b).c, func_4(global1[_wgslsmith_index_u32(var_1.a.x, 7u)], Struct_3(vec2<i32>(9254i, -1i), global2.b), var_1.d.b), vec3<f32>(960f, var_1.d.b.x, 530f)).b.x | any(select(vec4<bool>(false, global2.b.x, false, global2.b.x), vec4<bool>(false, false, global2.b.x, global2.b.x), global2.b)), false, any(global2.b.xw)));
    global2 = Struct_3(select(reverseBits(vec2<i32>(firstTrailingBit(2147483647i), _wgslsmith_div_i32(global2.a.x, -2147483647i))), global2.a, any(global2.b.xx)), global2.b);
    let var_3 = func_4(var_1.c, Struct_3(_wgslsmith_div_vec2_i32(vec2<i32>(func_2(var_1.d.b.zx).a.x, -33049i), _wgslsmith_mod_vec2_i32(countOneBits(global2.a), ~vec2<i32>(global2.a.x, global2.a.x))), func_6(func_5(Struct_3(vec2<i32>(17500i, 19938i), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, true)), !vec2<bool>(true, global2.b.x), Struct_2(var_1.a, var_1.d.b.x, var_1.d, var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -838f))).b), _wgslsmith_f_op_vec3_f32(select(var_1.c.b, vec3<f32>(var_1.b, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.c.b.x, -1019f)) * _wgslsmith_f_op_f32(sign(-2466f)))), global2.b.yzy)));
    var var_4 = -1630f;
    var var_5 = Struct_1(var_2, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.b) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(var_1.c.b))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.d.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.b.x))), -609f)), ~firstLeadingBit(~u_input.b.yzy) & _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a.x, 45855u, 15462u), _wgslsmith_div_vec3_u32(var_1.c.c, vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x))), select(var_1.c.c, ~vec3<u32>(0u, var_1.d.c.x, var_1.d.a), func_4(Struct_1(var_2, vec3<f32>(-1065f, 1056f, var_1.c.b.x), u_input.b.zyx), Struct_3(vec2<i32>(-12246i, -51652i), var_3.b), var_1.c.b).b.yxx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(min(~var_1.c.c.zy, vec2<u32>(var_2, 84972u)), u_input.b.xw), -(~vec3<i32>(var_3.a.x, ~global2.a.x, -global2.a.x)), vec2<i32>(i32(-1i) * -32169i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(var_3.a.x, -9901i)) << (_wgslsmith_sub_u32(u_input.b.x, 49115u) % 32u), ~_wgslsmith_clamp_i32(var_3.a.x, var_3.a.x, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.b * vec3<f32>(var_1.b, -1000f, var_1.c.b.x))));
}

