struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-69999i, 0i, i32(-2147483648));

var<private> global1: array<f32, 25>;

var<private> global2: array<Struct_1, 28>;

var<private> global3: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(18299i, 31386i, 1i), vec3<i32>(-17256i, -1i, -1i), vec3<i32>(-17319i, i32(-2147483648), 25455i), vec3<i32>(2147483647i, 0i, 56059i), vec3<i32>(1i, -11949i, 2147483647i), vec3<i32>(i32(-2147483648), 44552i, i32(-2147483648)), vec3<i32>(1i, i32(-2147483648), -42860i), vec3<i32>(-35057i, 15019i, -4930i), vec3<i32>(1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 34404i, 31369i), vec3<i32>(-9478i, -7730i, -5681i), vec3<i32>(21536i, -2624i, -2007i), vec3<i32>(58049i, -1i, -37079i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(-28452i, i32(-2147483648), -1i), vec3<i32>(0i, i32(-2147483648), -15167i), vec3<i32>(-41216i, -45121i, -33236i), vec3<i32>(-1i, 71069i, 19300i), vec3<i32>(20581i, -1i, 0i), vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(2147483647i, 0i, -97i), vec3<i32>(-7056i, i32(-2147483648), 1i), vec3<i32>(20028i, 18300i, -44169i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(2147483647i, -8371i, -1i), vec3<i32>(-6443i, 0i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(34001i, 2147483647i, -18006i), vec3<i32>(-18504i, i32(-2147483648), 1i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(2147483647i, -48672i, -50211i));

var<private> global4: vec3<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    global4 = !(!vec3<bool>(any(select(vec4<bool>(false, false, global4.x, true), vec4<bool>(true, global4.x, false, global4.x), global4.x)), !(u_input.a < u_input.a), global4.x));
    global3 = array<vec3<i32>, 31>();
    let var_0 = Struct_2(vec3<bool>(true, all(!select(vec4<bool>(false, global4.x, global4.x, global4.x), vec4<bool>(true, true, true, global4.x), true)), false), min(countOneBits(firstTrailingBit(vec3<u32>(0u, 16897u, u_input.a))) | vec3<u32>(~42021u, firstTrailingBit(u_input.a), ~u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(4294967295u, 20317u, 4294967295u), vec3<u32>(15550u, 52648u, u_input.a)), vec3<u32>(u_input.a, 79655u, u_input.a) >> (vec3<u32>(u_input.a, 19871u, u_input.a) % vec3<u32>(32u))), ~min(vec3<u32>(63991u, 17135u, 1u), vec3<u32>(14473u, 1u, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * -197f))) - _wgslsmith_f_op_f32(f32(-1f) * -2057f)), global2[_wgslsmith_index_u32(~(~(~1u >> (u_input.a % 32u))), 28u)], select(select(!vec4<bool>(global4.x, global4.x, global4.x, global4.x), select(!vec4<bool>(false, global4.x, true, false), select(vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(global4.x, global4.x, true, false), true), select(vec4<bool>(true, false, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, false, global4.x))), true), vec4<bool>(true, true, true, false), select(!(!vec4<bool>(global4.x, global4.x, global4.x, global4.x)), select(vec4<bool>(true, true, true, false), vec4<bool>(global4.x, false, false, global4.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global4.x, global4.x, global4.x, true), true)), false)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1117f), 655f));
    global2 = array<Struct_1, 28>();
    return select(vec4<u32>(var_0.b.x, 74210u, var_0.b.x ^ ~(~2273u), var_0.b.x), abs(vec4<u32>(select(select(var_0.b.x, u_input.a, global4.x), ~29373u, global4.x || false), 1u, max(firstTrailingBit(var_0.b.x), var_0.b.x), 7039u)), global4.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    let var_0 = firstLeadingBit(~37949i);
    var var_1 = _wgslsmith_add_i32(global0.x, arg_1.x);
    let var_2 = Struct_2(vec3<bool>(global4.x, (arg_0.b.x > u_input.a) && false, false), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_div_u32(u_input.a, 0u)), _wgslsmith_sub_u32(max(arg_0.b.x, 0u), ~1u), ~_wgslsmith_sub_u32(u_input.a, u_input.a)) << (reverseBits(arg_0.b) % vec3<u32>(32u)), 830f, arg_0.d, !vec4<bool>(arg_0.d.b.x, false, !global4.x, global4.x));
    var var_3 = var_0;
    global3 = array<vec3<i32>, 31>();
    return _wgslsmith_dot_vec4_u32(select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(7289u, 41784u, 0u, u_input.a), vec4<u32>(var_2.b.x, var_2.b.x, 0u, var_2.b.x), vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, u_input.a))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, 1000f, -788f, var_2.d.c) * vec4<f32>(-931f, -2237f, 486f, global1[_wgslsmith_index_u32(0u, 25u)])))), vec4<bool>(any(vec3<bool>(false, arg_0.e.x, global4.x)), !global4.x, false, true)), ~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 102663u, 62532u, 27594u), vec4<u32>(u_input.a, 1u, arg_0.b.x, 1u), vec4<u32>(29394u, 4294967295u, u_input.a, u_input.a)), vec4<u32>(arg_0.b.x, 1u, var_2.b.x, 39604u), vec4<bool>(true, var_2.e.x, arg_0.e.x, true)) ^ reverseBits(vec4<u32>(4294967295u, var_2.b.x, 0u, arg_0.b.x) >> (~vec4<u32>(u_input.a, 25751u, 11037u, 60907u) % vec4<u32>(32u))));
}

fn func_1() -> u32 {
    var var_0 = -44675i;
    var var_1 = firstLeadingBit(vec4<u32>(firstLeadingBit(u_input.a), u_input.a, func_2(Struct_2(vec3<bool>(true, global4.x, false), vec3<u32>(u_input.a, u_input.a, 1u), 1019f, global2[_wgslsmith_index_u32(u_input.a, 28u)], vec4<bool>(global4.x, false, global4.x, global4.x)), global0.xx & global0.xx), _wgslsmith_clamp_u32(4294967295u, u_input.a, u_input.a))) << (~countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), 1u, reverseBits(u_input.a), 4294967295u)) % vec4<u32>(32u));
    let var_2 = var_1.yww;
    global1 = array<f32, 25>();
    let var_3 = global2[_wgslsmith_index_u32(1u, 28u)];
    return ~(~1u);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(~(arg_1.x >> ((36048u ^ u_input.a) % 32u)), 43844u, 13586u), select(select(abs(_wgslsmith_sub_vec3_u32(arg_1, arg_1)), arg_1, vec3<bool>(arg_0 == 2147483647i, global4.x | global4.x, all(vec3<bool>(global4.x, false, false)))), arg_1, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-550f, global1[_wgslsmith_index_u32(arg_1.x, 25u)], 397f, global1[_wgslsmith_index_u32(0u, 25u)]), vec4<f32>(global1[_wgslsmith_index_u32(arg_1.x, 25u)], global1[_wgslsmith_index_u32(var_0.x, 25u)], global1[_wgslsmith_index_u32(1u, 25u)], 2052f)))) + vec4<f32>(-1073f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_div_f32(-2558f, 148f), -1000f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) * _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), var_1.x));
    var_2 = var_1.yw;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -364f), -611f)), 216f)), ~global3[_wgslsmith_index_u32(~(1u << ((0u >> (arg_1.x % 32u)) % 32u)), 31u)], Struct_2(vec3<bool>(true, select(global4.x, true, true), true), _wgslsmith_add_vec3_u32(select(~vec3<u32>(1u, 66708u, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, arg_1.x, 127718u)), true), min(var_0 ^ var_0, arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-313f + var_2.x) + _wgslsmith_f_op_f32(var_2.x + var_2.x)))), global2[_wgslsmith_index_u32(u_input.a, 28u)], vec4<bool>(true, true, true, true)), Struct_1(!(global0.x > -2821i), select(select(!global4.xy, vec2<bool>(true, global4.x), true), select(!global4.xx, !global4.yz, vec2<bool>(false, global4.x)), true), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), vec3<bool>(global4.x, !(arg_0 <= -1i), _wgslsmith_f_op_f32(-var_1.x) <= -1429f)));
    return var_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    global1 = array<f32, 25>();
    global1 = array<f32, 25>();
    global2 = array<Struct_1, 28>();
    global0 = -vec3<i32>(40979i, _wgslsmith_mod_i32(-arg_2.b.x, 13618i), global0.x);
    global3 = array<vec3<i32>, 31>();
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_4(-26114i, vec3<u32>(arg_2.c.b.x, ~8006u ^ u_input.a, u_input.a)).c.b.zz, ~select(vec2<u32>(arg_1.x, arg_1.x) >> (vec2<u32>(39361u, u_input.a) % vec2<u32>(32u)), arg_1.xz, any(arg_2.c.e))), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec3<bool>(!all(vec2<bool>(true, global4.x)), ~(25053u >> (u_input.a % 32u)) <= (abs(4294967295u) & _wgslsmith_div_u32(33631u, u_input.a)), false), ~vec3<u32>(select(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), false), 1u, ~0u), -1107f, func_5(abs(~vec4<i32>(2147483647i, 64752i, global0.x, 20202i)), vec3<u32>(~38144u, _wgslsmith_sub_u32(~59959u, u_input.a), u_input.a), func_4(_wgslsmith_mod_i32(global0.x, -1i), vec3<u32>(func_1(), _wgslsmith_mult_u32(u_input.a, 0u), ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(33753u, 25u)], -449f, global4.x)) - _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.a, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)]))) - 949f)), select(select(vec4<bool>(true, true, global4.x, true), func_4(global0.x & global0.x, ~vec3<u32>(0u, 33184u, u_input.a)).c.e, select(func_4(16266i, vec3<u32>(u_input.a, u_input.a, u_input.a)).c.e, vec4<bool>(false, true, false, global4.x), global4.x | global4.x)), !vec4<bool>(any(vec3<bool>(false, false, true)), select(global4.x, global4.x, global4.x), !global4.x, true), true));
    var var_1 = func_4(-_wgslsmith_div_i32(global0.x, global0.x), func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(887f, global1[_wgslsmith_index_u32(1u, 25u)]))), -299f)).yyz);
    global2 = array<Struct_1, 28>();
    var var_2 = global1[_wgslsmith_index_u32(0u, 25u)];
    global3 = array<vec3<i32>, 31>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(574f, global1[_wgslsmith_index_u32(var_0.b.x, 25u)], 892f)) - vec3<f32>(801f, var_0.d.c, -1000f))))) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.b.x, var_1.c.b.x, 23028u, var_1.c.b.x), vec4<u32>(var_0.b.x, var_1.c.b.x, 1u, var_1.c.b.x)), abs(vec4<u32>(1u, 0u, 19077u, var_0.b.x))), 25u)]), -1195f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(269f)), _wgslsmith_f_op_f32(-2892f - -1230f)) - _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(f32(-1f) * -116f))));
    let var_5 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.d.c)), global1[_wgslsmith_index_u32(8670u, 25u)]), var_1.a, global4.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

