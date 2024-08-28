struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_2, 28>;

var<private> global2: array<vec2<i32>, 8>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<i32>(countOneBits(1i), _wgslsmith_dot_vec3_i32(min(arg_0.b, ~select(arg_0.b, vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 3u)], -1i), arg_1.a)), select(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 23744u, 91803u, arg_1.c.x), vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x)), 3u)], global0[_wgslsmith_index_u32(0u, 3u)] & 42602i), select(u_input.a.wyw, vec3<i32>(81602i, 2147483647i, -1i), true) << (~arg_1.c.yxw % vec3<u32>(32u)), all(!arg_0.a.xwz))), 1i);
    let var_1 = Struct_1(vec3<bool>(!any(vec3<bool>(false, arg_1.a.x, arg_0.a.x)), all(select(arg_1.a.xx, vec2<bool>(true, arg_0.a.x), true)) | (_wgslsmith_f_op_f32(round(-1189f)) >= _wgslsmith_f_op_f32(f32(-1f) * -258f)), arg_0.a.x), ~u_input.a.x, vec4<u32>(abs(arg_1.c.x), arg_1.c.x, ~35805u, firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_1.c.zxx, arg_1.c.xxy))));
    var_0 = u_input.d;
    var var_2 = Struct_1(!vec3<bool>(select(select(true, false, arg_0.a.x), false, arg_0.a.x || false), !any(var_1.a.yx), true), abs(countOneBits(2147483647i)), arg_1.c);
    global1 = array<Struct_2, 28>();
    return 0u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(max(vec2<u32>(func_3(Struct_2(vec4<bool>(false, true, false, true), vec3<i32>(2147483647i, -21959i, 0i), vec3<i32>(u_input.d.x, 2147483647i, -20237i)), Struct_1(vec3<bool>(true, true, false), 18595i, vec4<u32>(22613u, 0u, 29567u, 33049u))), 81915u >> (abs(0u) % 32u)), ~(~vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 38492u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(15327u, 1u, 75038u), vec3<u32>(64416u, 0u, 1u))) << (1u % 32u), select(~8732u, ~1u, false) & (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 24843u, 13618u), vec4<u32>(0u, 1u, 17836u, 4650u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 34321u)) % 32u))));
    var var_1 = ~0u;
    let var_2 = Struct_2(select(vec4<bool>(false, true, true, true), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), false), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))), u_input.a.xzx, u_input.a.ywx);
    var var_3 = vec4<bool>(var_2.a.x, true || any(select(select(var_2.a.zyy, var_2.a.xwy, true), select(var_2.a.yzz, vec3<bool>(false, false, false), var_2.a.xxx), !var_2.a.x)), all(!select(vec3<bool>(false, false, var_2.a.x), var_2.a.xyz, var_2.c.x <= -7047i)), !all(select(vec4<bool>(var_2.a.x, var_2.a.x, false, true), select(var_2.a, vec4<bool>(var_2.a.x, true, var_2.a.x, false), true), true)));
    global0 = array<i32, 3>();
    return Struct_1(var_3.xyz, _wgslsmith_div_i32(1i, global0[_wgslsmith_index_u32(var_0.x, 3u)]), _wgslsmith_div_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, 63698u, 41773u) & vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<u32>(1u, 195837u, 35477u, var_0.x)), vec4<u32>(1u, var_0.x, firstTrailingBit(var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, 10107u), vec3<u32>(4294967295u, var_0.x, 1u)))), ~max(max(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(33233u, 4294967295u, var_0.x, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 0u, var_0.x, 66801u), vec4<u32>(var_0.x, 1u, 14026u, var_0.x)))));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_2.a.xy;
    var var_1 = arg_2.c.wwy;
    global2 = array<vec2<i32>, 8>();
    global2 = array<vec2<i32>, 8>();
    var_1 = ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(func_2(global0[_wgslsmith_index_u32(min(arg_2.c.x, 3351u), 3u)]).c.zx, arg_2.c.yy), var_1.x);
    return func_2(arg_2.b).a;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a.x;
    global0 = array<i32, 3>();
    var var_1 = var_0;
    let var_2 = Struct_1(select(arg_1.a.zwx, func_4(-1203f, _wgslsmith_f_op_vec2_f32(vec2<f32>(650f, -459f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(885f, arg_0) - vec2<f32>(arg_0, -1192f))), func_2(~(-2147483647i))), all(func_4(579f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-598f, arg_0)), Struct_1(arg_1.a.zzy, 14096i, vec4<u32>(4294967295u, 4294967295u, 19792u, 0u))).yx)), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(func_3(Struct_2(!arg_1.a, arg_1.c, min(vec3<i32>(arg_1.c.x, arg_1.c.x, 35268i), vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], 41833i))), Struct_1(vec3<bool>(var_0, arg_1.a.x, true), -8506i, select(vec4<u32>(18615u, 1u, 37511u, 25802u), vec4<u32>(108977u, 6703u, 4294967295u, 1u), arg_1.a))), 3u)], ~_wgslsmith_div_i32(-38971i, -2147483647i)), ~(~(~vec4<u32>(35129u, 0u, 72822u, 10982u)) >> (select(abs(vec4<u32>(13826u, 1u, 1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), arg_1.a) % vec4<u32>(32u))));
    var var_3 = max(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(~1u, 8u)], _wgslsmith_mult_vec2_i32(arg_1.c.xx, vec2<i32>(var_2.b, global0[_wgslsmith_index_u32(var_2.c.x, 3u)]))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.c.x, 4294967295u) >> (var_2.c.x % 32u), 8u)]), u_input.d.yy) ^ max(global2[_wgslsmith_index_u32(var_2.c.x, 8u)], vec2<i32>(-27891i >> (~var_2.c.x % 32u), ~u_input.c.x));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1915f, _wgslsmith_f_op_f32(trunc(922f))))), -1553f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1097f))))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(254f, 1194f, _wgslsmith_f_op_f32(-1400f - 429f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1012f, -1237f, -354f) + vec3<f32>(514f, 1432f, 235f)))))));
    return Struct_1(func_1(-170f, Struct_2(vec4<bool>(all(arg_0.a.wy), global0[_wgslsmith_index_u32(39959u, 3u)] < -30071i, arg_0.a.x, !arg_0.a.x), firstLeadingBit(vec3<i32>(arg_0.b.x, -23444i, 17395i)), -(vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -1i, arg_1) << (vec3<u32>(6953u, 4294967295u, 1u) % vec3<u32>(32u))))).a.zyw, _wgslsmith_sub_i32(-(~_wgslsmith_dot_vec3_i32(u_input.a.xwz, vec3<i32>(arg_0.c.x, 28967i, 12259i))), arg_0.c.x), vec4<u32>(61785u, _wgslsmith_add_u32(func_3(func_1(231f, Struct_2(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), u_input.a.xyy, arg_0.c)), Struct_1(vec3<bool>(false, false, false), u_input.c.x, vec4<u32>(13943u, 2229u, 4294967295u, 106965u))), 1u), 43153u, 30119u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 8>();
    var var_0 = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 27966u), 28u)]), 0i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-841f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-544f, -1447f)))) + _wgslsmith_f_op_f32(-602f * 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1091f * -1443f) + _wgslsmith_f_op_f32(f32(-1f) * -388f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f * -177f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -463f);
    var var_2 = Struct_1(vec3<bool>(false, !((11215u >> (var_0.c.x % 32u)) >= 35340u), func_4(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), Struct_1(var_0.a, u_input.b, var_0.c)).x || true), countOneBits(1i), vec4<u32>(~var_0.c.x >> (4294967295u % 32u), ~var_0.c.x, select(var_0.c.x, 1u, var_0.a.x), 4294967295u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 35398u, 0u, var_0.c.x), vec4<u32>(var_0.c.x, var_0.c.x, 1u, var_0.c.x))));
    global2 = array<vec2<i32>, 8>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~0u), 77437u) ^ var_0.c.x, 28u)];
    global1 = array<Struct_2, 28>();
    var var_4 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(min(~var_3.b, _wgslsmith_div_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 3u)], 2147483647i, global0[_wgslsmith_index_u32(25810u, 3u)]), var_3.b)), ~vec3<i32>(2147483647i, var_2.b, 24812i)), _wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(var_3.c.x & var_0.b, max(u_input.d.x, var_0.b))), firstLeadingBit(_wgslsmith_clamp_i32(1i, -global0[_wgslsmith_index_u32(59673u, 3u)], u_input.c.x))), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(-2760i, var_0.c.x, ~(var_2.c.x & ~countOneBits(var_0.c.x)), max(var_2.c.zyy, _wgslsmith_add_vec3_u32(var_2.c.xzx, var_2.c.xyw)), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(32132i, -1i, -1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(var_3.c, u_input.a.yww), -2147483647i >> (var_2.c.x % 32u)), var_3.b)));
}

