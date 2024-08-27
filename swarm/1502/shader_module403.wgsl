struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = 0i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - -391f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1480f, arg_1.a.a)))), vec3<u32>(~_wgslsmith_div_u32(arg_0.b.x, arg_1.a.b.x), 0u, 0u), -arg_1.a.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(2147483647i, arg_1.a.c.x)) ^ countOneBits(-2147483647i), _wgslsmith_mod_i32(-31076i, -arg_0.c.x)), arg_1.a.c.x == 2147483647i));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -272f), 1f), _wgslsmith_f_op_f32(trunc(var_1.a.a))))));
    let var_3 = vec4<u32>(arg_0.b.x << (~var_1.a.b.x % 32u), arg_0.b.x, 77717u, _wgslsmith_dot_vec3_u32(arg_1.a.b, vec3<u32>(min(_wgslsmith_mult_u32(86284u, 17153u), var_1.a.b.x), ~u_input.b & (arg_0.b.x >> (1u % 32u)), 74289u)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_1.a.a) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1798f), 1903f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, _wgslsmith_f_op_f32(select(var_1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -482f), any(vec4<bool>(false, true, var_1.a.e, true)))))));
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_2(arg_1);
    var var_1 = vec3<bool>(!(_wgslsmith_clamp_i32(var_0.a.d, 0i, 0i ^ arg_1.c.x) <= arg_1.c.x), var_0.a.e, func_3(Struct_1(_wgslsmith_f_op_f32(round(arg_1.a)), var_0.a.b, vec2<i32>(-15391i, select(var_0.a.c.x, 13509i, var_0.a.e)), 0i, !(var_0.a.b.x > 1u)), var_0));
    let var_2 = (vec3<i32>(-1i) * -vec3<i32>(-4033i, -var_0.a.c.x, ~(-51181i))) & vec3<i32>(0i, 2147483647i, 74832i);
    var_1 = !select(vec3<bool>(var_1.x, !(var_0.a.b.x != arg_1.b.x), !(70503u < var_0.a.b.x)), !vec3<bool>(false, func_3(Struct_1(var_0.a.a, var_0.a.b, var_2.zy, 19292i, var_1.x), var_0), true), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.a, var_0.a.a)))))), ~var_0.a.b, ~arg_1.c, _wgslsmith_mod_i32(-1i, ~_wgslsmith_div_i32(firstLeadingBit(-13907i), select(arg_1.c.x, -1i, false))), var_1.x);
    return Struct_1(_wgslsmith_f_op_f32(round(-1096f)), firstLeadingBit(var_0.a.b), firstTrailingBit(~_wgslsmith_sub_vec2_i32(firstTrailingBit(arg_1.c), -vec2<i32>(var_3.c.x, var_2.x))), select(-(var_2.x & ~1i), u_input.c, true), _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, ~62145u), ~(var_0.a.b.x << (var_0.a.b.x % 32u))) <= ~1u);
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_add_vec4_u32(min(vec4<u32>(firstLeadingBit(~4294967295u), firstTrailingBit(0u), 0u, ~0u | ~u_input.b), abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42502u, u_input.a, 22923u), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)))), ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(41776u, 73275u, 24789u, 0u), vec4<u32>(u_input.b, u_input.a, u_input.a, 0u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.a, 11007u), vec4<u32>(83135u, 0u, u_input.b, 10955u)) % vec4<u32>(32u)))));
    var var_1 = Struct_2(func_2(4294967295u, Struct_1(arg_2.x, var_0.xxw, vec2<i32>(0i, ~u_input.c), u_input.c, _wgslsmith_f_op_f32(-1214f * 267f) > arg_2.x), -158f, 23346u));
    var_1 = Struct_2(func_2(var_1.a.b.x, var_1.a, arg_2.x, 8880u));
    var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(2318f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-573f)), _wgslsmith_div_f32(-152f, -196f)))), vec3<u32>(~abs(var_1.a.b.x), firstLeadingBit(1u), var_1.a.b.x >> (~var_0.x % 32u)), vec2<i32>(max(~var_1.a.d, reverseBits(arg_0)), arg_0), _wgslsmith_sub_i32(-17940i, _wgslsmith_dot_vec2_i32(var_1.a.c, var_1.a.c) ^ -arg_0), arg_1.x));
    var_1 = Struct_2(var_1.a);
    return vec2<i32>(_wgslsmith_div_i32(min(abs(~arg_0), abs(~(-1i))), -28496i), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = vec2<i32>(_wgslsmith_div_i32(-firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(23110i, 80850i)), select(vec2<i32>(var_0, 2147483647i), vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, false)))), ~u_input.c) ^ ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, min(var_0, 18054i)), countOneBits(func_1(23506i, vec4<bool>(true, false, false, true), vec2<f32>(592f, -392f))));
    var var_2 = func_2(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(12906u, 0u, 1u, u_input.b) ^ ~vec4<u32>(u_input.a, u_input.a, 16288u, u_input.a), ~vec4<u32>(u_input.b, 0u, 47075u, 31902u))), func_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) + _wgslsmith_f_op_f32(f32(-1f) * -1360f)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 67063u, 4294967295u), vec3<u32>(72685u, u_input.b, 42314u)), vec2<i32>(var_1.x & 67839i, -2147483647i >> (u_input.a % 32u)), 3193i, !all(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -661f), ~reverseBits(u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f + _wgslsmith_f_op_f32(sign(118f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f), 1f)) - _wgslsmith_f_op_f32(770f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1123f, -648f) + _wgslsmith_f_op_f32(-1070f * -571f)))), ~(~48413u));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1891f, all(!(!vec4<bool>(false, true, false, var_2.e))))), ~vec3<u32>(~reverseBits(var_2.b.x), 5354u, (67210u >> (u_input.a % 32u)) ^ ~var_2.b.x), var_1, ~var_0, false);
    var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -306f))), reverseBits(var_3.b & ~firstTrailingBit(var_2.b)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-12095i, var_2.c.x) >> (~4294967295u % 32u), -(var_2.c.x | u_input.c)), 2147483647i), var_2.c.x, var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1596u), vec2<u32>(49511u, 1u)) ^ ~vec2<u32>(0u, 13621u)), max(var_2.b.xz, _wgslsmith_div_vec2_u32(func_2(4294967295u, var_3, var_3.a, 4294967295u).b.xx, vec2<u32>(var_2.b.x, u_input.b)))), var_2.b.xz, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.b.x, ~var_3.b.x, select(0u, var_3.b.x, false)), vec3<u32>(1u, u_input.b, var_2.b.x) >> (~var_2.b % vec3<u32>(32u)), vec3<u32>(abs(0u), var_2.b.x, _wgslsmith_clamp_u32(u_input.a, 83031u, u_input.b))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_2.b.x, var_3.b.x, 67021u), 1u, _wgslsmith_add_u32(1u, 29241u)), ~(var_2.b & var_2.b))));
}

