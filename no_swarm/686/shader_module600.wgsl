struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = select(select(vec4<u32>(_wgslsmith_div_u32(max(u_input.b, u_input.b), ~100405u), ~(~arg_0), arg_0, 63131u), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 69064u, u_input.b, 0u) >> (vec4<u32>(arg_0, 1u, arg_0, 0u) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, arg_0, 27727u, u_input.b), vec4<u32>(38520u, u_input.b, u_input.b, u_input.b), vec4<bool>(arg_1, arg_1, arg_1, true)), vec4<u32>(27930u, 2221u, 15114u, u_input.b) & vec4<u32>(u_input.b, arg_0, u_input.b, 61836u)), select(vec4<u32>(58721u, 1u, arg_0, 39333u), vec4<u32>(80234u, u_input.b, u_input.b, 130433u), true) & vec4<u32>(3336u, arg_0, 0u, 0u), true), select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, false, arg_1), true), vec4<bool>(all(vec4<bool>(true, true, true, true)), 371f < arg_2, false, arg_1), any(!vec2<bool>(true, arg_1)))), vec4<u32>(~u_input.b, ~6625u, arg_0, _wgslsmith_div_u32(66904u, u_input.b >> (_wgslsmith_clamp_u32(4294967295u, 34420u, u_input.b) % 32u))), false | (any(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), vec2<bool>(false, arg_1))) || any(select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, true)))));
    let var_1 = Struct_3(firstTrailingBit(~_wgslsmith_add_u32(0u, ~37551u)), vec4<bool>(arg_1, any(!(!vec4<bool>(true, true, arg_1, true))), all(vec3<bool>(true, any(vec2<bool>(true, true)), 34941u < var_0.x)), false & arg_1), Struct_2(Struct_1(arg_2, u_input.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, arg_2)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2, arg_2)))), select(!vec4<bool>(true, arg_1, arg_1, true), select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(true, false, arg_1, arg_1), arg_1), all(vec3<bool>(arg_1, arg_1, arg_1))), arg_1), vec2<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(805f - -2429f) * arg_2), arg_1));
    let var_2 = var_1;
    return _wgslsmith_f_op_f32(trunc(var_2.c.a.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f - _wgslsmith_f_op_f32(138f - 1231f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-444f))), 1027f))), u_input.c >> ((~vec3<u32>(u_input.b, 0u, 4294967295u) & firstLeadingBit(vec3<u32>(1u, u_input.b, u_input.b))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, -1069f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -1042f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 583f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-262f, 235f))) - vec2<f32>(_wgslsmith_f_op_f32(func_3(21167u, false, -222f)), _wgslsmith_f_op_f32(min(100f, -2787f))))), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.x, false, false, true), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(arg_0.x, true, false, arg_0.x)), vec4<bool>(arg_0.x, false, true, true), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), !select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), false)), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(floor(-3309f));
    var var_2 = ~var_0.b.xy;
    var var_3 = Struct_1(270f, u_input.c | select(~(-u_input.c), var_0.b >> (firstTrailingBit(vec3<u32>(90508u, 51664u, u_input.b)) % vec3<u32>(32u)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c)), vec4<bool>(any(arg_0), any(select(select(var_0.d, var_0.d, true), var_0.d, var_0.d)), _wgslsmith_dot_vec2_i32(~var_0.b.yz, u_input.c.zy) != var_0.b.x, all(vec2<bool>(var_0.e, true))), var_2.x <= 45743i);
    var_3 = Struct_1(var_0.a, select(max(vec3<i32>(var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -28226i, -40776i, u_input.d), vec4<i32>(-2147483647i, 3723i, var_2.x, var_2.x)), 12763i), -vec3<i32>(var_0.b.x, 30884i, var_3.b.x) ^ vec3<i32>(0i, -18217i, -14096i)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(var_0.b.x, -18481i, var_2.x)), firstTrailingBit(20651i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(59281u, 1u, u_input.b), vec3<u32>(0u, 4294967295u, u_input.b)) % 32u), select(u_input.e.x, -var_3.b.x, var_2.x <= 71953i)), all(select(var_3.d, var_0.d, var_0.d)) == false), var_0.c, select(!select(var_3.d, var_3.d, true), !select(vec4<bool>(arg_0.x, true, false, var_0.e), !var_3.d, u_input.b <= arg_1), !vec4<bool>(!var_3.e, !var_3.e, var_0.d.x | arg_0.x, all(var_3.d.wyy))), true);
    return Struct_4(Struct_2(Struct_1(var_0.c.x, var_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.c.x, -690f)))), !vec4<bool>(true, arg_0.x, var_0.e, false), ~22979i > firstLeadingBit(var_0.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.c.x))), 1347f, var_3.e), Struct_3(u_input.b, !select(vec4<bool>(var_3.e, var_3.d.x, var_3.e, arg_0.x), var_3.d, false), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.c.x), vec3<i32>(var_2.x, var_2.x, 7161i), _wgslsmith_f_op_vec2_f32(floor(var_0.c)), vec4<bool>(var_3.e, var_0.d.x, false, true), var_3.e && var_3.e), vec2<f32>(-1811f, var_0.c.x), var_3.c.x, true | var_0.d.x)), -1i, Struct_2(Struct_1(-1210f, firstLeadingBit(countOneBits(var_0.b)), var_3.c, vec4<bool>(var_3.e, var_3.e, arg_0.x, true), all(!vec4<bool>(var_3.e, var_0.d.x, true, true))), var_0.c, _wgslsmith_f_op_f32(floor(-1199f)), !(all(var_0.d.yxz) | arg_0.x)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~u_input.b, abs(31809u));
    var var_1 = 0u;
    var var_2 = !(!select(false, true, true)) && true;
    var_2 = !(true != any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    var var_3 = func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), false), ~u_input.b);
    return func_2(!vec2<bool>(true, var_3.d.d), ~u_input.b).a.a;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = func_2(!arg_0.d.zy, func_2(!(!select(arg_0.d.xy, vec2<bool>(false, false), vec2<bool>(true, arg_0.e))), ~0u).b.a).a;
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-1484f, var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_0.a.a, arg_0.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a)))))), var_0.a.c.x, arg_0.a);
    let var_2 = -reverseBits(abs(u_input.c.xx));
    var var_3 = _wgslsmith_mod_vec4_u32(min(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 0u, 8421u), vec4<u32>(52299u, 1u, 42598u, 12978u), var_0.a.d), vec4<u32>(1u, 1u, 54619u, u_input.b)), ~vec4<u32>(u_input.b, u_input.b, 4294967295u, 65314u)), vec4<u32>(29437u, firstLeadingBit(firstTrailingBit(25882u)), u_input.b, 1u)) | (min(vec4<u32>(u_input.b, 1u, u_input.b, ~u_input.b), vec4<u32>(~u_input.b, ~11081u, func_2(var_0.a.d.xw, 0u).b.a, reverseBits(11450u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, 3622u >> (0u % 32u), ~7635u, _wgslsmith_mult_u32(0u, 0u)), ~(vec4<u32>(1355u, 0u, u_input.b, u_input.b) >> (vec4<u32>(1u, 0u, 7837u, 74102u) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, var_0.c)), -min(vec3<i32>(0i ^ arg_0.b.x, 9858i, max(arg_0.b.x, 11972i)), firstLeadingBit(vec3<i32>(arg_0.b.x, var_2.x, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.wy))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-561f, arg_0.c.x), vec2<f32>(var_0.c, var_0.b.x))), vec2<f32>(183f, var_1.x), false)))), select(func_2(!func_1().d.xx, 47453u ^ u_input.b).d.a.d, !func_1().d, var_0.d), !(any(func_1().d) | arg_0.e));
    return var_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.b) ^ (vec3<u32>(u_input.b, 103794u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, 1u))));
    let var_1 = Struct_1(1f, func_4(func_1()), vec2<f32>(2281f, 1000f), !select(!func_1().d, func_1().d, (109132u != var_0.x) || true), true);
    var var_2 = Struct_3(12480u, !select(vec4<bool>(var_1.d.x, true, !var_1.e, false), !var_1.d, !func_1().d), Struct_2(var_1, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 360f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1124f, -1497f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a)))), any(!vec2<bool>(var_1.d.x, false))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(-var_2.c.c) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(step(var_1.c.x, var_2.c.b.x))))), !(!(!var_2.c.a.e)), all(vec3<bool>(false, select(true, false, func_2(var_1.d.xz, var_0.x).b.c.a.e), true)));
    var var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(4189i, _wgslsmith_mult_i32(~select(22973i, u_input.a << (0u % 32u), true), select(firstLeadingBit(var_1.b.x), var_1.b.x & firstLeadingBit(-761i), all(select(vec4<bool>(false, var_2.b.x, var_2.c.a.e, true), vec4<bool>(true, false, var_2.c.a.e, var_2.b.x), true)))), _wgslsmith_mod_vec3_u32(select(_wgslsmith_add_vec3_u32(select(var_0, var_0, false), vec3<u32>(1u, var_2.a, var_0.x) | var_0), vec3<u32>(var_2.a, 18202u, ~1u), var_2.c.a.d.x), max(vec3<u32>(firstLeadingBit(0u), var_0.x & 64044u, _wgslsmith_mult_u32(4294967295u, var_2.a)), min(countOneBits(var_0), reverseBits(vec3<u32>(42852u, var_2.a, var_2.a))))));
}

