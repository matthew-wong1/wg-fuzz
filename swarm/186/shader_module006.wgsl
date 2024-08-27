struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = !all(vec3<bool>(select(!arg_2, true, all(vec3<bool>(false, arg_2, arg_2))), true, !(u_input.a.x >= arg_1.c.x)));
    let var_1 = vec4<u32>(arg_0, 19044u, ~(~firstLeadingBit(~19319u)), u_input.b);
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(trunc(global1.a))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1504f)) + _wgslsmith_f_op_f32(round(global1.a))), global1.a), arg_2);
    var var_3 = Struct_1(-809f, _wgslsmith_mod_vec4_i32(-abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global1.c.x, arg_1.b.x, arg_1.c.x), arg_1.b)), abs(u_input.a << (var_1 % vec4<u32>(32u)))), u_input.a.zyx);
    return -(~(-29061i));
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(19004u, 7u)];
    let var_1 = 1727f;
    var var_2 = global0[_wgslsmith_index_u32(~(~(firstTrailingBit(0u | u_input.b) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.e.wxw, vec3<u32>(8250u, 32224u, 41594u)), _wgslsmith_sub_u32(u_input.c, u_input.e.x), ~u_input.b) % 32u))), 7u)];
    var var_3 = Struct_1(-1409f, vec4<i32>(~(~global1.b.x), _wgslsmith_add_i32(-var_2.c.x << (_wgslsmith_div_u32(1u, u_input.e.x) % 32u), var_0.c.x), ~_wgslsmith_mod_i32(13610i, reverseBits(var_0.b.x)), func_3(13092u, global0[_wgslsmith_index_u32(abs(19700u), 7u)], true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1009f, var_1))))), -var_0.b.ywy);
    var_3 = Struct_1(-789f, u_input.d, _wgslsmith_add_vec3_i32(var_2.c, var_2.c ^ -global1.b.wxy));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(u_input.e.zz, ~u_input.e.wx), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(u_input.e.zz, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 0u)))), vec2<u32>(~(~u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), u_input.e.wy)))), 7u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = !select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), vec4<bool>(!any(vec3<bool>(true, true, true)), false, all(vec4<bool>(false, false, false, false)), true));
    var var_1 = vec4<i32>(global1.b.x, -22633i, _wgslsmith_mult_i32(28053i, -31028i), -(-2147483647i << (~u_input.b % 32u)) ^ -global1.c.x);
    var_0 = select(vec4<bool>(!any(vec3<bool>(var_0.x, false, var_0.x)), !(!(u_input.e.x <= u_input.e.x)), max(-arg_2.b.x, -739i) == -2147483647i, !var_0.x), vec4<bool>(true, true, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), all(var_0.wzw)), !vec4<bool>(true, _wgslsmith_sub_i32(arg_0.c.x, global1.b.x) < var_1.x, all(!vec3<bool>(var_0.x, var_0.x, false)), all(!vec3<bool>(var_0.x, var_0.x, true))));
    var var_2 = Struct_1(128f, ~vec4<i32>(i32(-1i) * -11629i, -reverseBits(-9764i), 1i, 14223i), arg_1.b.zzx);
    let var_3 = arg_0.c.zy;
    return vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(24640u, u_input.e.x & 19206u, u_input.e.x), 47841u), u_input.e.x << (29603u % 32u)), ~(~u_input.c));
}

fn func_1() -> f32 {
    global1 = Struct_1(-744f, vec4<i32>(_wgslsmith_clamp_i32(2147483647i, 1i, -_wgslsmith_mult_i32(39197i, 0i)), ~_wgslsmith_dot_vec4_i32(u_input.d, global1.b), _wgslsmith_sub_i32(~max(-10700i, 20693i), abs(~global1.c.x)), abs(~(~u_input.a.x))), u_input.a.xww);
    var var_0 = vec4<u32>(u_input.e.x, 74373u, 1u, _wgslsmith_dot_vec2_u32(abs(select(u_input.e.zx, vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.c, u_input.b), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_add_vec2_u32(func_4(func_2(), func_2(), Struct_1(-885f, global1.b, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), ~u_input.e.zx)));
    global0 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a, 287f, 1857f, global1.a)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, global1.a, global1.a, -2763f) * vec4<f32>(-521f, global1.a, global1.a, -1689f)))))));
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 1u), reverseBits(func_4(func_2(), global0[_wgslsmith_index_u32(~45022u, 7u)], global0[_wgslsmith_index_u32(10863u, 7u)]).x)), ~1u);
    return _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.a)), -917f, _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(trunc(-1074f)))))) + vec3<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(481f * -1000f) * global1.a)), _wgslsmith_f_op_f32(func_1())));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b & countOneBits(_wgslsmith_div_u32(u_input.c & u_input.b, func_4(Struct_1(-1144f, u_input.d, vec3<i32>(u_input.a.x, u_input.d.x, global1.c.x)), Struct_1(1000f, global1.b, vec3<i32>(u_input.d.x, 0i, -49189i)), global0[_wgslsmith_index_u32(u_input.e.x, 7u)]).x)), abs(~(~0u))), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-549f, 611f)), _wgslsmith_f_op_f32(func_1())))) + 690f), -1i, vec3<i32>(func_3(reverseBits(firstTrailingBit(u_input.e.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -901f), -global1.b, -vec3<i32>(-3902i, -2147483647i, -13176i)), true, _wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(f32(-1f) * -1898f))), 2147483647i, global1.c.x));
}

