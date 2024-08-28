struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(937f, -1194f, 1000f), vec3<f32>(631f, -1524f, 807f), vec3<f32>(363f, -2776f, 104f), vec3<f32>(-754f, -1126f, 821f), vec3<f32>(1187f, -411f, 177f), vec3<f32>(-1743f, 1276f, -258f), vec3<f32>(1809f, -308f, 1000f), vec3<f32>(270f, -1388f, 2598f), vec3<f32>(-533f, 1789f, 932f), vec3<f32>(-1293f, 740f, 278f), vec3<f32>(-179f, 1030f, -914f), vec3<f32>(-1000f, -392f, 1000f), vec3<f32>(1216f, -198f, 390f), vec3<f32>(416f, 1017f, 1146f), vec3<f32>(709f, 1000f, 1604f), vec3<f32>(-1190f, 284f, -1864f), vec3<f32>(145f, -1000f, -1321f), vec3<f32>(-1837f, -813f, -1000f), vec3<f32>(1000f, 206f, -1000f), vec3<f32>(528f, -1316f, 777f), vec3<f32>(-144f, -919f, -714f), vec3<f32>(-177f, 170f, -103f), vec3<f32>(245f, 546f, -1385f), vec3<f32>(594f, 760f, -765f), vec3<f32>(1138f, 2325f, 336f), vec3<f32>(1440f, -1442f, 1261f));

var<private> global1: Struct_1 = Struct_1(-1000f, vec2<f32>(-524f, 672f), vec2<bool>(false, false));

var<private> global2: array<bool, 17> = array<bool, 17>(false, false, true, false, false, true, true, true, false, false, true, true, false, true, true, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    var var_0 = arg_1;
    let var_1 = Struct_2(var_0.a, arg_0.a, 55348u, reverseBits(firstTrailingBit(u_input.d)), var_0.a);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f))))), 1244f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1177f))), arg_2.e.b.x, arg_2.a.c.x));
    let var_1 = 404f;
    global2 = array<bool, 17>();
    global2 = array<bool, 17>();
    var var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(firstLeadingBit(0u), _wgslsmith_clamp_u32(0u, u_input.d, u_input.d), arg_1.d), ~(~vec3<u32>(arg_2.d, 29540u, 77627u))), vec3<u32>(~42151u, 51702u, _wgslsmith_div_u32(u_input.d, countOneBits(arg_1.d)))), 26u)];
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0) - _wgslsmith_f_op_vec2_f32(-arg_1.a.b)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0, vec2<f32>(472f, -920f), global1.c)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(971f, 1496f) + vec2<f32>(257f, global1.b.x)))))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-526f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b))), global1.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1625f, global1.a)))))), firstTrailingBit(countOneBits(arg_2)), arg_2, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1846f, global1.a)) + global1.a), _wgslsmith_f_op_f32(global1.b.x + global1.a)), !global1.c));
    let var_1 = _wgslsmith_mod_i32(-7878i, ~_wgslsmith_dot_vec3_i32(~(u_input.c.wzy << (vec3<u32>(1u, u_input.d, 39957u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(u_input.c.xzw, u_input.c.ywz) >> ((vec3<u32>(var_0.d, 1u, arg_2) ^ vec3<u32>(66062u, arg_2, var_0.d)) % vec3<u32>(32u))));
    let var_2 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))), -992f) + _wgslsmith_f_op_vec2_f32(func_4(vec2<f32>(_wgslsmith_div_f32(-1000f, global1.b.x), _wgslsmith_f_op_f32(max(var_0.a.a, -1342f))), Struct_2(var_0.a, -364f, _wgslsmith_add_u32(7106u, var_0.d), ~82430u, Struct_1(global1.a, global1.b, vec2<bool>(false, false))), Struct_2(Struct_1(765f, vec2<f32>(var_0.e.a, global1.a), var_0.a.c), _wgslsmith_f_op_f32(func_3(var_0.a, Struct_2(Struct_1(var_0.a.b.x, global1.b, var_0.a.c), 596f, var_0.d, arg_2, Struct_1(-1482f, vec2<f32>(var_0.a.a, var_0.a.b.x), var_0.a.c)), true, false)), _wgslsmith_mult_u32(4294967295u, arg_2), 4294967295u, var_0.e), !select(vec2<bool>(false, arg_0), vec2<bool>(false, false), global1.c.x)))), !var_0.a.c);
    var var_3 = abs(u_input.c.ww);
    var_3 = -vec2<i32>(49069i, -2147483647i);
    return var_0.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(func_2(!(!arg_2.e.c.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(12146u, 0u, u_input.d, 1u), ~vec4<u32>(arg_2.c, 6034u, 1u, 0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, 4294967295u, 4799u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 1u, arg_2.d, 0u), vec4<u32>(arg_2.d, 59893u, arg_2.d, u_input.d)) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_2.d, arg_2.d, 25632u) >> (~vec4<u32>(27397u, 12747u, 45960u, 40630u) % vec4<u32>(32u)))), arg_0.b.x, reverseBits(u_input.d), u_input.d, Struct_1(arg_1.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f) - arg_2.e.b.x), -2908f), global1.c));
    var var_1 = arg_0;
    global0 = array<vec3<f32>, 26>();
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1.zxy)))));
    return !(_wgslsmith_div_u32(0u | ~u_input.d, 0u) <= 103783u);
}

fn func_6(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    global0 = array<vec3<f32>, 26>();
    var var_0 = func_2(false, 65122u, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(select(0u, u_input.d, false)), u_input.d & 4294967295u, ~u_input.d), ~reverseBits(vec3<u32>(1u, u_input.d, 7885u)) | vec3<u32>(u_input.d, ~u_input.d, 38349u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.d, 26u)]);
    var var_2 = Struct_2(func_2(all(!select(vec4<bool>(true, global1.c.x, false, true), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(true, global2[_wgslsmith_index_u32(2396u, 17u)], var_0.c.x, var_0.c.x))), ~u_input.d, u_input.d), _wgslsmith_f_op_f32(164f + var_1.x), 4294967295u | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.d), vec4<u32>(u_input.d, 2446u, u_input.d, 0u) & (vec4<u32>(4825u, u_input.d, 1u, u_input.d) << (vec4<u32>(u_input.d, 1u, 24530u, u_input.d) % vec4<u32>(32u)))), u_input.d, func_2(arg_0.x, _wgslsmith_mod_u32(reverseBits(1u), ~(4294967295u << (u_input.d % 32u))), 0u));
    let var_3 = 21937i;
    return func_2(true, var_2.d, 59676u);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec2<i32>(u_input.c.x, reverseBits(arg_0.x));
    let var_1 = Struct_2(func_6(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 17u)], func_5(Struct_1(1000f, vec2<f32>(760f, -684f), global1.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 476f, global1.a, 209f)), Struct_2(Struct_1(global1.b.x, global1.b, global1.c), 735f, 49319u, 56788u, Struct_1(global1.a, vec2<f32>(-375f, -1723f), vec2<bool>(false, global1.c.x))), func_2(global2[_wgslsmith_index_u32(u_input.d, 17u)], 16417u, 1u)), !global2[_wgslsmith_index_u32(u_input.d, 17u)]), global1.a), 1794f, ((u_input.d << (abs(u_input.d) % 32u)) & u_input.d) ^ abs(u_input.d), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 11512u, u_input.d)) ^ ~vec3<u32>(u_input.d, u_input.d, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 1u, 3914u), vec3<u32>(u_input.d, u_input.d, 1u)) ^ ~vec3<u32>(u_input.d, 0u, 0u)) >> (u_input.d % 32u), func_6(select(vec3<bool>(global1.c.x, global2[_wgslsmith_index_u32(1u, 17u)], true), !select(vec3<bool>(true, false, global1.c.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 17u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 17u)], true, global1.c.x)), global2[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_f32(-355f * _wgslsmith_f_op_f32(step(global1.b.x, -715f)))));
    var var_2 = _wgslsmith_f_op_f32(select(479f, _wgslsmith_f_op_f32(f32(-1f) * -864f), global1.c.x));
    global0 = array<vec3<f32>, 26>();
    let var_3 = Struct_2(var_1.a, -1158f, var_1.d, abs(var_1.c), var_1.a);
    return 28734u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2059f - 765f)) + global1.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global1.b.x, _wgslsmith_f_op_f32(443f * -1000f))), _wgslsmith_f_op_f32(global1.a * _wgslsmith_div_f32(2296f, 802f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-488f, global1.b.x))), -617f)), global1.c);
    global0 = array<vec3<f32>, 26>();
    global2 = array<bool, 17>();
    var var_0 = vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 17u)], all(!(!vec2<bool>(global1.c.x, global1.c.x))), true, global2[_wgslsmith_index_u32(func_1(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(i32(-1i) * -5985i, 24581i, u_input.c.x, -u_input.c.x), u_input.c)), 17u)]);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x * global1.a), _wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_f32(select(1000f, 409f, !global2[_wgslsmith_index_u32(u_input.d, 17u)]))), _wgslsmith_f_op_vec2_f32(-global1.b), global1.c), global1.a, u_input.d, reverseBits(_wgslsmith_clamp_u32(u_input.d, 21920u >> (~u_input.d % 32u), 0u)), func_6(vec3<bool>(!all(vec4<bool>(var_0.x, true, false, var_0.x)), all(var_0.zxx), var_0.x), 1035f));
    global0 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.b)))), max(vec2<i32>(_wgslsmith_sub_i32(2253i >> (var_1.d % 32u), ~u_input.a), -22129i), ~_wgslsmith_mult_vec2_i32(u_input.e, u_input.e) & (_wgslsmith_sub_vec2_i32(u_input.c.xz, vec2<i32>(u_input.e.x, u_input.e.x)) ^ reverseBits(u_input.e))), vec3<i32>(i32(-1i) * -7238i, u_input.a, -1i) >> (countOneBits(~(vec3<u32>(49637u, u_input.d, u_input.d) ^ vec3<u32>(0u, 1u, var_1.c))) % vec3<u32>(32u)));
}

