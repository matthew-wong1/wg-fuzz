struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(4294967295u, 4294967295u, 18123u, 1u), vec4<u32>(23420u, 1u, 4294967295u, 1u), vec4<u32>(0u, 1u, 90260u, 37448u), vec4<u32>(4294967295u, 39835u, 0u, 87720u), vec4<u32>(1u, 4430u, 50683u, 0u), vec4<u32>(4294967295u, 64127u, 1u, 31160u), vec4<u32>(32960u, 11526u, 4294967295u, 69278u), vec4<u32>(42442u, 4294967295u, 29636u, 56640u), vec4<u32>(38444u, 1u, 56431u, 4294967295u), vec4<u32>(2446u, 23069u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 72282u), vec4<u32>(1u, 36993u, 2037u, 0u));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global3: Struct_1;

var<private> global4: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-42065i, 11932i, 1i, 26488i), vec4<i32>(1i, -1i, 62015i, 0i), vec4<i32>(0i, 42416i, -24983i, i32(-2147483648)), vec4<i32>(34948i, 1i, -27478i, 66371i), vec4<i32>(0i, -6390i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 12797i, 2147483647i, -42309i), vec4<i32>(-6094i, 23057i, -1i, -1i), vec4<i32>(2147483647i, 2147483647i, 38428i, 2147483647i), vec4<i32>(1i, 87494i, 22055i, -1i), vec4<i32>(28295i, -10272i, -1i, 1i), vec4<i32>(9429i, -49370i, -1i, -15012i), vec4<i32>(0i, i32(-2147483648), -1i, 15829i), vec4<i32>(1i, -43329i, -3885i, 29989i), vec4<i32>(0i, i32(-2147483648), 23592i, 0i), vec4<i32>(48690i, 1i, 0i, 0i), vec4<i32>(0i, 1i, -10061i, 37664i), vec4<i32>(i32(-2147483648), 8748i, i32(-2147483648), -34769i), vec4<i32>(2985i, i32(-2147483648), 1i, 1i), vec4<i32>(i32(-2147483648), -13441i, 49384i, i32(-2147483648)), vec4<i32>(-2928i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(2147483647i, -1i, 14412i, 33539i), vec4<i32>(15832i, -1i, 1i, i32(-2147483648)), vec4<i32>(-28208i, 24579i, 0i, 0i), vec4<i32>(18628i, -13616i, -9841i, 13259i), vec4<i32>(i32(-2147483648), -12042i, 1i, 59999i), vec4<i32>(-11134i, 45740i, i32(-2147483648), -20925i), vec4<i32>(22414i, 47052i, 1i, -26818i), vec4<i32>(39859i, 2147483647i, -44236i, -25300i), vec4<i32>(0i, -89i, 90525i, 0i), vec4<i32>(44915i, -35998i, 1306i, -45785i), vec4<i32>(-9930i, i32(-2147483648), 43879i, i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1006f, 1057f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(911f, -1000f), vec2<f32>(-1747f, 408f))) * vec2<f32>(_wgslsmith_div_f32(-644f, -1037f), -1401f)))));
    var var_1 = abs(vec4<u32>(u_input.e, u_input.b.x, _wgslsmith_mod_u32(u_input.c.x, ~u_input.b.x), 34899u));
    let var_2 = global1.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-704f + var_0.x)));
    let var_4 = 69626u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - var_0.x)) + var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = -5976i;
    var var_1 = Struct_1(arg_0.a);
    let var_2 = arg_0;
    let var_3 = vec4<i32>(-1i, u_input.a.x, min(~(906i & ~u_input.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-53418i), u_input.a.x, u_input.a.x), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -10237i, -27159i), vec3<i32>(4146i, 8505i, 56600i))))), u_input.a.x << (0u % 32u));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f * -219f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(ceil(-1278f)))))));
    return firstLeadingBit(u_input.b.x);
}

fn func_1() -> vec4<i32> {
    global0 = array<vec4<u32>, 12>();
    let var_0 = !(!vec3<bool>(any(vec3<bool>(global3.a, false, false)), false, global3.a));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(u_input.e, 43834u)), vec2<u32>(4294967295u, func_2(global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.e, 29u)]))) | max(~vec2<u32>(u_input.c.x, u_input.e), _wgslsmith_mult_vec2_u32(u_input.c.yz, u_input.b.zy) | u_input.b.xw), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(u_input.c.yw, vec2<u32>(u_input.c.x, 4294967295u))), u_input.b.zy, u_input.b.yz), max(u_input.c.yw, vec2<u32>(u_input.b.x, u_input.e) << (u_input.c.yx % vec2<u32>(32u)))));
    global0 = array<vec4<u32>, 12>();
    global0 = array<vec4<u32>, 12>();
    return abs(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(u_input.d.x, -5606i)), vec2<i32>(abs(u_input.a.x), _wgslsmith_mult_i32(u_input.d.x, 2147483647i))), u_input.d.x, -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 12>();
    let var_0 = -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-72414i, -2147483647i) ^ vec2<i32>(2147483647i, u_input.a.x)), -u_input.d.xy), vec2<i32>(0i, -2147483647i));
    global4 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(global4[_wgslsmith_index_u32(~1u, 31u)], abs(func_1() >> ((u_input.b >> (vec4<u32>(u_input.e, 15127u, u_input.e, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)))), vec3<f32>(_wgslsmith_f_op_f32(round(1646f)), -1589f, 576f), -(var_0 << (u_input.b.x % 32u)), firstLeadingBit(vec3<i32>(min(_wgslsmith_sub_i32(u_input.d.x, u_input.a.x), ~19715i), -_wgslsmith_mod_i32(u_input.a.x, -5766i), func_1().x)));
}

