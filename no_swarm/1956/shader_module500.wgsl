struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(4294967295u, 25249u), vec2<u32>(58446u, 1u), vec2<u32>(23787u, 1u), vec2<u32>(0u, 68393u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(34767u, 0u), vec2<u32>(66072u, 4294967295u), vec2<u32>(66027u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 23036u), vec2<u32>(89239u, 0u), vec2<u32>(26998u, 85158u), vec2<u32>(1u, 115911u), vec2<u32>(28759u, 109333u), vec2<u32>(6865u, 33518u), vec2<u32>(1u, 66836u), vec2<u32>(1u, 30251u), vec2<u32>(1u, 0u), vec2<u32>(33699u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(51964u, 16296u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(0u, 48921u), vec2<u32>(36106u, 4294967295u), vec2<u32>(32497u, 26267u), vec2<u32>(4294967295u, 53508u));

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(-64809i, i32(-2147483648), 15930i, -19041i), vec4<i32>(-32951i, 1i, 1i, 0i), vec4<i32>(-8463i, 2147483647i, 1816i, 23203i), vec4<i32>(3607i, 1i, 2147483647i, 3803i), vec4<i32>(1i, 0i, 2147483647i, 10677i), vec4<i32>(54274i, 2147483647i, -1i, -1i), vec4<i32>(0i, 0i, -19647i, 0i), vec4<i32>(53058i, -12152i, -1i, i32(-2147483648)), vec4<i32>(-26056i, 2147483647i, 0i, -35346i), vec4<i32>(i32(-2147483648), 0i, -35713i, 2147483647i), vec4<i32>(0i, 1i, -1i, -15971i), vec4<i32>(52582i, 2147483647i, -14738i, 1i), vec4<i32>(-1i, -1i, -1i, -14865i), vec4<i32>(75743i, 38676i, 0i, 0i), vec4<i32>(-35995i, 0i, i32(-2147483648), 1i), vec4<i32>(0i, 0i, -1i, 2147483647i), vec4<i32>(-1i, 0i, 0i, 55032i), vec4<i32>(15261i, 36575i, -31800i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 26312i, -9205i), vec4<i32>(0i, -3496i, -46383i, i32(-2147483648)), vec4<i32>(-1i, 1i, 1i, 627i), vec4<i32>(47313i, 2147483647i, -12432i, 55977i), vec4<i32>(-1i, -43324i, -1i, i32(-2147483648)), vec4<i32>(5719i, -52852i, 0i, 1i), vec4<i32>(40478i, i32(-2147483648), 0i, 1i), vec4<i32>(1i, 4245i, -61519i, 2147483647i), vec4<i32>(2230i, i32(-2147483648), i32(-2147483648), -293i), vec4<i32>(-37539i, 0i, -67997i, 3156i), vec4<i32>(-23199i, i32(-2147483648), 0i, -1i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 1i), vec4<i32>(-19981i, 2147483647i, 4924i, -1i));

var<private> global3: array<Struct_1, 5>;

var<private> global4: array<Struct_5, 9> = array<Struct_5, 9>(Struct_5(vec4<i32>(54370i, -41454i, 19640i, 0i), vec4<bool>(true, true, true, false), vec2<bool>(true, false), Struct_3(vec4<i32>(1i, -41488i, -21059i, 30948i), vec2<bool>(false, true), Struct_1(vec4<i32>(26009i, -25432i, 17314i, -1i), -8774i, 1i, vec4<u32>(5131u, 60270u, 4294967295u, 15038u))), 732u), Struct_5(vec4<i32>(i32(-2147483648), -1i, -12165i, -53785i), vec4<bool>(true, true, true, true), vec2<bool>(false, true), Struct_3(vec4<i32>(i32(-2147483648), 26013i, 0i, 41842i), vec2<bool>(true, false), Struct_1(vec4<i32>(8060i, 0i, 42360i, 11202i), 8428i, 25103i, vec4<u32>(0u, 4294967295u, 0u, 10276u))), 41889u), Struct_5(vec4<i32>(-15369i, 4910i, 1i, 0i), vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_3(vec4<i32>(40854i, 1i, 11820i, -14031i), vec2<bool>(false, true), Struct_1(vec4<i32>(-54687i, -16539i, -1i, -1i), -26621i, 27605i, vec4<u32>(4294967295u, 4294967295u, 8732u, 70060u))), 36612u), Struct_5(vec4<i32>(0i, 0i, 62055i, 22793i), vec4<bool>(true, false, false, false), vec2<bool>(true, false), Struct_3(vec4<i32>(-1i, 0i, -35317i, 27052i), vec2<bool>(false, false), Struct_1(vec4<i32>(i32(-2147483648), -15268i, 23184i, 8618i), 21527i, -70609i, vec4<u32>(0u, 1u, 57415u, 4294967295u))), 44147u), Struct_5(vec4<i32>(1i, -44644i, 1i, i32(-2147483648)), vec4<bool>(false, true, false, true), vec2<bool>(true, false), Struct_3(vec4<i32>(1i, -1i, -1i, i32(-2147483648)), vec2<bool>(true, true), Struct_1(vec4<i32>(i32(-2147483648), 39957i, 1i, 56811i), -8891i, 0i, vec4<u32>(28473u, 0u, 48018u, 29197u))), 21177u), Struct_5(vec4<i32>(0i, -1i, -21297i, i32(-2147483648)), vec4<bool>(true, true, true, true), vec2<bool>(false, true), Struct_3(vec4<i32>(2147483647i, i32(-2147483648), -12915i, 2147483647i), vec2<bool>(false, true), Struct_1(vec4<i32>(-28650i, -4936i, -18204i, -3885i), -70679i, -7674i, vec4<u32>(89653u, 1148u, 1u, 4294967295u))), 79317u), Struct_5(vec4<i32>(-30374i, -63775i, -59975i, 1i), vec4<bool>(false, false, true, false), vec2<bool>(true, false), Struct_3(vec4<i32>(i32(-2147483648), 8466i, -38834i, -41782i), vec2<bool>(true, false), Struct_1(vec4<i32>(2147483647i, 6304i, 56089i, -40671i), 1i, -1i, vec4<u32>(11713u, 15321u, 4294967295u, 59780u))), 0u), Struct_5(vec4<i32>(55241i, -18869i, 4770i, 6804i), vec4<bool>(true, true, false, false), vec2<bool>(false, false), Struct_3(vec4<i32>(48253i, 0i, 2147483647i, 50127i), vec2<bool>(false, false), Struct_1(vec4<i32>(1i, 13681i, -28165i, -33102i), 2147483647i, 12859i, vec4<u32>(1u, 4294967295u, 41195u, 44252u))), 23167u), Struct_5(vec4<i32>(-1i, 1i, 40569i, 0i), vec4<bool>(false, true, false, true), vec2<bool>(false, false), Struct_3(vec4<i32>(-42288i, -1i, 0i, 23007i), vec2<bool>(false, true), Struct_1(vec4<i32>(-5467i, 2147483647i, i32(-2147483648), 2147483647i), -54836i, 2147483647i, vec4<u32>(4294967295u, 1u, 28516u, 49149u))), 0u));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4) -> u32 {
    let var_0 = u_input.a;
    var var_1 = Struct_3(-(vec4<i32>(u_input.b.x, u_input.b.x, abs(u_input.b.x), 3049i) & select(global2[_wgslsmith_index_u32(0u, 31u)], -global2[_wgslsmith_index_u32(u_input.c, 31u)], select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true))), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, true)), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))), Struct_1(_wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(0u, 31u)], -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 11664i, u_input.b.x, -243i), global2[_wgslsmith_index_u32(arg_0.x, 31u)])), -66789i << (_wgslsmith_mod_u32(u_input.c, u_input.c >> (77613u % 32u)) % 32u), u_input.b.x, vec4<u32>(_wgslsmith_mod_u32(~57209u, select(var_0.x, arg_1, false)), firstLeadingBit(reverseBits(56376u)), firstLeadingBit(~var_0.x), ~_wgslsmith_mult_u32(1u, 29366u))));
    var var_2 = var_1.c;
    let var_3 = reverseBits(var_1.a.xy);
    var var_4 = 2147483647i;
    return 41281u;
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_3(min(~abs(-arg_2.a), ~(-vec4<i32>(2147483647i, 1i, -2147483647i, u_input.b.x))), arg_3.xw, global3[_wgslsmith_index_u32(4294967295u, 5u)]);
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.e, arg_2.e, u_input.c), ~vec3<u32>(arg_0, 16022u, var_0.a.x))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.d.x, var_0.a.x, 1u), var_1.c.d.zzx), _wgslsmith_sub_u32(var_1.c.d.x, u_input.a.x), func_3(arg_2.d.c.d.xzw, 29639u, arg_1)), var_1.c.d.ywy, all(select(vec3<bool>(arg_3.x, var_1.b.x, arg_3.x), arg_3.zxz, true))), firstTrailingBit(var_1.c.d.yxz))), 5u)];
    var var_3 = Struct_4(vec2<u32>(1u, ~(~arg_0) >> (1u % 32u)));
    let var_4 = (var_1.c.d.yyz ^ vec3<u32>(1u, ~27214u, ~_wgslsmith_div_u32(1u, 1u))) >> (arg_2.d.c.d.xzz % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(295f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(352f, 700f)))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1000f)))));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(654f - 2130f) * _wgslsmith_f_op_f32(-302f - -1100f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1u, Struct_4(global0[_wgslsmith_index_u32(u_input.c, 29u)]), global4[_wgslsmith_index_u32(0u, 9u)], vec4<bool>(true, var_0.b.x, false, var_0.b.x))))))));
    let var_2 = global4[_wgslsmith_index_u32(abs(~var_0.c.d.x), 9u)];
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec4<bool>(false, true, any(vec4<bool>(true, true, false, false)), true), !vec4<bool>(true, true, u_input.b.x != -1i, true), false), !vec4<bool>(func_1(Struct_3(vec4<i32>(0i, u_input.b.x, -64518i, -27187i), vec2<bool>(true, false), Struct_1(global2[_wgslsmith_index_u32(u_input.c, 31u)], u_input.b.x, 0i, vec4<u32>(46401u, u_input.c, u_input.c, u_input.c)))), true, func_1(Struct_3(global2[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<bool>(false, true), Struct_1(vec4<i32>(u_input.b.x, 16191i, 24913i, 8615i), u_input.b.x, u_input.b.x, vec4<u32>(52016u, u_input.c, u_input.c, u_input.a.x)))) && false, any(vec3<bool>(false, true, false))), ((all(vec3<bool>(false, true, false)) & any(vec3<bool>(false, false, true))) && (any(vec2<bool>(true, true)) | (u_input.c >= u_input.c))) || true);
    global1 = abs(~21733u);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(532f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-598f, 1000f)), _wgslsmith_f_op_f32(964f - 560f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(193f, 1000f))), func_1(Struct_3(vec4<i32>(2147483647i, 35990i, u_input.b.x, u_input.b.x), var_0.yz, global3[_wgslsmith_index_u32(4294967295u, 5u)]))))), 2101f));
    global1 = 4294967295u;
    global0 = array<vec2<u32>, 29>();
    var var_2 = global4[_wgslsmith_index_u32(42240u, 9u)];
    var_2 = Struct_5(select(vec4<i32>(2697i & var_2.a.x, var_2.d.c.a.x, _wgslsmith_mult_i32(2147483647i, 1i), abs(u_input.b.x)) | vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, 9263i), var_2.d.c.c ^ 1i, _wgslsmith_mod_i32(0i, var_2.d.c.b), var_2.d.a.x), vec4<i32>(var_2.a.x, 1i, abs(u_input.b.x), u_input.b.x), var_0), vec4<bool>(all(var_0), any(vec4<bool>(true, var_2.b.x, var_2.b.x, var_2.d.b.x)), var_2.d.b.x, var_2.b.x), var_2.d.b, var_2.d, countOneBits(0u));
    global2 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(min((0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.e, var_2.e), vec2<u32>(u_input.c, u_input.a.x)) % 32u)) ^ ~abs(u_input.b.x), ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.a.x, var_2.a.x), vec2<i32>(u_input.b.x, -31634i)), u_input.b.x, var_0.x)), var_2.a.wz, u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(32579u, u_input.c), var_2.d.c.d.zz) ^ max(vec2<u32>(var_2.d.c.d.x, 4294967295u), u_input.a)), ~select(global0[_wgslsmith_index_u32(countOneBits(var_2.d.c.d.x), 29u)], firstTrailingBit(var_2.d.c.d.yx), var_2.b.wz)));
}

