struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: f32;

var<private> global2: array<vec2<u32>, 21>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(481f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) * -1047f))))));
    let var_1 = any(vec3<bool>(any(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, false, true))), true, true));
    var var_2 = !vec4<bool>(all(select(!vec3<bool>(var_1, true, true), vec3<bool>(false, false, false), !vec3<bool>(var_1, var_1, true))), var_1, !any(vec4<bool>(true, false, var_1, true)), !any(!vec4<bool>(var_1, true, var_1, var_1)));
    let var_3 = -1i;
    var var_4 = countOneBits(_wgslsmith_div_vec2_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.c, 21u)]), ~((vec2<u32>(1u, u_input.b) & vec2<u32>(15168u, u_input.c)) << (global2[_wgslsmith_index_u32(abs(0u), 21u)] % vec2<u32>(32u)))));
    return ~(~var_4.x) << (abs(_wgslsmith_mult_u32(min(abs(3439u), ~var_4.x), ~1u)) % 32u);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec4<bool>) -> bool {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), arg_0);
    let var_0 = any(vec3<bool>(firstTrailingBit(0u) == func_3(), arg_2.x && arg_2.x, -2147483647i <= (countOneBits(1i) ^ u_input.a)));
    global1 = arg_0;
    var var_1 = vec3<i32>(u_input.a, -5709i, _wgslsmith_sub_i32(~(reverseBits(22990i) >> (u_input.d.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(56884i, u_input.a, -1i) << (vec3<u32>(20929u, u_input.d.x, arg_1) % vec3<u32>(32u)), vec3<i32>(0i, 19429i, -44600i) >> (u_input.d.zzz % vec3<u32>(32u))) >> (((4294967295u | u_input.b) ^ _wgslsmith_mult_u32(0u, arg_1)) % 32u)));
    let var_2 = !arg_2;
    return !all(!vec3<bool>(true, any(var_2.zw), true));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(u_input.c, 27240u), ~47780u), vec2<u32>(arg_3, ~arg_3), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(min(32352u, u_input.c), _wgslsmith_add_u32(0u, 0u)), 21u)] & arg_0.d.xx), 915f, select(arg_0.c, !(!vec3<bool>(true, arg_1, arg_0.c.x)), select(vec3<bool>(func_2(arg_2.x, 4294967295u, vec4<bool>(true, true, false, true)), arg_1, true && arg_0.c.x), arg_0.c, 1u != arg_0.a.x)), _wgslsmith_sub_vec3_u32(u_input.d.ywz, ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, arg_3, u_input.d.x), arg_0.d)));
    let var_1 = u_input.a;
    global0 = max(max(func_3(), 14412u), u_input.d.x);
    var var_2 = arg_0;
    let var_3 = select(arg_0.c, select(select(arg_0.c, !vec3<bool>(var_0.c.x, true, false), !var_2.c.x || select(arg_0.c.x, var_2.c.x, var_0.c.x)), vec3<bool>(select(true, true, func_2(123f, var_2.a.x, vec4<bool>(arg_1, true, arg_1, var_2.c.x))), var_1 > -u_input.a, var_2.c.x), select(vec3<bool>(true, true, true), vec3<bool>(false && arg_0.c.x, true, any(vec2<bool>(true, true))), !vec3<bool>(true, arg_0.c.x, arg_1))), select(var_0.c, arg_0.c, (_wgslsmith_mult_u32(arg_0.d.x, 1u) == 6594u) && any(select(vec4<bool>(arg_0.c.x, false, var_0.c.x, arg_0.c.x), vec4<bool>(true, arg_1, false, true), arg_0.c.x))));
    return Struct_1(_wgslsmith_mult_vec2_u32(~var_0.a, abs(u_input.d.wx)), _wgslsmith_f_op_f32(1000f - var_2.b), select(vec3<bool>(any(!vec4<bool>(var_0.c.x, var_3.x, var_0.c.x, true)), false, arg_1), arg_0.c, ~var_2.a.x == ~1u), vec3<u32>(u_input.c, ~(~u_input.b), var_0.d.x ^ (abs(arg_0.a.x) | u_input.b)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u) | func_1(Struct_1(u_input.d.yx, var_0, arg_1.c, vec3<u32>(u_input.c, 21981u, 33092u)), 0u > arg_2.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -1261f, arg_1.b)), ~arg_1.a.x).a, ~_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(u_input.d.x, 21u)] | vec2<u32>(87389u, 59437u), min(vec2<u32>(17779u, arg_2.d.x), vec2<u32>(61721u, 22833u))));
    let var_2 = func_1(func_1(Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 21960u), arg_1.d), select(u_input.b, u_input.d.x, arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + arg_0.x)), !(!vec3<bool>(arg_1.c.x, false, true)), arg_2.d), true & !(!arg_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0.xwy)) + _wgslsmith_f_op_vec3_f32(-arg_0.ywy))), 31042u), arg_2.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-148f, 2441f, 1000f) + arg_0.wxy))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), -458f, _wgslsmith_f_op_f32(f32(-1f) * -1016f)), arg_0.yzx))), firstTrailingBit(14248u));
    let var_3 = func_1(Struct_1(vec2<u32>(arg_2.d.x, 30829u), _wgslsmith_f_op_f32(-arg_1.b), !vec3<bool>(!arg_2.c.x, false, true), select(select(vec3<u32>(27666u, 22367u, 10223u), vec3<u32>(u_input.b, arg_2.d.x, arg_1.a.x), vec3<bool>(false, false, arg_1.c.x)), ~arg_2.d, vec3<bool>(arg_1.c.x, arg_2.c.x, arg_1.c.x)) << (reverseBits(~vec3<u32>(var_2.a.x, u_input.c, 4294967295u)) % vec3<u32>(32u))), arg_2.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b * -1109f))), _wgslsmith_f_op_f32(min(-1665f, var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, 1685f, false)))) - _wgslsmith_f_op_vec3_f32(-arg_0.yzz)), u_input.d.x);
    let var_4 = ~select(vec2<i32>(26055i >> (0u % 32u), 1i), firstTrailingBit(vec2<i32>(26517i, ~u_input.a)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_2.b, arg_2.b), _wgslsmith_f_op_f32(var_3.b - var_0))) < func_1(func_1(Struct_1(var_3.d.yx, 182f, var_3.c, u_input.d.ywy), false, arg_0.yxw, u_input.b), true, vec3<f32>(-656f, 2045f, -1000f), firstLeadingBit(4294967295u)).b);
    return ~arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((vec2<u32>(_wgslsmith_clamp_u32(1u, 28907u, 27713u), u_input.c) << (countOneBits(~u_input.d.yy) % vec2<u32>(32u))) << (u_input.d.zz % vec2<u32>(32u)), -1686f, !select(vec3<bool>(0i <= u_input.a, true, true), vec3<bool>(all(vec3<bool>(true, false, true)), true, false), true), ~vec3<u32>(1u, ~0u, ~16682u) ^ vec3<u32>(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-597f, 337f, -227f, -196f) * vec4<f32>(107f, -1432f, -1242f, 658f)), Struct_1(u_input.d.xw, -1571f, vec3<bool>(false, true, false), vec3<u32>(u_input.b, u_input.b, 4294967295u)), func_1(Struct_1(u_input.d.xy, 439f, vec3<bool>(false, false, false), vec3<u32>(u_input.c, 1u, u_input.c)), true, vec3<f32>(883f, -1549f, 1354f), 4294967295u)), 74678u, ~u_input.c & 1u));
    var var_1 = func_1(Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 1u), 0u), u_input.c), _wgslsmith_f_op_f32(-var_0.b), select(select(vec3<bool>(var_0.c.x, var_0.c.x, false), var_0.c, var_0.c.x), vec3<bool>(true, true || var_0.c.x, var_0.c.x), !any(vec4<bool>(var_0.c.x, var_0.c.x, false, true))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.yxy, u_input.d.wxy), _wgslsmith_clamp_vec3_u32(vec3<u32>(3145u, 27418u, 1u), vec3<u32>(var_0.a.x, 1u, 15425u), var_0.d), ~var_0.d)), all(select(select(!vec4<bool>(false, true, true, var_0.c.x), vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, false, false), vec4<bool>(false, var_0.c.x, true, var_0.c.x), true), var_0.c.x && false), !select(vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, true, true), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, 245f, var_0.b)), vec3<f32>(-1000f, 821f, 719f), all(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1144f, var_0.b, var_0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1320f, var_0.b, var_0.b))))), abs(56478u));
    let var_2 = ~select(~abs(~vec2<i32>(-1i, u_input.a)), -vec2<i32>(-37674i, 0i), func_1(Struct_1(func_1(var_0, var_0.c.x, vec3<f32>(var_0.b, 382f, 1000f), 72375u).d.zy, -1915f, func_1(var_0, var_0.c.x, vec3<f32>(var_0.b, 291f, var_0.b), 4294967295u).c, ~var_0.d), var_0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(725f, var_0.b, var_0.b))), _wgslsmith_mod_u32(~var_0.a.x, 32884u)).c.xy);
    let var_3 = reverseBits(max(countOneBits(vec4<i32>(var_2.x ^ u_input.a, firstLeadingBit(var_2.x), u_input.a, 1i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(var_2.x, -44324i, -1i, var_2.x), select(vec4<i32>(u_input.a, var_2.x, u_input.a, 2147483647i), vec4<i32>(var_2.x, var_2.x, 13225i, -1i), true))));
    let var_4 = func_1(Struct_1(firstLeadingBit(firstLeadingBit(vec2<u32>(11427u, var_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)), var_1.c, ~var_0.d), all(!var_1.c.xx), vec3<f32>(-1566f, var_1.b, var_1.b), u_input.c);
    var var_5 = var_0;
    var_1 = var_4;
    global0 = abs(max(func_3(), ~32109u));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(-var_3, vec4<i32>(var_3.x, -30616i, _wgslsmith_mod_i32(-1i, -2147483647i), ~(-1i))), 69025u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, 274f, -226f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.b, -1608f, -211f))))))));
}

