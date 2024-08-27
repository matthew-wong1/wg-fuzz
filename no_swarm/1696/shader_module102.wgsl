struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    let var_0 = _wgslsmith_add_i32(reverseBits(_wgslsmith_add_i32(~firstLeadingBit(47252i), u_input.d)), i32(-1i) * -2147483647i);
    let var_1 = arg_0.c;
    let var_2 = true;
    let var_3 = arg_0;
    var var_4 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-u_input.a.x, min(u_input.a.x, countOneBits(-1i)), ~(u_input.a.x << (75840u % 32u))), vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(var_0, u_input.b.x) ^ var_0, -83416i)), ~vec3<i32>(-12925i, 1i, var_0), vec3<i32>(~countOneBits(var_0 >> (4294967295u % 32u)), (var_0 >> (select(arg_0.b.x, arg_0.b.x, false) % 32u)) & -84121i, max(max(25603i, u_input.a.x | 22357i), 0i)));
    return ~(min(u_input.c.xw, vec2<u32>(var_3.b.x, min(u_input.c.x, u_input.c.x))) & ~(~firstTrailingBit(vec2<u32>(1u, arg_0.b.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(vec4<u32>((u_input.c.x ^ u_input.c.x) | 29928u, ~_wgslsmith_add_u32(u_input.c.x, ~94351u), firstTrailingBit(max(~2829u, u_input.c.x)), ~abs(u_input.c.x & u_input.c.x)), arg_1.b, arg_1.c, false, arg_1.e);
    let var_1 = arg_1;
    var_0 = Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x << (u_input.c.x % 32u), 42018u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 36986u), u_input.c.zz), _wgslsmith_add_u32(var_0.a.x, 8018u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 0u, var_0.b.x, var_1.a.x), firstTrailingBit(var_0.a), abs(vec4<u32>(arg_1.a.x, 1u, 23186u, 0u)))), var_0.a.wzx, !var_1.c, arg_1.d, var_1.e);
    var var_2 = var_1.e.x;
    var var_3 = firstTrailingBit(~reverseBits(countOneBits(~vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, arg_0))));
    return max(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(func_3(arg_1, _wgslsmith_mult_u32(arg_1.a.x, arg_1.b.x)), arg_1.a.xy), 4294967295u), var_1.a.x);
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = vec3<bool>(all(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true))), true, -9432i < _wgslsmith_clamp_i32(-5040i, 10279i, ~1i));
    var var_1 = Struct_1(u_input.c, ~(~vec3<u32>(u_input.c.x, _wgslsmith_add_u32(0u, 71150u), 35555u)), !(!select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), false)), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1107f, 1000f)))))));
    let var_2 = Struct_1(~(~countOneBits(u_input.c)), _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, ~4294967295u, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_1.b.x, arg_0, 22566u, var_1.b.x)))), ~vec3<u32>(_wgslsmith_add_u32(arg_0, 40017u), 1u, var_1.a.x)), select(var_0, var_0, true), any(!var_1.c.xz), vec2<f32>(289f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.e.x, _wgslsmith_f_op_f32(238f + var_1.e.x)) * var_1.e.x)));
    var_1 = var_2;
    var_1 = Struct_1(~(~u_input.c), vec3<u32>(~(~280u), abs(~arg_0), var_2.b.x), !var_1.c, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.e * var_2.e)), _wgslsmith_f_op_vec2_f32(-var_2.e)))));
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<bool> {
    var var_0 = func_4(abs(_wgslsmith_mod_u32(arg_2.a.x, _wgslsmith_add_u32(func_2(u_input.b.x, Struct_1(vec4<u32>(4294967295u, 59169u, arg_2.a.x, u_input.c.x), arg_2.a.ywx, vec3<bool>(arg_1.c.x, true, false), arg_1.c.x, arg_3)), ~u_input.c.x))));
    let var_1 = _wgslsmith_div_f32(arg_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1220f - -835f) - arg_3.x) + 2007f)));
    var_0 = func_4(~var_0.b.x);
    var_0 = arg_1;
    var_0 = Struct_1(u_input.c, select(~max(u_input.c.www, ~var_0.a.zxy), vec3<u32>(func_4(arg_2.b.x).a.x, 1u ^ arg_2.b.x, ~var_0.b.x), false), select(arg_2.c, func_4(4294967295u).c, !arg_1.c), any(vec2<bool>((-59218i | u_input.a.x) > select(47644i, 0i, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 1340f))), arg_2.e, !(!arg_1.c.zx)))));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.b.x);
    let var_1 = Struct_1(u_input.c, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14462u, 1u), ~vec2<u32>(33025u, 4294967295u)), reverseBits(~0u)), _wgslsmith_sub_u32(u_input.c.x, firstLeadingBit(u_input.c.x)), countOneBits(~_wgslsmith_clamp_u32(1u, 41706u, 21228u))), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), select(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(268f, 556f, -1006f) + vec3<f32>(288f, 1552f, -974f)), Struct_1(u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 8102u), vec3<bool>(false, true, false), true, vec2<f32>(-1076f, -177f)), Struct_1(u_input.c, vec3<u32>(4294967295u, u_input.c.x, 4294967295u), vec3<bool>(true, true, false), false, vec2<f32>(-801f, -1214f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-223f, -463f)))), vec3<bool>(true, true, true), vec3<bool>(func_4(0u).d, true, select(true, true, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-207f)), 426f)) <= -132f), all(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false)))) && (false == !all(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f)));
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(~(~var_1.a) ^ func_4(var_1.a.x).a, vec4<u32>(~(~var_1.a.x), min(_wgslsmith_dot_vec2_u32(var_1.a.zx, var_1.a.zz), 1u), ~4294967295u, var_1.b.x)), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(var_1.a.x, u_input.c.x), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, var_1.b.x), vec3<u32>(u_input.c.x, u_input.c.x, 33759u) >> (u_input.c.xwy % vec3<u32>(32u))))), select(vec3<bool>(!any(vec4<bool>(var_1.d, true, var_1.c.x, true)), all(vec4<bool>(var_1.d, true, false, var_1.d)) | (var_1.c.x || var_1.d), 1i != (u_input.b.x | 51139i)), select(!vec3<bool>(true, var_1.c.x, true), var_1.c, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.e.x + var_1.e.x))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.e.x)), _wgslsmith_f_op_f32(var_1.e.x - var_1.e.x), var_1.c.x))), 169f >= var_1.e.x, var_1.e);
    var_0 = u_input.b.x | u_input.a.x;
    var_0 = _wgslsmith_mod_i32(~(~(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(16477i, u_input.d, 0i)) >> (4294967295u % 32u))), -2147483647i);
    var var_3 = Struct_1(_wgslsmith_mod_vec4_u32(u_input.c | vec4<u32>(3223u, 66288u, ~1u, 5877u), var_2.a), _wgslsmith_sub_vec3_u32(u_input.c.wxy, u_input.c.yxy), var_2.c, !var_2.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e))) * var_2.e));
    var_0 = 71516i;
    var_0 = u_input.a.x;
    let var_4 = func_4(countOneBits(~_wgslsmith_dot_vec3_u32(u_input.c.ywx << (vec3<u32>(53900u, 5572u, var_1.a.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.x, 0u, var_3.b.x), var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(~1i), ~_wgslsmith_div_i32(~u_input.d, 16282i), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.d, -9478i) >> (~var_4.a.xx % vec2<u32>(32u)), -u_input.a), abs(-1i) << (~(u_input.c.x ^ 37358u) % 32u)), _wgslsmith_mod_i32(-9793i, i32(-1i) * -46209i), max(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, firstLeadingBit(u_input.a.x)), vec4<i32>(-12276i, ~select(0i, u_input.a.x, false), _wgslsmith_dot_vec2_i32(~u_input.b.yx, u_input.b.yx & vec2<i32>(u_input.d, u_input.a.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, 2147483647i), 2147483647i, max(u_input.a.x, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-115f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -806f)))), vec2<f32>(-701f, func_4(min(1u, u_input.c.x) & (var_4.a.x | var_3.b.x)).e.x));
}

