struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(1u, 4294967295u, 1u), 95u, vec3<bool>(false, true, true), i32(-2147483648));

var<private> global1: f32 = -1000f;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_3, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = Struct_1(!all(global2.xx), u_input.c.x, any(vec2<bool>(true, global0.c.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(746f));
    return Struct_4(~global0.a, ~(~min(global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, u_input.e, 67558u), vec3<u32>(4294967295u, 0u, 12612u)))), !select(select(vec3<bool>(false, arg_1.x, false), arg_1.zyw, global0.c), global0.c, any(vec2<bool>(arg_1.x, true))), 25123i);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    var var_0 = arg_0.zx;
    var var_1 = Struct_2(true, abs(~select(_wgslsmith_dot_vec3_i32(u_input.c.xxz, vec3<i32>(-44299i, arg_2.d, 39900i)), firstLeadingBit(33633i), false)), vec4<u32>(var_0.x, _wgslsmith_add_u32(select(0u, 1u, false), 0u), 49406u, ~(~44141u)) << (select(max(~vec4<u32>(u_input.e, u_input.b, 43337u, 4294967295u), ~vec4<u32>(arg_3.a.x, 0u, arg_0.x, global0.a.x)), ~reverseBits(vec4<u32>(8837u, 4294967295u, 4294967295u, 13091u)), global2.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_1)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -311f, 292f) + arg_1), _wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(1000f, 710f, 421f, 533f)), vec4<bool>(true, true, true, true))), arg_1, true))));
    let var_2 = Struct_2(!(!all(vec2<bool>(true, true))), abs(arg_2.d), firstLeadingBit(_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(57389u, 25128u, global0.b, 1u)), var_1.c)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-322f * var_1.d.x), _wgslsmith_div_f32(-197f, 222f), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -492f))))));
    let var_3 = vec2<bool>(true, global2.x);
    let var_4 = vec2<u32>(0u, var_0.x);
    return -41743i;
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = -arg_0.x;
    let var_1 = _wgslsmith_clamp_vec4_i32(u_input.c >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 0u, 0u, u_input.b)), ~(~vec4<u32>(0u, u_input.b, 1u, 0u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(abs(vec4<i32>(arg_0.x, global0.d, 2147483647i, 2147483647i))), -u_input.c), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 0i, u_input.d, 1i), u_input.c, _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-52102i, arg_0.x, arg_0.x, 0i))), u_input.c, u_input.c)));
    var var_2 = Struct_2(false, -1102i, vec4<u32>(1u, global0.a.x, ~global0.a.x, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1686f, 1000f, 1932f, 959f), vec4<f32>(-482f, -548f, -556f, -722f), select(vec4<bool>(false, false, true, global0.c.x), vec4<bool>(true, true, arg_2, arg_1), vec4<bool>(true, false, arg_1, global2.x))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x + -1056f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1652f))), _wgslsmith_f_op_f32(-860f + var_2.d.x), select(!arg_2, true, func_2(var_2.d.x, vec4<bool>(false, global2.x, true, false), vec2<bool>(global2.x, false)).c.x))), _wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f + var_2.d.x) + _wgslsmith_f_op_f32(var_2.d.x * -1298f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.d.x - 745f))))));
    let var_4 = reverseBits(-(~(-23503i)));
    return Struct_1(all(!(!vec3<bool>(global0.c.x, var_2.a, true))), func_2(268f, select(!(!vec4<bool>(true, true, arg_1, true)), vec4<bool>(any(global0.c), global0.b >= 4294967295u, all(vec4<bool>(arg_1, false, false, false)), global0.c.x), !select(vec4<bool>(global0.c.x, true, true, global2.x), vec4<bool>(var_2.a, false, true, arg_1), global0.c.x)), func_2(-994f, select(vec4<bool>(global0.c.x, true, true, arg_1), !vec4<bool>(false, false, arg_2, true), vec4<bool>(var_2.a, global0.c.x, true, arg_1)), !(!global0.c.zx)).c.xx).d, false);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = arg_0.x;
    var var_2 = select(vec2<i32>(1i, 44932i), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, -1i), u_input.c.zw), arg_3.yw, arg_3.xx), -vec2<i32>(-global0.d, 25914i)), vec2<bool>(any(select(vec3<bool>(false, global0.c.x, false), vec3<bool>(global0.c.x, true, global0.c.x), false)) | false, global0.c.x));
    var var_3 = func_4(min(vec2<i32>(func_3(~arg_0, vec4<f32>(616f, arg_1.x, arg_1.x, arg_1.x), func_2(-433f, vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec2<bool>(true, true)), Struct_3(arg_0.yx)), select(global0.d, ~var_2.x, arg_2.x)), ~arg_3.zy), !(!any(vec2<bool>(true, true)) || !any(arg_2)), true);
    global2 = vec3<bool>(!global0.c.x, !all(func_2(-289f, select(arg_2, arg_2, arg_2), global2.yx).c.yz), abs(min(0u, min(arg_0.x, u_input.a))) > u_input.b);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_sub_i32(-u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, global0.d)), true);
    var var_1 = select(_wgslsmith_div_vec4_i32(vec4<i32>(select(u_input.c.x, u_input.c.x, false) >> (_wgslsmith_add_u32(global0.b, 0u) % 32u), -(var_0.b ^ 1i), -2147483647i, func_1(vec3<u32>(0u, 31221u, global0.b), vec3<f32>(-692f, 833f, -115f), !vec4<bool>(true, var_0.a, global2.x, global0.c.x), ~vec4<i32>(var_0.b, u_input.c.x, global0.d, var_0.b))), vec4<i32>(var_0.b & 71470i, _wgslsmith_dot_vec3_i32(-vec3<i32>(global0.d, u_input.c.x, 1i), min(vec3<i32>(u_input.d, 101608i, global0.d), vec3<i32>(-53555i, -72868i, global0.d))), -7787i, ~(-u_input.d))), abs(vec4<i32>(-2147483647i, ~27652i, ~firstTrailingBit(2147483647i), func_4(u_input.c.zx ^ u_input.c.xx, var_0.b != -1i, global2.x).b)), false | all(select(vec2<bool>(true, true), func_2(-1321f, vec4<bool>(true, true, var_0.c, false), vec2<bool>(var_0.c, global0.c.x)).c.yz, global2.x)));
    let var_2 = ~(~func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1233f)), -1408f), vec4<bool>(true, -2147483647i != var_1.x, true, false | global0.c.x), !(!vec2<bool>(global2.x, true))).b);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1830f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f - -1102f) - _wgslsmith_f_op_f32(min(-824f, -1698f)))), 324f)), _wgslsmith_f_op_f32(1013f + -568f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(486f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1288f * 775f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(663f - -501f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1059f, -935f)) * 665f), !global0.c.x))));
    let var_4 = ~global0.d;
    global3 = array<Struct_3, 30>();
    var var_5 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(-var_3.x), global0.c.x & global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-380f))))), _wgslsmith_f_op_f32(103f - _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(995f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(var_2) & global0.b), ~u_input.c, min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(global0.b, 88877u), _wgslsmith_mod_u32(60660u, u_input.a), var_2), vec4<u32>(~var_2, ~20191u, countOneBits(1u), u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, var_2, global0.a.x), vec4<u32>(27280u, 0u, 0u, var_2)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_2, 1u, u_input.a), vec4<u32>(4294967295u, 1u, 14679u, var_2))))), vec3<f32>(-226f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_5.x)), _wgslsmith_div_f32(var_5.x, var_5.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f - var_3.x)))), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -757f)))));
}

