struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(1000f, -1002f, -1698f), vec3<f32>(-122f, -2098f, -461f), vec3<f32>(632f, 393f, -883f), vec3<f32>(-728f, -1490f, -1395f), vec3<f32>(-202f, 814f, -763f), vec3<f32>(418f, 1623f, -847f), vec3<f32>(1294f, -1000f, -997f), vec3<f32>(1284f, 1908f, 1456f), vec3<f32>(493f, 266f, 576f), vec3<f32>(-302f, -698f, -980f), vec3<f32>(673f, 1000f, -978f), vec3<f32>(1968f, -138f, 619f), vec3<f32>(-1324f, -719f, -540f), vec3<f32>(-842f, -658f, -1300f), vec3<f32>(154f, -535f, -1636f), vec3<f32>(116f, 690f, 1437f), vec3<f32>(390f, -996f, 1153f), vec3<f32>(1339f, 426f, -1000f), vec3<f32>(-769f, 1241f, 1460f), vec3<f32>(2054f, -1095f, -444f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    global1 = select(select(vec3<bool>(u_input.a.x >= u_input.c, true, true), select(!vec3<bool>(false, false, global1.x), !vec3<bool>(global1.x, true, global1.x), select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false), false), vec3<bool>(true, true, true), global1.x)), vec3<bool>(!global1.x, true, any(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(global1.x, true, global1.x, true))))), vec3<bool>(select(!global1.x, (i32(-1i) * -1i) < u_input.c, _wgslsmith_f_op_f32(abs(arg_2.x)) < -299f), !any(vec2<bool>(false, true)), 1u >= reverseBits(countOneBits(arg_1))), select(!(!(!vec3<bool>(true, global1.x, true))), vec3<bool>(!global1.x, true, global1.x), all(!vec4<bool>(global1.x, global1.x, true, false)) || global1.x));
    global0 = any(select(select(vec3<bool>(global1.x, true, any(global1.zz)), !(!vec3<bool>(global1.x, global1.x, false)), vec3<bool>(all(vec4<bool>(true, global1.x, global1.x, global1.x)), any(vec3<bool>(true, false, global1.x)), global1.x)), !select(!vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, false)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, true), global1.x)), !any(!vec3<bool>(true, global1.x, global1.x))));
    let var_0 = vec2<i32>(~0i, -(2147483647i | arg_0.x)) >> (_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 42701u, arg_1), vec4<u32>(38742u, u_input.b, 1u, 4294967295u)))), _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~(vec2<u32>(32269u, arg_1) ^ vec2<u32>(arg_1, 0u)))) % vec2<u32>(32u));
    let var_1 = vec2<bool>(any(select(!(!global1.xy), vec2<bool>(any(vec4<bool>(false, global1.x, false, global1.x)), all(vec3<bool>(global1.x, global1.x, global1.x))), !global1.zx)), all(!(!select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, true)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x) - vec4<f32>(-1201f, -1000f, -766f, 1000f)), vec4<f32>(arg_2.x, -1408f, arg_2.x, 559f))))), Struct_1(-790f, (true & (13924u < arg_1)) != all(var_1), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2569f, 2321f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2 * vec2<f32>(arg_2.x, -537f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1000f)))))), vec4<bool>((global1.x || false) || select(!var_1.x, var_1.x & global1.x, all(vec3<bool>(false, false, false))), !select(true, global1.x, all(var_1)), true, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -238f)))), !(true || global1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, arg_2.x) - _wgslsmith_f_op_vec2_f32(-arg_2)))));
    return _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(max(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), vec4<i32>(2147483647i, -20387i, -43308i, var_0.x)), max(vec4<i32>(0i, u_input.c, 9367i, -2147483647i), vec4<i32>(var_0.x, 1i, arg_0.x, u_input.a.x)) | ~u_input.a)), max(~(~vec4<i32>(u_input.c, u_input.a.x, -8956i, var_0.x)) ^ select(u_input.a, select(u_input.a, u_input.a, var_2.c), false), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 26766i, u_input.c) >> (~vec4<u32>(arg_1, 14032u, 18625u, arg_1) % vec4<u32>(32u)), u_input.a)));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(278f, -1209f, 130f, 1734f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-371f, -416f, -1666f, -470f), vec4<f32>(-330f, -853f, -625f, -370f), vec4<bool>(global1.x, global1.x, global1.x, global1.x))))))));
    global3 = array<vec3<f32>, 20>();
    let var_1 = 99332u;
    let var_2 = var_0.x;
    let var_3 = func_3(-(~vec2<i32>(u_input.c >> (var_1 % 32u), ~1908i)), 42677u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -1075f))));
    return Struct_4(~max(~vec3<i32>(-55065i, var_3, u_input.a.x), ~vec3<i32>(4120i, 0i, 1i)) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a.xyz, min(vec3<i32>(var_3, 20945i, 1i), u_input.a.yxz)), vec3<i32>(var_3 | u_input.c, var_3, reverseBits(0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz * var_0.ww)))), _wgslsmith_mult_u32(~(~84302u) << (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1, 4294967295u)), vec2<u32>(var_1, 0u)) % 32u), ~(~u_input.b)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 437f, _wgslsmith_f_op_f32(-1233f - var_0.x), -1370f)), Struct_1(-127f, global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), vec4<bool>(true, global1.x, global1.x, all(!vec3<bool>(true, global1.x, true))), Struct_1(_wgslsmith_f_op_f32(-var_0.x), global1.x, vec2<f32>(-136f, var_0.x))), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(abs(38679u), min(var_1, var_1)), abs(~u_input.b)), abs(firstTrailingBit(var_1 & 4294967295u)), (_wgslsmith_mult_u32(u_input.b, var_1) >> (var_1 % 32u)) | (firstTrailingBit(var_1) >> ((u_input.b & u_input.b) % 32u))));
}

fn func_4(arg_0: Struct_4) -> bool {
    var var_0 = arg_0.d;
    let var_1 = func_2().d;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(sign(1000f)), false);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, 1095f, 1000f, arg_0.d.a.x))))), var_1.a)), var_1.b, vec4<bool>(!select(!var_2.b, true, any(var_1.c)), true, all(var_0.c.zzz), !all(func_2().d.c.zy)), var_0.d);
    var_2 = Struct_3(var_1.a.x, func_2().d.b.b & any(global1.xz));
    return false;
}

fn func_1() -> u32 {
    global1 = vec3<bool>(17973u != u_input.b, true, select(!func_4(func_2()), true, func_4(func_2())));
    let var_0 = Struct_5(~reverseBits(vec3<i32>(u_input.a.x, u_input.a.x, -87473i)) & u_input.a.yww, func_2().d.c.zw, ~(func_3(vec2<i32>(-19634i, u_input.a.x), reverseBits(4294967295u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, -876f))) & -u_input.a.x));
    let var_1 = vec4<u32>(~u_input.b, _wgslsmith_mod_u32(1u, countOneBits(firstLeadingBit(1u))), u_input.b, ~abs(~(~u_input.b)));
    return ~5865u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(vec4<u32>(1u, 1u, _wgslsmith_mod_u32(71201u, u_input.b), ~u_input.b)) ^ vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.b, u_input.b), func_1()), u_input.b, 43916u, 1u);
    let var_1 = select(vec3<bool>(true, global1.x | global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -325f) + _wgslsmith_div_f32(-1000f, 1168f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(438f)))), vec3<bool>(global1.x, !(!global1.x), !func_2().d.c.x), !(!select(true, global1.x, func_4(Struct_4(u_input.a.xyx, vec2<f32>(759f, 1429f), 6920u, Struct_2(vec4<f32>(-1000f, -1352f, -715f, -1383f), Struct_1(-471f, false, vec2<f32>(-596f, -1117f)), vec4<bool>(true, true, global1.x, global1.x), Struct_1(-1000f, false, vec2<f32>(177f, -1436f))), var_0.yww)))));
    global1 = var_1;
    var var_2 = !(!vec4<bool>(global1.x, func_2().d.c.x, true, !var_1.x && (u_input.b != u_input.b)));
    global3 = array<vec3<f32>, 20>();
    global1 = func_2().d.c.zyy;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(~u_input.c, abs(7678i)), select(vec2<i32>(~(-23653i), _wgslsmith_clamp_i32(-2147483647i, 0i, u_input.c)), vec2<i32>(u_input.c, -10129i) | ~vec2<i32>(u_input.c, u_input.a.x), false)));
}

