struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(i32(-2147483648), -21941i);

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(1139f, 1286f, -1299f, 804f), vec4<f32>(1891f, -957f, -1713f, -1489f), vec4<f32>(-1035f, -1281f, -237f, -1654f), vec4<f32>(-1025f, -2191f, -356f, -183f), vec4<f32>(771f, 1136f, 820f, 128f), vec4<f32>(571f, -183f, -1047f, 1000f), vec4<f32>(-720f, -250f, 973f, 1128f), vec4<f32>(-405f, 2293f, 1952f, -333f), vec4<f32>(1000f, -430f, 662f, 717f), vec4<f32>(-1367f, -1006f, -1280f, 1000f), vec4<f32>(-833f, 137f, -123f, -358f), vec4<f32>(-186f, -320f, -745f, -1306f), vec4<f32>(1776f, 1043f, -858f, -1078f), vec4<f32>(1179f, 550f, -771f, -581f));

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(43890i, -13392i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 11741i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(59953i, 12082i), vec2<i32>(-22082i, -55459i), vec2<i32>(-28030i, 15442i), vec2<i32>(59068i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-45557i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -33615i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 10032i), vec2<i32>(-1i, -14512i), vec2<i32>(-18533i, 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(7366i, 0i), vec2<i32>(-41011i, 5864i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(8685i, 7606i), vec2<i32>(27045i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(36519i, 24388i), vec2<i32>(0i, -1i), vec2<i32>(2063i, 66768i), vec2<i32>(0i, -55259i), vec2<i32>(5781i, 1i), vec2<i32>(0i, 21042i), vec2<i32>(i32(-2147483648), 37998i), vec2<i32>(0i, 6804i), vec2<i32>(i32(-2147483648), 19106i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec4<i32> {
    let var_0 = false;
    let var_1 = Struct_5(firstTrailingBit(~vec2<u32>(arg_2.x, 4294967295u) ^ ~arg_2) & ~select(arg_2 >> (arg_0.b.wy % vec2<u32>(32u)), vec2<u32>(1u, arg_0.a.d.x), true), vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1221f * 988f) + _wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x)) <= _wgslsmith_f_op_f32(arg_0.c.x - -274f)), _wgslsmith_dot_vec4_u32(arg_0.a.d, ~arg_0.b), arg_1.x);
    var var_2 = arg_0;
    let var_3 = -42262i;
    global3 = array<vec2<i32>, 31>();
    return _wgslsmith_mod_vec4_i32(firstTrailingBit(firstLeadingBit(max(-vec4<i32>(36315i, -4744i, 44536i, 1i), firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(14058u, 2u)], u_input.a.x, 2147483647i, 1i))))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_2.a.a, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, var_3, arg_0.a.a, -17023i) & vec4<i32>(-1i, 1i, 305i, 2147483647i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_2.a.a, arg_0.a.a, -70306i)) ^ -firstTrailingBit(-vec4<i32>(-54586i, -13202i, var_2.a.a, 1i)));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_5) -> vec3<u32> {
    global0 = array<i32, 2>();
    global1 = array<vec4<f32>, 14>();
    let var_0 = vec2<bool>(_wgslsmith_dot_vec4_i32(select(func_3(Struct_4(Struct_1(0i, arg_2.c, vec3<u32>(arg_2.c, arg_2.a.x, arg_2.c), vec4<u32>(0u, 18423u, arg_2.c, arg_2.a.x)), vec4<u32>(arg_2.c, arg_2.a.x, 1u, arg_2.c), vec3<f32>(1156f, -714f, arg_1), arg_0), vec3<bool>(false, false, global2.x), arg_2.a), ~vec4<i32>(global0[_wgslsmith_index_u32(arg_2.c, 2u)], global0[_wgslsmith_index_u32(arg_2.c, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], 47791i), true), vec4<i32>(27310i, firstTrailingBit(27186i), global0[_wgslsmith_index_u32(4294967295u, 2u)] >> (0u % 32u), -30428i)) > global0[_wgslsmith_index_u32(73955u, 2u)], arg_2.b.x);
    var var_1 = Struct_2(vec2<i32>(max(global0[_wgslsmith_index_u32(abs(~0u), 2u)], -u_input.a.x), firstLeadingBit(u_input.a.x)), _wgslsmith_sub_u32(arg_2.a.x, ~(~arg_2.a.x & arg_2.a.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(875f, -670f) * vec2<f32>(arg_1, arg_0)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1760f, arg_0), vec2<f32>(261f, 181f), false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-951f, arg_0), vec2<f32>(-176f, 312f), vec2<bool>(false, arg_2.d))))))), arg_2.c, Struct_1(i32(-1i) * -1i, arg_2.a.x, firstLeadingBit(vec3<u32>(firstLeadingBit(arg_2.a.x), _wgslsmith_mult_u32(4294967295u, 1u), ~arg_2.c)), vec4<u32>(arg_2.a.x, arg_2.a.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(40236u, 4294967295u, 4294967295u, arg_2.a.x), vec4<u32>(50423u, arg_2.c, 4294967295u, 440u)), select(1u, 4294967295u, arg_2.d), 2624u >= arg_2.a.x), ~arg_2.a.x)));
    var var_2 = var_0.x;
    return min(var_1.e.c, vec3<u32>(arg_2.a.x & 4294967295u, arg_2.a.x | var_1.b, ~(~arg_2.c)));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(arg_1.a, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.c.x, arg_1.b, ~arg_1.b), 2u)]);
    global1 = array<vec4<f32>, 14>();
    var var_1 = global2.x;
    var_1 = false;
    global2 = select(!vec3<bool>(global2.x, true, countOneBits(arg_1.c.x) < select(arg_1.b, arg_1.b, true)), !(!select(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, false), vec3<bool>(false, global2.x, global2.x)), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, false), vec3<bool>(false, false, global2.x)), all(vec3<bool>(false, global2.x, false)))), (arg_1.d.x != _wgslsmith_add_u32(~43376u, arg_1.c.x >> (arg_1.b % 32u))) & !(_wgslsmith_f_op_f32(trunc(arg_0)) <= _wgslsmith_f_op_f32(f32(-1f) * -2023f)));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> Struct_1 {
    global3 = array<vec2<i32>, 31>();
    let var_0 = Struct_3(select(!vec3<bool>(any(vec4<bool>(global2.x, global2.x, true, global2.x)), global2.x, global2.x), !select(!vec3<bool>(global2.x, true, true), vec3<bool>(true, false, global2.x), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, global2.x, global2.x), !vec3<bool>(false, global2.x, true))));
    var var_1 = var_0.a.x;
    let var_2 = Struct_5(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.b.zw, _wgslsmith_sub_vec2_u32(arg_0.d.zw, vec2<u32>(16283u, arg_0.d.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_0.c.x), arg_1.a.d.x, _wgslsmith_div_u32(4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_sub_u32(arg_1.a.c.x, 14513u), ~1u, arg_0.d.x))), !select(vec2<bool>(any(global2.zz), any(vec3<bool>(true, false, var_0.a.x))), select(vec2<bool>(false, global2.x), var_0.a.xx, any(var_0.a)), select(vec2<bool>(global2.x, var_0.a.x), select(var_0.a.yy, global2.zx, vec2<bool>(global2.x, global2.x)), global2.x && true)), abs(~(~arg_1.a.c.x)), global2.x);
    let var_3 = (true == global2.x) && true;
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2734f - -1987f) * 2372f) + 957f), Struct_1(~1i, arg_0.d.x, arg_0.c, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.a.d.x, 31450u, arg_0.b ^ 54942u), ~_wgslsmith_clamp_vec4_u32(arg_0.d, vec4<u32>(arg_0.b, 110225u, 1u, arg_1.a.b), vec4<u32>(arg_0.c.x, arg_0.d.x, var_2.a.x, 82552u)))));
}

fn func_1() -> Struct_2 {
    global3 = array<vec2<i32>, 31>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(833f)) * _wgslsmith_f_op_f32(abs(496f))) - _wgslsmith_f_op_f32(-1000f * 652f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f * var_0));
    let var_2 = global2.x;
    var var_3 = Struct_4(func_5(func_4(_wgslsmith_f_op_f32(-var_0), Struct_1(34437i, _wgslsmith_mult_u32(0u, 33608u), func_2(var_1, 1000f, Struct_5(vec2<u32>(19210u, 0u), vec2<bool>(global2.x, global2.x), 0u, true)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 62813u, 0u, 26102u), vec4<u32>(4294967295u, 3083u, 17706u, 31155u)))), Struct_4(func_4(-1000f, func_4(-327f, Struct_1(global0[_wgslsmith_index_u32(0u, 2u)], 4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(1u, 53257u, 1u, 122u)))), select(firstLeadingBit(vec4<u32>(31689u, 59631u, 1u, 20859u)), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<bool>(global2.x, false, true, false)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1090f, var_0)))), _wgslsmith_f_op_f32(max(-608f, _wgslsmith_f_op_f32(-716f - -1115f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, ~_wgslsmith_clamp_u32(48902u, 0u, 1u), ~1u), vec4<u32>(abs(~4294967295u), max(_wgslsmith_mult_u32(10418u, 4776u), 1363u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(43828u, 70500u)), 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(-var_1)), var_1, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(var_0, var_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-471f, 907f, var_0) + vec3<f32>(-261f, var_1, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 287f, var_1) + vec3<f32>(137f, var_0, 1587f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, 701f, var_0), vec3<f32>(724f, 1007f, var_0)))))), var_1);
    return Struct_2(vec2<i32>(-1i) * -abs(max(vec2<i32>(1i, 0i), global3[_wgslsmith_index_u32(var_3.b.x, 31u)])), 0u, var_3.c.zx, 0u, func_5(Struct_1(_wgslsmith_mult_i32(30635i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_3.a.b, 15171u), 2u)]), var_3.b.x, ~vec3<u32>(4294967295u, var_3.a.c.x, 51437u), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.c.x, 1233u, 4294967295u, 4294967295u), vec4<u32>(4705u, var_3.b.x, var_3.b.x, var_3.a.c.x), vec4<u32>(16223u, var_3.b.x, 72698u, 27836u)), max(vec4<u32>(var_3.a.d.x, var_3.a.c.x, var_3.b.x, 1u), var_3.a.d))), Struct_4(Struct_1(global0[_wgslsmith_index_u32(4294967295u >> (var_3.a.d.x % 32u), 2u)], var_3.b.x, _wgslsmith_div_vec3_u32(var_3.a.c, var_3.a.d.zxw), var_3.b), vec4<u32>(~4294967295u, 34257u, var_3.a.d.x, _wgslsmith_clamp_u32(40029u, 3397u, var_3.a.d.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -771f), 708f, _wgslsmith_f_op_f32(-var_1)), 132f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec3<i32>(-2147483647i, var_0.e.a, -2147483647i);
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global0[_wgslsmith_index_u32(50445u, 2u)], var_1.x, var_1.x), vec4<i32>(-28436i, -24525i, -1i, global0[_wgslsmith_index_u32(11233u, 2u)])), firstLeadingBit(vec4<i32>(0i, var_0.e.a, global0[_wgslsmith_index_u32(var_0.d, 2u)], var_1.x))), -(~vec4<i32>(global0[_wgslsmith_index_u32(var_0.e.b, 2u)], global0[_wgslsmith_index_u32(var_0.b, 2u)], 2147483647i, var_1.x))), _wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(var_1.x, -13569i, 9425i, u_input.a.x)), vec4<i32>(max(-2147483647i, var_1.x), _wgslsmith_sub_i32(-1i, var_1.x), 0i, func_4(var_0.c.x, var_0.e).a))), func_3(Struct_4(func_1().e, ~(~vec4<u32>(52934u, var_0.b, var_0.d, var_0.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 474f, -471f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 825f, 937f) + vec3<f32>(var_0.c.x, 1385f, 770f))), -656f), vec3<bool>(any(select(vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(false, true, false, false), vec4<bool>(false, global2.x, global2.x, global2.x))), !global2.x | global2.x, _wgslsmith_clamp_i32(0i, var_0.a.x, u_input.a.x) < abs(-1i)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -175f), var_0.c.x, Struct_5(_wgslsmith_add_vec2_u32(var_0.e.d.ww, vec2<u32>(var_0.e.b, 49265u)), vec2<bool>(global2.x, global2.x), ~64883u, all(vec3<bool>(global2.x, global2.x, false)))).xx));
    var_0 = func_1();
    let var_3 = func_5(Struct_1(min(~(-31918i), -1i), reverseBits(0u), reverseBits(vec3<u32>(firstTrailingBit(var_0.b), 4294967295u, 74649u)), var_0.e.d), Struct_4(func_4(var_0.c.x, Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_0.b), 2u)], var_0.e.d.x ^ 49532u, vec3<u32>(var_0.e.b, var_0.e.d.x, var_0.b), var_0.e.d & vec4<u32>(var_0.d, 52125u, 44199u, var_0.e.c.x))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(25251u, 0u, var_0.d, var_0.b), vec4<u32>(var_0.e.b, var_0.d, var_0.e.b, var_0.b)), var_0.e.d), vec4<u32>(_wgslsmith_mult_u32(var_0.e.b, 0u), var_0.b, var_0.e.c.x ^ var_0.b, _wgslsmith_clamp_u32(3770u, 2334u, 66565u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(783f, var_0.c.x, -1303f))) + vec3<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)), -902f, var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f * var_0.c.x))));
    var var_4 = Struct_3(vec3<bool>(global2.x, true, !any(vec4<bool>(false, true, true, false)) != true));
    var_4 = Struct_3(select(select(vec3<bool>(true, !var_4.a.x, !var_4.a.x), select(var_4.a, select(var_4.a, var_4.a, vec3<bool>(false, global2.x, var_4.a.x)), true), select(all(var_4.a), true, true)), var_4.a, !any(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(true, false, global2.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(769f - -754f))))), _wgslsmith_div_i32(firstLeadingBit(global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(4294967295u, 29395u), var_0.d), 2u)]), 19842i), ~(~(~(~var_0.e.d.xw))));
}

