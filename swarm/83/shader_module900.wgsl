struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(18664u, 15878u, 1u, 4294967295u, 4294967295u, 1u, 1766u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    let var_0 = -(~u_input.b.x);
    return ~(~vec4<i32>(_wgslsmith_div_i32(-13596i, var_0), 1i, abs(u_input.b.x), var_0) << (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], _wgslsmith_mult_u32(1u, 7927u), reverseBits(u_input.a.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)]), _wgslsmith_add_u32(4294967295u, ~u_input.a.x)) % vec4<u32>(32u)));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    global0 = array<u32, 7>();
    let var_0 = false;
    let var_1 = Struct_1(abs(u_input.b) >> (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yzz, ~u_input.a.xyy), ~u_input.a.zxz) % vec3<u32>(32u)), u_input.b.x, ~func_3() >> (~u_input.a % vec4<u32>(32u)));
    global0 = array<u32, 7>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1417f, 1748f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1789f))))), -1478f);
    return false;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>) -> i32 {
    let var_0 = select(select(vec4<bool>(arg_0.x, func_2(vec4<bool>(arg_0.x, false, false, arg_0.x)), arg_0.x, !(true & arg_0.x)), vec4<bool>(arg_0.x, true && arg_0.x, true, !func_2(vec4<bool>(arg_0.x, arg_0.x, true, false))), !arg_0.x), !select(!select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(true, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), all(!vec2<bool>(arg_0.x, false))), arg_0.x);
    var var_1 = Struct_2(Struct_1(-vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b.x), i32(-1i) * -2147483647i, -1i), -37008i, vec4<i32>(countOneBits(0i), _wgslsmith_mult_i32(1050i, 1i), 54913i, _wgslsmith_mod_i32(abs(-4632i), _wgslsmith_add_i32(-9577i, 6922i)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(559f, 1092f, -1000f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2154f, -305f, 1357f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(873f, -1126f, -589f), vec3<f32>(-122f, 744f, 1814f))))));
    var_1 = Struct_2(var_1.a);
    let var_3 = Struct_1(abs(~max(_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(-1i, u_input.b.x, 80756i)), vec3<i32>(u_input.b.x, 48576i, 2147483647i))), abs(~(~(var_1.a.b | var_1.a.a.x))), -((min(var_1.a.c, var_1.a.c) | (vec4<i32>(1i, u_input.b.x, 25553i, 2147483647i) | vec4<i32>(-2147483647i, u_input.b.x, var_1.a.c.x, u_input.b.x))) | _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.b.x, u_input.b.x, var_1.a.b), vec4<i32>(-2147483647i, u_input.b.x, -1i, u_input.b.x))));
    return _wgslsmith_mod_i32(1i, -36324i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> f32 {
    var var_0 = !any(arg_2.zwx);
    var var_1 = arg_1;
    let var_2 = global0[_wgslsmith_index_u32(0u, 7u)];
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1120f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    var var_0 = _wgslsmith_f_op_f32(func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -7046i), _wgslsmith_sub_vec2_i32(u_input.b.xx, u_input.b.xx)), min(_wgslsmith_mod_i32(u_input.b.x, -31219i), func_1(vec3<bool>(true, false, false), vec4<u32>(30247u, 4294967295u, 68259u, 0u))), -u_input.b.x, max(-26357i, 30167i)) | _wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.b.x, -2147483647i, -22944i, u_input.b.x) << (u_input.a % vec4<u32>(32u)), -vec4<i32>(u_input.b.x, -8877i, 1i, 1i)), -vec4<i32>(26190i, 0i, 1i, -1i)), Struct_2(Struct_1(firstLeadingBit(u_input.b) >> (u_input.a.zxz % vec3<u32>(32u)), u_input.b.x, max(vec4<i32>(-49746i, 2147483647i, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, u_input.b.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(17247i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 21014i)))), vec4<bool>(true, true, false, select(func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)), true, false))));
    let var_1 = Struct_1(u_input.b, -1i, _wgslsmith_sub_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-1i, 8224i, u_input.b.x))), -u_input.b.x, 1i, ~(~u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-51658i, firstLeadingBit(-1i), func_3().x, ~u_input.b.x), abs(~vec4<i32>(2147483647i, 37474i, -71125i, u_input.b.x)))));
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-481f, _wgslsmith_f_op_f32(-827f - 1f)))));
    let var_2 = Struct_2(var_1);
    var var_3 = select(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), !all(vec4<bool>(true, true, false, false))), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), func_2(vec4<bool>(false, select(all(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, false, true, true)), true), all(vec2<bool>(true, true)), true)));
    var_0 = _wgslsmith_f_op_f32(trunc(202f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1117f))), 863f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1781f))), _wgslsmith_clamp_vec3_i32(var_1.c.xwx, var_1.a, -vec3<i32>(var_1.b, var_1.c.x, -u_input.b.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-169f, -1324f)) - _wgslsmith_f_op_f32(round(-699f))), 328f, -706f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1153f)) + _wgslsmith_f_op_f32(228f * -587f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-365f, -1804f, 366f, -1564f), vec4<f32>(-351f, 1320f, 186f, 391f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1735f, -821f, 188f, 541f))))), any(!vec2<bool>(var_3.x, true)))));
}

