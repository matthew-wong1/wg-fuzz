struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, false, false, false, false, false, false, true, false, false, false, true, false, false, true, true, true, false, true, false, true, true, false, true, true, false);

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, true), 34459i, -1399f, Struct_1(0u, vec2<bool>(true, true), -37840i, -1359f, true));

var<private> global2: array<i32, 26> = array<i32, 26>(18223i, -1i, -62579i, i32(-2147483648), 2147483647i, 16887i, 6000i, 3231i, -52890i, i32(-2147483648), 62812i, -24113i, 0i, 12186i, 3555i, -1i, 7859i, -7508i, i32(-2147483648), -1i, 34728i, -1i, 1i, i32(-2147483648), 2147483647i, 2147483647i);

var<private> global3: array<Struct_2, 11>;

var<private> global4: array<f32, 27> = array<f32, 27>(-881f, 2273f, -336f, 715f, -2282f, -302f, -184f, -1116f, -1349f, -602f, -1206f, 258f, -148f, -647f, -1296f, 480f, 383f, 202f, 198f, -926f, -1557f, -226f, 496f, -306f, -2120f, -285f, -346f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    return ~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(5731u, 1u), ~(~2784u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.a, 1u, global1.d.a, global1.d.a), vec4<u32>(1u, global1.d.a, 21097u, global1.d.a)) >> (global1.d.a % 32u), global1.d.a));
}

fn func_2() -> Struct_4 {
    global2 = array<i32, 26>();
    let var_0 = _wgslsmith_div_i32(global1.d.c, u_input.a) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.d.c, -4774i, -16712i), ~vec3<i32>(global2[_wgslsmith_index_u32(global1.d.a, 26u)], global1.d.c, global2[_wgslsmith_index_u32(global1.d.a, 26u)]));
    return Struct_4(global1.d, !(!vec4<bool>(all(global1.a), global0[_wgslsmith_index_u32(0u, 27u)], false, true)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(global1.d.a, global1.d.a, global1.d.a, 1u), abs(vec4<u32>(1u, global1.d.a, 31511u, 4294967295u)), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 27u)], global1.d.b.x, true)), firstLeadingBit(vec4<u32>(global1.d.a, global1.d.a, 0u, 1u)) << (~vec4<u32>(global1.d.a, global1.d.a, global1.d.a, global1.d.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, global1.d.a), _wgslsmith_add_vec4_u32(~vec4<u32>(global1.d.a, global1.d.a, 1u, 20483u), vec4<u32>(global1.d.a, global1.d.a, global1.d.a, 4294967295u) ^ vec4<u32>(global1.d.a, global1.d.a, global1.d.a, global1.d.a)))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + arg_1.a.d), _wgslsmith_f_op_f32(arg_1.a.d + _wgslsmith_f_op_f32(ceil(global1.d.d)))))));
    return select(arg_0.b.wy, global1.d.b, func_2().a.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<bool>(!select(false, global0[_wgslsmith_index_u32(global1.d.a, 27u)], global1.a.x), false & global1.d.e, global1.d.e, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.d.a << (global1.d.a % 32u), global1.d.a, 4088u), 27u)])) << (~(~vec2<u32>(global1.d.a, global1.d.a) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.d.a, global1.d.a), vec2<u32>(0u, global1.d.a))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<bool, 27>();
    let var_1 = true & global1.d.b.x;
    var var_2 = Struct_1(4294967295u, !func_3(Struct_4(Struct_1(4294967295u, global1.d.b, -1i, global1.d.d, false), vec4<bool>(false, false, true, var_1), vec4<u32>(34160u, 1u, var_0.x, global1.d.a) >> (vec4<u32>(global1.d.a, global1.d.a, var_0.x, global1.d.a) % vec4<u32>(32u))), func_2(), vec2<bool>(global0[_wgslsmith_index_u32(23468u, 27u)] && false, global0[_wgslsmith_index_u32(firstLeadingBit(global1.d.a), 27u)]), var_1), _wgslsmith_dot_vec2_i32(vec2<i32>(global1.d.c, 1i), -vec2<i32>(1i, global2[_wgslsmith_index_u32(global1.d.a, 26u)] << (var_0.x % 32u))), -717f, !func_3(func_2(), Struct_4(Struct_1(global1.d.a, global1.a.xy, global1.d.c, global4[_wgslsmith_index_u32(10907u, 27u)], true), vec4<bool>(var_1, false, false, true), ~vec4<u32>(global1.d.a, 93822u, global1.d.a, 0u)), func_2().a.b, var_1 && true).x);
    var var_3 = var_2.a;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(max(52516u, global1.d.a), 1u), var_2.a), firstLeadingBit(vec2<u32>(func_1(vec4<bool>(false, true, global1.a.x, global0[_wgslsmith_index_u32(var_0.x, 27u)])).x, ~var_0.x))), ~global1.d.a), 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(0i & ((-global1.d.c & _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.c, u_input.a, global2[_wgslsmith_index_u32(var_2.a, 26u)], -1i), vec4<i32>(global1.b, -14401i, -2533i, 2247i))) & global2[_wgslsmith_index_u32(var_2.a >> (~1u % 32u), 26u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.d, 777f, 275f, -525f) * vec4<f32>(global1.c, global1.c, -224f, global1.c)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.d, global4[_wgslsmith_index_u32(var_0.x, 27u)], global4[_wgslsmith_index_u32(1u, 27u)], 828f), vec4<f32>(-1106f, 1086f, var_2.d, 2579f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(58664u, 27u)], -886f, 785f, global4[_wgslsmith_index_u32(var_2.a, 27u)]))))), u_input.a, 1i);
}

