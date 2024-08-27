struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(1u, vec3<bool>(true, true, false), 0i, 1i, -454f), Struct_3(0u, vec3<bool>(true, false, true), -1i, -10393i, 1000f), Struct_3(1u, vec3<bool>(false, false, true), 26825i, -1i, 305f), Struct_3(45483u, vec3<bool>(false, false, true), 1i, 30577i, -156f), Struct_3(61958u, vec3<bool>(false, false, false), 42414i, 29448i, 408f), Struct_3(1u, vec3<bool>(false, false, false), 2147483647i, -10101i, 1864f), Struct_3(37409u, vec3<bool>(false, false, false), i32(-2147483648), -34279i, 639f), Struct_3(0u, vec3<bool>(true, false, true), -1i, 2147483647i, 430f), Struct_3(34850u, vec3<bool>(true, true, true), 2147483647i, 2147483647i, -1405f), Struct_3(29352u, vec3<bool>(false, true, false), -42369i, -13649i, -439f), Struct_3(75095u, vec3<bool>(false, true, true), -47434i, 0i, 233f), Struct_3(19718u, vec3<bool>(false, false, true), -1i, -22047i, 1000f), Struct_3(0u, vec3<bool>(false, true, true), 0i, -10253i, 307f), Struct_3(29697u, vec3<bool>(false, true, false), 12724i, 1i, -272f), Struct_3(0u, vec3<bool>(false, true, true), -14902i, -26066i, -908f));

var<private> global1: Struct_4;

var<private> global2: i32 = 7360i;

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(32435u, vec3<bool>(false, true, false), i32(-2147483648), -28503i, -1256f), Struct_3(95610u, vec3<bool>(false, true, true), 2147483647i, 2147483647i, 1015f), Struct_3(24424u, vec3<bool>(true, true, true), -25974i, -21014i, -785f), Struct_3(0u, vec3<bool>(false, true, false), 0i, 7018i, 303f), Struct_3(61930u, vec3<bool>(false, true, false), 0i, 1i, 1000f), Struct_3(15572u, vec3<bool>(true, true, true), 0i, 9304i, -379f), Struct_3(30529u, vec3<bool>(true, false, true), 39240i, 22386i, 937f), Struct_3(31738u, vec3<bool>(true, true, false), 0i, -43900i, -468f), Struct_3(24599u, vec3<bool>(false, false, true), 7955i, -35i, 1918f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = Struct_4(countOneBits(vec4<i32>(arg_1.c, 44880i, _wgslsmith_add_i32(0i, ~(-20536i)), _wgslsmith_clamp_i32(i32(-1i) * -17611i, ~global1.b, global1.b))), abs(-global1.b), _wgslsmith_clamp_i32(global1.a.x, 2147483647i, 2147483647i), Struct_2(Struct_1(true, abs(vec2<i32>(-12635i, u_input.a)), firstLeadingBit(28381i)), global1.d.b, arg_0.zxy), vec2<u32>(13251u, _wgslsmith_mod_u32(abs(~1u), u_input.c & abs(14336u))));
    var var_1 = ~(_wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0.c, 959i), ~var_0.d.b.c)) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(20170u, 0u, var_0.d.c.x, global1.d.c.x), vec4<u32>(0u, 4294967295u, u_input.c, 53253u))), ~1u) % 32u));
    global1 = var_0;
    global0 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_div_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(max(-1i, -1i), u_input.d.x), vec2<i32>(abs(global1.d.a.b.x), var_0.b))), u_input.d.zw);
    return ~31205u;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = !(!vec4<bool>(arg_2.x, global1.d.a.a, arg_0.d <= global1.d.a.b.x, true));
    global2 = u_input.a << (65978u % 32u);
    let var_1 = arg_0.e;
    let var_2 = Struct_4(~min(u_input.d, firstTrailingBit(u_input.d)), ~_wgslsmith_mod_i32(countOneBits(firstLeadingBit(u_input.e)), -(i32(-1i) * -2147483647i)), u_input.a, Struct_2(Struct_1(false, vec2<i32>(1i >> (arg_3.x % 32u), 14709i), _wgslsmith_mod_i32(2147483647i, i32(-1i) * -25504i)), Struct_1(all(!vec4<bool>(global1.d.b.a, arg_2.x, false, var_0.x)), ~(-global1.d.a.b), ~(-1i) | (u_input.e << (1u % 32u))), select(~reverseBits(arg_3), _wgslsmith_mod_vec3_u32(countOneBits(arg_3), select(vec3<u32>(arg_0.a, arg_3.x, 4294967295u), vec3<u32>(4294967295u, 0u, arg_0.a), arg_2.x)), all(var_0))), global1.e);
    global0 = array<Struct_3, 15>();
    return vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(41107u, _wgslsmith_mod_u32(u_input.c, 60704u)) & func_3(~vec4<u32>(19491u, 38327u, 27929u, arg_3.x), Struct_3(0u, var_0.wxy, -22676i, u_input.a, -1716f), ~arg_3.x), 1u), 80705u, arg_1, select(37953u, reverseBits(u_input.b), arg_0.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = func_4(global3[_wgslsmith_index_u32(func_3(_wgslsmith_sub_vec4_u32(max(~vec4<u32>(global1.e.x, arg_1.c.x, global1.e.x, arg_1.c.x), ~vec4<u32>(arg_1.c.x, 45909u, global1.e.x, 0u)), ~vec4<u32>(arg_1.c.x, 4294967295u, u_input.b, global1.d.c.x)), Struct_3(~(~4294967295u), select(!vec3<bool>(global1.d.b.a, arg_0.a, true), vec3<bool>(arg_0.a, arg_0.a, global1.d.b.a), !vec3<bool>(arg_1.a.a, true, false)), firstTrailingBit(-global1.c), u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1515f + -113f))), global1.d.c.x), 9u)], 4294967295u, !(!select(!vec3<bool>(true, false, arg_1.b.a), vec3<bool>(false, global1.d.b.a, false), all(vec2<bool>(arg_0.a, global1.d.a.a)))), arg_1.c);
    global3 = array<Struct_3, 9>();
    var var_1 = select(firstTrailingBit(u_input.d), _wgslsmith_mod_vec4_i32(global1.a, global1.a), select(vec4<bool>(true, global1.d.b.a != true, all(vec4<bool>(false, true, arg_1.a.a, true)), arg_0.a), !(!vec4<bool>(true, true, arg_1.a.a, false)), arg_0.a)) ^ _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, arg_1.b.b.x, -2610i), vec4<i32>(56646i, global1.a.x, u_input.a, arg_0.b.x), _wgslsmith_mult_vec4_i32(global1.a, global1.a)), global1.a);
    var var_2 = global1.d.b;
    global1 = Struct_4(vec4<i32>(global1.b, (1i & global1.b) >> ((1u | firstTrailingBit(1u)) % 32u), u_input.d.x, min(arg_0.b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-24764i, arg_0.c, 34688i), global1.a.yyy), var_1.xwy << (vec3<u32>(global1.d.c.x, global1.e.x, arg_1.c.x) % vec3<u32>(32u))))), firstLeadingBit(-6022i) & max(-abs(2147483647i), ~global1.a.x), abs(max(_wgslsmith_mult_i32(23240i, arg_1.b.b.x) & abs(u_input.e), _wgslsmith_dot_vec2_i32(u_input.d.xw, vec2<i32>(global1.b, global1.c)))), Struct_2(global1.d.b, arg_0, vec3<u32>(~max(47338u, arg_1.c.x), ~u_input.c, var_0.x)), _wgslsmith_clamp_vec2_u32(var_0.wx, vec2<u32>(max(1u, 12013u), select(u_input.c, var_0.x, arg_1.b.a)), global1.e) >> (_wgslsmith_mult_vec2_u32(select(vec2<u32>(global1.d.c.x, var_0.x), vec2<u32>(arg_1.c.x, 23639u), vec2<bool>(true, arg_0.a)), ~countOneBits(vec2<u32>(var_0.x, var_0.x))) % vec2<u32>(32u)));
    return var_2.c;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> Struct_2 {
    global2 = arg_2;
    let var_0 = ~firstLeadingBit(_wgslsmith_clamp_i32(0i, func_2(Struct_1(true, u_input.d.xx, -5159i), Struct_2(global1.d.a, Struct_1(false, global1.a.xy, arg_2), global1.d.c)), u_input.a));
    var var_1 = abs(~vec3<i32>(firstTrailingBit(arg_2) >> (global1.e.x % 32u), ~(-1i), -_wgslsmith_dot_vec4_i32(global1.a, global1.a)));
    global0 = array<Struct_3, 15>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -714f) - _wgslsmith_div_f32(-322f, -774f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1723f)))))) * 618f));
    return global1.d;
}

fn func_5(arg_0: Struct_4) -> u32 {
    global3 = array<Struct_3, 9>();
    var var_0 = !all(!select(vec2<bool>(global1.d.b.a, arg_0.d.a.a), vec2<bool>(global1.d.a.a, global1.d.a.a), vec2<bool>(true, false)));
    var var_1 = func_1(max(vec4<u32>(~firstLeadingBit(u_input.c), func_4(Struct_3(21564u, vec3<bool>(arg_0.d.a.a, global1.d.b.a, true), 2147483647i, 2147483647i, -2506f), _wgslsmith_mult_u32(1u, 4294967295u), vec3<bool>(true, global1.d.a.a, global1.d.a.a), arg_0.d.c).x, 7983u, firstTrailingBit(21866u) & ~global1.e.x), _wgslsmith_mod_vec4_u32(~(vec4<u32>(arg_0.d.c.x, 0u, u_input.b, global1.d.c.x) << (vec4<u32>(u_input.b, global1.d.c.x, arg_0.d.c.x, u_input.c) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(23773u, 0u, global1.d.c.x, 4294967295u), vec4<u32>(0u, 0u, 49799u, 39685u)))), ~2147483647i, firstTrailingBit(-1i)).b;
    var var_2 = Struct_4(vec4<i32>(global1.c, arg_0.d.a.c, 12551i, -8353i), var_1.b.x, _wgslsmith_mult_i32(-54509i ^ u_input.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.c, 26985i), var_1.b.x)), global1.d, vec2<u32>(u_input.b, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(u_input.b, 37771u))) & _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.e.x << (arg_0.d.c.x % 32u), ~0u), ~global1.e));
    let var_3 = _wgslsmith_f_op_f32(min(1278f, _wgslsmith_f_op_f32(abs(1487f))));
    return 5284u;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_4) -> StorageBuffer {
    var var_0 = arg_0.b.x;
    let var_1 = Struct_2(arg_2.d.a, global1.d.b, _wgslsmith_sub_vec3_u32(global1.d.c, abs(vec3<u32>(global1.e.x, arg_0.a ^ arg_1.x, arg_1.x))));
    var var_2 = Struct_3(~(~(~4294967295u)), vec3<bool>(!(arg_2.b >= var_1.b.b.x), !all(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.b.x)), true), firstLeadingBit(func_1(vec4<u32>(1u, 1u, 1u, arg_0.a >> (global1.e.x % 32u)), -2147483647i, -_wgslsmith_mod_i32(-15295i, 9199i)).b.c), var_1.b.c, _wgslsmith_div_f32(arg_0.e, arg_0.e));
    var_0 = true;
    var var_3 = var_1.b;
    return StorageBuffer(_wgslsmith_mult_i32(2147483647i & global1.d.b.c, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e - _wgslsmith_f_op_f32(min(arg_0.e, arg_0.e))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.e - 1281f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_2.e)), _wgslsmith_f_op_f32(round(arg_0.e)))))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.e, -624f, var_2.e), vec3<f32>(614f, var_2.e, arg_0.e), arg_0.b.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_3(func_5(Struct_4(select(vec4<i32>(global1.c, global1.a.x, -2147483647i, 2147483647i), vec4<i32>(11378i, u_input.a, u_input.e, -39851i), vec4<bool>(global1.d.b.a, global1.d.b.a, global1.d.a.a, false)), countOneBits(u_input.a), reverseBits(global1.c), func_1(vec4<u32>(9122u, u_input.c, global1.d.c.x, 38291u), 1i, u_input.e), global1.d.c.yz)), !vec3<bool>(global1.d.b.a, true, all(vec3<bool>(true, global1.d.b.a, true))), -28780i, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(469f - _wgslsmith_f_op_f32(abs(425f))))), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(global1.e), vec2<u32>(u_input.c, global1.e.x) & select(vec2<u32>(u_input.b, 39043u), global1.e, global1.d.b.a)), vec2<u32>(_wgslsmith_mod_u32(~global1.d.c.x, global1.d.c.x), _wgslsmith_div_u32(u_input.c, 12471u))), Struct_4(u_input.d, global1.c, 2147483647i, func_1(max(~vec4<u32>(global1.d.c.x, 0u, 1352u, u_input.b), vec4<u32>(0u, 4294967295u, u_input.c, 11815u)), global1.d.b.c | 6439i, 8175i), _wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(global1.d.c.x, 1u)), vec2<u32>(u_input.c, global1.e.x))));
}

