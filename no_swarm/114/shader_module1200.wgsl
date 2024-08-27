struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> vec4<i32> {
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_0 = Struct_1(!vec2<bool>(arg_1.x, u_input.a.x > 7217i), 181f, _wgslsmith_div_i32(~(-14362i & u_input.a.x) >> (_wgslsmith_add_u32(arg_2.x & 4294967295u, arg_2.x << (54456u % 32u)) % 32u), _wgslsmith_add_i32(~(-27953i), firstLeadingBit(-arg_0.c))), arg_0.b, vec3<bool>(true, !all(select(vec3<bool>(arg_1.x, arg_0.a.x, arg_0.a.x), arg_1.zwy, vec3<bool>(true, arg_1.x, true))), false));
    var var_1 = arg_0.e.x;
    global0 = array<Struct_1, 13>();
    return max(max(-(~firstTrailingBit(vec4<i32>(-37658i, var_0.c, -30285i, arg_0.c))), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-22404i, 22246i, -16655i, -2147483647i), ~vec4<i32>(-2147483647i, arg_0.c, -2147483647i, var_0.c)))), vec4<i32>(6776i, _wgslsmith_add_i32(var_0.c, abs(arg_0.c)), -2147483647i, abs(u_input.b)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(vec4<i32>(-12485i, select(-18438i, 1i, arg_0.e.x) << (min(0u, u_input.c) % 32u), 1i, 1i & arg_0.c) | (func_3(global0[_wgslsmith_index_u32(~0u, 13u)], select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.a.x, true, arg_0.a.x, true), arg_0.a.x), ~vec4<u32>(66442u, u_input.c, 70139u, u_input.c)) >> (~(~vec4<u32>(2721u, 1u, 78351u, u_input.c)) % vec4<u32>(32u))), u_input.c, Struct_1(select(select(select(arg_0.a, arg_0.a, arg_0.a), select(vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.e.x, true), arg_0.e.x), select(vec2<bool>(arg_0.a.x, true), arg_0.a, true)), vec2<bool>(arg_0.a.x, any(vec4<bool>(false, arg_0.a.x, arg_0.e.x, false))), select(vec2<bool>(false, false), !arg_0.a, !arg_0.e.xx)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_mod_i32(u_input.a.x, u_input.b), _wgslsmith_f_op_f32(-arg_0.d), !select(!arg_0.e, !vec3<bool>(false, arg_0.e.x, false), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0.b) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1245f, arg_0.d), vec2<f32>(-661f, 1000f))))))), select(vec2<bool>(arg_0.a.x, false), !(!select(arg_0.a, arg_0.a, arg_0.e.zy)), false));
    let var_1 = -258f;
    var var_2 = Struct_3(var_0.a.ww, Struct_2(func_3(global0[_wgslsmith_index_u32(u_input.c, 13u)], vec4<bool>(false, !var_0.c.e.x, !var_0.c.e.x, var_0.c.e.x), ~abs(vec4<u32>(1u, u_input.c, 37223u, var_0.b))), var_0.b, Struct_1(!(!vec2<bool>(arg_0.e.x, var_0.c.e.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.d.x)))), u_input.a.x, _wgslsmith_f_op_f32(step(634f, -821f)), arg_0.e), _wgslsmith_f_op_vec2_f32(-var_0.d), var_0.e), arg_0, abs(~(vec3<u32>(0u, u_input.c, u_input.c) & vec3<u32>(14451u, 0u, 1u))) & max(~(~vec3<u32>(var_0.b, var_0.b, var_0.b)), reverseBits(vec3<u32>(var_0.b, var_0.b, 50620u) >> (vec3<u32>(0u, 1u, 12847u) % vec3<u32>(32u)))), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(99207u, u_input.c, 49434u), vec3<u32>(var_0.b, var_0.b, u_input.c) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))), ~(1601u | u_input.c), _wgslsmith_mult_u32(~14492u, ~var_0.b)));
    var var_3 = 1u;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.d)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_1, arg_0.d)), _wgslsmith_f_op_f32(-var_0.c.d))))));
    return countOneBits(reverseBits(var_2.b.b));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_2(select(vec4<i32>(arg_0, ~(-2147483647i), 0i, 0i), max(min(vec4<i32>(u_input.a.x, arg_0, u_input.a.x, 14653i) | vec4<i32>(u_input.b, u_input.b, 0i, 3760i), ~vec4<i32>(0i, arg_0, u_input.a.x, arg_0)), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(27135i, 2147483647i, -4602i, -1i), vec4<i32>(1i, -1i, u_input.a.x, u_input.b), vec4<i32>(2147483647i, u_input.a.x, arg_0, -1i)))), !vec4<bool>(any(vec2<bool>(false, false)), true, false, true)), u_input.c, global0[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(u_input.c, 13u)]), 13u)], _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-279f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1080f)) + _wgslsmith_f_op_f32(abs(-1209f)))))), vec2<bool>(true, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    var var_1 = var_0.d.x;
    var var_2 = var_0.c;
    return true || !var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(func_1(u_input.a.x), true, true, true), vec4<bool>(true, u_input.c <= u_input.c, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false))), any(vec4<bool>(all(vec2<bool>(true, false)), true, true, true))), select(vec4<bool>(true, true, (u_input.c <= u_input.c) && true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), any(vec3<bool>(false, true, false))), vec4<bool>(false, true, false, all(vec4<bool>(false, true, true, false)))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, u_input.b < u_input.a.x), !any(vec3<bool>(true, false, true)))), true);
    let var_1 = -539f;
    var_0 = select(select(!select(!vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, true, var_0.x, true)), vec4<bool>(var_0.x, var_0.x, true, all(!vec3<bool>(false, var_0.x, false))), !(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), !(!(!(!vec4<bool>(var_0.x, true, var_0.x, false)))), any(select(vec3<bool>(var_0.x, var_0.x, true), !select(vec3<bool>(true, false, true), var_0.zww, vec3<bool>(true, var_0.x, var_0.x)), !vec3<bool>(true, var_0.x, false))));
    let var_2 = Struct_1(vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(round(-479f))) + _wgslsmith_f_op_f32(ceil(var_1))), var_1), -u_input.b | abs(-(~(-40090i))), 1000f, vec3<bool>(var_0.x && true, u_input.b != _wgslsmith_mult_i32(u_input.b, -2147483647i), abs(max(u_input.c, 1u)) > u_input.c));
    var var_3 = _wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_2.d + -1154f))));
    var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)));
    let var_4 = Struct_2(min(~(-vec4<i32>(u_input.a.x, -19164i, 0i, var_2.c)) & (~vec4<i32>(-2147483647i, u_input.b, 0i, u_input.a.x) ^ vec4<i32>(u_input.b, -2147483647i, -2147483647i, 18785i)), ~vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.a.x, 3093i), firstTrailingBit(var_2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -37680i, 0i, -2662i), vec4<i32>(-21414i, var_2.c, 1i, 0i)))), 4294967295u, global0[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1698f, var_2.b))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, var_1) - vec2<f32>(var_2.b, var_1)), _wgslsmith_div_vec2_f32(vec2<f32>(491f, -523f), vec2<f32>(var_2.d, var_2.d)))))), select(vec2<bool>(true, var_0.x), vec2<bool>(false, true), var_0.xx));
    global0 = array<Struct_1, 13>();
    let var_5 = vec2<i32>(32277i, ~(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_4.a.wyx, vec3<i32>(-19924i, 76349i, 0i)), firstTrailingBit(u_input.b)) | (var_4.c.c >> (~0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_1(vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(var_0.x, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_4.c.b, var_1), _wgslsmith_f_op_f32(812f + -1257f)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(2147483647i, u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(778f, 634f)))), var_0.wwz), vec4<bool>(true, any(vec2<bool>(var_0.x, var_4.e.x)) & true, all(vec2<bool>(false, true)), any(var_0.xyz)), (_wgslsmith_clamp_vec4_u32(vec4<u32>(8902u, 0u, u_input.c, var_4.b), vec4<u32>(22362u, u_input.c, 38281u, var_4.b), vec4<u32>(31566u, 13705u, var_4.b, u_input.c)) | vec4<u32>(var_4.b, var_4.b, var_4.b, var_4.b)) >> (select(vec4<u32>(u_input.c, 0u, 53859u, 78703u) ^ vec4<u32>(u_input.c, var_4.b, var_4.b, 0u), vec4<u32>(4294967295u, var_4.b, 1u, var_4.b), vec4<bool>(var_4.e.x, true, false, var_2.a.x)) % vec4<u32>(32u))).x, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(ceil(var_4.c.b))), 600f))), ~var_4.a, var_2.c);
}

