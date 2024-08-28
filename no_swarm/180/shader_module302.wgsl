struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: bool,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    var var_0 = u_input.e | 1673i;
    var var_1 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(-reverseBits(-1i), 2147483647i, u_input.e)), reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, arg_2.d.a), vec3<i32>(16733i, u_input.e, arg_2.d.a)), vec3<i32>(u_input.e, 2147483647i, u_input.e), vec3<i32>(u_input.d, arg_2.d.a, 0i))) & vec3<i32>(1i, (u_input.d & -1i) & ~u_input.e, arg_2.d.a));
    let var_2 = abs(arg_2.b.x);
    let var_3 = vec2<i32>(arg_2.d.a, arg_2.b.x);
    let var_4 = arg_3.xyw;
    return _wgslsmith_f_op_f32(sign(arg_0));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = arg_3;
    let var_1 = u_input.a;
    var_0 = Struct_3(~0u, var_0.b >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 54664u) & vec2<u32>(arg_3.e, u_input.a), arg_0), reverseBits(~arg_3.e)) % vec2<u32>(32u)), !(!all(vec3<bool>(arg_3.c, true, var_0.c))) && (~(arg_0.x << (1u % 32u)) <= ~4294967295u), var_0.d, var_0.e);
    let var_2 = arg_1;
    var var_3 = 185f;
    return vec3<u32>(u_input.a >> (1u % 32u), (0u << (_wgslsmith_div_u32(arg_3.e, min(u_input.b, 1u)) % 32u)) | ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0.x, 12327u)), vec2<u32>(arg_0.x, var_0.a)), _wgslsmith_sub_u32(firstLeadingBit(var_1), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_0.a, 0u, arg_3.e, var_1)), max(vec4<u32>(1u, 16892u, arg_3.a, 3394u), ~vec4<u32>(64801u, var_0.a, arg_0.x, arg_3.e)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> f32 {
    let var_0 = !select(select(!(!vec4<bool>(true, arg_0.c, arg_0.c, false)), vec4<bool>(!arg_0.c, true, arg_0.c, arg_0.c | arg_0.c), false), select(vec4<bool>(arg_0.c, all(vec2<bool>(arg_0.c, arg_0.c)), arg_0.c, all(vec3<bool>(arg_0.c, true, arg_0.c))), !(!vec4<bool>(true, arg_0.c, false, arg_0.c)), select(!vec4<bool>(false, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), !vec4<bool>(arg_0.c, false, arg_0.c, false))), min(arg_0.e, u_input.b) <= (firstLeadingBit(arg_0.e) << (u_input.b % 32u)));
    let var_1 = Struct_2(-2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(407f, 741f) + -1000f), Struct_1(_wgslsmith_f_op_f32(trunc(-393f))), Struct_3(~3881u, vec2<i32>(-2147483647i, arg_2) << (vec2<u32>(u_input.c, arg_0.a) % vec2<u32>(32u)), arg_0.c, arg_0.d, _wgslsmith_sub_u32(u_input.b, arg_0.e)), !vec4<bool>(true, arg_0.c, var_0.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(857f, -972f))), false)), _wgslsmith_f_op_f32(1375f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-238f, 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2162f, -1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1065f * -1304f)))))));
    var var_3 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, 102526u) ^ _wgslsmith_div_u32(u_input.b, 90379u), _wgslsmith_clamp_u32(0u, u_input.b, arg_0.e), 18019u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, firstLeadingBit(arg_0.e), arg_0.a), _wgslsmith_mult_vec3_u32(~(vec3<u32>(arg_0.e, 1u, 13463u) ^ vec3<u32>(arg_0.e, 0u, 1u)), func_3(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, arg_0.e), vec2<u32>(arg_0.e, 25551u)), Struct_1(var_2.x), _wgslsmith_div_f32(var_2.x, var_2.x), Struct_3(arg_0.a, vec2<i32>(arg_0.b.x, -14643i), false, arg_0.d, 0u)))));
    var var_4 = Struct_3(_wgslsmith_mod_u32(var_3.x, _wgslsmith_clamp_u32(u_input.a, ~arg_0.e, abs(18918u)) & ~17651u), vec2<i32>(arg_1.x, -34077i), (firstTrailingBit(_wgslsmith_sub_i32(arg_1.x, -2147483647i)) ^ firstLeadingBit(_wgslsmith_div_i32(u_input.e, 483i))) <= _wgslsmith_add_i32(~(-var_1.a), -4111i), Struct_2(min(i32(-1i) * -18995i, u_input.d)), _wgslsmith_mod_u32(abs(1u << (var_3.x % 32u)), _wgslsmith_mod_u32(0u, 4294967295u)) | (41013u & u_input.a));
    return -1294f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = select(vec4<bool>(!(_wgslsmith_f_op_f32(func_1(1000f, Struct_1(-996f), Struct_3(70790u, vec2<i32>(1i, -1i), false, Struct_2(1i), 46849u), vec4<bool>(true, false, true, true))) != _wgslsmith_f_op_f32(func_2(Struct_3(u_input.a, vec2<i32>(u_input.e, u_input.d), true, Struct_2(0i), u_input.c), vec2<i32>(u_input.d, u_input.e), u_input.e))), !all(vec3<bool>(true, true, false)) | any(vec2<bool>(true, true)), false, (u_input.e ^ 12336i) == -1i), !vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), select(vec4<bool>(all(vec2<bool>(true, true)) & true, _wgslsmith_f_op_f32(sign(-904f)) >= _wgslsmith_f_op_f32(max(-211f, -1577f)), false, any(vec3<bool>(false, true, false))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), false));
    let var_2 = 1997f;
    var_1 = vec4<bool>(!(true | var_1.x), select(all(select(select(vec4<bool>(true, true, var_1.x, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), false), vec4<bool>(var_1.x, false, false, var_1.x))), var_1.x, var_1.x), all(select(select(var_1.wx, var_1.zw, var_1.x), !select(vec2<bool>(var_1.x, true), var_1.zy, var_1.zx), vec2<bool>(u_input.c > u_input.a, var_1.x))), all(!select(var_1.yzw, var_1.yzz, false)) | (any(vec3<bool>(true, true, true)) || var_1.x));
    let var_3 = Struct_2(u_input.d);
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2, var_2), -1740f) - -1000f) < var_2, select(false, var_1.x & (select(var_1.x, var_1.x, true) & select(var_1.x, var_1.x, var_1.x)), var_1.x), !(!var_1.x), !(false && all(select(vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, false, false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(var_2)), var_2));
}

