struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> bool {
    let var_0 = firstLeadingBit(u_input.d.x);
    return false;
}

fn func_3(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 792f, 482f, arg_0.x) + vec4<f32>(arg_0.x, arg_0.x, 978f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1406f, 1724f, arg_0.x, -1022f)))))), firstTrailingBit(~u_input.d.x >> (_wgslsmith_sub_u32(u_input.e.x, 88744u) % 32u)), true);
    var var_1 = Struct_1(abs(_wgslsmith_mult_vec3_i32(-u_input.d, firstTrailingBit(vec3<i32>(u_input.d.x, 0i, var_0.b)))), var_0.a.x, !(!vec4<bool>(!var_0.c, u_input.e.x <= u_input.c, any(vec4<bool>(false, true, true, false)), var_0.c)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b, var_1.b, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_1.b, var_0.a.x, 1858f) * var_0.a), vec4<bool>(var_0.c, var_0.b != u_input.d.x, var_1.c.x, false)))), u_input.d.x >> (1u % 32u), !var_1.c.x);
    var var_3 = var_2.c | select(false, any(vec2<bool>(var_1.c.x, var_0.c)), all(var_1.c.zyx));
    let var_4 = abs(_wgslsmith_mod_u32(1u, u_input.a | 0u)) & firstLeadingBit(u_input.a);
    return !func_1();
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-300f, 1523f, true))))), vec4<bool>(-_wgslsmith_add_i32(19942i, -25577i) < (12760i ^ u_input.d.x), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-228f, 1208f), vec2<f32>(-1358f, 554f))) && true, ~_wgslsmith_mult_u32(u_input.e.x, 107480u) == u_input.c, true));
    var var_1 = Struct_3(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + var_0.b))) * 555f), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(444f - 388f), _wgslsmith_f_op_f32(830f + 921f))))), _wgslsmith_div_i32(0i, _wgslsmith_div_i32(select(1i, abs(var_0.a.x), var_0.c.x), _wgslsmith_mod_i32(var_0.a.x, var_0.a.x))), var_0.c.x);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -280f, 577f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1000f, var_1.a.x, -684f) * vec4<f32>(-1523f, var_1.a.x, 1442f, var_0.b)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_0.b, -1767f, var_1.a.x), var_1.a))))), 0i, ~(~(~u_input.a)) > _wgslsmith_mod_u32(~u_input.b, u_input.a));
    var var_2 = Struct_2(Struct_1(vec3<i32>(3171i, -67823i, -(var_0.a.x | 16149i)), _wgslsmith_f_op_f32(step(var_0.b, 739f)), select(vec4<bool>(!var_1.c, true, 109106u > u_input.e.x, !var_1.c), select(var_0.c, vec4<bool>(var_1.c, var_0.c.x, var_0.c.x, false), select(vec4<bool>(false, true, true, var_0.c.x), var_0.c, vec4<bool>(true, false, var_0.c.x, var_1.c))), var_0.c)), -534f, Struct_1(abs(_wgslsmith_div_vec3_i32(u_input.d, u_input.d >> (vec3<u32>(u_input.b, 25394u, 20656u) % vec3<u32>(32u)))), 988f, !var_0.c), var_1.a.yy, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-963f * var_1.a.x))), -349f)));
    var var_3 = var_0.b >= _wgslsmith_f_op_f32(step(-1000f, var_1.a.x));
    return var_2.a;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f - -2145f) + 958f)))) * _wgslsmith_f_op_f32(-arg_0.d.x));
    var_0 = arg_0;
    var_0 = Struct_2(var_0.a, 1000f, Struct_1(u_input.d, _wgslsmith_div_f32(-1784f, var_0.e), select(vec4<bool>(any(var_0.a.c.yyw), u_input.a > 4294967295u, true, true), !(!var_0.c.c), !func_1())), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(ceil(548f)), _wgslsmith_f_op_f32(-var_1)))), vec2<f32>(_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(step(-1400f, var_1))), _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(arg_0.e + 1000f))))), 1877f);
    var var_2 = arg_0.a.c;
    return var_0.c.c.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-884f, 357f, -476f, 338f)), vec4<f32>(-1726f, 644f, -516f, 2503f)))))), -2147483647i, func_1());
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, 1199f)) + _wgslsmith_f_op_f32(var_0.a.x + -1000f)))) == var_0.a.x;
    var var_3 = !func_4(Struct_2(func_2(), _wgslsmith_div_f32(func_2().b, _wgslsmith_f_op_f32(f32(-1f) * -450f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -20487i) >> (vec3<u32>(u_input.c, 4294967295u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(var_0.a.x, -184f)), vec4<bool>(var_2, var_2, true, var_2)), _wgslsmith_f_op_vec2_f32(var_0.a.xw - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a.x, 1175f)))), -955f));
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-(countOneBits(vec3<i32>(u_input.d.x, u_input.d.x, var_4.a.x)) ^ reverseBits(vec3<i32>(var_4.a.x, 0i, -1i))) | -vec3<i32>(-64882i, var_4.a.x, var_0.b << (u_input.c % 32u)), abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(max(0u, 4294967295u), _wgslsmith_clamp_u32(u_input.a, 64082u, 1u)), _wgslsmith_dot_vec2_u32(u_input.e.yz, ~vec2<u32>(u_input.e.x, 76388u)))), select(~_wgslsmith_sub_vec3_u32(u_input.e, abs(vec3<u32>(u_input.e.x, u_input.a, 50324u))), u_input.e, var_4.c.ywz), 25796u);
}

