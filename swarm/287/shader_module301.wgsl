struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = true;

var<private> global2: array<Struct_4, 3>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(global0.zwx, any(!(!global0.zy)), _wgslsmith_div_vec4_u32(abs(firstLeadingBit(vec4<u32>(u_input.c.x, 33896u, 40907u, 4294967295u))) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(29588u, u_input.a, 3737u, u_input.c.x), vec4<u32>(u_input.b.x, 90398u, 889u, u_input.c.x), vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 4294967295u)), vec4<u32>(597u, u_input.b.x, u_input.b.x, 0u >> (u_input.a % 32u)) & ~vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a)));
    global1 = !global0.x;
    var var_1 = vec2<i32>(-1i) * -firstTrailingBit(_wgslsmith_div_vec2_i32(min(vec2<i32>(6169i, 3868i), vec2<i32>(5738i, -51223i)), vec2<i32>(22978i, 8375i)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1251f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(162f - -1666f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(305f, -176f) + _wgslsmith_f_op_f32(-227f - 1000f))), vec3<f32>(-250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-155f * -758f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-674f - 432f), _wgslsmith_f_op_f32(max(-1018f, -1889f)), select(global0.x, false, global0.x)))), var_0.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-126f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f))))));
    var_1 = _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, -8673i), vec2<i32>(1i, var_1.x)) | _wgslsmith_sub_vec2_i32(~vec2<i32>(27092i, var_1.x), _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 0i), vec2<i32>(59507i, 2147483647i))), vec2<i32>(var_1.x ^ (var_1.x << (u_input.b.x % 32u)), 2147483647i)) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.c) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), u_input.c)), u_input.c) % vec2<u32>(32u));
    return vec2<bool>(select(all(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_f_op_f32(-var_2.x)), false, var_0.a.x), any(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    global1 = all(func_3());
    var var_0 = 980f;
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-496f, -100f, 1216f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 991f, -252f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-894f - 225f)))));
    global1 = all(vec4<bool>(all(func_3()), arg_0.x, !global0.x, (_wgslsmith_f_op_f32(-1073f + var_1.a.b) < _wgslsmith_f_op_f32(abs(-333f))) | true));
    let var_2 = _wgslsmith_f_op_f32(min(159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-304f + _wgslsmith_f_op_f32(round(var_1.a.b))), -1375f)) * _wgslsmith_div_f32(-1664f, _wgslsmith_f_op_f32(386f - var_1.a.a.x)))));
    return vec4<bool>(false, true && (114042u != _wgslsmith_div_u32(1u, arg_2)), arg_0.x, any(vec3<bool>(arg_0.x, true, arg_0.x || true)) & global0.x);
}

fn func_1() -> u32 {
    let var_0 = u_input.b.xy;
    global1 = global0.x;
    global2 = array<Struct_4, 3>();
    global0 = !select(vec4<bool>(any(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), false)), false, true, firstTrailingBit(1846i) >= ~1i), func_2(vec4<bool>(true, true, true, true), abs(firstTrailingBit(vec3<u32>(var_0.x, 0u, u_input.a))), ~u_input.c.x), !global0.x);
    let var_1 = _wgslsmith_mult_i32(max(2147483647i << (u_input.b.x % 32u), firstTrailingBit(_wgslsmith_sub_i32(-24928i, 1i) >> (var_0.x % 32u))), ~reverseBits(abs(31022i)));
    return (u_input.c.x ^ ~6084u) & var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = global2[_wgslsmith_index_u32(func_1(), 3u)];
    let var_1 = _wgslsmith_dot_vec4_i32(select(~(~vec4<i32>(-46403i, 2147483647i, -51164i, -11814i)), -vec4<i32>(2147483647i, 24419i, 3674i, 2147483647i), func_2(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, false, false, true), vec4<bool>(false, true, false, false)), ~vec3<u32>(13840u, 21328u, u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a))), vec4<i32>(-(~0i), max(6297i, countOneBits(-2147483647i)), firstLeadingBit(_wgslsmith_sub_i32(-13276i, 0i)), 1i << (_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.zz) % 32u))) | -78471i;
    global1 = true;
    let var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(38616i, i32(-1i) * -(~0i), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, -1i, var_1, var_1), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, -31517i, var_1), vec4<i32>(var_1, 22027i, 7741i, var_1)))), min(-select(vec3<i32>(0i, var_1, var_1) | vec3<i32>(var_1, var_1, -10585i), vec3<i32>(40857i, var_1, var_1), global0.x), -(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(0i, var_1, -1i)) << (vec3<u32>(1u, 26537u, 0u) % vec3<u32>(32u)))), min(vec3<i32>(_wgslsmith_mult_i32(select(var_1, 64180i, global0.x), var_1 | var_1), var_1, 2147483647i), min(abs(vec3<i32>(23883i, var_1, var_1)) >> (~u_input.b % vec3<u32>(32u)), -(~vec3<i32>(-9933i, 1i, -34736i)))));
    global0 = vec4<bool>(false, !any(vec2<bool>(true, true)), 1i != (var_2.x ^ _wgslsmith_dot_vec3_i32(var_2, var_2)), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, firstTrailingBit(~(~(~vec4<u32>(u_input.a, 0u, u_input.b.x, 46941u)))));
}

