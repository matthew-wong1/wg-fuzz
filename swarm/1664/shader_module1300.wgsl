struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(31381u, 71832u), vec2<u32>(0u, 0u), vec2<u32>(4579u, 61252u), vec2<u32>(55008u, 60823u), vec2<u32>(3592u, 20658u), vec2<u32>(47885u, 2596u), vec2<u32>(8267u, 39669u), vec2<u32>(78019u, 0u));

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1224f) + _wgslsmith_f_op_f32(trunc(-500f)));
    global0 = array<vec2<u32>, 8>();
    let var_1 = vec3<bool>(arg_2.a.x, all(arg_2.a.xw), false);
    var var_2 = Struct_1(arg_2.a);
    global1 = array<Struct_1, 8>();
    return all(!vec4<bool>(true, var_1.x && arg_2.a.x, arg_1 > u_input.d, true)) || select(!(!all(vec3<bool>(false, false, var_2.a.x))), true, arg_0.x & any(vec4<bool>(false, var_2.a.x, arg_2.a.x, arg_0.x)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> bool {
    let var_0 = reverseBits(abs(_wgslsmith_add_vec3_i32(-vec3<i32>(2147483647i, arg_1, 39516i) | vec3<i32>(579i, 0i, -2147483647i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, 60004i, -4532i), vec3<i32>(arg_1, 0i, -25393i))))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(484f)) * 956f))))));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(26402u, ~_wgslsmith_mult_u32(23296u, u_input.c), u_input.d, (u_input.d << (0u % 32u)) >> (u_input.c % 32u)) | ~(~(~vec4<u32>(4294967295u, 0u, 0u, 4294967295u))), ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 39532u, u_input.c, u_input.d), vec4<u32>(u_input.b, 50903u, u_input.b, u_input.b)))));
    var var_1 = ~firstLeadingBit(_wgslsmith_add_vec2_u32(firstTrailingBit(abs(var_0.zy)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, u_input.b, u_input.d), vec4<u32>(6828u, 18423u, 8711u, 4294967295u)), _wgslsmith_div_u32(0u, var_0.x))));
    global1 = array<Struct_1, 8>();
    var var_2 = Struct_1(select(vec4<bool>(true, !(53355u == var_1.x), func_2(vec2<bool>(true, false), u_input.c, global1[_wgslsmith_index_u32(0u, 8u)], vec3<i32>(-1i, -36818i, 0i)), any(vec3<bool>(true, false, true))), vec4<bool>(func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), ~4294967295u, Struct_1(vec4<bool>(false, false, false, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(-17697i, 0i, u_input.a), vec3<i32>(u_input.a, -1i, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -353f) < _wgslsmith_f_op_f32(floor(1294f)), true, all(vec3<bool>(true, true, true))), vec4<bool>(true | func_3(var_0.wyx, 0i, vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(41842u, 8u)]), select(true, any(vec3<bool>(false, false, true)), true), all(vec2<bool>(true, true)), true)));
    var_0 = ~(~select(vec4<u32>(var_0.x, 1u, 4294967295u, 38219u) & vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x), ~vec4<u32>(u_input.b, 33762u, var_1.x, var_1.x), vec4<bool>(false, true, var_2.a.x, true))) << (~vec4<u32>(var_0.x, 1u, u_input.d, ~min(56692u, var_0.x)) % vec4<u32>(32u));
    return Struct_1(!select(var_2.a, vec4<bool>(var_2.a.x, var_2.a.x, any(vec3<bool>(true, var_2.a.x, true)), true), var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.a.x;
    var var_2 = func_1();
    var_1 = false && var_2.a.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1254f, _wgslsmith_f_op_f32(f32(-1f) * -323f), -525f, _wgslsmith_f_op_f32(f32(-1f) * -765f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(202f, -356f)), _wgslsmith_f_op_f32(floor(660f)), -1000f, _wgslsmith_f_op_f32(ceil(-1026f))))), vec4<bool>(true, !(!(var_2.a.x & var_2.a.x)), all(var_2.a.zz), any(vec3<bool>(var_0.a.x, var_2.a.x, false)) | var_0.a.x)));
    let var_4 = !select(func_1().a.wz, select(vec2<bool>(false, true), vec2<bool>(false, !var_0.a.x), false), vec2<bool>(var_2.a.x, false));
    let var_5 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -(~u_input.a), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(firstLeadingBit(u_input.a), select(37276i, u_input.a, var_2.a.x), min(u_input.a, -1i)), u_input.a)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, u_input.a, 16223i)), _wgslsmith_div_vec3_i32(vec3<i32>(53165i, u_input.a, -23082i), vec3<i32>(-1i, 0i, -1i))), vec3<i32>(2147483647i, _wgslsmith_add_i32(-1i, u_input.a), 0i << (u_input.b % 32u))));
    let var_6 = u_input.e | ~(~u_input.b);
    global1 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), _wgslsmith_div_u32(var_6, _wgslsmith_mod_u32(82992u, u_input.d)) & ~66816u, ~u_input.c, var_6);
}

