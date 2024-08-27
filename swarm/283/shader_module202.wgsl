struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-1859f, -1076f, -1266f, -1000f), vec4<f32>(-259f, -961f, 141f, 444f), vec4<f32>(927f, 1444f, -114f, 491f), vec4<f32>(657f, -778f, -232f, 537f), vec4<f32>(-366f, -413f, 1031f, -782f), vec4<f32>(769f, -974f, -1192f, 1236f), vec4<f32>(563f, -593f, 1966f, -2399f), vec4<f32>(436f, 1108f, 146f, 996f), vec4<f32>(586f, -247f, -733f, 1626f), vec4<f32>(-600f, 1501f, 713f, -521f), vec4<f32>(-690f, 787f, -1000f, -2034f), vec4<f32>(1320f, 665f, 1702f, -1749f), vec4<f32>(542f, 365f, -843f, 782f), vec4<f32>(286f, 189f, 2145f, -1254f));

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(14923u, 1u, 70066u), vec3<u32>(48822u, 4294967295u, 11688u), vec3<u32>(0u, 47336u, 1u), vec3<u32>(0u, 59432u, 46131u), vec3<u32>(0u, 4294967295u, 57640u), vec3<u32>(78431u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(40722u, 4294967295u, 7827u), vec3<u32>(31673u, 0u, 0u), vec3<u32>(1u, 0u, 35477u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1u, 452u, 0u), vec3<u32>(43187u, 0u, 63190u), vec3<u32>(55640u, 11846u, 0u), vec3<u32>(21098u, 4294967295u, 0u), vec3<u32>(4294967295u, 32058u, 0u), vec3<u32>(856u, 4294967295u, 1u), vec3<u32>(28226u, 5042u, 33409u), vec3<u32>(4294967295u, 5435u, 50701u), vec3<u32>(4294967295u, 0u, 39699u), vec3<u32>(40886u, 1u, 4294967295u), vec3<u32>(39993u, 4294967295u, 38727u), vec3<u32>(0u, 43969u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u));

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<i32, 24>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec3<u32>, 25>();
    global1 = array<vec3<u32>, 25>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-113f)) - _wgslsmith_f_op_f32(230f + -949f)), _wgslsmith_f_op_f32(-1180f * _wgslsmith_f_op_f32(328f + 1767f)), 1f)), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1620f, -360f)) + _wgslsmith_f_op_f32(-741f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-289f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -585f), vec3<bool>(false, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1806f * -359f), _wgslsmith_f_op_f32(step(-350f, -141f)))))));
    var var_1 = Struct_1(vec4<i32>(global3[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) >> (~u_input.a.x % 32u)), 24u)], global4.a.x, -firstLeadingBit(-2147483647i), ~countOneBits(global3[_wgslsmith_index_u32(5328u, 24u)]) >> (u_input.a.x % 32u)));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(select(_wgslsmith_dot_vec4_i32(var_1.a, global4.a), global3[_wgslsmith_index_u32(1u, 24u)], true)), firstLeadingBit(min(1i, var_1.a.x)), global4.a.x, _wgslsmith_div_i32(var_1.a.x << (u_input.b.x % 32u), ~firstTrailingBit(0i))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 60038u), 24u)], -18358i, -8268i ^ global3[_wgslsmith_index_u32(~u_input.b.x, 24u)]), vec4<i32>(-global4.a.x, firstLeadingBit(_wgslsmith_sub_i32(-40549i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)])), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, global4.a.x), var_1.a.yz)), var_1.a.x)), vec4<i32>(select(~(~var_1.a.x), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.x, 9535i, global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec3<i32>(-52091i, 4474i, -44023i))), true & all(vec3<bool>(false, true, true))), global4.a.x, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(28511u, 24u)], global3[_wgslsmith_index_u32(30689u, 24u)]), _wgslsmith_dot_vec3_i32(var_1.a.zzx, global4.a.zww)), select(-_wgslsmith_mod_i32(-2048i, global4.a.x), _wgslsmith_dot_vec3_i32(var_1.a.yzx, _wgslsmith_sub_vec3_i32(vec3<i32>(4580i, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], 2147483647i), vec3<i32>(global4.a.x, 51219i, -5365i))), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> vec2<i32> {
    global4 = Struct_1(_wgslsmith_mult_vec4_i32(global4.a, _wgslsmith_clamp_vec4_i32(func_3(), vec4<i32>(arg_2.x, arg_2.x, 1i, global3[_wgslsmith_index_u32(0u, 24u)]) ^ reverseBits(vec4<i32>(arg_2.x, global4.a.x, arg_2.x, 19045i)), global4.a)));
    global1 = array<vec3<u32>, 25>();
    var var_0 = ~(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, arg_1) & ~u_input.b.x);
    var var_1 = global2[_wgslsmith_index_u32(max(abs(u_input.a.x), ~_wgslsmith_mod_u32(countOneBits(arg_1), ~(~u_input.b.x))), 24u)];
    var var_2 = countOneBits(global4.a.x);
    return -_wgslsmith_div_vec2_i32(arg_2.yy, ~reverseBits(global4.a.xz));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(trunc(-651f)))) + 519f);
    let var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(0u, 24u)], global3[_wgslsmith_index_u32(0u, 24u)]), vec2<i32>(6060i, global4.a.x)) >> (_wgslsmith_add_vec2_u32(u_input.b.zx, u_input.a.yx & u_input.b.xz) % vec2<u32>(32u)), abs(global4.a.ww >> (u_input.b.xz % vec2<u32>(32u))) & ~func_2(vec2<u32>(1u, u_input.b.x), u_input.a.x, global4.a.wyw));
    let var_2 = !arg_1.x;
    global4 = Struct_1(~(~global4.a) >> (~u_input.a % vec4<u32>(32u)));
    var var_3 = vec2<i32>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 71580u)), u_input.a)), u_input.a), 24u)], firstTrailingBit(-31726i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.a.x, arg_2.a.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(-461f, _wgslsmith_f_op_f32(step(-128f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1237f + 770f))))))));
    global3 = array<i32, 24>();
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(685f, -951f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1000f)), _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(false, true), vec3<bool>(true, false, true), Struct_2(vec2<f32>(330f, 1507f)), vec3<bool>(false, false, false))))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, _wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, true), vec3<bool>(true, false, false), Struct_2(vec2<f32>(var_0, -455f)), vec3<bool>(false, false, true))).x)))));
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(global4.a, -global4.a & global4.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0, -574f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_0, -647f)))))), _wgslsmith_f_op_vec2_f32(ceil(var_1.a))));
    var var_4 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.a.zw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) + var_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1851f, 1907f, 650f), vec3<f32>(-1000f, 528f, -1258f), false))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, var_0, var_0), vec3<f32>(var_1.a.x, 389f, var_0))))))));
}

