struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, true, true, true, true, true, false, false, true, true, true);

var<private> global1: Struct_4;

var<private> global2: Struct_1 = Struct_1(true, false, 47383u, 24696u, true);

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-493f, Struct_1(false, false, 14570u, 7165u, true), Struct_1(false, true, 64404u, 319u, true), 0u), Struct_2(1000f, Struct_1(true, true, 47918u, 213u, false), Struct_1(false, true, 0u, 1u, false), 49093u), Struct_2(1105f, Struct_1(true, false, 1u, 4294967295u, false), Struct_1(false, true, 17931u, 1u, true), 21225u), Struct_2(1423f, Struct_1(false, true, 4294967295u, 4294967295u, false), Struct_1(false, false, 79158u, 34179u, false), 29837u), Struct_2(-596f, Struct_1(true, true, 6864u, 1u, false), Struct_1(false, false, 36168u, 1u, false), 79325u), Struct_2(-525f, Struct_1(true, true, 27970u, 53522u, false), Struct_1(true, false, 1u, 4294967295u, true), 32310u), Struct_2(446f, Struct_1(true, false, 34588u, 46225u, false), Struct_1(true, true, 45824u, 4294967295u, false), 1u), Struct_2(-884f, Struct_1(false, true, 4294967295u, 53973u, true), Struct_1(true, true, 88265u, 80526u, true), 1u), Struct_2(-613f, Struct_1(false, true, 94754u, 52324u, false), Struct_1(true, true, 104958u, 0u, false), 16952u), Struct_2(-1625f, Struct_1(true, false, 55943u, 0u, true), Struct_1(false, false, 0u, 38556u, true), 41340u), Struct_2(-601f, Struct_1(true, false, 16634u, 4294967295u, true), Struct_1(true, false, 7242u, 4294967295u, true), 4294967295u), Struct_2(483f, Struct_1(true, false, 10413u, 102129u, true), Struct_1(false, true, 60356u, 33682u, true), 0u));

var<private> global4: array<vec4<f32>, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    let var_0 = true;
    let var_1 = Struct_3(var_0, true);
    var var_2 = Struct_1(var_1.b, true, select(1u, 17591u, true), abs(firstTrailingBit(global1.a.x)), true);
    var var_3 = abs(1u ^ global1.a.x);
    let var_4 = Struct_1(false, true, abs(global2.c), 1u, true);
    return vec3<i32>(~_wgslsmith_dot_vec2_i32(firstTrailingBit(-global1.d.yy), vec2<i32>(global1.d.x, 0i) >> (max(u_input.d.wz, vec2<u32>(var_4.d, 80329u)) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(select(-(~vec2<i32>(-2147483647i, global1.d.x)), ~abs(vec2<i32>(45930i, 10029i)), any(vec4<bool>(true, global2.b, true, global1.c))), vec2<i32>(_wgslsmith_div_i32(u_input.b.x, 70598i) & _wgslsmith_div_i32(u_input.b.x, u_input.b.x), -(1i >> (0u % 32u)))), global1.d.x);
}

fn func_2(arg_0: f32) -> vec4<i32> {
    var var_0 = Struct_4(vec4<u32>(global2.c, ~_wgslsmith_dot_vec2_u32(global1.a.zx, vec2<u32>(20786u, global1.a.x)) ^ firstTrailingBit(u_input.d.x), ~(~18433u), 27922u), !select(vec3<bool>(global0[_wgslsmith_index_u32(72180u, 13u)], global2.b, !global0[_wgslsmith_index_u32(4294967295u, 13u)]), !(!global1.b), true), false, -(global1.d ^ global1.d) ^ vec3<i32>(-_wgslsmith_sub_i32(1i, u_input.b.x), ~u_input.b.x | global1.d.x, ~u_input.b.x));
    global1 = Struct_4(u_input.d, var_0.b, false, func_3());
    global4 = array<vec4<f32>, 20>();
    let var_1 = var_0.a;
    global3 = array<Struct_2, 12>();
    return vec4<i32>(-(~(-(~0i))), ~(-2147483647i), 25792i >> (~(~u_input.c) % 32u), var_0.d.x);
}

fn func_1(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = func_2(2868f) << (_wgslsmith_sub_vec4_u32(global1.a, select((vec4<u32>(u_input.a, 1u, 14922u, 23136u) & u_input.d) & vec4<u32>(17564u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(~arg_0.b.d, global1.a.x, ~u_input.d.x, 4193u), all(select(vec4<bool>(global2.a, global2.b, true, global2.b), vec4<bool>(global2.b, false, true, arg_0.c.a), true)))) % vec4<u32>(32u));
    var var_1 = Struct_5(Struct_4(global1.a, !(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 13u)], global1.b.x))), false, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(40069i, u_input.b.x), vec2<i32>(22256i, u_input.b.x)), vec2<i32>(u_input.b.x, global1.d.x)), global1.d.x, abs(_wgslsmith_mult_i32(1i, -1i)))), 871f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global4[_wgslsmith_index_u32(global1.a.x, 20u)], global4[_wgslsmith_index_u32(4294967295u, 20u)], global2.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(434f, arg_0.a, 2175f, arg_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a, -2044f, arg_0.a, arg_0.a), global4[_wgslsmith_index_u32(global2.d, 20u)], vec4<bool>(arg_0.c.e, false, global2.a, arg_0.c.b)))) - vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(arg_0.a * -1776f), 218f))));
    global2 = Struct_1(true, true, firstTrailingBit(~(~_wgslsmith_add_u32(0u, global2.c))), arg_0.c.c, false || !(!arg_0.b.e));
    let var_2 = vec3<i32>(global1.d.x, 0i, -var_1.a.d.x);
    let var_3 = Struct_3(true, true);
    return var_0.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global3[_wgslsmith_index_u32(~4294967295u, 12u)]);
    global3 = array<Struct_2, 12>();
    let var_1 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(abs(9604u)), u_input.d.x, ~(~0u)), 4294967295u << (max(0u, u_input.a) % 32u)), ~(~(~u_input.a)) << (global1.a.x % 32u));
    global2 = Struct_1(true & global1.b.x, global0[_wgslsmith_index_u32(global1.a.x, 13u)], ~1u, _wgslsmith_add_u32(43272u, global2.d) | _wgslsmith_dot_vec4_u32(u_input.d, firstLeadingBit(vec4<u32>(45169u, global1.a.x, global2.d, 4294967295u))), true);
    global2 = Struct_1(false, !(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(global2.e, true, global0[_wgslsmith_index_u32(global1.a.x, 13u)], true), vec4<bool>(global2.a, true, false, true)))), u_input.a, global2.d, global1.c);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-444f))))), -247f)));
    global1 = Struct_4(countOneBits(global1.a), !(!select(select(global1.b, vec3<bool>(global2.a, false, global2.a), vec3<bool>(global2.e, true, global0[_wgslsmith_index_u32(global2.d, 13u)])), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(global2.c, 13u)]), vec3<bool>(global2.a, false, global1.c), true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], false), vec3<bool>(false, global2.b, true), global1.b.x))), u_input.d.x > var_1.x, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec4<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(29837u, var_1.x) | vec2<u32>(4294967295u, u_input.a), vec2<u32>(global2.c, var_1.x) | vec2<u32>(21905u, global1.a.x), !global1.b.xx), countOneBits(var_1)), 87121u, select(55045u, u_input.a, true), select(1u, 0u, global1.a.x < abs(var_1.x))));
}

