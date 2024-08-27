struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(521f)) * -1708f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) - _wgslsmith_f_op_f32(-arg_1.a.x)), true))) - _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_1 = vec4<bool>(true, false, true, u_input.b.x == 44304i);
    var_1 = vec4<bool>(any(vec2<bool>(firstLeadingBit(0i) != _wgslsmith_dot_vec4_i32(vec4<i32>(-22945i, u_input.b.x, u_input.b.x, 15590i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), true)), ((abs(u_input.b.x) == 0i) && all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))) & var_1.x, !var_1.x, var_1.x);
    var var_2 = max(u_input.b.yx, _wgslsmith_sub_vec2_i32(vec2<i32>(-(u_input.b.x | 1i), firstTrailingBit(-u_input.b.x)), max(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.b.x, u_input.b.x))), -(vec2<i32>(u_input.b.x, -5854i) ^ vec2<i32>(u_input.b.x, 1i)))));
    let var_3 = u_input.b.x;
    return _wgslsmith_f_op_f32(max(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1094f - _wgslsmith_f_op_f32(arg_1.b.x + var_0)) - var_0)))));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(494f, _wgslsmith_f_op_f32(max(-2325f, -584f)))))));
    var var_1 = ~select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 64029u), u_input.a) & u_input.a, u_input.a, !select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), false));
    var var_2 = Struct_3(vec2<f32>(-764f, arg_0.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.x, arg_0)))), _wgslsmith_f_op_f32(exp2(arg_0.a.x))));
    let var_3 = !vec4<bool>(true, !all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, true, true), true)));
    var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1933f))), _wgslsmith_f_op_f32(f32(-1f) * -1266f)), var_0);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_2(vec2<bool>(true, max(0u, _wgslsmith_mult_u32(25426u, u_input.a.x)) >= _wgslsmith_mult_u32(~78938u, min(u_input.a.x, 4294967295u))), ~u_input.a, Struct_1(~arg_1 & u_input.b.x, vec3<u32>(8334u, max(4294967295u, arg_2.x & u_input.a.x), u_input.a.x), vec4<bool>(any(vec2<bool>(false, true)), true, !any(vec4<bool>(true, true, true, false)), !all(vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), u_input.a.zz), _wgslsmith_add_vec2_u32(abs(firstTrailingBit(u_input.a.yx)), abs(~vec2<u32>(arg_2.x, 0u))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1626f * -185f)))), _wgslsmith_f_op_f32(f32(-1f) * -1702f), arg_0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + 1192f) - -283f), 2132f))));
    var_0 = Struct_2(var_0.a, u_input.a, Struct_1(_wgslsmith_mult_i32(1i, arg_1) ^ countOneBits(var_0.c.a), ~(~u_input.a.zzw), select(var_0.c.c, !select(vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.c.c, true), !(!var_0.a.x)), var_0.e.x, arg_2), ~vec2<u32>(1u, ~(arg_2.x >> (u_input.c % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x, -554f, _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(arg_0.a.x - 602f)))));
    var_0 = Struct_2(var_0.c.c.wx, ~u_input.a, var_0.c, ~u_input.a.zw, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_0.e + vec4<f32>(_wgslsmith_f_op_f32(floor(-951f)), arg_0.a.x, -1000f, 1f)), _wgslsmith_f_op_vec4_f32(min(var_0.e, _wgslsmith_f_op_vec4_f32(ceil(var_0.e)))))));
    var var_1 = max(-1i, 1108i);
    let var_2 = !vec3<bool>(true, true, var_0.c.c.x);
    return Struct_2(select(var_2.zy, select(vec2<bool>(var_0.a.x, var_0.a.x), !select(var_0.c.c.xx, vec2<bool>(var_2.x, false), var_0.a.x), !(!var_2.yz)), select(vec2<bool>(false, all(var_0.c.c.xwx)), var_0.c.c.zw, var_0.a.x & true)), u_input.a, var_0.c, ~(~vec2<u32>(var_0.c.b.x, 1u) & reverseBits(vec2<u32>(var_0.c.b.x, 5834u))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.e.x)), var_0.e.x, 143f, _wgslsmith_f_op_f32(f32(-1f) * -1142f)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = arg_0.c.b.x;
    let var_1 = Struct_2(arg_1.a, ~vec4<u32>(_wgslsmith_mod_u32(15911u, ~arg_0.c.b.x), ~4294967295u, ~arg_1.b.x, ~var_0), Struct_1(arg_1.c.a, _wgslsmith_clamp_vec3_u32(u_input.a.wxy, ~select(arg_1.c.b, u_input.a.yyw, true), arg_1.b.wwx & abs(vec3<u32>(1u, arg_1.d.x, u_input.c))), vec4<bool>(all(vec3<bool>(arg_2.x, true, arg_2.x)), true, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) + arg_1.e.x))), u_input.a.wx), arg_1.c.e ^ u_input.a.xx, arg_1.e);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(arg_0.e.xz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.e.yy), vec2<f32>(arg_0.c.d, arg_1.e.x)));
    let var_3 = var_1.d.x;
    return var_2;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(908f - -520f), -295f), _wgslsmith_f_op_f32(-128f - 2354f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1212f + -455f) + _wgslsmith_f_op_f32(-1157f * _wgslsmith_div_f32(142f, -1223f)))));
    let var_1 = -42346i;
    var var_2 = func_5(func_4(func_2(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, 743f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1347f, -933f) * vec2<f32>(var_0, var_0)))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1, var_1, -26917i), 0i) | (i32(-1i) * -2147483647i), vec2<u32>(max(u_input.a.x, arg_0), min(abs(u_input.c), arg_0 >> (1u % 32u)))), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1428f) - vec2<f32>(-1428f, -1484f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_div_i32(u_input.b.x, 1079i), i32(-1i) * -23471i), -reverseBits(vec3<i32>(-11566i, -1i, var_1))), u_input.a.zz), vec3<bool>(true, true, true));
    var_2 = func_5(Struct_2(!vec2<bool>(select(true, true, false), true), ~func_4(Struct_3(vec2<f32>(var_0, var_2.b.x), var_2.a), 0i, ~u_input.a.ww).b, Struct_1(_wgslsmith_div_i32(~2147483647i, var_1), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 118266u), u_input.a.yzw), vec3<u32>(1u, 0u, 4368u)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -327f))), u_input.a.xz), ~u_input.a.xy, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), _wgslsmith_f_op_f32(sign(var_0)), 1000f, var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 458f, -706f, -205f))), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), false)))), Struct_2(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), false)), (u_input.a ^ max(u_input.a, vec4<u32>(4294967295u, u_input.c, 1u, 1u))) | vec4<u32>(u_input.a.x & 1u, max(2116u, 0u), select(1097u, 0u, true), arg_0), Struct_1(-var_1, ~(~u_input.a.xzx), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-233f, var_0) - _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.a.wx), vec2<u32>(arg_0, u_input.c))), _wgslsmith_mod_vec2_u32(u_input.a.wx, _wgslsmith_clamp_vec2_u32(~u_input.a.wz, ~u_input.a.wx, ~u_input.a.xy)), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(var_0 + var_2.b.x), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))), select(vec3<bool>(false, true, false), vec3<bool>(select(true, 0u == u_input.a.x, true), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), true), vec3<bool>(true, true, true)));
    var var_3 = firstLeadingBit(select((firstTrailingBit(vec4<i32>(var_1, 1i, 2147483647i, var_1)) << (u_input.a % vec4<u32>(32u))) << (~u_input.a % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(53i, u_input.b.x, var_1, var_1) << (vec4<u32>(0u, arg_0, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 20892i, u_input.b.x, -22552i)), ~(-vec4<i32>(var_1, u_input.b.x, var_1, 2147483647i))), select(vec4<bool>(false, 1u >= u_input.a.x, true, all(vec2<bool>(true, true))), vec4<bool>(any(vec4<bool>(true, false, false, true)), true, false, true), select(all(vec4<bool>(false, false, false, true)), true, false))));
    return StorageBuffer(var_3.x, ~(-vec3<i32>(49774i, -14488i << (u_input.a.x % 32u), _wgslsmith_div_i32(1i, 23661i))), 350f, vec4<u32>(1u, u_input.a.x, ~52897u, ~_wgslsmith_sub_u32(arg_0, _wgslsmith_mult_u32(16817u, 39497u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = ~(~countOneBits(u_input.b.x)) & _wgslsmith_div_i32(u_input.b.x, ~(-(~(-13160i))));
    var var_2 = min(countOneBits(55005i), countOneBits(max(1i, ~(-1i))));
    var_2 = select(~_wgslsmith_mod_i32(-4190i, -44774i), 1i, any(vec4<bool>(true, true, true, true)) & true) >> (u_input.a.x % 32u);
    let var_3 = u_input.a.x;
    var_0 = all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, true))), all(vec2<bool>(false, false))));
    var_0 = false;
    var_2 = u_input.b.x;
    let x = u_input.a;
    s_output = func_1(~u_input.a.x);
}

