struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6>;

var<private> global1: Struct_4 = Struct_4(Struct_3(vec2<bool>(false, false), Struct_1(-1i)), vec3<u32>(3455u, 43513u, 34975u), Struct_3(vec2<bool>(false, false), Struct_1(3687i)));

var<private> global2: Struct_5 = Struct_5(15912u);

var<private> global3: vec4<u32> = vec4<u32>(1u, 32011u, 0u, 41723u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_5 {
    return Struct_5(global2.a);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_5) -> Struct_5 {
    var var_0 = arg_0.xx;
    let var_1 = ~max(~_wgslsmith_mod_vec2_u32(~arg_1, global1.b.xy ^ global3.zy), arg_1);
    var_0 = ~arg_0.xx;
    var var_2 = !vec3<bool>(global1.c.a.x, false, any(select(vec4<bool>(global1.a.a.x, true, global1.a.a.x, global1.c.a.x), !vec4<bool>(true, global1.c.a.x, true, false), !vec4<bool>(global1.a.a.x, global1.c.a.x, true, global1.a.a.x))));
    global3 = vec4<u32>(~_wgslsmith_add_u32(arg_3.a, 4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(14371u, 46138u, 1258u, 1u) >> ((vec4<u32>(1u, 0u, arg_3.a, arg_3.a) ^ vec4<u32>(39011u, global2.a, global3.x, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(arg_1.x, u_input.a, 0u, 1u) >> (abs(vec4<u32>(4977u, arg_3.a, 1u, 1u)) % vec4<u32>(32u)), true), _wgslsmith_add_vec4_u32(~select(vec4<u32>(33220u, u_input.a, u_input.a, 56734u), vec4<u32>(global1.b.x, global1.b.x, global2.a, global1.b.x), vec4<bool>(false, global1.c.a.x, global1.a.a.x, var_2.x)), ~firstTrailingBit(vec4<u32>(arg_3.a, 4294967295u, 13282u, global3.x)))), 1u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(12751u, ~4294967295u), ~(~0u)));
    return global0[_wgslsmith_index_u32(~26085u, 6u)];
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_5) -> vec4<f32> {
    global0 = array<Struct_5, 6>();
    var var_0 = -vec4<i32>(firstTrailingBit(9352i) | global1.c.b.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.b.a, 29355i, -40522i, u_input.b.x), u_input.b) | 1i, select(arg_1.b.a, ~52902i, global1.a.a.x), 5915i);
    var var_1 = vec4<bool>(true, true, -129f == arg_2.x, true);
    let var_2 = var_0.wzx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    return vec4<f32>(1035f, -144f, 461f, _wgslsmith_f_op_f32(select(1382f, 1f, u_input.b.x != -(~(-2147483647i)))));
}

fn func_1() -> u32 {
    let var_0 = vec2<f32>(-695f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), 709f)));
    var var_1 = 4294967295u;
    global1 = Struct_4(Struct_3(!vec2<bool>(global1.b.x < 71579u, global1.c.a.x & global1.a.a.x), Struct_1(1i)), ~(~(~global3.zyw) ^ vec3<u32>(28585u, global2.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, u_input.a), global3.ww))), Struct_3(!select(vec2<bool>(true, global1.a.a.x), vec2<bool>(global1.c.a.x, true), !vec2<bool>(global1.c.a.x, false)), global1.c.b));
    global2 = global0[_wgslsmith_index_u32(global3.x, 6u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), Struct_3(global1.c.a, global1.a.b), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -806f))), var_0.x, 1000f <= _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x), -894f, var_0.x), func_3(vec3<i32>(1i, 2147483647i, abs(-1i)), vec2<u32>(73869u & ~u_input.a, 2744u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(901f)) - var_0.x), _wgslsmith_f_op_f32(-212f * _wgslsmith_f_op_f32(-var_0.x)), true)), func_2())));
    return max(_wgslsmith_mod_u32(u_input.a, ~global2.a), 717u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a ^ (global2.a & global1.b.x));
    let var_1 = vec3<bool>(false, func_1() <= ~4294967295u, !any(vec3<bool>(false, true, any(global1.a.a))));
    var var_2 = ~global3.zxy;
    var var_3 = firstTrailingBit(~_wgslsmith_mod_vec3_u32(global1.b, vec3<u32>(1u, 1u, global1.b.x) ^ global3.wzw) & global1.b);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(-1655f * _wgslsmith_f_op_f32(min(326f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(321f, 205f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, ~(~max(12922u, 1u))), 1177f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-457f * 821f), 467f) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.x, var_4.x))))))), ~vec2<u32>(global3.x, func_2().a));
}

