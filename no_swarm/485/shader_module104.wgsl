struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 11>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> i32 {
    let var_0 = (940f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2.a.x))))) || true;
    var var_1 = arg_0.d.c;
    global1 = array<Struct_2, 11>();
    global1 = array<Struct_2, 11>();
    global0 = true;
    return arg_3.c.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    let var_0 = Struct_4(Struct_3(vec2<f32>(1327f, 1f), _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(8466u, u_input.a, 4294967295u, 43790u), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), u_input.a | u_input.a), 4294967295u), _wgslsmith_div_i32(max(1i, ~(-2147483647i)), -93i), Struct_1(true, vec3<bool>(!arg_0.x, false, arg_0.x), true), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(473u, u_input.a), vec2<u32>(u_input.a, u_input.a)))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1705f, -246f)), 1f), _wgslsmith_clamp_u32(~1u >> ((u_input.a | 29266u) % 32u), u_input.a, u_input.a), 1i >> (~min(u_input.a, u_input.a) % 32u), Struct_1(true, arg_1.b, arg_0.x), abs(firstLeadingBit(vec2<u32>(1u, 4294967295u)))), vec2<i32>(41287i << (~(~u_input.a) % 32u), firstTrailingBit(_wgslsmith_add_i32(-11280i, -27395i)) << (max(firstLeadingBit(4294967295u), _wgslsmith_add_u32(5436u, u_input.a)) % 32u)), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(func_3(Struct_3(vec2<f32>(110f, 738f), 4294967295u, -6476i, Struct_1(arg_0.x, arg_1.b, arg_1.b.x), vec2<u32>(u_input.a, 21387u)), 31719i, Struct_3(vec2<f32>(634f, -260f), 38221u, 1i, arg_1, vec2<u32>(u_input.a, 9813u)), Struct_4(Struct_3(vec2<f32>(1754f, -331f), 12058u, -10222i, arg_1, vec2<u32>(u_input.a, 4294967295u)), Struct_3(vec2<f32>(1000f, -880f), u_input.a, -60027i, arg_1, vec2<u32>(4294967295u, 1u)), vec2<i32>(23860i, 51080i), vec4<i32>(-15228i, 0i, 0i, 1i), Struct_3(vec2<f32>(-124f, 512f), 1u, -2147483647i, Struct_1(true, arg_1.b, arg_0.x), vec2<u32>(u_input.a, u_input.a)))), reverseBits(2147483647i))), -_wgslsmith_add_i32(-9189i, firstLeadingBit(-1i)), 1i, abs(~1i)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1102f, -1000f)), abs(~1u), _wgslsmith_add_i32(-(i32(-1i) * -2147483647i), firstLeadingBit(27418i)), Struct_1(_wgslsmith_sub_u32(1u, u_input.a) > ~u_input.a, vec3<bool>(arg_0.x & true, true, all(vec3<bool>(false, false, arg_1.a))), arg_1.a == true), vec2<u32>(firstLeadingBit(~u_input.a), ~_wgslsmith_div_u32(u_input.a, u_input.a))));
    let var_1 = !arg_1.b;
    global0 = arg_1.b.x;
    let var_2 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(max(4294967295u, var_0.e.b), var_0.e.e.x | select(_wgslsmith_mult_u32(var_0.a.b, 75217u), var_0.e.b, true))), 11u)];
    let var_3 = any(vec2<bool>(true, true)) == false;
    return (!(true & arg_0.x) | !(_wgslsmith_dot_vec4_u32(var_2.b, vec4<u32>(var_0.a.e.x, var_0.b.e.x, u_input.a, 40752u)) >= firstTrailingBit(var_2.b.x))) && (((var_0.b.c != -var_0.b.c) || arg_0.x) && !(_wgslsmith_f_op_f32(sign(1137f)) != _wgslsmith_f_op_f32(-var_0.b.a.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = vec4<i32>(0i, -_wgslsmith_mod_i32(1i, arg_0.c), arg_0.c, -38317i);
    var var_1 = arg_0.d;
    var var_2 = global1[_wgslsmith_index_u32(arg_1.x, 11u)];
    var_0 = min(max(~(-vec4<i32>(var_0.x, arg_0.c, arg_0.c, var_0.x) | ~vec4<i32>(0i, var_0.x, 2147483647i, var_0.x)), abs(vec4<i32>(~arg_0.c, max(-1i, 40288i), func_3(arg_0, arg_0.c, Struct_3(vec2<f32>(arg_0.a.x, -1395f), 31787u, var_0.x, arg_0.d, arg_1.wz), Struct_4(arg_0, Struct_3(vec2<f32>(-211f, 2256f), 4294967295u, 0i, arg_0.d, arg_2), vec2<i32>(-15880i, var_0.x), vec4<i32>(arg_0.c, -12142i, -16770i, -27517i), Struct_3(arg_0.a, var_2.b.x, -1i, Struct_1(arg_0.d.b.x, vec3<bool>(arg_0.d.b.x, var_2.a.a, var_2.a.c), false), vec2<u32>(1605u, u_input.a)))), _wgslsmith_mod_i32(var_0.x, -1i)))), vec4<i32>(-2147483647i, ~var_0.x, var_0.x, _wgslsmith_div_i32(arg_0.c, 0i)));
    global1 = array<Struct_2, 11>();
    return Struct_3(vec2<f32>(arg_0.a.x, arg_0.a.x), 4294967295u, select(17069i, -(arg_0.c >> (~34527u % 32u)), true), var_2.a, ~(~select(vec2<u32>(arg_0.b, var_2.b.x), vec2<u32>(var_2.b.x, arg_2.x), select(var_1.b.xy, vec2<bool>(true, arg_0.d.c), false))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>) -> u32 {
    global1 = array<Struct_2, 11>();
    global0 = arg_1.x;
    global1 = array<Struct_2, 11>();
    var var_0 = Struct_4(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, -1229f))), ~_wgslsmith_div_u32(u_input.a, arg_2.x), -_wgslsmith_mod_i32(2147483647i, 2147483647i), Struct_1(func_2(vec2<bool>(false, arg_1.x), Struct_1(arg_1.x, vec3<bool>(false, false, true), arg_1.x)), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, false, false), vec3<bool>(true, true, arg_1.x)), all(vec2<bool>(true, arg_1.x))), ~arg_2 ^ firstTrailingBit(arg_2)), vec4<u32>(~arg_2.x, arg_2.x, select(73167u, 3933u, arg_1.x) >> (~61247u % 32u), 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(19509u, 4294967295u), arg_2) << (min(arg_2 | vec2<u32>(12873u, 47296u), arg_2) % vec2<u32>(32u))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), 2393f), firstLeadingBit(0u), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -55984i, 24366i, 9414i), select(vec4<i32>(26145i, -6559i, -2147483647i, 1i), vec4<i32>(-17616i, -5818i, -5630i, 44568i), false)) << (1u % 32u), Struct_1(true, select(vec3<bool>(arg_1.x, false, false), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), arg_1.x), arg_1.x), arg_1.x), select(min(max(arg_2, arg_2), select(vec2<u32>(1u, u_input.a), vec2<u32>(arg_2.x, u_input.a), arg_1)), arg_2, arg_1.x)), ~((-vec2<i32>(-2147483647i, 19360i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(61271u, arg_2.x), vec2<u32>(16494u, u_input.a)) % vec2<u32>(32u))) & vec2<i32>(1i, 1i)), countOneBits(select(abs(vec4<i32>(18282i, 1i, -1i, -43554i)), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-65768i, -1780i, 0i, -1i), vec4<i32>(55181i, -100955i, -2147483647i, 2147483647i)), 1i, _wgslsmith_add_i32(27246i, 1i)), select(vec4<bool>(false, false, true, arg_1.x), vec4<bool>(true, true, true, false), func_2(arg_1, Struct_1(true, vec3<bool>(arg_1.x, arg_1.x, true), false))))), func_4(Struct_3(vec2<f32>(func_4(Struct_3(vec2<f32>(232f, arg_0), 1u, -2147483647i, Struct_1(true, vec3<bool>(false, false, arg_1.x), false), vec2<u32>(1u, u_input.a)), vec4<u32>(13893u, arg_2.x, u_input.a, 44178u), arg_2).a.x, _wgslsmith_f_op_f32(-arg_0)), u_input.a, _wgslsmith_sub_i32(select(1i, -2147483647i, arg_1.x), 2147483647i >> (0u % 32u)), Struct_1(true, select(vec3<bool>(true, true, arg_1.x), vec3<bool>(false, arg_1.x, false), vec3<bool>(false, arg_1.x, false)), !arg_1.x), _wgslsmith_clamp_vec2_u32(arg_2 & arg_2, max(vec2<u32>(4294967295u, u_input.a), arg_2), func_4(Struct_3(vec2<f32>(arg_0, -1847f), 389u, -1i, Struct_1(arg_1.x, vec3<bool>(true, arg_1.x, arg_1.x), true), arg_2), vec4<u32>(arg_2.x, 4294967295u, u_input.a, 83914u), vec2<u32>(arg_2.x, 29179u)).e)), ~(~vec4<u32>(4294967295u, 31917u, 44607u, 1u)) & _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, u_input.a, u_input.a, 1u), select(vec4<u32>(arg_2.x, u_input.a, 4294967295u, 1u), vec4<u32>(u_input.a, 47386u, 0u, u_input.a), vec4<bool>(arg_1.x, false, arg_1.x, true)), vec4<u32>(1u, arg_2.x, u_input.a, 0u) >> (vec4<u32>(38927u, 46604u, u_input.a, u_input.a) % vec4<u32>(32u))), firstLeadingBit(min(countOneBits(arg_2), ~vec2<u32>(4294967295u, u_input.a)))));
    return 12068u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = firstLeadingBit(~vec4<u32>(u_input.a, func_1(1778f, vec2<bool>(false, true), vec2<u32>(u_input.a, 48581u)) << (0u % 32u), firstLeadingBit(9138u), select(u_input.a, 73261u, true) | u_input.a));
    var var_2 = _wgslsmith_f_op_f32(round(309f));
    global1 = array<Struct_2, 11>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_4 = func_4(func_4(func_4(func_4(func_4(Struct_3(var_3.wy, u_input.a, 55473i, Struct_1(true, vec3<bool>(false, false, true), true), var_1.zz), var_1, vec2<u32>(var_1.x, 35909u)), vec4<u32>(u_input.a, var_1.x, var_1.x, 4294967295u) >> (vec4<u32>(19327u, u_input.a, 58898u, u_input.a) % vec4<u32>(32u)), max(vec2<u32>(1u, 4294967295u), var_1.xz)), var_1 >> ((var_1 >> (var_1 % vec4<u32>(32u))) % vec4<u32>(32u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.x), var_1.wy)), vec4<u32>((var_1.x ^ 4294967295u) | countOneBits(18025u), u_input.a, 15282u, ~1u >> (abs(u_input.a) % 32u)), abs(var_1.yw)), vec4<u32>(abs(0u), _wgslsmith_clamp_u32(~(var_1.x & 10836u), abs(~u_input.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(var_1), ~var_1)), ~(20916u << (var_1.x % 32u)), 3790u), select(~(abs(vec2<u32>(1u, 50295u)) & var_1.zz), abs(~_wgslsmith_div_vec2_u32(var_1.zx, vec2<u32>(var_1.x, u_input.a))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_sub_vec3_u32(select(max(var_1.zxw, _wgslsmith_add_vec3_u32(vec3<u32>(2418u, u_input.a, var_1.x), var_1.xxw)), firstLeadingBit(vec3<u32>(var_4.e.x, u_input.a, 4294967295u)), !vec3<bool>(false, true, var_4.d.b.x)), abs(_wgslsmith_mod_vec3_u32(var_1.wxx, var_1.zxx)) | var_1.xxx), 1u, ~(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), var_4.e, var_1.zx), vec2<u32>(var_4.b, 68530u), ~vec2<u32>(0u, u_input.a)) << (~(~vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u))));
}

