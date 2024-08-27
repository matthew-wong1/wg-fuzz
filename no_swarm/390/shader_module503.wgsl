struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<f32>(609f, -919f), vec4<f32>(755f, 1313f, 568f, 1428f), vec3<u32>(0u, 4294967295u, 147448u));

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec2<bool>(true, false), vec2<f32>(678f, 1161f), vec4<f32>(-111f, -940f, -1000f, 1812f), vec3<u32>(9450u, 8530u, 99267u)), Struct_1(vec2<bool>(false, true), vec2<f32>(-1000f, 352f), vec4<f32>(-517f, 1000f, -1907f, -487f), vec3<u32>(28192u, 52461u, 52799u))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(-430f, 624f), vec4<f32>(-444f, 304f, 1000f, 742f), vec3<u32>(0u, 10534u, 4294967295u)), Struct_1(vec2<bool>(false, true), vec2<f32>(412f, -795f), vec4<f32>(973f, 773f, -581f, -557f), vec3<u32>(0u, 1u, 52214u))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(-1155f, -585f), vec4<f32>(-1000f, -330f, 444f, -534f), vec3<u32>(1u, 9979u, 1u)), Struct_1(vec2<bool>(true, false), vec2<f32>(208f, -477f), vec4<f32>(-1368f, 1576f, 1241f, -225f), vec3<u32>(47546u, 0u, 1u))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(-936f, -113f), vec4<f32>(-2341f, 623f, 730f, -1062f), vec3<u32>(24090u, 1u, 1u)), Struct_1(vec2<bool>(true, true), vec2<f32>(411f, -281f), vec4<f32>(427f, -652f, 1609f, 704f), vec3<u32>(4294967295u, 1u, 50032u))));

var<private> global3: array<i32, 27>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec2<f32> {
    global1 = array<vec2<i32>, 24>();
    global3 = array<i32, 27>();
    let var_0 = Struct_4(Struct_1(!global0.a, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - -709f), global0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1066f, 581f) + global0.c.zx))), vec4<f32>(_wgslsmith_f_op_f32(1000f - -1691f), _wgslsmith_f_op_f32(step(global0.b.x, _wgslsmith_f_op_f32(max(-798f, 755f)))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - _wgslsmith_f_op_f32(f32(-1f) * -255f))), ~(~vec3<u32>(0u, 83957u, 94568u)) << (~global0.d % vec3<u32>(32u))), Struct_1(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1754f, global0.b.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, -509f), global0.c.wz)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-720f, 467f, global0.c.x, 1000f), vec4<f32>(global0.c.x, global0.c.x, global0.b.x, global0.b.x)) * _wgslsmith_f_op_vec4_f32(global0.c - global0.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(global0.c)), vec4<f32>(global0.c.x, global0.c.x, global0.c.x, -1000f))), vec3<u32>(4294967295u | global0.d.x, global0.d.x >> (_wgslsmith_div_u32(global0.d.x, global0.d.x) % 32u), _wgslsmith_mult_u32(global0.d.x, 9708u) ^ _wgslsmith_mod_u32(global0.d.x, 1u))), 5683u);
    global2 = array<Struct_2, 4>();
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(select(global0.b.x, var_0.a.b.x, !all(vec3<bool>(false, global0.a.x, true)))))));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.x, -1443f, global0.c.x, -796f), vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.a.x, true, global0.a.x, true))) + _wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global0.c.x, -723f, global0.b.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), any(select(vec3<bool>(false, true, global0.a.x), vec3<bool>(true, global0.a.x, global0.a.x), vec3<bool>(true, true, true))))), vec3<u32>(~global0.d.x, 4294967295u, ~72927u)), Struct_1(select(global0.a, global0.a, global0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global0.b, vec2<f32>(107f, global0.c.x))) * vec2<f32>(1580f, global0.c.x))), vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-213f * -1483f), -1000f)), _wgslsmith_f_op_f32(-global0.c.x)), global0.d));
    return vec2<bool>(true, any(select(select(global0.a, vec2<bool>(true, false), var_0.b.a), vec2<bool>(false, global0.a.x), select(global0.a, vec2<bool>(var_0.b.a.x, true), global0.a))) && all(!(!vec3<bool>(true, true, global0.a.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(!func_2(), global0.b, _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(143f, 278f, 233f, global0.c.x)))), select(abs(~vec3<u32>(global0.d.x, 1u, global0.d.x)) | global0.d, ~vec3<u32>(global0.d.x, reverseBits(global0.d.x), global0.d.x | 4294967295u), false));
    let var_1 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(max(~vec4<u32>(23845u, 4294967295u, 4294967295u, 68516u), vec4<u32>(4294967295u, 24504u, 5139u, global0.d.x)), vec4<u32>(~45756u, global0.d.x ^ 0u, ~41297u, 4294967295u), abs(~vec4<u32>(var_0.d.x, 11624u, var_0.d.x, 18489u))), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 9548u), vec4<u32>(var_0.d.x, 1u, 24386u, var_0.d.x)))), 4u)], Struct_2(Struct_1(!global0.a, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, -485f), _wgslsmith_f_op_vec2_f32(ceil(var_0.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-574f, global0.b.x, global0.b.x, global0.c.x), var_0.c))), select(global0.d, vec3<u32>(39168u, 0u, var_0.d.x) ^ global0.d, vec3<bool>(global0.a.x, false, false))), Struct_1(vec2<bool>(false || var_0.a.x, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-952f, -614f) - var_0.b), var_0.c, vec3<u32>(global0.d.x, countOneBits(global0.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, var_0.d.x, 2330u, global0.d.x), vec4<u32>(23926u, var_0.d.x, 0u, 19250u))))), vec2<u32>(countOneBits(global0.d.x), 70342u));
    var_0 = var_1.a.a;
    global2 = array<Struct_2, 4>();
    let var_2 = Struct_2(var_1.b.b, Struct_1(!(!select(vec2<bool>(arg_0, arg_0), var_1.b.b.a, false)), _wgslsmith_f_op_vec2_f32(var_1.b.a.b * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1559f, -903f), vec2<f32>(var_1.b.b.b.x, 1480f), !var_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.b.a.b.x, 1438f)), _wgslsmith_f_op_f32(f32(-1f) * -1344f), -548f, var_1.a.a.c.x)), max(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, var_0.d.x, var_1.a.b.d.x), ~var_0.d), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, 9381u, global0.d.x), vec3<u32>(0u, global0.d.x, 9792u)), vec3<u32>(var_0.d.x, 20537u, 1u), ~vec3<u32>(75300u, 4294967295u, 1u)))));
    return var_1.a.b;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> u32 {
    global0 = func_1(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), arg_3.a.a.x)) || (_wgslsmith_mod_i32(u_input.a.x, 1i) != arg_0));
    global3 = array<i32, 27>();
    var var_0 = ~abs(abs(0u));
    global2 = array<Struct_2, 4>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1346f + _wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x + 789f), arg_1.b.x)))), _wgslsmith_f_op_f32(max(2154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(421f * -1024f), _wgslsmith_f_op_f32(sign(arg_3.b.b.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * arg_3.a.c.x))))));
    return _wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, 27803u) & global0.d.yz, arg_1.d.xy)), _wgslsmith_sub_u32(global0.d.x, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 4>();
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(min(global0.d.x, firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, global0.d.x), vec3<u32>(global0.d.x, global0.d.x, global0.d.x)))), 4u)], Struct_2(Struct_1(vec2<bool>(true, true), global0.c.zy, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.b.x, -1000f, -780f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, global0.c.x, 1362f))), ~vec3<u32>(0u, global0.d.x, 64650u)), Struct_1(select(global0.a, vec2<bool>(global0.a.x, global0.a.x), all(vec2<bool>(false, global0.a.x))), global0.c.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(215f, global0.b.x, -104f, global0.c.x)), countOneBits(global0.d) & global0.d)), _wgslsmith_mult_vec2_u32(vec2<u32>(~1u << (~global0.d.x % 32u), 38190u), vec2<u32>(~1u, func_4(-global3[_wgslsmith_index_u32(2528u, 27u)], func_1(true), 2147483647i, Struct_4(Struct_1(global0.a, global0.c.wy, vec4<f32>(1624f, 1251f, -3017f, 1272f), global0.d), Struct_1(vec2<bool>(false, global0.a.x), global0.c.xz, global0.c, vec3<u32>(global0.d.x, 78187u, 53811u)), global0.d.x)))));
    let var_1 = global0.a.x;
    var var_2 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-global3[_wgslsmith_index_u32(44250u, 27u)], max(u_input.a.x, -42959i), 1i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global0.d.x, 27u)], 21326i))), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(global3[_wgslsmith_index_u32(abs(1u), 27u)], ~u_input.a.x, select(global3[_wgslsmith_index_u32(global0.d.x, 27u)], u_input.a.x, var_0.b.a.a.x), -7085i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, global3[_wgslsmith_index_u32(var_0.b.a.d.x, 27u)], global3[_wgslsmith_index_u32(var_0.a.b.d.x, 27u)], global3[_wgslsmith_index_u32(var_0.a.b.d.x, 27u)]), vec4<i32>(1i, global3[_wgslsmith_index_u32(0u, 27u)], 12191i, global3[_wgslsmith_index_u32(0u, 27u)])) | reverseBits(vec4<i32>(-8313i, 67173i, u_input.a.x, u_input.a.x)))));
    var_2 = -1i;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.b.a.d.x << (((52611u ^ global0.d.x) << (17126u % 32u)) % 32u), global0.d.x), firstLeadingBit(4294967295u)), 4u)];
    var var_4 = _wgslsmith_mod_u32(global0.d.x, 48257u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-538f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.x) + -1077f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_div_f32(199f, -262f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.a.b.x, var_0.b.b.c.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1710f - _wgslsmith_f_op_f32(var_3.a.b.x * global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1158f + var_0.b.b.c.x))))), var_3.a.b.x, _wgslsmith_div_i32(global3[_wgslsmith_index_u32(4294967295u, 27u)] << (0u % 32u), i32(-1i) * -2147483647i) << (firstLeadingBit(countOneBits(var_0.b.a.d.x) | 1u) % 32u), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(81516u, var_0.c.x, global0.d.x, global0.d.x), vec4<u32>(var_0.a.b.d.x, global0.d.x, 0u, 2843u)) & max(vec4<u32>(0u, global0.d.x, var_3.b.d.x, var_3.b.d.x), vec4<u32>(global0.d.x, var_0.a.b.d.x, var_0.c.x, var_0.a.b.d.x)), max(select(vec4<u32>(var_0.c.x, 1u, 7064u, 1u), vec4<u32>(0u, var_3.b.d.x, global0.d.x, global0.d.x), vec4<bool>(var_0.b.a.a.x, var_3.b.a.x, false, var_0.a.b.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(30512u, 0u, global0.d.x, var_3.b.d.x), vec4<u32>(var_3.a.d.x, 72407u, global0.d.x, 66969u))))));
}

