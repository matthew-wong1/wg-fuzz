struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_4) -> u32 {
    var var_0 = Struct_4(arg_3.a);
    var_0 = Struct_4(var_0.a);
    let var_1 = ~(~firstLeadingBit(~min(var_0.a.b.b.zy, vec2<u32>(1u, arg_3.a.a.x))));
    var_0 = arg_3;
    let var_2 = vec4<bool>(false, (1i | firstTrailingBit(-arg_0)) < 1907i, all(vec4<bool>(!any(vec4<bool>(var_0.a.c.a, arg_3.a.d, true, arg_1.a.c.a)), any(vec3<bool>(false, var_0.a.c.a, arg_1.a.b.a)), !all(vec4<bool>(arg_1.a.d, arg_1.a.d, false, var_0.a.d)), false && (arg_3.a.c.a && true))), !(!(~4294967295u > ~var_1.x)));
    return reverseBits(~(~90400u) | _wgslsmith_dot_vec2_u32(vec2<u32>(~var_1.x, ~var_0.a.a.x), u_input.b));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> vec3<i32> {
    var var_0 = 1072f;
    let var_1 = arg_2;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-824f, 516f), _wgslsmith_f_op_f32(floor(-713f)), true)), -1767f))) + -100f);
    let var_2 = vec4<bool>(all(vec2<bool>(true, false)), arg_3.c.a, arg_1, !((true | (var_1.a.c.a && false)) & !arg_2.a.b.a));
    let var_3 = var_1.a;
    return vec3<i32>(0i, abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(min(69203i, -31413i), _wgslsmith_dot_vec3_i32(vec3<i32>(20944i, 30449i, 39861i), vec3<i32>(-2147483647i, 0i, 1i))), -(~(-1i)), 24016i, ~1i), _wgslsmith_mult_vec4_i32(-abs(vec4<i32>(29446i, 16333i, 1i, 57452i)), vec4<i32>(~9144i, _wgslsmith_add_i32(-51866i, -14400i), -2147483647i, _wgslsmith_mod_i32(-37091i, -2147483647i)))));
}

fn func_2() -> bool {
    var var_0 = Struct_4(Struct_3(~vec4<u32>(~u_input.a, ~u_input.b.x, 1u, ~u_input.a), Struct_2(true, _wgslsmith_div_vec4_u32(~vec4<u32>(46658u, 0u, 4294967295u, u_input.a), ~vec4<u32>(4294967295u, u_input.a, u_input.b.x, 1u))), Struct_2(true, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.b.x), vec4<u32>(0u, 43851u, u_input.b.x, u_input.a), vec4<u32>(5087u, u_input.a, u_input.b.x, 0u)), vec4<u32>(1u, 0u, 4294967295u, u_input.b.x) ^ vec4<u32>(4294967295u, u_input.a, 18863u, u_input.a), vec4<u32>(4294967295u, u_input.b.x, u_input.a, 3530u))), any(vec3<bool>(true, any(vec2<bool>(true, false)), true))));
    var var_1 = func_4(~((func_3(-26959i, Struct_4(var_0.a), false, Struct_4(var_0.a)) ^ reverseBits(u_input.b.x)) ^ var_0.a.c.b.x), any(vec4<bool>(true, true, true, true)), Struct_4(Struct_3(var_0.a.c.b, Struct_2(all(vec4<bool>(true, true, true, false)), var_0.a.c.b), var_0.a.b, _wgslsmith_add_u32(var_0.a.c.b.x, u_input.b.x) == select(1u, 4294967295u, true))), var_0.a);
    var_0 = Struct_4(Struct_3(firstTrailingBit(~abs(var_0.a.c.b)), var_0.a.b, Struct_2(var_0.a.c.a, _wgslsmith_clamp_vec4_u32(~var_0.a.a, _wgslsmith_add_vec4_u32(vec4<u32>(72656u, 62492u, 0u, 17535u), var_0.a.c.b), firstTrailingBit(vec4<u32>(4294967295u, 7890u, var_0.a.b.b.x, 0u)))), any(select(!vec3<bool>(false, var_0.a.d, var_0.a.d), !vec3<bool>(var_0.a.c.a, var_0.a.b.a, var_0.a.b.a), !var_0.a.b.a))));
    var var_2 = ~firstTrailingBit(abs(abs(vec3<i32>(-11645i, var_1.x, 8606i))));
    var var_3 = ~(~(0u ^ _wgslsmith_mult_u32(~var_0.a.a.x, 1u)));
    return var_0.a.d;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> Struct_5 {
    let var_0 = Struct_5(vec2<u32>(~arg_3.b.x, _wgslsmith_div_u32(arg_1.x, ~firstTrailingBit(arg_1.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1726f), -343f, 1f))))), vec3<i32>(-19052i, abs(reverseBits(firstTrailingBit(-27811i))), -select(0i, -2147483647i, arg_3.a)), arg_3.b.xyx, Struct_3(arg_3.b, Struct_2(!arg_2, arg_3.b), arg_3, true));
    let var_1 = _wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(0u, var_0.d.x, 4294967295u)), reverseBits(~arg_1)), arg_1), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.b.x, ~4294967295u), vec2<u32>(_wgslsmith_mod_u32(arg_3.b.x, 4294967295u), arg_3.b.x))));
    let var_2 = ~arg_3.b;
    let var_3 = u_input.a;
    var var_4 = var_0.c.x;
    return Struct_5(vec2<u32>(max(_wgslsmith_div_u32(0u, abs(69697u)), ~(~1u)), ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.d.x, 0u, 4294967295u), _wgslsmith_clamp_u32(u_input.a, arg_1.x, var_0.d.x))), vec3<f32>(-380f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(exp2(var_0.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(407f * var_0.b.x) * _wgslsmith_f_op_f32(-var_0.b.x)))), ~(~vec3<i32>(-var_0.c.x, _wgslsmith_sub_i32(15473i, 9403i), var_0.c.x ^ var_0.c.x)), ~(~_wgslsmith_clamp_vec3_u32(arg_1, select(var_0.d, var_0.d, false), ~var_2.xyx)), Struct_3(~_wgslsmith_sub_vec4_u32(var_0.e.b.b, arg_3.b), Struct_2(false, reverseBits(max(var_0.e.b.b, arg_3.b))), var_0.e.b, all(vec4<bool>(var_0.e.c.a, true, true, true))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = func_5(!vec2<bool>(func_2(), arg_0.x | true), vec3<u32>(~64873u, ~4294967295u, u_input.b.x) | ~(~(~vec3<u32>(0u, 4294967295u, u_input.b.x))), all(select(!arg_0, arg_0, func_2())), Struct_2(arg_0.x, reverseBits(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, 35869u, 0u, 4294967295u), vec4<bool>(arg_0.x, true, true, arg_0.x)), select(vec4<u32>(11500u, u_input.b.x, 7338u, 4294967295u), vec4<u32>(u_input.a, 33877u, u_input.a, u_input.a), arg_0.x)))));
    var_0 = Struct_5(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.c, var_0.c) >> (~var_0.e.a.wzx % vec3<u32>(32u)), func_4(u_input.b.x, true, Struct_4(Struct_3(var_0.e.c.b, Struct_2(arg_0.x, vec4<u32>(var_0.d.x, u_input.b.x, u_input.b.x, u_input.a)), Struct_2(arg_0.x, vec4<u32>(u_input.b.x, 1u, u_input.a, var_0.d.x)), arg_0.x)), Struct_3(vec4<u32>(0u, 20782u, u_input.b.x, 0u), var_0.e.c, Struct_2(false, vec4<u32>(u_input.b.x, 4294967295u, u_input.a, var_0.e.a.x)), false))) ^ countOneBits(var_0.c), ~var_0.d, func_5(vec2<bool>(arg_0.x, true), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, 63743u, 55032u) ^ ~var_0.e.b.b.wwx, vec3<u32>(var_0.e.a.x, var_0.e.b.b.x, var_0.d.x) ^ var_0.d, vec3<u32>(_wgslsmith_clamp_u32(94065u, 1u, 1u), _wgslsmith_sub_u32(var_0.a.x, u_input.a), ~107786u)), !arg_0.x, Struct_2(true, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.a, var_0.d.x), select(vec4<u32>(u_input.b.x, var_0.a.x, u_input.b.x, var_0.e.a.x), var_0.e.c.b, var_0.e.d), ~vec4<u32>(12998u, 65222u, 44673u, var_0.a.x)))).e);
    let var_1 = Struct_2(true, ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_0.e.b.b, var_0.e.b.b | var_0.e.a), ~(~var_0.e.c.b)));
    let var_2 = all(arg_0);
    let var_3 = true;
    return var_0.e.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!select(vec3<bool>(true, true, all(vec4<bool>(false, false, false, false))), vec3<bool>(true, true, true), !all(vec3<bool>(true, true, false))));
    var var_1 = vec2<bool>(var_0.a, var_0.a);
    let var_2 = Struct_1(vec4<i32>(min(i32(-1i) * -2147483647i, 0i), firstLeadingBit(1i), firstLeadingBit(_wgslsmith_add_i32(~0i, 46781i)), _wgslsmith_clamp_i32(2147483647i, ~(i32(-1i) * -1i), _wgslsmith_sub_i32(i32(-1i) * -1i, -26348i))), u_input.a > _wgslsmith_sub_u32(~var_0.b.x | _wgslsmith_add_u32(25395u, 0u), 71627u));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1184f))), _wgslsmith_f_op_f32(func_5(select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), false), firstTrailingBit(var_0.b.yyx), var_1.x, func_1(vec3<bool>(var_1.x, false, true))).b.x * _wgslsmith_f_op_f32(f32(-1f) * -2151f)))));
    let var_4 = _wgslsmith_f_op_f32(step(-192f, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, var_3.x, vec3<u32>(~(select(23360u, var_0.b.x, true) << (68072u % 32u)), u_input.a, 68350u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, var_4, var_3.x, var_3.x) * vec4<f32>(var_3.x, -626f, var_3.x, -1290f)))))));
}

