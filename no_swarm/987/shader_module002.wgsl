struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = select(_wgslsmith_sub_u32(u_input.b, abs(arg_1.x)), 1u, false);
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(sign(arg_0));
    var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(var_0 << (23562u % 32u), abs(u_input.b << (countOneBits(u_input.c.x) % 32u))), vec2<u32>(~var_0, ~((59773u >> (arg_1.x % 32u)) & arg_1.x)));
    let var_3 = Struct_4(Struct_3(vec3<i32>(-1i) * -vec3<i32>(-14291i, -1i, u_input.a), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, select(false, false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), u_input.a > u_input.a)), ~abs(vec4<i32>(-2147483647i, u_input.a, 2147483647i, u_input.a)) ^ min(max(vec4<i32>(-1i, -1582i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(32446i, u_input.a, -1i, 0i))), Struct_2(arg_1.zy, _wgslsmith_mult_i32(0i, -1i), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * arg_0))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, true)), arg_1.x, 57205u, reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_div_i32(abs(~29977i), reverseBits(~40536i))), ~(~abs(arg_1.xwx)), _wgslsmith_clamp_vec2_u32(abs(reverseBits(vec2<u32>(1u, var_0) << (u_input.c.yx % vec2<u32>(32u)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), min(arg_1.yw, vec2<u32>(25884u, 101827u)), arg_1.xz), select(_wgslsmith_div_vec2_u32(vec2<u32>(100189u, 0u), vec2<u32>(1u, 96608u)), u_input.c.xy, true), vec2<u32>(9444u, ~4294967295u)), u_input.c.yz), select(vec4<u32>(33938u, (u_input.c.x | 16356u) << (36532u % 32u), 86057u, 0u), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(arg_1.x, var_0, 49857u)), firstTrailingBit(min(12503u, 4294967295u)), ~(~1175u), 0u), all(vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, false))))));
    return _wgslsmith_clamp_vec3_i32(var_3.a.a, var_3.a.a, firstTrailingBit(max(~var_3.a.c.xyy, var_3.b.c.e) >> (_wgslsmith_add_vec3_u32(arg_1.xxx, _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_3.d.x, 11273u), u_input.c.zyy)) % vec3<u32>(32u))));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * 1f), arg_3.b, 73091u, arg_0.b.d, abs(~(~func_3(-1737f, u_input.c))));
    let var_1 = -1184f;
    let var_2 = arg_3.e;
    let var_3 = _wgslsmith_mod_i32(~(-_wgslsmith_div_i32(arg_0.b.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.e.x, 1i), arg_3.e.yy))), _wgslsmith_mod_i32(var_2.x << (arg_2.d % 32u), var_0.e.x));
    var_0 = arg_2;
    return vec4<bool>(arg_3.d < ~firstTrailingBit(~arg_3.c), select(arg_2.b.x, _wgslsmith_dot_vec2_i32(arg_2.e.xx, reverseBits(vec2<i32>(30911i, u_input.a))) < ~(-1i), var_0.d >= var_0.d), select(any(!select(arg_3.b, vec2<bool>(var_0.b.x, false), vec2<bool>(false, true))), arg_3.b.x, arg_2.b.x), true);
}

fn func_4(arg_0: bool) -> Struct_3 {
    return Struct_3(reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, 0i, 0i)), vec3<i32>(0i, u_input.a, u_input.a)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 2901u, 1u) | vec3<u32>(1u, 92387u, u_input.b), vec3<u32>(74353u, 4294967295u, 1u)) % vec3<u32>(32u))), vec2<bool>(true, true), _wgslsmith_mod_vec4_i32(select(~vec4<i32>(u_input.a, 2147483647i, u_input.a, 33434i), ~vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), func_2(Struct_5(1000f, Struct_1(-1000f, vec2<bool>(arg_0, false), u_input.c.x, u_input.b, vec3<i32>(u_input.a, -294i, u_input.a)), u_input.a, Struct_3(vec3<i32>(-1i, u_input.a, -2867i), vec2<bool>(true, true), vec4<i32>(-8832i, 0i, u_input.a, 2147483647i)), Struct_2(vec2<u32>(62277u, 29426u), 28071i, Struct_1(-1000f, vec2<bool>(false, false), u_input.c.x, 29734u, vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a)), vec3<f32>(-1752f, 785f, -120f), Struct_1(-2945f, vec2<bool>(arg_0, false), u_input.b, u_input.b, vec3<i32>(0i, u_input.a, 1i)), Struct_1(-1704f, vec2<bool>(arg_0, true), 11582u, 19188u, vec3<i32>(u_input.a, -9854i, u_input.a)))), ~vec4<i32>(_wgslsmith_mult_i32(0i, u_input.a), 0i, u_input.a, 1i)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -717f))))), vec3<f32>(_wgslsmith_f_op_f32(-121f - var_0.a), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1384f - -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - -1016f))))))));
    let var_2 = _wgslsmith_mod_i32(~var_0.e.x | _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, -36776i) ^ _wgslsmith_dot_vec2_i32(arg_0.e.xx, var_0.e.xy), _wgslsmith_div_i32(~(-42214i), arg_0.e.x)), arg_0.e.x << (arg_1.x % 32u));
    let var_3 = func_4(all(vec3<bool>(var_0.b.x, !(!arg_0.b.x), any(func_2(Struct_5(var_0.a, Struct_1(1745f, var_0.b, var_0.c, 53974u, vec3<i32>(-20512i, var_0.e.x, -1i)), 2147483647i, Struct_3(arg_0.e, vec2<bool>(false, true), vec4<i32>(var_2, 29526i, var_2, u_input.a)), Struct_2(vec2<u32>(arg_1.x, 25646u), -2147483647i, Struct_1(arg_0.a, arg_0.b, 54806u, var_0.c, vec3<i32>(1i, u_input.a, 2147483647i)), -2147483647i)), vec3<f32>(var_0.a, arg_0.a, arg_0.a), var_0, var_0)))));
    var var_4 = Struct_4(var_3, Struct_2(_wgslsmith_sub_vec2_u32(~(vec2<u32>(23693u, 1u) >> (u_input.c.yx % vec2<u32>(32u))), ~(arg_1.yw & vec2<u32>(1u, 60879u))), -(~32271i), arg_0, ~var_3.a.x), vec3<u32>(37791u, arg_0.c, select(arg_0.c ^ arg_0.c, select(46240u, 4294967295u, false), var_0.a == arg_0.a) & ~1u), ~(~arg_1.yy), ~(~vec4<u32>(var_0.d << (49547u % 32u), _wgslsmith_mult_u32(37561u, 17285u), max(var_0.d, arg_1.x), ~u_input.c.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 501f) * var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1221f, _wgslsmith_f_op_f32(round(-1593f)), _wgslsmith_div_f32(-1456f, 1000f), -337f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, 1417f, 599f, -184f)) + vec4<f32>(-1266f, -474f, 1463f, -1210f))), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f - _wgslsmith_f_op_f32(f32(-1f) * -1746f))), -1903f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-1223f, vec2<bool>(false, true), u_input.b, u_input.b, vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<u32>(0u, u_input.c.x, u_input.b, 0u))), _wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(234f + 512f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1115f)))), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), !(!(1u != u_input.c.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -162f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, -464f, var_0.x, -589f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, -281f, 997f, -539f)), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1177f, 1125f, var_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(467f, var_0.x, -202f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, false))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(286f, var_0.x, 566f, -848f), vec4<f32>(553f, var_0.x, var_0.x, 585f)))))));
    var var_1 = -1302f;
    var var_2 = Struct_4(Struct_3(vec3<i32>(i32(-1i) * -8433i, ~u_input.a, -u_input.a) & vec3<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, 33756i), 8041i), vec2<bool>(true, true), _wgslsmith_mod_vec4_i32(func_4(true).c ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, 28793i), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -13874i, u_input.a, 15978i), vec4<i32>(-2147483647i, 4656i, 35003i, 36961i)), firstTrailingBit(vec4<i32>(-1i, -15235i, u_input.a, 1i))))), Struct_2(vec2<u32>(~u_input.c.x, 0u), i32(-1i) * -14317i, Struct_1(-2366f, func_4(all(vec2<bool>(true, false))).b, u_input.b, u_input.b, vec3<i32>(u_input.a, u_input.a, 2147483647i) | (vec3<i32>(u_input.a, 1i, u_input.a) << (vec3<u32>(u_input.c.x, 0u, 4294967295u) % vec3<u32>(32u)))), 1i), _wgslsmith_mult_vec3_u32(u_input.c.wyw, vec3<u32>(1u, u_input.c.x, u_input.b)), countOneBits(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u))), vec4<u32>(_wgslsmith_clamp_u32(67710u, 62148u, 54148u), u_input.c.x & select(firstTrailingBit(16078u), firstTrailingBit(u_input.c.x), true), ~4294967295u ^ u_input.c.x, ~_wgslsmith_div_u32(reverseBits(0u), 31555u)));
    var var_3 = !select(vec4<bool>(!var_2.b.c.b.x, true && var_2.a.b.x, !(!var_2.a.b.x), select(!var_2.b.c.b.x, var_2.b.c.b.x, false)), select(select(func_2(Struct_5(var_0.x, var_2.b.c, 13391i, var_2.a, var_2.b), var_0.wwy, var_2.b.c, Struct_1(162f, var_2.a.b, u_input.c.x, 12635u, var_2.b.c.e)), func_2(Struct_5(var_0.x, var_2.b.c, u_input.a, var_2.a, Struct_2(var_2.c.zx, var_2.b.d, var_2.b.c, 2147483647i)), var_0.zwz, var_2.b.c, var_2.b.c), false), vec4<bool>(true == var_2.a.b.x, func_2(Struct_5(var_2.b.c.a, Struct_1(-893f, var_2.b.c.b, 27452u, 104678u, var_2.a.a), -18482i, Struct_3(vec3<i32>(var_2.b.c.e.x, -2147483647i, var_2.a.a.x), var_2.a.b, var_2.a.c), var_2.b), var_0.xyw, Struct_1(var_0.x, var_2.b.c.b, var_2.e.x, 4176u, vec3<i32>(4019i, 14739i, -1i)), Struct_1(865f, vec2<bool>(true, var_2.b.c.b.x), u_input.b, 4294967295u, var_2.a.c.zzw)).x, var_2.b.c.b.x | var_2.b.c.b.x, var_2.c.x >= 17858u), var_2.b.c.b.x), all(func_4(var_2.b.c.a >= var_0.x).b));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.c.a), -1567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f - var_0.x)), var_0.x))));
    var_3 = !(!(!(!(!vec4<bool>(true, true, false, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1490i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.a, var_0.x, -1000f, -1000f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.c.a, -1037f, -442f, -207f) * vec4<f32>(-600f, 170f, -772f, -567f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2061f, 1000f, 602f, var_2.b.c.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -511f)));
}

