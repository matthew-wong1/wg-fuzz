struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<bool>(true, arg_0.b);
    var var_1 = 1u;
    var_0 = !vec2<bool>(true, arg_0.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_f32(exp2(arg_0.c.x))));
}

fn func_2() -> bool {
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1091f, -186f)), -1000f) + _wgslsmith_f_op_f32(446f * _wgslsmith_f_op_f32(select(568f, -374f, true))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -318f), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false, var_0, u_input.e.x, vec4<f32>(var_1, var_1, -717f, var_1), 0i), true, vec3<f32>(-976f, -1384f, var_1), vec4<u32>(6335u, u_input.a, u_input.d, u_input.d), vec3<f32>(381f, var_1, -1336f))))))))), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - -1509f), 1f, select(true, true, 78952i >= var_0)))), -1311f, var_1);
    var var_3 = !vec3<bool>(!any(vec3<bool>(true, true, true)), false, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)));
    let var_4 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32((vec4<i32>(2147483647i, 29033i, 17153i, 13124i) << (vec4<u32>(u_input.e.x, u_input.d, 0u, 28042u) % vec4<u32>(32u))) | u_input.b, -(vec4<i32>(-23117i, var_0, var_0, 38612i) ^ u_input.b), u_input.b >> (~vec4<u32>(5207u, 1u, 30571u, u_input.d) % vec4<u32>(32u))), u_input.b), var_0, _wgslsmith_div_i32(-28449i, ~43135i));
    return !(u_input.d > u_input.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_4 {
    let var_0 = abs(u_input.e);
    var var_1 = vec4<bool>(all(!vec4<bool>(false, arg_1.x < -2078f, true, true)), any(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, all(vec3<bool>(true, false, false)), func_2()), vec4<bool>(true, true, true, true))), true, any(vec2<bool>(true, true)));
    var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(1u == u_input.a, !(!all(var_1.wy)), (arg_0.x | u_input.b.x) != -45513i, _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_div_f32(1655f, arg_1.x)) <= arg_1.x), !(!vec4<bool>(var_1.x, all(vec4<bool>(true, var_1.x, var_1.x, false)), true, !var_1.x)));
    let var_2 = vec4<u32>(1u ^ ~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e.x, var_0.x), _wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x)), 8180u, 4294967295u, ~55702u);
    var_1 = select(!select(select(vec4<bool>(true, var_1.x, var_1.x, false), !vec4<bool>(var_1.x, true, false, var_1.x), var_1.x), vec4<bool>(var_1.x, true || var_1.x, any(var_1.xyx), false), true), select(!vec4<bool>(all(var_1.zyy), var_1.x, true, var_1.x), !select(select(vec4<bool>(var_1.x, false, true, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, true, var_1.x), var_1.x), false), -arg_0.x < -2871i);
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_1, arg_1)))), select(select(var_1.zwz, vec3<bool>(var_1.x, true, var_1.x), var_1.x), select(!select(var_1.xxz, vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), select(var_1.xzx, var_1.zyy, vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(var_1.x, true, !var_1.x)), false), -_wgslsmith_add_vec2_i32(arg_0.wy, -arg_0.wy));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1755f, func_1(vec4<i32>(-28590i, -1i << (u_input.e.x % 32u), -arg_0.c.x, 2147483647i), arg_0.a).a.x)));
    return u_input.e.zyy | _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.xzx, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.a, u_input.a), u_input.e.zxz), vec3<u32>(39435u, u_input.e.x, 0u) << (u_input.e.xyw % vec3<u32>(32u)))), max(u_input.e.yyx, _wgslsmith_mult_vec3_u32(u_input.e.xwy, u_input.e.wzw) >> ((vec3<u32>(u_input.d, u_input.d, 4294967295u) << (u_input.e.zxy % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = u_input.e;
    var var_1 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_0.zz, u_input.e.zx), ~0u) < arg_0.x, u_input.c, _wgslsmith_mult_u32(~(~u_input.d ^ 1u), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(289f, -1000f, 1000f, 131f))) * vec4<f32>(-666f, -702f, _wgslsmith_f_op_f32(684f - -573f), _wgslsmith_f_op_f32(sign(-1000f))))), reverseBits(1i));
    var_1 = Struct_1(arg_2.x, 1861i << (1u % 32u), 66198u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(var_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_1.d)))) + vec4<f32>(_wgslsmith_f_op_f32(round(var_1.d.x)), var_1.d.x, _wgslsmith_f_op_f32(-1126f + 306f), _wgslsmith_f_op_f32(f32(-1f) * -448f))), arg_2.x)), arg_3.x);
    let var_2 = ~arg_3.x;
    let var_3 = Struct_1(var_1.a, _wgslsmith_sub_i32(var_1.b, countOneBits(var_2 << (var_0.x % 32u))), reverseBits(32204u), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(false, var_2, 1u, vec4<f32>(var_1.d.x, 426f, var_1.d.x, -622f), 1i), var_1.a & false, _wgslsmith_f_op_vec3_f32(var_1.d.zzw - vec3<f32>(var_1.d.x, -1499f, var_1.d.x)), abs(u_input.e), vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -126f)), 719f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1532f)))))), _wgslsmith_clamp_i32(arg_3.x, -2147483647i, firstLeadingBit(_wgslsmith_add_i32(-7954i, arg_3.x)) | ((arg_3.x & 21071i) >> (~1u % 32u))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.d.yz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.d.wy) + func_1(vec4<i32>(var_3.e, var_2, 1i, arg_3.x), vec2<f32>(803f, var_1.d.x)).a))), vec3<bool>(any(!vec3<bool>(false, var_1.a, true)), var_3.a, var_1.a), u_input.b.zx ^ ~vec2<i32>(reverseBits(var_1.e), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.e.ww, ~func_4(func_1(max(vec4<i32>(u_input.c, u_input.c, -1i, 0i), vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.c)), vec2<f32>(213f, 893f)), u_input.b, vec3<f32>(-1000f, _wgslsmith_f_op_f32(-874f + -204f), -1942f)), select(!func_1(abs(vec4<i32>(u_input.b.x, 15059i, 1291i, -38413i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(106f, 957f) + vec2<f32>(-1000f, 1788f))).b.yx, !select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c > 2147483647i), !(!all(vec3<bool>(true, false, true)))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.xz), 1i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c))) << (u_input.e.zzx % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.zyy, u_input.b.xzy), ~vec3<i32>(1i, u_input.b.x, u_input.b.x))));
    let var_1 = Struct_2(Struct_1(true, 0i, u_input.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, var_0.a.x, var_0.a.x, -596f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-543f)), var_0.a.x, -504f, -138f)), ~_wgslsmith_dot_vec4_i32(min(u_input.b, u_input.b), u_input.b)), var_0.b.x, vec3<f32>(_wgslsmith_f_op_f32(-689f * -661f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1363f - var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f) * var_0.a.x))), var_0.a.x), _wgslsmith_mod_vec4_u32(u_input.e, ~vec4<u32>(1u, u_input.e.x, u_input.a, abs(11653u))), vec3<f32>(-1788f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) + 225f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) * -815f))));
    var_0 = func_5(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.c, 84566u), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.d), u_input.e.yx))), u_input.e.xzw ^ var_1.d.wxx, select(!(!var_0.b.xz), var_0.b.zy, !(!(!vec2<bool>(var_1.a.a, false)))), u_input.b.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, i32(-1i) * -func_5(vec2<u32>(3369u, 39633u), var_1.d.yxw, vec2<bool>(var_0.b.x, false), vec3<i32>(var_1.a.b, -2147483647i, var_0.c.x)).c.x, 1i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(744f, _wgslsmith_f_op_f32(var_1.a.d.x + 262f))), var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(-1396f, var_1.c.x, var_0.a.x))))))));
}

