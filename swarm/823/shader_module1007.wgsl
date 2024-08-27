struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 27>;

var<private> global2: vec3<f32> = vec3<f32>(206f, 231f, -297f);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.e.wy, ~min(vec2<i32>(~1i, 0i), u_input.c.zy));
    let var_1 = !(!vec2<bool>(!any(vec4<bool>(true, true, true, false)), true));
    let var_2 = Struct_3(firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(u_input.b, global0.b), global3.a.x)) & ~vec2<u32>(_wgslsmith_clamp_u32(8417u, global3.b.a.x, global0.a), global3.a.x & global0.a), global1[_wgslsmith_index_u32(~global3.b.b.x ^ ~firstTrailingBit(global3.b.b.x ^ 13220u), 27u)]);
    global0 = global3.b.d;
    let var_3 = 1u;
    return global2.x;
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    global3 = Struct_3(_wgslsmith_clamp_vec2_u32(abs(~global3.b.a.yy >> (firstTrailingBit(global3.a) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(~4294967295u, ~82720u)), vec2<u32>(global0.a, _wgslsmith_mod_u32(1u, global0.a)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(global3.a.x, global0.b))), Struct_2(vec3<u32>(_wgslsmith_sub_u32(u_input.d, _wgslsmith_add_u32(u_input.d, global0.a)), _wgslsmith_mod_u32(~0u, abs(u_input.d)), ~select(global0.a, global3.a.x, true)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.b) >> (global3.a % vec2<u32>(32u)), ~vec2<u32>(38555u, global3.b.d.b)), u_input.e.x << (~(~16519u) % 32u), global3.b.d));
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) - -366f)), _wgslsmith_f_op_f32(f32(-1f) * -2272f)));
    let var_1 = -global3.b.c;
    var var_2 = _wgslsmith_mod_u32(30966u, _wgslsmith_sub_u32(4294967295u, 15511u));
    global0 = Struct_1(0u, ~1u);
    return global3.b;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    global1 = array<Struct_2, 27>();
    let var_0 = select(select(vec4<bool>(false, true, !all(vec3<bool>(true, true, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)), select(false, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))), !select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, 0i == global3.b.c, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), select(vec4<bool>(any(vec3<bool>(true, false, true)), u_input.a >= 30804u, all(vec2<bool>(false, false)), !all(vec3<bool>(false, false, true))), vec4<bool>(false, all(vec2<bool>(false, true)) || true, select(false, true, all(vec4<bool>(true, true, true, false))), true), select(vec4<bool>(true, true, false, all(vec3<bool>(true, false, true))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), true)));
    var var_1 = Struct_2(~vec3<u32>(func_1(49291i, 1070f).a.x, ~(global0.a | arg_1.a), 77897u), global3.b.b, abs(_wgslsmith_sub_i32(global3.b.c, -1i)), func_1(-min(-48711i, _wgslsmith_dot_vec2_i32(vec2<i32>(27030i, global3.b.c), vec2<i32>(u_input.e.x, global3.b.c))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(arg_0.x))))).d);
    global1 = array<Struct_2, 27>();
    let var_2 = Struct_3(var_1.b, func_1(-1i ^ _wgslsmith_add_i32(u_input.e.x, _wgslsmith_div_i32(var_1.c, var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-519f, arg_0.x))) * arg_0.x)));
    return select(false, any(var_0.xy), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.d;
    global3 = Struct_3(global3.b.b, func_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x)));
    let var_1 = ~(~(~(u_input.c.x >> (95234u % 32u))));
    var var_2 = !(!select(vec2<bool>(func_3(vec3<f32>(-189f, global2.x, -1637f), global3.b.d), true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false));
    let var_3 = Struct_3(~vec2<u32>(global3.a.x, u_input.d), global1[_wgslsmith_index_u32(1u, 27u)]);
    var var_4 = var_0.b;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(951f))), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1120f, global2.x, 704f), vec3<f32>(-525f, global2.x, global2.x), vec3<bool>(var_2.x, true, true))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -320f, global2.x) - vec3<f32>(global2.x, -131f, global2.x))))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(-2144f + _wgslsmith_f_op_f32(global2.x - 910f)), -197f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1237f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))), global2.x), !(!select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, var_2.x, true))))));
    var var_5 = func_1(var_1 | abs(-_wgslsmith_sub_i32(global3.b.c, var_1)), global2.x);
    var var_6 = var_3.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xy * vec2<f32>(-805f, _wgslsmith_div_f32(745f, global2.x)))));
}

