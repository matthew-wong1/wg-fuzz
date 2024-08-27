struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec3<u32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_4(_wgslsmith_clamp_i32(u_input.a.x, ~firstTrailingBit(_wgslsmith_sub_i32(1i, u_input.c.x)), u_input.a.x));
    let var_1 = Struct_3(Struct_1(firstLeadingBit(~arg_0.b.c.a), u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-584f, 1619f) * _wgslsmith_f_op_vec2_f32(-arg_0.b.c.c)) + vec2<f32>(arg_3.x, arg_1))));
    let var_2 = var_1;
    let var_3 = vec3<i32>(var_2.a.a.x, i32(-1i) * -2147483647i, max(-23509i << (reverseBits(firstTrailingBit(var_1.a.b)) % 32u), -2147483647i));
    var var_4 = u_input.b.x & arg_0.b.a.x;
    return reverseBits(arg_2.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_3(Struct_5(vec3<bool>(false, true, arg_1), Struct_2(vec3<u32>(61332u, 26842u, u_input.b.x), arg_0.x, Struct_1(vec4<i32>(-2147483647i, arg_2.x, -1i, arg_0.x), 0u, vec2<f32>(351f, 815f)), u_input.b.x, vec3<bool>(arg_1, arg_1, false))), -1636f, select(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, 23539u), arg_1), vec4<f32>(1f, 1f, 1f, 1f)), ~(~0u), select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 89410u), u_input.b), _wgslsmith_div_u32(4294967295u, u_input.b.x), any(vec4<bool>(arg_1, false, false, false))), 4294967295u) | (~reverseBits(vec4<u32>(1u, 4294967295u, 33932u, u_input.b.x)) | ~(~vec4<u32>(33340u, u_input.b.x, 22063u, 11073u))), vec4<u32>((reverseBits(1u) | u_input.b.x) | (select(4294967295u, u_input.b.x, false) & u_input.b.x), u_input.b.x, ~7729u, ~19344u));
    var var_1 = Struct_4(arg_2.x | 2147483647i);
    var_1 = Struct_4(arg_0.x);
    let var_2 = select(select(select(select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), !vec2<bool>(arg_1, true)), vec2<bool>(all(vec3<bool>(true, true, false)), !arg_1), !(!vec2<bool>(arg_1, false))), !select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), arg_1), vec2<bool>(arg_1, true)), !vec2<bool>(!arg_1, _wgslsmith_add_i32(u_input.c.x, -14564i) != (-8031i & u_input.c.x)), !select(false, true, false));
    let var_3 = any(vec4<bool>(false, var_2.x, true, var_2.x));
    return ~reverseBits(vec4<i32>(arg_2.x, -39925i, -_wgslsmith_clamp_i32(-18699i, var_1.a, var_1.a), 220i));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32) -> Struct_3 {
    var var_0 = ~vec4<u32>(arg_0.d, 56039u & arg_0.a.x, 4294967295u, ~_wgslsmith_mult_u32(~1u, ~arg_0.a.x));
    let var_1 = select(vec3<bool>(arg_0.e.x, arg_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(700f)) + _wgslsmith_f_op_f32(trunc(-2038f))) <= 1365f), vec3<bool>(true, false, arg_0.e.x), true);
    var var_2 = Struct_1(func_2(u_input.c.xx, false, -_wgslsmith_mult_vec3_i32(vec3<i32>(-4742i, 21905i, -31615i), vec3<i32>(arg_1.x, 8509i, 0i) ^ arg_0.c.a.yyw)), 9882u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.c.c.x + arg_0.c.c.x), _wgslsmith_f_op_f32(-384f - 452f))) - arg_0.c.c));
    let var_3 = arg_0;
    let var_4 = 51111u;
    return Struct_3(arg_0.c);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = arg_3;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_add_i32(countOneBits(15246i), ~arg_0.a.a.x);
    var var_3 = func_2(firstTrailingBit(vec2<i32>(select(u_input.a.x, 51035i, true), firstTrailingBit(arg_0.a.a.x)) ^ -vec2<i32>(1i, arg_0.a.a.x)), false, vec3<i32>(-u_input.a.x << (5905u % 32u), -1i, arg_0.a.a.x)).x;
    var var_4 = 1u;
    return Struct_2(firstLeadingBit(abs(~vec3<u32>(36623u, 1u, 4294967295u))), func_1(Struct_2(vec3<u32>(~arg_0.a.b, 0u, ~49413u), -1i, func_1(Struct_2(vec3<u32>(arg_0.a.b, 1u, 15973u), arg_0.a.a.x, arg_0.a, u_input.b.x, vec3<bool>(false, true, false)), arg_0.a.a.zx, _wgslsmith_add_i32(u_input.c.x, arg_0.a.a.x)).a, ~(~64227u), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), all(vec3<bool>(true, false, true)))), vec2<i32>(~1i, _wgslsmith_sub_i32(-21675i, u_input.c.x)) ^ -(~vec2<i32>(u_input.c.x, -1i)), ~(~_wgslsmith_sub_i32(-16871i, -2147483647i))).a.a.x, Struct_1(firstTrailingBit(func_2(_wgslsmith_mod_vec2_i32(u_input.c.yy, u_input.c.yy), true, u_input.c)), 42967u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -600f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.zx)) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_3.x), vec2<f32>(-678f, 696f))))), ~u_input.b.x, !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))));
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(-arg_0.c.c.x), 1498f));
    var var_1 = func_4(Struct_3(Struct_1(arg_0.c.a, arg_0.a.x & 1u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(618f)) * var_0.x), 372f, vec3<f32>(func_4(func_1(Struct_2(arg_0.a, u_input.a.x, arg_0.c, 0u, vec3<bool>(arg_0.e.x, true, arg_0.e.x)), max(vec2<i32>(arg_0.c.a.x, 30282i), arg_0.c.a.zz), arg_0.b << (4294967295u % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -504f), var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-336f, -408f, arg_0.c.c.x), vec3<f32>(var_0.x, 1000f, -1072f), arg_0.e)))).c.c.x, 1123f, _wgslsmith_f_op_f32(-arg_0.c.c.x))).b;
    var_1 = -_wgslsmith_sub_i32(max(func_1(Struct_2(arg_0.a, -1i, arg_0.c, 4294967295u, vec3<bool>(false, arg_0.e.x, arg_0.e.x)), u_input.a.xx, -1i).a.a.x, arg_0.b), ~(-6003i)) & -min((16416i | arg_0.c.a.x) ^ u_input.c.x, arg_0.b);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1692f), arg_0.c.c.x)));
    var var_2 = !(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 56252u, _wgslsmith_add_u32(arg_1, arg_1), arg_1), ~vec4<u32>(arg_1, 4294967295u, u_input.b.x, 34564u)) != _wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.a.xz | vec2<u32>(arg_1, 25769u), u_input.b)));
    return -_wgslsmith_div_i32(func_1(arg_0, u_input.a.xx, 21047i).a.a.x, ~(-1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(~(vec4<i32>(-15455i, -1i, -4984i, u_input.c.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(0u, 4294967295u, 40948u, 91u)) % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(685f, 112f)), vec2<f32>(-745f, 563f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-765f, 205f) * vec2<f32>(734f, -762f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-304f, -222f) + vec2<f32>(-1191f, 1140f)), true)))));
    var var_1 = ~func_5(func_4(func_1(Struct_2(vec3<u32>(u_input.b.x, 70709u, 0u), 17447i, Struct_1(vec4<i32>(-10382i, -59055i, -2147483647i, 5218i), 1u, var_0.a.c), 71382u, vec3<bool>(false, true, false)), u_input.a.xy, -15739i), _wgslsmith_f_op_f32(min(-759f, 806f)), _wgslsmith_f_op_f32(abs(690f)), vec3<f32>(var_0.a.c.x, 230f, var_0.a.c.x)), _wgslsmith_mult_u32(~var_0.a.b, ~47358u)) < u_input.a.x;
    let var_2 = Struct_2(vec3<u32>(~0u, u_input.b.x >> (10420u % 32u), 38240u), i32(-1i) * -_wgslsmith_clamp_i32(firstLeadingBit(10317i), -var_0.a.a.x, -u_input.a.x), Struct_1(var_0.a.a, _wgslsmith_mult_u32(abs(1u), 4294967295u ^ firstLeadingBit(var_0.a.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.a.c), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1084f, 415f))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.c * vec2<f32>(-996f, var_0.a.c.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(613f, var_0.a.c.x)))))), ((_wgslsmith_add_u32(0u, u_input.b.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, var_0.a.b, 90027u), vec4<u32>(u_input.b.x, var_0.a.b, 4294967295u, 4294967295u))) & var_0.a.b) << (~var_0.a.b % 32u), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), func_4(Struct_3(Struct_1(vec4<i32>(u_input.c.x, u_input.a.x, 2972i, u_input.a.x), var_0.a.b, vec2<f32>(-1208f, -844f))), var_0.a.c.x, var_0.a.c.x, vec3<f32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)).e.x), vec3<bool>(true, true, true), select(func_4(Struct_3(var_0.a), var_0.a.c.x, var_0.a.c.x, vec3<f32>(var_0.a.c.x, var_0.a.c.x, -864f)).e, vec3<bool>(true, true, true), true)));
    let var_3 = ~0u;
    let var_4 = u_input.a.x;
    var var_5 = select(!select(vec4<bool>(!var_2.e.x, var_2.c.a.x == -42043i, u_input.b.x == var_2.a.x, all(var_2.e.xy)), vec4<bool>(true, true, true, var_2.e.x != false), vec4<bool>(true, true, true, true)), vec4<bool>(true, !(true | any(vec2<bool>(var_2.e.x, var_2.e.x))), var_2.e.x, var_2.e.x), var_2.e.x);
    let var_6 = -2147483647i;
    var_0 = Struct_3(var_2.c);
    let var_7 = 19289u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, -2147483647i), i32(-1i) * -var_6), var_2.a, func_4(func_1(func_4(Struct_3(Struct_1(vec4<i32>(var_2.c.a.x, -11309i, -20954i, var_0.a.a.x), 0u, var_0.a.c)), _wgslsmith_f_op_f32(var_0.a.c.x * var_2.c.c.x), _wgslsmith_f_op_f32(var_2.c.c.x - var_2.c.c.x), vec3<f32>(-314f, var_2.c.c.x, -372f)), abs(u_input.a.zz | var_0.a.a.yx), var_4), var_0.a.c.x, 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c.c.x, var_0.a.c.x, 416f), vec3<f32>(1076f, 1000f, var_2.c.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1601f, -176f, 1065f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1022f, var_2.c.c.x, 855f), vec3<f32>(var_2.c.c.x, -1811f, -141f)))))).c.a.yzz);
}

