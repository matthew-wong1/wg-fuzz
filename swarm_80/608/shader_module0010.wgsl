struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(0i, -18712i, -41906i, 2147483647i), vec4<i32>(9346i, -1i, 33570i, 1i), vec4<i32>(0i, 1i, 6490i, 1i), vec4<i32>(2147483647i, 0i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, i32(-2147483648), -1i, -1i), vec4<i32>(32358i, 18531i, -21430i, 1i), vec4<i32>(-21528i, -73275i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -17947i, -1i, -59040i), vec4<i32>(39890i, 1407i, 0i, 0i), vec4<i32>(1i, 1i, -34757i, -1i), vec4<i32>(-35851i, 1i, -23195i, 4103i), vec4<i32>(2147483647i, i32(-2147483648), -1i, 0i), vec4<i32>(17565i, -78438i, 0i, -1i));

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_3 = Struct_3(vec3<bool>(false, true, false), vec3<f32>(-1090f, 1222f, -443f), vec3<f32>(-1347f, 407f, -654f));

var<private> global4: Struct_2 = Struct_2(vec2<bool>(false, false), true, i32(-2147483648), Struct_1(0i, vec4<i32>(2147483647i, -1i, 40860i, -42185i), vec2<f32>(-878f, -581f), 1000f, false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<f32>) -> f32 {
    var var_0 = select(arg_0, -arg_0, !global2.x);
    var var_1 = Struct_1(_wgslsmith_mult_i32(-_wgslsmith_clamp_i32(1i, arg_0, _wgslsmith_add_i32(-38082i, arg_0)), -14958i << (countOneBits(abs(0u)) % 32u)), max(select(reverseBits(vec4<i32>(18824i, 14398i, -38105i, u_input.a.x)), global0[_wgslsmith_index_u32(arg_2, 13u)], false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2, arg_1.x, arg_1.x), 13u)] | vec4<i32>(arg_0, 0i, -1i, 15628i)) | vec4<i32>(_wgslsmith_dot_vec3_i32(global4.d.b.wyw, vec3<i32>(u_input.a.x, global4.d.a, -4424i)), -2398i, -2147483647i, arg_0), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.c.x + global4.d.c.x)))) - _wgslsmith_f_op_vec2_f32(-arg_3)), _wgslsmith_f_op_f32(step(-2160f, _wgslsmith_f_op_f32(exp2(global4.d.d)))), !(!all(select(vec4<bool>(global3.a.x, true, false, false), vec4<bool>(false, global3.a.x, global2.x, global2.x), global4.a.x))));
    global3 = Struct_3(select(!(!select(global2.xww, vec3<bool>(global3.a.x, global2.x, var_1.e), var_1.e)), !select(vec3<bool>(global4.b, global2.x, var_1.e), !global3.a, var_1.e), select(global3.a, vec3<bool>(arg_2 < arg_2, all(global3.a.xy), any(global2.wzz)), true)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(527f, 268f, arg_3.x) + global3.b))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(942f, arg_3.x, global4.d.d))))))));
    var_0 = var_1.a;
    let var_2 = ~(-99457i);
    return global4.d.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(-156f, _wgslsmith_f_op_f32(arg_2.b.x - -1656f)));
    return vec2<u32>(~firstLeadingBit(~43667u), ~(~47219u)) << (reverseBits(vec2<u32>(select(abs(1u), ~4294967295u, all(arg_0.a.yy)), abs(~33145u))) % vec2<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    let var_0 = func_4(Struct_3(!select(global3.a, select(global3.a, vec3<bool>(global4.d.e, global4.a.x, false), true), any(vec4<bool>(global4.b, global2.x, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.b.x, -899f, global3.b.x), global3.b) + global3.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-445f, arg_1.x, global3.c.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 682f, global4.d.c.x)), select(global2.zyw, global2.wyz, false))))), vec3<f32>(-1410f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(i32(-1i) * -2147483647i, ~vec2<u32>(1u, 0u), ~4294967295u, _wgslsmith_div_vec2_f32(global4.d.c, arg_1.xy))))), _wgslsmith_f_op_f32(arg_0 + -1080f)), Struct_3(global2.zyw, arg_1.xzw, _wgslsmith_f_op_vec3_f32(-global3.b)));
    var var_1 = global4.c;
    return firstTrailingBit(~(~2956u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.c.x, arg_0.c.x, 737f, 262f)), vec4<f32>(-1734f, 1560f, -1081f, _wgslsmith_f_op_f32(-502f + arg_0.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-354f, 406f, 1192f, global3.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.c.x)), global4.d.c.x, -827f, arg_0.c.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1133f, global4.d.c.x, 1000f, -694f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-632f, global3.c.x, global4.d.c.x, global4.d.d)))))));
    var var_1 = arg_1;
    global3 = Struct_3(select(select(vec3<bool>(true, global3.a.x | global2.x, global2.x), vec3<bool>(-1423f >= global4.d.c.x, false && arg_0.e, true), select(global3.a, !global2.yzx, !vec3<bool>(true, global2.x, arg_0.e))), !select(vec3<bool>(global4.b, false, false), vec3<bool>(global3.a.x, global4.a.x, false), select(global3.a, vec3<bool>(true, false, global2.x), global2.xxy)), true), var_0.wyy, global3.b);
    var var_2 = select(_wgslsmith_add_u32(countOneBits(_wgslsmith_add_u32(13466u, _wgslsmith_dot_vec2_u32(arg_1, arg_1))), 35456u), _wgslsmith_mult_u32(14371u, 25088u), select(arg_0.e, all(!vec3<bool>(arg_0.e, arg_0.e, global3.a.x)), false));
    var var_3 = Struct_3(vec3<bool>(true & !all(vec4<bool>(global2.x, true, arg_0.e, true)), global2.x, all(!global2.zww) | true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(639f, -443f, var_0.x) + _wgslsmith_f_op_vec3_f32(-global3.c)) - vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, -1479f, true)), _wgslsmith_f_op_f32(var_0.x - -168f), global3.b.x))), _wgslsmith_f_op_vec3_f32(var_0.yyw * var_0.zzx));
    return vec3<u32>(min(var_1.x, 4294967295u), _wgslsmith_div_u32(reverseBits(~1u), _wgslsmith_mult_u32(~var_1.x, arg_1.x)), 16459u);
}

fn func_6(arg_0: bool, arg_1: vec3<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    global2 = !vec4<bool>(false, !global3.a.x, !arg_0, any(!(!global2.xwx)));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1745f)))) + _wgslsmith_f_op_f32(global3.c.x - -704f)), arg_2);
    var var_1 = global4.d.b;
    global0 = array<vec4<i32>, 13>();
    global3 = Struct_3(global3.a, _wgslsmith_f_op_vec3_f32(-global3.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1023f, -823f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -822f), global3.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.x))) - _wgslsmith_f_op_vec3_f32(-global3.c)));
    return global4.d;
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> bool {
    var var_0 = func_6(false, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 37528u, 1u), vec3<u32>(10919u, 0u, 30943u)), vec3<u32>(46187u, 0u, 30810u)) | func_5(global1[_wgslsmith_index_u32(func_2(global3.c.x, vec4<f32>(1345f, 588f, global3.c.x, global4.d.d)), 27u)], ~vec2<u32>(4294967295u, 26945u)), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(86650u, 4294967295u)), 0u, ~77737u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, 1223f, true))) * global3.c.x) * -210f), global4.d.e);
    let var_1 = 11825u;
    var var_2 = func_6(!select(false, !(global2.x || global2.x), true), _wgslsmith_clamp_vec3_u32(~min(~vec3<u32>(var_1, 1u, 16083u), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(var_1, 1u, 13717u))), func_5(Struct_1(global4.d.a, vec4<i32>(global4.c, 23666i, 0i, -22773i) << (vec4<u32>(6883u, var_1, var_1, 52404u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(step(global4.d.c, vec2<f32>(var_0.d, global3.c.x))), var_0.c.x, false), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, 1u), ~vec2<u32>(1u, var_1))), vec3<u32>(var_1, firstLeadingBit(firstLeadingBit(0u)), var_1)), _wgslsmith_f_op_f32(-414f + var_0.c.x), -global4.d.b.x == -2147483647i);
    var var_3 = select(select(!arg_0.xx, global4.a, global2.wz), global3.a.yy, !select(vec2<bool>(true, any(global3.a.zx)), vec2<bool>(var_2.e, false), !vec2<bool>(global4.a.x, false)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(global4.b, any(vec4<bool>(true, !global2.x, global3.a.x, func_1(vec4<bool>(global4.a.x, false, true, global3.a.x), true))) & true, global4.d.e, !global2.x);
    var var_0 = vec3<i32>(_wgslsmith_div_i32(0i, u_input.a.x), func_6(global4.d.e, reverseBits(~vec3<u32>(4294967295u, 23497u, 4294967295u)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -107f), select(global2.x, global4.b, global3.a.x))), true).a, -1i) ^ u_input.a.wyz;
    var var_1 = -1025f;
    global0 = array<vec4<i32>, 13>();
    let var_2 = Struct_2(!global2.zy, func_1(select(!vec4<bool>(false, global3.a.x, false, global3.a.x), select(select(vec4<bool>(global2.x, global4.d.e, false, true), vec4<bool>(global4.b, false, global3.a.x, false), vec4<bool>(global2.x, global3.a.x, global2.x, true)), vec4<bool>(global4.a.x, global4.b, false, global4.a.x), select(vec4<bool>(global2.x, true, false, false), vec4<bool>(true, false, global2.x, false), vec4<bool>(global2.x, global4.d.e, global4.d.e, false))), !(global4.d.d != -1298f)), true), global4.d.a, func_6(true, vec3<u32>(~countOneBits(88642u), 0u, 25943u), global3.c.x, global2.x));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, firstLeadingBit(37023u), _wgslsmith_div_u32(select(4294967295u, 78320u, var_2.d.e), 4198u), ~8502u) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(28556u, 0u), ~vec2<u32>(77467u, 1u)), ~12098u, func_4(Struct_3(vec3<bool>(var_2.d.e, global3.a.x, true), global3.c, vec3<f32>(global3.c.x, global4.d.c.x, var_2.d.c.x)), global3.c, Struct_3(vec3<bool>(false, var_2.b, global4.b), vec3<f32>(-420f, -1016f, -168f), global3.b)).x, 50795u << (~4294967295u % 32u)) % vec4<u32>(32u)), vec4<u32>(33539u, 4294967295u, 4294967295u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-160f, global4.d.d, var_2.d.d, -362f), vec4<f32>(-2134f, global3.c.x, global4.d.d, var_2.d.c.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(833f, global4.d.c.x, -864f, var_2.d.d), vec4<f32>(1609f, var_2.d.c.x, global4.d.d, 723f))))), vec3<u32>(_wgslsmith_div_u32(1u, 4294967295u) << (_wgslsmith_dot_vec2_u32(var_3.xx, var_3.xx) % 32u), 4294967295u, var_3.x << (0u % 32u)));
}

