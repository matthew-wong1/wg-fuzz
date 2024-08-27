struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
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

var<private> global0: f32;

var<private> global1: u32 = 0u;

var<private> global2: array<vec2<f32>, 18>;

var<private> global3: array<vec3<bool>, 10>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global3 = array<vec3<bool>, 10>();
    let var_0 = Struct_2(Struct_1(select(vec4<bool>(false, -6941i < u_input.c.x, true, 22188i <= u_input.b.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, false)), any(!global3[_wgslsmith_index_u32(u_input.e, 10u)]))), Struct_1(select(vec4<bool>(select(false, false, false), false, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), Struct_1(vec4<bool>(true, true && any(vec4<bool>(true, false, true, true)), true, false)));
    global2 = array<vec2<f32>, 18>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(floor(2321f)), Struct_1(!(!(!vec4<bool>(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x, var_0.a.a.x)))), var_0);
    let var_2 = Struct_1(var_1.b.a);
    return !any(var_2.a.zyx);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> vec2<f32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, 179f), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(49953u, 18u)]), !vec2<bool>(arg_3, true))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> vec2<u32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_0.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_vec2_f32(func_4(u_input.d, vec2<f32>(-418f, arg_0.a), 8605u, false)).x, any(global3[_wgslsmith_index_u32(u_input.e, 10u)]))), false))));
    let var_0 = Struct_1(!arg_0.b.a);
    let var_1 = var_0.a.zw;
    var var_2 = Struct_1(!(!select(vec4<bool>(true, var_1.x, true, var_0.a.x), vec4<bool>(true, false, var_0.a.x, true), arg_3)));
    var var_3 = any(select(select(var_2.a, !select(var_0.a, var_2.a, vec4<bool>(true, arg_0.b.a.x, var_2.a.x, true)), vec4<bool>(true, !arg_3, arg_3, true)), vec4<bool>(var_2.a.x, var_1.x, arg_3, false), all(vec4<bool>(var_1.x, arg_3, select(true, var_1.x, var_0.a.x), false))));
    return countOneBits(~select(select(vec2<u32>(u_input.e, 29201u), countOneBits(vec2<u32>(0u, 0u)), !vec2<bool>(true, var_0.a.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e, 4473u), vec2<u32>(1u, 25788u)) | ~vec2<u32>(u_input.e, u_input.e), arg_0.b.a.x));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = ~countOneBits(vec3<u32>(u_input.e, u_input.e, ~firstTrailingBit(u_input.e)));
    let var_1 = reverseBits(func_5(Struct_4(-634f, Struct_1(!vec4<bool>(arg_2.b.a.x, arg_2.c.a.x, arg_2.c.a.x, false)), Struct_2(arg_2.b, arg_2.b, arg_2.c)), 999f, _wgslsmith_f_op_vec2_f32(func_4(select(firstTrailingBit(u_input.d), ~u_input.c.x, true), arg_0.yx, _wgslsmith_div_u32(~1u, var_0.x), func_3())), arg_2.a.a.x));
    global2 = array<vec2<f32>, 18>();
    var var_2 = firstTrailingBit(-min(-min(u_input.c.x, 1i), -(~0i)));
    var var_3 = arg_0.x;
    return Struct_4(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(select(select(vec4<bool>(false, arg_2.b.a.x, arg_2.a.a.x, arg_2.c.a.x), select(vec4<bool>(arg_2.c.a.x, false, false, true), vec4<bool>(arg_2.b.a.x, arg_2.a.a.x, true, true), vec4<bool>(true, true, true, true)), !arg_2.b.a), select(vec4<bool>(arg_2.b.a.x, true, arg_2.c.a.x, arg_2.b.a.x), select(vec4<bool>(arg_2.a.a.x, true, false, false), vec4<bool>(arg_2.c.a.x, arg_2.b.a.x, arg_2.c.a.x, true), vec4<bool>(arg_2.c.a.x, arg_2.c.a.x, arg_2.b.a.x, true)), !arg_2.a.a), vec4<bool>(true, 1u >= var_0.x, !arg_2.a.a.x, true))), Struct_2(arg_2.a, arg_2.c, arg_2.c));
}

fn func_6(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> Struct_2 {
    global0 = arg_2.a;
    let var_0 = arg_2;
    var var_1 = Struct_1(var_0.c.c.a);
    global0 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, var_0.a, 124f), vec3<f32>(arg_2.a, var_0.a, 326f), vec3<bool>(arg_0.x, false, var_0.b.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-564f, arg_2.a, -1597f) + vec3<f32>(arg_2.a, 826f, -533f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2786f, arg_1)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(u_input.e, 18u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-670f, 1597f) - vec2<f32>(arg_1, arg_2.a)), vec2<bool>(arg_0.x, true))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.a, 1030f))))), var_0.c).b, func_2(vec3<f32>(_wgslsmith_f_op_f32(-746f - -916f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1788f - arg_1) + _wgslsmith_f_op_f32(-1256f - arg_2.a)), -601f), vec2<f32>(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1718f * arg_1), arg_1)), Struct_2(var_0.c.b, arg_2.c.c, var_0.b)).b, arg_2.b);
    return var_0.c;
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_u32(~u_input.e, u_input.e);
    var var_1 = arg_0.c.a.xz;
    var_1 = arg_0.a.a.xy;
    return Struct_3(-6574i, func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, -1000f, 1272f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-808f, -650f, 259f))))), global2[_wgslsmith_index_u32(~(~0u), 18u)], func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-617f, -1122f, 437f))) - vec3<f32>(193f, -1272f, 1387f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, 1000f)), func_2(vec3<f32>(-449f, 414f, 1760f), _wgslsmith_f_op_vec2_f32(sign(global2[_wgslsmith_index_u32(1u, 18u)])), func_2(vec3<f32>(131f, 757f, -1200f), global2[_wgslsmith_index_u32(var_0, 18u)], Struct_2(Struct_1(arg_0.a.a), arg_0.c, arg_0.a)).c).c).c).c.b);
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = func_6(vec3<bool>(true == arg_1.b.a.x, arg_1.b.a.x, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(floor(884f))), Struct_4(_wgslsmith_f_op_f32(738f - -1000f), arg_1.b, Struct_2(func_7(func_2(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec2<f32>(-813f, 618f), Struct_2(Struct_1(arg_1.b.a), Struct_1(arg_1.b.a), arg_1.b)).c).b, func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(537f, 1310f, arg_2.x))), _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(u_input.e, 18u)]), func_6(vec3<bool>(true, arg_1.b.a.x, false), arg_2.x, Struct_4(1295f, Struct_1(arg_1.b.a), Struct_2(Struct_1(arg_1.b.a), Struct_1(arg_1.b.a), Struct_1(vec4<bool>(arg_1.b.a.x, true, true, false)))))).b, Struct_1(!vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, arg_1.b.a.x, false)))));
    let var_1 = func_7(var_0).b.a.wz;
    global3 = array<vec3<bool>, 10>();
    var var_2 = Struct_1(vec4<bool>(arg_1.b.a.x, _wgslsmith_mult_u32(43733u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 39250u))) <= ~arg_0.x, u_input.d >= firstLeadingBit(arg_1.a), var_0.a.a.x));
    var var_3 = vec3<i32>(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-1i, arg_1.a), _wgslsmith_mult_i32(-5746i, -1955i))), -2147483647i, firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c.x, arg_1.a), vec3<i32>(0i, -2147483647i, u_input.b.x)))) << (min(countOneBits(~(vec3<u32>(u_input.e, 22434u, u_input.e) ^ vec3<u32>(4294967295u, u_input.e, u_input.e))), vec3<u32>(u_input.e, arg_0.x, 1u)) % vec3<u32>(32u));
    return Struct_2(func_6(var_0.a.a.wxw, -618f, func_2(_wgslsmith_f_op_vec3_f32(-arg_2.yxx), arg_2.yz, Struct_2(Struct_1(var_0.a.a), func_2(vec3<f32>(431f, arg_2.x, arg_2.x), global2[_wgslsmith_index_u32(u_input.e, 18u)], Struct_2(Struct_1(vec4<bool>(var_1.x, false, true, var_2.a.x)), Struct_1(arg_1.b.a), arg_1.b)).b, arg_1.b))).b, Struct_1(select(func_7(func_6(arg_1.b.a.xzy, -780f, Struct_4(arg_2.x, Struct_1(var_0.b.a), var_0))).b.a, var_2.a, !(!var_0.b.a))), Struct_1(!(!select(vec4<bool>(false, false, true, false), var_2.a, vec4<bool>(true, var_1.x, false, var_0.a.a.x)))));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(719f, _wgslsmith_f_op_f32(-381f * -103f))))), Struct_1(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), true), true)), func_8(firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(47743u, u_input.e), u_input.e)), func_7(func_6(select(vec3<bool>(false, true, true), global3[_wgslsmith_index_u32(u_input.e, 10u)], false), -146f, func_2(vec3<f32>(-1000f, 623f, -1179f), vec2<f32>(617f, 1559f), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(2804f)), _wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_f_op_f32(abs(544f)), _wgslsmith_f_op_f32(sign(-1957f))))));
    global3 = array<vec3<bool>, 10>();
    var var_1 = var_0.c.b;
    global3 = array<vec3<bool>, 10>();
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(3096f, var_0.a, var_0.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, var_0.a, 479f), vec3<f32>(var_0.a, var_0.a, 880f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, -580f, 359f), vec3<f32>(983f, 1169f, -320f), var_0.b.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1401f, -375f, 631f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_0.a, 599f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a, -567f, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -2305f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -922f, 501f))), !(true != var_1.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, 1001f, var_0.a), vec3<f32>(var_0.a, -310f, var_0.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -1038f, -1241f), vec3<f32>(-1089f, -1000f, -221f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, -881f, 307f), vec3<f32>(686f, var_0.a, 1095f), var_1.a.x)))))), vec3<bool>(var_0.b.a.x, var_0.c.b.a.x, true)));
    return func_7(func_6(var_1.a.xwx, _wgslsmith_f_op_f32(-var_0.a), Struct_4(_wgslsmith_f_op_f32(-239f + _wgslsmith_f_op_f32(min(var_2.x, 752f))), Struct_1(!var_0.b.a), func_6(!vec3<bool>(var_0.b.a.x, var_0.b.a.x, var_0.c.a.a.x), -1000f, Struct_4(-1475f, Struct_1(vec4<bool>(var_1.a.x, false, false, false)), var_0.c)))));
}

fn func_9(arg_0: bool, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = 4294967295u;
    var var_1 = countOneBits(_wgslsmith_sub_i32(-1i, ~_wgslsmith_dot_vec2_i32(u_input.c, u_input.b)));
    let var_2 = arg_0;
    let var_3 = ((-1i >> (var_0 % 32u)) | arg_3.x) & arg_3.x;
    let var_4 = ~var_3;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))))) + -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2262f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2419f, -307f)))));
    var_0 = _wgslsmith_f_op_f32(func_9(all(global3[_wgslsmith_index_u32(23857u, 10u)]), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2060f, -944f, -1178f, 1145f) * vec4<f32>(1192f, 1231f, 458f, -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1314f + 1000f), _wgslsmith_f_op_f32(972f * -1000f), func_2(vec3<f32>(535f, 1972f, 1000f), vec2<f32>(331f, -510f), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, true, true)))).a))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<i32>(u_input.c.x, u_input.a, -46642i)), -u_input.d, u_input.b.x, _wgslsmith_mult_i32(4711i, u_input.d))), firstLeadingBit(countOneBits(min(vec4<i32>(33034i, u_input.c.x, u_input.d, u_input.d), vec4<i32>(u_input.c.x, u_input.c.x, -16890i, u_input.d)))))));
    var var_1 = ~vec2<u32>(abs(func_5(func_2(vec3<f32>(1009f, -1694f, 125f), vec2<f32>(1393f, 706f), Struct_2(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)))), 1f, global2[_wgslsmith_index_u32(~1u, 18u)], true).x), 4294967295u >> (u_input.e % 32u));
    var var_2 = vec4<i32>(-1001i, -8959i, 5274i, u_input.b.x);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1311f - _wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_f32(abs(127f)))), Struct_1(select(!func_8(vec2<u32>(u_input.e, 14956u), Struct_3(0i, Struct_1(vec4<bool>(true, true, true, false))), vec4<f32>(-1000f, -1191f, -586f, 398f)).a.a, vec4<bool>(true, true, true, true), func_7(func_8(vec2<u32>(30143u, 0u), Struct_3(u_input.c.x, Struct_1(vec4<bool>(false, false, false, false))), vec4<f32>(-1362f, -1377f, -2850f, -1000f))).b.a.x)), Struct_2(func_6(func_1().b.a.wwz, 1f, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -949f), Struct_1(vec4<bool>(true, false, true, true)), func_8(vec2<u32>(u_input.e, 31172u), Struct_3(0i, Struct_1(vec4<bool>(true, false, true, false))), vec4<f32>(540f, -1532f, 997f, 1250f)))).c, Struct_1(vec4<bool>(true, true, true, true)), func_8(vec2<u32>(u_input.e, _wgslsmith_sub_u32(u_input.e, 0u)), Struct_3(~31472i, Struct_1(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1311f, 747f, 684f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-217f, 362f, -396f, 1000f)))).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.a))));
}

