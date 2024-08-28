struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> u32 {
    return 1u;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2084f), _wgslsmith_f_op_f32(round(arg_1.c.b.x)), -1550f), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_1.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1869f + arg_1.c.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.b.x + arg_1.c.b.x) - _wgslsmith_f_op_f32(799f + arg_1.c.b.x))))));
    let var_1 = arg_1.d;
    var var_2 = all(vec3<bool>(true, arg_1.c.c, false));
    return vec4<i32>(22622i, firstTrailingBit(_wgslsmith_mod_i32(-(i32(-1i) * -1i), _wgslsmith_dot_vec2_i32(~arg_1.c.a.zx, ~u_input.c.wy))), _wgslsmith_dot_vec3_i32(max(-(~vec3<i32>(u_input.a.x, 0i, -2147483647i)), arg_1.c.e), -arg_1.c.a.yxz), arg_0 | _wgslsmith_mult_i32(arg_2, arg_1.c.a.x));
}

fn func_2() -> bool {
    let var_0 = u_input.c;
    var var_1 = _wgslsmith_clamp_vec4_i32(func_4(reverseBits(_wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(u_input.c.x, u_input.a.x))), Struct_4(Struct_3(vec3<bool>(false, true, true), 3058u, u_input.a.x, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), _wgslsmith_add_u32(0u, u_input.b.x)), var_0.x, Struct_1(vec4<i32>(37541i, u_input.a.x, 2147483647i, var_0.x) | vec4<i32>(2147483647i, 2147483647i, u_input.c.x, u_input.a.x), vec4<f32>(-534f, 410f, 177f, -1000f), u_input.b.x > u_input.b.x, max(vec3<u32>(0u, u_input.b.x, 4294967295u), vec3<u32>(u_input.d.x, 4294967295u, 67675u)), select(vec3<i32>(8035i, -2147483647i, 38193i), u_input.c.yxw, false)), any(vec3<bool>(false, false, false)), -2147483647i), -(i32(-1i) * -4933i), ~func_3(_wgslsmith_mod_i32(1i, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-654f, 622f, -1000f)), u_input.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.x, var_0.x, var_0.x), firstLeadingBit(vec3<i32>(47417i, var_0.x, var_0.x))), i32(-1i) * -2901i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, 0i), _wgslsmith_sub_vec2_i32(u_input.c.wy, vec2<i32>(5703i, -2147483647i))), ~func_4(var_0.x, Struct_4(Struct_3(vec3<bool>(true, false, false), u_input.d.x, -55438i, vec3<bool>(false, true, true), u_input.d.x), -106924i, Struct_1(var_0, vec4<f32>(171f, -962f, 151f, 1000f), false, u_input.d, u_input.a), true, var_0.x), u_input.a.x, 27930u).yz), var_0.x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.yxz, max(vec3<i32>(u_input.c.x, -1i, u_input.a.x) ^ vec3<i32>(var_0.x, -51665i, -5257i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, -27548i), vec3<i32>(var_0.x, u_input.c.x, var_0.x)))), -1i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c.x, u_input.a.x) & -u_input.a.x, -u_input.c.x), _wgslsmith_mod_i32(~firstTrailingBit(var_0.x), u_input.c.x)));
    let var_2 = Struct_2(_wgslsmith_mult_u32(58655u, ~firstTrailingBit(~0u)));
    var var_3 = select(vec4<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true)), var_0.x < _wgslsmith_sub_i32(func_4(1522i, Struct_4(Struct_3(vec3<bool>(false, true, true), 11490u, var_1.x, vec3<bool>(true, false, false), 1u), var_1.x, Struct_1(vec4<i32>(u_input.c.x, var_0.x, -2147483647i, var_1.x), vec4<f32>(-101f, 1704f, -276f, 1306f), true, u_input.b.xxx, vec3<i32>(1i, u_input.c.x, var_1.x)), false, var_1.x), var_0.x, 4294967295u).x, _wgslsmith_div_i32(u_input.a.x, 1i)), true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, select(true, false, false), true), true), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(false, true, any(vec2<bool>(true, false)), any(vec3<bool>(true, true, false)))), vec4<bool>(true, true, true, true)), !select(vec4<bool>(u_input.d.x < 122631u, true, any(vec2<bool>(true, false)), false), vec4<bool>(true, true, true, true), true));
    var_3 = select(!vec4<bool>(false, var_3.x, true, any(var_3.xxz)), vec4<bool>(!(var_2.a > 0u), var_3.x, all(select(var_3.yyy, var_3.wzx, select(vec3<bool>(false, false, var_3.x), vec3<bool>(false, true, false), vec3<bool>(var_3.x, var_3.x, var_3.x)))), var_3.x), !(!all(select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), vec4<bool>(true, var_3.x, true, var_3.x), vec4<bool>(var_3.x, false, false, true)))));
    return var_3.x;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = -countOneBits(u_input.a.x);
    return select(false, !func_2(), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec4<bool>(func_1(_wgslsmith_mult_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, 4294967295u))), ~u_input.b.x > max(u_input.d.x, u_input.d.x), all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, false, true))));
    var var_1 = Struct_4(Struct_3(vec3<bool>(!var_0.x, true, !var_0.x), _wgslsmith_mult_u32(8061u, u_input.d.x) >> (_wgslsmith_div_u32(u_input.d.x, ~u_input.b.x) % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-6825i, u_input.c.x, u_input.c.x), max(vec3<i32>(-2147483647i, 48075i, u_input.c.x), u_input.c.xxw)), 1i), var_0.ywx, 1u), u_input.a.x, Struct_1(vec4<i32>(reverseBits(u_input.a.x), 72927i, -1i, _wgslsmith_div_i32(1287i, i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1287f, _wgslsmith_f_op_f32(trunc(-2623f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1588f))), var_0.x, u_input.b.wxw, ~select(vec3<i32>(u_input.a.x, u_input.a.x, -31785i), u_input.c.wwz, var_0.xyz)), true, 45000i);
    var_1 = Struct_4(var_1.a, var_1.b, var_1.c, !(func_3(_wgslsmith_dot_vec4_i32(var_1.c.a, u_input.c), var_1.c.b.yxw, min(vec4<u32>(1u, 3540u, var_1.c.d.x, 0u), u_input.b)) >= ~firstLeadingBit(0u)), u_input.c.x);
    var var_2 = vec3<u32>(func_3(-14505i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) + -2872f), _wgslsmith_f_op_f32(max(-1851f, var_1.c.b.x)), -1000f), vec4<u32>(0u | var_1.a.e, ~(~104251u), var_1.a.b, ~(1u | var_1.a.b))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.b, 72888u, _wgslsmith_clamp_u32(0u, u_input.d.x, u_input.d.x), ~0u), vec4<u32>(~0u, u_input.b.x, u_input.b.x | 1u, var_1.c.d.x)), abs(u_input.b)), ((1u >> (u_input.b.x % 32u)) & 17055u) >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b.x, 1u), vec2<u32>(u_input.b.x, 20320u), var_1.a.d.zz), vec2<u32>(55829u, 0u))) % 32u));
    let var_3 = Struct_3(vec3<bool>(any(!var_1.a.d), any(var_0.wzz), false), _wgslsmith_sub_u32(~74989u, u_input.d.x), countOneBits(-1i), var_0.yxw, ~var_1.a.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, 93222u), 28182u), vec2<u32>(~39320u, u_input.b.x), ~vec2<u32>(1u, var_2.x))), i32(-1i) * -36382i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -474f, 1337f, -1000f), vec4<f32>(-870f, var_1.c.b.x, 270f, var_1.c.b.x), var_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, var_1.c.b.x, -611f, var_1.c.b.x))) + _wgslsmith_f_op_vec4_f32(-var_1.c.b)))));
}

