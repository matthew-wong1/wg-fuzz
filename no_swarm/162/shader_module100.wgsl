struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec3<u32>(39941u, 0u, 0u), vec4<f32>(173f, -1391f, -165f, 419f), true), Struct_4(vec3<u32>(25131u, 4294967295u, 84473u), vec4<f32>(1228f, -1214f, -1000f, 423f), true), Struct_4(vec3<u32>(45271u, 13423u, 58803u), vec4<f32>(1780f, 1617f, -1160f, 1512f), false), Struct_4(vec3<u32>(1045u, 77294u, 89541u), vec4<f32>(1161f, -236f, -1000f, -390f), true), Struct_4(vec3<u32>(0u, 26019u, 11221u), vec4<f32>(-338f, 786f, 356f, 1000f), false), Struct_4(vec3<u32>(40980u, 82405u, 5165u), vec4<f32>(-1000f, 1434f, 661f, -845f), true), Struct_4(vec3<u32>(19395u, 83005u, 31045u), vec4<f32>(467f, -362f, 1318f, -502f), false), Struct_4(vec3<u32>(4294967295u, 4294967295u, 63623u), vec4<f32>(1519f, 190f, 213f, -1000f), false), Struct_4(vec3<u32>(60537u, 4294967295u, 236u), vec4<f32>(958f, 915f, -371f, 253f), true), Struct_4(vec3<u32>(54702u, 0u, 24750u), vec4<f32>(-1590f, 1000f, -1464f, 1409f), true), Struct_4(vec3<u32>(98971u, 0u, 1u), vec4<f32>(-2665f, 1317f, -1461f, -998f), false), Struct_4(vec3<u32>(37321u, 75052u, 23460u), vec4<f32>(-173f, -503f, -1859f, -436f), false), Struct_4(vec3<u32>(52572u, 4294967295u, 24279u), vec4<f32>(-1000f, -767f, -125f, -341f), false), Struct_4(vec3<u32>(89620u, 29668u, 4294967295u), vec4<f32>(-163f, 1375f, 847f, -1149f), true), Struct_4(vec3<u32>(12081u, 1u, 1u), vec4<f32>(782f, -1121f, 1267f, -291f), true), Struct_4(vec3<u32>(1u, 1u, 48525u), vec4<f32>(605f, -2484f, 971f, -170f), false), Struct_4(vec3<u32>(23490u, 71422u, 52660u), vec4<f32>(-365f, 1101f, 1000f, 777f), false));

var<private> global2: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(1u, 0u), vec2<u32>(1u, 39238u), vec2<u32>(1u, 43025u), vec2<u32>(45727u, 0u), vec2<u32>(21127u, 1u), vec2<u32>(1u, 700u), vec2<u32>(1u, 69785u), vec2<u32>(1u, 4294967295u), vec2<u32>(43773u, 3604u), vec2<u32>(64308u, 13700u));

var<private> global3: Struct_1 = Struct_1(vec4<i32>(15770i, 5247i, -1i, 9107i), vec4<f32>(242f, -1000f, -701f, 406f), false, 46401i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(!select(!vec2<bool>(global3.c, global3.c), !(!vec2<bool>(true, global3.c)), true), ~min(firstTrailingBit(_wgslsmith_add_vec2_i32(global3.a.yx, global3.a.wx)), global3.a.zx >> (~vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), global3.b.x);
    let var_1 = 1u ^ _wgslsmith_dot_vec4_u32(u_input.a, abs(u_input.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(889f, _wgslsmith_f_op_f32(var_0.c - global3.b.x)) + global3.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1633f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.c))))));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 27523i), _wgslsmith_mult_vec2_i32(select(vec2<i32>(-global3.d, max(global3.d, var_0.b.x)), vec2<i32>(select(var_0.b.x, 0i, var_0.a.x), _wgslsmith_add_i32(global3.a.x, var_0.b.x)), false), ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(global3.d, global3.d), ~vec2<i32>(global3.d, -39515i), vec2<i32>(global3.a.x, global3.d) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))));
    let var_4 = vec3<bool>(false, var_0.a.x, global3.c);
    return vec4<bool>(!global3.c, countOneBits(var_1) > ~u_input.c, global3.c, select(global3.d >= -23576i, 18711i > abs(global3.a.x), any(vec4<bool>(false, true, var_0.a.x, true)) && true));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    global3 = Struct_1(~abs(reverseBits(vec4<i32>(2147483647i, global3.a.x, 1i, -1i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(-499f, 260f, global3.b.x, global3.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1000f, arg_1.x) * vec4<f32>(-175f, 118f, 1012f, -882f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(arg_1)))))), false, min(_wgslsmith_dot_vec4_i32(countOneBits(~global3.a), _wgslsmith_add_vec4_i32(global3.a, global3.a)), ~(18879i | global3.d)));
    global1 = array<Struct_4, 17>();
    global0 = true;
    let var_0 = arg_2.xy;
    let var_1 = arg_3;
    return arg_1.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> Struct_2 {
    return Struct_2(vec2<bool>(any(vec2<bool>(true, true)) || false, global3.c), vec2<i32>(reverseBits(2147483647i), 4489i) ^ min(vec2<i32>(_wgslsmith_sub_i32(arg_2, 0i), _wgslsmith_sub_i32(global3.d, 9493i)), global3.a.wx), _wgslsmith_f_op_f32(func_4(u_input.a, vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(-961f * arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(445f, arg_0.x)))), firstLeadingBit(~vec3<u32>(u_input.c, 0u, u_input.a.x)), func_3())));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(max(firstTrailingBit(vec3<u32>(34632u, _wgslsmith_div_u32(0u, u_input.b), u_input.b)), select(select(~u_input.a.zww, ~u_input.a.xwy, !vec3<bool>(global3.c, true, false)), u_input.a.xyz, vec3<bool>(arg_1.a.x, global3.c, arg_1.c == -1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1175f))), _wgslsmith_f_op_f32(142f * arg_1.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1000f))))), global3.b), func_3().x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1u, ~u_input.a.x), 17u)];
    var var_2 = global3.d;
    let var_3 = reverseBits(arg_1.b.x);
    var var_4 = vec3<i32>(~abs(global3.a.x), select(select(reverseBits(~var_3), func_2(_wgslsmith_f_op_vec2_f32(trunc(var_1.b.yz)), any(vec2<bool>(true, global3.c)), global3.d & -68018i).b.x, false), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(arg_1.b, vec2<i32>(1i, 1i), false), vec2<i32>(-6993i, 1i)), -func_2(var_0.b.zw, var_0.c, global3.a.x).b), arg_1.a.x), ~abs(arg_1.b.x));
    return Struct_1(firstLeadingBit(~vec4<i32>(-5749i, _wgslsmith_add_i32(arg_1.b.x, global3.d), firstLeadingBit(0i), var_4.x & global3.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(863f, var_1.b.x, var_0.b.x, global3.b.x)) - var_1.b), var_1.b)), true, -2147483647i);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = false;
    var_0 = any(vec4<bool>(!arg_1.c, !func_5(arg_0.x, Struct_2(vec2<bool>(true, arg_1.c), vec2<i32>(2147483647i, arg_1.d), -434f)).c, false, arg_1.c));
    let var_1 = Struct_4(select(u_input.a.zwy, abs(vec3<u32>(~0u, arg_2, 15803u ^ u_input.c)), vec3<bool>(true, global3.c, !select(arg_1.c, arg_1.c, global3.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-173f, _wgslsmith_f_op_f32(floor(-236f)), arg_0.x, _wgslsmith_div_f32(arg_0.x, global3.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.b, vec4<f32>(1000f, arg_0.x, 1454f, 1469f))))), true);
    var_0 = true;
    global3 = Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_i32(global3.a, _wgslsmith_div_vec4_i32(select(vec4<i32>(global3.d, 0i, arg_1.d, arg_1.a.x), global3.a, false), ~global3.a))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1134f * _wgslsmith_f_op_f32(min(global3.b.x, 999f))), global3.b.x, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.c, arg_2, 1u, 43258u)), _wgslsmith_f_op_vec4_f32(-var_1.b), var_1.a, !vec4<bool>(false, var_1.c, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a, vec4<f32>(2729f, global3.b.x, -1698f, -2165f), var_1.a, vec4<bool>(arg_1.c, true, arg_1.c, true))) * _wgslsmith_div_f32(var_1.b.x, 453f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(185f, 1000f, var_1.b.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-768f, 1396f, arg_1.b.x, -537f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -339f, global3.b.x, global3.b.x))))), true, arg_1.d & ~(select(-22874i, global3.d, arg_1.c) >> (~16421u % 32u)));
    return Struct_3(!(!func_3().xz));
}

fn func_1() -> bool {
    let var_0 = func_6(global3.b.wx, func_5(global3.b.x, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.yy - global3.b.yy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, global3.b.x) - vec2<f32>(global3.b.x, -1101f))), true, -global3.a.x)), u_input.c);
    let var_1 = false;
    var var_2 = func_5(global3.b.x, func_2(_wgslsmith_f_op_vec2_f32(-global3.b.zy), global3.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1574f * 169f) - _wgslsmith_f_op_f32(-global3.b.x)), global3.a.x));
    var var_3 = u_input.a.yyy;
    var var_4 = !vec2<bool>(all(!var_0.a), false);
    return var_0.a.x;
}

fn func_7(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(vec2<f32>(global3.b.x, -724f), arg_0.x, 70268i);
    var var_1 = ~(u_input.a.ywy ^ _wgslsmith_div_vec3_u32(u_input.a.yyx, u_input.a.zwz));
    let var_2 = func_6(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.b.xw), global3.b.yy)), func_5(_wgslsmith_f_op_f32(trunc(-1053f)), func_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(global3.b.ww)))), ~(-24294i) >= _wgslsmith_mult_i32(global3.d, var_0.b.x), 18045i)), 43545u);
    let var_3 = ~abs(~(~(~u_input.a.yzw)));
    var_0 = func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c, -376f))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1000f, -432f)), -1642f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b.x))))), func_3().x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-global3.d, func_2(global3.b.wz, true, var_0.b.x).b.x) ^ _wgslsmith_add_i32(global3.a.x, 23732i), global3.d ^ _wgslsmith_dot_vec2_i32(max(vec2<i32>(39335i, -1i), global3.a.yy), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.x, 0i), global3.a.wy))));
    return Struct_1(countOneBits(~global3.a), _wgslsmith_f_op_vec4_f32(global3.b - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, var_0.c, global3.b.x, -1306f) - global3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.b.x, global3.b.x, global3.b.x, -786f))))))), func_1(), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(select(!vec3<bool>(global3.c == global3.c, func_1(), global3.c), func_3().zwx, !global3.c), vec3<bool>(!global3.c, global3.c, global3.c));
    global3 = func_7(vec3<bool>(func_7(!vec3<bool>(global3.c, global3.c, global3.c), vec3<bool>(any(vec2<bool>(true, false)), global3.c, u_input.b == u_input.a.x)).c, abs(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)) == u_input.b, (i32(-1i) * -global3.d) <= global3.d), vec3<bool>(all(vec2<bool>(true, false)), true, true));
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    global1 = array<Struct_4, 17>();
    var var_0 = func_6(_wgslsmith_f_op_vec2_f32(-global3.b.xz), Struct_1(vec4<i32>(global3.a.x, global3.a.x, firstTrailingBit(global3.d), max(global3.a.x, ~(-41006i))), _wgslsmith_f_op_vec4_f32(step(global3.b, func_7(vec3<bool>(true, global3.c, global3.c), vec3<bool>(global3.c, global3.c, global3.c)).b)), false, _wgslsmith_add_i32(global3.a.x, ~global3.a.x)), 34151u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(global3.b.yxy)));
}

