struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 58506u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>) -> u32 {
    let var_0 = any(select(vec2<bool>(arg_1.x, true), arg_1, !(!(!arg_1))));
    let var_1 = Struct_1(select(_wgslsmith_sub_u32(~1u, u_input.b.x >> (global0.a % 32u)) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.e.x, 1u), u_input.b.zwx), firstTrailingBit(1u), true), vec3<f32>(-478f, _wgslsmith_f_op_f32(max(-1352f, -134f)), arg_2.x), _wgslsmith_div_vec3_i32(u_input.c, global0.c), 1u, global0.e);
    global0 = Struct_1(_wgslsmith_add_u32(countOneBits(1u), (_wgslsmith_mult_u32(var_1.d, global0.d) ^ ~1u) & ~firstTrailingBit(global0.a)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * -1065f) + _wgslsmith_f_op_f32(-1f)), -576f, 1599f), -min(u_input.c & ~u_input.c, u_input.c), firstTrailingBit(4294967295u), global0.e);
    let var_2 = vec3<bool>(all(select(!select(vec4<bool>(true, arg_1.x, arg_1.x, var_0), vec4<bool>(arg_1.x, true, arg_1.x, var_0), vec4<bool>(var_0, true, true, var_0)), vec4<bool>(true, any(vec4<bool>(arg_0, arg_1.x, false, true)), false, true), (u_input.c.x ^ -18844i) < 30928i)), any(vec3<bool>(true, false, (i32(-1i) * -2147483647i) >= u_input.c.x)), select(select(false && (arg_0 | false), true, arg_1.x), true, true));
    global0 = var_1;
    return max(var_1.d, var_1.d);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(~_wgslsmith_sub_u32(~5843u, ~arg_0) << (global0.e.x % 32u), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.b))), min(~(~vec3<i32>(global0.c.x, u_input.c.x, -2147483647i)), -vec3<i32>(global0.c.x & -1i, _wgslsmith_sub_i32(global0.c.x, 0i), abs(global0.c.x))), func_3(false, vec2<bool>(true, _wgslsmith_f_op_f32(-global0.b.x) != _wgslsmith_f_op_f32(global0.b.x - -1342f)), _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-global0.b))), vec2<u32>(~u_input.b.x, ~global0.e.x));
    var var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !any(vec3<bool>(true, true, true)));
    var var_2 = ~u_input.c.x;
    var_1 = vec4<bool>(all(vec4<bool>((var_0.b.x < 222f) || true, !var_1.x, min(arg_0, var_0.d) > ~4294967295u, u_input.e > 1u)), !any(select(vec4<bool>(false, var_1.x, false, false), !vec4<bool>(var_1.x, false, var_1.x, false), select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_1.x, var_1.x, true, var_1.x), false))), all(vec4<bool>(any(select(var_1.ywy, var_1.www, vec3<bool>(true, false, var_1.x))), var_1.x, false, true)), select(true, all(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, true), var_1.x)), false));
    var_2 = u_input.c.x;
    return 14971u;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    global1 = func_2(select(arg_0.a.x, 36238u, true));
    var var_0 = arg_0.a.x;
    var var_1 = -533f;
    global0 = Struct_1(61141u, arg_2.b, global0.c, ~1u, vec2<u32>(u_input.d, _wgslsmith_clamp_u32(~arg_2.e.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, arg_1, 0u, arg_2.a), vec4<u32>(49782u, 47103u, global0.a, arg_0.a.x)))));
    var var_2 = all(!vec4<bool>(any(vec3<bool>(true, true, true)), true, true, any(vec2<bool>(true, false))));
    return global0.c.yy;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    global1 = func_2(_wgslsmith_div_u32(arg_0.a.x, 0u));
    var var_0 = Struct_1(1538u, global0.b, global0.c, ~arg_0.a.x, abs(arg_0.a.zx));
    var_0 = Struct_1(u_input.d << (~abs(~0u) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + vec3<f32>(var_0.b.x, global0.b.x, 1226f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(global0.b + global0.b), _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-global0.b))))), u_input.c, ~_wgslsmith_mod_u32(12348u, reverseBits(~1u)), ~abs(arg_3.a.xz & ~vec2<u32>(4294967295u, 36638u)));
    var var_1 = -8065i;
    let var_2 = ~(~(~(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u, 8537u, 43843u, global0.a)) & 6859u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1311f * 900f), var_0.b.x))), -567f, _wgslsmith_f_op_f32(abs(-748f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.b.wyx);
    let var_1 = u_input.c.xy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.b)));
    let var_3 = Struct_1(~(~1u), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(abs(vec3<u32>(0u, u_input.e, 4294967295u))), ~(_wgslsmith_mod_vec2_i32(u_input.c.xy, vec2<i32>(0i, -1i)) | func_1(Struct_2(vec3<u32>(4294967295u, 67285u, 0u)), 1u, Struct_1(44273u, global0.b, vec3<i32>(3420i, 14965i, -41844i), var_0.x, global0.e))), 1u, Struct_2(min(max(vec3<u32>(50873u, var_0.x, 0u), vec3<u32>(global0.a, 47552u, 0u)), abs(vec3<u32>(u_input.e, var_0.x, global0.d)))))), ~(-_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.c), u_input.c)), 4294967295u, ~min(max(~u_input.b.yy, global0.e), select(reverseBits(vec2<u32>(171007u, global0.d)), u_input.b.xy, true)));
    let var_4 = _wgslsmith_f_op_f32(max(1343f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + _wgslsmith_div_f32(1666f, -1125f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1379f * var_3.b.x)))), true | any(vec2<bool>(false, false))))));
    var var_5 = var_3.e;
    var_5 = reverseBits(abs(vec2<u32>(~u_input.b.x, var_0.x)) | ~select(vec2<u32>(global0.a, 15097u), vec2<u32>(var_3.d, var_5.x) ^ u_input.b.xw, select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer((~_wgslsmith_div_vec3_u32(var_0, vec3<u32>(var_0.x, 72210u, var_5.x)) ^ firstLeadingBit(min(vec3<u32>(u_input.a, 4294967295u, var_5.x), u_input.b.wxy))) & var_0, -2282f);
}

