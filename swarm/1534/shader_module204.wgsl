struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, -1i, 17036i), 77673u, 93520i, vec3<u32>(4294967295u, 1u, 10486u), 16350u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1999f, 429f, -1596f, 2084f) + vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_sub_u32(countOneBits(u_input.a.x), _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(4294967295u, 85942u)), 34285u));
    var_1 = 6034u;
    var var_2 = ~vec2<u32>(select(firstTrailingBit(145821u), ~0u, true) << (global1.b % 32u), u_input.a.x);
    return vec3<i32>(34670i, _wgslsmith_dot_vec4_i32(firstLeadingBit(select(~vec4<i32>(global1.a.x, -2147483647i, -1i, 1i), vec4<i32>(-50968i, arg_1, arg_1, arg_1) ^ vec4<i32>(global1.c, 39393i, 1i, arg_1), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false))), ~(~select(vec4<i32>(-1157i, -16121i, 1i, 3323i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, global1.a.x), true))), -2147483647i);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(func_3(global1.a, 29815i) ^ global1.a, min(~(~_wgslsmith_clamp_u32(0u, 0u, 0u)), ~0u), _wgslsmith_div_i32(1i, -23912i), min(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(1u, global1.e), 20370u, ~global1.d.x), abs(_wgslsmith_clamp_vec3_u32(global1.d, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(1u, 1u, 0u)))), ~max(vec3<u32>(global1.d.x, u_input.a.x, global1.d.x), global1.d ^ global1.d)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global1.d.xx, vec2<u32>(u_input.a.x, global1.e) >> (global1.d.yx % vec2<u32>(32u))), 25985u, global1.d.x), 4294967295u));
    global0 = 1141f;
    let var_1 = vec2<f32>(-549f, _wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-126f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f * -112f))))));
    var var_2 = ~_wgslsmith_sub_vec3_u32(var_0.d, vec3<u32>(var_0.e, 4294967295u, 39968u) ^ select(~vec3<u32>(var_0.d.x, var_0.e, global1.d.x), vec3<u32>(4294967295u, 66764u, 4051u), true));
    let var_3 = var_1.x;
    return global1.a.x;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> f32 {
    global1 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(-24121i, global1.a.x), ~49743i ^ reverseBits(global1.a.x), max(global1.a.x, func_2())) | global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, ~global1.b | 25582u), global1.d.xx), ~firstLeadingBit(arg_2.a), (~vec3<u32>(global1.b, global1.b, 4294967295u) | ~global1.d) | (global1.d >> ((global1.d | reverseBits(global1.d)) % vec3<u32>(32u))), firstTrailingBit(abs(global1.e)) | 4294967295u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1))))));
    global1 = Struct_1(_wgslsmith_sub_vec3_i32(global1.a, _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(global1.a, global1.a), ~global1.a ^ vec3<i32>(arg_2.a, global1.a.x, 2147483647i))), global1.b, i32(-1i) * -2147483647i, vec3<u32>(~u_input.a.x, global1.b, ~(~u_input.a.x)), ~firstTrailingBit(1u));
    let var_0 = Struct_2(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(arg_2.a, -61390i), vec2<i32>(-4236i, arg_2.a)), -global1.a.xx) >> (47254u % 32u)));
    global0 = arg_1;
    return _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -1092f));
}

fn func_4(arg_0: f32) -> Struct_2 {
    global0 = 1463f;
    var var_0 = ~(~14165u);
    var var_1 = !select(!vec2<bool>(1i <= global1.c, select(false, true, false)), !vec2<bool>(true, any(vec3<bool>(true, false, false))), vec2<bool>(u_input.a.x <= _wgslsmith_mod_u32(1u, u_input.a.x), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var var_2 = Struct_2(max(global1.a.x, _wgslsmith_mult_i32(firstTrailingBit(global1.a.x | -17288i), abs(global1.c))));
    var var_3 = u_input.a;
    return Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-20454i, -func_2()), global1.c));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))) + 755f);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1533f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(732f + 738f) * 596f)), _wgslsmith_f_op_f32(f32(-1f) * -346f))) + 293f);
    let var_1 = vec2<f32>(-780f, _wgslsmith_f_op_f32(-590f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(532f, _wgslsmith_f_op_f32(f32(-1f) * -350f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = Struct_1(global1.a, u_input.a.x, -select(9540i, 12597i, 3582u == global1.b), ~global1.d ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.x, 66698u, u_input.a.x), global1.d), abs(~4294967295u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(345f, var_1.x, 2596f))), vec3<f32>(713f, var_1.x, -171f), true)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 723f, var_1.x) * vec3<f32>(136f, var_1.x, var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1639f), vec3<f32>(-524f, var_1.x, var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, 1062f, var_1.x) + vec3<f32>(618f, 988f, var_1.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(507f, 836f, -303f))))));
    return !(!(true | all(vec2<bool>(true, false))));
}

fn func_6(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global1 = Struct_1(global1.a, ~(u_input.a.x | (~global1.d.x & firstLeadingBit(u_input.a.x))), -2147483647i, vec3<u32>(1u, global1.d.x, min(abs(22337u), u_input.a.x)) << (global1.d % vec3<u32>(32u)), global1.e);
    var var_0 = 1f;
    let var_1 = _wgslsmith_f_op_f32(abs(-1174f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, var_1, Struct_2(76497i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) + var_1))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(arg_0, _wgslsmith_f_op_f32(round(-1000f)), func_4(var_1))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + 333f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -717f)) * var_1)));
    return Struct_1(global1.a, 4294967295u, -26994i, global1.d, select(1u, min(max(18875u, 64714u), _wgslsmith_mult_u32(global1.d.x, global1.e)), !arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, u_input.a.x, ~global1.a.x, vec3<u32>(3908u, ~(~u_input.a.x), 1u), ~(reverseBits(u_input.a.x) << (50946u % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global1.d.x, global1.e)), firstTrailingBit(vec2<u32>(0u, u_input.a.x))), 48103u) % 32u));
    var var_0 = func_6(func_5(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(true, 775f, Struct_2(-45330i)))))), 74161i, reverseBits(vec2<u32>(~0u, 0u))), 0i, func_4(-1536f));
    var var_1 = false;
    let var_2 = -vec2<i32>(~(global1.c << ((var_0.b << (var_0.e % 32u)) % 32u)), -(~_wgslsmith_add_i32(var_0.c, global1.c)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, -172f, func_4(1698f)))))));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-1396i, -39664i, u_input.a.x);
}

