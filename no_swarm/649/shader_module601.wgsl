struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(32938u, 25943i, vec3<i32>(1i, 16443i, 1i), vec2<u32>(30778u, 4294967295u));

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(1u, -1i, vec3<i32>(i32(-2147483648), 99253i, 1i), vec2<u32>(6320u, 70937u)), Struct_3(4294967295u, 1i, vec3<i32>(-4594i, i32(-2147483648), -24009i), vec2<u32>(20386u, 1236u)), Struct_3(1u, i32(-2147483648), vec3<i32>(14972i, 1i, i32(-2147483648)), vec2<u32>(10820u, 1u)));

var<private> global2: f32 = 2280f;

var<private> global3: array<u32, 16> = array<u32, 16>(1u, 0u, 0u, 0u, 73485u, 0u, 4294967295u, 4029u, 4294967295u, 0u, 80284u, 150706u, 4294967295u, 9894u, 36374u, 70232u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-954f, -191f, arg_2)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-718f, 1052f))), 1777f)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, 1235f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), -624f, _wgslsmith_f_op_f32(max(-223f, 1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(537f, -220f, var_0)))))), ~vec4<u32>(26959u, global0.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a, 1u), vec2<u32>(u_input.a, 1u)), _wgslsmith_clamp_u32(arg_1.a ^ arg_0.d.x, 55790u, ~arg_0.d.x)));
    let var_2 = max(u_input.b, -(~vec4<i32>(abs(-28087i), ~arg_0.c.x, 0i, u_input.b.x)));
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.x, -411f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(round(1230f)))) - var_1.a.zx));
    var var_4 = ~(~var_1.b);
    return _wgslsmith_mod_u32(0u, 4294967295u) & (var_4.x << ((~var_1.b.x << (~arg_0.d.x % 32u)) % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x)), _wgslsmith_f_op_f32(arg_1.a.x * -398f), _wgslsmith_f_op_f32(-129f - _wgslsmith_f_op_f32(arg_1.a.x * arg_1.a.x)))), arg_1.b);
    let var_1 = Struct_2(39075u | arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1945f + -828f), -155f, arg_1.a.x, _wgslsmith_f_op_f32(1109f - -309f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(295f, -989f, _wgslsmith_f_op_f32(var_0.a.x + arg_1.a.x), var_0.a.x)), true)), _wgslsmith_clamp_i32(-firstTrailingBit(firstTrailingBit(1i)), u_input.b.x, 1i), arg_1.b.yxx);
    global0 = Struct_3(select(reverseBits(var_1.a) << (4709u % 32u), func_3(Struct_3(global0.a, -6533i, vec3<i32>(u_input.b.x, 43882i, 1i), vec2<u32>(28710u, var_0.b.x)), Struct_3(1u, 0i, vec3<i32>(global0.c.x, -65821i, -2147483647i), vec2<u32>(u_input.a, u_input.a)), false, select(global0.c, vec3<i32>(2147483647i, 1i, global0.b), vec3<bool>(false, true, arg_2))), !(!arg_2)) & (_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 1u), countOneBits(4294967295u)) | abs(~57452u)), var_1.c, (u_input.b.zxw ^ vec3<i32>(countOneBits(u_input.b.x), var_1.c >> (arg_1.b.x % 32u), -u_input.b.x)) << ((var_0.b.zxw << (~vec3<u32>(global0.a, var_0.b.x, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<u32>(func_3(Struct_3(40711u, min(1i, global0.c.x), u_input.b.xxy, arg_1.b.zx), global1[_wgslsmith_index_u32(arg_1.b.x, 3u)], select(arg_2, 0u != arg_0, false), global0.c), max(~_wgslsmith_mult_u32(global0.a, global3[_wgslsmith_index_u32(u_input.a, 16u)]), ~_wgslsmith_mod_u32(83437u, 16309u))));
    global3 = array<u32, 16>();
    var var_2 = vec2<i32>(~global0.c.x, _wgslsmith_dot_vec3_i32(u_input.b.zyw, ~(select(vec3<i32>(global0.b, 50376i, var_1.c), vec3<i32>(72161i, u_input.b.x, var_1.c), vec3<bool>(arg_2, arg_2, arg_2)) | vec3<i32>(global0.b, 2147483647i, -24277i))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.b.x)), _wgslsmith_f_op_f32(abs(-980f)));
    global0 = Struct_3(9202u | global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(reverseBits(u_input.a)), ~16820u, u_input.a), 16u)], ~(-30353i), _wgslsmith_div_vec3_i32(-global0.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -44540i, arg_1.c), global0.c, vec3<i32>(32981i, global0.b, arg_1.c) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(21931u, 16u)]), arg_1.d) % vec3<u32>(32u)))), vec2<u32>(34529u, arg_0.b.x));
    var var_1 = arg_1;
    let var_2 = Struct_2(~firstTrailingBit(1u) << (((var_1.a & max(69035u, 4294967295u)) ^ (~arg_0.b.x << (global0.d.x % 32u))) % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(725f + 364f), -1185f, -497f, _wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(min(var_1.b.x, arg_1.b.x))))), global0.c.x, vec3<u32>(func_2(50930u >> (arg_0.b.x % 32u), Struct_1(vec3<f32>(589f, var_0.x, arg_0.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 36338u, 47702u, 0u), vec4<u32>(1u, 0u, u_input.a, var_1.a))), all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true))).a, u_input.a, var_1.d.x));
    global1 = array<Struct_3, 3>();
    return 2147483647i;
}

fn func_1() -> u32 {
    global0 = Struct_3(abs(global0.d.x), -23893i, vec3<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.zz, global0.c.xx << (global0.d % vec2<u32>(32u))), func_4(Struct_1(vec3<f32>(-1001f, 1912f, -1602f), vec4<u32>(global0.a, 41081u, 0u, u_input.a)), func_2(21166u, Struct_1(vec3<f32>(448f, -352f, -266f), vec4<u32>(1u, 0u, u_input.a, 4294967295u)), true)) | u_input.b.x, firstLeadingBit(-2147483647i)), firstLeadingBit(vec2<u32>(2856u, 4294967295u)));
    var var_0 = Struct_2(~13929u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(648f, 1137f, 781f, -2176f)) + vec4<f32>(-990f, -452f, 556f, 517f))) - vec4<f32>(-284f, 832f, -1710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1317f * 422f)))), ~7448i, ~vec3<u32>(u_input.a, ~global3[_wgslsmith_index_u32(~83969u, 16u)], _wgslsmith_mod_u32(~64232u, global0.a)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, var_0.b.x)), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x), min((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 23490u, 0u, global0.d.x), vec4<u32>(var_0.a, global3[_wgslsmith_index_u32(u_input.a, 16u)], 27353u, global3[_wgslsmith_index_u32(global0.d.x, 16u)])) & ~vec4<u32>(2495u, 1u, 72583u, global0.a)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(u_input.a, 16u)], u_input.a)), vec4<u32>(_wgslsmith_mult_u32(min(global3[_wgslsmith_index_u32(4294967295u, 16u)], global0.a), select(0u, 0u, false)), abs(1u), select(~23425u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 2052u), vec2<u32>(global3[_wgslsmith_index_u32(46491u, 16u)], u_input.a)), u_input.b.x >= 2147483647i), global3[_wgslsmith_index_u32(0u, 16u)] & 9554u)));
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~reverseBits(_wgslsmith_div_u32(0u, 4294967295u)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, var_1.b.x, 0u), vec3<u32>(1u, 1u, 23472u))), select(31041u >> (0u % 32u), var_0.d.x ^ 95189u, true)), 16u)], func_2(countOneBits(var_0.a), var_1, true).d.x >> (29075u % 32u), 68835u), min(select(abs(firstTrailingBit(vec4<u32>(u_input.a, global0.d.x, var_0.a, 2999u))), abs(var_1.b), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), var_1.b)), 16u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 16>();
    global3 = array<u32, 16>();
    var var_0 = _wgslsmith_sub_u32(func_1(), 4294967295u);
    global1 = array<Struct_3, 3>();
    let var_1 = global0.b;
    var var_2 = ~(~_wgslsmith_mod_u32(59603u, _wgslsmith_div_u32(abs(global3[_wgslsmith_index_u32(global0.a, 16u)]), 27152u)));
    let var_3 = global1[_wgslsmith_index_u32(global0.a, 3u)];
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, ~countOneBits(vec3<u32>(global0.d.x, global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(global0.d.x, 16u)]) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.a, 1u, var_3.a), vec3<u32>(var_3.d.x, 69760u, global0.a), vec3<u32>(u_input.a, 4294967295u, 1u))), global0.c.zx);
}

