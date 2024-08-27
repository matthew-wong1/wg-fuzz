struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    global0 = global1[_wgslsmith_index_u32(~global0.a.x, 28u)];
    let var_0 = Struct_3(vec3<bool>(global0.d, ~_wgslsmith_dot_vec2_u32(global0.a.xx, u_input.a.xz) == ~(1u | global0.a.x), false), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -850f, arg_1.x, arg_3.x), vec4<f32>(845f, arg_1.x, 1452f, global0.c))))))), vec3<u32>(105053u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, u_input.a.x, arg_0) | vec4<u32>(40273u, 0u, global0.a.x, 77011u), vec4<u32>(9163u, 0u, global0.a.x, 4294967295u) ^ vec4<u32>(4294967295u, 29937u, global0.a.x, global0.a.x)), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) & global0.a, _wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(arg_1.x * arg_3.x));
    var var_1 = global1[_wgslsmith_index_u32(63968u, 28u)];
    let var_2 = true != (!var_0.a.x && false);
    var_1 = Struct_1(global0.a, -(~var_1.b), arg_1.x, all(var_0.a.yx), false);
    return var_1.a.x;
}

fn func_2() -> vec3<u32> {
    var var_0 = vec2<bool>(all(vec3<bool>(!global0.d | true, true, true)), global0.c <= global0.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-1606f, -693f)), _wgslsmith_f_op_f32(f32(-1f) * -802f), _wgslsmith_f_op_f32(-global0.c), global0.c) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.c)), global0.c, _wgslsmith_f_op_f32(trunc(global0.c)), global0.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, -761f, 1157f, _wgslsmith_div_f32(global0.c, 1216f)))));
    var var_2 = global1[_wgslsmith_index_u32(((u_input.a.x | func_3(~2893u, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1160f, var_1.x) - var_1.wyz), Struct_2(global0.b.x), var_1.zzw)) | 0u) ^ (1603u >> (func_3(u_input.a.x, vec3<f32>(global0.c, 1f, _wgslsmith_f_op_f32(-global0.c)), Struct_2(_wgslsmith_mult_i32(-1i, global0.b.x)), var_1.yyz) % 32u)), 28u)];
    let var_3 = select(~vec2<u32>(~55837u & abs(u_input.a.x), ~func_3(4294967295u, vec3<f32>(global0.c, var_2.c, var_2.c), Struct_2(0i), var_1.xxz)), ~abs(~var_2.a.xy), select(vec2<bool>(select(!var_0.x, false, var_2.e), true), !select(select(vec2<bool>(global0.e, true), vec2<bool>(global0.e, false), vec2<bool>(var_0.x, false)), !vec2<bool>(true, global0.d), vec2<bool>(true, var_0.x)), vec2<bool>(false, global0.e)));
    global0 = global1[_wgslsmith_index_u32(var_2.a.x, 28u)];
    return ~(~(~(global0.a & var_2.a) << (vec3<u32>(22662u, var_3.x, ~var_2.a.x) % vec3<u32>(32u))));
}

fn func_1() -> i32 {
    var var_0 = global0.a.x;
    let var_1 = select(u_input.a, select(_wgslsmith_div_vec3_u32(min(func_2(), select(u_input.a, vec3<u32>(4294967295u, 9992u, u_input.a.x), false)), ~global0.a), vec3<u32>(~min(32661u, 0u), _wgslsmith_dot_vec3_u32(min(global0.a, vec3<u32>(global0.a.x, 4294967295u, global0.a.x)), global0.a), reverseBits(~global0.a.x)), select(global0.d, any(vec3<bool>(false, true, false)) && global0.d, global0.e)), !(_wgslsmith_div_i32(1i, global0.b.x) > (global0.b.x ^ 25913i)) || any(vec2<bool>(global0.d & false, any(vec2<bool>(global0.e, global0.d)))));
    global0 = Struct_1(global0.a, abs(countOneBits(-global0.b)) & global0.b, global0.c, true, global0.e);
    global1 = array<Struct_1, 28>();
    var var_2 = select(select(!(!(!vec4<bool>(global0.d, global0.e, global0.d, true))), vec4<bool>(global0.e, global0.d, true, all(select(vec3<bool>(true, false, global0.d), vec3<bool>(false, true, false), global0.e))), global0.c >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2191f + global0.c))), !select(!vec4<bool>(global0.e, global0.e, false, global0.e), !vec4<bool>(false, true, global0.e, global0.e), !select(vec4<bool>(false, global0.e, false, true), vec4<bool>(global0.e, false, global0.e, true), vec4<bool>(global0.e, false, true, false))), select(true, all(vec2<bool>(any(vec4<bool>(true, true, global0.d, global0.d)), true)), global0.d));
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(49574u << ((0u >> (0u % 32u)) % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(3286u, ~(~u_input.a.x)), 1u), 0u, _wgslsmith_add_u32(u_input.a.x, ~global0.a.x));
    var var_1 = Struct_1(vec3<u32>(72037u, global0.a.x, var_0.x), vec4<i32>(_wgslsmith_mult_i32(-5159i, 0i), func_1(), 379i, global0.b.x), global0.c, global0.d, global0.d);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(1f))) * -862f);
    let var_3 = ((i32(-1i) * -global0.b.x) ^ ~_wgslsmith_sub_i32(var_1.b.x & 2147483647i, ~global0.b.x)) << (23932u % 32u);
    let var_4 = global0.b.x;
    let var_5 = u_input.a.x;
    global0 = global1[_wgslsmith_index_u32(var_0.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c, -1107f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(692f, global0.c)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-311f, var_1.c))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c, -211f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, global0.c)), !var_1.d)))), 1u);
}

