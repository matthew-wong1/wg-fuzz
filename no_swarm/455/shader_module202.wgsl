struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(125f, -393f);

var<private> global1: i32 = -11639i;

var<private> global2: Struct_1;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = 1i >> (u_input.a.x % 32u);
    global2 = Struct_1(vec3<i32>(_wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.x, u_input.c.x, -2147483647i, global2.a.x), vec4<i32>(2147483647i, -2147483647i, global2.a.x, global2.a.x))), -(~global2.a.x)), 1i, ~(-1i)), !select(vec2<bool>(global2.b.x, global2.b.x), vec2<bool>(true, true), firstLeadingBit(u_input.a.x) >= _wgslsmith_add_u32(global2.c.x, u_input.a.x)), vec2<u32>(17563u, firstLeadingBit(~4962u)), u_input.a, _wgslsmith_f_op_f32(-1827f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global2.e))));
    var var_0 = 39305u;
    let var_1 = !(true || global2.b.x);
    let var_2 = true;
    return 0u;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(8298u ^ u_input.a.x), 83902u, max(u_input.a.x, ~54664u), 0u), select(~(~(~vec4<u32>(15562u, global2.d.x, u_input.a.x, 4294967295u))), vec4<u32>(~21463u ^ func_3(), abs(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 65285u), vec2<u32>(global2.d.x, 4294967295u)), global2.d), 41690u), global2.b.x), ~min(countOneBits(~vec4<u32>(global2.d.x, 0u, 1u, u_input.a.x)), vec4<u32>(28634u, global2.d.x, 5645u, ~u_input.a.x)));
    let var_1 = u_input.a.x;
    let var_2 = -(~(u_input.c ^ (~global2.a.xz << (var_0.yy % vec2<u32>(32u)))));
    global2 = Struct_1(global2.a, !global2.b, vec2<u32>(global2.d.x, var_0.x), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -984f)));
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_i32(global2.a, global2.a, global2.a), global2.b, ~vec2<u32>(~u_input.a.x << (_wgslsmith_mod_u32(var_1, u_input.a.x) % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, 1u), var_0.zzw))), ~vec2<u32>(~var_0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(66815u, var_0.x), var_0.x)), 1356f);
    return Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, ~var_3.a.x, ~(-global2.a.x)), -_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, -103926i, 2147483647i), vec3<i32>(-2147483647i, var_2.x, 7101i)), abs(global2.a))), global2.b, max(~select(~var_0.wx, vec2<u32>(global2.c.x, global2.d.x), true), var_0.zx & var_0.xz), ~(~select(var_0.wz << (vec2<u32>(var_1, var_3.c.x) % vec2<u32>(32u)), vec2<u32>(0u, 81721u) | var_3.c, var_3.b)), global0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global2.e))))));
    var var_1 = Struct_1(~(~vec3<i32>(41194i, -80454i, arg_1.a.x)), arg_1.b, ~arg_1.c, select(vec2<u32>(func_2().d.x, _wgslsmith_sub_u32(abs(1u), _wgslsmith_clamp_u32(1u, 4294967295u, 1u))), global2.c, any(global2.b)), arg_1.e);
    let var_2 = arg_1.b;
    var_1 = func_2();
    global0 = var_0.xz;
    return !select(vec4<bool>(!arg_0, all(select(vec4<bool>(var_2.x, arg_1.b.x, arg_1.b.x, arg_0), vec4<bool>(false, var_1.b.x, var_1.b.x, global2.b.x), vec4<bool>(var_1.b.x, true, false, global2.b.x))), false, true), !(!vec4<bool>(arg_1.b.x, var_2.x, arg_1.b.x, true)), false);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = !func_4(any(select(vec3<bool>(global2.b.x, false, global2.b.x), select(vec3<bool>(global2.b.x, true, true), vec3<bool>(global2.b.x, global2.b.x, false), global2.b.x), vec3<bool>(false, global2.b.x, global2.b.x))), func_2());
    let var_1 = ~(~u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 617f, 1000f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1367f, 412f, 683f)) + vec3<f32>(181f, -1000f, 315f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1752f, -606f, global0.x) + vec3<f32>(global2.e, -102f, global0.x)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1065f, var_2.x, var_2.x) + vec3<f32>(global2.e, global2.e, 688f))), vec3<f32>(_wgslsmith_f_op_f32(var_2.x * 988f), func_2().e, _wgslsmith_f_op_f32(f32(-1f) * -264f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, -623f, global2.e))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2145f, global2.e, var_2.x))))))));
    global2 = func_2();
    return func_2();
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = Struct_1(-arg_2.a ^ (vec3<i32>(u_input.c.x, firstTrailingBit(1i), -1i) << (vec3<u32>(44393u | arg_2.c.x, 0u, ~84060u) % vec3<u32>(32u))), select(!global2.b, vec2<bool>(!func_4(false, Struct_1(vec3<i32>(arg_2.a.x, arg_2.a.x, -40808i), arg_1.b, vec2<u32>(global2.c.x, global2.c.x), vec2<u32>(1u, global2.c.x), global2.e)).x, func_3() <= ~global2.c.x), vec2<bool>(arg_1.b.x, true)), _wgslsmith_clamp_vec2_u32(u_input.a, ~vec2<u32>(1u, 1u) >> (vec2<u32>(~global2.c.x, ~arg_1.d.x) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.a.x, 32459u))), vec2<u32>(firstTrailingBit(~_wgslsmith_mult_u32(4294967295u, u_input.a.x)), 821u), arg_2.e);
    let var_0 = !vec3<bool>(all(vec2<bool>(true, func_1(u_input.a.x).b.x)), 40972i == func_2().a.x, arg_1.b.x);
    let var_1 = Struct_1(vec3<i32>(-15236i, -18129i, reverseBits(arg_2.a.x)), !select(func_1(arg_1.d.x).b, var_0.zz, arg_2.b.x), vec2<u32>(0u ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 66973u), arg_1.c), ~_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_div_u32(arg_2.d.x, 12831u))), abs(~vec2<u32>(arg_1.c.x, 4294967295u) | vec2<u32>(firstLeadingBit(4294967295u), arg_2.c.x)), _wgslsmith_f_op_f32(abs(1565f)));
    return func_1(_wgslsmith_add_u32(1u, (0u & ~arg_2.d.x) << (~1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(~(-4219i), i32(-1i) * -46509i, 1i), vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, 22667i, -54463i)), global2.b, _wgslsmith_clamp_vec2_u32(u_input.a, abs(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.c.x, u_input.a.x), u_input.a))), vec2<u32>(select(_wgslsmith_mult_u32(1u, 1u), global2.d.x & u_input.a.x, true), 0u)), select(vec2<u32>(u_input.a.x, 4294967295u) >> (_wgslsmith_mod_vec2_u32(u_input.a, ~u_input.a) % vec2<u32>(32u)), global2.d, vec2<bool>(any(!vec4<bool>(true, global2.b.x, false, global2.b.x)), true)), 1040f);
    var var_0 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), Struct_1(global2.a, vec2<bool>(global2.b.x, _wgslsmith_f_op_f32(-global0.x) == _wgslsmith_f_op_f32(-1622f - 1073f)), vec2<u32>(13230u, global2.d.x), u_input.a << (global2.c % vec2<u32>(32u)), -1000f), func_1(25024u));
    var var_1 = abs(abs(~vec2<u32>(u_input.a.x, 0u)));
    var_0 = Struct_1(func_1(~var_0.d.x).a, func_1(u_input.a.x).b, vec2<u32>(_wgslsmith_add_u32(func_5(_wgslsmith_f_op_f32(-global2.e), Struct_1(vec3<i32>(u_input.b.x, 1i, 1i), var_0.b, var_0.d, vec2<u32>(u_input.a.x, 54817u), 1368f), func_5(751f, Struct_1(vec3<i32>(-2147483647i, var_0.a.x, var_0.a.x), var_0.b, var_0.c, vec2<u32>(60703u, 0u), var_0.e), Struct_1(global2.a, vec2<bool>(false, true), global2.c, global2.c, -859f))).c.x, abs(~u_input.a.x)), ~0u), _wgslsmith_mult_vec2_u32(~(~u_input.a), reverseBits(_wgslsmith_sub_vec2_u32(u_input.a ^ vec2<u32>(var_0.d.x, var_1.x), vec2<u32>(global2.c.x, 18817u) ^ vec2<u32>(0u, 4294967295u)))), _wgslsmith_f_op_f32(-global2.e));
    let var_2 = func_5(_wgslsmith_f_op_f32(max(global0.x, 1000f)), Struct_1(abs(vec3<i32>(global2.a.x, -global2.a.x, min(30124i, var_0.a.x))), !var_0.b, global2.c, u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -772f)))))), Struct_1(global2.a, func_2().b, _wgslsmith_add_vec2_u32(firstTrailingBit(~vec2<u32>(global2.d.x, var_0.d.x)), firstLeadingBit(var_0.d) >> (vec2<u32>(global2.c.x, 63262u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(abs(var_0.c.x), ~global2.d.x), (vec2<u32>(0u, global2.d.x) & vec2<u32>(var_1.x, 68868u)) & _wgslsmith_add_vec2_u32(vec2<u32>(44214u, global2.c.x), u_input.a)), -250f));
    let var_3 = _wgslsmith_f_op_f32(global2.e - global0.x);
    var var_4 = select(select(vec3<bool>(any(vec4<bool>(false, false, var_0.b.x, false)), false, var_0.b.x), vec3<bool>(func_4(true, func_5(191f, var_2, Struct_1(var_2.a, vec2<bool>(true, true), vec2<u32>(var_1.x, u_input.a.x), vec2<u32>(108235u, u_input.a.x), 768f))).x, true, var_0.b.x), any(!func_4(global2.b.x, var_2).wyy)), select(!select(vec3<bool>(true, false, var_0.b.x), select(vec3<bool>(var_2.b.x, global2.b.x, var_0.b.x), vec3<bool>(false, false, var_0.b.x), global2.b.x), var_2.b.x), func_4(false, func_1(4294967295u)).zzy, func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(899f)))), var_2, Struct_1(var_2.a, select(global2.b, global2.b, vec2<bool>(false, true)), ~var_0.d, firstTrailingBit(global2.d), _wgslsmith_f_op_f32(round(var_2.e)))).b.x), select(vec3<bool>(true, false, !any(vec3<bool>(false, global2.b.x, var_2.b.x))), func_4(global2.b.x, func_5(var_2.e, var_2, func_1(4294967295u))).zxx, select(select(vec3<bool>(var_2.b.x, global2.b.x, var_2.b.x), vec3<bool>(var_0.b.x, var_0.b.x, true), func_4(true, Struct_1(vec3<i32>(var_0.a.x, 14989i, var_0.a.x), var_2.b, vec2<u32>(u_input.a.x, var_1.x), vec2<u32>(var_2.d.x, u_input.a.x), -212f)).xzx), select(func_4(true, Struct_1(vec3<i32>(u_input.b.x, u_input.c.x, -1i), var_0.b, vec2<u32>(u_input.a.x, 25047u), var_2.d, -343f)).zxy, func_4(global2.b.x, Struct_1(var_0.a, vec2<bool>(false, false), var_0.c, vec2<u32>(var_1.x, var_2.d.x), global0.x)).wwy, true || var_0.b.x), !func_4(true, var_2).xwx)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 19539u, 35878u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.c.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(74987u, var_1.x, 4294967295u, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 25792u, 4294967295u, var_0.d.x), countOneBits(vec4<u32>(var_0.d.x, 127852u, var_2.d.x, 4294967295u)))), ~vec3<u32>(func_5(-1188f, func_2(), Struct_1(vec3<i32>(9366i, 0i, global2.a.x), global2.b, var_0.d, var_2.d, -101f)).c.x, firstTrailingBit(~var_0.c.x), ~1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1512f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x), -1076f)), ~vec3<u32>(~var_0.d.x, ~62782u, global2.d.x), -2147483647i);
}

