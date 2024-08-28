struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 28>;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(i32(-2147483648), 37964i, 0i), vec3<i32>(2147483647i, 30484i, i32(-2147483648)), vec3<i32>(-96291i, -1i, 1i));

var<private> global2: Struct_1 = Struct_1(0u, vec3<bool>(false, true, false), 1000f, vec4<bool>(true, true, true, false), vec2<i32>(-2505i, 0i));

var<private> global3: u32;

var<private> global4: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(0u, vec3<bool>(true, true, true), 1629f, vec4<bool>(true, false, false, true), vec2<i32>(1i, -1i)), 4294967295u, 49812u), Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, true), 425f, vec4<bool>(false, false, true, false), vec2<i32>(-1i, 42164i)), 52865u, 0u), Struct_2(Struct_1(0u, vec3<bool>(false, true, false), -354f, vec4<bool>(true, false, true, false), vec2<i32>(0i, -88417i)), 1u, 53512u), Struct_2(Struct_1(0u, vec3<bool>(true, false, true), 1003f, vec4<bool>(false, false, true, false), vec2<i32>(39260i, 67243i)), 15109u, 1u), Struct_2(Struct_1(4294967295u, vec3<bool>(true, false, true), -480f, vec4<bool>(true, true, false, false), vec2<i32>(-1i, -8304i)), 70545u, 40770u), Struct_2(Struct_1(1u, vec3<bool>(true, true, false), -509f, vec4<bool>(true, true, false, false), vec2<i32>(-15091i, 0i)), 1u, 98649u), Struct_2(Struct_1(15014u, vec3<bool>(false, false, true), 1059f, vec4<bool>(false, true, true, false), vec2<i32>(4905i, 2147483647i)), 22887u, 13316u), Struct_2(Struct_1(27348u, vec3<bool>(true, false, false), 1541f, vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), -32046i)), 4503u, 15869u), Struct_2(Struct_1(25906u, vec3<bool>(true, false, true), -1600f, vec4<bool>(false, false, false, true), vec2<i32>(-28128i, 22401i)), 4294967295u, 0u), Struct_2(Struct_1(15842u, vec3<bool>(true, false, false), 1493f, vec4<bool>(true, true, false, false), vec2<i32>(-1i, -24874i)), 1u, 43262u), Struct_2(Struct_1(4294967295u, vec3<bool>(false, false, false), 1000f, vec4<bool>(false, true, true, true), vec2<i32>(1i, 2147483647i)), 4294967295u, 8490u), Struct_2(Struct_1(18775u, vec3<bool>(false, false, false), 803f, vec4<bool>(true, true, true, true), vec2<i32>(2147483647i, -19375i)), 1u, 29152u), Struct_2(Struct_1(4294967295u, vec3<bool>(false, true, true), 272f, vec4<bool>(true, false, true, true), vec2<i32>(1i, 0i)), 76343u, 72744u), Struct_2(Struct_1(0u, vec3<bool>(true, true, true), -1221f, vec4<bool>(true, false, false, true), vec2<i32>(-10844i, i32(-2147483648))), 34730u, 0u), Struct_2(Struct_1(20312u, vec3<bool>(true, true, true), 825f, vec4<bool>(false, true, true, true), vec2<i32>(12802i, 1i)), 15245u, 0u), Struct_2(Struct_1(1u, vec3<bool>(false, false, true), 1194f, vec4<bool>(false, true, false, true), vec2<i32>(-13207i, 2147483647i)), 55350u, 4294967295u), Struct_2(Struct_1(9988u, vec3<bool>(false, true, false), -2196f, vec4<bool>(true, true, false, false), vec2<i32>(0i, -1i)), 4294967295u, 4294967295u), Struct_2(Struct_1(0u, vec3<bool>(true, false, false), -481f, vec4<bool>(true, false, true, false), vec2<i32>(8157i, -11139i)), 39794u, 7253u), Struct_2(Struct_1(0u, vec3<bool>(false, true, true), -515f, vec4<bool>(true, false, false, true), vec2<i32>(-70916i, -1i)), 59553u, 4294967295u), Struct_2(Struct_1(0u, vec3<bool>(true, true, true), -340f, vec4<bool>(true, true, true, true), vec2<i32>(0i, 1i)), 38520u, 89071u), Struct_2(Struct_1(11468u, vec3<bool>(true, true, false), 263f, vec4<bool>(false, false, true, true), vec2<i32>(-33948i, 7009i)), 1u, 1u), Struct_2(Struct_1(14187u, vec3<bool>(true, false, false), 567f, vec4<bool>(false, false, true, true), vec2<i32>(543i, -1i)), 1u, 55621u), Struct_2(Struct_1(51432u, vec3<bool>(true, false, false), 372f, vec4<bool>(false, false, false, false), vec2<i32>(13710i, -82584i)), 45380u, 4294967295u), Struct_2(Struct_1(25011u, vec3<bool>(true, false, false), 1643f, vec4<bool>(false, false, false, false), vec2<i32>(-49703i, -81284i)), 2186u, 26161u), Struct_2(Struct_1(86214u, vec3<bool>(false, false, true), 1000f, vec4<bool>(false, true, false, false), vec2<i32>(i32(-2147483648), 38582i)), 85679u, 29315u), Struct_2(Struct_1(1u, vec3<bool>(true, false, false), -1000f, vec4<bool>(false, true, true, false), vec2<i32>(-71621i, -20845i)), 0u, 4294967295u), Struct_2(Struct_1(12683u, vec3<bool>(true, false, false), -239f, vec4<bool>(false, true, false, false), vec2<i32>(i32(-2147483648), 1i)), 6967u, 34086u), Struct_2(Struct_1(21356u, vec3<bool>(false, false, false), -205f, vec4<bool>(false, false, false, false), vec2<i32>(57843i, 24864i)), 4294967295u, 347u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec2<u32> {
    let var_0 = global4[_wgslsmith_index_u32(global2.a, 28u)];
    let var_1 = var_0.a;
    let var_2 = 952f;
    global0 = array<vec3<bool>, 28>();
    let var_3 = !select(!(!global2.d.zx), vec2<bool>(false, all(var_1.d)), var_1.d.x);
    return ~u_input.c.yx;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = vec4<u32>(global2.a, u_input.b.x, ~_wgslsmith_mod_u32(4294967295u, ~1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.a, 1198u, 0u), vec3<u32>(arg_2.a.a, 4294967295u, 4294967295u))), 115715u);
    global3 = var_0.x;
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(func_2(), ~var_0.yx ^ ~vec2<u32>(var_0.x, u_input.c.x)), u_input.b.wz);
    global4 = array<Struct_2, 28>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1759f) * _wgslsmith_f_op_f32(exp2(global2.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1896f + arg_0.a.c))) - arg_0.a.c) - global2.c));
    global2 = Struct_1(_wgslsmith_mod_u32(func_1(~(global2.e.x ^ u_input.a), arg_0.a.b, global4[_wgslsmith_index_u32(reverseBits(u_input.c.x), 28u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, arg_0.a.c, 507f, arg_0.a.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, 1230f, 101f, global2.c) * vec4<f32>(-1449f, 1673f, 873f, arg_0.a.c)))), firstTrailingBit(countOneBits(0u))), arg_0.a.b, -988f, vec4<bool>(true, any(vec4<bool>(true, true, false, global2.d.x)) && true, arg_0.a.d.x, all(vec2<bool>(true, !global2.d.x))), arg_1.yy);
    let var_1 = reverseBits(vec3<u32>(_wgslsmith_add_u32(global2.a, global2.a) >> (~17808u % 32u), ~(~arg_0.b), global2.a) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.b, global2.a), vec3<u32>(50277u, u_input.b.x, arg_0.b)), ~vec3<u32>(arg_0.b, 1u, 4294967295u)));
    let var_2 = !select(arg_0.a.d.xzx, select(global0[_wgslsmith_index_u32(1u, 28u)], select(vec3<bool>(global2.d.x, true, false), vec3<bool>(global2.d.x, false, arg_0.a.b.x), select(true, false, global2.d.x)), false), vec3<bool>(arg_0.a.d.x, arg_0.a.d.x, false));
    let var_3 = vec4<i32>(2147483647i, abs((arg_0.a.e.x >> (4294967295u % 32u)) >> (~global2.a % 32u)), arg_0.a.e.x, u_input.a);
    return _wgslsmith_mod_i32(~min(_wgslsmith_dot_vec3_i32(arg_1, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.e.x, var_3.x, -1i), vec3<i32>(-56460i, arg_0.a.e.x, arg_0.a.e.x), global1[_wgslsmith_index_u32(56354u, 3u)])), _wgslsmith_add_i32(~66659i, global2.e.x ^ -2147483647i)), -_wgslsmith_dot_vec3_i32(var_3.xyy, vec3<i32>(-1i) * -var_3.zwz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(global2.a, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x & ~0u, func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.e.x, u_input.a, u_input.a), vec3<i32>(1i, global2.e.x, -2147483647i)), !vec3<bool>(global2.d.x, global2.d.x, false), Struct_2(Struct_1(53480u, vec3<bool>(false, true, global2.b.x), -170f, vec4<bool>(global2.d.x, false, false, true), vec2<i32>(global2.e.x, global2.e.x)), 1u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1749f, -569f, global2.c, global2.c)))), _wgslsmith_add_u32(1u, 0u)));
    global2 = Struct_1(~_wgslsmith_div_u32(global2.a, 1u), !select(global2.b, !global0[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)], any(global2.d)), _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-global2.c)), vec4<bool>(false, !(true == global2.d.x), select(all(global2.d), true, true), true), countOneBits(vec2<i32>(reverseBits(u_input.a), u_input.a ^ ~2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(946f + _wgslsmith_div_f32(577f, 2202f)))) * -1424f);
    var var_2 = u_input.c.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -u_input.a & select(u_input.a, 2147483647i, true), global2.e.x, reverseBits(func_3(Struct_2(Struct_1(u_input.b.x, global2.b, global2.c, global2.d, global2.e), global2.a, 0u), vec3<i32>(u_input.a, -28842i, 2147483647i)))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(global2.e.x, -1i, global2.e.x, -16808i), vec4<i32>(global2.e.x, u_input.a, u_input.a, u_input.a)) | vec4<i32>(global2.e.x, global2.e.x, -49653i, global2.e.x)), ~(~(-vec4<i32>(u_input.a, 2147483647i, 1i, u_input.a)))), _wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(46126u, 49396u, func_2().x, abs(0u)), ~vec4<u32>(1u, 121168u, var_2.x, 1u))));
}

