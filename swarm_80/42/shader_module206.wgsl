struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(u_input.a, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, 2147483647i), vec3<i32>(arg_0, u_input.c.x, 2147483647i)))), _wgslsmith_mult_i32(-7179i << (u_input.d % 32u), u_input.b.x), -1i, -arg_0), u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-682f, _wgslsmith_f_op_f32(max(1183f, -465f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1519f, 275f) + vec2<f32>(182f, -790f))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2122f, 1506f)))))));
    let var_1 = min(_wgslsmith_add_i32(u_input.b.x, 0i) ^ ~abs(1i >> (u_input.d % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(min(arg_0, 2147483647i)), -_wgslsmith_add_i32(var_0.b, 0i), u_input.a, _wgslsmith_mult_i32(arg_0, ~var_0.b)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-65898i, 0i), -9691i, 10176i, u_input.c.x >> (u_input.d % 32u)), reverseBits(var_0.a))));
    var var_2 = firstLeadingBit(-var_1);
    var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.xz | vec2<i32>(0i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, 2147483647i), u_input.c), u_input.b), ~(vec2<i32>(var_1, -15244i) ^ vec2<i32>(-424i, arg_0))), _wgslsmith_sub_i32(-1i, firstTrailingBit(-arg_0))) << (u_input.d % 32u);
    let var_3 = var_0.c.x;
    return ~firstLeadingBit(select(select(select(vec2<u32>(u_input.d, 0u), vec2<u32>(1u, 41320u), vec2<bool>(true, false)), firstTrailingBit(vec2<u32>(u_input.d, 0u)), vec2<bool>(true, true)), abs(abs(vec2<u32>(u_input.d, 17455u))), true));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_3) -> bool {
    var var_0 = firstTrailingBit(~(abs(i32(-1i) * -1871i) << (abs(u_input.d) % 32u)));
    let var_1 = vec4<f32>(arg_2.c.x, -1144f, _wgslsmith_f_op_f32(sign(316f)), -1676f);
    var var_2 = Struct_1(select(_wgslsmith_add_vec2_u32(reverseBits(~arg_0.zx), vec2<u32>(48859u, u_input.d) << (~arg_0.zz % vec2<u32>(32u))), ~(~(~arg_0.yx)), all(vec4<bool>(true, true, true, true))));
    var var_3 = Struct_1(func_3(_wgslsmith_div_i32(arg_2.b, _wgslsmith_dot_vec3_i32(arg_2.a.zxw, arg_2.a.xxy)) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -350i, 0i, 2147483647i), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, arg_2.a.x))));
    let var_4 = var_1.zx;
    return true;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_mult_u32(~u_input.d, 4294967295u >> (abs(~(~0u)) % 32u));
    let var_2 = ~(~92394u);
    var var_3 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, var_2 < 1u, false), vec4<bool>(true, true, false, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), true)))), !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))), vec4<bool>(-countOneBits(u_input.c.x) > _wgslsmith_sub_i32(0i, -u_input.b.x), true, true, true & func_2(_wgslsmith_mult_vec4_u32(arg_0, arg_0), vec3<f32>(1420f, -1000f, 1407f), Struct_3(vec4<i32>(0i, u_input.a, u_input.c.x, u_input.b.x), 36977i, vec2<f32>(-369f, -241f)))));
    var_3 = vec4<bool>(var_3.x, true, !select(select(true, all(vec4<bool>(var_3.x, true, var_3.x, var_3.x)), true), false, any(!vec4<bool>(false, var_3.x, var_3.x, var_3.x))), all(select(var_3.wzx, vec3<bool>(true, false, true), !var_3.x)) & var_3.x);
    return Struct_1(~max(_wgslsmith_mod_vec2_u32(arg_0.yw, arg_0.yy), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.d, 70952u), arg_0.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(vec4<u32>(26780u, u_input.d, 1278u, reverseBits(4294967295u))), vec4<i32>(u_input.b.x & _wgslsmith_mult_i32(u_input.c.x, i32(-1i) * -2147483647i), -2147483647i, u_input.b.x, u_input.b.x), true, func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 101918u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(6768u, u_input.d)), _wgslsmith_mult_u32(1u, 16428u)), _wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(3933u, 4294967295u, 79906u, u_input.d)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 36869u, u_input.d), vec4<u32>(6200u, 50946u, u_input.d, 2012u))))), abs(func_1(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 0u, 4294967295u, 39743u), vec4<u32>(u_input.d, u_input.d, 0u, u_input.d))).a));
    var var_1 = vec2<i32>(reverseBits(_wgslsmith_dot_vec2_i32(firstTrailingBit(var_0.b.zw), -u_input.c)) << (0u % 32u), 1i);
    let var_2 = !vec2<bool>(var_0.c, !(!var_0.c));
    var var_3 = !all(vec4<bool>(true, true, firstLeadingBit(u_input.b.x) <= -11218i, var_2.x));
    var_3 = true;
    let var_4 = var_0.c;
    var var_5 = select(vec2<bool>(var_2.x, true), !vec2<bool>(true, var_4), var_2);
    var_3 = true;
    var var_6 = !vec4<bool>(false, true, true, any(!vec3<bool>(true, var_2.x, var_4)) && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_div_u32(countOneBits(0u), u_input.d), 40407u, _wgslsmith_mult_u32(21526u, 0u)), _wgslsmith_f_op_f32(741f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * -110f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) - _wgslsmith_f_op_f32(f32(-1f) * -161f)))))));
}

