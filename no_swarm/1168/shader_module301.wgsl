struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 4294967295u)), vec4<bool>(false, false, false, true), Struct_1(vec2<u32>(18769u, 1u)), vec3<i32>(20305i, i32(-2147483648), 23766i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.a, global0.b, Struct_1(~vec2<u32>(0u, reverseBits(0u))), -vec3<i32>(u_input.c, i32(-1i) * -2147483647i, ~1i));
    let var_0 = all(!vec2<bool>(global0.b.x, global0.b.x));
    let var_1 = Struct_2(global0.c, vec4<bool>(countOneBits(~u_input.d) <= countOneBits(-global0.d.x), all(vec3<bool>(true, true, true)), global0.b.x, !(!var_0)), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.e, 30002u), ~vec2<u32>(global0.a.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_u32(global0.c.a, u_input.a.xz, global0.c.a | global0.c.a))), global0.d);
    var var_2 = 3893i;
    return Struct_1(countOneBits(_wgslsmith_add_vec2_u32(~(~vec2<u32>(4294967295u, global0.c.a.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(25060u, global0.c.a.x), min(vec2<u32>(0u, 24124u), global0.a.a), ~vec2<u32>(1u, u_input.e)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global0 = Struct_2(global0.a, global0.b, func_2(), vec3<i32>(~(-global0.d.x), -21684i, reverseBits(-1678i)));
    global0 = Struct_2(Struct_1(global0.c.a), global0.b, global0.c, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(45885i, 48382i, u_input.d), -global0.d), ~_wgslsmith_sub_vec3_i32(global0.d, vec3<i32>(global0.d.x, -19527i, -7448i))) << (u_input.a.www % vec3<u32>(32u)));
    global0 = Struct_2(Struct_1(~vec2<u32>(_wgslsmith_mult_u32(1u, u_input.e), 1u)), vec4<bool>(true, global0.b.x, global0.b.x, true), global0.c, -(vec3<i32>(-1i) * -(~global0.d)));
    var var_0 = global0.b.xwx;
    let var_1 = u_input.a.x;
    return Struct_2(func_2(), !global0.b, Struct_1(vec2<u32>(select(abs(1u), select(var_1, 0u, true), select(var_0.x, global0.b.x, global0.b.x)), _wgslsmith_dot_vec3_u32(u_input.a.zwz, ~vec3<u32>(u_input.e, var_1, 15194u)))), global0.d);
}

fn func_3() -> Struct_1 {
    global0 = func_1(global0.d.zz);
    let var_0 = func_2();
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~_wgslsmith_mult_i32(u_input.d, -45567i), 1i), -1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(~0i, global0.d.x), u_input.d)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, global0.d.x, global0.d.x)), _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(global0.d, ~global0.d), global0.d)), 40260i);
    var var_2 = !vec4<bool>(all(select(global0.b.wzy, func_1(global0.d.xx).b.xww, true)), global0.b.x && !global0.b.x, true, _wgslsmith_dot_vec3_u32(~u_input.a.wzy, ~u_input.a.wwx) != ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, global0.c.a.x), vec2<u32>(var_0.a.x, u_input.e)));
    var_2 = func_1(firstTrailingBit(vec2<i32>(11859i, _wgslsmith_div_i32(u_input.b.x, 2780i))) << (~(_wgslsmith_mult_vec2_u32(u_input.a.wx, var_0.a) ^ (var_0.a ^ vec2<u32>(var_0.a.x, 1u))) % vec2<u32>(32u))).b;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(1000f));
    let var_1 = vec3<bool>(!arg_1.b.x, !all(vec4<bool>(true, !arg_3.b.x, any(arg_1.b), arg_0.a.a.x < arg_0.c.a.x)), arg_1.b.x);
    let var_2 = arg_3.c;
    let var_3 = _wgslsmith_div_f32(319f, var_0);
    global0 = Struct_2(arg_1.a, vec4<bool>((_wgslsmith_add_i32(global0.d.x, 30561i) | _wgslsmith_div_i32(global0.d.x, arg_3.d.x)) > _wgslsmith_sub_i32(~(-12530i), 10071i), any(arg_0.b), !(select(global0.b.x, arg_1.b.x, arg_2) && (var_3 == -139f)), true), func_3(), abs(arg_3.d));
    return Struct_2(arg_3.c, arg_1.b, Struct_1(_wgslsmith_div_vec2_u32(arg_3.a.a, arg_1.a.a)), firstTrailingBit(vec3<i32>(-1i) * -(~vec3<i32>(-32473i, 2147483647i, -18785i))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f + -312f) + 1f), arg_0.b.x)), _wgslsmith_f_op_f32(-920f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(258f, 411f)))), !global0.b.x)) * _wgslsmith_f_op_f32(floor(-380f)));
    let var_2 = arg_0.b.x;
    let var_3 = vec4<bool>(!all(vec3<bool>(-194f <= var_1, any(arg_0.b), true)), all(global0.b), global0.b.x, global0.b.x);
    var var_4 = global0.c;
    return func_4(Struct_2(func_1(arg_0.d.yx).a, var_3, Struct_1(vec2<u32>(countOneBits(1u), _wgslsmith_clamp_u32(1u, u_input.a.x, global0.a.a.x))), abs(~(-vec3<i32>(u_input.b.x, u_input.d, -1i)))), Struct_2(arg_0.c, var_3, func_4(arg_0, Struct_2(global0.c, !var_3, func_1(vec2<i32>(-40548i, global0.d.x)).c, min(vec3<i32>(arg_0.d.x, -55411i, arg_0.d.x), global0.d)), var_3.x, arg_0).a, global0.d), var_2, Struct_2(Struct_1(select(arg_0.c.a, vec2<u32>(u_input.a.x, 46227u) << (global0.c.a % vec2<u32>(32u)), !var_3.yx)), global0.b, func_4(func_4(Struct_2(Struct_1(u_input.a.wx), vec4<bool>(var_3.x, false, var_3.x, global0.b.x), arg_0.c, global0.d), arg_0, global0.b.x & false, Struct_2(Struct_1(vec2<u32>(arg_0.a.a.x, 4294967295u)), var_3, global0.a, vec3<i32>(-48935i, arg_0.d.x, arg_0.d.x))), arg_0, func_4(func_1(vec2<i32>(u_input.c, var_0.x)), Struct_2(Struct_1(var_4.a), vec4<bool>(false, var_2, false, true), Struct_1(vec2<u32>(arg_0.a.a.x, global0.a.a.x)), vec3<i32>(global0.d.x, -43573i, arg_0.d.x)), -522f != var_1, Struct_2(Struct_1(u_input.a.yz), var_3, Struct_1(vec2<u32>(var_4.a.x, u_input.a.x)), arg_0.d)).b.x, arg_0).a, ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.b.x), vec3<i32>(-37704i, 1i, global0.d.x), arg_0.d) << (vec3<u32>(u_input.e, 27765u, var_4.a.x) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(func_1(u_input.b), Struct_2(global0.c, global0.b, func_2(), ~vec3<i32>(-32845i, global0.d.x, 1i)), func_1(-vec2<i32>(1i, global0.d.x)).b.x, Struct_2(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e, 40275u), vec2<u32>(50416u, 1u))), vec4<bool>(any(global0.b), true, true, all(vec4<bool>(true, global0.b.x, global0.b.x, false))), func_3(), select(vec3<i32>(1i, u_input.b.x, global0.d.x), select(vec3<i32>(-27671i, u_input.b.x, u_input.d), global0.d, vec3<bool>(global0.b.x, global0.b.x, true)), global0.b.wzx))), _wgslsmith_clamp_u32(~u_input.e, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(32847u, 0u), 0u), 0u));
    var var_0 = vec3<i32>(-2147483647i, -22411i >> (global0.a.a.x % 32u), -global0.d.x | ~_wgslsmith_mod_i32(u_input.d, u_input.c));
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(~var_0.x, -u_input.b.x, u_input.c, -2147483647i), vec4<i32>(var_0.x, 67056i, max(-14095i, u_input.b.x) >> (37123u % 32u), _wgslsmith_clamp_i32(-17273i, u_input.d & u_input.b.x, ~var_0.x)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1026f - -370f))), 881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(472f, -268f)))))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(exp2(var_3.x));
    global0 = Struct_2(func_1(var_0.yx).a, select(!func_1(_wgslsmith_add_vec2_i32(var_0.xy, vec2<i32>(0i, -33946i))).b, global0.b, global0.b.x), func_5(Struct_2(func_3(), !global0.b, func_3(), max(global0.d, var_2.zxw) & (vec3<i32>(u_input.c, -73787i, var_2.x) << (vec3<u32>(global0.a.a.x, 77434u, 20861u) % vec3<u32>(32u)))), ~(~1u)).a, vec3<i32>(var_2.x, ~2147483647i | func_4(Struct_2(Struct_1(vec2<u32>(43165u, 77195u)), vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), global0.a, vec3<i32>(61521i, 1i, 36425i)), func_1(vec2<i32>(0i, 0i)), false, func_5(Struct_2(Struct_1(global0.c.a), global0.b, global0.a, var_2.xww), 4294967295u)).d.x, -26754i));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, 1000f, -594f))))), vec3<f32>(1785f, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1660f), var_3.x)), func_5(Struct_2(Struct_1(u_input.a.zy), !global0.b, func_2(), ~vec3<i32>(-1i, global0.d.x, u_input.d)), global0.a.a.x).b.xxx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, var_3.x, -162f))))));
    var var_5 = _wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), reverseBits(1706u) & (u_input.e >> (~3097u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x), -121f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, -792f, 892f))))))), u_input.a.yw);
}

