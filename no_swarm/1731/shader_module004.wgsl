struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    let var_0 = firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(21540u, u_input.c.x, u_input.a.x)), vec3<u32>(u_input.a.x & 0u, 31177u, _wgslsmith_clamp_u32(u_input.c.x, 1u, 80873u))), 1u, _wgslsmith_dot_vec2_u32(u_input.c.xz, ~firstLeadingBit(u_input.a.xx))));
    global0 = max(arg_1, min(arg_1, reverseBits(-1i << (u_input.a.x % 32u))));
    let var_1 = Struct_3(firstLeadingBit(arg_1) >> (countOneBits(11092u) % 32u));
    let var_2 = ~var_0;
    global0 = firstTrailingBit(-4486i);
    return -1404f;
}

fn func_2() -> u32 {
    global0 = 0i;
    let var_0 = vec4<f32>(-271f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(244f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec3<bool>(true, true, false)), -1i, vec2<f32>(-183f, -574f))))))), -1775f, -503f);
    var var_1 = Struct_3(i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, u_input.b), ~0i));
    var var_2 = Struct_1(23708u >= select(u_input.a.x, ~u_input.a.x, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), !(!vec3<bool>(all(vec3<bool>(false, false, false)), false, true)));
    var var_3 = ~u_input.a.x;
    return u_input.c.x;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = Struct_1(false, !vec3<bool>(true, !(!arg_1), true));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_2.x), u_input.d.zz & select(-arg_2, vec2<i32>(-21993i, 1155i), arg_1)));
    global0 = (_wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.d.x, u_input.d.x, 15826i, 1i), vec4<i32>(u_input.d.x, var_2.a, var_2.a, var_2.a)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_2.a, arg_2.x, -1i, arg_2.x)), select(vec4<i32>(var_2.a, u_input.b, var_2.a, -1924i), vec4<i32>(arg_2.x, -7466i, 65281i, var_2.a), true))) >> (max(firstTrailingBit(~u_input.a.x), arg_0) % 32u)) & ~(~u_input.b);
    var var_3 = u_input.a.zx;
    return Struct_1(!(~9808i >= -(37900i << (arg_0 % 32u))), select(vec3<bool>(!(var_1.a != var_1.a), !all(var_1.b), var_1.a), vec3<bool>(true & var_1.a, select(!arg_1, true, all(var_1.b)), all(vec3<bool>(true, true, false))), !var_1.b));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: f32) -> Struct_2 {
    var var_0 = func_4(firstTrailingBit(_wgslsmith_clamp_u32(~u_input.c.x << (func_2() % 32u), ~u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4831u, 0u, u_input.c.x), u_input.c.xyy))), true != all(vec2<bool>(any(vec3<bool>(true, false, true)), true)), -u_input.d.zz);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)));
    global0 = -abs(-48333i);
    var var_2 = reverseBits(min(u_input.a.x << (14010u % 32u), ((90500u & u_input.a.x) ^ u_input.c.x) | _wgslsmith_div_u32(abs(36989u), 53112u)));
    let var_3 = Struct_1(true, vec3<bool>(true, func_4(u_input.a.x, true, countOneBits(u_input.d.yy)).a != false, false));
    return Struct_2(vec2<f32>(-1000f, 457f), var_3, var_3, vec2<u32>(countOneBits(1u), u_input.c.x));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    let var_0 = abs(vec2<u32>(1u, firstTrailingBit(88841u)) | vec2<u32>(~arg_1.d.x, ~_wgslsmith_div_u32(arg_1.d.x, 4294967295u)));
    let var_1 = vec3<i32>(-1i, -u_input.d.x, _wgslsmith_div_i32(-1i, -30354i));
    var var_2 = vec2<bool>(arg_1.c.b.x, arg_1.b.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-arg_1.a)))) - vec2<f32>(arg_1.a.x, -256f));
    let var_4 = func_1(~u_input.b, max(select(~countOneBits(-26289i), _wgslsmith_div_i32(u_input.d.x, 1i), arg_0), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.d.x), min(1i, -var_1.x))), -382f).c.a;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = -1i;
    var_0 = func_5(!(!(true != any(vec4<bool>(false, true, false, true)))), func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(u_input.d.yz), u_input.d.zx, u_input.d.xz), _wgslsmith_mod_vec2_i32(~u_input.d.zz, -u_input.d.xy)), i32(-1i) * -(~var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)) - 1351f)), abs(~vec4<u32>(4294967295u, ~u_input.c.x, _wgslsmith_mult_u32(2378u, u_input.c.x), ~u_input.c.x)));
    let var_2 = func_1(_wgslsmith_sub_i32(2147483647i, u_input.d.x), 26844i >> (countOneBits(~u_input.c.x ^ ~u_input.a.x) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-578f, -416f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(705f - -1731f))) * 242f)).a;
    global0 = -24050i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, func_1(1i, _wgslsmith_div_i32(var_1, var_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(897f * var_2.x), -351f))).a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.x, -1394f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -582f, 906f))))))));
}

