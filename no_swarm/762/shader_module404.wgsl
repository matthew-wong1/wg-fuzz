struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 15>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec3<i32> {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32((_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -84374i, arg_0.x), vec3<i32>(-1i, 21892i, arg_0.x)) | arg_0.xzy) >> ((u_input.a.xwx >> (vec3<u32>(41679u, 0u, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0.xxy));
    let var_1 = vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x);
    let var_2 = ~(-_wgslsmith_clamp_vec2_i32(select(~var_1.zy, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, var_1.x), var_1.wz), select(true, false, true)), vec2<i32>(~(-22644i), 2147483647i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.zz)));
    var var_3 = Struct_4(Struct_3(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 12274u, u_input.a.x), ~(~u_input.a.wwz)), arg_0.xx, Struct_2(var_1.x, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(220f, -2513f, 342f))), Struct_1(true, vec2<i32>(2147483647i, 2147483647i), ~vec3<i32>(arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_f32(max(142f, 893f)), -545f), u_input.a.x ^ 1u, ~max(vec3<i32>(arg_0.x, var_2.x, 2147483647i), var_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(2168f - -235f), _wgslsmith_f_op_f32(step(-2319f, 1000f))))), _wgslsmith_add_i32(var_1.x, ~var_1.x & ~_wgslsmith_clamp_i32(var_1.x, var_2.x, -14848i)), -vec2<i32>(~var_2.x, 2147483647i));
    let var_4 = var_3.a.c;
    return ~_wgslsmith_sub_vec3_i32(var_4.c.c, var_4.c.c);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(~(~_wgslsmith_div_vec3_u32(u_input.a.zzz, vec3<u32>(1u, u_input.a.x, 6117u))), vec2<i32>(1i, 1i) << (vec2<u32>(17159u << (u_input.a.x % 32u), reverseBits(u_input.a.x)) % vec2<u32>(32u)), Struct_2(_wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, -1i), -1i), vec3<f32>(_wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(max(-915f, arg_3)), -1186f), Struct_1(!arg_0.x, ~vec2<i32>(8343i, 2147483647i), vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(-389f + arg_3), 708f), 84326u, func_3(vec4<i32>(-49944i, 17021i, -34501i, 0i))), arg_3), i32(-1i) * -_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 2147483647i, 0i), vec4<i32>(-56252i, -1i, 1i, -27981i))), vec2<i32>(~max(reverseBits(-2147483647i), ~(-2147483647i)), _wgslsmith_mod_i32(max(_wgslsmith_mod_i32(2147483647i, 1i), abs(2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, -1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, 1i), vec4<i32>(2147483647i, 2250i, 0i, 1244i), vec4<i32>(-1i, -22787i, 1i, 0i))))));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.d - _wgslsmith_f_op_f32(var_0.a.c.c.d * 289f))))) + arg_3);
    var var_3 = var_0;
    let var_4 = all(select(vec4<bool>(true, true, var_1.x, var_3.a.c.c.a), select(vec4<bool>(arg_1.x, false, false, var_1.x), vec4<bool>(true, var_0.a.c.c.a, false, true), !vec4<bool>(var_1.x, arg_2.x, arg_1.x, true)), select(vec4<bool>(true, arg_2.x, true, true), select(vec4<bool>(arg_0.x, arg_2.x, var_0.a.c.c.a, arg_2.x), vec4<bool>(true, arg_0.x, true, false), vec4<bool>(var_0.a.c.c.a, arg_0.x, true, var_3.a.c.c.a)), false != var_1.x))) | select(true, var_0.a.c.c.a, !(!select(true, true, arg_1.x)));
    return Struct_3(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a >> (u_input.a % vec4<u32>(32u)), u_input.a), 8271u, 73502u), _wgslsmith_mod_vec2_i32(var_0.c, var_0.a.c.c.b), var_3.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3))), var_3.a.c.c.d, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.d * var_3.a.d), _wgslsmith_f_op_f32(-1000f - 1213f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_5, 15>();
    let var_0 = Struct_4(arg_0, func_2(select(!select(vec3<bool>(arg_0.c.c.a, arg_2.c.a, arg_2.c.a), vec3<bool>(arg_0.c.c.a, arg_2.c.a, arg_0.c.c.a), vec3<bool>(false, false, arg_0.c.c.a)), select(vec3<bool>(true, true, true), vec3<bool>(arg_2.c.a, false, true), vec3<bool>(arg_0.c.c.a, false, arg_1.c.c.a)), vec3<bool>(any(vec2<bool>(arg_0.c.c.a, arg_1.c.c.a)), all(vec3<bool>(arg_2.c.a, false, arg_2.c.a)), arg_2.c.a)), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, arg_0.c.c.a, false), vec3<bool>(false, false, arg_1.c.c.a))), !vec2<bool>(true, func_2(vec3<bool>(true, false, true), vec3<bool>(arg_1.c.c.a, false, true), vec2<bool>(arg_1.c.c.a, false), -1000f).c.c.a), _wgslsmith_f_op_f32(1470f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_div_f32(-446f, 165f))))).c.c.b.x, vec2<i32>(abs(countOneBits(~(-2147483647i))), arg_1.c.e.x));
    var var_1 = func_2(vec3<bool>(!any(select(vec2<bool>(arg_0.c.c.a, arg_2.c.a), vec2<bool>(true, arg_0.c.c.a), false)), true, _wgslsmith_f_op_f32(arg_1.c.c.e + _wgslsmith_f_op_f32(1238f * arg_1.d)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(select(481f, arg_0.c.b.x, arg_0.c.c.a))))), select(select(!(!vec3<bool>(true, arg_2.c.a, var_0.a.c.c.a)), !select(vec3<bool>(arg_2.c.a, false, true), vec3<bool>(var_0.a.c.c.a, true, arg_1.c.c.a), vec3<bool>(var_0.a.c.c.a, var_0.a.c.c.a, false)), vec3<bool>(arg_1.c.c.a, true, all(vec4<bool>(true, var_0.a.c.c.a, var_0.a.c.c.a, true)))), select(!select(vec3<bool>(arg_2.c.a, false, var_0.a.c.c.a), vec3<bool>(false, true, false), arg_0.c.c.a), !select(vec3<bool>(arg_2.c.a, false, arg_0.c.c.a), vec3<bool>(true, true, arg_2.c.a), vec3<bool>(true, true, var_0.a.c.c.a)), true), vec3<bool>(true && (false == arg_0.c.c.a), all(!vec4<bool>(false, arg_0.c.c.a, arg_1.c.c.a, arg_1.c.c.a)), arg_2.c.a)), !vec2<bool>(arg_0.c.c.a, any(!vec2<bool>(false, var_0.a.c.c.a))), arg_0.d);
    let var_2 = _wgslsmith_f_op_f32(round(-1100f));
    global0 = array<Struct_5, 15>();
    return 80606u;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = vec4<u32>(u_input.a.x, u_input.a.x | 13220u, u_input.a.x, ~u_input.a.x);
    var_0 = vec4<u32>(arg_0.d << (56125u % 32u), ~func_4(func_2(vec3<bool>(arg_0.c.a, arg_0.c.a, true), vec3<bool>(arg_0.c.a, false, arg_0.c.a), vec2<bool>(arg_0.c.a, true), _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)), Struct_3(firstTrailingBit(vec3<u32>(1u, arg_0.d, var_0.x)), arg_0.e.xz | vec2<i32>(arg_0.e.x, 0i), Struct_2(-1i, vec3<f32>(arg_1, arg_0.c.d, arg_0.b.x), Struct_1(false, vec2<i32>(arg_0.a, 2147483647i), vec3<i32>(2147483647i, arg_0.e.x, arg_0.e.x), -636f, arg_1), 0u, vec3<i32>(57421i, arg_0.e.x, arg_0.c.b.x)), -291f), Struct_2(i32(-1i) * -2147483647i, arg_0.b, Struct_1(false, vec2<i32>(-17762i, -13869i), vec3<i32>(-28202i, 2147483647i, 29058i), -656f, arg_0.b.x), 0u, _wgslsmith_sub_vec3_i32(arg_0.c.c, vec3<i32>(arg_0.e.x, arg_0.a, -1i))), vec3<i32>(arg_0.c.c.x, arg_0.a, -1i)), ~u_input.a.x, 41206u);
    global0 = array<Struct_5, 15>();
    var_0 = ~u_input.a << (~countOneBits(vec4<u32>(_wgslsmith_mult_u32(var_0.x, u_input.a.x), 4294967295u, ~arg_0.d, 64684u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-179f + arg_0.b.x))), arg_1));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0.c.e) * _wgslsmith_f_op_f32(-arg_0.c.d))) - -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-403f, 321f))), 1f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1000f, 115f)))) + 282f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(557f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_2(-2147483647i, vec3<f32>(994f, -1007f, -163f), Struct_1(false, vec2<i32>(1i, -2629i), vec3<i32>(-1i, -1i, 7942i), -346f, 197f), u_input.a.x, vec3<i32>(36164i, 1i, 0i)), 942f)) * _wgslsmith_f_op_f32(-1496f - 842f))))));
    global0 = array<Struct_5, 15>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, 1006f), 979f)));
    let var_3 = vec4<bool>(true, all(vec3<bool>(!(var_2 <= var_0.x), !select(true, false, true), ~0u > _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))), !(~u_input.a.x > u_input.a.x), all(vec4<bool>(select(true, true, all(vec3<bool>(true, true, false))), true, !all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2, -522f)));
    let var_5 = func_2(select(vec3<bool>(false | any(vec3<bool>(true, var_3.x, false)), false, var_3.x), !(!select(vec3<bool>(true, var_3.x, var_3.x), var_3.wxy, var_3.x)), var_3.yyz), !vec3<bool>(true, true, any(!vec3<bool>(var_3.x, true, var_3.x))), select(!select(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x), false), vec2<bool>(false, false), any(var_3.ww)), vec2<bool>(false, !(!var_3.x)), select(select(var_3.yx, !var_3.yx, var_3.wy), !(!var_3.zw), !all(var_3.wyw))), -1666f);
    let var_6 = var_5.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(var_5.a.zy, _wgslsmith_sub_vec2_u32(vec2<u32>(var_5.c.d, var_5.c.d), vec2<u32>(u_input.a.x, u_input.a.x))), var_5.a.xz, select(select(!vec2<bool>(true, var_5.c.c.a), var_3.wz, false), !var_3.wx, select(!var_3.wx, var_3.zy, select(vec2<bool>(true, false), vec2<bool>(var_5.c.c.a, false), var_3.x)))), var_5.c.b.zy, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(var_5.c.d, var_5.a.x, 15998u, 1u)), ~(~vec4<u32>(4294967295u, var_5.c.d, var_5.a.x, var_5.a.x)), _wgslsmith_div_vec4_u32(select(u_input.a, u_input.a, var_3), ~u_input.a)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(49996u, 69463u), var_5.a.x, ~4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.a.xzy, vec3<u32>(0u, u_input.a.x, var_5.c.d)), ~u_input.a.x), ~(~0u), 1u), vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a ^ vec4<u32>(64062u, 0u, 0u, var_5.c.d)), ~25307u, min(var_5.c.d, abs(63398u)), _wgslsmith_dot_vec2_u32(var_5.a.yz, var_5.a.zx) & ~4294967295u)));
}

