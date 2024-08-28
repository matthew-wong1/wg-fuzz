struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-343f, -1424f, -1059f, -776f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(146f, 1209f, 276f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(803f, 221f, -1600f))))), Struct_1(true)), 1i ^ (-u_input.a.x | u_input.a.x)), 4294967295u <= (firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 5u)]) & ~abs(32369u)), Struct_1(true), 0i, select(true, all(vec2<bool>(true, true)), true) || !any(vec2<bool>(true, false)));
    global1 = array<vec4<bool>, 5>();
    global1 = array<vec4<bool>, 5>();
    let var_1 = var_0.a.a;
    global0 = array<u32, 5>();
    return !vec3<bool>(~(2125u ^ global0[_wgslsmith_index_u32(72940u, 5u)]) < _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 1u), u_input.c.x), true, ~(1u << (u_input.b.x % 32u)) > (1u << (_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], 16890u, global0[_wgslsmith_index_u32(4294967295u, 5u)])) % 32u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = !vec3<bool>(arg_1.a, false, arg_0.d.a);
    global1 = array<vec4<bool>, 5>();
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(~4294967295u, 5u)]);
    var var_2 = Struct_5(_wgslsmith_add_u32(u_input.b.x, ~global0[_wgslsmith_index_u32(min(min(17164u, global0[_wgslsmith_index_u32(23150u, 5u)]), u_input.b.x), 5u)]));
    var_0 = select(func_3(), vec3<bool>(false, all(vec4<bool>(true, all(vec2<bool>(arg_1.a, var_0.x)), false, arg_0.a.a)), arg_1.a), var_0.x);
    return _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(~u_input.c.x, _wgslsmith_mod_u32(var_1.a, 1u), 0u), max(vec3<u32>(53765u, 1u, global0[_wgslsmith_index_u32(4294967295u, 5u)]) >> (~vec3<u32>(var_1.a, 5009u, u_input.b.x) % vec3<u32>(32u)), firstTrailingBit(select(vec3<u32>(var_1.a, 95979u, global0[_wgslsmith_index_u32(var_2.a, 5u)]), vec3<u32>(var_1.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u), false)))), u_input.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1715f);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_1 = arg_1;
    global1 = array<vec4<bool>, 5>();
    return Struct_2(arg_3, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(floor(var_0))), 325f)), _wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(round(var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1495f, -1000f, 805f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), arg_3.a))), Struct_1(true));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: f32) -> vec3<i32> {
    var var_0 = arg_0.d.a;
    var var_1 = arg_0.a.a;
    let var_2 = 1u << (1u % 32u);
    var_0 = func_3().x;
    let var_3 = Struct_5(_wgslsmith_add_u32(abs(u_input.b.x), var_2));
    return vec3<i32>(~47149i, reverseBits(~u_input.a.x), -u_input.a.x);
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_5) -> vec2<i32> {
    global0 = array<u32, 5>();
    let var_0 = func_4(_wgslsmith_clamp_vec3_u32(countOneBits(u_input.c), vec3<u32>(u_input.b.x >> (~arg_3.a % 32u), 1u, 1u << (0u % 32u)), ~(u_input.c | u_input.c) | firstLeadingBit(u_input.c & u_input.c)), arg_3, -23371i, Struct_1(true));
    global0 = array<u32, 5>();
    let var_1 = select(vec2<bool>(false, false), vec2<bool>(true && all(select(global1[_wgslsmith_index_u32(arg_3.a, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], vec4<bool>(var_0.a.a, var_0.a.a, var_0.d.a, var_0.d.a))), var_0.d.a), vec2<bool>(true, func_4(vec3<u32>(~0u, ~u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3826u, 5u)], 5u)] & global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), Struct_5(~4294967295u), u_input.a.x ^ min(-45628i, arg_2.x), Struct_1(var_0.d.a)).d.a));
    var var_2 = ~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_3.a, 5u)], 4294967295u, arg_3.a) & ~vec4<u32>(0u, 0u, u_input.c.x, 52u), vec4<u32>(1492u, u_input.c.x, 0u, 1u) ^ (vec4<u32>(11368u, 2199u, 71420u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4148u, 5u)], 5u)]) << (vec4<u32>(global0[_wgslsmith_index_u32(27357u, 5u)], 43066u, arg_3.a, u_input.b.x) % vec4<u32>(32u)))));
    return vec2<i32>(select(u_input.a.x, ~(~35431i), true), _wgslsmith_dot_vec4_i32(max(u_input.a, vec4<i32>(arg_2.x, arg_2.x, -2147483647i, arg_2.x)), ~u_input.a)) ^ ~vec2<i32>(1i, _wgslsmith_clamp_i32(arg_2.x, u_input.a.x, u_input.a.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> vec4<f32> {
    global1 = array<vec4<bool>, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -882f, 1008f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1318f, 801f, -778f), vec3<f32>(-100f, -215f, 2115f)))))));
    var var_1 = _wgslsmith_mod_vec2_i32(u_input.a.zz, ~vec2<i32>(abs(countOneBits(u_input.a.x)), firstLeadingBit(-56530i)));
    var_1 = func_6(1581f, -447f, func_5(func_4(firstLeadingBit(func_2(Struct_2(Struct_1(true), vec4<f32>(var_0.x, 165f, var_0.x, -364f), vec3<f32>(730f, var_0.x, 771f), Struct_1(true)), Struct_1(false))), Struct_5(arg_1), min(u_input.a.x >> (0u % 32u), -1i), Struct_1(arg_1 < 4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, 720f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2140f, -1346f, -1704f, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, 396f)))), var_0.x), Struct_5(_wgslsmith_clamp_u32(~1u, firstLeadingBit(u_input.c.x), 1u)));
    var_1 = ~arg_3.wz;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.x, 893f, var_0.x))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(664f, var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x)), all(vec3<bool>(true, true, true)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1411f))), _wgslsmith_f_op_f32(1873f + _wgslsmith_f_op_f32(abs(-139f))), _wgslsmith_f_op_f32(1000f * -571f), _wgslsmith_f_op_f32(step(-1442f, _wgslsmith_f_op_f32(max(134f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 596f, var_0.x, var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(abs(~67707u));
    var_0 = Struct_5(u_input.c.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-621f, 1209f, -923f, -627f), vec4<f32>(-205f, 1539f, -1163f, 451f), true)), vec4<f32>(-130f, -345f, -1000f, 1000f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(u_input.a.xwx, u_input.b.x, var_0.a, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1849f, -1932f, -916f, 1000f) + vec4<f32>(2005f, 356f, 310f, 2678f))))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(138f, -1000f), -210f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(673f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3031f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1183f)), _wgslsmith_f_op_f32(-681f + 1849f)))));
    var var_2 = abs(vec4<i32>(1i, 0i, u_input.a.x ^ (u_input.a.x ^ u_input.a.x), max(_wgslsmith_mod_i32(firstTrailingBit(-25478i), 8970i | u_input.a.x), ~(-27275i & u_input.a.x))));
    var var_3 = var_1.zwz;
    let var_4 = Struct_5(16025u >> (((~0u >> (_wgslsmith_sub_u32(1u, var_0.a) % 32u)) >> (_wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 16221u)) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~vec2<u32>(10957u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.a, var_0.a), 1u << (0u % 32u))));
}

