struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_4(Struct_2(~select(arg_1.a, vec4<u32>(arg_0.a.a.x, 4294967295u, 6102u, arg_1.a.x), vec4<bool>(arg_0.c, true, arg_0.c, false)) | select(~vec4<u32>(0u, arg_1.a.x, arg_0.b, 20023u), arg_1.a | vec4<u32>(arg_0.a.a.x, 1u, arg_1.a.x, 0u), true), Struct_1(6134i), Struct_1(u_input.a), arg_1.d), _wgslsmith_mult_u32(abs(102600u), ~_wgslsmith_add_u32(arg_0.b, max(21627u, 4294967295u))), !any(!vec2<bool>(true, arg_0.c)), _wgslsmith_f_op_f32(round(435f)), abs(arg_0.e));
    var_0 = Struct_4(Struct_2(arg_0.a.a, arg_0.a.d, Struct_1(-53300i | firstLeadingBit(arg_1.b.a)), Struct_1(u_input.a)), min(_wgslsmith_clamp_u32(~arg_0.b, select(abs(48532u), arg_1.a.x | var_0.b, true), 20820u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.a.xz, countOneBits(arg_1.a.zz)), vec2<u32>(arg_0.b ^ 0u, arg_1.a.x >> (6071u % 32u)))), ~(~2974u & arg_0.b) >= ~4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -867f), ~var_0.e);
    var var_1 = -countOneBits(-55388i);
    var_0 = arg_0;
    var var_2 = !vec4<bool>(all(select(vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.c), false)), var_0.c, all(vec2<bool>(true, true)), all(select(select(vec3<bool>(true, false, arg_0.c), vec3<bool>(arg_0.c, var_0.c, true), true), vec3<bool>(true, true, true), !arg_0.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.d, arg_0.d)), _wgslsmith_f_op_f32(exp2(arg_0.d)))))))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-173f, -613f)) + -333f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(vec4<u32>(17770u, 1u, arg_0, 105027u), Struct_1(40324i), Struct_1(u_input.a), Struct_1(-21643i)), 1u, true, 1000f, vec2<i32>(u_input.a, u_input.a)), Struct_2(vec4<u32>(61386u, arg_0, 89758u, arg_0), Struct_1(1i), Struct_1(u_input.a), Struct_1(3751i)))) * _wgslsmith_f_op_f32(sign(2370f))), -646f)))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-213f, 592f, true))), -982f))), Struct_2(~(~vec4<u32>(arg_0, arg_0, 0u, arg_0)), Struct_1(abs(u_input.a)), Struct_1(u_input.a), Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(-6838i, u_input.a, 2147483647i)))));
    let var_2 = -abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, 926i, u_input.a, 1i), -vec4<i32>(14909i, -1i, -31517i, -1i)));
    var var_3 = select(vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(false, false), true)) | (-1000f == _wgslsmith_f_op_f32(var_1.a + var_1.a))), !vec2<bool>(true & all(vec4<bool>(false, true, false, false)), _wgslsmith_div_u32(arg_0, var_1.b.a.x) != max(var_1.b.a.x, var_1.b.a.x)), select(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(all(vec2<bool>(true, false)), false, true)), true));
    let var_4 = vec4<bool>(any(vec3<bool>(any(vec4<bool>(var_3.x, var_3.x, true, var_3.x)), all(vec3<bool>(true, var_3.x, var_3.x)), var_3.x == true)), any(!(!(!vec4<bool>(var_3.x, var_3.x, true, true)))), var_3.x, false);
    return Struct_2(var_1.b.a, var_1.b.b, Struct_1(u_input.a), var_1.b.d);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = arg_0.b.c;
    let var_1 = arg_0;
    let var_2 = Struct_4(func_2(_wgslsmith_clamp_u32(var_1.b.a.x, 4294967295u, _wgslsmith_clamp_u32(reverseBits(12087u), var_1.b.a.x, ~21369u))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstTrailingBit(arg_0.b.a.zzy), ~var_1.b.a.xzw), vec3<u32>(var_1.b.a.x & 20879u, max(var_1.b.a.x, var_1.b.a.x), 1u)), select(u_input.a, -var_1.b.c.a << (firstTrailingBit(36548u) % 32u), true) == (firstLeadingBit(countOneBits(var_1.b.c.a)) | abs(func_2(84365u).b.a)), -1156f, abs(~(~vec2<i32>(var_1.b.c.a, 2147483647i))) | _wgslsmith_div_vec2_i32((vec2<i32>(arg_0.b.d.a, -2147483647i) | vec2<i32>(-14567i, -16867i)) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), max(_wgslsmith_add_vec2_i32(vec2<i32>(-5649i, 2147483647i), vec2<i32>(85861i, 0i)), vec2<i32>(1i, arg_0.b.c.a))));
    var_0 = arg_0.b.c;
    let var_3 = func_2(43412u);
    return var_1.b.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> vec2<bool> {
    var var_0 = func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1099f), func_2(~47905u)));
    var var_1 = ~(~43890u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-713f, -989f))) * vec2<f32>(-1102f, -269f))))));
    var_1 = arg_1;
    var var_3 = ~2147483647i;
    return vec2<bool>(any(vec3<bool>(true, true, all(vec4<bool>(true, true, true, true)))) != true, !(!(true && all(vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(-(vec2<i32>(15785i, u_input.a) ^ vec2<i32>(-2147483647i, u_input.a)) | _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(18689i, -54053i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, -46071i), vec2<i32>(-2147483647i, 29215i))), ~abs(~0u));
    var_0 = !func_1(vec2<i32>(_wgslsmith_sub_i32(u_input.a, -37228i), _wgslsmith_mult_i32(0i, u_input.a) | firstLeadingBit(u_input.a)), ~(~78522u));
    var var_1 = Struct_4(func_2(0u), ~1u, all(vec3<bool>(true, var_0.x, any(!vec2<bool>(var_0.x, var_0.x)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(vec4<u32>(3520u, 1733u, 0u, 73537u), Struct_1(u_input.a), Struct_1(2147483647i), Struct_1(2364i)), 98328u, true, _wgslsmith_f_op_f32(1000f + -586f), vec2<i32>(u_input.a, u_input.a)), func_2(~36112u)))), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-9748i, u_input.a) & vec2<i32>(u_input.a, 1i), firstLeadingBit(vec2<i32>(-30085i, u_input.a)))) ^ max(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -26354i), vec2<i32>(0i, u_input.a))), min(vec2<i32>(46898i, -57278i), vec2<i32>(0i, u_input.a))));
    let var_2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.x, true, true), true), !vec3<bool>(any(vec3<bool>(true, var_1.c, false)), var_1.c, var_1.c || false), true);
    var var_3 = ~vec3<u32>(max(var_1.a.a.x, var_1.b) ^ (reverseBits(var_1.a.a.x) >> (_wgslsmith_clamp_u32(var_1.b, var_1.a.a.x, var_1.b) % 32u)), 4294967295u, var_1.b | ~(var_1.a.a.x << (var_1.b % 32u)));
    var_1 = Struct_4(Struct_2(var_1.a.a, Struct_1(u_input.a << (var_3.x % 32u)), Struct_1(1i), func_4(Struct_3(var_1.d, func_2(4294967295u)))), abs(reverseBits(~var_1.b >> (var_1.b % 32u))), var_2.x, 1123f, var_1.e);
    var var_4 = var_0.x;
    var var_5 = !select(!vec4<bool>(true, 4294967295u < var_1.b, false, true), !select(!vec4<bool>(false, false, var_2.x, var_1.c), !vec4<bool>(var_1.c, var_2.x, true, true), select(vec4<bool>(var_0.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, true, var_0.x), true)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_1.a.d.a, max(var_1.a.b.a, -1i)), countOneBits(1u));
}

