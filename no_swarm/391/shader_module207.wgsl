struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-1i, 4302i, i32(-2147483648));

var<private> global1: u32 = 77096u;

var<private> global2: array<bool, 21> = array<bool, 21>(true, true, true, false, false, true, true, true, false, false, true, false, true, false, false, false, true, true, true, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec3<i32> {
    global1 = ~u_input.a.x;
    let var_0 = Struct_2(select(vec2<bool>(!arg_1 & true, !all(vec2<bool>(arg_1, true))), vec2<bool>(true, arg_1), true), max(_wgslsmith_div_i32(global0.x, arg_0), 6020i) >> (u_input.d % 32u));
    var var_1 = Struct_2(var_0.a, countOneBits(max(_wgslsmith_dot_vec2_i32(global0.xz, global0.zz), ~1i)));
    global1 = firstLeadingBit(~(u_input.d << (0u % 32u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-703f, -1588f, 531f, -103f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(127f, 100f, -612f, 658f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 288f, -1802f, -1000f) + vec4<f32>(692f, -425f, -412f, 786f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, 706f, 1198f, 333f))), vec4<f32>(-103f, 1607f, -1271f, -509f))), any(vec3<bool>(true, !var_1.a.x, select(false, global2[_wgslsmith_index_u32(5703u, 21u)], global2[_wgslsmith_index_u32(102420u, 21u)]))) || true));
    return _wgslsmith_div_vec3_i32(vec3<i32>(~(-72679i), (var_1.b & (u_input.b | 2147483647i)) | (~arg_0 | 43799i), global0.x), reverseBits(vec3<i32>(~arg_0, ~_wgslsmith_clamp_i32(-1i, u_input.c, 23314i), _wgslsmith_add_i32(u_input.b, 8453i))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = Struct_3(!vec2<bool>((arg_0.a.x && global2[_wgslsmith_index_u32(u_input.a.x, 21u)]) || false, ~29757u > _wgslsmith_add_u32(1u, u_input.d)), abs(func_3(arg_0.b, all(vec4<bool>(global2[_wgslsmith_index_u32(41743u, 21u)], arg_1.a.x, false, true))) ^ ~(vec3<i32>(arg_1.b, arg_1.b, arg_1.b) >> (u_input.a.wwy % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(floor(2230f)), _wgslsmith_f_op_f32(-1704f * -380f), _wgslsmith_f_op_f32(-799f - 503f))))), 1u, -(~global0.x) & _wgslsmith_mod_i32(arg_1.b, 0i));
    let var_1 = -2147483647i;
    global2 = array<bool, 21>();
    global1 = var_0.d;
    global0 = vec3<i32>(_wgslsmith_mod_i32(var_0.b.x, -u_input.b), _wgslsmith_dot_vec4_i32(max(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_0.b, -1i, var_1), vec4<i32>(arg_1.b, 0i, var_0.b.x, 1i))), -vec4<i32>(global0.x, -1i, var_0.e, -20774i)), vec4<i32>(abs(global0.x ^ 0i), u_input.c, 1i, -56103i)), arg_1.b);
    return i32(-1i) * -25569i;
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec3<f32> {
    let var_0 = global0.x;
    global2 = array<bool, 21>();
    let var_1 = ~(min(-33745i, global0.x) ^ -81665i);
    global2 = array<bool, 21>();
    global0 = vec3<i32>(global0.x, arg_1.x, ~(-(abs(-1i) | func_2(Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(31524u, 21u)]), u_input.c), Struct_2(vec2<bool>(true, global2[_wgslsmith_index_u32(arg_0, 21u)]), 0i), global2[_wgslsmith_index_u32(1u, 21u)]))));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 672f, -382f) * vec3<f32>(arg_2, -1612f, 1000f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2989f, -886f, -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 680f, 842f) - vec3<f32>(-623f, 971f, -552f)), true))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(247f, 135f, 426f), vec3<f32>(842f, 127f, 295f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(func_1(reverseBits(24067u), vec4<i32>(2147483647i, u_input.b, u_input.b, -1i) << (vec4<u32>(u_input.d, 13731u, u_input.d, u_input.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1993f)))))), !(!vec4<bool>(false, all(vec2<bool>(global2[_wgslsmith_index_u32(70536u, 21u)], false)), !global2[_wgslsmith_index_u32(32140u, 21u)], global0.x >= u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-491f - 152f), _wgslsmith_f_op_f32(min(-598f, -841f)))), 1f, -716f), vec3<u32>(61559u, _wgslsmith_dot_vec3_u32(abs(~u_input.a.zyz), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 19051u, 38230u), u_input.a.xxx) & ~u_input.a.zxy), 37979u), true);
    global0 = vec3<i32>(global0.x, u_input.b, -u_input.c) ^ _wgslsmith_sub_vec3_i32(firstTrailingBit(abs(-vec3<i32>(-13359i, u_input.c, 11240i))), -(vec3<i32>(global0.x, u_input.b, 1035i) >> (var_0.d % vec3<u32>(32u))));
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(var_0.c.x)), var_0.a.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + var_0.a.x)), _wgslsmith_f_op_f32(-var_0.c.x), var_0.a.x, var_0.a.x) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c.x, var_0.a.x, -183f, var_0.a.x), vec4<f32>(var_0.c.x, 1569f, var_0.a.x, -106f)))))));
    let var_3 = vec4<u32>(~0u, u_input.a.x | firstTrailingBit(4294967295u), u_input.d, 0u);
    var var_4 = Struct_3(vec2<bool>(min(i32(-1i) * -44243i, var_1) == (-85705i | (var_1 & -2147483647i)), !(-117f > _wgslsmith_f_op_f32(var_2.x * var_0.c.x))), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -1i, -16189i), -select(vec3<i32>(-1i, u_input.b, var_1), vec3<i32>(var_1, var_1, -2147483647i), var_0.e)) & _wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-3343i, global0.x, 1i)), -(~vec3<i32>(-2160i, -1i, global0.x))), vec3<f32>(var_0.a.x, -129f, _wgslsmith_f_op_vec3_f32(func_1(12865u, max(vec4<i32>(2147483647i, u_input.b, var_1, global0.x), vec4<i32>(32273i, -4624i, var_1, var_1)) ^ min(vec4<i32>(21169i, global0.x, 12877i, global0.x), vec4<i32>(u_input.c, 1i, var_1, var_1)), var_2.x)).x), var_3.x, -(_wgslsmith_mod_i32(~u_input.b, var_1) << (var_3.x % 32u)));
    let var_5 = Struct_3(select(select(vec2<bool>(any(var_0.b.xzz), all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_4.d, 21u)], var_0.b.x))), var_0.b.yw, var_4.a.x), !select(vec2<bool>(false, var_0.e), var_4.a, vec2<bool>(global2[_wgslsmith_index_u32(var_0.d.x, 21u)], true)), !var_0.b.wy), var_4.b, _wgslsmith_div_vec3_f32(var_4.c, _wgslsmith_f_op_vec3_f32(-var_2.zzz)), firstTrailingBit(var_4.d), 2147483647i);
    let var_6 = var_5.c.x;
    let var_7 = Struct_2(select(vec2<bool>(!var_5.a.x, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, var_4.a.x), vec2<bool>(var_0.e, var_5.a.x))), var_0.b.x), var_5.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, -u_input.c);
}

