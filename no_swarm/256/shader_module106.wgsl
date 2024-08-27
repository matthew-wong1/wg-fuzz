struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
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

var<private> global0: array<Struct_2, 10>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    global0 = array<Struct_2, 10>();
    var var_0 = Struct_1(4294967295u, u_input.a.x, 1000f);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(max(max(vec2<u32>(arg_0, 30248u), vec2<u32>(31427u, arg_0)), _wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(var_0.b, arg_0)))), vec2<u32>(firstTrailingBit(29563u), var_0.b)), 0u);
    global0 = array<Struct_2, 10>();
    var var_2 = select(vec2<bool>(true, _wgslsmith_clamp_i32(-u_input.b, -u_input.b, _wgslsmith_div_i32(2147483647i, u_input.b)) > _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), ~vec3<i32>(-2147483647i, 0i, 1i))), vec2<bool>(!(-u_input.b != firstLeadingBit(-4512i)), true), vec2<bool>(var_0.c != var_0.c, !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, -2101i)) > 0i)));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_0.c)), _wgslsmith_f_op_f32(arg_1 * arg_1))), arg_1))))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1905f * _wgslsmith_f_op_f32(func_3(arg_0.x, 1000f))), _wgslsmith_f_op_f32(min(960f, -792f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(110f, -949f) + vec2<f32>(763f, 117f)))), vec2<f32>(_wgslsmith_f_op_f32(-776f - 380f), _wgslsmith_f_op_f32(min(315f, -1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(453f, -1275f), vec2<f32>(1302f, 684f))) + vec2<f32>(-643f, 141f)))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -162f), 1f)))));
    var var_1 = -u_input.b;
    return Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(u_input.b >> (101724u % 32u), _wgslsmith_mod_i32(42547i, u_input.b)), 0i, 1i, u_input.b), -(~vec4<i32>(-2147483647i, u_input.b, u_input.b, -39509i) ^ vec4<i32>(1i, 2147483647i, u_input.b, u_input.b)), vec4<i32>(~_wgslsmith_clamp_i32(u_input.b, 52251i, 44228i), min(u_input.b >> (arg_0.x % 32u), ~u_input.b), _wgslsmith_sub_i32(reverseBits(1i), u_input.b), -24504i)), Struct_1(abs(_wgslsmith_mod_u32(select(arg_0.x, u_input.a.x, true), 76697u)), arg_0.x, -708f));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = countOneBits(~abs(~vec2<u32>(2286u, 0u))) >> (u_input.a % vec2<u32>(32u));
    var var_1 = vec2<i32>(-arg_0.a.x, 1i) << (_wgslsmith_sub_vec2_u32(reverseBits(abs(_wgslsmith_div_vec2_u32(vec2<u32>(48670u, 67124u), vec2<u32>(u_input.a.x, 3196u)))), vec2<u32>(firstTrailingBit(_wgslsmith_sub_u32(arg_0.b.b, arg_0.b.b)), ~_wgslsmith_div_u32(arg_0.b.a, 28983u))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_sub_vec2_i32(arg_0.a.xz, abs(vec2<i32>(u_input.b, i32(-1i) * -1i)) >> (_wgslsmith_clamp_vec2_u32(u_input.a, ~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, 12915u), u_input.a), vec2<u32>(func_2(vec2<u32>(arg_0.b.b, 32391u)).b.a, 1u)) % vec2<u32>(32u)));
    let var_3 = Struct_3(func_2(u_input.a).b, vec2<i32>(-arg_0.a.x, u_input.b), arg_1, select(~(~(~vec4<u32>(u_input.a.x, 38781u, 0u, 44634u))), abs(min(vec4<u32>(var_0.x, arg_0.b.a, 1u, 0u), vec4<u32>(64482u, arg_0.b.b, arg_0.b.a, 21221u)) >> (~vec4<u32>(17795u, arg_0.b.a, var_0.x, 6487u) % vec4<u32>(32u))), !vec4<bool>(any(vec2<bool>(false, false)), select(true, false, true), select(true, false, true), all(vec3<bool>(true, false, true)))));
    return var_3.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(func_4(func_2(reverseBits(~u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x, _wgslsmith_f_op_f32(sign(arg_0.x)))) + func_2(vec2<u32>(u_input.a.x, u_input.a.x)).b.c)), vec2<i32>(-21367i, 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + -615f) - _wgslsmith_f_op_f32(trunc(-151f))), vec4<u32>(4294967295u, 0u, countOneBits(~_wgslsmith_sub_u32(74052u, 13015u)), 21270u));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -664f);
    var_0 = Struct_3(func_2(var_0.d.wz).b, var_0.b, var_0.c, vec4<u32>(u_input.a.x, var_0.d.x, ~(~(~var_0.d.x)), ~1u));
    var var_2 = 1u;
    var var_3 = Struct_3(Struct_1(~firstLeadingBit(_wgslsmith_mod_u32(var_0.a.a, var_0.d.x)), firstTrailingBit(4294967295u & _wgslsmith_sub_u32(11071u, u_input.a.x)), 1845f), vec2<i32>(-22029i, 1i), _wgslsmith_f_op_f32(-507f + var_0.a.c), _wgslsmith_sub_vec4_u32((~vec4<u32>(u_input.a.x, var_0.a.a, 1u, 14770u) ^ var_0.d) ^ firstTrailingBit(var_0.d), var_0.d));
    return global0[_wgslsmith_index_u32(~(16126u ^ (u_input.a.x >> (4294967295u % 32u))), 10u)];
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    let var_0 = !all(select(vec2<bool>(any(vec4<bool>(true, false, false, true)), false), vec2<bool>(true, false), vec2<bool>(true, true)));
    global0 = array<Struct_2, 10>();
    let var_1 = true;
    global0 = array<Struct_2, 10>();
    let var_2 = -select(func_2(u_input.a | abs(arg_2.d.wx)).a.xy, arg_2.b, var_1);
    return Struct_3(func_4(Struct_2(countOneBits(vec4<i32>(-10684i, arg_1.a.x, 2147483647i, var_2.x)), Struct_1(firstLeadingBit(arg_2.d.x), u_input.a.x, _wgslsmith_f_op_f32(-arg_1.b.c))), arg_2.a.c), ~(-arg_1.a.ww), 500f, firstTrailingBit(vec4<u32>(0u, 769u, 4294967295u, 1u | arg_2.d.x)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(u_input.a.x, arg_1.x, arg_0.c);
    let var_1 = abs(_wgslsmith_mod_vec2_i32(~reverseBits(vec2<i32>(-21527i, 0i)), _wgslsmith_sub_vec2_i32(~func_5(vec3<i32>(26573i, 60553i, 2147483647i), global0[_wgslsmith_index_u32(0u, 10u)], Struct_3(Struct_1(1u, 1u, arg_0.a.c), arg_0.b, var_0.c, arg_0.d)).b, func_5(select(vec3<i32>(2147483647i, 1i, u_input.b), vec3<i32>(-2147483647i, 1i, 953i), vec3<bool>(false, false, false)), Struct_2(vec4<i32>(u_input.b, 28977i, u_input.b, -1i), var_0), Struct_3(Struct_1(arg_0.a.b, 22501u, 138f), vec2<i32>(arg_0.b.x, arg_0.b.x), arg_0.c, vec4<u32>(arg_0.d.x, 69170u, var_0.b, 0u))).b)));
    var var_2 = func_2(vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(arg_0.d.wyy, vec3<u32>(u_input.a.x, var_0.a, 19692u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.b, 96460u, arg_0.d.x), arg_0.d.xwx), ~vec3<u32>(arg_1.x, 4294967295u, var_0.a), vec3<bool>(true, false, false))), ~649u)).b;
    let var_3 = _wgslsmith_sub_u32(~var_0.a, ~arg_0.d.x);
    var_2 = func_5(vec3<i32>(_wgslsmith_mod_i32(~func_5(vec3<i32>(-80169i, 4611i, 13770i), global0[_wgslsmith_index_u32(u_input.a.x, 10u)], arg_0).b.x, ~96425i), -2147483647i, var_1.x), global0[_wgslsmith_index_u32(26256u, 10u)], func_5(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, arg_0.b.x), vec3<i32>(arg_0.b.x, var_1.x, arg_0.b.x)) >> ((func_5(vec3<i32>(arg_0.b.x, arg_0.b.x, var_1.x), Struct_2(vec4<i32>(1i, arg_0.b.x, u_input.b, arg_0.b.x), var_0), Struct_3(Struct_1(19101u, var_2.a, var_0.c), vec2<i32>(2147483647i, u_input.b), var_2.c, arg_0.d)).d.xxx | abs(vec3<u32>(var_3, var_0.b, 47682u))) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 10u)], func_5(firstLeadingBit(vec3<i32>(-5226i, var_1.x, arg_0.b.x)) << (vec3<u32>(17053u, arg_0.a.a, 1u) % vec3<u32>(32u)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(928f, -239f, 2034f, arg_0.a.c) - vec4<f32>(arg_0.a.c, arg_0.a.c, arg_0.c, 310f))), arg_0))).a;
    return arg_0;
}

fn func_7(arg_0: vec3<i32>, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = (vec2<i32>(arg_0.x, _wgslsmith_clamp_i32(-56432i, 1i, func_1(vec4<f32>(arg_1.c, -745f, arg_1.c, 644f)).a.x)) << (~arg_1.d.ww % vec2<u32>(32u))) >> (arg_1.d.yw % vec2<u32>(32u));
    var_0 = max(countOneBits(arg_0.zx) ^ func_2(func_5(vec3<i32>(u_input.b, 0i, 9158i), global0[_wgslsmith_index_u32(0u, 10u)], Struct_3(arg_1.a, arg_0.zz, -1000f, arg_1.d)).d.yx).a.zz, vec2<i32>(-36190i, i32(-1i) * -2147483647i)) | func_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.c))), arg_1.a.c, func_2(~vec2<u32>(arg_1.a.b, 4294967295u)).b.c, _wgslsmith_f_op_f32(-arg_1.a.c))).a.xw;
    var var_1 = -564f;
    let var_2 = Struct_1(~1u, u_input.a.x, arg_1.c);
    var var_3 = u_input.a;
    return StorageBuffer(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, abs(u_input.b), firstTrailingBit(u_input.b)), _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.b, -2147483647i, u_input.b)), vec3<i32>(_wgslsmith_mod_i32(-7409i, u_input.b), -u_input.b, -2147483647i))), func_6(func_5(-_wgslsmith_div_vec3_i32(vec3<i32>(-46523i, -38329i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(547f, -1786f, 448f, 105f) - vec4<f32>(1476f, -1000f, -1941f, 379f))), Struct_3(func_2(u_input.a).b, countOneBits(vec2<i32>(-38403i, u_input.b)), -153f, abs(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))), ~(vec2<u32>(3941u, 96486u) >> (u_input.a % vec2<u32>(32u)))));
}

