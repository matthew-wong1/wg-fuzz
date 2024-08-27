struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = -24368i;
    var var_1 = 20182u;
    var_1 = ~(~(~15243u));
    let var_2 = u_input.b.x;
    var_0 = _wgslsmith_add_i32(countOneBits(0i), abs(select(u_input.a, 0i, true) | _wgslsmith_add_i32(~u_input.a, u_input.a)));
    return !select(select(vec2<bool>(true, any(vec3<bool>(arg_0, true, arg_0))), select(!vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, true)), !(!arg_0)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, arg_0), arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0)), vec2<bool>(arg_0, arg_0)), select(select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), arg_0), vec2<bool>(false, false), arg_0), !vec2<bool>(arg_0, true)), vec2<bool>(true, true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_u32(u_input.b.x, u_input.b.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, max(1u, u_input.b.x), countOneBits(1u)), vec3<u32>(select(101283u, 0u, arg_3.a.x), u_input.d.x, 1u)) % 32u));
    var var_1 = Struct_1(arg_3.a);
    let var_2 = Struct_1(!select(select(select(var_1.a, arg_0.a, false), !vec3<bool>(var_1.a.x, true, arg_3.a.x), vec3<bool>(arg_3.a.x, false, false)), arg_3.a, arg_0.a));
    var var_3 = var_2.a.x;
    var_1 = arg_0;
    return !var_1.a.xx;
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(Struct_1(vec3<bool>(any(func_3(false)), -28401i <= _wgslsmith_mod_i32(u_input.a, 17748i), !(u_input.c < u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1485f, 1013f, -125f, -895f) * vec4<f32>(-838f, -242f, 457f, -502f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-123f, -477f, -265f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(598f - 282f), _wgslsmith_f_op_f32(f32(-1f) * -290f), 901f, _wgslsmith_f_op_f32(-360f * -1958f)))), vec3<i32>(u_input.a, -1i, 17180i) ^ (vec3<i32>(-1i >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(46278i, 1i, 30471i)), _wgslsmith_mult_i32(u_input.a, u_input.a)) & -firstLeadingBit(vec3<i32>(u_input.a, 0i, 1i))), Struct_1(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), all(vec3<bool>(false, false, false))), vec3<bool>(any(vec2<bool>(false, true)), true, true), true)));
    var var_1 = Struct_1(!(!vec3<bool>(var_0.x, all(vec2<bool>(false, false)), !var_0.x)));
    var_0 = select(func_4(Struct_1(select(var_1.a, select(var_1.a, var_1.a, vec3<bool>(var_0.x, false, false)), vec3<bool>(var_0.x, var_0.x, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(646f, -480f, -1406f, -1040f), vec4<f32>(1493f, -188f, 1063f, 616f))))), _wgslsmith_div_vec3_i32(reverseBits(max(vec3<i32>(2147483647i, 2147483647i, u_input.a), vec3<i32>(1i, -2147483647i, 37983i))), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, u_input.a), select(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(0i, -1i, 2147483647i), vec3<bool>(var_0.x, var_0.x, false)))), Struct_1(vec3<bool>(false, var_0.x, false))), vec2<bool>(select(func_4(Struct_1(vec3<bool>(var_1.a.x, var_0.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, 475f, -1198f, -418f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-36794i, u_input.a, u_input.a), vec3<i32>(u_input.a, 0i, 28191i), vec3<i32>(-4618i, u_input.a, 1i)), Struct_1(var_1.a)).x, true, true), var_0.x), all(func_3(true)));
    var_0 = var_1.a.zy;
    var_0 = var_1.a.zx;
    return Struct_1(!var_1.a);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = any(vec4<bool>(27823i != arg_2.x, (true | (arg_3.x || arg_3.x)) || arg_0.a.x, !(!arg_0.a.x), !select(true, arg_0.a.x, arg_3.x)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1721f, _wgslsmith_f_op_f32(step(-1575f, _wgslsmith_f_op_f32(round(-1000f))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    var var_2 = func_4(Struct_1(func_2().a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-438f, 206f, var_1.x, var_1.x) + vec4<f32>(var_1.x, var_1.x, -1330f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -509f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-926f, var_1.x, 304f, -651f)))))), -_wgslsmith_clamp_vec3_i32(-vec3<i32>(-41300i, 17343i, arg_2.x) ^ vec3<i32>(-2147483647i, arg_2.x, -2147483647i), vec3<i32>(arg_2.x, -2147483647i, _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_2.x, -32285i))), vec3<i32>(arg_2.x, 18912i, u_input.a) ^ countOneBits(vec3<i32>(u_input.a, u_input.a, 2147483647i))), Struct_1(func_2().a));
    var_2 = !arg_0.a.yz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(961f - var_1.x)))))));
    return u_input.a;
}

fn func_6(arg_0: i32, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -349f);
    var var_1 = -abs(~_wgslsmith_mod_i32(arg_1, ~5056i));
    var var_2 = _wgslsmith_add_vec2_u32(u_input.d.yy, ~((u_input.b.xx >> (vec2<u32>(4294967295u, u_input.e) % vec2<u32>(32u))) | ~_wgslsmith_clamp_vec2_u32(u_input.b.zw, u_input.d.zy, vec2<u32>(0u, u_input.e))));
    var var_3 = func_2().a.xz;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(288f, -1494f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -571f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-814f - -645f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1950f))))) * -689f));
    return Struct_1(vec3<bool>(!(!var_3.x), !select(true, true | var_3.x, false), false));
}

fn func_1(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = func_6(u_input.a, func_5(func_2(), Struct_1(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, arg_0, true), arg_0), select(vec3<bool>(true, false, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, false, false)), vec3<bool>(arg_0, false, false))), vec2<i32>(~firstTrailingBit(-2147483647i), -70900i), vec3<bool>(func_4(Struct_1(vec3<bool>(true, arg_0, false)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(117f, -102f, 789f, 614f))), -vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_1(vec3<bool>(arg_0, true, arg_0))).x, any(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true)), arg_0);
    var var_1 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1140f, -117f, select(arg_0, true, var_0.a.x))) * 1000f) > _wgslsmith_f_op_f32(select(-602f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(840f))), any(select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(false, false, false, arg_0), var_0.a.x)))), 1i > _wgslsmith_sub_i32(1i, func_5(func_6(u_input.a, u_input.a, true), func_2(), firstLeadingBit(vec2<i32>(u_input.a, -15579i)), !var_0.a)));
    var var_2 = func_6(abs(-u_input.a >> ((arg_1 >> ((u_input.e >> (4294967295u % 32u)) % 32u)) % 32u)), _wgslsmith_mult_i32(min(-2147483647i, u_input.a), _wgslsmith_sub_i32(-61076i << (~u_input.b.x % 32u), ~_wgslsmith_mult_i32(-38443i, u_input.a))), true).a.x;
    var_1 = func_2().a;
    var var_3 = func_6(abs(u_input.a), u_input.a, all(vec4<bool>(var_1.x, var_0.a.x, false, false)));
    return !func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!func_1(true, 3403u)), select(select(func_2().a, select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), false), vec3<bool>(true, true, true), func_4(func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 439f, 2162f, 269f) - vec4<f32>(-263f, -1189f, 297f, 499f)), select(vec3<i32>(14818i, u_input.a, u_input.a), vec3<i32>(-1i, 1i, u_input.a), vec3<bool>(true, false, false)), func_2()).x), true);
    let var_1 = Struct_1(!select(!(!vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(true, var_0.x, var_0.x)), !(!vec3<bool>(true, false, var_0.x))));
    var var_2 = -u_input.a;
    var_0 = vec3<bool>(!var_1.a.x, true, var_0.x);
    let var_3 = _wgslsmith_sub_vec4_u32(~(~u_input.b), _wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(countOneBits(u_input.b), select(u_input.b, u_input.b, vec4<bool>(false, false, var_0.x, true))) << (~firstLeadingBit(u_input.b) % vec4<u32>(32u))));
    var var_4 = 933f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(717f))), -min(select(vec2<i32>(-42357i, u_input.a), vec2<i32>(7186i, u_input.a), var_0.x) | -vec2<i32>(-10552i, u_input.a), _wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, 11703i), min(vec2<i32>(32249i, 28348i), vec2<i32>(u_input.a, u_input.a)))), -634f, ~vec4<u32>(reverseBits(abs(var_3.x)), _wgslsmith_dot_vec3_u32(firstTrailingBit(var_3.yyz), reverseBits(vec3<u32>(83900u, 1u, 4294967295u))), abs(0u), ~4294967295u));
}

