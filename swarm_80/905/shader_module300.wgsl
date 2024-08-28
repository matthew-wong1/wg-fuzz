struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(true, true, true);
    let var_1 = u_input.e.zz;
    global0 = array<Struct_3, 10>();
    global0 = array<Struct_3, 10>();
    var var_2 = Struct_4(reverseBits(reverseBits(vec4<i32>(~(-17605i), countOneBits(-2147483647i), abs(var_1.x), -u_input.e.x))), -reverseBits(_wgslsmith_add_i32(var_1.x, ~var_1.x)), var_0.zz, vec2<u32>(u_input.b, 1u));
    return all(!select(!select(vec2<bool>(var_2.c.x, true), var_2.c, var_0.x), select(vec2<bool>(var_0.x, var_2.c.x), vec2<bool>(var_0.x, true), true), any(vec3<bool>(true, var_0.x, var_0.x))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_3, 10>();
    var var_0 = _wgslsmith_mod_u32(~u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 49318u, u_input.a.x, 17042u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, 0u)) | 1u));
    let var_1 = 32390u | (_wgslsmith_sub_u32(u_input.d, 51284u) & 23785u);
    var var_2 = vec4<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_3(), !(_wgslsmith_mod_u32(~u_input.b, 42595u) < u_input.a.x), true);
    var var_3 = ~((u_input.c << (((u_input.c ^ vec4<u32>(106082u, var_1, u_input.c.x, var_1)) >> (min(u_input.c, vec4<u32>(33223u, var_1, 1u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (u_input.c % vec4<u32>(32u)));
    return Struct_2(abs(vec3<u32>(var_3.x >> (var_3.x % 32u), ~var_3.x, 28078u)) << (var_3.zwx % vec3<u32>(32u)), var_2.x, Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1), min(vec2<u32>(u_input.c.x, u_input.d), u_input.c.yw)) | 13942u, vec4<u32>(var_3.x, u_input.b, 1u, ~(0u >> (u_input.c.x % 32u)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-916f, 635f, 1207f, 802f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1781f, -1339f, 807f, 1148f)))) - vec4<f32>(_wgslsmith_f_op_f32(step(-361f, -773f)), 514f, -1528f, _wgslsmith_f_op_f32(f32(-1f) * -176f))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    let var_1 = u_input.e.x;
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-445f, _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x), -1586f), vec3<f32>(var_0.d.x, var_0.d.x, 759f))), all(vec4<bool>(true, true, true, var_0.b)), any(select(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(true, true), false), vec2<bool>(var_0.b, !var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false), !vec2<bool>(var_0.b, true)))), 49704u, Struct_2(select(~(~u_input.c.xxw), var_0.a, func_3()), true, Struct_1(abs(~var_0.a.x), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.c.b.x, var_0.a.x, 73531u, 4294967295u), u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(35633u, u_input.a.x, u_input.d, var_0.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.d, u_input.b)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) - func_2().d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), -487f)));
    global0 = array<Struct_3, 10>();
    var var_3 = var_0.c.a;
    return StorageBuffer(countOneBits(u_input.c.zy) ^ vec2<u32>(~var_2.e.c.b.x, func_2().c.b.x), _wgslsmith_f_op_f32(min(func_2().d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(select(var_0.d.x, -227f, false))), var_2.a.x)))), firstLeadingBit(~abs(firstTrailingBit(vec2<i32>(u_input.e.x, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_i32(countOneBits(-select(u_input.e, select(vec3<i32>(u_input.e.x, 1i, u_input.e.x), vec3<i32>(u_input.e.x, u_input.e.x, -39355i), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), vec3<i32>(abs(~1i), u_input.e.x, -56061i | ~u_input.e.x));
    let var_1 = min(u_input.e.zz, _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.e.x, 51114i), _wgslsmith_mult_vec2_i32(~(~var_0.xz), firstLeadingBit(-vec2<i32>(u_input.e.x, u_input.e.x)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1442f, 208f, -468f, -668f), vec4<f32>(-545f, -135f, 1413f, 453f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1476f, -2277f, -524f, -300f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(173f, 544f, -408f, 109f) - vec4<f32>(-2227f, -1573f, -898f, -667f))) - vec4<f32>(-260f, _wgslsmith_f_op_f32(-375f - 811f), _wgslsmith_f_op_f32(f32(-1f) * -793f), 373f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true)))));
    var var_3 = vec3<bool>(var_1.x < var_0.x, true, !((1u <= select(u_input.c.x, u_input.a.x, true)) | (u_input.b != u_input.c.x)));
    var var_4 = vec3<u32>(countOneBits(9227u), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a << (vec2<u32>(4294967295u, 103634u) % vec2<u32>(32u)), vec2<u32>(0u, 0u)), ~u_input.a.x), u_input.a.x), (max(~u_input.d, 0u) << (~0u % 32u)) | u_input.b);
    let x = u_input.a;
    s_output = func_1();
}

