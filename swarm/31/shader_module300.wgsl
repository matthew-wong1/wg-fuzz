struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1000f, -2512f, -542f, 1313f, 1343f, -2240f, 1000f, -419f);

var<private> global1: Struct_1 = Struct_1(214f, vec4<u32>(8527u, 59494u, 24599u, 5460u), vec4<u32>(4294967295u, 0u, 33500u, 78145u), vec4<f32>(-540f, 702f, -105f, -1000f), -191f);

var<private> global2: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(77708u, 4294967295u, 4294967295u), vec3<u32>(0u, 73500u, 1u), vec3<u32>(0u, 10137u, 4294967295u), vec3<u32>(3047u, 22105u, 0u), vec3<u32>(64416u, 4294967295u, 25982u), vec3<u32>(0u, 57231u, 26382u), vec3<u32>(25094u, 0u, 1u), vec3<u32>(1u, 1u, 31893u), vec3<u32>(0u, 0u, 35412u), vec3<u32>(1u, 12815u, 66482u), vec3<u32>(4294967295u, 1u, 36232u), vec3<u32>(1u, 43810u, 4294967295u), vec3<u32>(31328u, 1u, 30807u), vec3<u32>(28670u, 1u, 4294967295u), vec3<u32>(45034u, 4294967295u, 18489u), vec3<u32>(1u, 4294967295u, 1972u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(1u, 323u, 0u), vec3<u32>(4294967295u, 1u, 98227u), vec3<u32>(1u, 1u, 98050u), vec3<u32>(42233u, 1u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 2846u, 1u), vec3<u32>(50127u, 842u, 0u), vec3<u32>(1u, 0u, 4807u));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = select(~(~0u << (_wgslsmith_add_u32(~0u, u_input.c) % 32u)), ~1u, true);
    var var_1 = Struct_1(global1.e, vec4<u32>(global1.b.x, ~7998u ^ ~global1.c.x, _wgslsmith_add_u32(countOneBits(u_input.c ^ u_input.b.x), 1u), abs(global1.b.x)), firstTrailingBit(abs(~u_input.b)), arg_0, arg_0.x);
    var_1 = Struct_1(-1336f, vec4<u32>(_wgslsmith_mult_u32(~var_1.b.x >> (abs(1u) % 32u), var_1.c.x), ~_wgslsmith_mult_u32(u_input.a, global1.c.x), u_input.c, global1.b.x), ~var_1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 313f, -631f, 1239f)), var_1.d)))), vec4<f32>(152f, 375f, 678f, _wgslsmith_f_op_f32(-1000f * arg_0.x))), _wgslsmith_f_op_f32(max(-422f, -914f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2676f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), 1674f, _wgslsmith_f_op_f32(var_1.e * var_1.a)) * global1.d);
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -294f)))))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> u32 {
    global0 = array<f32, 8>();
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.d)) * -1285f);
    var var_1 = _wgslsmith_div_i32(u_input.e, ~u_input.d);
    let var_2 = Struct_4(vec2<i32>(u_input.e, ~arg_1.x ^ min(u_input.e, max(2147483647i, 44078i))), 609f, global1.d.yx, Struct_1(1657f, u_input.b, firstLeadingBit(u_input.b), global1.d, global1.e));
    return arg_0;
}

fn func_1() -> vec2<i32> {
    global0 = array<f32, 8>();
    var var_0 = reverseBits(~global2[_wgslsmith_index_u32(firstLeadingBit(~global1.c.x ^ global1.c.x), 25u)]);
    var_0 = u_input.b.ywz;
    global2 = array<vec3<u32>, 25>();
    let var_1 = Struct_5(~abs(-(vec3<i32>(22153i, 0i, u_input.d) & vec3<i32>(-22279i, -9289i, u_input.e))), global0[_wgslsmith_index_u32(countOneBits(func_2(global1.c.x, vec2<i32>(35177i, -1i), _wgslsmith_f_op_vec3_f32(select(global1.d.wxy, _wgslsmith_f_op_vec3_f32(global1.d.zxy * vec3<f32>(1480f, 1138f, global0[_wgslsmith_index_u32(var_0.x, 8u)])), true)))), 8u)], true, u_input.d, vec4<u32>(abs(~(~var_0.x)), 0u, u_input.a, u_input.a));
    return vec2<i32>(0i, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1.b.yz, vec2<u32>(global1.b.x, global1.b.x)), 8u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(559f))))), abs(~u_input.b), _wgslsmith_sub_vec4_u32(u_input.b, ~_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(global1.c.x, global1.c.x, global1.b.x, global1.c.x)) | firstLeadingBit(_wgslsmith_mod_vec4_u32(u_input.b, global1.c))), global1.d, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1.c.x, countOneBits(_wgslsmith_mod_u32(max(global1.b.x, global1.c.x), ~u_input.a)), countOneBits(firstTrailingBit(~59537u))), 8u)]);
    let var_1 = Struct_4(vec2<i32>(func_1().x, abs(2147483647i)) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(1i, 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~(u_input.b.x ^ global1.c.x), 8u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 1555f)), Struct_1(-721f, vec4<u32>(1u, ~global1.c.x, min(u_input.a, 1u), global1.b.x), reverseBits(vec4<u32>(~global1.c.x, ~34751u, u_input.a, ~35060u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(763f)) - global1.e), -711f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - global1.a) - 854f), 1000f), global0[_wgslsmith_index_u32(min(4294967295u, 4294967295u), 8u)]));
    global0 = array<f32, 8>();
    var var_2 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(315f + 122f), -485f)), 213f)), false));
    global2 = array<vec3<u32>, 25>();
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(max(var_1.a.x, var_1.a.x), _wgslsmith_sub_i32(u_input.d, -2147483647i)) & vec2<i32>(u_input.e, 0i), vec2<i32>(1i, u_input.e), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a, vec2<i32>(u_input.e, u_input.e)), -var_1.a) << (_wgslsmith_div_vec2_u32(var_1.d.b.zz & vec2<u32>(4294967295u, global1.b.x), vec2<u32>(u_input.b.x, global1.b.x)) % vec2<u32>(32u))), abs(var_1.a));
    var var_4 = vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1264f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(max(0u, 22557u), 8u)]))))), global0[_wgslsmith_index_u32(global1.b.x, 8u)], 993f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.b.x, firstTrailingBit(global1.c.x), min(vec4<i32>(var_3, ~abs(var_0.x), countOneBits(14844i & u_input.e), -24839i), vec4<i32>(select(-1i, u_input.d, true) | 1i, -_wgslsmith_mult_i32(var_1.a.x, var_3), 24617i, -var_0.x)), _wgslsmith_add_i32(reverseBits(var_1.a.x), 1i));
}

