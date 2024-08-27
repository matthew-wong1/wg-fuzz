struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1579f, -151f), vec2<f32>(-638f, -2638f), vec2<f32>(490f, 2230f), vec2<f32>(521f, -1022f), vec2<f32>(310f, 1097f), vec2<f32>(495f, 314f), vec2<f32>(-876f, 971f));

var<private> global1: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-1611f, -196f, 956f, 788f), vec4<f32>(-1627f, -686f, -177f, 673f), vec4<f32>(-524f, 1395f, -1200f, 1621f), vec4<f32>(2017f, -1832f, 1187f, 202f), vec4<f32>(-1710f, -1792f, 182f, 500f), vec4<f32>(918f, 1733f, 417f, 553f), vec4<f32>(-246f, 111f, -1194f, -1000f), vec4<f32>(604f, -620f, -878f, 166f), vec4<f32>(742f, -711f, 1564f, -1000f), vec4<f32>(108f, -660f, -1406f, -952f), vec4<f32>(472f, -466f, 794f, -258f), vec4<f32>(781f, -383f, -117f, -517f), vec4<f32>(128f, 621f, 1209f, -2936f));

var<private> global2: i32 = -26252i;

var<private> global3: Struct_3;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> bool {
    return any(select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, arg_0.x), arg_0)), true, all(select(vec3<bool>(true, false, true), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x)), !arg_0.x), vec4<bool>(true, true, arg_0.x | (arg_0.x | true), arg_0.x), select(select(!vec4<bool>(true, true, false, arg_0.x), !vec4<bool>(arg_0.x, true, arg_0.x, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), select(!vec4<bool>(true, false, true, arg_0.x), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, true, false, false), vec4<bool>(false, arg_0.x, false, arg_0.x)), !vec4<bool>(arg_0.x, false, arg_0.x, true)), true)));
}

fn func_2() -> Struct_1 {
    global2 = 1i;
    let var_0 = -1i;
    global0 = array<vec2<f32>, 7>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(409f - -371f))))), select(!vec2<bool>(func_3(vec2<bool>(true, false)), true), vec2<bool>(true, select(false, false, false) | true), false), u_input.c, Struct_3(_wgslsmith_dot_vec3_u32(select(vec3<u32>(14419u, 1u, global3.a), vec3<u32>(4294967295u, global3.a, global3.a), vec3<bool>(false, false, true)), vec3<u32>(global3.a, u_input.a, global3.a) & vec3<u32>(36755u, u_input.b.x, u_input.b.x)) << ((global3.a | 1u) % 32u)));
    let var_2 = countOneBits(-abs(select(~vec4<i32>(var_0, -29953i, -17630i, var_0), min(vec4<i32>(48767i, 1i, 38037i, var_0), vec4<i32>(-2147483647i, 21516i, 34238i, var_0)), select(vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x)))));
    return Struct_1(max(countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6786u, 53572u, global3.a), vec3<u32>(var_1.d.a, 21977u, 65879u)), firstLeadingBit(34955u), u_input.b.x, 4294967295u)), ~vec4<u32>(~u_input.b.x, var_1.d.a, 54517u, ~u_input.c)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.c, global3.a)), true, false);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    let var_0 = !(true && any(select(select(vec4<bool>(false, true, arg_3, arg_1.c.c), vec4<bool>(arg_1.c.c, arg_1.c.c, arg_1.c.d, arg_1.c.d), vec4<bool>(true, false, arg_3, arg_3)), select(vec4<bool>(arg_3, arg_2.d, arg_3, arg_2.d), vec4<bool>(false, arg_2.c, false, arg_3), true), vec4<bool>(true, false, false, arg_1.c.c))));
    var var_1 = arg_1.b.xyy;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u << (min(arg_1.b.x, 42346u) % 32u), arg_0.x), 7u)]) * global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(global3.a << ((109643u >> (u_input.b.x % 32u)) % 32u), select(min(67068u, arg_1.b.x), 10056u, var_0))), 7u)]);
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(2066i, -48623i, 34941i, 2147483647i) | select(vec4<i32>(-5371i, 2147483647i, 4850i, -33132i), vec4<i32>(66131i, 2993i, -1i, -2147483647i), vec4<bool>(arg_1.c.c, false, arg_2.c, arg_1.c.d))), abs(vec4<i32>(-6246i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(84389i, 28187i)), -10765i, _wgslsmith_sub_i32(1i, 10308i)))), _wgslsmith_clamp_vec4_i32(-select(vec4<i32>(2147483647i, 62273i, -2147483647i, 2147483647i), vec4<i32>(2147483647i, -21544i, 1i, 1i), false) ^ vec4<i32>(43484i, -13089i << (arg_1.b.x % 32u), _wgslsmith_sub_i32(39929i, -39818i), _wgslsmith_sub_i32(-1i, -1i)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), -(79857i << (1u % 32u)), 74770i, ~(-93013i)), ~(-vec4<i32>(1i, -2245i, 25704i, 2147483647i))));
    global2 = ~(27633i ^ var_3);
    return arg_1.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~(~select(~arg_3.b, vec4<u32>(~1u, ~arg_3.b.x, global3.a, 0u | arg_2.b.x), arg_2.c.d));
    global1 = array<vec4<f32>, 13>();
    let var_1 = false;
    let var_2 = Struct_3(reverseBits(~17299u));
    var var_3 = min(~15103u, ~1u);
    return func_2();
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    return func_5(max(_wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-52912i, 29141i, -23802i, -45656i)), ~vec4<i32>(-6635i, 0i, 2147483647i, 18239i)), abs(~vec4<i32>(33546i, -1443i, 70909i, 2813i)) << (func_4(~vec3<u32>(global3.a, 4294967295u, 14920u), Struct_2(global3.a, vec4<u32>(1u, global3.a, u_input.c, 44124u), Struct_1(vec4<u32>(global3.a, 1u, 29118u, 54012u), 1u, true, false)), func_2(), func_3(vec2<bool>(false, false))) % vec4<u32>(32u))), -(~vec4<i32>(abs(63963i), firstLeadingBit(2147483647i), _wgslsmith_mod_i32(2147483647i, 35820i), ~42100i)), Struct_2(~(~global3.a), (countOneBits(vec4<u32>(u_input.b.x, global3.a, 0u, u_input.b.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global3.a, global3.a, 4294967295u, global3.a), vec4<u32>(1u, 21978u, 4294967295u, 26481u)) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.c, u_input.c, 0u, 33515u)) % vec4<u32>(32u)), func_2()), Struct_2(68826u, ~(~vec4<u32>(global3.a, global3.a, 0u, u_input.b.x)), Struct_1(vec4<u32>(~global3.a, ~global3.a, 40074u ^ u_input.c, 2292u), _wgslsmith_mult_u32(u_input.a, 1u), false, true)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    var var_0 = select(select(!(!vec3<bool>(true, arg_0.c, arg_1.d)), vec3<bool>(!all(vec2<bool>(true, true)), func_2().c, false), select(vec3<bool>(true, false, false), vec3<bool>(func_5(vec4<i32>(-33888i, 1i, 0i, 32452i), vec4<i32>(32140i, 0i, -2147483647i, -48738i), Struct_2(arg_1.a.x, arg_0.a, arg_1), Struct_2(6817u, arg_1.a, Struct_1(arg_0.a, 1u, false, arg_0.d))).c, true, func_3(vec2<bool>(true, false))), func_3(select(vec2<bool>(false, true), vec2<bool>(arg_0.c, true), vec2<bool>(arg_1.c, false))))), vec3<bool>(true, arg_0.c, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(global3.a, 13u)], global1[_wgslsmith_index_u32(arg_1.a.x, 13u)])))).c), arg_0.c);
    let var_1 = select(vec2<u32>(min(func_4(vec3<u32>(4294967295u, arg_1.a.x, arg_1.b), Struct_2(0u, vec4<u32>(arg_0.b, 1u, 4294967295u, 4294967295u), arg_1), arg_1, false).x, global3.a), _wgslsmith_clamp_u32(77149u, 122214u, arg_1.b) >> (_wgslsmith_mult_u32(arg_0.a.x, global3.a) % 32u)) ^ ~func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23874u, 1u, 0u), 13u)]).a.xz, vec2<u32>(u_input.a, global3.a), !arg_1.c);
    global0 = array<vec2<f32>, 7>();
    var var_2 = countOneBits(_wgslsmith_clamp_i32(-9020i, -_wgslsmith_clamp_i32(-1i, 1i, ~26413i), ~reverseBits(-1i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * -1083f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x)));
    return _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * -1641f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~u_input.a | 12457u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(global1[_wgslsmith_index_u32(u_input.c, 13u)]), func_2(), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1369f, 1397f, -374f)))))))), ~vec4<u32>(global3.a, countOneBits(21198u), u_input.a << (_wgslsmith_mult_u32(var_0.a, global3.a) % 32u), 4294967295u));
}

