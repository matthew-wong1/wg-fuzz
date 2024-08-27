struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = vec3<bool>(false, !all(select(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), select(vec3<bool>(arg_0.c.x, arg_0.c.x, true), vec3<bool>(false, true, true), arg_0.c.x), vec3<bool>(true, arg_0.c.x, arg_0.c.x))), !(arg_0.c.x || (arg_1 >= _wgslsmith_f_op_f32(arg_0.a.x + 463f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(711f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1 - arg_0.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-852f, arg_0.a.x), _wgslsmith_f_op_f32(trunc(arg_0.a.x))))));
    let var_2 = ~firstTrailingBit(min(select(vec3<u32>(u_input.e, u_input.e, u_input.a.x) >> (vec3<u32>(u_input.c.x, 0u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 0u), false), vec3<u32>(min(u_input.e, 62099u), 4294967295u, abs(0u))));
    var_1 = 2024f;
    let var_3 = !arg_0.c.x;
    return _wgslsmith_f_op_f32(-463f - _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_0.a.x, -1150f))))));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1010f * 291f), _wgslsmith_f_op_f32(step(229f, -2055f))), _wgslsmith_f_op_f32(abs(136f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(1218f, 1000f, -1000f), arg_3, vec2<bool>(true, true)), -107f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(532f, -456f, 680f), vec3<f32>(338f, 1296f, -1161f))))), vec3<i32>(~arg_3.x, 63394i, _wgslsmith_div_i32(2147483647i, arg_0)), !vec2<bool>(any(vec3<bool>(true, true, true)), false));
    let var_1 = var_0.c.x && false;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) - var_0.a.yx), var_0.a.yz))), var_0.a.xy)));
    let var_3 = var_0;
    var var_4 = !select(!(!vec3<bool>(var_1, var_3.c.x, true)), vec3<bool>(all(var_3.c), var_1, var_0.c.x), select(!(!vec3<bool>(false, var_3.c.x, var_1)), !select(vec3<bool>(false, var_3.c.x, false), vec3<bool>(false, false, false), false), any(vec2<bool>(var_1, false))));
    return var_3;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = arg_1;
    return -vec3<i32>(arg_1.b.x, arg_0.x, -56734i);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(6951i, u_input.b, -9271i)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.b) >> (vec3<u32>(u_input.c.x, 17620u, u_input.c.x) % vec3<u32>(32u)), -vec3<i32>(u_input.d, -21782i, u_input.b)), func_4(vec3<i32>(min(-316i, -16287i), u_input.d & 0i, 63167i << (u_input.c.x % 32u)), func_2(u_input.b, 1u, firstLeadingBit(vec2<i32>(2147483647i, u_input.d)), ~vec3<i32>(-2147483647i, 0i, u_input.b)), u_input.a.yx), vec3<i32>(_wgslsmith_add_i32(~u_input.d, 0i), -2147483647i, ~firstLeadingBit(-3085i))) >> (_wgslsmith_sub_vec3_u32(~u_input.a, _wgslsmith_div_vec3_u32(~u_input.c.wwy | vec3<u32>(u_input.c.x, u_input.c.x, 1u), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(61791u, u_input.a.x, 22928u), u_input.c.zxy), vec3<u32>(0u, u_input.c.x, u_input.c.x)))) % vec3<u32>(32u));
    var_0 = reverseBits(min(vec3<i32>(u_input.b, var_0.x, max(firstTrailingBit(var_0.x), 46260i)), vec3<i32>(_wgslsmith_add_i32(var_0.x, u_input.b), -12689i, 2147483647i)));
    var var_1 = _wgslsmith_dot_vec4_u32(u_input.c, u_input.c);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, -1109f)) + _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-996f + arg_0)) - vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(-468f * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -339f))), select(vec3<bool>(true, u_input.a.x == u_input.a.x, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), !(u_input.d > var_0.x)))), -(~min(func_4(vec3<i32>(u_input.b, -12808i, -25739i), Struct_1(vec3<f32>(arg_0, -1305f, arg_0), vec3<i32>(u_input.b, u_input.b, 1i), vec2<bool>(true, true)), u_input.c.yw), -vec3<i32>(-1i, u_input.b, -15084i))), vec2<bool>(!(!(u_input.a.x >= u_input.e)), true));
    var_1 = u_input.c.x;
    return Struct_1(var_2.a, var_2.b, select(var_2.c, var_2.c, func_2(var_0.x, u_input.a.x, ~vec2<i32>(2147483647i, 0i), var_2.b << (vec3<u32>(u_input.e, u_input.e, u_input.c.x) % vec3<u32>(32u))).c.x != all(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2001f * -1000f)))));
    let var_1 = u_input.c.yy;
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.a.zz + func_2(36692i, 3586u, vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(-1i, -1i)), _wgslsmith_dot_vec2_i32(abs(var_0.b.xz), -vec2<i32>(var_0.b.x, u_input.b))), var_0.b).a.zz);
    var_2 = var_0.a.yz;
    let var_3 = var_0;
    var var_4 = Struct_1(func_2(1i, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(var_1.x, 17369u), 4294967295u, ~var_1.x), ~vec4<u32>(u_input.e, var_1.x, 4294967295u, u_input.a.x)), ~max(var_0.b.yz, var_0.b.xy) | -var_3.b.yx, var_0.b).a, abs(var_0.b), !select(select(var_3.c, select(var_3.c, vec2<bool>(var_3.c.x, false), var_0.c.x), vec2<bool>(var_0.c.x, var_3.c.x)), vec2<bool>(true | var_0.c.x, var_3.c.x), (var_0.b.x == 1i) || false));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_mult_i32(func_1(_wgslsmith_f_op_f32(var_3.a.x - -680f)).b.x & _wgslsmith_mod_i32(var_4.b.x, u_input.b), -2199i));
}

