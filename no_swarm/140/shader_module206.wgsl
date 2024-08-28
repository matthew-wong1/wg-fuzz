struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-1287f, 1601f, 308f, -380f), vec4<f32>(-751f, -836f, -547f, -139f), vec4<f32>(259f, 675f, 161f, 445f), vec4<f32>(291f, 1168f, -192f, 1597f), vec4<f32>(-255f, -328f, 1104f, -1220f), vec4<f32>(260f, 1139f, 778f, 1244f), vec4<f32>(531f, 212f, -980f, 1583f), vec4<f32>(-312f, 121f, -1187f, -300f), vec4<f32>(935f, -537f, 378f, 277f), vec4<f32>(564f, 789f, -763f, -559f), vec4<f32>(1227f, 441f, 964f, 820f), vec4<f32>(1364f, 644f, -388f, 161f));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<f32>(-1189f, -163f, -2020f, -121f), vec4<f32>(-1599f, 226f, -702f, -494f), 472f, vec4<u32>(1u, 41260u, 1u, 17792u)));

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(-274f, 914f, 430f, 674f), vec4<f32>(1348f, 1000f, 1000f, -1466f), 692f, vec4<u32>(1u, 17219u, 4294967295u, 54481u)), Struct_1(vec4<f32>(1210f, 490f, 150f, 962f), vec4<f32>(-304f, 1000f, -916f, 1073f), -676f, vec4<u32>(4294967295u, 70783u, 48405u, 50744u)), Struct_1(vec4<f32>(-419f, 451f, -1838f, 264f), vec4<f32>(403f, -299f, -1255f, -221f), -1082f, vec4<u32>(4294967295u, 102554u, 1u, 4294967295u)), Struct_1(vec4<f32>(1831f, 211f, 1478f, -517f), vec4<f32>(734f, -371f, 121f, -733f), 535f, vec4<u32>(24276u, 22744u, 21927u, 50274u)), Struct_1(vec4<f32>(367f, -264f, 1312f, -1143f), vec4<f32>(1000f, 1562f, -836f, -121f), -1000f, vec4<u32>(50341u, 1u, 33495u, 0u)), Struct_1(vec4<f32>(348f, 641f, 264f, 2092f), vec4<f32>(360f, 200f, 999f, -858f), 394f, vec4<u32>(1u, 39513u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(1389f, 513f, 1259f, 1618f), vec4<f32>(1499f, -1210f, 1160f, 610f), -1052f, vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), Struct_1(vec4<f32>(348f, 535f, -1006f, -346f), vec4<f32>(-1321f, 492f, -504f, 387f), -542f, vec4<u32>(1u, 67594u, 1u, 4294967295u)), Struct_1(vec4<f32>(1209f, -262f, -356f, -1081f), vec4<f32>(-333f, 112f, 343f, 643f), -854f, vec4<u32>(165185u, 4294967295u, 47997u, 37079u)), Struct_1(vec4<f32>(-1000f, 387f, 259f, 1249f), vec4<f32>(316f, 733f, -673f, -176f), 1222f, vec4<u32>(15263u, 79082u, 7121u, 0u)), Struct_1(vec4<f32>(-1126f, -1170f, 1000f, 415f), vec4<f32>(258f, 375f, -233f, 138f), 207f, vec4<u32>(1u, 32574u, 4294967295u, 91124u)), Struct_1(vec4<f32>(-336f, -630f, 330f, -446f), vec4<f32>(1000f, 346f, -445f, -993f), -570f, vec4<u32>(27451u, 1u, 30776u, 1u)), Struct_1(vec4<f32>(204f, -1321f, 1000f, -355f), vec4<f32>(-1683f, -1386f, -822f, 1807f), 1565f, vec4<u32>(4294967295u, 50951u, 4294967295u, 4294967295u)), Struct_1(vec4<f32>(940f, -554f, 1023f, 734f), vec4<f32>(-1210f, -1750f, -1431f, -212f), 1131f, vec4<u32>(4294967295u, 1u, 1u, 54241u)));

var<private> global4: vec4<f32> = vec4<f32>(-1353f, -1499f, -1433f, -180f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(2567f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(-722f)), all(vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -439f)), true)));
    var_0 = Struct_2(global0.c);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-267f - global4.x)))));
    let var_2 = global2[_wgslsmith_index_u32(6855u, 1u)];
    global3 = array<Struct_1, 14>();
    return var_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec2<f32>) -> u32 {
    global1 = array<vec4<f32>, 12>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-817f, 1950f, arg_1.a, -1000f))))), vec4<f32>(global0.b.x, arg_1.a, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_3.x) - -626f)), vec4<bool>(select(true, true, true), true, all(vec4<bool>(false, true, false, false)), false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -924f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1262f, arg_1.a))), vec4<u32>(abs(~_wgslsmith_dot_vec4_u32(global0.d, global0.d)), ~arg_0.x, min(5411u, ~(~26352u)), ~70445u | _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.x, 0u), _wgslsmith_add_u32(arg_2.x, 0u))));
    global3 = array<Struct_1, 14>();
    global3 = array<Struct_1, 14>();
    global4 = global1[_wgslsmith_index_u32(29421u, 12u)];
    return _wgslsmith_div_u32(firstTrailingBit(arg_0.x), var_0.d.x) ^ 75589u;
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.d, countOneBits(vec4<u32>(68938u, 0u, 45863u, arg_0))), func_3(vec2<u32>(~33637u, _wgslsmith_div_u32(45209u, arg_0)), func_2(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), arg_0), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.d.x, global0.d.x), vec2<u32>(arg_0, 1u)), 21427u << (global0.d.x % 32u), countOneBits(5640u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -1101f)), _wgslsmith_f_op_vec2_f32(max(global0.a.xy, vec2<f32>(-259f, 1027f)))))), arg_0);
    let var_1 = global4.x;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1663f - _wgslsmith_f_op_f32(ceil(global4.x)))))));
    let var_3 = func_2(global0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * -923f))))), firstTrailingBit(select(global0.d.x, ~_wgslsmith_sub_u32(global0.d.x, arg_0), true)));
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_0, 12u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f - -597f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)))), global0.c, ~max(global0.d, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)) ^ vec4<u32>(~(~0u), arg_0, ~countOneBits(4294967295u), firstTrailingBit(select(global0.d.x, arg_0, false))));
    return Struct_2(var_3.a);
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    global0 = global2[_wgslsmith_index_u32(global0.d.x, 1u)];
    var var_0 = Struct_2(_wgslsmith_div_f32(-101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-546f, _wgslsmith_f_op_f32(abs(-2641f)))))));
    global3 = array<Struct_1, 14>();
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a + -640f))))), 1532f)));
    global1 = array<vec4<f32>, 12>();
    return ~(~u_input.c.yx);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> Struct_2 {
    global4 = _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.d.x, ~global0.d.x), 12u)]);
    var var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(select(~global0.d.xz, _wgslsmith_clamp_vec2_u32(countOneBits(global0.d.xx), max(vec2<u32>(global0.d.x, 2654u), global0.d.yy), vec2<u32>(global0.d.x, 96734u)), false)), _wgslsmith_clamp_vec2_u32(~reverseBits(global0.d.zz), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(10870u, 60812u), vec2<u32>(4294967295u, 23291u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d.x, global0.d.x), global0.d.wz, global0.d.xx)), global0.d.yw) << (~(~countOneBits(vec2<u32>(22156u, 4294967295u))) % vec2<u32>(32u)));
    var var_1 = func_1(4294967295u);
    global2 = array<Struct_1, 1>();
    var var_2 = func_2(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1219f), 6079u);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(sign(var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.a.xy, func_4(func_1(global0.d.x))), ~vec2<i32>(4569i, ~u_input.a.x)), countOneBits(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mod_i32(1i, -65433i), u_input.b))), reverseBits(-vec3<i32>(u_input.a.x << (global0.d.x % 32u), _wgslsmith_add_i32(-2147483647i, 27259i), abs(-2147483647i))));
    var var_1 = select(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, true, true), all(vec3<bool>(false, true, true)))), true & all(vec2<bool>(true, true)), !any(vec2<bool>(any(vec3<bool>(true, false, true)), true)));
    global1 = array<vec4<f32>, 12>();
    let var_2 = Struct_1(global0.a, vec4<f32>(930f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-949f + 1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1306f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.c))), 350f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -707f))) + _wgslsmith_f_op_f32(-var_0.a)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), _wgslsmith_mult_vec4_u32(global0.d, vec4<u32>(global0.d.x, 4294967295u, global0.d.x, global0.d.x))) << (~(~global0.d) % vec4<u32>(32u))));
    let var_3 = vec4<bool>(true, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -1000f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1955f) - 987f)), all(vec4<bool>(true, u_input.b >= _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.c.zx), true, all(vec4<bool>(true, true, true, true)))), !(1u < var_2.d.x));
    let var_4 = any(var_3.zyy);
    var_1 = !(!(var_4 != true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(global0.b, vec4<f32>(-879f, _wgslsmith_f_op_f32(1888f + func_2(global0.c, -660f, global0.d.x).a), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-942f, 990f))))), ~(vec4<u32>(1u, 90516u, ~var_2.d.x, 1u) << (_wgslsmith_mod_vec4_u32(global0.d >> (var_2.d % vec4<u32>(32u)), ~global0.d) % vec4<u32>(32u))), u_input.b, vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f))), _wgslsmith_f_op_f32(-global0.b.x)));
}

