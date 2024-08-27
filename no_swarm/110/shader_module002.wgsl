struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(-180f, vec4<f32>(-231f, -177f, 1000f, 660f), 4294967295u, vec4<i32>(i32(-2147483648), i32(-2147483648), 19658i, 1770i)), 0u, true, 52606u), Struct_2(Struct_1(-1069f, vec4<f32>(-105f, -1871f, 769f, 1508f), 4294967295u, vec4<i32>(i32(-2147483648), 11809i, 1509i, -31056i)), 40739u, true, 34652u), Struct_2(Struct_1(487f, vec4<f32>(1477f, 899f, -456f, 1043f), 18475u, vec4<i32>(7774i, 66635i, -1i, 2147483647i)), 4294967295u, false, 41686u));

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    let var_0 = u_input.a.wy;
    global1 = array<Struct_2, 3>();
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_1 = (!select(true, any(vec4<bool>(true, true, true, false)), false) | true) && false;
    return _wgslsmith_mult_i32(1482i, -12972i >> (global0[_wgslsmith_index_u32((128556u << (1u % 32u)) ^ (1u << (u_input.b % 32u)), 28u)] % 32u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec2<f32>) -> vec4<f32> {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    global1 = array<Struct_2, 3>();
    let var_0 = Struct_2(Struct_1(-443f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.b.x, 925f, arg_2.x, arg_1.a.b.x), vec4<f32>(arg_2.x, arg_3.x, 272f, 535f)))), _wgslsmith_add_u32(select(~165u, firstTrailingBit(1u), arg_1.c | false), ~4294967295u), ~(arg_0 >> (vec4<u32>(36230u, 22797u, 1u, arg_1.d) % vec4<u32>(32u)))), arg_1.a.c, arg_1.c, u_input.b);
    let var_1 = Struct_3(arg_1, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + 468f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(234f, 739f, 731f, arg_1.a.b.x))), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 3206u & arg_1.a.c), select(var_0.a.d, var_0.a.d ^ var_0.a.d, vec4<bool>(var_0.c, false, false, true))), arg_1.a.c, true, countOneBits(33998u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-495f))) - var_0.a.b.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1749f, arg_1.a.a))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.a.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a, -142f, var_1.a.a.b.x, 816f) - arg_2))) + var_1.b.a.b), var_0.a.b);
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(~u_input.a, Struct_2(global2[_wgslsmith_index_u32(~4294967295u, 31u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 28u)], false, u_input.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1658f, 1506f, -509f, -1018f) - vec4<f32>(1379f, -173f, 198f, -186f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1134f, 1109f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, -228f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-355f, -1208f, _wgslsmith_f_op_f32(-218f * 300f), -153f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1192f, 198f, 1161f, -228f), vec4<f32>(-695f, 908f, 397f, -1164f), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, -103f, 1665f, 543f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(183f, -395f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.a, Struct_2(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global0[_wgslsmith_index_u32(32335u, 28u)], false, u_input.b), vec4<f32>(-1881f, -956f, 865f, 433f), vec2<f32>(506f, 1046f))).x * 448f), _wgslsmith_div_f32(-470f, _wgslsmith_f_op_f32(f32(-1f) * -158f)), _wgslsmith_div_f32(-575f, -1011f)))));
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(4294967295u, 3u)], Struct_2(global2[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(62866u, 28u)]), 31u)], _wgslsmith_dot_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(68539u, 1u), u_input.c, vec2<u32>(u_input.b, u_input.c.x)), ~u_input.c, select(true, true, false)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26336u, 28u)], 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<u32>(32285u, 1u) & u_input.c)), abs(_wgslsmith_mult_i32(-2147483647i, u_input.a.x)) <= firstTrailingBit(58859i), u_input.c.x), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2206f + _wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = ~select(min(57343u, _wgslsmith_mod_u32(u_input.c.x, 1u) & 49272u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], u_input.b), abs(vec3<u32>(19375u, 0u, 51675u))), ~select(vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 28u)], 90206u), vec3<u32>(0u, 0u, 4294967295u), vec3<bool>(var_1.b.c, var_1.a.c, false))), var_1.b.c || true);
    global2 = array<Struct_1, 31>();
    let var_3 = ~(~u_input.a.x);
    return select(!vec4<bool>(any(!vec2<bool>(var_1.a.c, var_1.a.c)), var_1.b.c, false, false), vec4<bool>(var_1.c.x > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))), true, false, var_1.b.c), any(vec2<bool>(false, var_1.a.c & var_1.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(-(func_1(_wgslsmith_div_i32(1i, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 43923u, u_input.b, 37684u), vec4<u32>(14517u, 10185u, global0[_wgslsmith_index_u32(5780u, 28u)], u_input.c.x))) & _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), min(u_input.a.x, 2147483647i))), all(select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, u_input.a.x <= -1i), func_2(), vec4<bool>(true, true, true, true))));
    var var_1 = vec4<u32>(1310u, ~26051u, 0u, 0u) << (~_wgslsmith_div_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], 1u, 0u, u_input.c.x)), select(vec4<u32>(0u, 1u, 40400u, global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec4<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 4294967295u, global0[_wgslsmith_index_u32(4190u, 28u)]), !vec4<bool>(var_0.b, false, var_0.b, false))) % vec4<u32>(32u));
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var_1 = ~select(countOneBits((vec4<u32>(25817u, u_input.c.x, var_1.x, var_1.x) & vec4<u32>(1866u, 38260u, 7389u, u_input.b)) ^ abs(vec4<u32>(0u, 4294967295u, u_input.c.x, 11818u))), ~vec4<u32>(34849u, ~0u, reverseBits(4294967295u), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1.x, 28u)], 1u)), select(func_2(), func_2(), select(select(vec4<bool>(true, true, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 523f);
}

