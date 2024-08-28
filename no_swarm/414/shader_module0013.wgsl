struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec3<i32> = vec3<i32>(-41387i, 33279i, -43792i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<f32>) -> vec3<bool> {
    let var_0 = vec2<u32>(arg_0.x, ~(~0u));
    let var_1 = vec3<u32>(4294967295u >> (u_input.a.x % 32u), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(var_0.x), u_input.a.x << (1u % 32u), arg_0.x << (var_0.x % 32u)), var_0.x), _wgslsmith_clamp_u32(62296u, countOneBits(4294967295u), ~21125u << (~arg_0.x % 32u)) | (~firstTrailingBit(7759u) | 1u));
    global0 = array<i32, 6>();
    var var_2 = Struct_2(~(-3746i >> (firstTrailingBit(min(146380u, arg_0.x)) % 32u)), !vec3<bool>((23395i | global1.x) <= ~u_input.d.x, any(!arg_1), all(vec3<bool>(false, arg_1.x, arg_1.x))));
    let var_3 = _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-432f + arg_2)));
    return vec3<bool>(arg_1.x, var_2.b.x, !(!(arg_1.x | false)) && any(select(select(vec4<bool>(true, true, arg_1.x, true), vec4<bool>(true, arg_1.x, false, var_2.b.x), vec4<bool>(arg_1.x, false, var_2.b.x, true)), select(vec4<bool>(false, arg_1.x, false, true), vec4<bool>(false, true, arg_1.x, true), true), select(vec4<bool>(true, true, var_2.b.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, var_2.b.x), false))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = ~min(35716u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(max(u_input.b, 24618u), 9218u), _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.wx, vec2<u32>(u_input.c, 0u))), (1u ^ u_input.b) >> (u_input.c % 32u)));
    global0 = array<i32, 6>();
    global1 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1753f, -282f, false)), _wgslsmith_div_f32(677f, arg_1), true)))))));
    let var_2 = !(!select(!func_3(u_input.a.yx, vec2<bool>(false, true), 451f, vec3<f32>(arg_2, arg_2, arg_2)), vec3<bool>(true, 1000f >= arg_2, true), true));
    return ~vec3<i32>(1i, global0[_wgslsmith_index_u32(countOneBits(~firstTrailingBit(var_0)), 6u)], -31750i);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> vec3<i32> {
    global1 = ~_wgslsmith_mult_vec3_i32(-(~vec3<i32>(global1.x, u_input.d.x, 42034i)) ^ -vec3<i32>(24509i, 13253i, global1.x), vec3<i32>(-56464i, abs(global1.x), global0[_wgslsmith_index_u32(1u, 6u)] ^ 0i) << (vec3<u32>(15521u, 1u, u_input.b) % vec3<u32>(32u)));
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    global1 = abs(vec3<i32>(-18407i, global1.x, i32(-1i) * -(i32(-1i) * -16158i)));
    global1 = max(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, 0i, 1i), min(abs(vec3<i32>(global1.x, 15524i, global1.x)), vec3<i32>(0i, u_input.d.x, 1753i))) | ~(-func_2(-15337i, -601f, -1000f, vec3<i32>(global1.x, global1.x, 1i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-48567i, _wgslsmith_clamp_i32(-17903i, global1.x, global1.x), global1.x), _wgslsmith_mod_vec3_i32(func_2(39611i, 123f, 1804f, vec3<i32>(global1.x, -53025i, 23951i)), func_2(2147483647i, -1213f, -1417f, vec3<i32>(-1i, global0[_wgslsmith_index_u32(arg_1.x, 6u)], global0[_wgslsmith_index_u32(arg_0, 6u)])))));
    return countOneBits(abs(vec3<i32>(-global0[_wgslsmith_index_u32(u_input.b, 6u)], reverseBits(global1.x), -9413i))) >> (_wgslsmith_div_vec3_u32(arg_1, arg_1) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(286f, _wgslsmith_f_op_f32(281f * 235f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-899f)), -352f)), _wgslsmith_f_op_f32(-1000f - 628f)));
    var var_1 = Struct_2(_wgslsmith_dot_vec3_i32(func_1(u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.zzz & vec3<u32>(5353u, 5433u, 10667u))), vec3<i32>(global1.x, -global1.x, 1i) << (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(65942u, 0u, u_input.b)), vec3<u32>(9318u, 1u, u_input.b)) % vec3<u32>(32u))), vec3<bool>(true, (i32(-1i) * -global0[_wgslsmith_index_u32(1u, 6u)]) < _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)]), u_input.d), _wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), true));
    var var_2 = false;
    let var_3 = Struct_2(abs(-2147483647i), !select(select(vec3<bool>(var_1.b.x, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, var_1.b.x, var_1.b.x), var_1.b), vec3<bool>(var_1.b.x, false, true)), func_3(~u_input.a.zw, select(var_1.b.xy, var_1.b.xx, var_1.b.x), _wgslsmith_div_f32(-472f, -494f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-862f, -1000f, -361f), vec3<f32>(2226f, -2201f, -646f)))), var_1.b));
    var var_4 = var_3;
    let var_5 = Struct_1(var_4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(808f, -1589f))), vec2<f32>(-238f, -1614f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(967f, 1535f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(609f - var_5.b.x));
}

