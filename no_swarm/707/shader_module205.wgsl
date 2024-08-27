struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(2147483647i, Struct_1(0i)), Struct_3(39044i, Struct_1(-1i)), Struct_3(1i, Struct_1(1i)), Struct_3(1i, Struct_1(-16715i)), Struct_3(1i, Struct_1(2147483647i)), Struct_3(44984i, Struct_1(1i)), Struct_3(24668i, Struct_1(i32(-2147483648))), Struct_3(0i, Struct_1(-21801i)), Struct_3(-22019i, Struct_1(i32(-2147483648))), Struct_3(2147483647i, Struct_1(2147483647i)), Struct_3(-34165i, Struct_1(-1i)), Struct_3(5243i, Struct_1(19962i)), Struct_3(68581i, Struct_1(32916i)), Struct_3(0i, Struct_1(-60029i)));

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(Struct_3(-41049i, Struct_1(38710i)), Struct_1(-16385i), 0u, Struct_1(10491i), Struct_2(vec3<i32>(-16552i, 47716i, 0i), Struct_1(i32(-2147483648)), vec3<f32>(-330f, -206f, -1000f))), Struct_4(Struct_3(20966i, Struct_1(38791i)), Struct_1(23921i), 1u, Struct_1(23185i), Struct_2(vec3<i32>(-28970i, 0i, -6093i), Struct_1(-3290i), vec3<f32>(-2297f, -1254f, -2044f))), Struct_4(Struct_3(11191i, Struct_1(-15756i)), Struct_1(i32(-2147483648)), 1u, Struct_1(-38520i), Struct_2(vec3<i32>(-1i, 7398i, i32(-2147483648)), Struct_1(1i), vec3<f32>(-1820f, -1411f, -455f))), Struct_4(Struct_3(30247i, Struct_1(0i)), Struct_1(0i), 0u, Struct_1(7049i), Struct_2(vec3<i32>(1i, 71210i, 1i), Struct_1(26040i), vec3<f32>(729f, 806f, 193f))), Struct_4(Struct_3(0i, Struct_1(-50957i)), Struct_1(i32(-2147483648)), 25091u, Struct_1(-4659i), Struct_2(vec3<i32>(-21834i, -38550i, -3587i), Struct_1(1i), vec3<f32>(1187f, -644f, -1654f))), Struct_4(Struct_3(36172i, Struct_1(0i)), Struct_1(-1i), 0u, Struct_1(0i), Struct_2(vec3<i32>(1i, -23355i, i32(-2147483648)), Struct_1(-1i), vec3<f32>(1719f, 1128f, 1000f))), Struct_4(Struct_3(-39247i, Struct_1(-13743i)), Struct_1(-1i), 17751u, Struct_1(27434i), Struct_2(vec3<i32>(2147483647i, 2147483647i, 2147483647i), Struct_1(28633i), vec3<f32>(-209f, -2029f, -393f))), Struct_4(Struct_3(39949i, Struct_1(-1i)), Struct_1(0i), 1u, Struct_1(-29312i), Struct_2(vec3<i32>(1i, 0i, 0i), Struct_1(1i), vec3<f32>(-1339f, 1000f, -503f))), Struct_4(Struct_3(i32(-2147483648), Struct_1(-1i)), Struct_1(0i), 6154u, Struct_1(9294i), Struct_2(vec3<i32>(11601i, -6885i, i32(-2147483648)), Struct_1(-30428i), vec3<f32>(-1000f, -1000f, 691f))), Struct_4(Struct_3(-985i, Struct_1(1i)), Struct_1(-15157i), 1u, Struct_1(-39178i), Struct_2(vec3<i32>(2147483647i, 2147483647i, 2147483647i), Struct_1(1i), vec3<f32>(155f, 285f, 240f))), Struct_4(Struct_3(39917i, Struct_1(-1i)), Struct_1(1i), 37813u, Struct_1(-41442i), Struct_2(vec3<i32>(2147483647i, -33058i, -29438i), Struct_1(45237i), vec3<f32>(-1000f, 283f, -1938f))), Struct_4(Struct_3(-42672i, Struct_1(0i)), Struct_1(2147483647i), 19045u, Struct_1(-56275i), Struct_2(vec3<i32>(-37429i, i32(-2147483648), -4873i), Struct_1(1i), vec3<f32>(-1029f, 1000f, 151f))), Struct_4(Struct_3(-14606i, Struct_1(66820i)), Struct_1(0i), 4294967295u, Struct_1(i32(-2147483648)), Struct_2(vec3<i32>(-48953i, 1i, i32(-2147483648)), Struct_1(-1i), vec3<f32>(2260f, 611f, -1678f))), Struct_4(Struct_3(-3595i, Struct_1(i32(-2147483648))), Struct_1(-32029i), 62224u, Struct_1(12671i), Struct_2(vec3<i32>(8684i, 0i, -19782i), Struct_1(15846i), vec3<f32>(326f, 2550f, 1295f))), Struct_4(Struct_3(1i, Struct_1(14300i)), Struct_1(2147483647i), 15996u, Struct_1(2147483647i), Struct_2(vec3<i32>(i32(-2147483648), 21928i, i32(-2147483648)), Struct_1(-48820i), vec3<f32>(-1000f, 1914f, -1000f))));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(max(u_input.c.x, _wgslsmith_mod_u32(u_input.a, 4294967295u) << (firstTrailingBit(29122u) % 32u)), 28648u), u_input.b), 15u)];
    var var_1 = _wgslsmith_clamp_vec3_i32(min(vec3<i32>(global0.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(var_0.e.a.zy, var_0.e.a.yz)), global0.x), reverseBits(countOneBits(vec3<i32>(var_0.a.a, 5105i, 0i)))), var_0.e.a, var_0.e.a);
    var var_2 = var_0.e.a;
    let var_3 = -(reverseBits(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_1.x, var_2.x, global0.x, -50545i)), ~vec4<i32>(arg_1, 25189i, var_2.x, -1i))) << (vec4<u32>(reverseBits(4294967295u) >> (u_input.a % 32u), 25226u, _wgslsmith_mult_u32(var_0.c, _wgslsmith_add_u32(0u, u_input.a)), 113178u) % vec4<u32>(32u)));
    let var_4 = max(_wgslsmith_add_u32(~30728u, _wgslsmith_dot_vec3_u32(u_input.c.xwx, countOneBits(vec3<u32>(55207u, arg_0.x, u_input.b))) << (38330u % 32u)), ~(~reverseBits(u_input.b)));
    return 73020u;
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec3<i32> {
    global1 = array<Struct_3, 14>();
    global2 = select(vec3<bool>(false, global2.x | (-1725f == _wgslsmith_f_op_f32(arg_1.e.c.x * 1043f)), false), !select(select(vec3<bool>(true, true, true), !vec3<bool>(global2.x, global2.x, true), any(global2.zy)), vec3<bool>(!global2.x, any(vec3<bool>(global2.x, false, global2.x)), false), !(!vec3<bool>(true, global2.x, false))), any(!(!vec4<bool>(global2.x, false, false, true))));
    var var_0 = reverseBits(~arg_1.e.a);
    let var_1 = u_input.c.yyz >> (~(~select(_wgslsmith_add_vec3_u32(u_input.c.xyy, u_input.c.zww), _wgslsmith_mod_vec3_u32(u_input.c.zww, vec3<u32>(40531u, 13552u, u_input.c.x)), select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, true, false)))) % vec3<u32>(32u));
    let var_2 = arg_1.e.c.x;
    return firstLeadingBit(arg_1.e.a);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-45455i, global0.x, global0.x, 56305i) >> (vec4<u32>(u_input.c.x, 1u, u_input.b, 17347u) % vec4<u32>(32u)), ~vec4<i32>(-39106i, -20892i, 2147483647i, global0.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(global0.x, global0.x)), firstLeadingBit(global0.x), _wgslsmith_mult_i32(-1i, global0.x), 1i)), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x, -1i, -25032i), vec4<i32>(global0.x, global0.x, global0.x, global0.x)))));
    var_0 = Struct_1(-var_0.a);
    global0 = _wgslsmith_sub_vec3_i32(func_4(func_3(u_input.c.yw, -5507i, Struct_2(vec3<i32>(4484i, 9220i, var_0.a), Struct_1(var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1144f, -1900f, -2614f)))), Struct_4(Struct_3(global0.x, Struct_1(-2147483647i)), Struct_1(_wgslsmith_clamp_i32(global0.x, var_0.a, 5661i)), u_input.c.x, Struct_1(~2147483647i), Struct_2(select(vec3<i32>(0i, 1i, var_0.a), vec3<i32>(global0.x, 2147483647i, -2147483647i), global2.x), Struct_1(47652i), vec3<f32>(-503f, 1485f, 494f)))), -vec3<i32>(~var_0.a, -9896i, 73495i));
    var_0 = Struct_1(global0.x);
    var var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(max(~u_input.c, _wgslsmith_sub_vec4_u32(u_input.c, u_input.c)), vec4<u32>(u_input.d, _wgslsmith_clamp_u32(4294967295u, u_input.b, u_input.b), 28759u, 61128u)), abs(~vec4<u32>(9850u, 4294967295u, 10901u, 1u) | vec4<u32>(u_input.d, u_input.a, 4294967295u, u_input.d)), select(u_input.c, firstLeadingBit(~vec4<u32>(0u, 51262u, u_input.a, u_input.d)), any(global2.yz))), u_input.c);
    return Struct_1(var_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = false;
    global3 = array<Struct_4, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -878f))) + _wgslsmith_f_op_f32(step(-424f, _wgslsmith_f_op_f32(1059f - 1318f)))))));
    let var_2 = var_1;
    global3 = array<Struct_4, 15>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_3(-1i, Struct_1(var_0.a));
    let var_2 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(global0.yz), _wgslsmith_clamp_vec2_i32(global0.zz, global0.yx, global0.yz)), -2147483647i), max(func_2().a, var_1.b.a), -2147483647i), Struct_1(abs(0i) & var_1.a), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, 156f, 839f)) + vec3<f32>(-1047f, _wgslsmith_f_op_f32(abs(-1419f)), _wgslsmith_div_f32(-2051f, 615f))))));
    let var_3 = var_2.c;
    var_1 = Struct_3(-_wgslsmith_add_i32(global0.x | 0i, var_0.a), Struct_1(~func_4(9322u, Struct_4(Struct_3(var_0.a, var_2.b), var_2.b, 68933u, var_1.b, var_2)).x));
    global2 = !(!select(vec3<bool>(all(vec4<bool>(false, false, global2.x, global2.x)), any(vec2<bool>(global2.x, global2.x)), true), select(!vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, true, true), global2.x || global2.x), select(vec3<bool>(false, false, global2.x), vec3<bool>(global2.x, true, global2.x), true)));
    var var_4 = _wgslsmith_f_op_vec2_f32(var_3.xz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, 324f) + vec2<f32>(var_2.c.x, var_3.x))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(696f - var_2.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -861f))));
    let var_5 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.zy, ~reverseBits(u_input.c.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_3.zz))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5, var_5, var_2.c.x, var_5) - vec4<f32>(var_3.x, var_2.c.x, -2637f, -1000f)), vec4<f32>(1931f, var_2.c.x, -630f, 107f)) + vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(678f * 552f), -513f, _wgslsmith_f_op_f32(var_3.x - -1187f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(var_3.x - var_3.x), var_5, -667f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(sign(-493f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) - _wgslsmith_f_op_f32(-772f + var_2.c.x)))));
}

