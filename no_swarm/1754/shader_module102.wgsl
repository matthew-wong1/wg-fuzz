struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    let var_0 = u_input.a.x;
    let var_1 = !vec4<bool>(all(select(select(arg_0.a, arg_0.a, arg_0.a.x), arg_0.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -141f)) > _wgslsmith_f_op_f32(2262f - _wgslsmith_f_op_f32(trunc(arg_0.b.x))), any(select(!vec4<bool>(arg_0.a.x, false, true, true), select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, false), vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), false), any(vec2<bool>(true, true)))), all(vec3<bool>(false, false, arg_0.a.x & arg_0.a.x)));
    let var_2 = var_1;
    var var_3 = arg_0;
    let var_4 = -1037f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(arg_0.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4, -688f, var_3.b.x))))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_3.b.x, var_3.b.x)), var_3.b.x, -2332f)) + vec3<f32>(_wgslsmith_f_op_f32(-750f * var_4), -2340f, arg_0.b.x)));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(vec3<bool>(false, false, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, 645f, -1035f) * vec3<f32>(-1400f, -1000f, 391f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1450f, -810f, -227f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1527f, 1499f, -240f))))))));
    return vec4<bool>(any(vec4<bool>(_wgslsmith_f_op_f32(max(var_0.b.x, 408f)) <= _wgslsmith_f_op_f32(1217f * -912f), _wgslsmith_f_op_f32(step(1683f, var_0.b.x)) == var_0.b.x, var_0.a.x, var_0.a.x)), !(!(_wgslsmith_f_op_f32(-1371f * var_0.b.x) > _wgslsmith_f_op_f32(trunc(var_0.b.x)))), var_0.a.x, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + 106f) > -1130f));
}

fn func_1() -> vec2<bool> {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), func_2(), vec4<bool>(false, false, true, true)), vec4<bool>(true, 2147483647i <= u_input.b.x, any(vec2<bool>(false, false)), true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), select(!func_2(), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)) || true, false)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, any(vec4<bool>(true, true, true, false)))), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true | any(vec2<bool>(true, false)), true, select(true, any(vec4<bool>(false, false, true, false)), true))));
    let var_1 = Struct_2(vec3<bool>(true, u_input.a.x > -1i, all(var_0.xxx)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1363f)) - -252f), 1000f, 1f));
    var var_2 = vec2<u32>(1u, 1u);
    let var_3 = var_2.x;
    var var_4 = Struct_1(vec3<u32>(0u, ~21248u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.x, var_2.x) >> (vec3<u32>(var_2.x, var_2.x, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(var_2.x, var_2.x, var_2.x)) | 47386u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(abs(45256u), _wgslsmith_div_u32(var_2.x, 4294967295u), ~var_2.x), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(var_2.x, var_2.x, 3323u)), vec3<u32>(var_2.x, var_2.x, 1u)), select(var_1.a, var_0.yyz, !vec3<bool>(true, var_0.x, false))), ~vec3<u32>(4350u, var_2.x ^ var_2.x, 43074u)), ~u_input.b, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x) << (_wgslsmith_mult_u32(abs(_wgslsmith_add_u32(var_2.x, 0u)), var_2.x) % 32u));
    return var_1.a.yy;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = u_input.a & -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.b.x, 0i, 4255i) | (vec4<i32>(11420i, 0i, 15624i, 0i) ^ vec4<i32>(2147483647i, -2147483647i, u_input.b.x, 0i)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-33072i, u_input.a.x, -54005i, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(16399i, 2147483647i, -7783i, -11103i), u_input.a)));
    let var_1 = false;
    var_0 = vec4<i32>(18865i, abs(-(-var_0.x >> (_wgslsmith_sub_u32(1u, 0u) % 32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-firstTrailingBit(-1359i), var_0.x, u_input.b.x), 0i), var_0.x);
    var var_2 = Struct_2(!vec3<bool>(all(vec4<bool>(arg_0.x, true, var_1, true)), true, arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-767f, arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(169f, -452f, 1302f), vec3<f32>(723f, arg_1, 126f), true))), !select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, true), true)))));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x | _wgslsmith_dot_vec4_i32(select(u_input.a, vec4<i32>(-17905i, -105522i, -2147483647i, 0i), vec4<bool>(true, arg_0.x, false, var_2.a.x)), abs(vec4<i32>(0i, u_input.a.x, var_0.x, var_0.x))), ~countOneBits(-19032i), 1i, -_wgslsmith_add_i32(~3207i, _wgslsmith_mod_i32(16736i, var_0.x))), u_input.a);
    return Struct_2(var_2.a, vec3<f32>(-378f, var_2.b.x, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(), vec2<bool>(select(true, false, false), func_1().x)), vec2<bool>(!any(vec4<bool>(true, true, true, false)), true), true), 1036f, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_2(), vec4<bool>(func_2().x, all(vec3<bool>(true, true, true)), false, true))));
    let var_1 = func_4(func_2().zw, var_0.b.x, var_0.a.x);
    var var_2 = _wgslsmith_mult_u32(1u, ~5740u);
    let var_3 = 1u;
    let var_4 = vec2<u32>(var_3, select(var_3, firstTrailingBit(var_3), true));
    var_2 = ~4294967295u;
    var_2 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_3, 19406u), var_3, ~469u);
    var_2 = ~var_3;
    var var_5 = Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, var_3), ~vec3<u32>(var_4.x, 4294967295u, var_3)) >> (vec3<u32>(abs(var_4.x ^ var_4.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, var_3, var_4.x), vec3<u32>(0u, var_4.x, 68201u)), var_3), ~select(var_3, 4294967295u, var_1.a.x)) % vec3<u32>(32u)), var_3, reverseBits(u_input.b), min(15025i, u_input.a.x >> (~abs(var_3) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-176f, var_1.b.x, -886f, -692f))), _wgslsmith_div_vec4_f32(vec4<f32>(484f, -918f, -2159f, -888f), vec4<f32>(-380f, -1250f, 1150f, -207f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<f32>(var_1.b.x, var_0.b.x, -1000f, 2931f)))))));
}

