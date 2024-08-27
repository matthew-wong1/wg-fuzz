struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_1(vec4<i32>(i32(-2147483648), 0i, 2147483647i, -22801i), vec2<u32>(0u, 0u), true, false, vec4<bool>(false, false, false, true))));

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: u32 = 70949u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1224f)), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1591f)) * global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(floor(var_0.x)), 888f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -261f), 1082f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 549f, 813f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 899f, 1178f))))), vec3<bool>(all(select(vec2<bool>(arg_1, global0.a.a.c), vec2<bool>(false, arg_1), !global2.c.yz)), arg_1, !any(global2.c.zz))));
    global0 = Struct_4(Struct_3(global0.a.a));
    var var_2 = arg_0;
    return global0.a.a.a.x != ~abs(countOneBits(select(-10542i, global0.a.a.a.x, global0.a.a.c)));
}

fn func_2() -> f32 {
    let var_0 = select(global0.a.a.e.zwy, vec3<bool>(global0.a.a.e.x, func_3(true, global0.a.a.d, global2.a.x), select(any(select(global0.a.a.e, vec4<bool>(false, true, true, global0.a.a.e.x), global2.c.x)), global0.a.a.d, true)), true);
    var var_1 = 46661u;
    var_1 = _wgslsmith_dot_vec4_u32(u_input.b, ~(u_input.b & ~_wgslsmith_div_vec4_u32(vec4<u32>(121871u, global0.a.a.b.x, u_input.a.x, global2.d), vec4<u32>(78363u, 1u, global0.a.a.b.x, u_input.b.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global2.a))), global2.b, select(vec3<bool>(_wgslsmith_f_op_f32(-global2.a.x) <= _wgslsmith_f_op_f32(-global2.a.x), all(select(global2.c, vec3<bool>(var_0.x, false, false), true)), var_0.x), select(global0.a.a.e.xxx, vec3<bool>(true, true, all(var_0)), true), false), ~5219u);
    let var_3 = min(vec3<i32>(-1i, abs(firstTrailingBit(min(78131i, 2147483647i))), global0.a.a.a.x), global0.a.a.a.zyz);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + global2.a.x))), true));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = -_wgslsmith_mod_vec3_i32(vec3<i32>(~(-7409i), u_input.d, global0.a.a.a.x), global0.a.a.a.zyx);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.x - global2.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(239f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a.x)) + _wgslsmith_f_op_f32(func_2())))) >= 658f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, -218f) + vec4<f32>(global2.a.x, _wgslsmith_div_f32(929f, 1f), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-590f, global2.a.x) - _wgslsmith_div_f32(global2.a.x, -449f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)))));
    var var_4 = var_3.x;
    return 19363u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~1u, ~32483u, ~_wgslsmith_mult_u32(~abs(global0.a.a.b.x), ~(~u_input.b.x)));
    let var_1 = ~(8435u | func_1(u_input.b, global2.c.x, true && select(global2.b, true, global0.a.a.e.x)));
    global0 = Struct_4(global0.a);
    var var_2 = vec3<bool>(~select(var_0.x, 17788u, global0.a.a.c) > 11056u, global0.a.a.e.x, !(!global0.a.a.e.x));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-4980i, _wgslsmith_dot_vec2_i32(global0.a.a.a.zy, _wgslsmith_div_vec2_i32(vec2<i32>(global0.a.a.a.x, -46610i), vec2<i32>(0i, global0.a.a.a.x))), 52734i, _wgslsmith_mult_i32(-7887i, _wgslsmith_mult_i32(global0.a.a.a.x, 0i))) >> (~(~(u_input.b ^ vec4<u32>(14129u, 1u, 0u, 38924u))) % vec4<u32>(32u)), reverseBits(var_0.xz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.x))), 1000f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a.x, global2.a.x))))) - global2.a))), _wgslsmith_sub_i32(i32(-1i) * -_wgslsmith_add_i32(global0.a.a.a.x, 0i), max(-global0.a.a.a.x & -7954i, ~max(-1i, global0.a.a.a.x))), _wgslsmith_mult_vec4_u32(u_input.b, firstLeadingBit(~u_input.b)));
}

