struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = firstTrailingBit(~_wgslsmith_clamp_u32(u_input.a.x, 1771u, ~22981u));
    var var_1 = _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_add_u32(1u, u_input.a.x));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(min(-645f, -1507f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(round(-1126f)))))));
    let var_3 = Struct_2(Struct_1(~min(min(vec3<u32>(1u, 13833u, u_input.a.x), vec3<u32>(u_input.a.x, 50344u, 44025u)), vec3<u32>(1848u, u_input.a.x, 1u)), -reverseBits(-vec4<i32>(0i, -24292i, 12319i, 43341i))), Struct_1(~(~(vec3<u32>(u_input.a.x, u_input.a.x, 0u) ^ vec3<u32>(u_input.a.x, 70435u, 4294967295u))), select(firstTrailingBit(vec4<i32>(-2147483647i, 0i, -78499i, 7437i)) ^ vec4<i32>(-3641i, 2147483647i, -1i, 37534i), -abs(vec4<i32>(1i, 2147483647i, 0i, -2147483647i)), true)), Struct_1(vec3<u32>(min(0u, 4294967295u), u_input.a.x, 4294967295u), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(abs(vec4<i32>(-1i, 2147483647i, -36002i, -2147483647i))))), !vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !all(vec3<bool>(false, true, false))));
    var var_4 = Struct_1(reverseBits(var_3.c.a), vec4<i32>(var_3.a.b.x, _wgslsmith_add_i32(_wgslsmith_mod_i32(var_3.a.b.x, var_3.b.b.x) & -2147483647i, 1i), _wgslsmith_mult_i32(1i, 0i), 1i));
    return 1i;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<bool>(true, (0u ^ _wgslsmith_mult_u32(~43778u, _wgslsmith_mult_u32(u_input.a.x, 3619u))) < abs(~87291u), true);
    var var_1 = Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, ~77897u, 27222u), vec4<i32>(func_3(), 2147483647i << (u_input.a.x % 32u), 1i, abs(2147483647i))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 17054u), vec3<u32>(u_input.a.x, 19531u, u_input.a.x)), select(_wgslsmith_add_vec4_i32(vec4<i32>(19858i, 49235i, 1i, 16418i), vec4<i32>(-14615i, 1i, -2147483647i, -14547i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(var_0.x, var_0.x, var_0.x, false))), Struct_1(firstLeadingBit(max(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(4850u, 95547u, 66239u))), vec4<i32>(1i, -1i, 0i, 2147483647i) << (~vec4<u32>(6742u, 4620u, u_input.a.x, 51547u) % vec4<u32>(32u))), vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(303f)) < -1466f)), var_0.x | true, select(!vec3<bool>(any(vec2<bool>(var_0.x, var_0.x)), u_input.a.x != 40411u, var_0.x), select(vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), true, true), vec3<bool>(!var_0.x, var_0.x, true), all(!vec4<bool>(var_0.x, false, true, var_0.x))), false), ~min(select(countOneBits(vec3<u32>(4294967295u, u_input.a.x, 1u)), abs(vec3<u32>(u_input.a.x, u_input.a.x, 9767u)), vec3<bool>(false, var_0.x, false)), max(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))));
    let var_2 = Struct_3(Struct_2(Struct_1(abs(~vec3<u32>(u_input.a.x, 4447u, 1u)), var_1.a.c.b), Struct_1(firstTrailingBit(vec3<u32>(u_input.a.x, 1u, var_1.a.b.a.x) | var_1.d), firstLeadingBit(vec4<i32>(1i, var_1.a.c.b.x, var_1.a.c.b.x, var_1.a.a.b.x) | var_1.a.b.b)), var_1.a.c, var_1.a.d), true, select(select(var_1.c, !(!vec3<bool>(var_0.x, true, var_1.a.d.x)), select(!vec3<bool>(true, true, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), var_1.c, var_1.c), any(vec4<bool>(true, false, var_0.x, var_0.x)))), vec3<bool>(!var_1.c.x, !any(vec3<bool>(var_1.c.x, var_1.a.d.x, true)), any(vec2<bool>(var_0.x, true))), select(select(var_1.c, select(var_1.c, var_1.c, var_0.x), select(vec3<bool>(var_0.x, false, var_1.a.d.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), !var_1.c, select(var_1.c, !vec3<bool>(var_1.a.d.x, var_1.c.x, var_0.x), vec3<bool>(false, true, var_1.b)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(7380u, _wgslsmith_dot_vec2_u32(~var_1.d.yy, u_input.a), select(var_1.a.a.a.x, 0u, var_0.x & var_0.x)), max(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.d, vec3<u32>(u_input.a.x, u_input.a.x, var_1.d.x)), vec3<u32>(0u, u_input.a.x, 55196u)), abs(max(vec3<u32>(78707u, 51969u, 39432u), vec3<u32>(var_1.a.a.a.x, var_1.d.x, var_1.d.x)))), select(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.d, vec3<u32>(var_1.d.x, u_input.a.x, u_input.a.x), var_1.d), _wgslsmith_add_vec3_u32(var_1.a.b.a, var_1.a.a.a), vec3<u32>(53562u, u_input.a.x, var_1.a.a.a.x)), abs(select(vec3<u32>(var_1.a.a.a.x, 2023u, 74390u), var_1.a.c.a, var_0.x)), vec3<bool>(true, true, true))));
    var var_3 = -var_1.a.a.b.wzw;
    let var_4 = Struct_2(Struct_1(~var_1.a.a.a, var_2.a.c.b), Struct_1(_wgslsmith_clamp_vec3_u32(var_1.d >> (~vec3<u32>(13183u, var_1.a.c.a.x, var_1.d.x) % vec3<u32>(32u)), var_1.a.b.a & max(vec3<u32>(4294967295u, var_1.a.c.a.x, 1u), vec3<u32>(0u, 4520u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.b.a.x, 6427u, u_input.a.x), var_2.a.c.a, var_1.a.b.a)), vec4<i32>(1i, ~1i, 2349i, _wgslsmith_clamp_i32(var_3.x, 8163i, _wgslsmith_dot_vec4_i32(var_1.a.c.b, var_2.a.b.b)))), var_2.a.b, vec2<bool>(!(var_0.x | (true && var_2.c.x)), true));
    return var_4;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    let var_0 = arg_0.c.x;
    let var_1 = func_2();
    let var_2 = -259f;
    let var_3 = arg_3.a.a.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, 1200f, var_2)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) + vec3<f32>(552f, 692f, 1000f))))))));
    return vec4<i32>(reverseBits(-32299i), 49258i, min(-77837i, ~33973i) >> (_wgslsmith_dot_vec3_u32(~arg_1.a, countOneBits(arg_3.a.a)) % 32u), firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_1.b.yw, vec2<i32>(-44694i, -2147483647i)), arg_2.a.c.b.x))) | var_1.a.b;
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-215f, -922f, -516f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(154f, 710f, 647f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1067f, -439f, -587f) + vec3<f32>(577f, -165f, -1897f)), _wgslsmith_div_vec3_f32(vec3<f32>(366f, 488f, 2999f), vec3<f32>(1460f, 119f, -164f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1174f, -874f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1258f, -1542f, -494f))), vec3<bool>(true, arg_0.c.x & arg_0.c.x, true))))));
    let var_1 = abs(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(select(~vec4<i32>(39997i, -35687i, arg_0.a.c.b.x, arg_0.a.b.b.x), vec4<i32>(arg_0.a.c.b.x, arg_0.a.a.b.x, 0i, arg_0.a.a.b.x), all(vec4<bool>(false, arg_0.b, true, arg_0.c.x))), func_4(arg_0, arg_0.a.c, arg_0, func_2())), vec4<i32>(select(-arg_0.a.a.b.x, ~(-63732i), false), arg_0.a.c.b.x, -arg_0.a.c.b.x, arg_0.a.b.b.x)));
    var var_2 = 95057u;
    let var_3 = !(!select(func_2().d, select(!vec2<bool>(arg_0.a.d.x, false), vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.c.x, arg_0.a.d.x)), !arg_0.c.zz));
    let var_4 = Struct_1(~(_wgslsmith_mult_vec3_u32(~vec3<u32>(49550u, 4294967295u, arg_0.a.c.a.x), arg_0.d << (arg_0.d % vec3<u32>(32u))) ^ ~arg_0.d), vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0.a.c.b.x, arg_0.a.b.b.x), _wgslsmith_mult_i32(0i, 1i)), var_1.zx << (arg_0.d.yy % vec2<u32>(32u))), func_4(Struct_3(func_2(), var_3.x, arg_0.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(38745u, 0u, 4294967295u), arg_0.a.b.a, vec3<u32>(u_input.a.x, arg_0.a.c.a.x, u_input.a.x))), Struct_1(firstTrailingBit(arg_0.d), arg_0.a.b.b >> (vec4<u32>(0u, arg_0.d.x, 1u, 45733u) % vec4<u32>(32u))), Struct_3(arg_0.a, false, !vec3<bool>(var_3.x, var_3.x, arg_0.b), max(arg_0.a.c.a, arg_0.a.c.a)), func_2()).x, -4179i >> (1u % 32u)));
    return ~(-reverseBits(abs(var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-1083f - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-554f, _wgslsmith_div_f32(-2339f, 1045f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1252f)) * _wgslsmith_f_op_f32(ceil(-2144f)))))));
    var var_2 = 1i;
    var_2 = -44456i;
    var_2 = 1i;
    var_0 = u_input.a.x;
    let var_3 = Struct_1(max(vec3<u32>(~u_input.a.x, 41614u, u_input.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(48789u, 4294967295u, 46849u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(24660u, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 46612u)) % vec3<u32>(32u))) & vec3<u32>(u_input.a.x, _wgslsmith_div_u32(countOneBits(0u), firstLeadingBit(7551u)), ~340u), vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -1909i, -15878i, -24653i), firstLeadingBit(vec4<i32>(20110i, -15770i, -2147483647i, 59527i))), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-1i, 10141i)), _wgslsmith_add_i32(func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec4<i32>(-2147483647i, -33155i, -1i, 15705i)), Struct_1(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec4<i32>(11163i, -15142i, -49317i, 2947i)), Struct_1(vec3<u32>(4294967295u, u_input.a.x, 1u), vec4<i32>(-37555i, 1i, 24056i, -12780i)), vec2<bool>(false, false)), false, vec3<bool>(true, true, false), vec3<u32>(4294967295u, u_input.a.x, 60681u))), i32(-1i) * -2147483647i), 49962i) | vec4<i32>(_wgslsmith_mult_i32(0i, i32(-1i) * -2147483647i), i32(-1i) * -4902i, _wgslsmith_add_i32(1i, func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(0u, 12662u, u_input.a.x), vec4<i32>(0i, -2147483647i, -847i, 0i)), Struct_1(vec3<u32>(38416u, 4294967295u, u_input.a.x), vec4<i32>(1i, -14840i, 0i, 1i)), Struct_1(vec3<u32>(u_input.a.x, 13068u, u_input.a.x), vec4<i32>(6417i, 12185i, 59934i, -2147483647i)), vec2<bool>(true, false)), true, vec3<bool>(true, false, true), vec3<u32>(0u, u_input.a.x, u_input.a.x)))), func_1(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-52298i, 14766i, -14432i, 2147483647i)), Struct_1(vec3<u32>(8311u, 18970u, u_input.a.x), vec4<i32>(75479i, -1i, 0i, 8869i)), Struct_1(vec3<u32>(4294967295u, u_input.a.x, 0u), vec4<i32>(56673i, 29040i, -1803i, 40268i)), vec2<bool>(false, true)), true, vec3<bool>(true, false, false), vec3<u32>(0u, 0u, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstTrailingBit(1u), 0u, 17197u & abs(u_input.a.x), _wgslsmith_dot_vec3_u32(var_3.a, var_3.a)));
}

