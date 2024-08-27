struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(u_input.b, -vec2<i32>(1i, 1i), ~min(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 25193u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.c)), vec4<u32>(firstTrailingBit(1u), u_input.b, 0u, ~u_input.c)), vec4<i32>(firstLeadingBit(-18005i), countOneBits(firstTrailingBit(1i)), -2147483647i, ~(-2147483647i) >> (firstLeadingBit(u_input.c) % 32u)) ^ _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(26781i, 1i, 2147483647i, 11153i), vec4<i32>(-1i, -20990i, -2147483647i, -30738i), vec4<i32>(-32774i, -1i, -7120i, -29384i)), firstLeadingBit(vec4<i32>(-1i, -16769i, -34913i, 2147483647i))));
    var var_1 = select(vec3<bool>(true, true, select(false, u_input.a.x < var_0.a, true) != false), vec3<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true)), select(!any(vec2<bool>(true, false)), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), true), ((var_0.b.x | var_0.d.x) != _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.d.x), var_0.d.zy)) | true), (true | select(true, true, true)) || (true || (max(var_0.b.x, var_0.d.x) < (var_0.d.x | 45330i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(min(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-30687i, 1i, -32851i, -36070i)), _wgslsmith_div_vec4_i32(var_0.d, vec4<i32>(var_0.b.x, 10743i, var_0.b.x, -2147483647i))), -(var_0.b.x >> (var_0.c.x % 32u))), _wgslsmith_mod_i32(~var_0.b.x, _wgslsmith_sub_i32(-21472i, -2147483647i) & var_0.b.x)), firstTrailingBit(~(-abs(var_0.b))));
    var var_4 = ~(~abs(~u_input.c) | u_input.c);
    return true;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = func_3();
    return Struct_1(1u, -vec2<i32>(-1i << (u_input.a.x % 32u), ~min(2147483647i, 21827i)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 11653u, 59641u, u_input.c), vec4<u32>(u_input.b, u_input.a.x, u_input.b, 4294967295u)), ~vec4<u32>(34615u, 0u, u_input.a.x, u_input.b)), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.c)) & select(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 40803u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.c, 0u), vec4<u32>(34580u, u_input.a.x, u_input.b, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 32962u, 1u), countOneBits(vec4<u32>(4294967295u, 0u, 1u, 4294967295u))), all(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_mult_i32(~(~(-12752i)), ~(~12496i)), reverseBits(-19814i), -2147483647i, abs(12736i)));
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~47825u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -503f);
    var_0 = _wgslsmith_mult_u32(u_input.c, ~75987u) >> (firstLeadingBit(_wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.a.x)) % 32u);
    var_1 = -1273f;
    var var_2 = Struct_2(!vec4<bool>(!select(false, false, false), true, false, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true))), func_2(_wgslsmith_f_op_f32(min(-341f, -1318f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 515f) * vec2<f32>(-667f, -784f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1128f, -417f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1399f) - -460f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2385f, 920f, -381f, 216f)))))), func_2(_wgslsmith_f_op_f32(trunc(-758f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(208f, _wgslsmith_f_op_f32(-667f + 804f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1000f, -574f)), _wgslsmith_div_f32(1289f, 617f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1305f, 359f, -1033f, 504f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(511f, 2969f, 387f, -271f) * vec4<f32>(-547f, -252f, -294f, 404f))))));
    return Struct_3(var_2.c, _wgslsmith_dot_vec2_u32(select(vec2<u32>(668u, 1u), ~vec2<u32>(1u, 4294967295u), var_2.a.x), var_2.c.c.yz), select(vec3<bool>(var_2.a.x, var_2.b.b.x < (-1i << (1u % 32u)), all(vec2<bool>(true, false))), var_2.a.xxw, vec3<bool>(select(true, !var_2.a.x, false), var_2.a.x, var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = any(func_1().c.xz);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0.a.d.x, 2147483647i), max(-6421i, var_0.a.d.x)), vec2<i32>(-1i) * -var_0.a.d.wx) >> (var_0.b % 32u), ~func_1().a.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(var_0.a.d.x, 0i, 25774i)), _wgslsmith_div_i32(~var_0.a.b.x, 1i)) >> (24705u % 32u), var_0.a.b.x);
    var var_3 = 960f;
    var_1 = var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(25925u);
}

