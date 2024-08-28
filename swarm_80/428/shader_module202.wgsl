struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 12>;

var<private> global2: array<u32, 27> = array<u32, 27>(4294967295u, 0u, 4294967295u, 1u, 27404u, 4294967295u, 1u, 15310u, 4294967295u, 0u, 66401u, 88863u, 78376u, 78606u, 89455u, 20382u, 1u, 0u, 1u, 44515u, 19778u, 10746u, 0u, 4294967295u, 12101u, 11772u, 3151u);

var<private> global3: i32 = 2147483647i;

var<private> global4: vec2<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_2(arg_3, -2147483647i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) * vec2<f32>(-891f, global4.x)))))), u_input.a.x);
    let var_1 = vec4<i32>(firstLeadingBit(7149i), -min(u_input.a.x, 28882i), -countOneBits(1i), _wgslsmith_div_i32(-firstLeadingBit(firstTrailingBit(-28219i)), abs(arg_0.a)));
    let var_2 = vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1151u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)] << (_wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18434u, 27u)], 27u)]) % 32u)), firstLeadingBit(~(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19937u, 27u)], 27u)], 21509u) >> (vec2<u32>(2854u, 78321u) % vec2<u32>(32u))))), 27u)], ~4294967295u, 0u, abs(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(91386u, global2[_wgslsmith_index_u32(11259u, 27u)]), 27u)], 27u)] << (1u % 32u), 27u)]));
    let var_3 = global4.x;
    let var_4 = any(select(select(arg_1, !select(vec3<bool>(false, true, arg_1.x), vec3<bool>(true, arg_1.x, arg_1.x), false), arg_1.x), arg_1, all(!(!vec4<bool>(true, true, arg_1.x, arg_1.x)))));
    return -10578i;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_add_i32(-arg_0, countOneBits(func_3(Struct_1(1i), !vec3<bool>(false, arg_2, arg_2), _wgslsmith_f_op_f32(select(-308f, -2220f, false)), Struct_1(2147483647i)))));
    var_0 = Struct_1(-2147483647i);
    global1 = array<vec2<bool>, 12>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) * global4.x));
    global0 = true;
    return abs(select(vec4<u32>(1u, global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(~61537u, 27u)], _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42095u, 27u)], 27u)], 27u)], 4294967295u)), vec4<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 4294967295u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 1411u | global2[_wgslsmith_index_u32(1u, 27u)]), !arg_2)) & vec4<u32>(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(10338u), 27u)], 27u)], 1u), (global2[_wgslsmith_index_u32(68860u, 27u)] | global2[_wgslsmith_index_u32(countOneBits(1u), 27u)]) << ((_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(12901u, 27u)], 18344u, 53740u) | global2[_wgslsmith_index_u32(1u, 27u)]) % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u << (global2[_wgslsmith_index_u32(1u, 27u)] % 32u)), global2[_wgslsmith_index_u32(~0u ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27807u, 27u)] >> (global2[_wgslsmith_index_u32(51982u, 27u)] % 32u), 27u)], 27u)]), global2[_wgslsmith_index_u32(16362u, 27u)]);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    global0 = any(vec3<bool>(true, false, any(select(global1[_wgslsmith_index_u32(~arg_1.x, 12u)], !global1[_wgslsmith_index_u32(0u, 12u)], false))));
    global4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(ceil(global4.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -623f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - global4.x) + _wgslsmith_f_op_f32(min(-1228f, 1000f))))));
    global1 = array<vec2<bool>, 12>();
    let var_0 = Struct_2(Struct_1(-abs(u_input.a.x)), -6647i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(265f - global4.x))), -821f) + vec2<f32>(_wgslsmith_f_op_f32(-256f + _wgslsmith_div_f32(263f, -2364f)), global4.x)), _wgslsmith_dot_vec3_i32(-(~vec3<i32>(-10108i, -16527i, 3749i)), vec3<i32>(u_input.a.x, -10684i, u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(floor(-200f)) >= var_0.c.x;
    return Struct_2(var_0.a, -43488i, vec2<f32>(667f, -575f), var_0.a.a);
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = vec2<u32>(19320u, 1u);
    let var_1 = func_4(~vec2<u32>(10446u, 1u), func_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1107f, 467f, global4.x, 1860f))))), any(select(vec4<bool>(arg_1.x, true, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, false, false, false), vec4<bool>(false, arg_1.x, false, true), true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.x)))));
    let var_2 = all(!(!vec4<bool>(arg_1.x, true, any(vec2<bool>(true, arg_1.x)), !arg_1.x)));
    var var_3 = Struct_4(arg_0, Struct_2(func_4(firstLeadingBit(abs(vec2<u32>(global2[_wgslsmith_index_u32(106282u, 27u)], 17302u))), func_2(_wgslsmith_clamp_i32(1i, -17264i, 5432i), _wgslsmith_div_vec4_f32(vec4<f32>(1666f, global4.x, var_1.c.x, global4.x), vec4<f32>(-347f, global4.x, var_1.c.x, -1047f)), false, _wgslsmith_f_op_f32(-global4.x))).a, 0i, vec2<f32>(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(global4.x - -170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1043f))), 1i), var_1.a);
    global2 = array<u32, 27>();
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-901f * _wgslsmith_div_f32(-124f, var_3.b.c.x)), var_3.b.c.x, 1011f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(-790f)), var_1.c.x, _wgslsmith_f_op_f32(1967f + var_3.b.c.x), _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(129f, var_1.c.x, -695f, var_3.b.c.x) * vec4<f32>(global4.x, 150f, 634f, -1603f)))))))));
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<vec2<bool>, 12>();
    global3 = _wgslsmith_div_i32(16366i, u_input.a.x);
    let var_0 = Struct_1(-7130i);
    let var_1 = Struct_1(41611i << (_wgslsmith_div_u32(1u, 4294967295u) % 32u));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_2.yx, arg_2.xy)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 1384f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(606f + global4.x), _wgslsmith_f_op_f32(max(arg_2.x, global4.x)))))), arg_2.yw);
    return Struct_1(-countOneBits(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(0i, -11576i, 0i, u_input.a.x)), ~vec4<i32>(u_input.a.x, -1i, u_input.a.x, -42708i)), _wgslsmith_add_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-37761i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 1i, -2147483647i, 0i)), ~vec4<i32>(-6872i, u_input.a.x, u_input.a.x, 64004i))));
    global3 = max(_wgslsmith_div_i32(countOneBits(0i), u_input.a.x << (_wgslsmith_div_u32(1u, 12574u) % 32u)) & u_input.a.x, -11000i);
    var var_1 = func_5(global2[_wgslsmith_index_u32(firstTrailingBit(~max(8376u, 3125u)), 27u)], _wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(33943u, 50981u), ~global2[_wgslsmith_index_u32(1u, 27u)]), vec2<bool>(true, true))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(global4.x * 169f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_div_f32(-132f, global4.x))))));
    var_1 = func_5(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(0u ^ global2[_wgslsmith_index_u32(0u, 27u)]), 12126u), ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(42895u, 1u), 27u)], 0u), 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global4.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(440f, global4.x, -811f, global4.x))))))));
    let var_2 = ~(~select(~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 27u)], 27u)], 27u)], 27u)], 61438u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69392u, 27u)], 27u)], 4294967295u) << (select(vec4<u32>(global2[_wgslsmith_index_u32(52488u, 27u)], 28172u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 27u)], 27u)]), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(27058u, 1856u), 27u)], 23508u, 1228u), all(vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_div_f32(global4.x, _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(round(1f))));
    var var_4 = -40340i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_2.zx, func_2(2147483647i, vec4<f32>(-265f, _wgslsmith_f_op_f32(max(var_3, -1195f)), func_4(vec2<u32>(1u, 0u), vec4<u32>(1u, 42595u, var_2.x, global2[_wgslsmith_index_u32(var_2.x, 27u)])).c.x, -163f), true, -1126f).xz), abs(~u_input.a), u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-101f + var_3), var_3, global4.x) + vec3<f32>(1165f, global4.x, var_3))), global4.x);
}

