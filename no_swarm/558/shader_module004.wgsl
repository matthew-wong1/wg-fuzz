struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5> = array<vec2<bool>, 5>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global1: bool;

var<private> global2: vec3<i32>;

var<private> global3: array<Struct_2, 16>;

var<private> global4: vec4<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~select(~vec4<u32>(u_input.a, global4.x, 4294967295u, arg_1.x), arg_1 ^ arg_1, vec4<bool>(false, true, true, false))), arg_1);
    let var_1 = global3[_wgslsmith_index_u32(u_input.a, 16u)];
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(trunc(-2124f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.d, 403f))))))), _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.c.x - _wgslsmith_f_op_f32(sign(-1103f))), 570f, _wgslsmith_add_i32(arg_0.a.x, 26465i) != arg_0.a.x)))));
    let var_3 = var_2.x;
    let var_4 = -1535f;
    return select(!select(vec3<bool>(var_1.a.x, !arg_0.b, !arg_0.b), var_1.a, var_1.a), vec3<bool>(all(select(global0[_wgslsmith_index_u32(arg_1.x >> (11793u % 32u), 5u)], !var_1.a.xy, !arg_2)), !all(select(vec2<bool>(var_1.a.x, true), vec2<bool>(var_1.a.x, var_1.a.x), arg_0.b)), select(!all(vec4<bool>(arg_2, arg_2, true, true)), true != arg_2, arg_0.b)), true);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_0;
    global1 = !all(!(!vec3<bool>(true, arg_0, arg_0)));
    let var_1 = var_0;
    var var_2 = ~(~select(~select(global4.xyy, vec3<u32>(global4.x, 0u, 4089u), vec3<bool>(var_0, arg_0, var_1)), _wgslsmith_mod_vec3_u32(global4.yxw, vec3<u32>(6437u, 13143u, global4.x)), select(vec3<bool>(var_1, false, arg_0), func_3(Struct_1(vec3<i32>(u_input.b.x, 24858i, u_input.b.x), true, vec2<f32>(arg_1.c.x, 998f), -1000f), vec4<u32>(u_input.a, 4294967295u, global4.x, 0u), false), vec3<bool>(true, true, true))));
    var var_3 = global3[_wgslsmith_index_u32(0u, 16u)];
    return !var_3.a;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = global4.yw;
    let var_1 = u_input.b.x & ~firstTrailingBit(u_input.d);
    var var_2 = global3[_wgslsmith_index_u32(0u, 16u)];
    var var_3 = ~vec3<i32>(_wgslsmith_clamp_i32(~(~u_input.b.x), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_1.x, 20490i, global2.x), vec4<i32>(59673i, 8795i, arg_1.x, arg_1.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_1), u_input.b.xy), ~arg_1)), ~(-41118i), -global2.x);
    var var_4 = global2.x;
    return Struct_2(!(!func_2(!var_2.a.x, Struct_1(vec3<i32>(var_1, arg_1.x, var_3.x), true, vec2<f32>(1000f, -585f), -1124f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<i32>(_wgslsmith_add_i32(1i, 19569i), u_input.d | 1i));
    let var_1 = func_1(~_wgslsmith_mult_u32(0u, 87459u), vec2<i32>(~_wgslsmith_mod_i32(-2147483647i, global2.x), ~_wgslsmith_add_i32(1i << (global4.x % 32u), ~global2.x)));
    global0 = array<vec2<bool>, 5>();
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(~(~18339u), _wgslsmith_div_u32(22524u, global4.x)) & 1u, u_input.a);
    let var_3 = Struct_1(vec3<i32>(-23228i, -1i, _wgslsmith_div_i32(~global2.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.d), var_0)))), var_1.a.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(669f, 495f), vec2<f32>(-1564f, 1054f)))), vec2<f32>(-317f, -1162f), var_1.a.xx)), vec2<f32>(-530f, _wgslsmith_f_op_f32(-1000f - -555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1390f + -713f), -1388f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-354f - 1000f)))))));
    let var_4 = !var_3.b;
    global3 = array<Struct_2, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(1199f, -168f, _wgslsmith_f_op_f32(-var_3.c.x), ~14614u, ~_wgslsmith_add_vec3_u32(global4.yyw, global4.wwy) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, firstTrailingBit(106206u)), ~vec3<u32>(u_input.a, u_input.a, 6318u)) % vec3<u32>(32u)));
}

