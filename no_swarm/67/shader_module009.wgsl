struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(258f, -272f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1487f, -239f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-887f, 1068f), vec2<f32>(1395f, 1083f), vec2<bool>(true, true))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-799f, -1332f)))))));
    var var_1 = _wgslsmith_dot_vec3_i32(~u_input.d.zxy, u_input.b);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1046f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - -811f)));
    let var_3 = Struct_3(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), (u_input.a.x & u_input.a.x) < 1u), vec2<bool>(false, true)), select(true, true, true && !all(vec3<bool>(false, true, true))), abs(u_input.a.yx << (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), _wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u))), Struct_2(any(vec3<bool>(true, true, true)), _wgslsmith_div_i32(~(u_input.d.x >> (u_input.a.x % 32u)), ~u_input.d.x)), reverseBits(u_input.d.zz >> (~u_input.a.wz % vec2<u32>(32u))));
    var var_4 = _wgslsmith_add_vec2_u32(~var_3.c, _wgslsmith_div_vec2_u32(~(reverseBits(var_3.c) << ((u_input.a.ww & u_input.a.wy) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(var_3.c, var_3.c)));
    return select(select(vec2<bool>(any(select(vec2<bool>(true, var_3.b), var_3.a, var_3.a.x)), false), !vec2<bool>(!var_3.d.a, !var_3.a.x), true), vec2<bool>(var_3.d.a, false), vec2<bool>(true, select(false, var_3.a.x | any(var_3.a), all(vec2<bool>(var_3.a.x, true)))));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(792f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-105f, 161f)))))));
    let var_1 = Struct_3(func_3(), true, _wgslsmith_div_vec2_u32(~arg_2.yz, vec2<u32>(abs(min(1022u, 11398u)), firstLeadingBit(countOneBits(arg_2.x)))), Struct_2(true, _wgslsmith_div_i32(arg_1 & select(u_input.b.x, u_input.d.x, false), u_input.d.x)), vec2<i32>(~2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(abs(7013i), 10202i), _wgslsmith_mod_i32(u_input.b.x, reverseBits(18077i)), ~u_input.d.x)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1050f)), -756f);
    var var_2 = var_1;
    var var_3 = select(vec3<u32>(~arg_0, 5442u, 0u << (_wgslsmith_mod_u32(abs(70140u), 1u) % 32u)), ~abs(~u_input.a.wyw), false);
    return Struct_1(vec3<bool>(any(select(!vec4<bool>(true, var_1.b, true, var_2.d.a), !vec4<bool>(var_1.d.a, var_2.a.x, false, var_2.a.x), select(vec4<bool>(false, var_2.a.x, true, false), vec4<bool>(var_1.b, false, var_2.d.a, true), var_2.d.a))), false, false));
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: i32) -> bool {
    let var_0 = func_2(_wgslsmith_sub_u32(~(~(u_input.c | arg_0)), 1u), arg_1.d.b, _wgslsmith_mult_vec3_u32(select(vec3<u32>(~0u, 55290u, firstLeadingBit(arg_1.c.x)), _wgslsmith_sub_vec3_u32(~vec3<u32>(arg_1.c.x, 4294967295u, 4294967295u), u_input.a.zxy), !select(vec3<bool>(arg_1.a.x, arg_1.b, arg_1.a.x), vec3<bool>(false, true, arg_1.d.a), vec3<bool>(arg_1.d.a, arg_1.d.a, true))), countOneBits(vec3<u32>(4294967295u, 1u, u_input.c))));
    var var_1 = arg_1.d;
    let var_2 = Struct_1(vec3<bool>(!any(var_0.a), any(!(!vec4<bool>(var_1.a, false, false, var_0.a.x))), any(!(!vec4<bool>(true, var_0.a.x, arg_1.d.a, false)))));
    let var_3 = arg_1;
    var var_4 = var_3.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, -_wgslsmith_add_i32(max(-u_input.d.x, ~u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.d.wx, u_input.d.yz)));
    let var_1 = vec4<bool>(true, any(vec4<bool>(true, !var_0.a, func_1(~1u, Struct_3(vec2<bool>(var_0.a, var_0.a), var_0.a, vec2<u32>(1u, u_input.c), Struct_2(false, -53272i), u_input.b.zy), _wgslsmith_f_op_vec2_f32(vec2<f32>(140f, 1235f) - vec2<f32>(-2548f, -1000f)), -var_0.b), select(true, any(vec2<bool>(var_0.a, false)), all(vec3<bool>(var_0.a, true, true))))), true, var_0.a);
    let var_2 = func_2(1u, -1i, u_input.a.wyx);
    var var_3 = func_2(select(u_input.c, ~1u, var_1.x), _wgslsmith_add_i32(min(956i >> (select(u_input.a.x, 1u, true) % 32u), _wgslsmith_add_i32(abs(var_0.b), var_0.b)), _wgslsmith_add_i32(max(1i, -2147483647i), ~53783i)), u_input.a.yxw);
    var var_4 = func_2(~(~_wgslsmith_clamp_u32(28615u, u_input.a.x, 18079u)) >> (1u % 32u), ~_wgslsmith_mod_i32(countOneBits(-var_0.b), -_wgslsmith_add_i32(53611i, -1i)), (u_input.a.yxw ^ (reverseBits(u_input.a.zxz) & ~u_input.a.xyz)) ^ (u_input.a.wyy ^ (select(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(u_input.a.x, 20499u, u_input.a.x), var_2.a.x) >> (min(vec3<u32>(4294967295u, u_input.a.x, 15288u), vec3<u32>(u_input.a.x, 0u, 49594u)) % vec3<u32>(32u))))).a;
    var_4 = vec3<bool>(-2147483647i > _wgslsmith_mult_i32(countOneBits(firstTrailingBit(-25019i)), _wgslsmith_div_i32(~0i, i32(-1i) * -1i)), var_1.x, var_1.x | any(var_1));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(-962f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(1243f))))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(383f)) + _wgslsmith_f_op_f32(964f * -2119f)))), _wgslsmith_clamp_i32(-11713i, ~(-49837i), -1i) << (u_input.a.x % 32u));
    var_0 = Struct_2(func_3().x, -5160i);
    var var_5 = select(_wgslsmith_sub_vec3_i32(vec3<i32>(-4150i, firstLeadingBit(-2147483647i), ~select(u_input.b.x, -2147483647i, true)), u_input.b), vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(21743i), var_0.b), firstLeadingBit(-20943i), 1i), func_1(u_input.c, Struct_3(var_2.a.zy, false, u_input.a.zz, Struct_2(var_1.x, 1i), _wgslsmith_sub_vec2_i32(u_input.d.xw >> (u_input.a.wx % vec2<u32>(32u)), vec2<i32>(var_0.b, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-111f, -1375f) * vec2<f32>(-990f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(1747f, 652f), vec2<f32>(532f, -362f)), var_2.a.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.b, -13020i, var_0.b) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, 9863u), u_input.a) % vec4<u32>(32u)), -(~vec4<i32>(u_input.d.x, var_0.b, 0i, 77502i)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, 465f, -188f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(757f, -533f, -1000f))) + vec3<f32>(_wgslsmith_f_op_f32(806f + 1542f), _wgslsmith_f_op_f32(select(-664f, 417f, var_3.a.x)), _wgslsmith_f_op_f32(ceil(1000f))))));
}

