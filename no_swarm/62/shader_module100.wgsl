struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(i32(-2147483648), -38332i, -7303i, i32(-2147483648)), vec4<i32>(-1i, -37863i, 1i, -1i), vec4<i32>(-1i, -1i, -1i, 29841i), vec4<i32>(4658i, 0i, i32(-2147483648), -22800i), vec4<i32>(30611i, -6673i, 21158i, -49788i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -40342i), vec4<i32>(-1i, -1i, -29504i, 2147483647i), vec4<i32>(1i, 1i, 1i, -20788i), vec4<i32>(1i, 1i, 0i, 0i), vec4<i32>(2147483647i, 0i, -1i, -19307i), vec4<i32>(1i, -49434i, 0i, -58651i), vec4<i32>(-31664i, -21426i, 3730i, -17518i), vec4<i32>(41949i, 27692i, -1i, 37441i), vec4<i32>(-8821i, -1i, -67795i, 0i));

var<private> global2: array<Struct_1, 31>;

var<private> global3: Struct_4 = Struct_4(vec3<u32>(0u, 1u, 1u), 0u, Struct_2(4294967295u, vec3<f32>(-1124f, 655f, -248f), vec4<f32>(694f, 565f, -647f, 372f), vec3<u32>(100903u, 4294967295u, 1u), 1602f), Struct_3(vec2<i32>(-7596i, 23017i), vec4<i32>(16692i, -529i, 42655i, 1i), vec3<i32>(30553i, -53786i, 16603i)));

var<private> global4: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-803f, 641f, 373f, -1344f), vec4<f32>(191f, -2046f, -917f, -211f), vec4<f32>(126f, -1062f, -1399f, -516f), vec4<f32>(1391f, -2963f, -434f, 1181f), vec4<f32>(373f, 254f, -369f, -1142f), vec4<f32>(-389f, -1000f, -427f, 859f), vec4<f32>(-921f, -2664f, 318f, 257f), vec4<f32>(291f, 811f, 1000f, -336f), vec4<f32>(714f, 308f, 1000f, -1000f), vec4<f32>(1373f, -633f, -177f, -749f), vec4<f32>(-517f, 2187f, 120f, -260f), vec4<f32>(-1000f, -988f, 780f, 1139f), vec4<f32>(269f, -126f, 766f, -1000f), vec4<f32>(-663f, -495f, -762f, -1726f), vec4<f32>(548f, 1308f, 124f, -1603f), vec4<f32>(-938f, -2353f, -1494f, -1000f), vec4<f32>(318f, -1293f, 506f, 1000f), vec4<f32>(-419f, 607f, 1285f, 147f), vec4<f32>(554f, 1000f, -715f, 126f), vec4<f32>(-206f, -379f, -988f, 248f), vec4<f32>(-778f, 343f, -1489f, 829f), vec4<f32>(283f, -659f, 701f, 1688f), vec4<f32>(-401f, -296f, 232f, 1477f), vec4<f32>(341f, -1239f, -880f, 1081f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = vec4<u32>(~41044u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global3.a.x, u_input.a.x), global0.d) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(51373u, 0u), reverseBits(arg_0.a.xz)) % 32u)), 30790u, 25759u);
    global3 = Struct_4(arg_0.a, _wgslsmith_add_u32(select(21782u, max(~1u, abs(u_input.a.x)), false), 27260u), Struct_2(~(~global0.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.c.b) + _wgslsmith_f_op_vec3_f32(global0.c.yyz - vec3<f32>(arg_0.c.x, 1452f, 1230f))))), _wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c.x, 531f, -851f, -837f))) - vec4<f32>(global0.b.x, -628f, global0.b.x, -1238f)))), _wgslsmith_sub_vec3_u32(vec3<u32>(select(u_input.a.x, 4294967295u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global3.c.a, 4294967295u), vec3<u32>(40066u, 1u, var_0.x)), ~123888u), _wgslsmith_sub_vec3_u32(global0.d, arg_0.a << (vec3<u32>(arg_0.a.x, var_0.x, 35888u) % vec3<u32>(32u)))), _wgslsmith_div_f32(-620f, global3.c.e)), Struct_3(_wgslsmith_mod_vec2_i32(global3.d.b.yz, global3.d.c.xy), vec4<i32>(_wgslsmith_clamp_i32(firstLeadingBit(arg_0.b), global3.d.a.x, arg_0.b), global3.d.c.x, ~global3.d.c.x, 1i), -(-vec3<i32>(global3.d.c.x, 10025i, -1i) | vec3<i32>(2147483647i, 7544i, arg_0.b))));
    let var_1 = ~_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 1u, global0.a), vec3<u32>(u_input.a.x, global0.d.x, var_0.x), true), ~_wgslsmith_div_vec3_u32(vec3<u32>(121973u, var_0.x, 4294967295u), vec3<u32>(u_input.a.x, var_0.x, u_input.a.x))) >> (_wgslsmith_add_vec3_u32(~abs(u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(27277u, var_0.x, arg_0.a.x), global0.a, 26278u), global3.a)) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(global3.c.c.xy));
    global2 = array<Struct_1, 31>();
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~1u, 34869u, 103750u, arg_0.a.x)) & ~vec4<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_sub_u32(26444u, global3.b), 1u, 1u), vec4<u32>(~_wgslsmith_sub_u32(~21612u, _wgslsmith_dot_vec2_u32(arg_0.a.xz, arg_0.a.yy)), reverseBits(global3.c.d.x), ~select(var_1.x, 3516u, any(vec3<bool>(false, false, true))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(7101u, 56274u), firstLeadingBit(vec2<u32>(global0.a, 33085u))), reverseBits(arg_0.a.zx))));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    global2 = array<Struct_1, 31>();
    global4 = array<vec4<f32>, 24>();
    let var_0 = !select(select(vec2<bool>(arg_0 <= 24636i, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), any(vec2<bool>(false, false))), vec2<bool>(_wgslsmith_f_op_f32(arg_2.x - global3.c.b.x) >= _wgslsmith_f_op_f32(max(arg_3.c.x, 897f)), any(vec2<bool>(true, true))));
    global1 = array<vec4<i32>, 14>();
    var var_1 = global3.c;
    return Struct_2(firstLeadingBit(select(_wgslsmith_sub_u32(u_input.a.x, var_1.d.x), global3.b, !var_0.x)) & max(arg_1.x, ~(~1u)), vec3<f32>(456f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.c.x))) - 1450f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(204f, global3.c.e, 103f, -332f), arg_3.c))))), ((global3.a & vec3<u32>(11526u, u_input.a.x, var_1.d.x)) | var_1.d) | vec3<u32>(_wgslsmith_add_u32(~var_1.d.x, arg_1.x), _wgslsmith_dot_vec3_u32(global3.a >> (arg_3.a % vec3<u32>(32u)), abs(vec3<u32>(84785u, 0u, var_1.a))), func_3(Struct_1(var_1.d, arg_0, var_1.c))), arg_2.x);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~u_input.a.xy & arg_0.d.xz), vec2<u32>(global0.d.x, min(_wgslsmith_clamp_u32(func_3(Struct_1(arg_0.d, 4789i, vec4<f32>(arg_0.c.x, -570f, 1840f, 248f))), u_input.a.x, 1u), ~4294967295u))), 31u)];
    global0 = func_2(_wgslsmith_add_i32(var_0.b, -(~49369i)), _wgslsmith_mod_vec3_u32(vec3<u32>(min(_wgslsmith_add_u32(global3.c.a, 40195u), 1u), _wgslsmith_add_u32(~78012u, _wgslsmith_add_u32(22156u, 1u)), ~42696u), ~select(select(var_0.a, global3.c.d, true), countOneBits(vec3<u32>(0u, global0.a, 22710u)), false)), global0.c.zxz, Struct_1(abs(vec3<u32>(_wgslsmith_div_u32(var_0.a.x, global3.b), ~3647u, var_0.a.x)), ~7401i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, global4[_wgslsmith_index_u32(1u, 24u)])))));
    var var_1 = arg_0;
    let var_2 = var_0.c.xzw;
    let var_3 = vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(true, true, all(vec2<bool>(false, true))))), false, true, false);
    return Struct_3(global3.d.a, vec4<i32>(global3.d.b.x, global3.d.a.x | -1i, -1i, abs(reverseBits(-7301i)) << (_wgslsmith_mult_u32(arg_0.d.x, ~arg_0.a) % 32u)), -global3.d.c);
}

fn func_1(arg_0: Struct_5) -> Struct_2 {
    var var_0 = func_4(func_2(_wgslsmith_dot_vec4_i32(countOneBits(countOneBits(vec4<i32>(global3.d.c.x, global3.d.c.x, 1876i, global3.d.b.x))), vec4<i32>(-1i, -68134i, ~(-10127i), -59380i)), u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * global0.c.zzw) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.c.e, -934f, -593f)))), vec3<f32>(_wgslsmith_f_op_f32(-1726f * -1000f), _wgslsmith_f_op_f32(-global0.c.x), 629f)), global2[_wgslsmith_index_u32(29175u, 31u)]));
    let var_1 = Struct_5(~(global3.c.a & 4294967295u));
    return func_2(0i, firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 117166u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global3.b, var_1.a), vec3<u32>(9646u, arg_0.a, global0.d.x))) << (_wgslsmith_add_vec3_u32(global0.d, global0.d << (vec3<u32>(69857u, 1u, 67796u) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, global3.c.e, global3.c.b.x)), _wgslsmith_f_op_vec3_f32(ceil(global0.c.yww))) * _wgslsmith_f_op_vec3_f32(-global3.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global3.c.e), _wgslsmith_f_op_f32(round(-2267f)))), vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(1u, 31u)]);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_5 {
    global2 = array<Struct_1, 31>();
    var var_0 = vec3<bool>(true, true, true);
    var var_1 = Struct_1(global0.d, _wgslsmith_clamp_i32(arg_0.b.x, func_4(func_1(Struct_5(1u))).c.x, abs(arg_1.d.c.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.c * global0.c))));
    global2 = array<Struct_1, 31>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(arg_1.d.c.x, var_1.a, var_1.c.zxy, Struct_1(global3.a, 2147483647i, global3.c.c)).b.xx - _wgslsmith_div_vec2_f32(global0.c.zz, vec2<f32>(global3.c.b.x, arg_1.c.b.x))))));
    return Struct_5(_wgslsmith_div_u32(u_input.a.x, 34159u));
}

fn func_6(arg_0: vec3<u32>, arg_1: bool, arg_2: i32, arg_3: Struct_5) -> bool {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_6(~u_input.a, (0u <= abs(global3.c.a)) && true, ~global3.d.a.x, func_5(global3.d, Struct_4(~global0.d, global0.a, func_1(Struct_5(global0.d.x)), Struct_3(global3.d.a, global1[_wgslsmith_index_u32(global0.d.x, 14u)], vec3<i32>(global3.d.b.x, -13448i, global3.d.c.x)))));
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global3.c.a, global0.d.x)), vec2<u32>(4294967295u, global0.a));
    global4 = array<vec4<f32>, 24>();
    var var_2 = !select(vec3<bool>(true, !var_0, false), !(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, true), false)), select(vec3<bool>(true, !var_0, true), vec3<bool>(func_6(vec3<u32>(44774u, 36583u, global3.a.x), false, 0i, Struct_5(1u)), any(vec2<bool>(false, var_0)), func_6(vec3<u32>(4294967295u, 1u, 5674u), var_0, 1i, Struct_5(global3.b))), !var_0));
    let var_3 = select(~func_1(func_5(global3.d, Struct_4(vec3<u32>(0u, 78189u, 14122u), 24179u, global3.c, global3.d))).d.x, 0u, var_0) << (~firstLeadingBit(~global3.c.d.x) % 32u);
    let var_4 = vec3<u32>(1u, 4294967295u, ~func_3(global2[_wgslsmith_index_u32(5206u >> (_wgslsmith_mod_u32(global3.b, global0.d.x) % 32u), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-(~global3.d.c.x));
}

