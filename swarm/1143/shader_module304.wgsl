struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 10>;

var<private> global2: f32;

var<private> global3: Struct_5 = Struct_5(Struct_3(Struct_2(-711f, Struct_1(1i, vec4<i32>(-1i, -44515i, 23029i, 2147483647i), 0i, vec4<f32>(1160f, -1484f, -2080f, 1271f)), false, 859f, Struct_1(-6868i, vec4<i32>(-8905i, 2147483647i, 2147483647i, -19967i), i32(-2147483648), vec4<f32>(-893f, -1000f, 213f, 503f))), Struct_2(-1048f, Struct_1(-1i, vec4<i32>(-1i, -8939i, 2147483647i, -1i), -29322i, vec4<f32>(-1823f, 661f, 837f, 1233f)), true, -1371f, Struct_1(-1i, vec4<i32>(1i, 1120i, 26057i, i32(-2147483648)), 43824i, vec4<f32>(211f, 169f, 561f, 600f))), Struct_1(15141i, vec4<i32>(1845i, -11825i, 1i, -30892i), 2147483647i, vec4<f32>(-763f, -593f, -501f, -200f)), Struct_1(-2737i, vec4<i32>(-4745i, -13037i, 9886i, 14679i), 1i, vec4<f32>(690f, -165f, -843f, -1456f)), 2504f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> u32 {
    var var_0 = vec4<u32>(~0u, 78030u, 0u, ~_wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(abs(36524u), 1u, ~1u)));
    global1 = array<i32, 10>();
    global3 = Struct_5(arg_1.d);
    let var_1 = arg_1.d.b;
    var var_2 = arg_1.d.b;
    return _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_0.x, var_0.x, _wgslsmith_div_u32(var_0.x, var_0.x), ~var_0.x)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.x, var_0.x, ~var_0.x, 4294967295u)), max(vec4<u32>(~var_0.x, _wgslsmith_mult_u32(1u, 4320u), ~4294967295u, 17263u), ~vec4<u32>(var_0.x, 1u, 33718u, 1u)), vec4<u32>(~var_0.x, countOneBits(var_0.x & 4294967295u), _wgslsmith_div_u32(44685u, var_0.x & 1u), ~52225u ^ var_0.x)));
}

fn func_2(arg_0: i32) -> u32 {
    global0 = ~_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(1u, 1u, 1u), 1u, _wgslsmith_mult_u32(~abs(1u), func_3(Struct_3(Struct_2(global3.a.d.d.x, global3.a.a.e, false, -1331f, Struct_1(arg_0, global3.a.c.b, arg_0, global3.a.b.b.d)), Struct_2(-432f, global3.a.b.e, global3.a.b.c, global3.a.b.a, global3.a.c), Struct_1(global1[_wgslsmith_index_u32(0u, 10u)], vec4<i32>(u_input.a, -1i, u_input.a, global1[_wgslsmith_index_u32(0u, 10u)]), -1i, vec4<f32>(global3.a.d.d.x, global3.a.c.d.x, global3.a.b.b.d.x, 1000f)), Struct_1(-9977i, vec4<i32>(2147483647i, global3.a.b.b.a, u_input.a, 3177i), 7104i, global3.a.a.b.d), -156f), Struct_4(global3.a.a.c, global3.a.b.b.d.zz, 0i, global3.a))));
    return select(19733u, firstTrailingBit(countOneBits(reverseBits(0u)) << (1u % 32u)), true);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = array<i32, 10>();
    var var_0 = 70740u;
    global3 = Struct_5(Struct_3(arg_2, Struct_2(_wgslsmith_f_op_f32(sign(-1000f)), arg_1, !(global3.a.b.c && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(741f * arg_1.d.x)), arg_2.b), Struct_1(-12772i, select(~arg_2.e.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-11584i, -20238i, 19007i, arg_1.c), vec4<i32>(arg_1.a, -1i, global1[_wgslsmith_index_u32(arg_0, 10u)], arg_2.b.a)), vec4<bool>(true, true, true, true)), ~(-6871i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a.a.e.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, arg_1.d.x, 812f, -1111f)))), Struct_1(-2147483647i, vec4<i32>(-arg_2.b.b.x, 0i, -2147483647i, 1i), ~arg_2.e.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_2.b.d.x, -632f, arg_1.d.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.d.x)))));
    return 142f;
}

fn func_5(arg_0: f32) -> bool {
    global3 = Struct_5(Struct_3(global3.a.b, global3.a.b, Struct_1(-(~global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_div_vec4_i32(vec4<i32>(-52944i, 2147483647i, u_input.a, -90160i), _wgslsmith_div_vec4_i32(vec4<i32>(29983i, -2147483647i, -18752i, -644i), global3.a.a.b.b)), global3.a.c.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global3.a.a.b.d + global3.a.a.e.d), _wgslsmith_f_op_vec4_f32(-global3.a.b.e.d)))), Struct_1(~u_input.a, _wgslsmith_mult_vec4_i32(global3.a.c.b, global3.a.c.b), -25737i, global3.a.b.e.d), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3.a.d.d.x, -1673f))))));
    var var_0 = all(!(!(!(!vec2<bool>(global3.a.a.c, false)))));
    let var_1 = Struct_1(29968i, firstTrailingBit(vec4<i32>(~(~global1[_wgslsmith_index_u32(48434u, 10u)]), _wgslsmith_dot_vec3_i32(global3.a.d.b.zwx, global3.a.b.e.b.wxx ^ vec3<i32>(u_input.a, 1i, global1[_wgslsmith_index_u32(1u, 10u)])), _wgslsmith_add_i32(global3.a.a.e.c, ~global1[_wgslsmith_index_u32(0u, 10u)]), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(global3.a.c.b, vec4<i32>(1i, -1i, 0i, global1[_wgslsmith_index_u32(4294967295u, 10u)])), -1i, _wgslsmith_clamp_i32(-1i, 47603i, 0i)))), global1[_wgslsmith_index_u32(reverseBits(16279u), 10u)], vec4<f32>(-129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f - arg_0) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1345f, 1343f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(select(149f, -617f, global3.a.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.d.d.x - 1921f) + -537f) * -1397f)));
    var var_2 = Struct_4(!all(select(select(vec4<bool>(true, false, global3.a.b.c, true), vec4<bool>(global3.a.b.c, global3.a.a.c, false, false), vec4<bool>(global3.a.b.c, global3.a.b.c, true, false)), vec4<bool>(false, global3.a.b.c, true, false), select(vec4<bool>(global3.a.a.c, global3.a.a.c, global3.a.a.c, false), vec4<bool>(true, global3.a.b.c, true, global3.a.a.c), vec4<bool>(global3.a.b.c, false, global3.a.a.c, global3.a.a.c)))), _wgslsmith_f_op_vec2_f32(-var_1.d.ww), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(global3.a.d.b.zx, vec2<i32>(var_1.c, 1i) >> (select(vec2<u32>(11190u, 0u), vec2<u32>(1583u, 33106u), vec2<bool>(true, global3.a.a.c)) % vec2<u32>(32u))), var_1.a), global3.a);
    var var_3 = 372f;
    return true;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    global3 = Struct_5(global3.a);
    global1 = array<i32, 10>();
    var var_0 = -408f;
    return vec3<bool>(func_5(_wgslsmith_f_op_f32(func_4(func_2(0i) & 4294967295u, arg_2, global3.a.b))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(global3.a.b.c, true, global3.a.b.c, true), global3.a.a.c)), true);
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_4(global3.a.b.c, global3.a.c.d.zw, 2147483647i, Struct_3(global3.a.b, Struct_2(global3.a.c.d.x, global3.a.c, arg_3.x, global3.a.c.d.x, global3.a.a.b), Struct_1(global1[_wgslsmith_index_u32(~(arg_2.x & 47962u), 10u)], vec4<i32>(global3.a.b.b.a, arg_0, u_input.a, u_input.a), -_wgslsmith_dot_vec4_i32(global3.a.a.e.b, global3.a.b.e.b), global3.a.b.e.d), global3.a.b.e, 726f));
    let var_1 = arg_3;
    global1 = array<i32, 10>();
    let var_2 = select(select(select(!(!vec4<bool>(global3.a.b.c, global3.a.a.c, true, true)), !(!vec4<bool>(false, arg_3.x, false, var_1.x)), !(!vec4<bool>(var_1.x, true, false, true))), select(vec4<bool>(global3.a.b.c, !var_0.a, func_1(vec4<u32>(arg_2.x, 37803u, 4294967295u, arg_2.x), vec3<f32>(var_0.b.x, global3.a.b.a, -1093f), Struct_1(u_input.a, vec4<i32>(48157i, -2147483647i, var_0.c, global3.a.b.e.a), -2147483647i, global3.a.a.e.d)).x, arg_3.x), vec4<bool>(var_1.x || true, false & var_0.d.b.c, any(var_1), func_1(vec4<u32>(23516u, arg_2.x, arg_2.x, 25752u), var_0.d.a.b.d.xyw, Struct_1(u_input.a, global3.a.a.b.b, 2147483647i, vec4<f32>(var_0.b.x, var_0.b.x, 378f, -1170f))).x), select(vec4<bool>(arg_3.x, global3.a.b.c, arg_3.x, global3.a.b.c), select(vec4<bool>(true, false, arg_3.x, true), vec4<bool>(var_1.x, arg_3.x, false, var_1.x), global3.a.b.c), var_1.x)), func_1(vec4<u32>(~4294967295u, ~0u, arg_2.x, 27193u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.a.e.d.xwy)), var_0.d.d).x), vec4<bool>(!global3.a.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(460f))) <= _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.e, var_0.d.a.e.d.x), _wgslsmith_f_op_f32(min(-446f, var_0.b.x))), !global3.a.b.c & (!var_0.a || var_1.x), (all(vec2<bool>(false, false)) || (50726u < arg_2.x)) || true), false);
    global3 = Struct_5(global3.a);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(global3.a.c.d.x)), _wgslsmith_f_op_f32(func_4(45324u, global3.a.d, Struct_2(var_0.b.x, global3.a.b.e, false, var_0.d.c.d.x, var_0.d.c))))))));
}

fn func_7(arg_0: Struct_4) -> Struct_5 {
    global2 = arg_0.b.x;
    global1 = array<i32, 10>();
    let var_0 = Struct_3(global3.a.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.b.d + 297f), -262f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f))), Struct_1(countOneBits(0i & global3.a.a.b.c), -vec4<i32>(global1[_wgslsmith_index_u32(1u, 10u)], u_input.a, global3.a.b.e.a, 34342i), -(~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(-1000f + -1000f), _wgslsmith_f_op_f32(sign(-1510f)), -1025f, _wgslsmith_f_op_f32(-arg_0.b.x))), select(any(vec2<bool>(false, arg_0.a)), arg_0.d.a.c, func_5(arg_0.d.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1131f, 574f), 1617f))), arg_0.d.b.e), arg_0.d.c, arg_0.d.c, arg_0.b.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.a.e.d), global3.a.c.d, !select(vec4<bool>(true, global3.a.b.c, arg_0.a, var_0.b.c), vec4<bool>(var_0.a.c, var_0.b.c, global3.a.b.c, arg_0.a), arg_0.d.a.c)))), _wgslsmith_f_op_vec4_f32(-global3.a.a.e.d)));
    let var_2 = any(vec3<bool>(any(!(!vec3<bool>(true, true, var_0.b.c))), arg_0.a, any(func_1(vec4<u32>(42778u, 28564u, 26888u, 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1427f, -1124f)), Struct_1(arg_0.c, var_0.a.b.b, -17766i, vec4<f32>(841f, -804f, 1394f, -997f))))));
    return Struct_5(Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_1.x), arg_0.d.b.b, arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.e))), Struct_1(1i, global3.a.d.b, -2147483647i, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_1.x, -357f, arg_0.b.x), vec4<f32>(-2002f, var_0.a.e.d.x, global3.a.d.d.x, var_0.e))))), Struct_2(_wgslsmith_f_op_f32(func_4(70441u, Struct_1(0i, vec4<i32>(arg_0.c, global3.a.a.b.c, -2147483647i, 3872i), var_0.a.b.b.x, vec4<f32>(arg_0.b.x, var_1.x, -1067f, -1000f)), global3.a.a)), arg_0.d.a.e, arg_0.a, arg_0.b.x, global3.a.d), Struct_1(_wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(4294967295u, 10u)]) << (1u % 32u), ~abs(vec4<i32>(0i, -3038i, 1i, arg_0.c)), -(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.a.d.d) - vec4<f32>(arg_0.d.b.a, var_1.x, 1000f, var_0.b.b.d.x))), global3.a.c, global3.a.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global3 = func_7(Struct_4(all(!select(vec3<bool>(true, global3.a.a.c, true), vec3<bool>(true, global3.a.a.c, global3.a.a.c), vec3<bool>(false, global3.a.a.c, global3.a.b.c))), _wgslsmith_f_op_vec2_f32(func_6(4864i, min(global3.a.d.c, -18011i), ~(vec2<u32>(46214u, 1u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), !func_1(vec4<u32>(40149u, 1u, 25770u, 845u), global3.a.a.b.d.zxy, global3.a.a.e))), global3.a.b.e.a, global3.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_6(global3.a.d.b.x, i32(-1i) * -2449i, ~vec2<u32>(0u, 1u), select(vec3<bool>(global3.a.a.c, global3.a.a.c, global3.a.b.c), vec3<bool>(true, global3.a.b.c, true), global3.a.b.c))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global3.a.d.d.x, -580f))), _wgslsmith_f_op_vec2_f32(ceil(global3.a.c.d.wz)))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global3.a.c.d.zz))), all(vec3<bool>(global3.a.b.c, 1i <= global1[_wgslsmith_index_u32(2986u, 10u)], true)) & true));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(-758f, 1232f))) * _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-270f))))), _wgslsmith_f_op_f32(global3.a.e + func_7(Struct_4(!global3.a.b.c, global3.a.d.d.ww, -global1[_wgslsmith_index_u32(55247u, 10u)], func_7(Struct_4(false, vec2<f32>(global3.a.a.e.d.x, 209f), global3.a.b.e.a, global3.a)).a)).a.e));
    let var_2 = u_input.a;
    global2 = -866f;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2266f, -846f))), _wgslsmith_div_f32(137f, _wgslsmith_f_op_f32(func_4(~reverseBits(4294967295u), func_7(Struct_4(global3.a.b.c, global3.a.c.d.xx, u_input.a, global3.a)).a.d, Struct_2(var_1.x, func_7(Struct_4(true, vec2<f32>(-131f, 1000f), global1[_wgslsmith_index_u32(1u, 10u)], global3.a)).a.a.b, true, _wgslsmith_f_op_f32(min(global3.a.d.d.x, 849f)), Struct_1(global3.a.c.b.x, vec4<i32>(u_input.a, -2147483647i, -1i, global1[_wgslsmith_index_u32(84679u, 10u)]), 6782i, vec4<f32>(-1516f, -609f, global3.a.c.d.x, global3.a.b.a)))))), _wgslsmith_f_op_f32(func_7(Struct_4(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, var_1.x) - global3.a.c.d.yy), ~var_2, Struct_3(Struct_2(-1035f, global3.a.c, global3.a.a.c, global3.a.d.d.x, Struct_1(var_2, vec4<i32>(0i, 0i, var_2, global3.a.d.b.x), 27952i, global3.a.a.b.d)), global3.a.b, Struct_1(19019i, global3.a.b.b.b, var_2, global3.a.c.d), global3.a.d, global3.a.b.e.d.x))).a.d.d.x - 565f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.a, 2147483647i) << (vec4<u32>(0u, 4294967295u, 19041u, 106122u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -21999i, global1[_wgslsmith_index_u32(1u, 10u)], u_input.a) & global3.a.a.b.b))), max(vec4<u32>(7813u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(127161u, 830u, 4294967295u), 0u), ~(~14957u), 1u), min(~vec4<u32>(18384u, 4294967295u, 36782u, 0u), ~firstLeadingBit(vec4<u32>(1u, 4294967295u, 10425u, 19473u)))));
}

