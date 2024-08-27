struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(-621f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f * 1564f)), _wgslsmith_f_op_f32(1553f * -1231f), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-799f, -1426f)))), 1000f, vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), select(true, true, true))), true && (any(vec3<bool>(false, true, false)) || true), true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1567f + -149f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x))), var_0.b))), -188f, vec3<bool>(var_0.c.x & var_0.c.x, !(~u_input.a < 1u), ~20504u >= ~(~u_input.a)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(859f * var_0.b)) + var_1.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_1.a.x))) - var_1.a.x)), var_0.c);
    var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_1.a.x)), var_0.c);
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(665f)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(-arg_1), arg_1) + vec3<f32>(arg_1, _wgslsmith_f_op_f32(-1111f - arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -2047f, false))))), -1705f, vec3<bool>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-2621i, -15088i, u_input.b), vec3<i32>(u_input.b, -1i, -23638i))) >= (-21161i << (1u % 32u)), true, true));
    var var_1 = Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1401f, -1137f)))), _wgslsmith_div_f32(var_0.b, -1000f), select(arg_2.wyw, vec3<bool>(true, true, any(vec4<bool>(var_0.c.x, arg_2.x, true, false))), !arg_2.yyx));
    let var_2 = false;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(arg_1, var_1.b, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1586f, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(263f, var_1.a.x, -1000f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -364f)))))), !arg_2.yzz);
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.b, 164f) * _wgslsmith_f_op_vec3_f32(-var_0.a))))), _wgslsmith_f_op_f32(trunc(-797f)), !var_1.c);
    return any(!(!arg_2.zyx));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = select(firstLeadingBit(33925i), -(~(~abs(-19324i))), arg_0.c.x);
    var var_1 = !arg_1.c.x;
    var_1 = !func_4(true, _wgslsmith_f_op_f32(func_3(56121i >> (u_input.a % 32u))), select(vec4<bool>(false, false, true, true), !vec4<bool>(true, true, arg_0.c.x, true), arg_1.c.x), _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 14026u), ~u_input.a)) != arg_0.c.x;
    var var_2 = !select(select(select(select(arg_1.c.xx, vec2<bool>(false, false), arg_0.c.x), vec2<bool>(true, arg_1.c.x), !arg_0.c.yx), !select(vec2<bool>(arg_0.c.x, true), vec2<bool>(false, arg_1.c.x), vec2<bool>(arg_1.c.x, true)), vec2<bool>(arg_0.c.x, func_4(true, arg_1.a.x, vec4<bool>(true, arg_1.c.x, arg_0.c.x, arg_1.c.x), u_input.a))), vec2<bool>(all(select(vec4<bool>(arg_0.c.x, arg_1.c.x, arg_0.c.x, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_0.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x))), true), arg_0.c.xy);
    let var_3 = -54526i;
    return _wgslsmith_sub_u32(23103u, u_input.a);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = ~_wgslsmith_clamp_u32(~(~31808u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.a, max(13249u, u_input.a), abs(4294967295u)), _wgslsmith_add_u32(countOneBits(u_input.a), 1u)), func_2(arg_1, arg_3));
    let var_1 = arg_0 && (true | arg_0);
    let var_2 = arg_1.a;
    var var_3 = ~_wgslsmith_add_vec2_u32(select(vec2<u32>(~u_input.a, 0u), firstTrailingBit(vec2<u32>(u_input.a, 0u)) & ~vec2<u32>(u_input.a, 1u), true), ~(~(~vec2<u32>(10783u, 4294967295u))));
    var var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(arg_2 ^ -1i), -2147483647i, 0i), vec3<i32>(u_input.b, arg_2, -arg_2)), ((~vec3<i32>(3271i, 6241i, -6064i) & abs(vec3<i32>(arg_2, 10330i, u_input.b))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, var_3.x), ~vec3<u32>(u_input.a, 1u, 12159u)) % vec3<u32>(32u))) >> (vec3<u32>(var_3.x, var_3.x, 25890u) % vec3<u32>(32u)));
    return 1000f;
}

fn func_5(arg_0: f32, arg_1: bool) -> vec3<u32> {
    var var_0 = ~_wgslsmith_mult_i32(1i, ~2147483647i);
    var_0 = ~abs(0i);
    let var_1 = vec4<i32>(abs(u_input.b) ^ -1i, 0i, 206i, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-1i, -48953i)), ~(-vec2<i32>(-23345i, -2147483647i))) >> (_wgslsmith_div_u32(u_input.a, 1u) % 32u));
    var_0 = firstTrailingBit(u_input.b) | reverseBits(_wgslsmith_clamp_i32(-1i, ~u_input.b & -3406i, 59052i));
    let var_2 = 78257u;
    return vec3<u32>(~max(1u, var_2), var_2, firstTrailingBit(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~(~abs(vec3<u32>(u_input.a, 4294967295u, u_input.a)))), firstLeadingBit(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, Struct_1(vec3<f32>(-2123f, -1134f, -501f), 106f, vec3<bool>(false, false, false)), 1i, Struct_1(vec3<f32>(-1000f, 702f, 1272f), 887f, vec3<bool>(false, true, false))))), true)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f)), 1000f), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, -1330f) * _wgslsmith_f_op_f32(min(378f, -1080f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) * _wgslsmith_f_op_f32(trunc(144f))))), 1f, vec3<bool>(true, true, true));
    let var_2 = max(vec3<i32>(u_input.b << (30660u % 32u), -1i, u_input.b), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 21765i, _wgslsmith_div_i32(-6465i, u_input.b)), firstLeadingBit(-vec3<i32>(-39902i, u_input.b, -7495i))), -2213i, 2022i));
    let var_3 = Struct_1(var_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i))), 652f))), select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), select(vec3<bool>(any(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x)), any(var_1.c), var_1.c.x), vec3<bool>(!var_1.c.x, var_1.c.x, any(vec4<bool>(true, false, var_1.c.x, true))), select(var_1.c, var_1.c, any(vec2<bool>(true, var_1.c.x)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, var_1.c.x, false), var_1.c, true), vec3<bool>(true, var_1.c.x, var_1.c.x), func_4(var_1.c.x, 765f, vec4<bool>(var_1.c.x, true, true, false), 8074u)), select(var_1.c, vec3<bool>(var_1.c.x, true, var_1.c.x), var_1.c))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1648f, var_3.a.x, var_3.a.x, 585f)))))));
    let var_5 = ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, var_0), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(var_0, 10762u)), var_1.c.x), select(vec2<u32>(54723u, 30474u), vec2<u32>(4294967295u, 4294967295u), var_3.c.yx) << (~vec2<u32>(6393u, 9214u) % vec2<u32>(32u))) << (((~_wgslsmith_div_vec2_u32(vec2<u32>(41399u, 7615u), vec2<u32>(1u, 21471u)) & _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, var_0), vec2<u32>(49827u, 0u)), vec2<u32>(41232u, 1u))) ^ vec2<u32>(firstLeadingBit(u_input.a), 78835u)) % vec2<u32>(32u));
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(var_4.zw)))) - _wgslsmith_f_op_vec2_f32(var_4.yw - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.x, -279f), var_4.xx, var_3.c.x)) - _wgslsmith_div_vec2_f32(var_4.yw, vec2<f32>(-829f, var_1.a.x))), vec2<f32>(-518f, _wgslsmith_f_op_f32(min(var_1.a.x, 651f)))))));
    var var_7 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0, 14462u) << (countOneBits(vec2<u32>(69960u, 72297u) << (vec2<u32>(var_5.x, var_5.x) % vec2<u32>(32u))) % vec2<u32>(32u))), max(var_5, abs(countOneBits(var_5))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(52227u, var_5.x, abs(4294967295u), u_input.a), ~4294967295u, -_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)), vec4<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.b), i32(-1i) * -26583i, -45657i), vec4<i32>(-6055i, ~var_2.x, _wgslsmith_clamp_i32(u_input.b, -6820i, -1i), max(2147483647i, -2147483647i))), _wgslsmith_f_op_vec2_f32(exp2(var_6)));
}

