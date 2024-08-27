struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = Struct_2(arg_0.a, Struct_1(true), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -331f));
    var var_1 = Struct_3(Struct_2(var_0.a, arg_0.b, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1410f) * -638f)), -abs(countOneBits(u_input.a.x)), 207f, !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.c.a, true, false, arg_0.b.a), vec4<bool>(true, true, false, false)), vec4<bool>(arg_0.a.x < arg_0.a.x, false, var_0.c.a, true), !select(vec4<bool>(var_0.b.a, var_0.c.a, var_0.b.a, false), vec4<bool>(false, true, arg_0.b.a, arg_0.c.a), vec4<bool>(false, var_0.b.a, arg_0.c.a, var_0.c.a))));
    var_1 = Struct_3(arg_0, firstTrailingBit(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2029f + arg_0.d), 627f)))), vec4<bool>(true, any(select(!var_1.d.zyz, vec3<bool>(var_1.a.b.a, false, var_0.c.a), true)), (arg_0.c.a | true) | all(!var_1.d.zx), !any(vec3<bool>(true, var_0.b.a, true))));
    var_1 = Struct_3(Struct_2(var_1.a.a, Struct_1(false), Struct_1(var_1.d.x | (var_1.d.x && var_1.a.c.a)), _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_0.d)), _wgslsmith_f_op_f32(round(var_1.c)), false)))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(36600i, 1i)) | select(0i, 2147483647i, var_0.c.a), firstLeadingBit(1i) ^ _wgslsmith_mult_i32(1i, u_input.a.x), -var_1.b) | var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + 362f) * _wgslsmith_f_op_f32(ceil(var_0.d))), !var_1.d.x))), vec4<bool>(var_1.d.x, _wgslsmith_f_op_f32(min(var_1.a.d, -420f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d)) - _wgslsmith_f_op_f32(abs(-3272f))), any(vec3<bool>(var_1.a.c.a, true, var_0.b.a)) & (true && (false | var_1.d.x)), var_1.a.c.a));
    var_0 = Struct_2(vec3<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 1u, var_0.a.x)), select(~(~16375u), ~1u, -u_input.a.x > ~21816i), var_1.a.a.x), var_1.a.c, arg_0.b, arg_0.d);
    return any(select(vec3<bool>(false, false, true), !vec3<bool>(true, all(vec3<bool>(var_1.a.c.a, var_0.c.a, true)), true), var_1.d.zzw));
}

fn func_2(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(min(_wgslsmith_mod_u32(~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 64586u), vec3<u32>(1u, 28357u, arg_0))), ~reverseBits(arg_0)), 1u), ~(~27888u), 4294967295u, select(~arg_0, arg_0 ^ arg_0, true));
    let var_1 = select(select(vec2<bool>(false, all(vec2<bool>(false, true)) & all(vec3<bool>(true, false, false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, u_input.a.x >= 18954i), vec2<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, true)))), all(vec3<bool>(all(vec2<bool>(false, true)), false, true))), !vec2<bool>(~(-94011i) > u_input.a.x, true), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), select(vec2<bool>(func_3(Struct_2(vec3<u32>(60524u, arg_0, arg_0), Struct_1(true), Struct_1(true), 1193f)), true), vec2<bool>(true, true), any(vec2<bool>(true, false)) || true), func_3(Struct_2(~var_0.zyz, Struct_1(true), Struct_1(false), 286f))));
    let var_2 = _wgslsmith_mod_vec2_u32(abs(var_0.xx), vec2<u32>(arg_0, ~5832u)) >> (vec2<u32>(42246u, 61255u >> (_wgslsmith_add_u32(~var_0.x, ~0u) % 32u)) % vec2<u32>(32u));
    var var_3 = u_input.a.xy;
    let var_4 = Struct_3(Struct_2(var_0.yzz, Struct_1(false), Struct_1(true), _wgslsmith_f_op_f32(trunc(-511f))), _wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_3.x, 13253i, -49912i) & vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -7242i), firstTrailingBit(vec4<i32>(var_3.x, u_input.a.x, 2147483647i, -1i))), vec4<i32>(-1940i, -u_input.a.x, -8900i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 0i, 0i), vec4<i32>(-42324i, var_3.x, 61091i, -55198i))), !(u_input.a.x >= var_3.x)), vec4<i32>(var_3.x, -firstLeadingBit(-1i), -u_input.a.x, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - arg_1.a))))), select(select(vec4<bool>(select(var_1.x, false, true), any(vec4<bool>(false, true, var_1.x, var_1.x)), var_1.x, any(var_1)), vec4<bool>(var_1.x, var_1.x, func_3(Struct_2(var_0.ywy, Struct_1(var_1.x), Struct_1(var_1.x), 134f)), true), var_1.x), vec4<bool>(true, any(vec3<bool>(var_1.x, var_1.x, var_1.x)) || var_1.x, var_1.x, true), !vec4<bool>(false, select(var_1.x, var_1.x, false), !var_1.x, !var_1.x)));
    return Struct_2(firstLeadingBit(vec3<u32>(firstTrailingBit(~arg_0), select(var_2.x, arg_0 ^ var_4.a.a.x, 4294967295u > arg_0), var_0.x)), Struct_1(func_3(Struct_2(var_0.yyx, var_4.a.c, Struct_1(var_1.x), arg_1.a))), var_4.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.c * arg_1.a), _wgslsmith_f_op_f32(1634f + 1081f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(arg_0.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1371f)))))))));
    var var_1 = Struct_1(false);
    var var_2 = -select(~_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -6029i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, 2147483647i, 52990i, u_input.a.x)), ~vec4<i32>(countOneBits(u_input.a.x), select(-1i, u_input.a.x, true), u_input.a.x << (arg_1.x % 32u), ~(-1i)), vec4<bool>(var_1.a != false, false, var_1.a | false, any(vec2<bool>(var_1.a, true))));
    let var_3 = select(_wgslsmith_clamp_vec2_u32(~arg_0.a.yz, arg_0.a.zx, func_2(~arg_0.a.x, Struct_4(var_0.a)).a.zy), _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(27942u, 29488u)), (arg_1 & vec2<u32>(arg_0.a.x, arg_0.a.x)) ^ _wgslsmith_sub_vec2_u32(arg_1, arg_0.a.zy)), vec2<bool>(_wgslsmith_f_op_f32(-941f * 1000f) == _wgslsmith_div_f32(var_0.a, -307f), true)) | vec2<u32>(abs(arg_1.x) << (arg_1.x % 32u), select(min(arg_0.a.x, _wgslsmith_clamp_u32(0u, 1u, 0u)), 24296u, true));
    let var_4 = Struct_3(arg_0, abs(0i) >> (~(~(var_3.x << (1u % 32u))) % 32u), -1000f, !vec4<bool>(true, !var_1.a, (i32(-1i) * -1i) >= (-57033i ^ u_input.a.x), !var_1.a));
    return Struct_3(var_4.a, _wgslsmith_mod_i32(-19647i, i32(-1i) * -var_4.b), _wgslsmith_f_op_f32(min(-718f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d - var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1521f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f))))), var_4.d);
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = func_4(func_2(_wgslsmith_div_u32(_wgslsmith_add_u32(21318u, 1u), 1u), Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-723f * 1238f))))), select(vec2<u32>(4294967295u, ~4294967295u), abs(vec2<u32>(1u, 1u)), true));
    var_0 = func_4(var_0.a, var_0.a.a.xx);
    var_0 = Struct_3(func_2((18692u | max(15267u, var_0.a.a.x)) ^ 1u, Struct_4(_wgslsmith_f_op_f32(-func_4(var_0.a, var_0.a.a.yx).a.d))), countOneBits(arg_0 << (9929u % 32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-409f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.c))))))), vec4<bool>(false, var_0.a.c.a, var_0.a.c.a, true));
    var_0 = func_4(Struct_2(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.a.a | vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec3<u32>(3417u, var_0.a.a.x, 74671u), _wgslsmith_mult_vec3_u32(var_0.a.a, vec3<u32>(var_0.a.a.x, 4294967295u, 1u))), max(~vec3<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), ~vec3<u32>(4294967295u, var_0.a.a.x, var_0.a.a.x))), func_2(countOneBits(~4294967295u), Struct_4(_wgslsmith_div_f32(var_0.c, -1081f))).c, Struct_1(func_3(var_0.a)), var_0.c), firstTrailingBit(~select(_wgslsmith_sub_vec2_u32(var_0.a.a.xz, var_0.a.a.xz), ~vec2<u32>(35603u, var_0.a.a.x), var_0.a.c.a)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(func_2(var_0.a.a.x, Struct_4(254f)).d)), -102f, var_0.c, -252f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(339f, var_0.a.d))) * var_0.c), _wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1426f), var_0.c));
    return func_4(var_0.a, _wgslsmith_sub_vec2_u32(~var_0.a.a.zx, var_0.a.a.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(firstTrailingBit(1i));
    let var_1 = !any(!vec4<bool>(var_0.d.x, var_0.a.b.a, true, var_0.a.b.a)) | (min(-(~(-59204i)), (u_input.a.x & -25501i) << (select(var_0.a.a.x, var_0.a.a.x, var_0.a.c.a) % 32u)) <= -_wgslsmith_dot_vec3_i32(vec3<i32>(23094i, u_input.a.x, u_input.a.x), vec3<i32>(44037i, u_input.a.x, 60160i) & vec3<i32>(32751i, 2147483647i, 1i)));
    let var_2 = u_input.a.x;
    var_0 = Struct_3(var_0.a, _wgslsmith_mod_i32(var_2, -1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.d)), -775f)), !select(select(func_1(var_0.b).d, select(var_0.d, vec4<bool>(var_0.a.c.a, false, var_0.d.x, true), var_0.d), vec4<bool>(false, var_0.a.c.a, var_0.a.c.a, true)), !(!vec4<bool>(true, true, true, var_0.d.x)), vec4<bool>(var_0.d.x, !var_1, true, any(vec3<bool>(true, var_0.a.b.a, var_0.a.c.a)))));
    let var_3 = var_0.c;
    var_0 = func_1(var_0.b);
    let var_4 = func_1(~var_2).d.yzx;
    var var_5 = func_2(~27821u >> (reverseBits(4294967295u | _wgslsmith_sub_u32(10672u, var_0.a.a.x)) % 32u), Struct_4(_wgslsmith_f_op_f32(step(var_0.c, _wgslsmith_f_op_f32(select(func_2(36301u, Struct_4(var_0.c)).d, var_0.c, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_4(Struct_2(var_5.a, Struct_1(false), var_0.a.c, _wgslsmith_div_f32(var_5.d, 1299f)), abs(_wgslsmith_div_vec2_u32(var_5.a.zx, var_0.a.a.yz))).a, var_0.a.a.xy ^ (var_0.a.a.xz | vec2<u32>(13767u, var_0.a.a.x))).b);
}

