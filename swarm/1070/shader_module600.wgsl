struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<u32, 8>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    let var_0 = select(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)) & true, u_input.a >= 35061u, !(all(vec3<bool>(true, true, false)) == true)), !vec3<bool>(true, true, all(vec2<bool>(true, true))), all(vec4<bool>(true, true, true, true)));
    var var_1 = Struct_3(Struct_2(vec4<u32>(60338u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45585u, 8u)], 8u)], global1[_wgslsmith_index_u32(36216u, 8u)] >> (0u % 32u), 4294967295u) << (~u_input.d % vec4<u32>(32u)), global3[_wgslsmith_index_u32(44622u, 8u)], Struct_1(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d.x, 8u)], 4294967295u, 41658u), vec4<u32>(global1[_wgslsmith_index_u32(37086u, 8u)], 8474u, global1[_wgslsmith_index_u32(3825u, 8u)], global1[_wgslsmith_index_u32(u_input.b, 8u)])), _wgslsmith_div_vec4_u32(u_input.d, u_input.d), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x))), u_input.d.yy), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(32733i, -41434i, 1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1355f)) + -550f)) * -1000f), false, ~firstTrailingBit(~(~34543u)), var_0.x);
    var var_2 = Struct_3(var_1.a, -740f, all(vec3<bool>(false, var_1.a.d.x <= var_1.a.d.x, false)), global1[_wgslsmith_index_u32(u_input.a, 8u)], !all(select(var_0.xx, select(var_0.xx, vec2<bool>(false, var_1.e), var_0.yx), true)));
    global2 = array<Struct_1, 13>();
    var var_3 = _wgslsmith_add_vec3_i32(~(-vec3<i32>(var_2.a.d.x, ~var_1.a.d.x, var_2.a.d.x | var_1.a.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-36474i, _wgslsmith_sub_i32(var_2.a.d.x | var_2.a.d.x, var_2.a.d.x), -var_2.a.d.x & 2147483647i), firstTrailingBit(select(max(var_1.a.d, var_1.a.d), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_2.a.d.x, -40145i), var_1.a.d), var_0))));
    return u_input.d.x;
}

fn func_2() -> Struct_1 {
    var var_0 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false))));
    var_0 = !vec3<bool>(var_0.x, var_0.x, true);
    global2 = array<Struct_1, 13>();
    let var_1 = ~_wgslsmith_clamp_u32(firstLeadingBit(28113u) ^ ~u_input.c, reverseBits(1u | (global1[_wgslsmith_index_u32(u_input.d.x, 8u)] | u_input.a)), func_3());
    let var_2 = Struct_1(vec4<u32>(~var_1, ~_wgslsmith_sub_u32(~u_input.d.x, 1u), _wgslsmith_sub_u32(21253u, firstTrailingBit(min(21067u, 1u))), max(~0u, firstTrailingBit(global1[_wgslsmith_index_u32(25698u, 8u)])) | 4294967295u), ~(~(u_input.d.wz ^ u_input.d.ww)) | ~(~(~u_input.d.xw)));
    return var_2;
}

fn func_1() -> u32 {
    global3 = array<Struct_1, 8>();
    let var_0 = -1i;
    let var_1 = func_2();
    global1 = array<u32, 8>();
    let var_2 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(37134u, u_input.b, global1[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.c, 8u)], u_input.d.x), countOneBits(4294967295u), 0u) | var_1.a, ~vec4<u32>(4294967295u, var_1.a.x ^ global1[_wgslsmith_index_u32(u_input.d.x, 8u)], firstLeadingBit(var_1.a.x), 4294967295u)), _wgslsmith_div_vec2_u32(~(~var_1.a.wx << (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), var_1.a.yz));
    return firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.d.wx, u_input.d.zz) >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(var_2.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 0u, u_input.d.x), ~vec4<u32>(0u, var_2.b.x, global1[_wgslsmith_index_u32(1u, 8u)], 17813u), ~vec4<u32>(22351u, 43007u, var_1.b.x, var_1.a.x))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(165f * 315f), 1f))) + 110f) * -752f);
    let var_1 = reverseBits(_wgslsmith_add_i32(abs(-7729i) >> (_wgslsmith_clamp_u32(countOneBits(global1[_wgslsmith_index_u32(u_input.d.x, 8u)]), func_1(), countOneBits(1u)) % 32u), 1i));
    let var_2 = firstLeadingBit(~u_input.d.wy);
    let var_3 = Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, func_1(), ~1u, ~var_2.x), ~vec4<u32>(0u, 4978u, global1[_wgslsmith_index_u32(var_2.x, 8u)], 9309u)), func_2(), global2[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, -4148i, 1i) >> (~vec3<u32>(6748u, 0u, global1[_wgslsmith_index_u32(1u, 8u)]) % vec3<u32>(32u)), ~vec3<i32>(1i, 0i, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f))), !(!all(vec4<bool>(true, true, true, true))), _wgslsmith_mod_u32((min(u_input.d.x, var_2.x) << (~0u % 32u)) & u_input.d.x, _wgslsmith_dot_vec2_u32(max(max(vec2<u32>(4294967295u, u_input.d.x), vec2<u32>(u_input.c, 1u)), ~u_input.d.xw), (u_input.d.xz >> (var_2 % vec2<u32>(32u))) ^ vec2<u32>(global1[_wgslsmith_index_u32(74463u, 8u)], 10826u))), !(all(vec4<bool>(true, true, true, true)) || true));
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(29021u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.b, 1442f, var_3.b) - vec4<f32>(var_3.b, var_3.b, var_3.b, -633f)) - vec4<f32>(var_3.b, var_3.b, var_3.b, var_3.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -1000f, var_3.b, var_3.b))), var_3.c))));
}

