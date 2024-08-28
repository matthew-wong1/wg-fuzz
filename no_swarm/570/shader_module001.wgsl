struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(-1i, -46554i), false, vec2<u32>(40166u, 80765u), -827f);

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: bool) -> i32 {
    let var_0 = ~(~arg_0.a.e.c.x);
    var var_1 = arg_0.a.e.d;
    var var_2 = global1.c.x;
    let var_3 = _wgslsmith_dot_vec2_u32(arg_0.a.a.c, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.a.e.c, _wgslsmith_mod_vec2_u32(arg_0.a.a.c, arg_0.a.a.c), select(~vec2<u32>(arg_2, global0.x), vec2<u32>(65603u, arg_2), select(vec2<bool>(arg_0.a.d.x, arg_0.a.e.b), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_0.a.e.b)))), vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, arg_2), 4294967295u))));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(634f)), _wgslsmith_f_op_f32(global1.d - arg_0.a.a.d), -1284f, _wgslsmith_f_op_f32(sign(494f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.d, arg_0.a.e.d, global1.d, -492f) * vec4<f32>(global1.d, arg_1.x, -135f, 807f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.d, global1.d, -765f, 340f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, -192f, arg_1.x, arg_0.a.e.d)), vec4<f32>(arg_1.x, arg_0.a.e.d, 121f, 1822f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.e.d, global1.d, -1161f, 863f) * vec4<f32>(442f, global1.d, 722f, global1.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, arg_1.x, arg_0.a.a.d, arg_0.a.e.d)))))));
    return ~1090i;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, global1.d, arg_2, arg_2))))))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f - 1185f)), 1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(861f)) - _wgslsmith_f_op_f32(-1774f - global1.d))), vec4<f32>(arg_2, global1.d, _wgslsmith_div_f32(-786f, _wgslsmith_f_op_f32(690f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1689f + global1.d) + 412f)))));
    global1 = Struct_1(vec2<i32>(u_input.e.x, func_3(Struct_3(global2[_wgslsmith_index_u32(global0.x, 9u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1059f, global1.d))) - vec2<f32>(global1.d, global1.d)), firstTrailingBit(~15751u), arg_1)), false, vec2<u32>(global1.c.x, ~1u), var_0.x);
    let var_1 = global2[_wgslsmith_index_u32(global0.x, 9u)];
    let var_2 = Struct_2(Struct_1(max(firstLeadingBit(vec2<i32>(arg_3, global1.a.x)) & var_1.a.a, abs(max(vec2<i32>(60976i, arg_3), vec2<i32>(global1.a.x, -34373i)))), !global1.b, _wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(global1.c, global1.c), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 19883u), vec2<u32>(global1.c.x, 67522u))), ~vec2<u32>(76179u, u_input.b) ^ ~vec2<u32>(1u, global0.x)), 1785f), -21298i, ~u_input.a.x, select(vec2<bool>(false, !all(vec3<bool>(global1.b, false, true))), vec2<bool>(!var_1.d.x, !var_1.d.x), all(vec4<bool>(false, 898f <= var_1.a.d, !arg_1, arg_1))), Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.xx, firstTrailingBit(global1.a)), _wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(arg_3, arg_3)), vec2<i32>(0i, global1.a.x))), arg_1, ~(~u_input.d), var_0.x));
    var var_3 = !all(vec2<bool>(true, any(select(vec4<bool>(false, true, false, arg_1), vec4<bool>(true, global1.b, var_2.e.b, global1.b), vec4<bool>(var_1.a.b, true, true, true)))));
    return Struct_1(vec2<i32>(_wgslsmith_add_i32(0i, firstTrailingBit(arg_3)), -7790i), !(!var_2.a.b) | select(true, !var_2.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.x, 0u, u_input.b), vec4<u32>(4294967295u, 0u, 25221u, global0.x)) != ~var_2.e.c.x), select(var_1.e.c, var_2.a.c, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(abs(arg_2))) > var_2.a.d), -1000f);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_2, 9>();
    var var_0 = any(!select(select(vec4<bool>(global1.b, true, global1.b, global1.b), !vec4<bool>(true, global1.b, true, false), select(vec4<bool>(global1.b, true, false, global1.b), vec4<bool>(global1.b, global1.b, global1.b, false), global1.b)), !vec4<bool>(global1.b, global1.b, global1.b, global1.b), select(select(vec4<bool>(global1.b, false, global1.b, false), vec4<bool>(false, global1.b, global1.b, global1.b), vec4<bool>(global1.b, global1.b, global1.b, global1.b)), !vec4<bool>(global1.b, global1.b, false, global1.b), true)));
    var var_1 = Struct_3(Struct_2(func_2(_wgslsmith_mod_u32(global0.x, 81348u) >> (~global0.x % 32u), select(global1.b, false, global1.b && global1.b), -823f, -26411i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global1.a.x, 21108i, -2147483647i, -3900i), vec4<i32>(-1i, 2147483647i, 1i, u_input.a.x), vec4<bool>(global1.b, false, global1.b, false)), ~u_input.e) << (~(global1.c.x & 0u) % 32u), -max(-u_input.c, ~global1.a.x), vec2<bool>(true, all(vec4<bool>(global1.b, global1.b, false, false))), func_2(4294967295u, select(global1.b, !global1.b, global1.b & global1.b), _wgslsmith_f_op_f32(f32(-1f) * -2664f), u_input.c)));
    global4 = array<Struct_3, 14>();
    var var_2 = var_1.a.e.b;
    return Struct_1(vec2<i32>(u_input.c, u_input.a.x), all(select(select(vec2<bool>(global1.b, var_1.a.a.b), var_1.a.d, var_1.a.d), !(!vec2<bool>(global1.b, true)), var_1.a.d)), ~vec2<u32>(global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(45388u, 1u, u_input.d.x, 1u), vec4<u32>(var_1.a.a.c.x, global0.x, 0u, global0.x))), global1.d);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global2 = array<Struct_2, 9>();
    global4 = array<Struct_3, 14>();
    global2 = array<Struct_2, 9>();
    var var_0 = arg_0.e;
    var var_1 = var_0.a >> (~(vec2<u32>(~51302u, arg_0.e.c.x) >> (select(~global1.c, vec2<u32>(25056u, 1u), var_0.b) % vec2<u32>(32u))) % vec2<u32>(32u));
    return 66207u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(Struct_2(func_1(), -3273i, i32(-1i) * -1i, vec2<bool>(global1.b, false), func_2(_wgslsmith_div_u32(global1.c.x, global0.x), global1.b, -419f, -42433i)));
    let var_1 = 652f;
    global0 = ~(~(abs(func_2(global0.x, false, var_1, 0i).c) & global1.c));
    let var_2 = vec3<u32>(global1.c.x, 1u, ~(~1u));
    global3 = array<vec3<bool>, 32>();
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f));
    var var_4 = global2[_wgslsmith_index_u32(u_input.d.x, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b | (abs(firstTrailingBit(var_2.x)) << ((func_2(4294967295u, global1.b, var_1, 28434i).c.x & 0u) % 32u)), 698f, -_wgslsmith_sub_vec3_i32(u_input.e.xyw << (vec3<u32>(global1.c.x, 0u, global0.x) % vec3<u32>(32u)), u_input.e.yyw) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a.x) ^ ~u_input.e.wzx, u_input.e.zyx));
}

