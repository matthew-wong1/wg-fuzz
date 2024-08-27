struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_3(arg_1.b, u_input.c.xz, vec3<i32>(~2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.e, u_input.c.x) & _wgslsmith_sub_i32(u_input.c.x, arg_1.c), 1i), arg_1.c));
    var_0 = Struct_3(arg_1.b, vec2<i32>(reverseBits(1i), -firstTrailingBit(0i)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, 20315u), ~arg_1.d.x), vec2<u32>(_wgslsmith_sub_u32(arg_1.d.x, u_input.d.x), 1u)) % vec2<u32>(32u)), min(var_0.c, ~max(~u_input.c, vec3<i32>(1i, u_input.b, arg_0))));
    var var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(arg_1.d.x, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), min(u_input.d.xx, u_input.d.yy))), arg_1.d.x, arg_1.d.x, u_input.d.x >> (_wgslsmith_add_u32(abs(16214u), u_input.d.x) % 32u));
    var var_2 = ~3296u;
    var var_3 = vec4<i32>(-1i, abs(2147483647i), _wgslsmith_add_i32(arg_0, 31326i), 1i);
    return vec3<bool>(any(!vec4<bool>(any(vec4<bool>(true, arg_1.b.a.x, arg_1.b.a.x, true)), arg_1.b.a.x | var_0.a.a.x, select(false, false, var_0.a.a.x), false)), true, var_0.a.a.x);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(select(func_3(firstLeadingBit(u_input.e), Struct_2(arg_0, Struct_1(vec3<bool>(arg_3.b, true, arg_1.x)), u_input.a, u_input.d.xyx)), vec3<bool>(arg_1.x, arg_1.x, true), true)), -u_input.c.xx, -min(~vec3<i32>(24320i, arg_3.a, -8841i), u_input.c) | vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-41536i, arg_3.a), 17999i, -1i), u_input.b, u_input.e));
    var var_1 = min(u_input.d.wx, ((~u_input.d.yx & ~vec2<u32>(34865u, 50997u)) << (u_input.d.xy % vec2<u32>(32u))) << (vec2<u32>(~1u, abs(u_input.d.x << (4294967295u % 32u))) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-945f - -1981f);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - arg_0), Struct_1(vec3<bool>(arg_1.x, !(u_input.d.x < 52566u), !(false && arg_3.c.x))), arg_3.a, reverseBits(u_input.d.yzz) & ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.wyy, vec3<u32>(4895u, 4294967295u, u_input.d.x)), select(vec3<u32>(44690u, 5099u, 4294967295u), vec3<u32>(4294967295u, var_1.x, 1u), arg_1.x)));
    let var_4 = -var_0.c;
    return Struct_3(Struct_1(var_3.b.a), -u_input.c.yz, firstLeadingBit(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(0i, 2147483647i, 0i)), ~vec3<i32>(u_input.c.x, 0i, 44894i), -var_0.c)) & _wgslsmith_add_vec3_i32(vec3<i32>(var_4.x, ~var_0.c.x, -11784i), var_4));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(abs(634f)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, true)), abs(23157u), Struct_4(u_input.a, _wgslsmith_clamp_i32(-u_input.e, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), _wgslsmith_div_i32(-24996i, -10763i)) > -33818i, select(vec2<bool>(true, u_input.a != 1i), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), false));
    var var_1 = all(vec3<bool>(!any(var_0.a.a), any(func_3(-33505i, Struct_2(1000f, Struct_1(vec3<bool>(false, false, var_0.a.a.x)), 2147483647i, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))).zz), any(vec4<bool>(false, u_input.d.x < arg_0, var_0.a.a.x || var_0.a.a.x, var_0.a.a.x | false))));
    let var_2 = var_0.a.a.x;
    let var_3 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, -2147483647i), u_input.c.zy), ~(~(-2147483647i)), u_input.a, ~u_input.c.x), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, max(var_0.c.x, u_input.a)), 1i, -1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_0.c.x, var_0.c.x, 2147483647i), vec4<i32>(12663i, var_0.b.x, var_0.c.x, -1i)), ~vec4<i32>(19425i, 6161i, -38129i, -8092i)))));
    let var_4 = Struct_2(1f, var_0.a, -1i, ~u_input.d.wxz);
    return _wgslsmith_f_op_f32(-413f + _wgslsmith_div_f32(-939f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1018f), var_4.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~46505u, u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(26143u, _wgslsmith_mod_u32(u_input.d.x, 52219u), u_input.d.x), u_input.d.yzw), 0u);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1298f * 1309f), -1449f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-901f * 235f) - _wgslsmith_f_op_f32(func_1(var_0.x))))), _wgslsmith_f_op_f32(f32(-1f) * -295f)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.x))) * -1029f), func_3(abs(~(-1i)), Struct_2(-159f, Struct_1(vec3<bool>(true, false, true)), ~u_input.b, _wgslsmith_div_vec3_u32(u_input.d.zwy, var_0.wxy))).xy, 0u, Struct_4(min(_wgslsmith_div_i32(1i, -1i), 0i), all(vec2<bool>(false, false)) && true, vec2<bool>(false, true), func_2(_wgslsmith_f_op_f32(-338f * 1626f), vec2<bool>(true, true), _wgslsmith_mult_u32(var_0.x, 25177u), Struct_4(23264i, false, vec2<bool>(true, true), false)).a.a.x)).a, -(~(-_wgslsmith_add_i32(u_input.e, -2147483647i))), ~vec3<u32>(4294967295u, ~max(var_0.x, 4294967295u), reverseBits(3360u)));
    let var_2 = vec3<u32>(var_0.x, ~2777u, 0u ^ _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, var_0.x), var_0.x)));
    var_0 = u_input.d;
    var var_3 = -func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a + 692f)))), vec2<bool>(var_1.b.a.x, true), _wgslsmith_mod_u32(max(var_0.x ^ var_2.x, var_0.x), _wgslsmith_mult_u32(var_1.d.x, ~20970u)), Struct_4(~(-14007i), var_1.b.a.x, func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-14224i, u_input.b, -20358i, u_input.b), vec4<i32>(var_1.c, u_input.b, var_1.c, u_input.b)), Struct_2(var_1.a, Struct_1(var_1.b.a), u_input.a, vec3<u32>(4294967295u, 5861u, 39408u))).yz, any(vec2<bool>(true, true)))).c;
    var var_4 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, var_1.d.x, var_2.x, ~_wgslsmith_add_u32(~var_2.x, ~var_2.x)), 10199u, _wgslsmith_f_op_f32(select(990f, 1610f, true)), _wgslsmith_mod_i32(firstLeadingBit(min(min(u_input.b, 0i), var_1.c)), var_1.c), 11273i);
}

