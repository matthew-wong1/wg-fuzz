struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_0.a, arg_0.b);
    var var_1 = select(var_0.a.c.a, arg_0.a.a.a, false & (arg_0.a.a.a.x || any(select(vec3<bool>(arg_0.a.c.a.x, var_0.a.e.a.x, arg_0.a.a.a.x), vec3<bool>(var_0.a.d.a.x, false, false), vec3<bool>(true, false, true)))));
    var_1 = select(!vec2<bool>(!var_1.x || false, var_1.x), vec2<bool>(any(select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, true), vec3<bool>(false, var_0.a.a.a.x, var_0.a.d.a.x)), vec3<bool>(arg_0.a.e.a.x, arg_0.a.a.a.x, var_1.x), arg_0.a.c.a.x)), var_0.a.a.a.x), vec2<bool>(!((var_0.b >= -1572f) & !arg_0.a.c.a.x), false));
    var var_2 = u_input.a.yy;
    var_2 = ~(~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.d.x, u_input.a.x)), u_input.d.xx ^ ~vec2<u32>(1u, u_input.a.x)));
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = ~firstLeadingBit(min(u_input.a.zy, ~(~arg_1)));
    let var_1 = true;
    var var_2 = var_1;
    return func_2(func_2(func_2(arg_3))).a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3.a.a.b;
    var var_1 = Struct_3(func_2(func_2(arg_3)).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(arg_3).b * arg_3.b))));
    var_1 = arg_3;
    var var_2 = func_2(func_2(Struct_3(Struct_2(arg_0, -var_0, func_2(arg_3).a.c, arg_2, arg_2), _wgslsmith_f_op_f32(-1419f * _wgslsmith_f_op_f32(1000f * arg_3.b)))));
    var_2 = func_2(func_2(arg_3));
    return var_2.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(func_3(all(vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec4<bool>(false, true, false, true)))), vec2<u32>(abs(~1u), u_input.a.x), select(u_input.d, _wgslsmith_mult_vec3_u32(u_input.a.xwz, vec3<u32>(u_input.b.x, u_input.d.x, u_input.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, arg_0, arg_0, arg_0)), vec4<i32>(arg_0, arg_0, -2147483647i, 61059i), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 15444i, -34583i, 334i)), Struct_1(vec2<bool>(true, true), vec4<i32>(arg_0, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(vec2<bool>(false, true), vec4<i32>(14385i, 2147483647i, -1i, u_input.c.x))), _wgslsmith_f_op_f32(abs(-525f))))), select(vec3<i32>(_wgslsmith_div_i32(u_input.c.x, ~u_input.c.x), arg_0 | firstTrailingBit(1i), u_input.c.x), -(vec3<i32>(arg_0, 3017i, 18600i) >> (~vec3<u32>(u_input.b.x, 10208u, u_input.d.x) % vec3<u32>(32u))), any(vec3<bool>(true, true, true)) | any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), Struct_1(func_3(all(func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-2147483647i, u_input.c.x, -2147483647i, u_input.c.x)), vec4<i32>(arg_0, u_input.c.x, 8119i, u_input.c.x), Struct_1(vec2<bool>(false, false), vec4<i32>(35964i, arg_0, arg_0, -2147483647i)), Struct_1(vec2<bool>(false, true), vec4<i32>(arg_0, u_input.c.x, u_input.c.x, -2147483647i)), Struct_1(vec2<bool>(false, false), vec4<i32>(-13510i, u_input.c.x, arg_0, u_input.c.x))), 1908f)).a.d.a), abs(vec2<u32>(u_input.b.x, 22128u)), vec3<u32>(~u_input.a.x, abs(90323u), 4294967295u), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.c.x, 6181i, -2147483647i, -1i)), vec4<i32>(arg_0, arg_0, -8055i, u_input.c.x), Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.c.x, -1i, arg_0, arg_0)), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.c.x, 18262i, arg_0, u_input.c.x)), Struct_1(vec2<bool>(false, true), vec4<i32>(arg_0, arg_0, 0i, u_input.c.x))), 1782f))).a, vec4<i32>(arg_0, -(~(-2065i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, 0i, arg_0), vec4<i32>(1774i, -22575i, 34409i, u_input.c.x)), u_input.c.x)), Struct_3(Struct_2(func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(arg_0, arg_0, u_input.c.x, u_input.c.x)), vec4<i32>(686i, u_input.c.x, 1i, 43802i), Struct_1(vec2<bool>(true, false), vec4<i32>(20728i, -47831i, 2098i, arg_0)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, u_input.c.x, -1i, arg_0)), Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.c.x, -7745i, u_input.c.x, 20589i))), -968f)).a.e, max(vec4<i32>(-17167i, -59549i, u_input.c.x, arg_0), select(vec4<i32>(arg_0, 2147483647i, -18760i, 19158i), vec4<i32>(arg_0, arg_0, 2147483647i, -82863i), false)), Struct_1(vec2<bool>(true, true), reverseBits(vec4<i32>(1i, u_input.c.x, 23289i, u_input.c.x))), Struct_1(vec2<bool>(true, true), ~vec4<i32>(-103217i, -1i, 1i, -53233i)), func_3(any(vec3<bool>(false, false, false)), _wgslsmith_mult_vec2_u32(u_input.a.xw, vec2<u32>(32627u, 0u)), vec3<u32>(0u, 37419u, 14839u), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(10671i, u_input.c.x, -38963i, arg_0)), vec4<i32>(arg_0, 1800i, arg_0, arg_0), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, arg_0, -7294i, arg_0)), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.c.x, arg_0, 2147483647i, -1i)), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, 2147483647i, 1i, -16125i))), 301f)))), _wgslsmith_f_op_f32(-func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.c.x, 48184i, 0i, arg_0)), vec4<i32>(arg_0, arg_0, u_input.c.x, -2147483647i), Struct_1(vec2<bool>(true, true), vec4<i32>(arg_0, arg_0, u_input.c.x, -20735i)), Struct_1(vec2<bool>(false, true), vec4<i32>(-7449i, u_input.c.x, arg_0, arg_0)), Struct_1(vec2<bool>(true, true), vec4<i32>(-26016i, -6906i, arg_0, 1i))), -431f)).b)));
    let var_1 = !var_0.c.a.x;
    var var_2 = _wgslsmith_f_op_f32(1f + -1309f);
    let var_3 = firstLeadingBit(vec3<u32>(1u, reverseBits(firstTrailingBit(u_input.d.x)) & ~(~0u), u_input.d.x));
    let var_4 = max(~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(15707u, var_3.x), ~0u)), u_input.b.x);
    return var_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_3(func_4(arg_0, arg_0.b.yxy, func_4(Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 0i) & arg_0.b), vec3<i32>(max(2147483647i, arg_0.b.x), ~arg_0.b.x, 2147483647i), func_2(Struct_3(Struct_2(Struct_1(arg_1.yy, vec4<i32>(0i, 2147483647i, -26702i, u_input.c.x)), vec4<i32>(arg_0.b.x, 40710i, u_input.c.x, 0i), Struct_1(arg_0.a, vec4<i32>(arg_0.b.x, u_input.c.x, -959i, 2147483647i)), Struct_1(arg_1.wz, arg_0.b), Struct_1(vec2<bool>(arg_1.x, true), vec4<i32>(-2147483647i, -28065i, 42875i, 2147483647i))), 682f)).a.d, Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), arg_0.b), arg_0.b, arg_0, arg_0, arg_0), _wgslsmith_f_op_f32(min(640f, -383f)))).c, Struct_3(func_2(Struct_3(Struct_2(arg_0, arg_0.b, arg_0, Struct_1(arg_0.a, vec4<i32>(-1i, 14087i, arg_0.b.x, 2147483647i)), arg_0), 1376f)).a, 941f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -148f), 374f, func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, u_input.c.x, 1i, arg_0.b.x)), arg_0.b, Struct_1(arg_1.yz, arg_0.b), Struct_1(arg_0.a, vec4<i32>(0i, arg_0.b.x, u_input.c.x, 0i)), Struct_1(arg_1.xx, arg_0.b)), 343f)).a.d.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(692f, -695f, true))))));
    var_0 = Struct_3(var_0.a, 978f);
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1.a.b;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(ceil(695f)), func_5(func_4(Struct_1(arg_1.e.a, arg_1.d.b), var_0.wwy, func_1(17268i), func_2(Struct_3(arg_1, -1012f))).a, !select(vec4<bool>(arg_0, arg_1.c.a.x, arg_1.d.a.x, true), vec4<bool>(arg_1.c.a.x, arg_0, arg_0, false), vec4<bool>(arg_1.a.a.x, false, true, arg_1.d.a.x))).b.x < (func_5(func_1(var_0.x), vec4<bool>(true, true, false, false)).b.x & -1i)));
    let var_2 = ~(~49324u);
    let var_3 = _wgslsmith_mult_u32(133436u, u_input.b.x);
    let var_4 = abs(vec3<u32>(firstLeadingBit(firstTrailingBit(~0u)), var_2, u_input.a.x));
    return Struct_3(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1520f, 420f), 1502f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -409f))))));
}

fn func_7(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(-func_3(u_input.b.x <= 33199u, u_input.b, vec3<u32>(1u, u_input.d.x, u_input.b.x), func_2(arg_1)).b.x ^ -arg_2.a.d.b.x, 47175i, -2147483647i);
    let var_1 = arg_1.a;
    let var_2 = func_4(arg_2.a.a, func_6(any(vec4<bool>(true, arg_1.a.d.b.x > 65737i, all(vec3<bool>(false, arg_2.a.d.a.x, arg_1.a.e.a.x)), false)), func_4(func_1(countOneBits(-1i)), vec3<i32>(arg_2.a.e.b.x, i32(-1i) * -2147483647i, u_input.c.x ^ arg_1.a.b.x), arg_1.a.d, arg_2)).a.e.b.xzw, arg_2.a.e, Struct_3(var_1, _wgslsmith_f_op_f32(-190f + _wgslsmith_div_f32(arg_1.b, arg_1.b))));
    var_0 = -44674i;
    var_0 = -2147483647i;
    return func_6(any(vec4<bool>(false, func_4(func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(arg_1.a.e.a.x, var_1.d.a.x), vec4<i32>(var_1.d.b.x, 2147483647i, var_1.c.b.x, -20966i)), vec4<i32>(69221i, arg_1.a.e.b.x, 134i, u_input.c.x), Struct_1(var_2.d.a, vec4<i32>(var_1.a.b.x, var_1.a.b.x, u_input.c.x, -2147483647i)), arg_1.a.a, Struct_1(var_2.c.a, vec4<i32>(10619i, u_input.c.x, var_1.d.b.x, 1i))), -1000f)).a.c, vec3<i32>(arg_2.a.d.b.x, arg_2.a.d.b.x, var_2.b.x), func_3(arg_0, u_input.d.zz, vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x), arg_1), arg_2).c.a.x, 0i <= func_3(arg_1.a.d.a.x, u_input.d.zz, u_input.d, Struct_3(Struct_2(var_1.c, vec4<i32>(var_1.d.b.x, var_2.d.b.x, 30319i, 53132i), Struct_1(vec2<bool>(false, arg_1.a.c.a.x), arg_2.a.e.b), Struct_1(var_1.d.a, arg_2.a.d.b), Struct_1(vec2<bool>(arg_0, false), var_2.e.b)), -569f)).b.x, false)), func_6(select(true, func_2(func_6(false, var_2)).a.e.a.x, arg_0), Struct_2(Struct_1(func_1(22134i).a, vec4<i32>(-1i, arg_1.a.c.b.x, arg_2.a.a.b.x, u_input.c.x)), func_4(var_1.a, arg_1.a.b.xxy, var_2.d, Struct_3(var_1, arg_1.b)).a.b, arg_2.a.a, Struct_1(arg_1.a.d.a, arg_2.a.c.b), Struct_1(arg_2.a.c.a, ~var_1.a.b))).a).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(47087u < max(~32710u & ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 71958u << (u_input.b.x % 32u))), func_6(true, Struct_2(Struct_1(vec2<bool>(true, true), ~vec4<i32>(u_input.c.x, u_input.c.x, 0i, -32511i)), min(countOneBits(vec4<i32>(16253i, 3472i, 2147483647i, -6253i)), vec4<i32>(-1i, u_input.c.x, -3275i, 1566i)), func_5(func_1(u_input.c.x), vec4<bool>(true, true, true, true)), func_5(func_5(Struct_1(vec2<bool>(false, false), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), func_3(all(vec3<bool>(true, true, true)), u_input.b, max(vec3<u32>(u_input.b.x, 0u, u_input.a.x), vec3<u32>(0u, u_input.a.x, u_input.a.x)), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, 9246i, -2147483647i), Struct_1(vec2<bool>(false, true), vec4<i32>(66138i, u_input.c.x, -72664i, 0i)), Struct_1(vec2<bool>(false, false), vec4<i32>(u_input.c.x, -1i, 16437i, -20369i)), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, u_input.c.x, u_input.c.x, -1i))), 427f))))), func_6((all(vec2<bool>(true, false)) || true) == any(vec3<bool>(true, true, true)), func_4(Struct_1(vec2<bool>(false, false), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -11245i, 74978i, -21371i), vec4<i32>(-13557i, -20107i, u_input.c.x, 2147483647i))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 1i, 2147483647i), vec3<i32>(-1i, u_input.c.x, -1i))), func_2(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(16154i, 24949i, u_input.c.x, u_input.c.x)), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(vec2<bool>(false, true), vec4<i32>(-22258i, -1i, u_input.c.x, u_input.c.x)), Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.c.x, u_input.c.x, 39191i, u_input.c.x)), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, u_input.c.x, -1i, u_input.c.x))), -1141f)).a.a, func_6(true, func_4(Struct_1(vec2<bool>(false, false), vec4<i32>(45541i, 1i, u_input.c.x, u_input.c.x)), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(vec2<bool>(true, true), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)), Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-35709i, u_input.c.x, u_input.c.x, 2147483647i)), vec4<i32>(u_input.c.x, -1i, -1i, 2147483647i), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -1i, u_input.c.x, u_input.c.x)), Struct_1(vec2<bool>(true, false), vec4<i32>(-20641i, u_input.c.x, u_input.c.x, 49281i)), Struct_1(vec2<bool>(false, false), vec4<i32>(-20927i, u_input.c.x, -30808i, u_input.c.x))), 559f))))));
    let var_1 = var_0.a.x;
    let var_2 = u_input.c.x;
    let var_3 = u_input.c.x;
    var var_4 = Struct_2(func_3(!select(var_1, select(false, var_0.a.x, true), 4294967295u <= u_input.b.x), select(u_input.a.yy, ~(~u_input.d.xy), true), u_input.a.yzy, func_6(true, func_6(var_1, Struct_2(var_0, vec4<i32>(u_input.c.x, -2147483647i, var_3, var_3), Struct_1(vec2<bool>(false, true), var_0.b), var_0, var_0)).a)), ~var_0.b, Struct_1(func_7(var_0.a.x, Struct_3(func_6(true, Struct_2(var_0, var_0.b, var_0, var_0, var_0)).a, _wgslsmith_f_op_f32(-316f + -773f)), func_6(func_7(var_1, Struct_3(Struct_2(var_0, var_0.b, Struct_1(vec2<bool>(var_0.a.x, var_1), vec4<i32>(-1i, 15801i, u_input.c.x, -34250i)), var_0, Struct_1(var_0.a, var_0.b)), 361f), Struct_3(Struct_2(var_0, vec4<i32>(var_3, -1i, -1766i, 67879i), var_0, var_0, Struct_1(vec2<bool>(var_1, var_0.a.x), vec4<i32>(var_3, u_input.c.x, var_2, var_0.b.x))), 1398f)).a.x, Struct_2(var_0, vec4<i32>(-1i, -14255i, var_0.b.x, 18846i), Struct_1(var_0.a, vec4<i32>(var_0.b.x, 2147483647i, u_input.c.x, var_2)), var_0, Struct_1(vec2<bool>(true, var_0.a.x), vec4<i32>(var_2, -30776i, u_input.c.x, 2147483647i))))).a, vec4<i32>(var_0.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(10111u, 15u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 9889u, u_input.d.x)) % 32u), -(~(-42194i)), i32(-1i) * -2147483647i, var_2)), var_0, var_0);
    let var_5 = 4294967295u;
    let var_6 = ~vec3<i32>(u_input.c.x, -var_2, ~var_0.b.x & ~_wgslsmith_div_i32(1i, var_0.b.x));
    var_4 = func_4(Struct_1(!var_4.a.a, max(vec4<i32>(~2147483647i, u_input.c.x, _wgslsmith_mult_i32(var_2, -34054i), func_7(var_1, Struct_3(Struct_2(var_4.d, vec4<i32>(var_2, var_6.x, -1i, -1i), var_0, var_0, var_4.a), 882f), Struct_3(Struct_2(Struct_1(vec2<bool>(var_4.a.a.x, var_4.a.a.x), var_0.b), vec4<i32>(u_input.c.x, -1i, u_input.c.x, -4889i), var_4.d, Struct_1(var_4.d.a, var_0.b), Struct_1(vec2<bool>(var_0.a.x, true), vec4<i32>(-1i, var_4.d.b.x, -1i, var_0.b.x))), -1744f)).b.x), vec4<i32>(abs(var_4.b.x), select(var_6.x, -1i, false), -2147483647i, var_2))), -abs(-vec3<i32>(var_0.b.x, -37408i, var_3)), var_0, Struct_3(func_2(func_2(func_6(var_0.a.x, Struct_2(var_0, var_4.d.b, Struct_1(var_0.a, var_0.b), Struct_1(var_0.a, vec4<i32>(-9462i, -28346i, 2147483647i, -8800i)), var_0)))).a, _wgslsmith_f_op_f32(f32(-1f) * -236f)));
    var_4 = Struct_2(var_0, vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_6.x, -11147i, -2147483647i, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_6.x, 51932i, 1i), var_0.b)), func_4(var_0, select(var_0.b.yzy, var_6, vec3<bool>(false, var_1, var_4.e.a.x)), func_3(true, u_input.b, u_input.a.zxw, Struct_3(Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(var_3, 2147483647i, 60983i, 9215i)), var_4.b, var_4.a, Struct_1(vec2<bool>(var_4.d.a.x, false), vec4<i32>(-25732i, -2147483647i, var_0.b.x, -1i)), var_0), -224f)), func_2(Struct_3(Struct_2(var_4.c, vec4<i32>(6701i, var_0.b.x, var_2, -14108i), var_4.e, Struct_1(vec2<bool>(var_0.a.x, var_4.c.a.x), var_4.e.b), Struct_1(vec2<bool>(true, true), var_4.d.b)), -256f))).b.x), ~8073i, 65364i), var_0, func_7(false, func_2(Struct_3(Struct_2(var_0, vec4<i32>(1i, 0i, u_input.c.x, -36004i), Struct_1(vec2<bool>(true, var_1), var_0.b), Struct_1(var_4.a.a, vec4<i32>(u_input.c.x, u_input.c.x, -41317i, 2147483647i)), var_0), _wgslsmith_div_f32(284f, -426f))), func_2(Struct_3(func_6(true, Struct_2(Struct_1(var_0.a, vec4<i32>(var_4.b.x, 18476i, var_2, -30761i)), vec4<i32>(0i, 29275i, var_3, var_4.d.b.x), var_0, Struct_1(var_0.a, vec4<i32>(var_0.b.x, u_input.c.x, var_3, var_0.b.x)), Struct_1(var_0.a, var_0.b))).a, -866f))), Struct_1(!vec2<bool>(var_1 & var_1, var_5 > 35751u), -_wgslsmith_mod_vec4_i32(vec4<i32>(93434i, -15367i, var_0.b.x, var_0.b.x) | var_0.b, var_4.e.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(u_input.d.zz, u_input.d.xy), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 740f, 792f, -944f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -166f, -1877f, 1000f) + vec4<f32>(661f, 551f, -123f, -731f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(122f - -1663f), _wgslsmith_f_op_f32(max(584f, -1000f)), 1f, _wgslsmith_f_op_f32(select(1000f, -565f, var_4.c.a.x))))), var_0.a.x)));
}

