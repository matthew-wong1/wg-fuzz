struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_i32(u_input.a, -arg_3.x);
    let var_1 = _wgslsmith_f_op_f32(-1000f - 956f);
    return Struct_3(var_1, vec4<i32>(i32(-1i) * -15240i, -2147483647i, 1i, -2147483647i << (abs(~arg_1) % 32u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = vec2<u32>(~(~firstTrailingBit(1u)), arg_1.x);
    var var_1 = arg_1.yxw;
    let var_2 = true;
    var_1 = ~vec3<u32>(~36848u, u_input.b, select(var_1.x >> (var_0.x % 32u), var_1.x, var_2));
    var var_3 = 2147483647i >= _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2570i, u_input.d, 51276i, u_input.e.x), u_input.c), select(vec4<i32>(-1i, ~u_input.d, max(44643i, 16628i), -u_input.e.x), firstTrailingBit(-u_input.c), !(u_input.c.x <= u_input.c.x)));
    return vec4<bool>(true, true, false, var_2 || var_2);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_4) -> bool {
    var var_0 = Struct_1(vec3<bool>(false, arg_3.c.x, func_3(~vec4<u32>(u_input.b, 69791u, 4294967295u, u_input.b), ~(arg_2 & arg_2)).x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), 454f), vec4<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), arg_2.yz), 1u) ^ ~1u, 31067u, 63667u, arg_2.x), all(vec4<bool>(_wgslsmith_add_u32(arg_2.x, arg_2.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 19891u, 1u, 37992u), vec4<u32>(0u, 16651u, 0u, arg_2.x)), !func_3(arg_2, arg_2).x, all(vec3<bool>(true, arg_3.c.x, true)), any(!arg_3.c.wzx))));
    let var_1 = select(vec3<bool>(arg_3.c.x && arg_3.c.x, false, any(select(select(arg_3.c.wxx, arg_3.c.zzx, vec3<bool>(arg_3.c.x, var_0.a.x, false)), select(arg_3.c.ywz, vec3<bool>(arg_3.c.x, false, true), var_0.a.x), vec3<bool>(arg_3.c.x, var_0.a.x, arg_3.c.x)))), var_0.a, vec3<bool>(true, false != all(func_3(vec4<u32>(1u, arg_2.x, var_0.c.x, 118879u), vec4<u32>(26267u, 73920u, var_0.c.x, arg_2.x)).wy), true));
    var_0 = Struct_1(arg_3.c.zwy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + var_0.b)))), arg_2, -1666f == _wgslsmith_f_op_f32(select(-857f, -285f, select(any(var_1.zx), arg_3.c.x | var_0.a.x, false))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, -368f, -348f, -488f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -115f, -963f, -381f) + vec4<f32>(arg_0.a, -468f, -1622f, arg_0.a))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, var_0.b, -1000f)))))), vec3<bool>(true, !(!any(vec4<bool>(false, var_1.x, true, arg_3.c.x))), all(func_3(vec4<u32>(4294967295u, 20322u, 4294967295u, arg_2.x), arg_2).wxx) & false), ~var_0.c.x, Struct_1(select(vec3<bool>(true, any(vec2<bool>(false, var_0.d)), false), func_3(arg_2, vec4<u32>(4294967295u, 0u, 17939u, u_input.b)).wwz, true), -211f, ~_wgslsmith_div_vec4_u32(~vec4<u32>(10775u, 155u, 1u, u_input.b), abs(var_0.c)), any(select(!var_0.a.xy, select(var_0.a.zx, vec2<bool>(arg_3.c.x, arg_3.c.x), var_0.a.zz), true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2.a.yz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.a.x, var_0.b)))))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.x))), 907f))) < _wgslsmith_f_op_f32(sign(var_2.a.x));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = vec4<bool>(true || !(all(vec4<bool>(false, false, false, true)) != true), !(false && !any(vec2<bool>(false, true))), !func_4(func_2(57491u >> (u_input.b % 32u), arg_1, arg_0, u_input.c & vec4<i32>(1i, u_input.e.x, 1043i, arg_3)), -1i, abs(vec4<u32>(0u, arg_1, arg_1, arg_1) ^ vec4<u32>(u_input.b, 0u, u_input.b, arg_2)), Struct_4(vec3<i32>(u_input.c.x, u_input.c.x, arg_3) >> (vec3<u32>(arg_2, arg_2, 105206u) % vec3<u32>(32u)), arg_3, func_3(vec4<u32>(0u, u_input.b, arg_1, u_input.b), vec4<u32>(46284u, 38243u, arg_2, 0u)))), any(!vec2<bool>(any(vec3<bool>(false, false, false)), arg_0 <= -244f)));
    let var_1 = _wgslsmith_add_u32(arg_2 << (reverseBits(_wgslsmith_add_u32(arg_2, 1u)) % 32u), arg_2 << (~min(4294967295u, arg_2) % 32u)) > 72559u;
    var var_2 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(310f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1133f)))))), arg_0, arg_0, arg_0), var_0.zxw, select(~(_wgslsmith_mult_u32(44151u, 71526u) & abs(u_input.b)), ~_wgslsmith_mult_u32(111946u ^ arg_1, 4294967295u), false), Struct_1(!var_0.yzz, 495f, firstLeadingBit(vec4<u32>(u_input.b, 1u, _wgslsmith_div_u32(arg_1, arg_2), 1u)), var_0.x));
    let var_3 = var_2.d;
    var var_4 = -(~(~(~(arg_3 | -2147483647i))));
    return _wgslsmith_dot_vec4_u32(abs(abs(var_2.d.c)), select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(69354u, arg_2, 20660u, 1u), var_3.c, true), vec4<u32>(4294967295u, var_2.c, u_input.b, var_2.c)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_2, 3968u, 408u), var_3.c), vec4<u32>(arg_1, var_2.d.c.x << (var_3.c.x % 32u), arg_2, firstLeadingBit(arg_2))), var_2.d.c, false));
}

fn func_5(arg_0: u32) -> Struct_5 {
    var var_0 = u_input.a < _wgslsmith_sub_i32(select(u_input.c.x, ~(~u_input.e.x), false), u_input.a);
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(~(-19471i), u_input.d), u_input.c.yy);
    var var_2 = Struct_5(~(~(vec4<u32>(4294967295u, 23013u, u_input.b, arg_0) ^ vec4<u32>(63832u, 119980u, u_input.b, 1u)) ^ vec4<u32>(4294967295u, arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 41619u), vec2<u32>(u_input.b, 55665u)), _wgslsmith_mod_u32(u_input.b, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f))), !(!all(vec2<bool>(false, true))));
    var_1 = countOneBits(vec2<i32>(~_wgslsmith_mult_i32(~(-26673i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.x, 24032i, 2147483647i), u_input.c)), -1i));
    let var_3 = true;
    return Struct_5(~vec4<u32>(~1u, 21813u, max(reverseBits(u_input.b), 0u), u_input.b), -1000f, false);
}

fn func_6(arg_0: Struct_5, arg_1: i32, arg_2: u32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = func_5(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(arg_0.a.wwx, vec3<u32>(~4294967295u, 30074u >> (arg_2 % 32u), 4294967295u)), 13898u));
    var_0 = func_5(_wgslsmith_add_u32(48399u << (0u % 32u), u_input.b));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-161f - _wgslsmith_f_op_f32(f32(-1f) * -1067f)), -1269f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_0.b)))), -263f), !select(!(!vec3<bool>(arg_0.c, var_0.c, arg_0.c)), select(vec3<bool>(var_0.c, var_0.c, true), !vec3<bool>(false, arg_0.c, true), any(vec4<bool>(var_0.c, true, var_0.c, arg_0.c))), var_0.c), 1u, Struct_1(vec3<bool>(var_0.c, false & arg_0.c, func_4(Struct_3(var_0.b, vec4<i32>(arg_1, -2147483647i, u_input.d, 3507i)), abs(arg_3.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.x, 0u, 0u, 1u), vec4<u32>(u_input.b, 1u, arg_2, u_input.b), vec4<u32>(1u, var_0.a.x, u_input.b, arg_2)), Struct_4(u_input.c.zwy, -4757i, vec4<bool>(true, var_0.c, var_0.c, var_0.c)))), arg_0.b, ~(~arg_0.a), true));
    var_0 = Struct_5(_wgslsmith_add_vec4_u32(vec4<u32>(24088u, 4294967295u, var_1.d.c.x, 0u), vec4<u32>(4294967295u, ~var_0.a.x, var_0.a.x, _wgslsmith_div_u32(u_input.b, var_0.a.x) << (~57498u % 32u))), var_0.b, false);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(var_1.a));
    return var_1.d.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_6(func_5(_wgslsmith_div_u32(func_1(-566f, 45378u, 44848u, u_input.e.x), max(u_input.b, 35929u))), _wgslsmith_sub_i32(min(firstTrailingBit(u_input.d), 0i), abs(u_input.e.x)), select(select(u_input.b, 1u, true), 0u, true), vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, u_input.a)), func_2(_wgslsmith_add_u32(~reverseBits(1u), 15585u), func_5(43854u).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(363f)), -1816f))), min(u_input.c, ~vec4<i32>(u_input.d, 64101i, u_input.c.x, 2147483647i))).a, ~(~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 111989u, u_input.b), vec4<u32>(u_input.b, u_input.b, 58259u, u_input.b)))), true);
    var var_1 = reverseBits(_wgslsmith_clamp_i32(-19158i, -2147483647i, 0i));
    var var_2 = ~_wgslsmith_div_i32(-u_input.a, -1i);
    var_1 = 2147483647i;
    var var_3 = Struct_5(vec4<u32>(~(~1534u), _wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mult_u32(~var_0.c.x, _wgslsmith_mod_u32(u_input.b ^ var_0.c.x, func_1(var_0.b, 1u, var_0.c.x, -42057i))), reverseBits(14438u)), _wgslsmith_f_op_f32(trunc(2075f)), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, 8620i, u_input.d);
}

