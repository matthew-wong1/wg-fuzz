struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(1f)), 1000f, -414f, -843f), select(~(~global0.b | vec2<u32>(global0.b.x, 4294967295u)), vec2<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 23766u, 100879u, u_input.c.x), vec4<u32>(global0.b.x, 0u, 69300u, 44076u))), select(vec2<bool>(any(vec3<bool>(true, false, false)), select(arg_0.x, false, arg_0.x)), !select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), arg_0.x), true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.x, global0.a.x))))))), global1.d);
    global1 = Struct_1(vec4<f32>(_wgslsmith_div_f32(1140f, _wgslsmith_f_op_f32(global0.c.x * global1.a.x)), -1000f, _wgslsmith_f_op_f32(sign(global1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.a.x)) + _wgslsmith_f_op_f32(sign(-798f)))))), ~u_input.c.xx, vec2<f32>(global1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.a.x)))), global0.c.x)), reverseBits(max(u_input.d, _wgslsmith_add_vec2_i32(vec2<i32>(global1.d.x, 2147483647i), select(global1.d, global1.d, true)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)), ~(~countOneBits(vec2<u32>(71640u, 4294967295u))) | _wgslsmith_mod_vec2_u32(global0.b << (vec2<u32>(4294967295u, 60649u) % vec2<u32>(32u)), vec2<u32>(~global1.b.x, _wgslsmith_sub_u32(global0.b.x, global1.b.x))), global1.c, u_input.a.zy);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), vec2<u32>(abs(~u_input.c.x), 0u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(207f, global1.a.x))))), select(countOneBits(_wgslsmith_add_vec2_i32(u_input.d, global1.d)), ~(-reverseBits(global1.d)), false));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)))), min(_wgslsmith_sub_vec2_u32(firstLeadingBit(max(u_input.c.xz, var_0.b)), global0.b), global1.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(global1.c - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(958f, 135f), vec2<f32>(global1.c.x, global1.a.x))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(478f, var_0.a.x))))), var_0.c)), select(-firstTrailingBit(vec2<i32>(28164i, global1.d.x)), global0.d, ~20045u <= max(min(1u, u_input.c.x), 1u)));
    return ~(~0u);
}

fn func_2() -> f32 {
    var var_0 = !(~func_3(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))) != ~(~72811u));
    return -699f;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = global0.b.x;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), global0.a.x) - vec4<f32>(_wgslsmith_f_op_f32(964f * -1130f), -776f, _wgslsmith_f_op_f32(sign(-659f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.c.x)))))), u_input.c.zx, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(828f)) - _wgslsmith_f_op_f32(arg_2.c.x - 1571f)), false)), arg_2.c.x), _wgslsmith_mod_vec2_i32(abs(select(~vec2<i32>(-1i, 2147483647i), vec2<i32>(arg_2.d.x, 70954i), arg_0.yx)), vec2<i32>(_wgslsmith_div_i32(u_input.d.x, -16387i), global1.d.x) & ~_wgslsmith_sub_vec2_i32(global0.d, global1.d)));
    var var_1 = arg_2;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.a.x, -763f, arg_0.x)), -271f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(474f, global1.a.x, true)) * _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f * -403f)))), _wgslsmith_mod_vec2_u32(select(arg_2.b, global1.b, vec2<bool>(false, arg_0.x)), vec2<u32>(u_input.c.x, 78827u)), global1.c, arg_2.d);
    var var_2 = 849f;
    return 1u;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: u32) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(global0.d.x, _wgslsmith_mod_i32(max(-1i, -2147483647i), -30604i), max(abs(arg_0), select(-4340i, -2147483647i, arg_1)) & ~(~14321i)), vec3<i32>(countOneBits(arg_0), _wgslsmith_clamp_i32(countOneBits(select(global0.d.x, 1i, true)), _wgslsmith_mod_i32(global1.d.x, _wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(u_input.a.x, 0i, global0.d.x))), ~(-1i)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, -1i), vec3<i32>(u_input.b.x, global0.d.x, arg_0)) >> (~u_input.c.x % 32u), 13375i, !any(vec3<bool>(arg_1, true, true)))));
    let var_1 = var_0;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1556f, 1189f, global0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), _wgslsmith_mult_vec2_u32(global1.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(func_1(vec4<bool>(arg_1, arg_1, arg_1, true), -45265i, Struct_1(global1.a, vec2<u32>(u_input.c.x, arg_3), vec2<f32>(1294f, -393f), var_1.zz)), 11506u), max(vec2<u32>(82329u, 82218u), u_input.c.yx << (vec2<u32>(4294967295u, 43998u) % vec2<u32>(32u))), abs(_wgslsmith_mod_vec2_u32(u_input.c.zz, vec2<u32>(1u, global1.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2), 1348f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, 1303f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -1271f)))), vec2<i32>(-(~(-38555i)), 1i));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(240f, arg_2, arg_1)), _wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_div_f32(global0.c.x, global0.c.x), global0.c.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global1.a.x, global0.c.x, 511f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c.x, 237f, global0.c.x)))), _wgslsmith_mult_vec2_u32(u_input.c.yy, global1.b), global0.c, u_input.b.yz);
    global1 = Struct_1(global0.a, u_input.c.yx, global1.c, firstTrailingBit(~_wgslsmith_mod_vec2_i32(u_input.a.yy, firstLeadingBit(vec2<i32>(var_1.x, -20797i)))));
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.yx;
    var var_1 = global0.d.x == ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.d.x, -1i), global1.d.x);
    global1 = Struct_1(global0.a, abs(vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, countOneBits(17094u)), ~global0.b.x)), vec2<f32>(690f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.x)), -1274f))), ~vec2<i32>(func_4(countOneBits(0i), all(vec2<bool>(false, false)), var_0.x, func_1(vec4<bool>(true, false, true, true), -40417i, Struct_1(global0.a, vec2<u32>(22773u, 34071u), vec2<f32>(global1.a.x, 278f), vec2<i32>(global0.d.x, u_input.a.x)))), -1i));
    var var_2 = ~0u;
    var_2 = ~49623u;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, 952f, ~(~select(vec4<u32>(53557u, global0.b.x, 1u, 2187u), select(vec4<u32>(0u, global0.b.x, 45282u, global1.b.x), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 1u), vec4<bool>(true, true, true, false)), true)));
}

