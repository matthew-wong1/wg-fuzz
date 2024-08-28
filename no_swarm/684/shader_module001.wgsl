struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<i32> {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(14390u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], arg_0, Struct_1(_wgslsmith_f_op_f32(round(1f)), -1i, arg_1));
    global0 = array<Struct_1, 22>();
    let var_1 = !(!select(vec3<bool>(u_input.d >= 0u, false, true), select(select(vec3<bool>(var_0.b.c.x, var_0.d.c.x, false), vec3<bool>(arg_1.x, true, false), vec3<bool>(true, arg_1.x, true)), !vec3<bool>(true, true, arg_1.x), !vec3<bool>(false, true, var_0.b.c.x)), true));
    var var_2 = arg_1;
    let var_3 = countOneBits(var_0.b.b);
    return _wgslsmith_mod_vec3_i32(select(_wgslsmith_mult_vec3_i32(vec3<i32>(16462i, var_0.d.b, 0i) | u_input.c, -u_input.c), select(-vec3<i32>(-1i, 8349i, -79488i), u_input.c, !var_2.x), !vec3<bool>(var_0.d.c.x, arg_1.x, false)), select(firstTrailingBit(vec3<i32>(-1i, var_3, 0i)), abs(_wgslsmith_div_vec3_i32(u_input.c, u_input.c)), !var_1)) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, ~0u, 1u), vec3<u32>(1u, u_input.d, ~u_input.d)) % vec3<u32>(32u));
}

fn func_2() -> f32 {
    global1 = func_3(_wgslsmith_f_op_f32(abs(1f)), vec2<bool>(true, true));
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 22u)];
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~abs(1u), ~_wgslsmith_clamp_u32(25255u, u_input.d, 4294967295u)), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 24972u, 11724u), vec3<u32>(u_input.d, 1u, u_input.d)) | ~1u)), 22u)], Struct_1(1000f, global1.x, var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))) - var_0.a) + -2009f), Struct_1(var_0.a, 0i, var_0.c));
    global0 = array<Struct_1, 22>();
    global1 = u_input.c;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a - -716f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(max(844f, -463f))), true));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(283f, -1627f, 1025f, 179f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-425f, 272f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f), 185f), _wgslsmith_f_op_f32(f32(-1f) * -1530f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(832f + 1349f), 1f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1387f), _wgslsmith_f_op_f32(830f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(round(-1627f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1348f, -2014f, 1272f, -1687f) - vec4<f32>(1048f, -995f, -1076f, 468f)), _wgslsmith_div_vec4_f32(vec4<f32>(381f, -2359f, -823f, -349f), vec4<f32>(1886f, 564f, 1788f, 2273f)))) - vec4<f32>(755f, _wgslsmith_f_op_f32(f32(-1f) * -444f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2439f * 256f)), _wgslsmith_f_op_f32(func_2()))));
    let var_1 = _wgslsmith_mult_i32(-_wgslsmith_div_i32(1i, ~_wgslsmith_mod_i32(1i, 27728i)), _wgslsmith_sub_i32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 995f) * var_0.x), vec2<bool>(any(vec2<bool>(true, false)), true)).x, 0i));
    var var_2 = global0[_wgslsmith_index_u32((u_input.d & ~47600u) ^ ~firstTrailingBit(66834u << (arg_0 % 32u)), 22u)];
    global1 = _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(var_1, var_1) << (~arg_0 % 32u)), _wgslsmith_div_i32(var_2.b, 2147483647i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_2.b ^ 9147i, -u_input.c.x, var_2.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, 16824i), u_input.c), -firstLeadingBit(~vec3<i32>(1i, var_1, 2147483647i))));
    let var_3 = 0u;
    return vec3<bool>(any(vec3<bool>(true, true, true)), u_input.d != (reverseBits(~0u) << (~_wgslsmith_sub_u32(u_input.d, u_input.d) % 32u)), all(select(!vec4<bool>(false, var_2.c.x, true, true), !(!vec4<bool>(true, true, var_2.c.x, false)), vec4<bool>(var_2.c.x | var_2.c.x, !var_2.c.x, true && var_2.c.x, true))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(-175f, -996f);
    let var_1 = 17207u;
    var var_2 = ~(~u_input.d >> (var_1 % 32u));
    global0 = array<Struct_1, 22>();
    global1 = (-u_input.c | vec3<i32>(arg_0, u_input.a, i32(-1i) * -22350i)) & ~vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, -37085i), vec4<i32>(arg_0, u_input.a, arg_0, global1.x)), _wgslsmith_mod_i32(u_input.e, arg_0), -_wgslsmith_add_i32(-2147483647i, global1.x));
    return StorageBuffer(vec4<u32>(reverseBits(27062u), var_1 | min(4294967295u, ~1u), reverseBits(1u), u_input.d), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(-26237i | u_input.e, u_input.e, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(global1.yy, u_input.c.yy), ~_wgslsmith_div_vec2_i32(countOneBits(u_input.c.yx), vec2<i32>(global1.x, 1i))));
    var var_0 = _wgslsmith_add_i32(~(countOneBits(-u_input.e) & global1.x), global1.x);
    var_0 = _wgslsmith_dot_vec2_i32(u_input.c.zy, -global1.zx);
    let var_1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-38382i, -1i, 4677i, global1.x), vec4<i32>(global1.x, u_input.a, u_input.e, 1i)) >> (~vec4<u32>(u_input.d, u_input.d, 45915u, u_input.d) % vec4<u32>(32u)), countOneBits(vec4<i32>(u_input.a, u_input.a, 13206i, -69151i))) ^ (_wgslsmith_add_vec4_i32(~vec4<i32>(74267i, u_input.b, u_input.e, global1.x), vec4<i32>(-21346i, u_input.b, -2147483647i, 0i)) ^ vec4<i32>(-13173i, global1.x, u_input.c.x, countOneBits(-31175i))));
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = func_4(-8847i, select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !vec3<bool>(all(vec2<bool>(true, true)), true, true), 1u < u_input.d), any(func_1(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), 1u))));
}

