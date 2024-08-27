struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, true, false, true), 77265u, 22591u, Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(i32(-2147483648), 15607i, -12516i, -63000i), false, 2447f, 25138i));

var<private> global1: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec3<i32>(42448i, -2126i, 11222i), vec4<f32>(-1006f, 1000f, 959f, 964f), 358f, Struct_2(vec3<f32>(-2092f, 1000f, 355f), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(38442i, 35070i, i32(-2147483648), 56263i), true, 706f, -1142i), vec2<bool>(false, true)), Struct_2(vec3<f32>(-1767f, -220f, 781f), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(0i, i32(-2147483648), 0i, 18831i), false, -1029f, -12828i), vec2<bool>(true, true))), Struct_4(vec3<i32>(-57567i, 50694i, 2147483647i), vec4<f32>(-691f, 851f, -1000f, 1000f), 1569f, Struct_2(vec3<f32>(-393f, 616f, 593f), vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-14345i, 17483i, 34444i, 8535i), true, 1199f, -1i), vec2<bool>(false, false)), Struct_2(vec3<f32>(-106f, -804f, -423f), vec3<bool>(true, true, true), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -22032i, -1i, i32(-2147483648)), true, 1103f, -1i), vec2<bool>(false, true))), Struct_4(vec3<i32>(2147483647i, 2147483647i, 3740i), vec4<f32>(-2100f, -2059f, -1882f, -476f), 2024f, Struct_2(vec3<f32>(-446f, -1091f, -1785f), vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(-1i, -62666i, -5994i, -14286i), true, 1172f, -4686i), vec2<bool>(true, false)), Struct_2(vec3<f32>(999f, 118f, 955f), vec3<bool>(false, false, true), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, 23944i, 84926i, -30957i), false, -560f, 0i), vec2<bool>(false, true))), Struct_4(vec3<i32>(-34279i, 2147483647i, -30528i), vec4<f32>(-459f, -330f, 497f, -728f), 1635f, Struct_2(vec3<f32>(-1363f, -221f, 1011f), vec3<bool>(true, false, true), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(0i, 1i, -9270i, i32(-2147483648)), true, -341f, 42869i), vec2<bool>(false, true)), Struct_2(vec3<f32>(-732f, -1000f, -347f), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-1i, 16560i, -49583i, -11076i), false, 1000f, 9189i), vec2<bool>(false, true))), Struct_4(vec3<i32>(7352i, 2147483647i, 1i), vec4<f32>(-1441f, -446f, 190f, 368f), 132f, Struct_2(vec3<f32>(-360f, -1330f, -232f), vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-41613i, -1i, 8567i, 0i), true, 1517f, 29664i), vec2<bool>(false, false)), Struct_2(vec3<f32>(-1014f, -543f, -332f), vec3<bool>(false, false, false), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(1i, 34148i, 2147483647i, -43815i), true, 921f, -51952i), vec2<bool>(false, true))), Struct_4(vec3<i32>(i32(-2147483648), 71833i, 0i), vec4<f32>(-512f, -1000f, -148f, 119f), -1000f, Struct_2(vec3<f32>(-385f, 1486f, 233f), vec3<bool>(true, false, false), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-53734i, 35007i, i32(-2147483648), 32871i), true, -441f, i32(-2147483648)), vec2<bool>(false, false)), Struct_2(vec3<f32>(200f, 1831f, 1048f), vec3<bool>(true, false, true), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-1i, 2147483647i, i32(-2147483648), 1i), true, 2322f, -20284i), vec2<bool>(false, true))), Struct_4(vec3<i32>(16264i, -38995i, i32(-2147483648)), vec4<f32>(415f, 1050f, 1000f, -449f), 746f, Struct_2(vec3<f32>(427f, -982f, -1374f), vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(0i, 27354i, 25070i, -78034i), false, -3326f, -3410i), vec2<bool>(false, true)), Struct_2(vec3<f32>(-260f, 603f, -1860f), vec3<bool>(true, true, false), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(1i, -1i, 1i, -10750i), true, -149f, -53747i), vec2<bool>(false, true))), Struct_4(vec3<i32>(39718i, 10261i, 10050i), vec4<f32>(-996f, 376f, -1331f, -559f), 1000f, Struct_2(vec3<f32>(-101f, -288f, 333f), vec3<bool>(true, false, false), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-8145i, 46208i, 1i, 1i), false, -1000f, 0i), vec2<bool>(false, true)), Struct_2(vec3<f32>(508f, -114f, -1449f), vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, -40610i, 602i, 2147483647i), true, 477f, i32(-2147483648)), vec2<bool>(false, false))), Struct_4(vec3<i32>(2183i, 14226i, 0i), vec4<f32>(649f, 505f, -1665f, -1000f), -1101f, Struct_2(vec3<f32>(977f, 635f, 1000f), vec3<bool>(false, false, true), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-55188i, 1i, 1i, -62541i), false, -252f, 1i), vec2<bool>(true, false)), Struct_2(vec3<f32>(489f, 1259f, 1096f), vec3<bool>(false, false, false), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(i32(-2147483648), 89777i, 11241i, -10897i), true, -505f, 9913i), vec2<bool>(true, true))));

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    var var_0 = select(any(!global2.c.a), false, 2147483647i < -_wgslsmith_mod_i32(-15244i, global2.c.b.x)) && global2.d.x;
    var var_1 = Struct_3(global0.d.a, u_input.a, min(global0.b, 37592u), Struct_1(vec4<bool>(true, global0.a.x, u_input.c.x <= _wgslsmith_div_i32(-28821i, 2147483647i), false), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, u_input.c.x, global2.c.b.x, -5990i), _wgslsmith_mod_vec4_i32(global2.c.b, global0.d.b)), true, _wgslsmith_f_op_f32(-433f * _wgslsmith_f_op_f32(abs(532f))), u_input.c.x));
    global2 = global3[_wgslsmith_index_u32(~10649u, 3u)];
    let var_2 = Struct_3(select(!vec4<bool>(!global0.d.c, !global0.d.c, any(global0.d.a.yzy), all(vec3<bool>(true, false, false))), var_1.d.a, !select(any(vec3<bool>(false, global0.a.x, true)), global0.d.d <= -122f, all(global0.a.ww))), ~22650u, abs(~min(4294967295u, min(u_input.a, u_input.a))), global0.d);
    let var_3 = Struct_1(select(!(!select(global2.c.a, vec4<bool>(false, global2.c.a.x, global0.d.a.x, true), var_1.d.a.x)), vec4<bool>(global2.b.x, !var_2.d.a.x, var_2.d.c, global2.c.c), vec4<bool>(!(var_1.d.d > -1174f), true, true, global2.d.x)), u_input.b, false, -2090f, 6443i);
    return true;
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = -global2.c.b.xx;
    let var_1 = ~(~vec2<u32>(1u << (_wgslsmith_sub_u32(global0.c, 16054u) % 32u), u_input.a));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(408f - global0.d.d), _wgslsmith_f_op_f32(round(global2.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d.d)))), !global2.b, global2.c, vec2<bool>(func_3(), arg_0.d.x));
    let var_3 = !vec2<bool>(all(vec2<bool>(global0.a.x, arg_0.b.x)), arg_0.d.x);
    let var_4 = _wgslsmith_dot_vec4_i32(~arg_0.c.b, vec4<i32>(25393i, ~global2.c.b.x, 33825i, -u_input.c.x) << (~_wgslsmith_add_vec4_u32(vec4<u32>(37290u, 1u, 0u, 4294967295u), vec4<u32>(var_1.x, var_1.x, global0.b, u_input.a)) % vec4<u32>(32u))) | abs(abs(~var_2.c.e ^ 88007i));
    return vec2<i32>(u_input.c.x, select(-16480i, _wgslsmith_mod_i32(-2147483647i, 20415i), var_2.c.c));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = ~33960u;
    let var_1 = func_2(global3[_wgslsmith_index_u32(min(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_mod_u32(global0.c ^ 4294967295u, global0.c), u_input.a), _wgslsmith_div_u32(global0.b, ~92262u)), 3u)]);
    var var_2 = global2.c.b.x;
    var var_3 = ~vec3<i32>(-16330i, var_1.x, _wgslsmith_add_i32(func_2(Struct_2(global2.a, vec3<bool>(true, false, global2.d.x), arg_1, global0.d.a.zw)).x, arg_1.b.x ^ -1i) & -1i);
    var var_4 = global3[_wgslsmith_index_u32(u_input.a, 3u)];
    return StorageBuffer(i32(-1i) * -min(17191i, ~global0.d.b.x), ~var_1.x, _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40812u, 1u, u_input.a), vec3<u32>(84790u, 0u, global0.b)), ~1u, 55805u, ~21608u) | max(_wgslsmith_add_vec4_u32(vec4<u32>(39358u, 0u, 46883u, 11837u), vec4<u32>(global0.b, global0.c, 45469u, global0.b)), vec4<u32>(11139u, u_input.a, 136448u, global0.b)), select(vec4<u32>(global0.c & 54945u, 1210u & global0.b, ~3568u, firstTrailingBit(u_input.a)), ~abs(vec4<u32>(global0.b, global0.b, global0.b, global0.b)), vec4<bool>(!var_4.c.c, var_4.d.x, !global2.d.x, true))), global2.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.a.x, var_4.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-980f, -1206f, -435f, global2.c.d)))))));
    var var_1 = global0.a.xyw;
    global0 = Struct_3(!global2.c.a, ~(~global0.b), 24011u, global2.c);
    var var_2 = Struct_1(!(!global0.a), (_wgslsmith_add_vec4_i32(vec4<i32>(-22927i, 1i, u_input.b.x, 73963i), _wgslsmith_div_vec4_i32(global0.d.b, u_input.b)) & -_wgslsmith_sub_vec4_i32(vec4<i32>(35916i, -31502i, u_input.c.x, u_input.c.x), u_input.b)) << ((vec4<u32>(global0.c, global0.b | u_input.a, ~34040u, _wgslsmith_add_u32(u_input.a, global0.c)) ^ firstTrailingBit(~vec4<u32>(u_input.a, global0.b, global0.c, u_input.a))) % vec4<u32>(32u)), select(global2.d.x, all(select(vec4<bool>(global0.a.x, global0.d.c, var_1.x, true), global2.c.a, false)) & false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1374f, _wgslsmith_f_op_f32(global0.d.d + global2.c.d))))), min(_wgslsmith_mult_i32(1i, u_input.c.x), abs(_wgslsmith_dot_vec2_i32(-global0.d.b.xw, vec2<i32>(global0.d.b.x, 0i)))));
    let var_3 = Struct_1(!(!(!global2.c.a)), countOneBits(vec4<i32>(~0i >> (_wgslsmith_div_u32(71225u, u_input.a) % 32u), -global0.d.e, global2.c.b.x, ~min(0i, 2147483647i))), all(var_2.a), global2.c.d, 11351i);
    let x = u_input.a;
    s_output = func_1(false, global0.d);
}

