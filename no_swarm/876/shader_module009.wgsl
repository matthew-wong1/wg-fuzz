struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<u32>(14316u, 895u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 58583u, 11897u)), Struct_1(vec3<u32>(96379u, 72194u, 45237u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(36160u, 0u, 4294967295u)), Struct_1(vec3<u32>(20022u, 1u, 6342u)), Struct_1(vec3<u32>(29613u, 1750u, 42629u)), Struct_1(vec3<u32>(27856u, 56701u, 0u)), Struct_1(vec3<u32>(12879u, 48939u, 33091u)), Struct_1(vec3<u32>(4294967295u, 32776u, 0u)), Struct_1(vec3<u32>(1u, 74805u, 100299u)), Struct_1(vec3<u32>(1u, 56431u, 4294967295u)), Struct_1(vec3<u32>(1u, 4294967295u, 23307u)), Struct_1(vec3<u32>(1u, 1u, 43814u)), Struct_1(vec3<u32>(45018u, 20585u, 16870u)), Struct_1(vec3<u32>(96632u, 0u, 14441u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(0u, 25756u, 4294967295u)), Struct_1(vec3<u32>(0u, 4441u, 31031u)));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = !all(vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)), u_input.d > -20408i, _wgslsmith_f_op_f32(-315f * 678f) > _wgslsmith_f_op_f32(ceil(1526f))));
    global2 = array<Struct_1, 20>();
    global2 = array<Struct_1, 20>();
    global1 = var_0;
    global1 = var_0;
    return ~select(~(~(~u_input.c.wzy)), min(global0.a << (vec3<u32>(global0.a.x, 19438u, 44903u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 53813u), vec3<u32>(global0.a.x, 1u, u_input.c.x))) & global0.a, var_0);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, true)));
    global1 = true;
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.e, u_input.e), vec3<i32>(-arg_2, reverseBits(32365i), ~arg_2) << (func_3() % vec3<u32>(32u))) <= u_input.e.x;
    var var_2 = Struct_1(abs(~select(vec3<u32>(4294967295u, 4294967295u, global0.a.x), u_input.c.wwz, true)) ^ select(vec3<u32>(abs(12000u), ~38149u, ~global0.a.x), vec3<u32>(~1u, firstTrailingBit(arg_3), firstLeadingBit(64827u)), vec3<bool>(true, true, true)));
    var var_3 = _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1093f))));
    return Struct_1(global0.a);
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<u32> {
    let var_0 = reverseBits(abs(firstLeadingBit(81193i)));
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(429f * -692f) + _wgslsmith_f_op_f32(-1346f + -738f)))), u_input.c.wx, -1i, ~1u);
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 20u)];
    let var_2 = _wgslsmith_f_op_f32(454f * 1004f);
    var var_3 = Struct_2(Struct_1(vec3<u32>(select(4294967295u, 4294967295u ^ global0.a.x, true), _wgslsmith_add_u32(select(global0.a.x, 0u, true), arg_1), 1u)), any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true))) && any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 430f) + vec2<f32>(var_2, var_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2, var_2, var_2, 802f), vec4<f32>(-853f, -981f, 1802f, 1000f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2402f, var_2, 604f, 440f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(174f, var_2, 355f, var_2) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1308f, var_2, -182f, var_2)))))), -(firstLeadingBit(var_0) >> (~6448u % 32u)) | _wgslsmith_sub_i32((49413i >> (var_1.a.x % 32u)) ^ 2147483647i, 1i));
    return _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(select(var_1.a.x, 0u, true), ~40641u, 1u), ~global0.a), vec3<u32>(43561u, _wgslsmith_dot_vec3_u32(~u_input.c.zxw, _wgslsmith_clamp_vec3_u32(~global0.a, _wgslsmith_div_vec3_u32(vec3<u32>(3900u, 0u, 1u), u_input.c.xzw), firstLeadingBit(var_1.a))), func_3().x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(vec2<i32>(_wgslsmith_clamp_i32(-37989i, 0i, 39987i) << (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, u_input.e.x), _wgslsmith_clamp_i32(0i, 0i, 57671i))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, -38436i), u_input.e.xx) ^ max(u_input.e.zy >> (global0.a.yy % vec2<u32>(32u)), vec2<i32>(u_input.e.x, u_input.e.x)), vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_f32(min(538f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f + 1930f) - _wgslsmith_f_op_f32(-648f - 1000f)))))));
    global2 = array<Struct_1, 20>();
    let var_2 = var_0.x;
    let var_3 = Struct_1(func_1(countOneBits(var_0.x), ~1u));
    let var_4 = abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_0.x) << ((global0.a.zz | abs(vec2<u32>(808u, 27975u))) % vec2<u32>(32u)), ~_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e.zy, vec2<i32>(var_0.x, u_input.b)), _wgslsmith_sub_vec2_i32(u_input.e.yx, vec2<i32>(2147483647i, var_0.x)), _wgslsmith_div_vec2_i32(u_input.e.yy, vec2<i32>(u_input.d, -21093i)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(u_input.c)) ^ ~vec4<u32>(func_1(-14853i, u_input.c.x).x, ~var_3.a.x, _wgslsmith_clamp_u32(global0.a.x, global0.a.x, 4294967295u), ~u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -5179i, firstTrailingBit(_wgslsmith_div_i32(18605i, var_0.x)), var_0.x), vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, -44957i), u_input.e) | var_4.x, max(var_0.x, ~(-2147483647i)))), u_input.e.x ^ max(_wgslsmith_dot_vec3_i32(u_input.e >> (vec3<u32>(global0.a.x, global0.a.x, 0u) % vec3<u32>(32u)), vec3<i32>(-1i, var_4.x, 2147483647i)), -1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-760f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1)), -1538f))) - -811f), 0i);
}

