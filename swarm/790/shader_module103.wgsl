struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<f32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32) -> f32 {
    global0 = !select(!(!(!vec3<bool>(true, global0.x, true))), vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(global0.x | global0.x, true, false));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-109f, global1.x), vec2<f32>(-210f, global1.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 859f)))))), vec2<f32>(256f, _wgslsmith_f_op_f32(round(-1963f))), select(vec2<bool>(true, true), vec2<bool>(arg_0 < arg_0, true), select(global0.x, global1.x != -1265f, global0.x)))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -397f)))), _wgslsmith_f_op_f32(trunc(global1.x)))), 647f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    let var_1 = Struct_1(1u, true, vec4<bool>(true, all(global0.xy) || any(select(vec4<bool>(true, true, global0.x, false), vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1039f * _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = abs(firstLeadingBit(~u_input.a.xw));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2124f - 1904f)) + var_1.d);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> f32 {
    global1 = vec2<f32>(arg_2.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-457f, 1000f)))), _wgslsmith_f_op_f32(func_3(arg_0))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, -789f) + vec2<f32>(653f, -882f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(1000f, arg_2.a.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1349f, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.d, 1377f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1082f, global1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 387f)) * vec2<f32>(global1.x, arg_2.a.d)))));
    var var_0 = Struct_1(~(firstTrailingBit(1u) >> (arg_2.a.a % 32u)), true, arg_2.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.d - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.a.d)))))));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, abs(~var_0.a), _wgslsmith_div_u32(arg_2.a.a, arg_2.a.a) & ~4294967295u), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(24608u, arg_2.a.a), _wgslsmith_clamp_vec2_u32(u_input.a.zx, vec2<u32>(36078u, arg_2.a.a), u_input.a.wz)), min(~arg_2.a.a, max(4294967295u, 104u)), 39410u)), all(!var_0.c) != (true && !(20407i == arg_1)), var_0.c, _wgslsmith_f_op_f32(func_3(-(_wgslsmith_mult_i32(arg_0, -1i) >> (firstTrailingBit(var_0.a) % 32u)))));
    var var_1 = Struct_3(arg_0, countOneBits(~arg_2.a.a), max(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_1, 8985i), -arg_1), -2147483647i, abs(_wgslsmith_add_i32(arg_1, arg_1)))), vec2<i32>(arg_1, arg_1), arg_2.a);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.d)));
}

fn func_1() -> i32 {
    global0 = !vec3<bool>(~(~u_input.a.x) > ~(39945u << (u_input.a.x % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)), 1000f) < _wgslsmith_f_op_f32(func_2(20920i, 0i, Struct_2(Struct_1(42415u, global0.x, vec4<bool>(true, global0.x, false, global0.x), -1152f)))), any(select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), true), !vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)))));
    let var_0 = Struct_4(global1.x, Struct_3(~0i, _wgslsmith_sub_u32(~0u, 49571u) ^ _wgslsmith_dot_vec3_u32(~u_input.a.wxz, select(u_input.a.yyw, vec3<u32>(u_input.a.x, 10948u, 49327u), vec3<bool>(false, false, global0.x))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-35510i, 47854i, -19973i, 1i)) | -46295i, 19283i, -(~2432i)), vec2<i32>(~min(8988i, -1i), i32(-1i) * -41150i), Struct_1(reverseBits(20413u), global0.x, vec4<bool>(true, global0.x & global0.x, true, true || global0.x), _wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(max(960f, 138f))))));
    var var_1 = -24953i;
    global0 = var_0.b.e.c.zxx;
    let var_2 = firstTrailingBit(1i);
    return -1i;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    let var_0 = abs(1i);
    let var_1 = -vec2<i32>(-1i, func_1());
    let var_2 = Struct_4(global1.x, arg_0);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 2407f) + vec2<f32>(526f, var_2.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-283f, 159f), vec2<f32>(475f, arg_0.e.d)) + vec2<f32>(459f, arg_0.e.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1282f, 663f))) * vec2<f32>(arg_0.e.d, 1031f))))));
    var var_3 = _wgslsmith_add_u32(~(~27060u), arg_0.e.a & _wgslsmith_mult_u32(1926u, u_input.a.x));
    return Struct_3(firstTrailingBit(-2722i), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.e.a, u_input.a.x), max(abs(vec3<u32>(arg_0.e.a, 57224u, var_2.b.e.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 11565u, arg_0.e.a), vec3<u32>(var_2.b.e.a, var_2.b.b, 26333u))))), ~var_2.b.c, vec2<i32>(2147483647i, _wgslsmith_div_i32(-arg_0.c.x, var_0) << (32150u % 32u)), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~(-7329i), -25005i, -1i, 11535i);
    var var_1 = func_4(Struct_3(max(abs(var_0.x), func_1()), firstLeadingBit(63119u), _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.x, 2147483647i, 44483i), firstLeadingBit(var_0.wyy) | (var_0.wzw >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(-1i) * -var_0.zyz), countOneBits(vec2<i32>(24609i, var_0.x) << (vec2<u32>(51456u, u_input.a.x) % vec2<u32>(32u))), Struct_1(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), true, select(vec4<bool>(true, false, true, true), vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(true, false, true, true)), global1.x)));
    var var_2 = all(!vec4<bool>(var_1.e.c.x, all(global0.xz), false, !global0.x));
    let var_3 = -48152i;
    let var_4 = 0u;
    var_1 = Struct_3(-_wgslsmith_mult_i32(-6084i, -2147483647i << (~var_4 % 32u)), 74061u, _wgslsmith_mod_vec3_i32(var_0.yzz, abs(-var_0.xww)) << (_wgslsmith_mod_vec3_u32(u_input.a.wyy, ~firstLeadingBit(u_input.a.xyw)) % vec3<u32>(32u)), vec2<i32>(var_1.a, func_1()), func_4(Struct_3(i32(-1i) * -2147483647i, ~55965u, ~vec3<i32>(var_3, -1i, var_3) | ~vec3<i32>(var_1.d.x, var_3, var_1.d.x), vec2<i32>(-38789i, -43753i), func_4(Struct_3(-2147483647i, var_4, var_0.yxy, vec2<i32>(-30075i, var_1.a), var_1.e)).e)).e);
    var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xzx, vec4<i32>(_wgslsmith_div_i32(~37759i, var_1.d.x), 1i, var_1.c.x, _wgslsmith_dot_vec3_i32(func_4(func_4(Struct_3(-2147483647i, 0u, var_0.yyx, var_0.wz, Struct_1(var_1.e.a, var_1.e.c.x, vec4<bool>(true, true, global0.x, true), global1.x)))).c, vec3<i32>(_wgslsmith_clamp_i32(var_0.x, 20458i, var_0.x), _wgslsmith_mult_i32(0i, -1i), 32947i))), ~(~(~abs(u_input.a))));
}

