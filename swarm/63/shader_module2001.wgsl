struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(54646u, 22272u, 1u, 13350u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~_wgslsmith_div_vec4_u32(u_input.e << (u_input.e % vec4<u32>(32u)), u_input.e));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1409f))) < _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f))));
    let var_2 = Struct_3(Struct_1(vec4<u32>(var_0.a.x, firstTrailingBit(u_input.d), 48344u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1350f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1452f, -134f, true))))));
    var var_3 = (abs(-12377i) & (u_input.a.x ^ abs(u_input.a.x))) | (i32(-1i) * -52002i);
    let var_4 = u_input.c.yx;
    return 40713u << (var_2.a.a.x % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~vec4<u32>(0u, _wgslsmith_div_u32(4294967295u ^ global0.x, ~global0.x), func_3(), select(4294967295u, global0.x, true)));
    global0 = ~u_input.e;
    var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.e.x, u_input.d, 1u, global0.x) >> (vec4<u32>(4294967295u, 1u, 20526u, var_0.a.x) % vec4<u32>(32u)), u_input.e) >> (vec4<u32>(global0.x, 79064u, _wgslsmith_mult_u32(var_0.a.x, global0.x << (55811u % 32u)), var_0.a.x) % vec4<u32>(32u)));
    var_0 = Struct_1(var_0.a);
    global0 = _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_mult_u32(37189u, 4711u), 1u, 98226u << (var_0.a.x % 32u), 0u)) & _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(global0.x, 32267u, 89239u, 4294967295u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, u_input.d, var_0.a.x, var_0.a.x), vec4<u32>(2993u, global0.x, global0.x, var_0.a.x))), vec4<u32>(firstTrailingBit(0u), ~firstTrailingBit(var_0.a.x) & _wgslsmith_mult_u32(firstLeadingBit(global0.x), firstLeadingBit(80160u)), 1u, global0.x));
    return Struct_1(_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(var_0.a.x, u_input.d, 0u, global0.x)), u_input.e));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_3(func_2(), -1523f);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b, 522f)), 956f, 1000f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(851f, var_0.b, 228f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, -1245f, 996f))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) - _wgslsmith_f_op_f32(441f - var_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(231f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-338f))))));
    var var_3 = 585u;
    let var_4 = ~min(30054u, 45751u | _wgslsmith_div_u32(~4294967295u, _wgslsmith_sub_u32(29004u, global0.x)));
    return Struct_2(~_wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), var_0.a.a.xyy)), ~var_0.a.a.wzz), vec4<f32>(-1646f, -653f, _wgslsmith_f_op_f32(abs(1f)), var_0.b), var_0.a, func_2(), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = vec2<i32>(u_input.c.x, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.c.xx) & _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.c.x, u_input.b)), vec4<i32>(u_input.b, -2147483647i, u_input.a.x, u_input.c.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -549f);
    global0 = firstTrailingBit(vec4<u32>(var_0.d.a.x | func_3(), 0u, _wgslsmith_mult_u32(~abs(u_input.e.x), 72446u), _wgslsmith_sub_u32(1u, reverseBits(func_2().a.x))));
    var var_3 = var_0;
    var var_4 = var_0.d;
    let var_5 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-14614i, -35418i), -_wgslsmith_add_vec2_i32(u_input.c.zy, vec2<i32>(var_1.x, var_1.x))), _wgslsmith_clamp_vec2_i32(-(u_input.c.xy << (var_0.c.a.yx % vec2<u32>(32u))), u_input.a, countOneBits(min(vec2<i32>(7913i, var_1.x), u_input.c.yy)))), ~(vec2<u32>(var_4.a.x, var_0.d.a.x) ^ _wgslsmith_add_vec2_u32(var_3.d.a.zz, global0.xw)) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, firstTrailingBit(var_0.d.a.x)), ~_wgslsmith_sub_vec2_u32(var_4.a.wx, global0.xz)) % vec2<u32>(32u)));
}

