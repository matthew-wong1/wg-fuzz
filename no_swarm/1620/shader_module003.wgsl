struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    var var_0 = ~(firstTrailingBit(~0i) >> (1u % 32u));
    var var_1 = Struct_3(countOneBits(-abs(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 34058i))) & ~vec4<i32>(41058i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -66931i)), 63320i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -17514i, -58521i))), ~_wgslsmith_div_vec2_u32(vec2<u32>(49868u, ~1u), vec2<u32>(1u, 1u)));
    return _wgslsmith_mult_u32(~(~var_1.b.x | max(var_1.b.x, abs(var_1.b.x))), 6255u);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    let var_0 = abs(~select(countOneBits(_wgslsmith_div_u32(65469u, 41153u)), arg_0.x, arg_0.x < func_3()));
    return Struct_3(~vec4<i32>(firstTrailingBit(abs(u_input.a.x)), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.a.x, -22280i), _wgslsmith_mult_i32(0i, 20008i)), firstTrailingBit(6117i)), ~(arg_0.zy | (~vec2<u32>(var_0, var_0) | ~vec2<u32>(0u, 4294967295u))));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-984f, arg_2)), arg_2, select(true, false, true))), _wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -787f))), true)), 42268i, ~firstLeadingBit(arg_3.b.x), !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))), Struct_1(999f, arg_3.a.x, _wgslsmith_div_u32(select(~arg_0, 0u, any(vec2<bool>(false, false))), arg_0), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2, -933f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, arg_2)))))), Struct_1(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -173f)), firstLeadingBit(min(2147483647i, arg_3.a.x)) >> (arg_0 % 32u), arg_0 >> ((arg_0 | ~4294967295u) % 32u), (arg_0 >> (arg_3.b.x % 32u)) > arg_0));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1213f * -300f), 399f))), ~(-1i), 601u, any(vec3<bool>(var_0.a.d, var_0.b.d || var_0.a.d, true))), var_0.a, vec2<f32>(1785f, var_0.c.x), Struct_1(_wgslsmith_f_op_f32(-arg_2), select(select(96037i << (arg_0 % 32u), _wgslsmith_mod_i32(arg_3.a.x, 34481i), var_0.c.x >= -1035f), _wgslsmith_dot_vec4_i32(~arg_3.a, -vec4<i32>(arg_3.a.x, -35642i, 0i, -1i)), true), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(48768u, 43720u, 0u), firstLeadingBit(var_0.a.c)), any(!(!vec2<bool>(false, var_0.b.d)))));
    return Struct_1(var_1.d.a, arg_3.a.x, ~(_wgslsmith_add_u32(47608u, select(var_0.d.c, 9085u, var_0.a.d)) >> (362u % 32u)), var_1.a.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    var var_0 = countOneBits(vec4<i32>(31978i, -11196i, arg_0.b, 31089i) | vec4<i32>(arg_3.d.b, abs(arg_3.a.b), 12615i, select(arg_2.d.b, -1i, arg_1.d) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-25917i, arg_1.b, 0i), vec3<i32>(2147483647i, arg_3.d.b, u_input.a.x))));
    let var_1 = vec4<i32>(12062i, max(arg_2.b.b, var_0.x), -_wgslsmith_clamp_i32(-firstTrailingBit(var_0.x), max(0i, max(1i, arg_2.b.b)), var_0.x), ~arg_1.b);
    let var_2 = true;
    var var_3 = vec2<bool>(false, true);
    let var_4 = func_2(vec3<u32>(62144u, 1u, ~(1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_0.c, arg_3.d.c)))), select(!select(vec2<bool>(arg_3.b.d, true), select(vec2<bool>(true, false), vec2<bool>(false, var_2), vec2<bool>(true, arg_3.d.d)), vec2<bool>(true, true)), select(select(vec2<bool>(arg_2.b.d, true), vec2<bool>(true, true), any(vec3<bool>(arg_1.d, false, arg_1.d))), select(!vec2<bool>(false, var_3.x), select(vec2<bool>(true, var_3.x), vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2)), var_3.x), true), arg_3.b.d), !(!any(select(vec2<bool>(false, false), vec2<bool>(false, arg_3.a.d), arg_2.d.d))));
    return func_2(min(vec3<u32>(~arg_0.c, _wgslsmith_clamp_u32(~3121u, ~4294967295u, 54159u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.c, var_4.b.x), var_4.b | vec2<u32>(1u, var_4.b.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.b.x, 4294967295u, arg_1.c, 0u) >> (vec4<u32>(0u, arg_1.c, arg_1.c, 4294967295u) % vec4<u32>(32u)), reverseBits(vec4<u32>(1u, var_4.b.x, arg_2.a.c, arg_2.d.c))), 0u, firstLeadingBit(4294967295u >> (var_4.b.x % 32u)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!(u_input.a.x != arg_0.b), true)), func_4(1u, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_add_i32(39358i, arg_1.b), var_0.x), 13572i), _wgslsmith_f_op_f32(select(-505f, -531f, func_4(arg_3.d.c, 46309i, arg_3.c.x, var_4).d)), Struct_3(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(var_4.a, vec4<i32>(9181i, arg_2.d.b, var_0.x, -2147483647i)), func_2(vec3<u32>(18275u, 4294967295u, 38050u), vec2<bool>(false, var_3.x), false).a), var_4.b << (_wgslsmith_mult_vec2_u32(var_4.b, var_4.b) % vec2<u32>(32u)))).d);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    var var_0 = func_5(func_4(arg_0.b.x, ~34783i, -694f, func_2(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), true), ~vec3<u32>(arg_0.b.x, arg_0.b.x, 22950u)), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), !select(false, false, false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -1774f)), _wgslsmith_sub_i32(~max(u_input.a.x, 0i), select(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), arg_0.a.x, all(vec4<bool>(false, true, true, false)))), _wgslsmith_mod_u32(~arg_0.b.x, arg_0.b.x >> (arg_0.b.x % 32u)) ^ ~func_4(1u, u_input.a.x, 610f, arg_0).c, true), Struct_2(Struct_1(arg_1.x, u_input.a.x, _wgslsmith_div_u32(109549u, ~1u), any(vec2<bool>(true, true)) != false), func_4(~_wgslsmith_clamp_u32(41481u, 74702u, 4294967295u), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), arg_0), _wgslsmith_f_op_vec2_f32(sign(arg_1)), Struct_1(627f, _wgslsmith_add_i32(49470i | arg_0.a.x, 0i), ~arg_0.b.x, true | any(vec4<bool>(false, false, true, false)))), Struct_2(func_4(~reverseBits(4613u), u_input.a.x, _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(1967f * -1442f)), arg_0), Struct_1(arg_1.x, -2147483647i, ~21540u, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -1000f) * _wgslsmith_f_op_vec2_f32(arg_1 - vec2<f32>(arg_1.x, 1000f))))), Struct_1(1287f, abs(_wgslsmith_mult_i32(-1i, u_input.a.x)), _wgslsmith_mod_u32(~arg_0.b.x, arg_0.b.x >> (arg_0.b.x % 32u)), true != all(vec3<bool>(true, false, false)))));
    var var_1 = arg_1.x;
    var var_2 = u_input.a.x;
    var_2 = ~48940i;
    let var_3 = Struct_2(func_4(var_0.b.x, ~func_4(~0u, -17473i, _wgslsmith_f_op_f32(sign(-655f)), Struct_3(var_0.a, vec2<u32>(arg_0.b.x, 1u))).b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(-arg_1.x)))), arg_0), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_1.x, -1983f)))), _wgslsmith_mult_i32(arg_0.a.x, -1i), ~var_0.b.x, false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(-683f, -1000f)) - vec2<f32>(arg_1.x, 1172f))), vec2<f32>(-161f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-464f, arg_1.x), 418f, true))), true)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-622f)), 337f), -1876f)), _wgslsmith_add_i32(-1i, ~_wgslsmith_add_i32(0i, -34914i)), ~0u, _wgslsmith_add_u32(select(16063u, arg_0.b.x, true), ~var_0.b.x) <= ~arg_0.b.x));
    return var_3.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = select(select(select(vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true))), !vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), true, true), !vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(!any(vec3<bool>(true, true, false)), any(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false))), func_1(Struct_3(-vec4<i32>(u_input.a.x, -2147483647i, 17004i, u_input.a.x), vec2<u32>(1u, 1u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -744f), 1201f)), all(vec3<bool>(true, true, true))));
    var_1 = !(!vec4<bool>(true, true, var_1.x, any(var_1.yyx)));
    var_1 = select(select(!vec4<bool>(true, var_1.x, select(false, var_1.x, false), var_1.x), select(select(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_1.x, true, false, var_1.x), all(var_1.yy)), !(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), select(select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true), !vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x))), var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, true), !select(!vec4<bool>(true, true, false, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, false, true)), select(vec4<bool>(true, true, var_1.x, true), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(true, false, true, var_1.x), vec4<bool>(true, var_1.x, var_1.x, true)))), !select(select(!vec4<bool>(var_1.x, false, true, true), select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(true, true, var_1.x, false), var_1.x), var_1.x), vec4<bool>(!var_1.x, !var_1.x, true, func_4(0u, u_input.a.x, 841f, Struct_3(vec4<i32>(u_input.a.x, 2147483647i, 0i, -1i), vec2<u32>(44925u, 1u))).d), !select(true, var_1.x, true)));
    var var_2 = func_5(func_4(~50243u, _wgslsmith_add_i32(firstLeadingBit(countOneBits(u_input.a.x)), ~(-2147483647i)), -1000f, Struct_3(vec4<i32>(max(1i, u_input.a.x), u_input.a.x, 1i, u_input.a.x << (4294967295u % 32u)), ~vec2<u32>(10868u, 0u))), func_4(~(~36768u), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1196f * -1314f)), func_5(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -931f), ~u_input.a.x, ~0u, select(true, var_1.x, var_1.x)), func_4(_wgslsmith_mult_u32(1u, 21721u), -1i, -1027f, Struct_3(vec4<i32>(-27895i, u_input.a.x, u_input.a.x, u_input.a.x), vec2<u32>(0u, 36098u))), Struct_2(Struct_1(-845f, 0i, 0u, var_1.x), Struct_1(-741f, u_input.a.x, 0u, true), _wgslsmith_div_vec2_f32(vec2<f32>(-266f, 693f), vec2<f32>(891f, -511f)), Struct_1(774f, u_input.a.x, 63586u, var_1.x)), Struct_2(Struct_1(-1354f, u_input.a.x, 31718u, var_1.x), Struct_1(-689f, u_input.a.x, 0u, false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(112f, 1373f), vec2<f32>(-1382f, 771f), true)), func_4(28750u, u_input.a.x, -1277f, Struct_3(vec4<i32>(-2147483647i, -1i, -20561i, u_input.a.x), vec2<u32>(4294967295u, 2478u)))))), Struct_2(func_4(~(~29039u), 1i, -1000f, Struct_3(~vec4<i32>(u_input.a.x, 15950i, u_input.a.x, 1i), vec2<u32>(24146u, 4294967295u))), Struct_1(-828f, _wgslsmith_mult_i32(33189i & u_input.a.x, u_input.a.x >> (0u % 32u)), 1u, !func_1(Struct_3(vec4<i32>(17913i, 2147483647i, u_input.a.x, u_input.a.x), vec2<u32>(0u, 52966u)), vec2<f32>(-143f, -764f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 657f) + vec2<f32>(-381f, 113f))))), Struct_1(2135f, -_wgslsmith_mult_i32(u_input.a.x, -2297i), _wgslsmith_mod_u32(19638u, 39708u), var_1.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f) + _wgslsmith_f_op_f32(step(-1042f, -358f))), _wgslsmith_mod_i32(-1i, 1i), ~0u, true), func_4(35106u, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(433f - _wgslsmith_div_f32(-191f, -998f)), func_2(vec3<u32>(0u, 1u, 1u), select(var_1.wy, var_1.wz, false), var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(847f, -766f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1865f, 458f), vec2<f32>(-1213f, -1000f), var_1.x)))), func_4(_wgslsmith_sub_u32(~0u, abs(1u)), -46247i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(247f, -619f)), _wgslsmith_f_op_f32(ceil(-2011f))), func_5(func_4(4294967295u, 0i, -102f, Struct_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 7789i), vec2<u32>(1u, 0u))), func_4(1u, u_input.a.x, 198f, Struct_3(vec4<i32>(56415i, 14202i, -47389i, u_input.a.x), vec2<u32>(83989u, 24783u))), Struct_2(Struct_1(591f, -1i, 45428u, false), Struct_1(1076f, u_input.a.x, 1u, var_1.x), vec2<f32>(-1086f, -102f), Struct_1(-1190f, u_input.a.x, 0u, false)), Struct_2(Struct_1(-1251f, u_input.a.x, 1u, var_1.x), Struct_1(-847f, -9824i, 1u, var_1.x), vec2<f32>(-124f, -125f), Struct_1(273f, 10059i, 0u, false))))));
    var_0 = func_2(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(20722u, 1u, 34859u), vec3<u32>(27472u, 0u, 1u), vec3<u32>(1u, var_2.b.x, var_2.b.x))) ^ reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_2.b.x, 0u), abs(vec3<u32>(1u, 4294967295u, var_2.b.x)))), !(!var_1.zw), any(select(!var_1.zyx, select(vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.wwz, var_1.yyy), true))).a.x;
    var_2 = func_5(func_4(var_2.b.x, 2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(767f - _wgslsmith_f_op_f32(floor(-850f))))), func_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 35226u, 2517u), reverseBits(vec3<u32>(var_2.b.x, 4294967295u, var_2.b.x))), var_1.wy, true)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1442f + -1000f), _wgslsmith_f_op_f32(1279f - 495f)))), u_input.a.x, firstTrailingBit(~(~4294967295u)), var_1.x), Struct_2(func_4(func_4(_wgslsmith_div_u32(var_2.b.x, 72074u), firstLeadingBit(var_2.a.x), _wgslsmith_f_op_f32(-910f - 1000f), func_5(Struct_1(-388f, 40333i, 4294967295u, var_1.x), Struct_1(2500f, -2147483647i, var_2.b.x, var_1.x), Struct_2(Struct_1(-2375f, 2147483647i, var_2.b.x, false), Struct_1(1165f, var_2.a.x, 4294967295u, var_1.x), vec2<f32>(-581f, -337f), Struct_1(1137f, u_input.a.x, var_2.b.x, true)), Struct_2(Struct_1(804f, -43713i, var_2.b.x, var_1.x), Struct_1(562f, u_input.a.x, 10620u, false), vec2<f32>(873f, 256f), Struct_1(-621f, var_2.a.x, var_2.b.x, false)))).c, -var_2.a.x << (func_3() % 32u), -382f, Struct_3(firstTrailingBit(var_2.a), vec2<u32>(4294967295u, 4294967295u))), func_4(_wgslsmith_mod_u32(var_2.b.x & 20483u, var_2.b.x), var_2.a.x ^ -1i, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1466f - -308f)), Struct_3(-vec4<i32>(u_input.a.x, -10924i, -2147483647i, u_input.a.x), ~var_2.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(248f, 1025f)))), Struct_1(_wgslsmith_f_op_f32(-1164f + _wgslsmith_f_op_f32(234f * -867f)), min(-2147483647i, 23326i), firstLeadingBit(var_2.b.x) << (~var_2.b.x % 32u), (var_1.x || true) && false)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1171f)), 0i, 4294967295u, !var_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-586f, 214f))), ~firstTrailingBit(var_2.a.x), ~var_2.b.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(188f, 1000f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-202f, -579f), vec2<f32>(-1387f, -201f))))), func_4(countOneBits(50345u), 23091i, _wgslsmith_div_f32(1000f, -682f), func_2(firstTrailingBit(vec3<u32>(20027u, var_2.b.x, 47165u)), var_1.zw, !var_1.x))));
    let var_3 = vec4<u32>(27223u, _wgslsmith_div_u32(~30715u, abs(var_2.b.x)), 14302u, var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3, select(max(var_3, var_3), vec4<u32>(var_3.x, 1u, var_2.b.x, 12517u), select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, true, true), vec4<bool>(false, true, false, var_1.x)))) & ~vec4<u32>(_wgslsmith_mod_u32(1u, var_2.b.x), firstTrailingBit(var_2.b.x), var_3.x, 7790u ^ var_2.b.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, 1042f, -1706f, 2965f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, 105f, -182f, 1064f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-589f, -592f, 1000f, 731f) + vec4<f32>(349f, -1846f, -700f, 171f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1057f, 430f, -1699f, 432f))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~16796i, i32(-1i) * -25251i), var_2.a.x), (i32(-1i) * -1i) >> ((select(var_3.x, 4303u, true) << ((30373u & var_2.b.x) % 32u)) % 32u), reverseBits(1i), _wgslsmith_add_i32(~40798i, _wgslsmith_dot_vec2_i32(countOneBits(var_2.a.xw), _wgslsmith_sub_vec2_i32(u_input.a.xy, var_2.a.yy)))), 1061f);
}

