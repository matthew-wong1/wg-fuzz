struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: vec3<f32>;

var<private> global2: Struct_4 = Struct_4(Struct_1(vec2<bool>(true, true), false), Struct_1(vec2<bool>(true, false), true), Struct_2(4294967295u, 1i, vec4<i32>(45848i, -6903i, -1i, 12264i), Struct_1(vec2<bool>(false, true), true), vec3<bool>(false, true, false)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<u32>) -> bool {
    let var_0 = global2.a.a.x;
    global2 = Struct_4(Struct_1(global2.b.a, global2.b.b), Struct_1(global0.yy, !global0.x), global2.c);
    var var_1 = Struct_5(max(~select(global2.c.c.wyx, u_input.a.yzy, vec3<bool>(true, false, false)) ^ vec3<i32>(-1i, -31304i, global2.c.c.x), u_input.a.zzw), global2.b, global2.c);
    var var_2 = all(vec4<bool>(~(~1i) < -_wgslsmith_div_i32(u_input.a.x, -2147483647i), select(!any(vec4<bool>(global2.a.b, false, true, false)), !global0.x, any(!vec4<bool>(true, global0.x, true, true))), !(!(!var_1.c.e.x)), global0.x));
    var var_3 = Struct_4(var_1.b, var_1.b, var_1.c);
    return global0.x && !global0.x;
}

fn func_2() -> u32 {
    global2 = Struct_4(global2.b, Struct_1(!select(global2.c.e.xz, global2.b.a, func_3(vec4<u32>(0u, global2.c.a, 16610u, 70831u), vec3<u32>(16803u, global2.c.a, global2.c.a))), all(vec3<bool>(global2.c.a <= global2.c.a, global2.b.a.x, true))), Struct_2(max(~global2.c.a, global2.c.a), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 60999i, u_input.a.x) | vec3<i32>(-1i, u_input.a.x, global2.c.b), global2.c.c.yyz >> (vec3<u32>(global2.c.a, 11476u, global2.c.a) % vec3<u32>(32u))) << (~firstTrailingBit(global2.c.a) % 32u), vec4<i32>(2204i, ~global2.c.c.x, global2.c.b, _wgslsmith_add_i32(63214i, 1i)), global2.a, select(select(!global2.c.e, global0.zyz, global2.c.e.x & global0.x), select(select(vec3<bool>(false, false, false), vec3<bool>(global0.x, global2.a.b, true), global2.c.e), !global0.wxz, vec3<bool>(global0.x, global0.x, global2.c.e.x)), vec3<bool>(!global0.x, all(vec2<bool>(true, global0.x)), !global2.a.b))));
    let var_0 = -(~(_wgslsmith_sub_vec4_i32(-u_input.a, vec4<i32>(u_input.a.x, global2.c.c.x, 11340i, global2.c.b)) >> (select(vec4<u32>(global2.c.a, 1u, global2.c.a, global2.c.a), vec4<u32>(global2.c.a, global2.c.a, global2.c.a, 353u), global0.x) % vec4<u32>(32u))));
    let var_1 = ~countOneBits(countOneBits(vec2<u32>(~global2.c.a, _wgslsmith_mod_u32(1u, 1u))));
    global0 = select(vec4<bool>(global0.x, !(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(-global1.x)), false, global0.x), select(vec4<bool>(false, global2.c.a <= 3326u, global2.b.a.x, true), select(!(!vec4<bool>(global0.x, global0.x, global2.b.b, false)), select(!vec4<bool>(global2.b.b, false, false, false), vec4<bool>(true, true, global0.x, global0.x), any(vec4<bool>(false, false, global2.a.b, global0.x))), global0.x), select(vec4<bool>(any(vec2<bool>(true, true)), !global2.c.d.a.x, global0.x, all(vec2<bool>(true, global0.x))), vec4<bool>(true, true, true, false), all(select(vec2<bool>(global2.b.a.x, global2.a.b), vec2<bool>(true, global0.x), vec2<bool>(global2.a.a.x, true))))), vec4<bool>(any(select(select(global2.c.e, global2.c.e, global0.x), vec3<bool>(true, true, true), global2.c.a >= 443u)), true, true, global0.x));
    var var_2 = Struct_5(~_wgslsmith_div_vec3_i32(u_input.a.zyw & vec3<i32>(-1i, 2147483647i, -52082i), vec3<i32>(0i, global2.c.c.x << (var_1.x % 32u), u_input.a.x)), global2.b, Struct_2(firstLeadingBit(abs(global2.c.a)) | ~(var_1.x >> (35319u % 32u)), ~(-1i), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, global2.c.b, 0i, u_input.a.x), u_input.a), select(u_input.a, vec4<i32>(var_0.x, global2.c.b, u_input.a.x, var_0.x), vec4<bool>(false, false, false, false)))), global2.a, vec3<bool>(true, global2.a.a.x, all(vec4<bool>(false, global2.c.e.x, false, global0.x)) || (u_input.a.x > -2147483647i))));
    return ~(~0u);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 15058u), ~vec2<u32>(global2.c.a, global2.c.a)), vec2<u32>(global2.c.a, func_2())), vec2<u32>(~0u, global2.c.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(104880u, 1u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, global2.c.a))));
    let var_1 = ~global2.c.a;
    return Struct_3(~(~_wgslsmith_add_vec3_u32(~vec3<u32>(var_1, 1u, var_1), vec3<u32>(1u, global2.c.a, global2.c.a))), vec2<f32>(-1053f, _wgslsmith_f_op_f32(global1.x + global1.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = u_input.a.xz;
    let var_1 = Struct_4(global2.a, Struct_1(!vec2<bool>(global2.b.b, true), global1.x <= _wgslsmith_f_op_f32(step(-695f, _wgslsmith_f_op_f32(floor(arg_1.b.x))))), global2.c);
    var var_2 = arg_1.a;
    var var_3 = arg_1.b.x;
    var var_4 = !select(!select(vec4<bool>(global2.b.a.x, global2.b.b, global2.c.e.x, false), !vec4<bool>(global2.c.d.a.x, global2.b.a.x, true, global0.x), select(vec4<bool>(false, false, var_1.a.a.x, true), vec4<bool>(false, var_1.c.e.x, global2.a.b, var_1.b.a.x), vec4<bool>(global0.x, false, false, false))), !vec4<bool>(true, true, 192f <= global1.x, true), global2.a.a.x);
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> u32 {
    global2 = Struct_4(global2.a, Struct_1(!(!(!vec2<bool>(true, global2.a.b))), select(global0.x, !any(vec2<bool>(global2.a.a.x, global2.a.a.x)), func_2() < ~global2.c.a)), Struct_2(~(~(arg_0.a.x >> (4294967295u % 32u))), -101494i, global2.c.c, global2.a, select(global2.c.e, !(!global2.c.e), true)));
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(203f)), arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, -1000f), vec4<f32>(arg_0.b.x, global1.x, global1.x, global1.x), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -317f, 1761f, -2837f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1266f, arg_0.b.x, var_0.x, global1.x) + vec4<f32>(arg_0.b.x, arg_0.b.x, 386f, global1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-110f, 865f, var_0.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_0.b.x, -687f)))))), vec4<f32>(func_1((global2.c.c << (vec4<u32>(4294967295u, 20112u, 4294967295u, 4294967295u) % vec4<u32>(32u))) | u_input.a).b.x, -1215f, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(sign(137f))), -304f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 860f, _wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(f32(-1f) * -364f)), -714f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(638f, 395f, -108f, global1.x)))))));
    global0 = select(vec4<bool>(all(!(!global0.xxw)), true, func_3(~select(vec4<u32>(arg_0.a.x, 40726u, global2.c.a, arg_0.a.x), vec4<u32>(arg_0.a.x, 1u, arg_0.a.x, arg_0.a.x), global0.x), ~abs(arg_0.a)), !(4294967295u > countOneBits(arg_0.a.x))), !vec4<bool>(true, !global0.x, !all(vec2<bool>(global2.a.a.x, false)), (global0.x || global0.x) | false), select(!vec4<bool>(global0.x, false, any(global0.wwz), any(vec3<bool>(global0.x, global0.x, global0.x))), select(select(!vec4<bool>(true, global0.x, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(global2.c.e.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global2.b.b)), select(vec4<bool>(global2.a.a.x, global0.x, false, false), vec4<bool>(true, global2.c.d.a.x, false, true), global2.a.a.x)), select(select(vec4<bool>(true, true, true, global2.a.b), vec4<bool>(global0.x, false, global0.x, true), global0.x), select(vec4<bool>(global2.a.a.x, true, global0.x, false), vec4<bool>(global2.a.a.x, global0.x, global0.x, false), global2.c.d.a.x), !vec4<bool>(false, true, true, global0.x)), any(select(global0.xz, global0.wx, global0.xy))), false));
    return _wgslsmith_sub_u32(148034u, ~global2.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_5(func_4(global2.c.b, func_1(vec4<i32>(1i, global2.c.b, -25687i, 0i)))) & _wgslsmith_mod_u32(global2.c.a, global2.c.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52764u, global2.c.a, global2.c.a), select(~reverseBits(vec4<u32>(4294967295u, 22670u, 25541u, 0u)), vec4<u32>(global2.c.a, 0u, ~global2.c.a, 6502u), true)), _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(firstLeadingBit(vec4<u32>(global2.c.a, 4294967295u, 0u, 54066u)))), vec4<u32>(_wgslsmith_sub_u32(countOneBits(global2.c.a), func_5(Struct_3(vec3<u32>(global2.c.a, global2.c.a, 0u), vec2<f32>(1297f, 185f)))), global2.c.a | _wgslsmith_mod_u32(global2.c.a, 4294967295u), 39634u, ~1u)), 59910u);
    global0 = vec4<bool>(true, global0.x && false, any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, global2.c.e.x, global2.c.e.x, false), !vec4<bool>(global0.x, global2.b.b, global2.b.a.x, global0.x)), vec4<bool>(any(global2.c.d.a), global0.x | false, global0.x, func_3(vec4<u32>(1u, 69273u, global2.c.a, 6810u), vec3<u32>(var_0.x, global2.c.a, var_0.x))), select(select(vec4<bool>(true, global2.a.a.x, true, false), vec4<bool>(global0.x, true, true, global0.x), vec4<bool>(global0.x, false, global0.x, false)), vec4<bool>(global0.x, true, global0.x, false), select(vec4<bool>(global0.x, true, true, false), vec4<bool>(false, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, global0.x))))), true);
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(abs(global1.x))), -1000f, _wgslsmith_f_op_f32(-global1.x));
    global0 = select(select(!select(vec4<bool>(global0.x, global0.x, global2.c.e.x, global0.x), !vec4<bool>(global0.x, global2.b.b, true, global2.a.a.x), false), vec4<bool>(any(vec4<bool>(global2.a.a.x, true, false, global2.b.b)) | (true & global2.c.d.a.x), true, global0.x, global0.x), select(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(true, global2.b.b, global2.c.d.b, global2.b.b), vec4<bool>(global2.a.a.x, true, true, global2.c.e.x)), vec4<bool>(true && global2.c.e.x, global2.b.b, global2.c.e.x, any(vec3<bool>(false, true, true))), all(vec2<bool>(global0.x, false)))), vec4<bool>(all(global2.c.e.zz), global2.a.a.x | !(true | global0.x), true, global2.a.a.x), false);
    let var_1 = vec4<u32>(18380u, ~global2.c.a, var_0.x, global2.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1137f, _wgslsmith_f_op_f32(global1.x + -484f), 102f))))), firstTrailingBit(_wgslsmith_mult_i32(~2821i, ~max(0i, global2.c.b))), vec2<u32>(var_1.x, func_2()));
}

