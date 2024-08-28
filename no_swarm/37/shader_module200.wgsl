struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1333f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(true, true, false, false))))))));
    var var_1 = u_input.d.x;
    var var_2 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.xz & vec2<u32>(u_input.a.x, 0u)), _wgslsmith_mult_vec2_u32(~u_input.a.wy, vec2<u32>(u_input.b, 28384u))), 47913u, firstLeadingBit(firstTrailingBit(2274u)), u_input.a.x);
    var var_3 = abs(~34545u);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(-var_0.a))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(vec3<u32>(u_input.a.x, (_wgslsmith_add_u32(u_input.b, u_input.c.x) << (1u % 32u)) & (35335u ^ _wgslsmith_clamp_u32(1u, 29426u, 82607u)), max(max(0u, 5407u) | _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.c.x & u_input.c.x)));
    var_0 = ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b, 1u, 0u), (u_input.a.xwz << (u_input.a.wxw % vec3<u32>(32u))) | u_input.a.wzw), u_input.a.xyz, vec3<bool>(select(true, -2147483647i == arg_1.x, false), u_input.d.x == -20412i, select(false, all(vec3<bool>(true, false, false)), select(false, false, true))));
    var_0 = countOneBits(u_input.a.wwz);
    var_0 = vec3<u32>(~(~1u), _wgslsmith_mult_u32(countOneBits(u_input.a.x), 0u), 4294967295u);
    var var_1 = arg_2;
    return u_input.d.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(select(-172f, _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(floor(arg_0.a))), true)), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(min(1671f, 549f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.d.x, -34282i & u_input.d.x, 14775i)), vec3<i32>(_wgslsmith_mod_i32(u_input.d.x, select(1i, 2147483647i, true)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, u_input.d.x, 15666i, u_input.d.x), vec4<i32>(u_input.d.x, -1i, -2147483647i, u_input.d.x) << (vec4<u32>(112873u, 17112u, u_input.a.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, u_input.d.x), ~u_input.d))), arg_0);
    var_0 = 1i;
    let var_1 = select(~select(~1u, 5750u & ~u_input.a.x, !(u_input.b >= 1u)), 1u, !any(vec2<bool>(all(vec4<bool>(false, false, false, true)), true)));
    return arg_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(arg_3);
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(73386u, arg_0.x), u_input.c), ~(vec2<u32>(arg_0.x, 0u) & arg_0.xx), _wgslsmith_div_vec2_u32(vec2<u32>(14457u, arg_0.x), _wgslsmith_mod_vec2_u32(arg_0.yx, vec2<u32>(arg_0.x, arg_0.x)))), firstLeadingBit(arg_0.zx));
    var_1 = ~select(firstTrailingBit(_wgslsmith_mult_u32(1u >> (1u % 32u), arg_0.x)), 69435u, all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
    var var_2 = vec2<bool>(!(!all(vec2<bool>(false, false))), any(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_3 = func_2(var_0);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-594f, 410f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> bool {
    var var_0 = func_1(vec3<u32>(76355u, 1u, u_input.a.x), _wgslsmith_mult_vec4_i32(-(-vec4<i32>(u_input.d.x, 1i, 0i, arg_1.x) >> (vec4<u32>(u_input.c.x, u_input.b, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -42474i), -func_4(vec4<f32>(arg_0.a, 218f, -930f, arg_0.a), vec3<i32>(-1i, 2147483647i, u_input.d.x), Struct_1(arg_0.a)), u_input.d.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(23305i, u_input.d.x), vec2<i32>(-2147483647i, u_input.d.x))))), u_input.d.x, Struct_1(_wgslsmith_f_op_f32(exp2(arg_0.a))));
    var_0 = Struct_1(-1806f);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(firstLeadingBit(4294967295u), u_input.a.x);
    let var_1 = any(vec4<bool>(~(~u_input.c.x) != 1u, false, func_5(func_1(u_input.a.wwz, vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 1i), u_input.d.x, Struct_1(-208f)), _wgslsmith_clamp_vec2_i32(u_input.d, u_input.d, vec2<i32>(u_input.d.x, -13571i)), true) & all(vec2<bool>(false, true)), all(vec3<bool>(true, true, false)) | (~u_input.d.x > u_input.d.x)));
    let var_2 = select(select(!vec3<bool>(any(vec4<bool>(var_1, false, var_1, var_1)), !var_1, true), !select(!vec3<bool>(false, var_1, true), select(vec3<bool>(var_1, false, true), vec3<bool>(true, var_1, var_1), true), func_5(Struct_1(166f), u_input.d, var_1)), !vec3<bool>(all(vec2<bool>(var_1, true)), !var_1, var_1)), !select(select(select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, true, false), vec3<bool>(true, var_1, var_1)), vec3<bool>(true, true, false), select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, var_1), var_1)), select(!vec3<bool>(var_1, false, var_1), !vec3<bool>(false, var_1, var_1), var_1), !all(vec3<bool>(false, false, false))), any(!select(vec2<bool>(false, var_1), select(vec2<bool>(true, true), vec2<bool>(true, false), var_1), select(vec2<bool>(false, var_1), vec2<bool>(false, true), vec2<bool>(false, var_1)))));
    var_0 = ~(~(~(~u_input.a.x) >> (u_input.c.x % 32u)));
    let var_3 = func_2(func_2(func_1(max(u_input.a.zzz, u_input.a.xzz), ~vec4<i32>(u_input.d.x, 1i, 16315i, 0i), -(-8283i ^ u_input.d.x), func_1(max(vec3<u32>(26227u, 98434u, 1u), vec3<u32>(11690u, 43468u, 0u)), vec4<i32>(14506i, u_input.d.x, -70021i, u_input.d.x), u_input.d.x & u_input.d.x, func_1(vec3<u32>(32674u, 0u, 67134u), vec4<i32>(-52768i, 9496i, 1112i, u_input.d.x), u_input.d.x, Struct_1(-157f))))));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_1(vec3<u32>(1u, 9711u, 0u), abs(vec4<i32>(1i, u_input.d.x, u_input.d.x, u_input.d.x)), -2147483647i, func_1(u_input.a.xww, vec4<i32>(-6949i, -65499i, u_input.d.x, -1i), -1i, Struct_1(-118f))).a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) + _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.a, var_3.a)) * _wgslsmith_f_op_f32(f32(-1f) * -869f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~min(~1u, 29786u), ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.a.x, 1u, u_input.b, 0u)), ~u_input.a << (~vec4<u32>(u_input.c.x, 8426u, 0u, u_input.c.x) % vec4<u32>(32u))), ~0u, ~vec2<i32>(1i, _wgslsmith_add_i32(5811i, u_input.d.x) | u_input.d.x));
}

