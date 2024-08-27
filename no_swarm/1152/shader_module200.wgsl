struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: vec3<bool>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(51297u, Struct_1(vec2<bool>(true, true), 73912u), Struct_1(vec2<bool>(false, false), 13286u), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, false), 1000f, vec3<bool>(false, false, true), true, Struct_1(vec2<bool>(false, false), 59674u)), Struct_1(vec2<bool>(false, true), 1u), vec3<u32>(77949u, 0u, 1u), Struct_1(vec2<bool>(true, true), 15535u)), vec2<u32>(1u, 17844u))), Struct_5(47471u, Struct_1(vec2<bool>(false, false), 73700u), Struct_1(vec2<bool>(true, true), 26424u), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, true, false), -412f, vec3<bool>(true, false, false), false, Struct_1(vec2<bool>(true, true), 49652u)), Struct_1(vec2<bool>(false, false), 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), Struct_1(vec2<bool>(false, true), 4294967295u)), vec2<u32>(53649u, 16454u))), Struct_5(4294967295u, Struct_1(vec2<bool>(false, false), 4294967295u), Struct_1(vec2<bool>(false, true), 4294967295u), Struct_4(Struct_3(vec2<bool>(true, true), Struct_2(vec3<bool>(false, false, true), 1398f, vec3<bool>(true, true, true), false, Struct_1(vec2<bool>(true, false), 4294967295u)), Struct_1(vec2<bool>(false, true), 18033u), vec3<u32>(1u, 90264u, 4294967295u), Struct_1(vec2<bool>(true, true), 1u)), vec2<u32>(0u, 1715u))), Struct_5(0u, Struct_1(vec2<bool>(false, true), 18631u), Struct_1(vec2<bool>(true, true), 4023u), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(true, false, true), -525f, vec3<bool>(false, false, false), false, Struct_1(vec2<bool>(true, true), 4294967295u)), Struct_1(vec2<bool>(true, true), 4294967295u), vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec2<bool>(false, true), 1u)), vec2<u32>(71312u, 21455u))), Struct_5(55077u, Struct_1(vec2<bool>(false, true), 33512u), Struct_1(vec2<bool>(true, false), 66639u), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, true), -1000f, vec3<bool>(false, true, true), false, Struct_1(vec2<bool>(false, true), 16083u)), Struct_1(vec2<bool>(false, true), 35995u), vec3<u32>(657u, 0u, 1u), Struct_1(vec2<bool>(false, false), 9343u)), vec2<u32>(4294967295u, 0u))), Struct_5(33707u, Struct_1(vec2<bool>(false, false), 59743u), Struct_1(vec2<bool>(true, true), 37608u), Struct_4(Struct_3(vec2<bool>(false, false), Struct_2(vec3<bool>(false, true, true), -1349f, vec3<bool>(false, true, false), true, Struct_1(vec2<bool>(false, false), 4294967295u)), Struct_1(vec2<bool>(false, true), 0u), vec3<u32>(1u, 47503u, 70238u), Struct_1(vec2<bool>(true, true), 5051u)), vec2<u32>(267u, 110646u))), Struct_5(0u, Struct_1(vec2<bool>(false, false), 0u), Struct_1(vec2<bool>(false, false), 17313u), Struct_4(Struct_3(vec2<bool>(false, true), Struct_2(vec3<bool>(false, true, false), -665f, vec3<bool>(false, true, true), false, Struct_1(vec2<bool>(false, false), 0u)), Struct_1(vec2<bool>(false, true), 337u), vec3<u32>(62763u, 43753u, 0u), Struct_1(vec2<bool>(false, false), 24785u)), vec2<u32>(40134u, 102897u))), Struct_5(4294967295u, Struct_1(vec2<bool>(true, true), 55793u), Struct_1(vec2<bool>(false, false), 42156u), Struct_4(Struct_3(vec2<bool>(true, false), Struct_2(vec3<bool>(false, false, false), -1254f, vec3<bool>(true, false, false), false, Struct_1(vec2<bool>(false, true), 4294967295u)), Struct_1(vec2<bool>(true, true), 4294967295u), vec3<u32>(1483u, 0u, 4294967295u), Struct_1(vec2<bool>(false, false), 0u)), vec2<u32>(4294967295u, 0u))));

var<private> global2: f32;

var<private> global3: vec4<u32>;

var<private> global4: array<f32, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>) -> vec2<bool> {
    global3 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(select(~vec4<u32>(4294967295u, 60512u, arg_0.x, 0u), u_input.a, false), u_input.a), ~vec4<u32>(global3.x, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_0.x, 1u, 80798u, 2584u)), 24636u, 4294967295u & global3.x));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.x, 3u)])), _wgslsmith_f_op_f32(abs(-886f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)), _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(~abs(4294967295u), 3u)])));
    let var_1 = -_wgslsmith_sub_i32(-39415i, -35390i);
    let var_2 = Struct_1(vec2<bool>(true, false), _wgslsmith_div_u32(27228u, ~18696u) >> (_wgslsmith_mult_u32(global3.x, abs(~970u)) % 32u));
    let var_3 = Struct_5(5240u, Struct_1(select(vec2<bool>(!var_2.a.x, any(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x))), var_2.a, var_2.a), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a | u_input.a, firstTrailingBit(u_input.a)), firstLeadingBit(vec4<u32>(25577u, u_input.a.x, global3.x, arg_0.x)))), var_2, Struct_4(Struct_3(select(!var_2.a, select(vec2<bool>(false, false), var_2.a, var_2.a.x), var_2.a), global0[_wgslsmith_index_u32(global3.x, 5u)], var_2, _wgslsmith_mod_vec3_u32(global3.xxz, global3.ywz), Struct_1(!vec2<bool>(true, var_2.a.x), var_2.b)), global3.wz));
    return select(var_2.a, select(var_3.c.a, var_3.d.a.a, vec2<bool>(var_2.a.x, var_3.d.a.e.a.x)), true | (-666f >= _wgslsmith_f_op_f32(floor(-897f))));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -959f);
    global0 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) - -377f)) * var_0);
    global1 = array<Struct_5, 8>();
    var var_2 = min(u_input.c.x, _wgslsmith_dot_vec3_i32(reverseBits(u_input.b), vec3<i32>(-1i) * -abs(vec3<i32>(u_input.b.x, u_input.e, 23886i))));
    return select(!func_3(~vec2<u32>(0u, 12989u)), vec2<bool>(false, true), select(true, global4[_wgslsmith_index_u32(1602u, 3u)] < _wgslsmith_f_op_f32(641f + global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(32702u, 1u), 3u)]), func_3(_wgslsmith_div_vec2_u32(select(vec2<u32>(u_input.d, 1u), u_input.a.xw, vec2<bool>(false, false)), vec2<u32>(global3.x, u_input.a.x))).x));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = arg_0;
    global0 = array<Struct_2, 5>();
    global3 = u_input.a;
    let var_1 = Struct_3(!func_2(), global0[_wgslsmith_index_u32(1u, 5u)], Struct_1(!(!vec2<bool>(arg_0, arg_0)), select(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x & global3.x, global3.x), true)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, u_input.a.x), u_input.d, ~global3.x, _wgslsmith_sub_u32(4294967295u, 25792u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 94288u, u_input.a.x, u_input.d), u_input.a)), 1u, _wgslsmith_add_u32(select(global3.x, 17917u, u_input.d >= u_input.d), _wgslsmith_mod_u32(reverseBits(u_input.d), ~u_input.a.x))), Struct_1(!(!vec2<bool>(arg_0, true)), ~firstTrailingBit(_wgslsmith_clamp_u32(13694u, 71187u, 54013u))));
    global3 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, max(var_1.b.e.b, global3.x), 30100u, global3.x), vec4<u32>(min(4294967295u, 62320u) ^ ~u_input.d, 52021u, 6144u, ~countOneBits(var_1.e.b)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, global3.x, var_1.d.x), reverseBits(vec4<u32>(var_1.e.b, 1u, global3.x, 81080u))))), vec4<u32>(~23819u, max(abs(4294967295u), firstTrailingBit(~var_1.e.b)), ~u_input.d, 69891u));
    return Struct_1(func_3(abs(~abs(vec2<u32>(4294967295u, global3.x)))), ~firstTrailingBit(4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-308f * global4[_wgslsmith_index_u32(1u, 3u)])));
    global0 = array<Struct_2, 5>();
    var var_1 = !arg_0.a.x;
    var var_2 = arg_0;
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~49082u, _wgslsmith_add_u32(arg_1.x, arg_1.x)), 33398u, 4294967295u, 23660u), u_input.a, min(~u_input.a, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0.b, 26438u, 27368u, 4294967295u)), ~u_input.a)))), 5u)];
    return StorageBuffer(~max(79219u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_3.e.b, var_3.e.b), vec3<u32>(global3.x, 14181u, global3.x))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(max(_wgslsmith_dot_vec2_i32(u_input.c, u_input.b.xz), u_input.e), 1i), 7080i, -17069i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(1u, 3u)], -839f, global4[_wgslsmith_index_u32(4420u, 3u)], global4[_wgslsmith_index_u32(u_input.a.x, 3u)]) + vec4<f32>(global4[_wgslsmith_index_u32(global3.x, 3u)], 328f, -922f, 1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(step(-1834f, -452f)), _wgslsmith_div_f32(-193f, global4[_wgslsmith_index_u32(u_input.d, 3u)]), _wgslsmith_f_op_f32(1071f * global4[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 3u)])))));
    var var_1 = global3.yxx;
    let x = u_input.a;
    s_output = func_4(func_1(true), firstLeadingBit(countOneBits(vec3<u32>(43187u, _wgslsmith_add_u32(0u, 85300u), u_input.d))), all(!(!func_3(vec2<u32>(1u, var_1.x)))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(global3.zyx, global3.zwx), 1u, max(u_input.d | 83536u, u_input.d)), firstLeadingBit(select(u_input.a.xxz, ~u_input.a.ywx, true))));
}

