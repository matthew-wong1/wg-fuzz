struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(85598u, 1u, 1u);

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<vec2<bool>, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    global0 = vec3<u32>(global0.x, global0.x, ~0u);
    global2 = array<vec2<bool>, 10>();
    var var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(954f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f)))), _wgslsmith_f_op_f32(f32(-1f) * -590f))));
    let var_1 = vec4<f32>(-292f, 117f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(711f))) + _wgslsmith_div_f32(664f, -734f)))), _wgslsmith_f_op_f32(-1973f - _wgslsmith_f_op_f32(max(914f, 1f))));
    return all(vec4<bool>(any(vec4<bool>(false, true, true, false)) | true, all(vec2<bool>(true, true)), true, false));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x));
    let var_1 = ~55738i;
    let var_2 = global1[_wgslsmith_index_u32(var_0.a, 12u)];
    var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x << (var_0.a % 32u)), 12u)];
    var var_3 = !vec4<bool>(true, !all(vec2<bool>(true, false)), !select(true, true, true) || true, func_3());
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1652f, 345f, -759f, -1000f))))), vec4<f32>(_wgslsmith_f_op_f32(952f * -756f), _wgslsmith_f_op_f32(1116f * -976f), _wgslsmith_div_f32(-907f, 159f), -1824f))), vec4<f32>(_wgslsmith_f_op_f32(min(-675f, -799f)), 589f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -326f)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_1), vec3<i32>(u_input.b, var_1, u_input.b) | vec3<i32>(u_input.b, 1i, u_input.b)) & -vec3<i32>(-2147483647i, u_input.b << (4294967295u % 32u), -u_input.b));
}

fn func_1() -> vec4<bool> {
    global2 = array<vec2<bool>, 10>();
    let var_0 = func_2(~(~vec2<u32>(1u, global0.x & 65618u)));
    var var_1 = ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(9005u, 1u, global0.x), u_input.a)));
    global0 = max(abs(u_input.a), _wgslsmith_mult_vec3_u32((~vec3<u32>(15227u, 10978u, 554u) & u_input.a) >> (~max(u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(29993u, 0u, 16953u) << (~u_input.a % vec3<u32>(32u))));
    var var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1i, -var_0.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(24432i, u_input.b), firstTrailingBit(var_0.b.yz)), i32(-1i) * -2147483647i, var_0.b.x), vec4<i32>(8018i, -30065i, select(~0i, _wgslsmith_mod_i32(-1i, u_input.b), true), u_input.b));
    return vec4<bool>((_wgslsmith_sub_i32(15304i, reverseBits(28345i)) >> (_wgslsmith_mult_u32(1u, var_1.x) % 32u)) >= var_0.b.x, true, false, (_wgslsmith_f_op_f32(exp2(var_0.a.x)) < _wgslsmith_f_op_f32(-1478f - var_0.a.x)) && (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(67238u, 0u), u_input.a.yx, var_1.yz), _wgslsmith_mult_vec2_u32(var_1.yz, vec2<u32>(global0.x, 6966u))) <= ~0u));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = 0i;
    let var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(0i, 1i)), ~(~vec2<i32>(-83972i, 0i) & func_2(vec2<u32>(30748u, 4294967295u)).b.yy)), _wgslsmith_sub_vec2_i32(vec2<i32>(~var_0 ^ 2147483647i, -2147483647i), select(_wgslsmith_sub_vec2_i32(min(vec2<i32>(40018i, 48845i), vec2<i32>(0i, 1586i)), select(vec2<i32>(19743i, u_input.b), vec2<i32>(u_input.b, -26723i), arg_3.xx)), (vec2<i32>(-2147483647i, -38247i) >> (u_input.a.zx % vec2<u32>(32u))) | vec2<i32>(-8851i, -12644i), 1u > ~global0.x)));
    var var_2 = u_input.a | ~u_input.a;
    global2 = array<vec2<bool>, 10>();
    let var_3 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1462f)), -1071f);
    return StorageBuffer(arg_1.x, _wgslsmith_div_u32(~0u, _wgslsmith_add_u32(~(~arg_2.a), ~(~global0.x))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-117f, _wgslsmith_f_op_f32(1000f * 162f))), _wgslsmith_f_op_f32(f32(-1f) * -616f)));
    global2 = array<vec2<bool>, 10>();
    let var_1 = 731f;
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -613f);
    let x = u_input.a;
    s_output = func_4(all(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3 * 259f), _wgslsmith_f_op_f32(var_3 - -1058f)))), Struct_2(firstLeadingBit(u_input.a.x)), func_1());
}

