struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_4, 29>;

var<private> global2: u32 = 96u;

var<private> global3: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(1851f, 175f, -894f, -919f), vec4<f32>(-1403f, -101f, -2473f, -634f), vec4<f32>(1000f, 881f, -423f, -156f), vec4<f32>(-920f, -1000f, 563f, 244f), vec4<f32>(-747f, 151f, -1000f, 442f), vec4<f32>(-439f, -619f, -632f, -315f), vec4<f32>(164f, -1563f, -1163f, -477f), vec4<f32>(1178f, -238f, 155f, -1335f), vec4<f32>(470f, 539f, 342f, -1754f), vec4<f32>(-781f, -1585f, 1000f, -844f), vec4<f32>(-1582f, -348f, -384f, 1130f), vec4<f32>(-904f, 1037f, -1124f, 1016f), vec4<f32>(-902f, -315f, 401f, 451f), vec4<f32>(1201f, 243f, -259f, 273f), vec4<f32>(1000f, 1470f, 1036f, -534f), vec4<f32>(-1471f, -1000f, -1116f, 1000f), vec4<f32>(-891f, -381f, 1687f, 277f), vec4<f32>(499f, 238f, -1000f, 512f), vec4<f32>(188f, -225f, -566f, -1479f), vec4<f32>(-533f, 643f, -546f, 1000f), vec4<f32>(-1949f, -226f, 2150f, -2769f), vec4<f32>(477f, -845f, 167f, 223f), vec4<f32>(-169f, -183f, 1132f, 889f), vec4<f32>(316f, 962f, -1624f, -1464f), vec4<f32>(-239f, -757f, -775f, -1000f), vec4<f32>(-659f, -1304f, 1282f, -1436f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec4<u32> {
    var var_0 = u_input.d.yx;
    let var_1 = (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.e.e.x, 1u, max(1u, u_input.b), arg_0.e.b >> (1u % 32u)), arg_0.e.d, _wgslsmith_div_vec4_u32(~vec4<u32>(9200u, 0u, 0u, arg_0.e.d.x), select(arg_0.e.d, arg_0.b.d, true))) ^ ~(~abs(vec4<u32>(arg_0.b.a, arg_0.b.a, 4294967295u, 68809u)))) >> (arg_0.b.d % vec4<u32>(32u));
    global1 = array<Struct_4, 29>();
    var var_2 = Struct_1(var_1.x, _wgslsmith_sub_u32(u_input.b, arg_0.b.a), select(arg_0.e.c, select(arg_0.b.c, !vec3<bool>(global0.c, global0.c, global0.c), arg_0.e.c), !((-25986i & var_0.x) <= abs(-13227i))), _wgslsmith_div_vec4_u32(select(vec4<u32>(global0.b.x, 20402u, global0.b.x, _wgslsmith_clamp_u32(arg_0.e.b, arg_0.e.d.x, 1u)), vec4<u32>(0u, arg_0.b.e.x, _wgslsmith_mod_u32(arg_0.b.a, global0.b.x), u_input.b), global0.c), vec4<u32>(abs(var_1.x) >> (_wgslsmith_sub_u32(u_input.c.x, 33945u) % 32u), global0.b.x << ((5343u | arg_0.e.a) % 32u), ~_wgslsmith_clamp_u32(4294967295u, u_input.c.x, 4294967295u), _wgslsmith_dot_vec4_u32(arg_0.b.d, max(var_1, arg_0.b.d)))), countOneBits(var_1.yzw));
    global3 = array<vec4<f32>, 26>();
    return ~_wgslsmith_add_vec4_u32(arg_0.e.d, select((vec4<u32>(0u, var_2.e.x, var_2.d.x, global0.a.x) | var_2.d) << (vec4<u32>(4294967295u, global0.b.x, 4294967295u, var_2.d.x) % vec4<u32>(32u)), ~select(vec4<u32>(var_2.a, 1548u, var_2.d.x, u_input.c.x), vec4<u32>(83767u, 4294967295u, global0.b.x, var_2.a), vec4<bool>(false, arg_0.e.c.x, global0.c, global0.c)), arg_0.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec4<u32>) -> vec4<u32> {
    global2 = ~(~abs(~global0.a.x));
    let var_0 = arg_1.a.c.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1556f)) - 1805f)), -1848f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1134f))), 450f));
    global1 = array<Struct_4, 29>();
    let var_2 = Struct_1(arg_3.x, u_input.e, arg_1.a.b.c, vec4<u32>(global0.b.x, countOneBits(u_input.b), 0u, max(~arg_3.x, _wgslsmith_mod_u32(69095u, u_input.e)) | _wgslsmith_mult_u32(arg_2, ~1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(countOneBits(min(global0.a, arg_3.yz)), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 0u), vec2<u32>(1u, 0u))), 604u, _wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_2, 50704u), arg_2)));
    return _wgslsmith_div_vec4_u32((vec4<u32>(~var_2.d.x, func_3(arg_1.a, arg_0.yyz).x, 48571u, 14274u) << (vec4<u32>(_wgslsmith_mod_u32(arg_3.x, arg_2), 4982u, var_2.a, 1657u) % vec4<u32>(32u))) | ~var_2.d, ~abs(vec4<u32>(18261u, ~arg_2, _wgslsmith_clamp_u32(44683u, 1u, u_input.e), arg_2)));
}

fn func_2(arg_0: Struct_3) -> vec2<u32> {
    global1 = array<Struct_4, 29>();
    global2 = _wgslsmith_dot_vec4_u32(~func_4(arg_0.a.c, Struct_3(Struct_2(arg_0.a.a, Struct_1(62137u, arg_0.a.e.d.x, vec3<bool>(true, global0.c, true), vec4<u32>(4294967295u, 22626u, 37884u, 0u), vec3<u32>(56542u, global0.a.x, arg_0.a.e.b)), vec4<i32>(-2147483647i, arg_0.a.c.x, 29212i, u_input.a), global0.c, Struct_1(40690u, 4294967295u, arg_0.a.e.c, arg_0.a.e.d, arg_0.a.e.e))), 4294967295u, func_3(arg_0.a, select(vec3<i32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), u_input.d, arg_0.a.b.c))), arg_0.a.b.d);
    let var_0 = arg_0.a.a;
    var var_1 = ~(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec3_i32(u_input.d, arg_0.a.c.xwz)) & -1i);
    global3 = array<vec4<f32>, 26>();
    return ~u_input.c;
}

fn func_5(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_2(!select(vec4<bool>(global0.c, false, global0.c, global0.c), select(vec4<bool>(false, true, global0.c, global0.c), vec4<bool>(global0.c, false, global0.c, global0.c), global0.c), global0.c), Struct_1(_wgslsmith_div_u32(1u, 1u), abs(~65242u), vec3<bool>(true, global0.c == true, true), vec4<u32>(min(global0.a.x, 0u), arg_1.x ^ global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, arg_1.x), vec4<u32>(u_input.c.x, u_input.c.x, global0.b.x, 30871u)), 25671u), vec3<u32>(u_input.c.x, 0u | u_input.b, ~arg_1.x)), -_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_0, arg_0, -44360i, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 0i, 2745i, u_input.d.x), vec4<i32>(-51752i, -2147483647i, -34189i, arg_0))), global0.c, Struct_1(arg_1.x, 4294967295u, !select(vec3<bool>(true, true, global0.c), vec3<bool>(true, false, false), false), ~vec4<u32>(global0.a.x, 4294967295u, u_input.e, arg_1.x), func_3(Struct_2(vec4<bool>(global0.c, global0.c, true, global0.c), Struct_1(global0.b.x, arg_1.x, vec3<bool>(false, global0.c, global0.c), vec4<u32>(arg_1.x, global0.a.x, 34797u, arg_1.x), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)), vec4<i32>(2147483647i, 1i, 34574i, 0i), true, Struct_1(0u, 10018u, vec3<bool>(false, global0.c, true), vec4<u32>(arg_1.x, global0.a.x, arg_1.x, 0u), vec3<u32>(u_input.c.x, arg_1.x, global0.b.x))), vec3<i32>(u_input.d.x, 67242i, -43861i)).xzy)));
    var var_1 = _wgslsmith_clamp_u32(2725u, arg_1.x, _wgslsmith_mod_u32(u_input.b, reverseBits(max(~var_0.a.b.a, func_3(var_0.a, var_0.a.c.ywy).x))));
    let var_2 = _wgslsmith_clamp_vec2_i32(u_input.d.zx, select(var_0.a.c.zw, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(56907i, u_input.d.x), vec2<i32>(2147483647i, var_0.a.c.x) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), u_input.d.zx, min(vec2<i32>(arg_0, 2147483647i), u_input.d.zy | vec2<i32>(-6942i, u_input.a))), select(vec2<bool>(true, true), vec2<bool>(global0.c, false != var_0.a.d), !(!var_0.a.a.yx))), -(~select(abs(vec2<i32>(-9888i, 1i)), u_input.d.xx, var_0.a.e.c.x | global0.c)));
    let var_3 = max(_wgslsmith_clamp_u32(countOneBits(6177u), arg_1.x, arg_1.x | reverseBits(~arg_1.x)), 25382u);
    let var_4 = select(vec2<i32>(max(2147483647i, -2147483647i), ~2147483647i ^ var_2.x), var_0.a.c.zw, vec2<bool>(!(!all(var_0.a.a.yy)), any(!(!var_0.a.e.c.xy))));
    return Struct_2(select(!select(!vec4<bool>(true, false, true, global0.c), !var_0.a.a, true), select(select(vec4<bool>(global0.c, true, global0.c, global0.c), vec4<bool>(var_0.a.e.c.x, var_0.a.b.c.x, global0.c, true), var_0.a.a), !var_0.a.a, select(select(vec4<bool>(global0.c, false, false, true), var_0.a.a, false), var_0.a.a, !var_0.a.b.c.x)), var_0.a.d), Struct_1(arg_1.x, 0u, select(!var_0.a.e.c, select(select(var_0.a.e.c, vec3<bool>(global0.c, global0.c, var_0.a.b.c.x), vec3<bool>(true, global0.c, false)), var_0.a.b.c, var_0.a.a.yww), var_0.a.b.c), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(arg_1.x, 22682u, u_input.c.x, 20907u) >> (vec4<u32>(12697u, var_3, 1u, var_0.a.e.b) % vec4<u32>(32u)), abs(vec4<u32>(global0.a.x, u_input.e, arg_1.x, global0.b.x))), vec4<u32>(75099u, ~1u, 0u | var_3, _wgslsmith_div_u32(global0.a.x, 0u)), vec4<u32>(func_3(Struct_2(var_0.a.a, var_0.a.b, var_0.a.c, true, var_0.a.e), u_input.d).x, arg_1.x, ~arg_1.x, _wgslsmith_dot_vec4_u32(var_0.a.b.d, var_0.a.b.d))), var_0.a.b.d.xyy | var_0.a.e.d.zzx), vec4<i32>(firstTrailingBit(-41517i), countOneBits(var_0.a.c.x), ~_wgslsmith_sub_i32(abs(var_2.x), var_4.x), 1i), true, var_0.a.b);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    let var_0 = arg_3;
    var var_1 = Struct_2(arg_2.a, func_5(4605i, vec2<u32>(u_input.b, 1u)).b, _wgslsmith_div_vec4_i32(arg_2.c, ~(-arg_2.c)) & vec4<i32>(firstTrailingBit(-19454i) ^ (arg_2.c.x | -2147483647i), u_input.d.x, -_wgslsmith_dot_vec4_i32(arg_2.c, arg_2.c), ~(-u_input.d.x)), true, func_5(arg_2.c.x, vec2<u32>(~0u, func_2(Struct_3(Struct_2(arg_2.a, Struct_1(arg_3, 4294967295u, arg_2.e.c, vec4<u32>(86432u, arg_2.e.d.x, 4294967295u, var_0), vec3<u32>(3535u, arg_2.b.a, 6951u)), arg_2.c, arg_0.x, arg_2.b))).x)).e);
    let var_2 = !vec3<bool>(all(!func_5(var_1.c.x, u_input.c).e.c), all(func_5(-30412i, ~vec2<u32>(4294967295u, var_0)).b.c.yy), arg_2.a.x);
    var var_3 = arg_2.e;
    let var_4 = 182f;
    return Struct_4(~countOneBits(vec2<u32>(arg_1.x, var_1.b.d.x)) >> (arg_2.e.e.xx % vec2<u32>(32u)), vec2<u32>(var_1.b.e.x, 4294967295u), arg_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> vec4<bool> {
    global0 = func_6(arg_0.a.b.c.yy, _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~u_input.e, _wgslsmith_mod_u32(57467u, u_input.e)), ~(~u_input.e), _wgslsmith_dot_vec2_u32(u_input.c, select(u_input.c, arg_0.a.e.e.xy, arg_0.a.b.c.x)), _wgslsmith_add_u32(~u_input.c.x, reverseBits(arg_0.a.b.d.x))), arg_0.a.b.d), func_5(~u_input.d.x, max(func_2(arg_0), vec2<u32>(u_input.e | 0u, func_2(arg_0).x))), _wgslsmith_clamp_u32(arg_0.a.b.a, global0.a.x, global0.a.x));
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_2, arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(exp2(arg_2)));
    return select(!arg_0.a.a, !vec4<bool>((global0.c && global0.c) & (arg_1 >= arg_1), (2147483647i >> (arg_0.a.e.d.x % 32u)) >= -7500i, any(!vec3<bool>(arg_0.a.b.c.x, arg_0.a.b.c.x, global0.c)), !(!global0.c)), select(arg_0.a.a, !vec4<bool>(func_5(5408i, u_input.c).e.c.x, select(global0.c, false, global0.c), global0.c, false), arg_0.a.a));
}

fn func_7(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<u32>) -> u32 {
    var var_0 = all(!select(vec2<bool>(true, true), arg_1.wx, select(vec2<bool>(false, false), func_5(21883i, vec2<u32>(2952u, global0.b.x)).a.xz, arg_1.yw)));
    global3 = array<vec4<f32>, 26>();
    var var_1 = abs(_wgslsmith_div_u32(func_5(_wgslsmith_dot_vec2_i32(vec2<i32>(-77926i, 40990i), u_input.d.xy) ^ ~(-2147483647i), ~firstLeadingBit(vec2<u32>(global0.b.x, arg_2.x))).e.a, select(0u, 643u, arg_0)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f + _wgslsmith_f_op_f32(round(986f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(385f, -870f))) - 1108f))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1422f), -188f, -901f);
    return _wgslsmith_mod_u32(arg_2.x << (40033u % 32u), countOneBits(func_6(func_1(Struct_3(Struct_2(arg_1, Struct_1(59767u, u_input.c.x, vec3<bool>(true, arg_0, arg_0), arg_2, vec3<u32>(31200u, 0u, arg_2.x)), vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x), global0.c, Struct_1(u_input.e, arg_2.x, arg_1.ywz, vec4<u32>(33883u, arg_2.x, 117679u, 1u), arg_2.xzw))), _wgslsmith_add_i32(0i, 29917i), _wgslsmith_div_f32(-553f, var_3.x)).xy, firstTrailingBit(arg_2), Struct_2(!vec4<bool>(false, false, false, arg_1.x), Struct_1(global0.a.x, u_input.c.x, arg_1.wyz, arg_2, vec3<u32>(arg_2.x, u_input.c.x, 1814u)), min(vec4<i32>(-27651i, -29i, u_input.d.x, -2147483647i), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, -1i)), select(arg_0, arg_0, false), Struct_1(1u, 34420u, vec3<bool>(arg_0, arg_0, arg_0), arg_2, arg_2.zxy)), arg_2.x).b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-559f, -111f, -516f, 2358f) - global3[_wgslsmith_index_u32(global0.a.x, 26u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(384f)), 320f, _wgslsmith_f_op_f32(sign(1886f)), _wgslsmith_f_op_f32(969f * -1118f))))) + _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(~4725u, 26u)] - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global3[_wgslsmith_index_u32(~u_input.e, 26u)])) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, -643f, -1044f, 967f))))));
    let var_1 = ~(~(~18249u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(232u, 26u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global3[_wgslsmith_index_u32(firstLeadingBit(global0.b.x), 26u)], _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(4294967295u, 26u)] - vec4<f32>(var_0.x, -1684f, -1000f, 304f)))) + global3[_wgslsmith_index_u32(~7041u, 26u)])) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)))), 26596u >= u_input.e)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1009f))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(1103f)))));
    global2 = func_7(global0.c, select(!(!vec4<bool>(false, true, global0.c, false)), !(!vec4<bool>(global0.c, global0.c, true, global0.c)), select(!vec4<bool>(global0.c, true, global0.c, global0.c), select(vec4<bool>(global0.c, global0.c, global0.c, true), vec4<bool>(true, global0.c, false, global0.c), vec4<bool>(false, global0.c, false, global0.c)), func_1(Struct_3(Struct_2(vec4<bool>(global0.c, global0.c, global0.c, global0.c), Struct_1(u_input.e, 54391u, vec3<bool>(global0.c, false, false), vec4<u32>(1u, 4200u, u_input.c.x, 4294967295u), vec3<u32>(1u, global0.a.x, u_input.e)), vec4<i32>(u_input.a, u_input.a, u_input.d.x, 0i), true, Struct_1(50975u, u_input.e, vec3<bool>(global0.c, false, global0.c), vec4<u32>(10809u, 46912u, u_input.e, u_input.b), vec3<u32>(4294967295u, 61552u, global0.b.x)))), u_input.d.x, var_2.x))), ~countOneBits(vec4<u32>(var_1, u_input.e, 1u, u_input.c.x) ^ vec4<u32>(global0.a.x, var_1, global0.b.x, global0.a.x))) | 1u;
    var var_3 = func_1(Struct_3(func_5(_wgslsmith_mult_i32(max(u_input.a, -62494i), -u_input.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c))), i32(-1i) * -19602i, _wgslsmith_f_op_f32(var_0.x * var_0.x));
    let var_4 = vec2<i32>(abs(-u_input.d.x), ~1i) & -(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, u_input.d.x), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(1i, 26215i))) | abs(u_input.d.xz));
    var var_5 = vec2<f32>(486f, var_2.x);
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u ^ _wgslsmith_mod_u32(~(var_1 | 39569u), 190u >> (_wgslsmith_mult_u32(global0.a.x, 17627u) % 32u)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-548f, -1593f)) * _wgslsmith_f_op_f32(max(var_5.x, -333f))), var_5.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-404f)) - _wgslsmith_div_f32(-227f, var_2.x)), _wgslsmith_f_op_f32(-1197f + _wgslsmith_div_f32(var_2.x, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(-1f), -417f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x))), -1595f)), var_0.yxz);
}

