struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec3<i32>, 9>;

var<private> global4: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(true, true), vec4<i32>(-14952i, -35577i, i32(-2147483648), -1i), vec2<bool>(true, false), vec4<f32>(864f, -461f, -2204f, -2571f), true), Struct_1(vec2<bool>(true, false), vec4<i32>(-23222i, 0i, -10951i, 0i), vec2<bool>(true, false), vec4<f32>(-436f, -2306f, 553f, -1370f), false), Struct_1(vec2<bool>(true, false), vec4<i32>(13040i, 1i, 2147483647i, 28469i), vec2<bool>(false, false), vec4<f32>(-257f, 955f, -2095f, -177f), false), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, -19638i, i32(-2147483648), 0i), vec2<bool>(true, false), vec4<f32>(-268f, 535f, 846f, -1818f), false), Struct_1(vec2<bool>(false, true), vec4<i32>(2068i, i32(-2147483648), -31290i, 1i), vec2<bool>(false, true), vec4<f32>(1299f, 1059f, 297f, -981f), true), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, 1i, -6755i, -4590i), vec2<bool>(false, true), vec4<f32>(1084f, -186f, 883f, 693f), false), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 30243i, 2147483647i, -57009i), vec2<bool>(false, false), vec4<f32>(-1139f, -371f, -1363f, 550f), false), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec2<bool>(false, true), vec4<f32>(1000f, -1000f, -1000f, -653f), true), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, -1i, -2352i, 2147483647i), vec2<bool>(true, false), vec4<f32>(-657f, -610f, -1387f, -170f), true), Struct_1(vec2<bool>(true, false), vec4<i32>(39495i, -4038i, -21980i, -17881i), vec2<bool>(false, false), vec4<f32>(-2288f, 845f, -1839f, 1847f), true), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, 1i, 32510i, -23404i), vec2<bool>(false, true), vec4<f32>(590f, -1216f, 514f, 1000f), false), Struct_1(vec2<bool>(true, false), vec4<i32>(-1i, -24799i, -27606i, -36105i), vec2<bool>(true, false), vec4<f32>(1291f, -822f, 736f, -1248f), true), Struct_1(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 25499i), vec2<bool>(false, true), vec4<f32>(-641f, 157f, -1132f, -376f), false), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -1i, -1i, 7265i), vec2<bool>(false, false), vec4<f32>(1196f, 883f, 237f, -139f), false), Struct_1(vec2<bool>(true, false), vec4<i32>(13168i, -36930i, 2147483647i, i32(-2147483648)), vec2<bool>(true, false), vec4<f32>(-126f, 233f, 128f, -503f), true), Struct_1(vec2<bool>(true, false), vec4<i32>(26220i, 7536i, 2147483647i, -17242i), vec2<bool>(false, true), vec4<f32>(614f, 422f, -1405f, -844f), false), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -5180i, 1i, 2147483647i), vec2<bool>(true, true), vec4<f32>(-583f, 874f, -487f, -999f), false), Struct_1(vec2<bool>(false, true), vec4<i32>(-49497i, -35109i, 0i, -42579i), vec2<bool>(true, true), vec4<f32>(-887f, -522f, 361f, 709f), true), Struct_1(vec2<bool>(true, true), vec4<i32>(28503i, 2147483647i, -32098i, 8554i), vec2<bool>(false, false), vec4<f32>(752f, -150f, -289f, 221f), false), Struct_1(vec2<bool>(true, false), vec4<i32>(32291i, -5226i, -1i, -40898i), vec2<bool>(false, false), vec4<f32>(771f, 464f, -841f, 516f), false), Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 29117i, 1i, 23635i), vec2<bool>(false, false), vec4<f32>(-1541f, -472f, -222f, 2219f), true), Struct_1(vec2<bool>(true, false), vec4<i32>(-86130i, 1i, 2147483647i, -12342i), vec2<bool>(false, true), vec4<f32>(705f, -943f, 704f, 1061f), false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec2<u32>) -> vec2<bool> {
    let var_0 = select(~0u, 10498u, select(global2.b.x & global2.b.x, global1.b.x, false && global1.a.x) <= -46782i) << (_wgslsmith_div_u32(u_input.d.x, _wgslsmith_mult_u32(4294967295u, select(_wgslsmith_clamp_u32(arg_0.x, 1703u, u_input.d.x), abs(98106u), global2.c.x))) % 32u);
    return !vec2<bool>(global1.e, any(vec3<bool>(true, !global1.a.x, all(vec2<bool>(global2.e, global2.e)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = all(select(select(select(select(vec3<bool>(global2.c.x, global1.e, true), vec3<bool>(true, global2.c.x, global1.a.x), vec3<bool>(false, global2.e, false)), select(vec3<bool>(global1.e, false, true), vec3<bool>(arg_0.b.c.x, false, arg_0.b.e), vec3<bool>(true, false, arg_0.b.a.x)), !vec3<bool>(arg_0.b.e, true, global1.e)), select(select(vec3<bool>(false, global1.c.x, global1.a.x), vec3<bool>(global1.a.x, false, false), arg_0.b.e), vec3<bool>(global2.a.x, arg_1.c.x, arg_0.b.c.x), select(vec3<bool>(global1.c.x, global1.c.x, false), vec3<bool>(true, arg_1.c.x, global2.e), vec3<bool>(false, false, false))), any(vec4<bool>(arg_1.c.x, true, arg_1.a.x, arg_0.b.a.x))), !(!(!vec3<bool>(arg_0.b.e, arg_1.e, arg_0.b.e))), !select(vec3<bool>(true, true, true), vec3<bool>(global1.e, false, arg_0.b.e), select(vec3<bool>(global2.c.x, true, false), vec3<bool>(arg_0.b.c.x, false, global2.e), vec3<bool>(global2.a.x, arg_0.b.c.x, global1.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1506f + -1528f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), ((_wgslsmith_div_i32(-98752i, -2147483647i) | (arg_1.b.x >> (u_input.d.x % 32u))) << (_wgslsmith_clamp_u32(select(9734u, u_input.d.x, global1.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12255u, u_input.d.x), vec3<u32>(17636u, u_input.d.x, 31684u)), 1u) % 32u)) >= -arg_1.b.x));
    let var_2 = global2.b.xx;
    var var_3 = arg_0;
    global2 = Struct_1(vec2<bool>(true, global1.e), ~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(arg_0.b.b.x, 2147483647i, -2147483647i, global1.b.x)), _wgslsmith_add_vec4_i32(~global1.b, var_3.b.b)), select(select(!vec2<bool>(arg_0.b.c.x, true), !vec2<bool>(false, var_3.b.e), func_1(~u_input.d)), !func_1(abs(u_input.d)), global2.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -182f), global1.d.x)), (_wgslsmith_mod_i32(abs(2068i), var_2.x) < -2147483647i) && arg_1.c.x);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.d, vec2<u32>(0u, firstLeadingBit(23475u & u_input.d.x)), select(vec2<u32>(~u_input.d.x, u_input.d.x), u_input.d, !(global2.e & global1.c.x))), ~(select(abs(u_input.d), vec2<u32>(4294967295u, u_input.d.x), any(vec3<bool>(false, arg_0.b.e, false))) >> (_wgslsmith_sub_vec2_u32(u_input.d, firstLeadingBit(vec2<u32>(u_input.d.x, u_input.d.x))) % vec2<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    return Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(Struct_2(-797f, global0[_wgslsmith_index_u32(85228u, 31u)]), arg_3, 1000f), u_input.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(~1u, max(arg_1.x, arg_1.x)), vec2<u32>(36123u, arg_1.x))), global4[_wgslsmith_index_u32(0u, 22u)], 2147483647i, -2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = ~arg_2.b.zw;
    var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-23628i, min(23096i, global1.b.x)), arg_2.b.xw), vec2<i32>(-27583i, abs(u_input.c.x)));
    global3 = array<vec3<i32>, 9>();
    let var_1 = global1.a.x;
    global4 = array<Struct_1, 22>();
    return _wgslsmith_sub_u32(countOneBits(firstLeadingBit(_wgslsmith_div_u32(u_input.d.x, u_input.d.x))), ~select(_wgslsmith_add_u32(4294967295u, arg_1), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), arg_1), (arg_1 >> (4294967295u % 32u)) < ~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<i32>, 9>();
    var var_0 = Struct_3(~func_4(global0[_wgslsmith_index_u32(~(u_input.d.x & 135713u), 31u)], u_input.d.x, Struct_1(func_1(vec2<u32>(u_input.d.x, u_input.d.x)), firstLeadingBit(global2.b), func_1(vec2<u32>(43709u, 2152u)), vec4<f32>(global1.d.x, -141f, 1561f, global2.d.x), true), func_2(_wgslsmith_div_f32(global1.d.x, global2.d.x), ~vec3<u32>(0u, 4294967295u, 50666u), !global2.c.x, global0[_wgslsmith_index_u32(1895u, 31u)])), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.d.x, 1u), 4294967295u), 1u), 22u)], 12540i, abs(~(57630i << (u_input.d.x % 32u))) >> (30084u % 32u));
    var var_1 = global2.d.xwx;
    global0 = array<Struct_1, 31>();
    let var_2 = vec4<i32>(1i, -u_input.a.x, var_0.b.b.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~max(func_2(_wgslsmith_f_op_f32(sign(global1.d.x)), firstTrailingBit(vec3<u32>(var_0.a, var_0.a, 1u)), true, func_2(1506f, vec3<u32>(var_0.a, var_0.a, u_input.d.x), true, Struct_1(vec2<bool>(global1.e, var_0.b.a.x), global2.b, vec2<bool>(true, global1.a.x), vec4<f32>(var_1.x, 1621f, var_1.x, var_0.b.d.x), global1.e)).b).b.b.zz, -(vec2<i32>(2147483647i, -49660i) >> (u_input.d % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.d.x, var_1.x) - -168f), -1085f), vec2<f32>(_wgslsmith_f_op_f32(var_1.x - 1404f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(382f - global1.d.x) - global1.d.x)), var_0.b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.x, 1190f, var_1.x, -1415f)))))));
}

