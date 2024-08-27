struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<i32> {
    let var_0 = firstTrailingBit(firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, ~2147483647i))) > firstTrailingBit(u_input.a.x & _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(44762i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_1 = i32(-1i) * -(~max(50543i & u_input.a.x, u_input.a.x));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)) ^ (vec3<u32>(~select(33750u, 4294967295u, true), ~min(1u, 2961u), abs(max(1u, 7010u))) | ~(~vec3<u32>(50630u, 14792u, 4294967295u)));
    var var_3 = vec2<bool>(true, any(vec2<bool>(false, true)));
    let var_4 = Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, 1758f, 623f)), vec2<u32>(4294967295u, 1u)), 100153u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(368f, 1061f)) - _wgslsmith_f_op_f32(step(-402f, 2166f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1954f, 1000f, -1226f))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, 22370u), var_2.zy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-744f, 1280f), _wgslsmith_f_op_f32(floor(158f)))))), var_2, 22328u, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-157f)) - 929f), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1253f)))), vec2<u32>(reverseBits(countOneBits(4294967295u)), min(_wgslsmith_add_u32(0u, 4294967295u), 98129u << (var_2.x % 32u)))));
    return vec3<i32>(~1i, 2147483647i, _wgslsmith_mult_i32(firstTrailingBit(reverseBits(7601i ^ u_input.a.x)), u_input.a.x));
}

fn func_2() -> vec4<u32> {
    var var_0 = func_3();
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-328f, 582f, -535f), vec3<f32>(-519f, -779f, 506f), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-197f, 320f, -198f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -666f, 1208f) - vec3<f32>(654f, -305f, 1141f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(576f, -1038f, -735f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-352f, -532f, -253f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1094f, 1657f, 1000f), vec3<f32>(-159f, -1480f, 453f), vec3<bool>(true, true, false))), vec3<bool>(true, true, true))))), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(48342u, 6776u), vec2<u32>(25690u, 0u), false)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(46232u, 74907u), min(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 41435u))) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1061f)) - _wgslsmith_f_op_f32(-330f + 403f)));
    let var_3 = vec2<bool>(true, true);
    var_2 = _wgslsmith_f_op_f32(var_1.a.x * -1816f);
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.b.x, _wgslsmith_div_u32(var_1.b.x, var_1.b.x), var_1.b.x, var_1.b.x), vec4<u32>(20274u, var_1.b.x & var_1.b.x, var_1.b.x, 54125u)) ^ ~(_wgslsmith_mult_vec4_u32(vec4<u32>(20945u, var_1.b.x, 31788u, var_1.b.x) & vec4<u32>(var_1.b.x, var_1.b.x, 53082u, 2139u), _wgslsmith_add_vec4_u32(vec4<u32>(6076u, var_1.b.x, var_1.b.x, 21361u), vec4<u32>(34688u, var_1.b.x, 39639u, var_1.b.x))) ^ _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, var_1.b.x, var_1.b.x, 7453u)), vec4<u32>(var_1.b.x, var_1.b.x, 26499u, 4294967295u)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(select(~(~_wgslsmith_mod_u32(11254u, 57160u)), ~28377u, false), ~(~52098u), ~firstLeadingBit(~(~4294967295u)), firstTrailingBit(firstTrailingBit(firstTrailingBit(0u))) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 18145u), ~vec3<u32>(72122u, 1u, 5380u)) % 32u));
    var var_1 = var_0;
    var_1 = vec4<u32>(var_0.x, 1u, var_1.x | var_0.x, 23392u) ^ _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(41696u, 112854u, var_1.x, var_1.x), var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, 37585u, 0u), var_0)), func_2());
    var_1 = vec4<u32>(_wgslsmith_add_u32(var_1.x, 4294967295u), 1u, ~max(_wgslsmith_add_u32(46568u, ~var_1.x), 0u), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 405f, -1135f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_div_f32(423f, -1434f), 1000f)), !((var_1.x | 39251u) >= ~7544u)))));
    return Struct_2(Struct_1(var_2, ~var_0.wy), 0u, _wgslsmith_f_op_f32(round(-449f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var var_1 = ~(vec4<i32>(-_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 1i, u_input.a.x, reverseBits(u_input.a.x)) << (~(~(~vec4<u32>(1u, 77466u, 4294967295u, 0u))) % vec4<u32>(32u)));
    var var_2 = func_1();
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(457u, var_2.a.b.x, 0u), vec3<u32>(var_2.a.b.x, 1u, 108411u)), vec3<u32>(28070u, 18652u, 35807u)) >> (~4294967295u % 32u), firstLeadingBit(func_2().x)), firstLeadingBit(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a.b | vec2<u32>(39578u, var_2.a.b.x), vec2<u32>(17817u, var_2.b) >> (var_2.a.b % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(var_2.a.b, vec2<u32>(var_2.b, var_2.b)))), vec2<u32>(var_2.b, 1u));
    var var_4 = 1178i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3.x, ~21697u, _wgslsmith_add_u32(~var_2.a.b.x, var_2.a.b.x)) ^ (abs(_wgslsmith_mult_vec3_u32(vec3<u32>(9369u, var_2.a.b.x, 3127u), vec3<u32>(4294967295u, var_3.x, var_3.x))) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_2.a.b.x, var_2.a.b.x), vec3<u32>(1u, var_3.x, var_2.b)) >> (vec3<u32>(40535u, 40683u, 102563u) % vec3<u32>(32u))) % vec3<u32>(32u))), func_1().b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a.x)) + var_2.a.a.x), -733f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, 1000f, var_2.a.a.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.a.a.x, var_2.a.a.x, var_2.c, var_2.c))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1260f, 561f, -1200f, var_2.c), vec4<f32>(1158f, var_2.c, var_2.c, -879f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, 840f, var_2.c) * vec4<f32>(2472f, var_2.a.a.x, -334f, -2393f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a.x, var_2.c, -1319f, var_2.a.a.x) - vec4<f32>(var_2.a.a.x, 474f, 1000f, 1472f))))), vec4<i32>(-2147483647i, -firstLeadingBit(-34942i), u_input.a.x, _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.xy), vec2<i32>(var_1.x, -75742i) | vec2<i32>(18183i, u_input.a.x)) ^ u_input.a.x));
}

