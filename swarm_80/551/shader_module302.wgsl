struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: array<vec2<bool>, 29>;

var<private> global3: Struct_1 = Struct_1(-490f, i32(-2147483648), 0i, vec3<bool>(false, true, true));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.d)), abs(_wgslsmith_add_vec2_u32(arg_0.zz, _wgslsmith_mult_vec2_u32(arg_0.zy, _wgslsmith_add_vec2_u32(arg_0.xx, arg_0.zy)))));
    let var_1 = vec4<i32>(u_input.c & abs(_wgslsmith_clamp_i32(0i, global3.c, _wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, global3.c, global3.c, -6082i)))), firstLeadingBit(countOneBits(3095i)), _wgslsmith_dot_vec4_i32(-u_input.e, ~vec4<i32>(min(32048i, 2147483647i), global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 27u)], global3.b ^ 18062i, -26509i)), -55483i);
    return arg_0.x;
}

fn func_2() -> Struct_3 {
    global2 = array<vec2<bool>, 29>();
    var var_0 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 23808u) >> (vec3<u32>(0u, 4294967295u, u_input.d) % vec3<u32>(32u)), ~abs(vec3<u32>(4294967295u, u_input.d, 4294967295u))), _wgslsmith_mod_u32(~firstLeadingBit(u_input.d), ~func_3(vec3<u32>(0u, 1u, u_input.d), false)), u_input.d);
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2732f * 2108f)))), _wgslsmith_mult_i32(~(-14446i >> (_wgslsmith_div_u32(u_input.d, var_0.x) % 32u)), countOneBits(firstLeadingBit(2147483647i))), -6035i | abs(u_input.a), !select(global3.d, !(!vec3<bool>(global3.d.x, global3.d.x, global3.d.x)), !(!global3.d)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global3.a - 1f), _wgslsmith_div_i32(11285i, global0[_wgslsmith_index_u32(countOneBits(40885u), 27u)]), 1i, select(!global3.d, select(select(vec3<bool>(false, global3.d.x, global3.d.x), vec3<bool>(true, true, true), vec3<bool>(global3.d.x, global3.d.x, false)), select(global3.d, vec3<bool>(global3.d.x, global3.d.x, false), global3.d.x), all(vec3<bool>(true, global3.d.x, global3.d.x))), !(!global3.d))), global3.d.x | global3.d.x, -u_input.e.xw >> (vec2<u32>(22814u, ~1u) % vec2<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.d), countOneBits(4294967295u ^ var_0.x), var_0.x, ~firstTrailingBit(4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, var_0.x, u_input.d, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, 42134u, 45682u, 4294967295u), vec4<u32>(19928u, u_input.d, var_0.x, u_input.d) & vec4<u32>(var_0.x, 0u, 0u, var_0.x)))), ~firstTrailingBit(~vec4<u32>(1u, 1u, 4294967295u, 5910u)));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(select(324f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - var_1.a.a), global3.d.x)), ~u_input.a ^ -global0[_wgslsmith_index_u32(~var_0.x, 27u)], global3.c, global3.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_div_f32(arg_0.a.a, -969f));
    global2 = array<vec2<bool>, 29>();
    var_0 = _wgslsmith_f_op_f32(ceil(global3.a));
    let var_1 = vec4<u32>(countOneBits(u_input.d), u_input.d >> ((u_input.d ^ ~arg_1.x) % 32u), select(u_input.d, 1u, any(arg_0.a.d)), _wgslsmith_div_u32(u_input.d, abs(1u)));
    var var_2 = arg_1.xx;
    return Struct_4(func_2().a);
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    global3 = func_2().a;
    var var_0 = ~vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, 13175u, u_input.d), 1u), 12725u, 4294967295u, 10425u);
    var var_1 = firstLeadingBit(vec3<i32>(-2147483647i << (_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14889u, u_input.d, 0u), vec4<u32>(u_input.d, 33671u, 23843u, var_0.x))) % 32u), 1i, -1i));
    let var_2 = arg_1;
    let var_3 = ~(~_wgslsmith_sub_u32(~u_input.d, u_input.d));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(max(920f, arg_0)))))), 1i, _wgslsmith_add_i32(reverseBits(~arg_1.a.c), firstLeadingBit(var_1.x >> (u_input.d % 32u))) << (var_3 % 32u), func_2().a.d);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    let var_0 = ~u_input.d << (4294967295u % 32u);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1182f)) - _wgslsmith_f_op_f32(min(arg_0.a.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f - 547f) - arg_2))))));
    let var_3 = Struct_3(func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * -452f)), arg_1.a, false)), func_4(func_2(), vec4<u32>(u_input.d, ~67533u, _wgslsmith_mod_u32(var_0, var_0), ~u_input.d))));
    var var_4 = ~max(var_0, u_input.d);
    return vec4<f32>(2092f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(176f * _wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-647f * -947f) - arg_2)))), _wgslsmith_f_op_f32(f32(-1f) * -724f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1557f;
    var_0 = -1007f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(Struct_1(-373f, 69693i, -1029i, vec3<bool>(false, global3.d.x, global3.d.x))), Struct_1(global3.a, global3.b, global0[_wgslsmith_index_u32(0u, 27u)], global3.d), global3.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(897f, global3.a, -310f, global3.a))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-429f, 602f, 236f, global3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1550f, global3.a, global3.a) * vec4<f32>(global3.a, global3.a, global3.a, global3.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 156f, -484f, global3.a) * vec4<f32>(global3.a, -670f, global3.a, global3.a)))))));
    let var_2 = select(!(!global3.d.yx), !(!func_5(_wgslsmith_f_op_f32(ceil(477f)), Struct_4(Struct_1(global3.a, 2147483647i, 2147483647i, vec3<bool>(global3.d.x, true, true)))).d.xy), global3.d.xz);
    var var_3 = -14572i;
    global2 = array<vec2<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~1u), ~(~u_input.d) ^ min(u_input.d, u_input.d & u_input.d)));
}

