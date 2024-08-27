struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<f32>(-805f, -127f, -109f)), Struct_1(vec3<f32>(-1735f, 1000f, 2026f)), Struct_1(vec3<f32>(-365f, 1863f, 1007f)), Struct_1(vec3<f32>(-604f, -1770f, -3087f)), Struct_1(vec3<f32>(607f, 839f, -474f)), Struct_1(vec3<f32>(-291f, -1771f, 536f)), Struct_1(vec3<f32>(924f, -875f, -419f)), Struct_1(vec3<f32>(-1212f, -404f, -574f)), Struct_1(vec3<f32>(-1000f, -269f, 414f)), Struct_1(vec3<f32>(-500f, -756f, 307f)), Struct_1(vec3<f32>(101f, -865f, 828f)), Struct_1(vec3<f32>(812f, -1000f, -1000f)), Struct_1(vec3<f32>(1291f, -1000f, -618f)), Struct_1(vec3<f32>(917f, -649f, 1000f)), Struct_1(vec3<f32>(-916f, -1329f, 1000f)), Struct_1(vec3<f32>(-2310f, 1230f, 1490f)), Struct_1(vec3<f32>(-929f, -1045f, -1004f)), Struct_1(vec3<f32>(-1513f, 341f, 2175f)), Struct_1(vec3<f32>(-1000f, 558f, -2750f)));

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true));

var<private> global2: f32 = 2034f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -779f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1561f, 2425f))), _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(f32(-1f) * -2951f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-179f, -469f)) * -749f)));
    global1 = array<vec4<bool>, 10>();
    global0 = array<Struct_1, 19>();
    let var_1 = min(vec3<u32>(u_input.a, ~u_input.b.x, 4294967295u), _wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 116660u, u_input.a), vec3<u32>(u_input.b.x, 54146u, 58315u), vec3<u32>(1u, u_input.b.x, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(22557u, 0u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, 15525u))) | vec3<u32>(~u_input.b.x, u_input.b.x ^ u_input.b.x, ~u_input.a), vec3<u32>(1u >> (u_input.a % 32u), 38889u, ~0u) ^ ~abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1703f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1067f, -1340f, false))))))) + _wgslsmith_f_op_f32(-1817f - 1f));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = max(~(~((arg_3 & arg_3) << (~vec4<u32>(48758u, u_input.a, 1482u, arg_2) % vec4<u32>(32u)))), max(arg_3, abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(43185i, arg_0.x, u_input.c, 0i), ~vec4<i32>(10045i, u_input.c, u_input.c, arg_3.x), -arg_3))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-466f, 988f), vec2<f32>(598f, -1000f)))) - vec2<f32>(-670f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(-1487f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-658f, -162f), vec2<f32>(-259f, 1650f), vec2<bool>(true, true))))), vec2<f32>(769f, -528f))));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(vec3<i32>(2147483647i, arg_1.x, u_input.c)), _wgslsmith_div_u32(u_input.b.x, arg_0), arg_0, vec4<i32>(-51786i, arg_1.x, arg_1.x, u_input.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1410f, 969f) * vec2<f32>(-1155f, 267f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1377f, -168f) + vec2<f32>(-859f, 1393f)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-263f, 1047f), vec2<f32>(-1000f, -117f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2095f, -532f))), vec2<f32>(-2251f, -539f), vec2<bool>(false, !arg_2)))));
    global2 = _wgslsmith_f_op_f32(-var_0.x);
    let var_1 = firstLeadingBit(vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_0) | vec2<u32>(4294967295u, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.b.x), u_input.b)) >> (1u % 32u)));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, ~5225i, u_input.c), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), arg_1), vec3<i32>(arg_1.x, u_input.c, u_input.c)), arg_1, vec3<i32>(arg_1.x, -2147483647i, u_input.c))), arg_1);
    let var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(arg_0, firstLeadingBit(firstLeadingBit(u_input.b.x)))), 19u)];
    return arg_2 && true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1564f, _wgslsmith_f_op_f32(f32(-1f) * -1010f), -1173f) + vec3<f32>(-174f, 2268f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -331f), _wgslsmith_f_op_f32(round(-267f)), func_1(u_input.b.x, vec3<i32>(u_input.c, u_input.c, u_input.c), false))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.a, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(769f, -1000f, -1276f))), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(max(var_0.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1659f, var_0.a.x, var_0.a.x) + var_0.a), _wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, false)), func_1(9352u, vec3<i32>(u_input.c, u_input.c, u_input.c), true)))))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(480f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))))), _wgslsmith_f_op_f32(round(var_1.a.x)));
    global2 = -1149f;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~(~u_input.b.x), u_input.a, u_input.a), _wgslsmith_add_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(26340u, 30112u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a)), vec3<u32>(u_input.a, 5315u, u_input.a) ^ vec3<u32>(1u, 46937u, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(26400u, 42933u), u_input.b.x, abs(6339u))), true), reverseBits(~vec3<u32>(min(0u, 54757u), u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u)))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.a.zy)), vec2<f32>(832f, 833f))), var_1.a.yz, vec2<bool>(any(vec3<bool>(true, true, true)), u_input.c <= select(-2147483647i, 2295i, false)))), -1i, (_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, -5489i), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, -5802i), vec2<i32>(u_input.c, u_input.c))) | ((vec2<i32>(u_input.c, 0i) ^ vec2<i32>(u_input.c, -35579i)) & reverseBits(vec2<i32>(362i, u_input.c)))) | _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-63182i, u_input.c), vec2<i32>(0i, u_input.c), vec2<i32>(19414i, 8708i)), -vec2<i32>(u_input.c, 4875i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-28770i, u_input.c), vec2<i32>(-9854i, u_input.c)) & (vec2<i32>(u_input.c, u_input.c) >> (u_input.b % vec2<u32>(32u))), vec2<i32>(u_input.c, -33091i) >> (firstTrailingBit(vec2<u32>(26442u, 29452u)) % vec2<u32>(32u))), -select(vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_sub_vec2_i32(select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(29237i, u_input.c), true), vec2<i32>(2147483647i, -65406i) >> (vec2<u32>(3504u, u_input.a) % vec2<u32>(32u))), vec2<bool>(any(vec2<bool>(false, false)), true)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a.x, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -541f))))));
}

