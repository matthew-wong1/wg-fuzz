struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec3<f32>(-1040f, 1428f, -970f)), Struct_3(vec3<f32>(-178f, 508f, -2121f)), Struct_3(vec3<f32>(-119f, 1177f, -690f)), Struct_3(vec3<f32>(746f, -1182f, -838f)), Struct_3(vec3<f32>(-1287f, 285f, -1406f)), Struct_3(vec3<f32>(314f, -527f, 550f)), Struct_3(vec3<f32>(-1965f, 838f, -171f)), Struct_3(vec3<f32>(1675f, -1178f, 900f)), Struct_3(vec3<f32>(-903f, 1000f, 1576f)), Struct_3(vec3<f32>(1323f, 552f, 1137f)), Struct_3(vec3<f32>(1463f, 458f, 224f)), Struct_3(vec3<f32>(749f, -787f, -258f)), Struct_3(vec3<f32>(900f, -624f, 754f)), Struct_3(vec3<f32>(-661f, 1784f, 765f)), Struct_3(vec3<f32>(-452f, -893f, -492f)), Struct_3(vec3<f32>(362f, -1261f, 993f)), Struct_3(vec3<f32>(1163f, -987f, -1612f)), Struct_3(vec3<f32>(189f, 872f, 1237f)), Struct_3(vec3<f32>(594f, -540f, 561f)), Struct_3(vec3<f32>(170f, 1000f, 271f)), Struct_3(vec3<f32>(-463f, -680f, 135f)), Struct_3(vec3<f32>(1000f, 368f, -290f)), Struct_3(vec3<f32>(152f, 1000f, 1000f)), Struct_3(vec3<f32>(1004f, 959f, -1759f)), Struct_3(vec3<f32>(116f, 373f, -346f)), Struct_3(vec3<f32>(-772f, -612f, -1000f)));

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec3<f32>(-510f, 1016f, 1625f)), Struct_3(vec3<f32>(-1000f, 625f, -476f)), Struct_3(vec3<f32>(853f, -775f, -888f)), Struct_3(vec3<f32>(933f, -1295f, 852f)), Struct_3(vec3<f32>(-1035f, -1480f, 835f)), Struct_3(vec3<f32>(393f, 179f, 1000f)), Struct_3(vec3<f32>(1000f, -820f, 203f)), Struct_3(vec3<f32>(1064f, -1434f, -1755f)), Struct_3(vec3<f32>(-2247f, 967f, 1570f)), Struct_3(vec3<f32>(-903f, 905f, 869f)), Struct_3(vec3<f32>(-2143f, -1919f, 1544f)), Struct_3(vec3<f32>(-709f, 503f, 2333f)), Struct_3(vec3<f32>(-260f, 400f, 736f)), Struct_3(vec3<f32>(1428f, 699f, 282f)), Struct_3(vec3<f32>(-235f, 263f, 980f)), Struct_3(vec3<f32>(567f, -1645f, -1000f)), Struct_3(vec3<f32>(-560f, 555f, -512f)), Struct_3(vec3<f32>(179f, -2084f, -724f)), Struct_3(vec3<f32>(-1672f, 161f, -255f)), Struct_3(vec3<f32>(600f, -806f, 1041f)), Struct_3(vec3<f32>(-342f, -1324f, -288f)), Struct_3(vec3<f32>(592f, -497f, 1626f)), Struct_3(vec3<f32>(793f, -603f, 375f)), Struct_3(vec3<f32>(1380f, -732f, -1923f)), Struct_3(vec3<f32>(-644f, -2122f, 1161f)), Struct_3(vec3<f32>(-121f, 378f, 1636f)), Struct_3(vec3<f32>(1234f, -998f, -905f)), Struct_3(vec3<f32>(2383f, -1262f, -337f)));

var<private> global3: u32 = 0u;

var<private> global4: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(57189i, true), Struct_1(1i, false), 4294967295u, Struct_1(-3265i, false)), Struct_2(Struct_1(2147483647i, false), Struct_1(-41830i, true), 114787u, Struct_1(12843i, false)), Struct_2(Struct_1(0i, false), Struct_1(29471i, true), 4294967295u, Struct_1(-8168i, true)), Struct_2(Struct_1(2147483647i, true), Struct_1(0i, true), 0u, Struct_1(-65591i, true)), Struct_2(Struct_1(20607i, false), Struct_1(25096i, true), 1u, Struct_1(-7259i, true)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(4294967295u), 26u)];
    let var_1 = ~vec4<i32>(u_input.c, -43507i, u_input.b.x, ~u_input.b.x);
    var var_2 = Struct_2(Struct_1(max(_wgslsmith_mult_i32(~17987i, firstTrailingBit(var_1.x)), u_input.b.x), !(!arg_0)), Struct_1(var_1.x, (reverseBits(u_input.a.x) | (1u & u_input.e)) > ~1u), ~4294967295u, Struct_1(-16463i, !arg_0));
    let var_3 = -894f;
    var var_4 = vec2<i32>(-1i, _wgslsmith_add_i32(~abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-12209i, var_2.b.a, -2147483647i, 4235i), vec4<i32>(var_1.x, 0i, var_2.b.a, -426i))), -1i));
    return ~_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_2.c, u_input.a.x)), ~_wgslsmith_div_vec2_u32(~u_input.a.yy, ~vec2<u32>(var_2.c, var_2.c)), u_input.a.zx);
}

fn func_2() -> vec4<f32> {
    var var_0 = ~u_input.d;
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~func_3(false, 911f, vec3<bool>(false, false, false)), ~abs(vec2<u32>(11756u, 0u))), firstLeadingBit(vec2<u32>(u_input.e, 0u) << (u_input.a.yx % vec2<u32>(32u)))), 28u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1091f, var_1.a.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(223f * 909f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(263f, 439f, var_1.a.x, var_1.a.x) - vec4<f32>(global0.x, global0.x, 449f, 944f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2334f, var_1.a.x, global0.x, var_1.a.x)))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(303f, 318f, 1104f, arg_2.a.x)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, arg_2.a.x, 219f, arg_2.a.x), vec4<f32>(-512f, 2143f, -163f, -156f)))))));
    let var_0 = select(select(vec2<bool>(false, _wgslsmith_mod_u32(u_input.e, 6518u) <= 1u), vec2<bool>(false, u_input.b.x <= countOneBits(-46512i)), !(min(u_input.a.x, 45961u) <= 4294967295u)), vec2<bool>(any(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, any(vec4<bool>(true, true, false, false)))), true || select(global0.x < -943f, true, true)), arg_1 >= ~arg_1);
    var var_1 = true;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_0.x, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, -1487i), vec3<i32>(u_input.c, u_input.c, -1i)))) << (reverseBits(firstLeadingBit(~3947u)) % 32u), arg_0.x);
    let var_3 = select(max(u_input.b.xz, abs(firstLeadingBit(vec2<i32>(arg_0.x, 2147483647i))) << (select(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.e, 18826u)), u_input.a.zy, !vec2<bool>(false, var_0.x)) % vec2<u32>(32u))), arg_0.xx, select(select(vec2<bool>(true, false), var_0, all(!vec3<bool>(var_0.x, var_0.x, true))), select(!select(var_0, var_0, false), var_0, !var_0.x), var_0));
    return 254f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    global2 = array<Struct_3, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.zw), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2597f + global0.x)), _wgslsmith_f_op_f32(sign(-401f))) - arg_0.xz), vec2<bool>(all(vec4<bool>(true, true, true, true)) != all(vec4<bool>(true, true, true, true)), true)));
    global2 = array<Struct_3, 28>();
    var var_1 = _wgslsmith_clamp_i32(46748i, u_input.d, ~u_input.c);
    global4 = array<Struct_2, 5>();
    return Struct_1(2147483647i, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 28>();
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.b.x, u_input.d, u_input.b.x), 41942u, global1[_wgslsmith_index_u32(1u, 26u)])), global0.x, -343f)))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(657f, global0.x, 1000f)))))), _wgslsmith_clamp_u32(1u, 4294967295u, reverseBits(19250u)), Struct_1(-2147483647i, any(vec4<bool>(true, true, true, true))));
    let var_1 = true;
    global3 = 4294967295u;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -348f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~select(_wgslsmith_mult_u32(0u, 5608u), var_0.c ^ 10735u, true), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.zy), vec2<u32>(11103u, 0u)) ^ u_input.e, ~abs(_wgslsmith_sub_u32(39143u, 35851u)), ~_wgslsmith_mult_u32(~var_0.c, u_input.a.x)), u_input.b, (min(select(vec3<i32>(-2147483647i, u_input.d, var_0.a.a), u_input.b, false), u_input.b) ^ vec3<i32>(33118i | var_0.a.a, 1i, var_0.b.a)) ^ vec3<i32>(max(var_0.b.a, u_input.c << (1u % 32u)), -u_input.d, u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)) + global0.x)));
}

