struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<vec2<u32>, 19>;

var<private> global2: vec4<f32> = vec4<f32>(-698f, -617f, 1838f, -379f);

var<private> global3: array<vec4<bool>, 19>;

var<private> global4: f32;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    var var_0 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(false, true))), !select(vec2<bool>(select(true, true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(false, false))), true), -(i32(-1i) * -2147483647i) <= -u_input.c);
    var var_1 = vec3<u32>(u_input.b, ~reverseBits(_wgslsmith_mod_u32(u_input.a.x, 9133u)) << (4294967295u % 32u), ~u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(985f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1975f, _wgslsmith_f_op_f32(round(-914f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(step(120f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_div_f32(global2.x, 1308f)))), -807f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * global2.x)), _wgslsmith_f_op_f32(select(-967f, -1182f, any(vec2<bool>(true, false)))), global2.x, _wgslsmith_f_op_f32(sign(global2.x))))));
    var_1 = reverseBits(_wgslsmith_mult_vec3_u32((u_input.a << (vec3<u32>(u_input.b, var_1.x, u_input.a.x) % vec3<u32>(32u))) | vec3<u32>(1u, 1u, var_1.x), vec3<u32>(var_1.x, 1u, firstTrailingBit(var_1.x)))) & u_input.a;
    var var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.x, global2.x)), _wgslsmith_f_op_f32(-var_2.x)))) + _wgslsmith_f_op_f32(select(1000f, var_2.x, any(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, true, false))))));
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 2u)];
    global4 = _wgslsmith_f_op_f32(func_3());
    return u_input.a.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: i32) -> bool {
    let var_0 = max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b | u_input.b, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(35109u, u_input.a.x, u_input.b, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 4294967295u))), ~vec4<u32>(u_input.a.x, 0u, 43415u, 57778u) >> (vec4<u32>(1u, 1u, 16838u, u_input.b) % vec4<u32>(32u))), 34749u) == 39364u;
    let var_1 = Struct_1(u_input.b, vec2<u32>(func_2(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(-947f, _wgslsmith_f_op_f32(-global2.x))), 1u), vec3<f32>(_wgslsmith_f_op_f32(trunc(1000f)), global2.x, -997f), -(~(vec2<i32>(arg_2, -1i) << (select(u_input.a.zx, vec2<u32>(4294967295u, 74851u), arg_0.wx) % vec2<u32>(32u)))), vec2<u32>(~(~u_input.b), ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-628f, global2.x, _wgslsmith_f_op_f32(max(global2.x, var_1.c.x)), var_1.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1525f, -397f, _wgslsmith_f_op_f32(trunc(-1358f)))), !vec4<bool>(true, arg_0.x, true & arg_0.x, true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(247f, _wgslsmith_f_op_f32(-1187f + -1000f), global2.x, var_1.c.x))))));
    let var_3 = vec2<bool>(!arg_1.x, arg_1.x);
    let var_4 = vec4<u32>(~24929u, 0u, 37582u, var_1.e.x) << (vec4<u32>(u_input.b, var_1.a, 4294967295u, 47900u) % vec4<u32>(32u));
    return !arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(true, true, any(global3[_wgslsmith_index_u32(1u, 19u)])), vec3<bool>(all(vec3<bool>(true, false, select(false, false, false))), true, true), !(!vec3<bool>(true, func_1(vec4<bool>(false, false, true, false), vec2<bool>(true, true), -2665i), false)));
    global3 = array<vec4<bool>, 19>();
    global4 = global2.x;
    global4 = _wgslsmith_f_op_f32(-global2.x);
    let var_1 = vec4<i32>(u_input.c, (u_input.c | ~(1i << (u_input.a.x % 32u))) ^ -44108i, abs(_wgslsmith_mod_i32(-38508i, ~48145i) & _wgslsmith_sub_i32(firstTrailingBit(u_input.c), 1i)), -2147483647i);
    let var_2 = Struct_1(70088u >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~abs(0u)) % 32u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.yz, _wgslsmith_sub_vec2_u32(min(u_input.a.xy, u_input.a.yz), global1[_wgslsmith_index_u32(u_input.a.x & 17134u, 19u)])), vec2<u32>(_wgslsmith_mod_u32(~60397u, u_input.b), max(u_input.b >> (64890u % 32u), _wgslsmith_add_u32(4114u, u_input.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) * _wgslsmith_f_op_f32(558f + 1588f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1531f, global2.x)) - global2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(global2.x, 583f)))))), vec2<i32>(-1i, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(84773u, max(~u_input.a.x, u_input.a.x)), abs(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 19u)], vec2<u32>(u_input.b, 1u)), vec2<u32>(4294967295u, 32884u) >> (global1[_wgslsmith_index_u32(0u, 19u)] % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32((var_2.b.x ^ var_2.b.x) << (53477u % 32u), 19u)], ~global1[_wgslsmith_index_u32(~u_input.a.x, 19u)]), 7152i, ~vec4<u32>(23108u, ~select(4294967295u, 0u, var_0.x), u_input.a.x, u_input.a.x), max(u_input.c, 58878i));
}

