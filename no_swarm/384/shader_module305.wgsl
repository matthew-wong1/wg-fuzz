struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<f32>) -> bool {
    var var_0 = select(~(~vec3<u32>(4294967295u, 1u, arg_1.x)) << (abs(arg_1.wxy) % vec3<u32>(32u)), ~arg_1.yzz, !(!(!select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false), true))));
    let var_1 = arg_2.x != _wgslsmith_f_op_f32(round(arg_2.x));
    var_0 = ~arg_1.yww;
    var_0 = arg_1.ywx;
    let var_2 = Struct_2(vec4<bool>(true, true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(var_1, var_1, arg_0), vec3<bool>(arg_0, true, var_1)), !vec3<bool>(false, false, var_1))), true), !(arg_2.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * arg_2.x))), vec3<i32>(u_input.b.x, ~(0i << ((arg_1.x | 0u) % 32u)), i32(-1i) * -34849i), 84530u, Struct_1(_wgslsmith_mod_vec2_u32(var_0.xx, ~firstLeadingBit(arg_1.zw))));
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(u_input.a, u_input.c);
    var var_1 = u_input.b.x;
    var var_2 = func_2(Struct_1(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 19016u), vec2<u32>(u_input.c, 48914u), vec2<u32>(u_input.a, u_input.c)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.c, u_input.a)) % vec2<u32>(32u)))));
    var_1 = reverseBits(~firstLeadingBit(-12616i));
    let var_3 = Struct_3(abs(countOneBits(u_input.b.x)), ~firstLeadingBit(select(max(vec4<u32>(4294967295u, 2651u, 1u, 0u), vec4<u32>(102944u, 39697u, var_2.a.x, 0u)), max(vec4<u32>(4294967295u, 4294967295u, 67340u, var_2.a.x), vec4<u32>(u_input.c, var_2.a.x, u_input.a, u_input.a)), func_3(true, vec4<u32>(0u, var_2.a.x, u_input.a, 4294967295u), vec4<f32>(-427f, 1082f, 1275f, 167f)))), Struct_2(vec4<bool>(all(vec2<bool>(false, false)), true, any(vec2<bool>(true, true)), true), false, _wgslsmith_mult_vec3_i32(vec3<i32>(min(2147483647i, u_input.b.x), ~(-24923i), i32(-1i) * -2147483647i), countOneBits(vec3<i32>(-33793i, 18981i, 24911i)) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec3<i32>(-1i, u_input.b.x, u_input.b.x))), _wgslsmith_div_u32(_wgslsmith_mult_u32(~44466u, 1u), select(~0u, ~u_input.a, true)), func_2(Struct_1(var_2.a))));
    return var_3.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec4<u32> {
    global0 = array<Struct_3, 14>();
    var var_0 = arg_0.c.a.zy;
    var_0 = vec2<bool>(true, all(!select(func_1().a.xz, vec2<bool>(arg_1.c.a.x, true), false | var_0.x)));
    let var_1 = any(!select(arg_0.c.a.xw, !arg_1.c.a.xy, all(select(arg_1.c.a.zx, vec2<bool>(var_0.x, arg_1.c.b), arg_0.c.a.xz))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1293f);
    return vec4<u32>(~u_input.c, ~0u, 1u, ~arg_1.b.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: u32) -> Struct_2 {
    var var_0 = vec4<bool>(func_3(!func_3(all(vec4<bool>(true, false, false, arg_1)), ~vec4<u32>(u_input.a, arg_0.x, arg_0.x, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(739f, 462f, 1020f, -629f) * vec4<f32>(-428f, 518f, 2184f, 831f))), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, arg_0.x, 4294967295u), vec4<u32>(u_input.a, 0u, arg_0.x, 4294967295u)), arg_0, !any(vec2<bool>(arg_2, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(min(-298f, _wgslsmith_f_op_f32(abs(434f)))), _wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1133f) - _wgslsmith_f_op_f32(1964f * 491f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) - _wgslsmith_f_op_f32(ceil(1000f))))), true, !(true && arg_2), 424f < _wgslsmith_f_op_f32(sign(-769f)));
    var var_1 = !(!vec2<bool>(arg_2, false));
    var var_2 = -1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1162f, -404f, -125f, -1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1860f, -244f, -652f, -105f), vec4<f32>(-778f, 664f, 183f, -808f)))))) + vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1174f + 100f)))), _wgslsmith_f_op_f32(abs(110f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-330f)), 199f)) - _wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(ceil(935f)))), -109f));
    global0 = array<Struct_3, 14>();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_3(2448i, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 33292u, 18734u) & vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), select(vec4<u32>(u_input.c, u_input.a, 1u, 1u), vec4<u32>(34228u, 3207u, 21415u, 20480u), vec4<bool>(false, false, true, true)), ~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)), func_1()), Struct_3(_wgslsmith_sub_i32(2147483647i, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 143520u, u_input.c, 0u), vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u), vec4<u32>(77905u, 4294967295u, 0u, 102603u)), ~vec4<u32>(21265u, 4294967295u, u_input.a, u_input.a)), Struct_2(vec4<bool>(false, true, false, true), false, vec3<i32>(-2147483647i, u_input.b.x, 2147483647i), select(4294967295u, u_input.a, false), Struct_1(vec2<u32>(1u, u_input.a))))), !(!all(vec4<bool>(true, false, true, true)) && true), !(11321u <= abs(~u_input.c)), ~(_wgslsmith_clamp_u32(~58932u, ~583u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.a), vec4<u32>(u_input.c, 31986u, 1u, u_input.a))) & (~4294967295u << (_wgslsmith_add_u32(1u, 1u) % 32u))));
    var_0 = func_1();
    let var_1 = min(-max(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -39831i, u_input.b.x), var_0.c), vec3<i32>(~(-1i), 0i >> (var_0.d % 32u), _wgslsmith_sub_i32(u_input.b.x, 0i))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, u_input.b.x), -((vec3<i32>(var_0.c.x, 0i, u_input.b.x) | var_0.c) & var_0.c)));
    var var_2 = func_5(max(~(~(vec4<u32>(73713u, 38317u, var_0.e.a.x, 0u) >> (vec4<u32>(u_input.a, 58627u, 95204u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(4294967295u, 35666u, var_0.e.a.x, 1u), abs(vec4<u32>(96908u, 21207u, 2007u, var_0.e.a.x))), vec4<u32>(var_0.e.a.x << (0u % 32u), min(var_0.d, 3902u), u_input.c, ~75110u), ~(~vec4<u32>(4294967295u, u_input.a, var_0.d, u_input.c)))), false, false, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 89967u), vec2<u32>(22216u, min(0u, 1u))), u_input.a)).c.xy;
    let var_3 = func_1();
    var var_4 = var_0.e;
    let var_5 = var_4.a;
    let var_6 = ~(~var_0.e.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~79389u), ~(~var_5.x), 1u) & ~select(vec3<u32>(1u, var_5.x, var_4.a.x), vec3<u32>(var_6.x, var_0.d, 4294967295u) << (vec3<u32>(var_3.d, 39836u, u_input.c) % vec3<u32>(32u)), func_1().a.yyz), var_3.c.x ^ ~(-23524i), var_3.e.a);
}

