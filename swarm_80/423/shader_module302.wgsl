struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(1784f, 1u, vec2<f32>(-767f, 1000f), Struct_1(50607i, vec2<u32>(6598u, 35409u), false, 2147483647i)), Struct_5(385f, 18679u, vec2<f32>(1000f, -805f), Struct_1(1i, vec2<u32>(14504u, 0u), false, 2147483647i)), Struct_5(-1565f, 0u, vec2<f32>(-1734f, -1688f), Struct_1(5287i, vec2<u32>(10071u, 25293u), true, 0i)), Struct_5(-842f, 0u, vec2<f32>(-1757f, 364f), Struct_1(2147483647i, vec2<u32>(117022u, 1u), false, 24895i)), Struct_5(1156f, 53825u, vec2<f32>(611f, 1492f), Struct_1(1i, vec2<u32>(2829u, 128285u), true, 33663i)), Struct_5(-146f, 35643u, vec2<f32>(-681f, 112f), Struct_1(9060i, vec2<u32>(7681u, 0u), true, 25646i)), Struct_5(-314f, 46174u, vec2<f32>(-155f, 1686f), Struct_1(-106406i, vec2<u32>(4294967295u, 2393u), true, 1i)), Struct_5(201f, 46629u, vec2<f32>(301f, -313f), Struct_1(-54302i, vec2<u32>(0u, 76844u), true, 2147483647i)), Struct_5(-654f, 49288u, vec2<f32>(-1300f, 598f), Struct_1(-1i, vec2<u32>(9626u, 23999u), true, -1i)), Struct_5(1095f, 1u, vec2<f32>(-363f, -116f), Struct_1(69197i, vec2<u32>(4294967295u, 18790u), true, -18321i)), Struct_5(1396f, 45031u, vec2<f32>(230f, 1057f), Struct_1(-6496i, vec2<u32>(14435u, 0u), true, -13999i)), Struct_5(1170f, 0u, vec2<f32>(-791f, 400f), Struct_1(-1i, vec2<u32>(17523u, 4294967295u), true, 0i)), Struct_5(-108f, 4294967295u, vec2<f32>(-568f, -284f), Struct_1(2147483647i, vec2<u32>(43141u, 1u), false, 1i)), Struct_5(657f, 0u, vec2<f32>(322f, -1063f), Struct_1(-1i, vec2<u32>(28590u, 105476u), true, -1i)), Struct_5(363f, 11862u, vec2<f32>(-320f, -723f), Struct_1(-16403i, vec2<u32>(19909u, 26030u), true, 3614i)), Struct_5(631f, 24510u, vec2<f32>(-655f, 457f), Struct_1(24668i, vec2<u32>(4294967295u, 6646u), true, i32(-2147483648))), Struct_5(-1025f, 4294967295u, vec2<f32>(434f, 736f), Struct_1(-44293i, vec2<u32>(0u, 4294967295u), true, -40880i)), Struct_5(-1172f, 0u, vec2<f32>(198f, -251f), Struct_1(0i, vec2<u32>(4294967295u, 11687u), true, -35337i)), Struct_5(1142f, 0u, vec2<f32>(-189f, 710f), Struct_1(-19303i, vec2<u32>(8155u, 0u), true, -20322i)));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: Struct_5 = Struct_5(-268f, 65069u, vec2<f32>(-1466f, 1150f), Struct_1(2147483647i, vec2<u32>(0u, 1u), false, i32(-2147483648)));

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec4<i32> {
    global1 = !(!(!(!(!vec4<bool>(global2.d.c, global2.d.c, false, global1.x)))));
    var var_0 = vec4<bool>(all(!global1.zx), true, !(!global1.x), 1388u > (_wgslsmith_add_u32(global2.b, 74914u) & ~_wgslsmith_div_u32(global2.b, global2.b)));
    global3 = var_0.x;
    let var_1 = global2.d.b;
    let var_2 = Struct_3(global2.c.x);
    return -vec4<i32>(global2.d.d, u_input.b, countOneBits(select(select(global2.d.d, 1i, global1.x), 4753i, var_0.x && var_0.x)), countOneBits(min(u_input.c.x, firstLeadingBit(global2.d.a))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_4 {
    var var_0 = Struct_3(global2.a);
    global0 = array<Struct_5, 19>();
    var var_1 = func_2();
    global2 = global0[_wgslsmith_index_u32(2067u, 19u)];
    let var_2 = arg_1.d;
    return arg_3;
}

fn func_3(arg_0: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(trunc(1000f)))))));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.b, global2.d.b.x), 19u)];
    var var_1 = Struct_2(global2.d);
    let var_2 = func_1(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-563f)))), global2.b, vec2<f32>(_wgslsmith_f_op_f32(-2856f + _wgslsmith_f_op_f32(min(var_0.x, 1000f))), var_0.x), var_1.a), Struct_1(u_input.b, vec2<u32>(4294967295u << (u_input.d.x % 32u), arg_0.a) << (~u_input.d.yy % vec2<u32>(32u)), !var_1.a.c, var_1.a.d), select(select(select(!global1.xy, select(vec2<bool>(var_1.a.c, var_1.a.c), vec2<bool>(false, global2.d.c), var_1.a.c), global1.x), !global1.zx, any(!vec4<bool>(var_1.a.c, true, true, false))), select(vec2<bool>(var_1.a.c, all(global1.zxx)), select(vec2<bool>(true, var_1.a.c), vec2<bool>(var_1.a.c, global2.d.c), !vec2<bool>(true, var_1.a.c)), u_input.c.x == select(global2.d.a, u_input.c.x, var_1.a.c)), !any(vec4<bool>(global2.d.c, global1.x, var_1.a.c, false)) || !(!global2.d.c)), Struct_4(~select(global2.b, _wgslsmith_mult_u32(global2.b, arg_0.a), true)));
    var var_3 = ~func_1(Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x - 926f))), _wgslsmith_clamp_u32(var_2.a, global2.b & 1u, 1u), global2.c, Struct_1(_wgslsmith_mod_i32(global2.d.d, 2147483647i), var_1.a.b ^ vec2<u32>(var_2.a, 4294967295u), any(vec3<bool>(false, var_1.a.c, true)), u_input.b | var_1.a.d)), var_1.a, vec2<bool>(!(var_1.a.c && global2.d.c), all(vec2<bool>(global2.d.c, global1.x))), func_1(Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1099f), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.c.x) - vec2<f32>(144f, -1773f)), var_1.a), Struct_1(4810i, var_1.a.b, global1.x, _wgslsmith_div_i32(global2.d.a, u_input.c.x)), vec2<bool>(global2.d.a < 8203i, all(vec4<bool>(false, global2.d.c, global1.x, global2.d.c))), func_1(global0[_wgslsmith_index_u32(~15121u, 19u)], var_1.a, global1.ww, Struct_4(var_2.a)))).a;
    return select(select(select(vec4<bool>(true, true, any(global1.wyz), global1.x), select(select(vec4<bool>(true, var_1.a.c, true, false), vec4<bool>(global1.x, true, true, var_1.a.c), vec4<bool>(false, global1.x, false, false)), !vec4<bool>(var_1.a.c, global1.x, var_1.a.c, true), false), !vec4<bool>(true, global1.x, var_1.a.c, false)), select(select(vec4<bool>(true, global1.x, var_1.a.c, var_1.a.c), select(vec4<bool>(false, global1.x, global2.d.c, false), vec4<bool>(true, global1.x, false, false), false), select(vec4<bool>(false, var_1.a.c, global1.x, false), vec4<bool>(false, global2.d.c, global2.d.c, global1.x), var_1.a.c)), vec4<bool>(!global1.x, true, !global1.x, all(vec2<bool>(true, false))), select(vec4<bool>(var_1.a.c, global1.x, false, global1.x), !vec4<bool>(true, true, global2.d.c, false), all(global1.wx))), select(!select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(true, global2.d.c, false, false), vec4<bool>(true, false, global2.d.c, global2.d.c)), vec4<bool>(var_1.a.c || false, all(global1.yy), global1.x, true), true)), vec4<bool>(var_1.a.c, !((167f != var_0.x) && true), select(!all(vec4<bool>(var_1.a.c, false, false, false)), !(false != global2.d.c), global2.d.c), true), vec4<bool>(1019f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), true, true, var_1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(firstTrailingBit(~u_input.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(37587u, global2.b, u_input.d.x), vec3<u32>(4294967295u, global2.d.b.x, 48360u))), ~vec2<u32>(u_input.d.x, 1u) | u_input.d.xx);
    let var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) - _wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.c)) + _wgslsmith_div_vec2_f32(global2.c, vec2<f32>(global2.a, 931f)))))));
    global1 = !func_3(func_1(Struct_5(var_1.x, reverseBits(0u), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, global2.a), vec2<f32>(global2.c.x, global2.c.x))), Struct_1(18575i, global2.d.b, true, -17784i)), Struct_1(1i, _wgslsmith_mod_vec2_u32(vec2<u32>(59722u, global2.b), vec2<u32>(33191u, 0u)), true, ~(-64482i)), global1.xx, Struct_4(1u)));
    let var_2 = firstLeadingBit(_wgslsmith_div_vec2_u32(~global2.d.b, _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, 15469u), u_input.d.xz & ~vec2<u32>(16328u, 0u))));
    global0 = array<Struct_5, 19>();
    global2 = Struct_5(162f, var_0.x, global2.c, Struct_1(u_input.b, vec2<u32>(1u, var_2.x), global2.d.c != !(!global2.d.c), _wgslsmith_add_i32(global2.d.a, 2147483647i)));
    let var_3 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(16103u, 29912u), ~vec2<u32>(4294967295u, 4294967295u) << ((vec2<u32>(var_0.x, 785u) >> (vec2<u32>(75891u, global2.b) % vec2<u32>(32u))) % vec2<u32>(32u))), ~7744u, firstLeadingBit(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(65098u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_0.x, u_input.d.x, var_2.x)), ~20385u, _wgslsmith_mod_u32(4294967295u, 3001u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 1064u, 4294967295u, 71420u), ~vec4<u32>(global2.b, var_0.x, 1u, 128925u)))));
}

