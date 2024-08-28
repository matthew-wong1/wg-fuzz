struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: Struct_3 = Struct_3(Struct_2(-1000f, Struct_1(true, vec3<u32>(1u, 130u, 52343u), false, vec2<i32>(1i, 73797i)), Struct_1(false, vec3<u32>(23825u, 0u, 4294967295u), true, vec2<i32>(12730i, 49557i)), Struct_1(false, vec3<u32>(20818u, 29404u, 4294967295u), false, vec2<i32>(-49063i, 44861i)), false), vec4<u32>(4294967295u, 4294967295u, 49192u, 4294967295u), vec3<bool>(true, false, true), Struct_2(1254f, Struct_1(false, vec3<u32>(81449u, 0u, 9049u), false, vec2<i32>(21833i, 2147483647i)), Struct_1(true, vec3<u32>(0u, 26511u, 51015u), false, vec2<i32>(-15107i, -11257i)), Struct_1(true, vec3<u32>(0u, 947u, 0u), true, vec2<i32>(1i, 41962i)), true), vec4<i32>(i32(-2147483648), 13374i, 1982i, -7968i));

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_2, 17>;

var<private> global4: array<u32, 8> = array<u32, 8>(1u, 0u, 4294967295u, 1u, 13837u, 28084u, 0u, 16310u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global3 = array<Struct_2, 17>();
    global1 = Struct_3(Struct_2(-1000f, Struct_1(false, ~vec3<u32>(1u, 64452u, 0u), select(false, arg_0, arg_0), global1.e.yz), Struct_1(all(select(global1.c, global1.c, true)), _wgslsmith_clamp_vec3_u32(global1.a.b.b, vec3<u32>(global2.x, 0u, global4[_wgslsmith_index_u32(global1.d.d.b.x, 8u)]), _wgslsmith_div_vec3_u32(global1.a.b.b, vec3<u32>(global1.b.x, 4294967295u, global2.x))), true, global1.d.b.d), Struct_1(false, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global1.b.x, global1.a.d.b.x), vec3<u32>(global2.x, 0u, global4[_wgslsmith_index_u32(0u, 8u)])), global1.a.b.a, u_input.a.xz), any(select(vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, global1.a.c.a), global1.c))), min(global1.b, countOneBits(global1.b) & abs(~global1.b)), global1.c, Struct_2(-898f, Struct_1(global4[_wgslsmith_index_u32(global1.a.d.b.x, 8u)] <= global4[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global4[_wgslsmith_index_u32(7614u, 8u)], global1.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, global4[_wgslsmith_index_u32(global1.d.b.b.x, 8u)], global4[_wgslsmith_index_u32(11063u, 8u)]), vec3<u32>(global4[_wgslsmith_index_u32(24483u, 8u)], global2.x, global2.x))), true, u_input.a.zx), global1.a.d, global1.d.c, true), select(vec4<i32>(global1.a.d.d.x, _wgslsmith_add_i32(-7275i, u_input.a.x), -57894i, -firstLeadingBit(10558i)), -max(vec4<i32>(1i, 1i, global1.d.b.d.x, u_input.b.x), vec4<i32>(-60504i, global1.a.c.d.x, 1i, 30579i)), vec4<bool>(all(vec4<bool>(arg_0, true, global1.c.x, global1.c.x)), true, true, u_input.b.x != u_input.a.x)));
    var var_0 = select(!global1.c, !vec3<bool>((arg_0 | arg_0) && true, true || global1.c.x, true || all(vec4<bool>(arg_0, global1.d.b.c, arg_0, arg_0))), true);
    let var_1 = vec2<i32>(max(~38680i, _wgslsmith_mod_i32(max(u_input.a.x, 1i), u_input.b.x)) << (~(~27889u >> (0u % 32u)) % 32u), abs(global1.a.b.d.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.d.a)))), global1.d.d, Struct_1(all(!select(vec2<bool>(false, var_0.x), vec2<bool>(global1.d.d.c, var_0.x), var_0.zy)), global1.a.b.b, var_0.x, countOneBits(vec2<i32>(select(9945i, 31975i, var_0.x), -17201i))), Struct_1(false, vec3<u32>(global4[_wgslsmith_index_u32(abs(global2.x << (global1.b.x % 32u)), 8u)], global1.d.d.b.x, reverseBits(countOneBits(0u))), true, vec2<i32>(var_1.x, global1.e.x) << (global1.b.xy % vec2<u32>(32u))), false);
    return 20632u << (var_2.d.b.x % 32u);
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = abs(~(u_input.b.x ^ ~(-2481i)));
    let var_1 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -40543i), -(firstLeadingBit(2147483647i) ^ max(global1.a.b.d.x, u_input.b.x)));
    var var_2 = global1.c.zy;
    let var_3 = ~reverseBits(func_3(any(vec4<bool>(true, var_2.x, true, var_2.x))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(trunc(global1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.a, -799f)) - _wgslsmith_f_op_f32(ceil(-274f))));
    return ~(~(~(~4294967295u))) << (abs(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~min(14986u, var_3)), 8u)]) % 32u);
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_add_vec3_u32(select(_wgslsmith_add_vec3_u32(select(~vec3<u32>(57177u, 1u, arg_1.b.a.d.b.x), firstTrailingBit(vec3<u32>(0u, global2.x, arg_0)), global1.c.x), arg_1.b.a.c.b), vec3<u32>(1u, _wgslsmith_add_u32(~arg_1.b.d.b.b.x, global4[_wgslsmith_index_u32(4294967295u, 8u)] ^ global1.a.b.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(71977u, 0u, 0u, 0u), vec4<u32>(arg_0, 4294967295u, 16374u, 17965u))), select(select(vec3<bool>(false, true, true), !global1.c, false), global1.c, arg_1.b.c)), _wgslsmith_clamp_vec3_u32(global1.d.d.b, _wgslsmith_add_vec3_u32(~(~arg_1.b.d.c.b), vec3<u32>(func_3(arg_1.b.a.d.c), arg_0, ~29285u)), countOneBits(~(~arg_1.b.b.zxy))));
    let var_1 = arg_1.b.a.d;
    let var_2 = vec3<f32>(global1.a.a, -170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1129f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -363f) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.a.a, -709f, arg_1.b.a.c.a)) + arg_3.x))));
    let var_4 = vec4<bool>(true, arg_1.b.d.e || !global1.c.x, var_1.a, false);
    return u_input.a.x;
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(682f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.d.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, global1.d.a))), global1.a.a));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(abs(firstTrailingBit(abs(arg_0.d.x))), _wgslsmith_mod_i32(u_input.b.x, -46393i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global1.e.x, _wgslsmith_add_i32(global1.d.c.d.x, _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(global1.e.x, -1i))), i32(-1i) * -global1.d.c.d.x), 77180i | global1.a.c.d.x), global1.d.b.d.x, func_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, -699f, var_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1335f, -510f, 436f) - vec3<f32>(-1059f, var_0.x, -799f)))), Struct_4(_wgslsmith_f_op_f32(-global1.a.a), Struct_3(global3[_wgslsmith_index_u32(func_3(false), 17u)], vec4<u32>(1u, global1.d.b.b.x, 1u, 4294967295u), global1.c, global3[_wgslsmith_index_u32(~global2.x, 17u)], abs(global1.e)), _wgslsmith_div_vec4_i32(u_input.b, max(u_input.a, vec4<i32>(48435i, global1.a.d.d.x, u_input.a.x, u_input.a.x)))), u_input.a.wxy, vec4<f32>(_wgslsmith_f_op_f32(-1292f * -292f), _wgslsmith_f_op_f32(abs(global1.d.a)), 427f, -1707f)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(507f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.a, _wgslsmith_f_op_f32(f32(-1f) * -496f))))));
    global4 = array<u32, 8>();
    var var_3 = 0i;
    return StorageBuffer(~arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.d.d.b;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1240f))), -1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f) - 1811f)));
    global0 = array<vec2<f32>, 13>();
    global4 = array<u32, 8>();
    var var_1 = vec2<u32>(4294967295u, 10993u);
    let var_2 = _wgslsmith_f_op_f32(trunc(-538f));
    let var_3 = u_input.a.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.d.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(166f - 1766f), global1.a.a) - var_0.x)));
    let x = u_input.a;
    s_output = func_1(global1.d.b);
}

