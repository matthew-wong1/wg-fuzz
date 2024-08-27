struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> vec4<i32> {
    var var_0 = Struct_5(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, false)), vec3<bool>(false, select(select(false, true, true), false, false), false), true || any(vec4<bool>(false, false, false, false))));
    let var_1 = ~_wgslsmith_div_vec2_i32(~vec2<i32>(-30670i, 37277i), -select(countOneBits(vec2<i32>(2147483647i, -9472i)), vec2<i32>(36486i, -688i), any(vec4<bool>(var_0.a.x, var_0.a.x, true, var_0.a.x))));
    let var_2 = u_input.d.yy;
    var_0 = Struct_5(select(select(vec3<bool>(any(var_0.a.zz), !var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, false, false), var_0.a.x), select(vec3<bool>(true, true, true), select(var_0.a, vec3<bool>(var_0.a.x, false, var_0.a.x), var_0.a.x), var_0.a), var_0.a));
    let var_3 = select(!vec3<bool>(true, 0u > _wgslsmith_mod_u32(arg_0.x, 4294967295u), all(var_0.a)), select(!(!(!vec3<bool>(true, var_0.a.x, true))), vec3<bool>(var_0.a.x, true, var_0.a.x), true), !var_0.a.x);
    return vec4<i32>(1i, select(~(_wgslsmith_div_i32(2147483647i, var_1.x) >> (firstTrailingBit(0u) % 32u)), ~12119i, ~var_1.x <= -countOneBits(var_1.x)), -3774i, var_1.x | (i32(-1i) * -(~var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    var var_0 = arg_3;
    let var_1 = ~(~(~min(arg_3, firstLeadingBit(u_input.b.x))));
    let var_2 = u_input.e.wxw;
    let var_3 = Struct_3(~6492u, _wgslsmith_f_op_f32(trunc(1000f)));
    var var_4 = vec4<i32>(0i, select(i32(-1i) * -2147483647i, ~(arg_0.a.x & arg_0.a.x), var_3.b >= _wgslsmith_f_op_f32(min(-704f, 256f))), _wgslsmith_div_i32(~abs(arg_0.a.x), -24029i), -1i) & arg_0.a;
    return var_3.b;
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_sub_vec4_i32(func_3(vec4<u32>(arg_0.a, 1u, arg_0.a, u_input.a)), -vec4<i32>(0i, -1i, 1i, 10769i))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true)), !vec4<bool>(false, true, all(vec2<bool>(true, true)), true), 4294967295u)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_0.b));
    let var_1 = ~(~u_input.e) & _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.c.x ^ 31435u, max(arg_0.a, 98374u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 17020u, arg_0.a, u_input.b.x), vec4<u32>(4294967295u, 17538u, arg_0.a, 0u)), _wgslsmith_add_u32(1u, 21093u)), vec4<u32>(u_input.d.x, 14965u, _wgslsmith_mod_u32(arg_0.a, u_input.b.x), max(1u, 0u)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.b.x), max(48184u, 4294967295u), 83752u, 0u), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.e, u_input.e, vec4<u32>(0u, u_input.b.x, arg_0.a, u_input.d.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_0.a, 75114u), vec4<u32>(25625u, 64651u, arg_0.a, 0u)))), countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.e.x, 1u, arg_0.a), u_input.e)));
    var var_2 = !all(vec4<bool>(false, true, !select(true, true, false), any(vec3<bool>(false, false, false))));
    var_2 = true;
    var_0 = true;
    return Struct_2(select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), select(vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true), vec3<bool>(true, true, false), (var_1.x & 433u) != 1u), true), Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, -1i, -2147483647i, -1i) << (var_1 % vec4<u32>(32u))), ~(~vec4<i32>(1i, 2147483647i, 27272i, 46020i)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 2728i), vec2<i32>(0i, ~(~(-2147483647i))) << (reverseBits(firstTrailingBit(u_input.d.xz)) % vec2<u32>(32u)), vec2<i32>(-47841i, max(-57452i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.a.x, -44914i), max(vec2<i32>(10810i, 51104i), vec2<i32>(-19934i, arg_1.x))))));
    var var_1 = arg_0.a;
    var var_2 = Struct_4(Struct_3(~(0u << (~u_input.d.x % 32u)), 238f), arg_0.a.x);
    var_2 = Struct_4(Struct_3(firstTrailingBit(_wgslsmith_mod_u32(select(4294967295u, var_2.a.a, arg_0.a.x), _wgslsmith_clamp_u32(16602u, u_input.a, 14452u))), 742f), _wgslsmith_f_op_f32(f32(-1f) * -2296f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.b), -1035f));
    var var_3 = _wgslsmith_add_u32(var_2.a.a, ~1u);
    return countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, var_0.x), arg_0.b.a.wy)) >> (~(u_input.a & ~1391u) % 32u);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_clamp_i32(32864i, func_5(func_2(Struct_3(u_input.c.x, _wgslsmith_f_op_f32(select(1000f, -679f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(231f, -1070f)))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, _wgslsmith_mult_i32(51063i, 1i), 21505i), vec3<i32>(1i, 1i, 1i))), i32(-1i) * -select(1i, _wgslsmith_clamp_i32(1i, 19071i, -9617i), true));
    let var_1 = vec4<f32>(-421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(121f, 474f)))), 362f);
    let var_2 = vec4<bool>(any(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), true, !(!select(true, false, true) && true), !(all(vec2<bool>(false, false)) || all(vec3<bool>(true, true, false))) | (_wgslsmith_f_op_f32(f32(-1f) * -630f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))));
    var_0 = 1i;
    var var_3 = Struct_4(Struct_3(abs(u_input.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1818f) * var_1.x), var_1.x, any(vec2<bool>(var_2.x, true))))), any(!(!select(vec4<bool>(true, false, true, var_2.x), vec4<bool>(var_2.x, false, var_2.x, true), true))));
    return StorageBuffer(vec3<i32>(~1i, -49615i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

