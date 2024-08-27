struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: vec2<f32> = vec2<f32>(588f, 666f);

var<private> global2: array<Struct_1, 24>;

var<private> global3: vec2<f32> = vec2<f32>(-980f, -1228f);

var<private> global4: array<Struct_1, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global4 = array<Struct_1, 28>();
    return u_input.c;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> vec4<bool> {
    global0 = array<vec2<bool>, 4>();
    var var_0 = arg_0.c.x;
    global0 = array<vec2<bool>, 4>();
    let var_1 = ~(~abs(vec3<u32>(1u, arg_3, arg_3) >> (firstLeadingBit(vec3<u32>(64012u, 16300u, 1u)) % vec3<u32>(32u))));
    let var_2 = countOneBits(max(~(u_input.b.wzw | vec3<u32>(arg_3, 42677u, var_1.x)), arg_0.c << (var_1 % vec3<u32>(32u))));
    return !select(!(!select(arg_0.d, vec4<bool>(true, false, arg_0.b.x, arg_0.d.x), arg_0.b.x)), vec4<bool>(!(!arg_0.d.x), arg_0.b.x, arg_0.d.x, 69219u <= (0u & arg_0.c.x)), vec4<bool>(select(arg_3 != 34082u, all(vec4<bool>(arg_0.d.x, arg_0.b.x, arg_0.b.x, false)), true), arg_0.b.x, any(arg_0.d) && !arg_0.b.x, arg_0.d.x != all(vec3<bool>(arg_0.d.x, true, true))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = countOneBits(~(~vec3<i32>(func_2(arg_0.d, Struct_1(arg_0.a, vec3<bool>(arg_0.d.x, arg_0.b.x, arg_0.d.x), u_input.b.wwz, arg_0.d, arg_2), global3.x, false), abs(u_input.d), -1i)));
    var var_1 = 0u;
    global4 = array<Struct_1, 28>();
    let var_2 = arg_1;
    let var_3 = select(select(vec4<bool>(any(arg_0.b), any(vec4<bool>(false, arg_0.b.x, arg_0.d.x, arg_0.b.x)), all(func_3(arg_0, 1i, vec3<f32>(global1.x, arg_0.a.x, -874f), 4294967295u)), all(!vec4<bool>(true, arg_0.b.x, arg_0.b.x, arg_0.d.x))), vec4<bool>(arg_0.b.x | (u_input.a < u_input.a), _wgslsmith_div_u32(u_input.b.x, arg_0.c.x) <= 4294967295u, arg_0.b.x, 1f <= _wgslsmith_f_op_f32(min(global3.x, 988f))), any(vec4<bool>(arg_0.d.x, func_3(Struct_1(vec2<f32>(-1255f, 351f), arg_0.d.yyz, arg_0.c, arg_0.d, -765f), u_input.a, vec3<f32>(1472f, 995f, 1019f), arg_0.c.x).x, !arg_0.d.x, !arg_0.b.x))), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, arg_0.a.x), arg_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(758f, global1.x), vec2<f32>(arg_1, 1721f), arg_0.d.x)))), vec3<bool>(arg_0.b.x, true, !arg_0.d.x), countOneBits(arg_0.c), select(!vec4<bool>(arg_0.b.x, true, false, arg_0.d.x), arg_0.d, true), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_clamp_i32(-2147483647i, min(1i, -var_0.x), func_2(vec4<bool>(true, arg_0.d.x, true, arg_0.b.x), arg_0, arg_2, arg_0.d.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, 25896u, u_input.b.x), u_input.b) % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1063f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, -844f)))))), 39621u), !any(arg_0.d) || arg_0.b.x);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> StorageBuffer {
    var var_0 = 718f != _wgslsmith_f_op_f32(min(-1308f, arg_0.a.x));
    global0 = array<vec2<bool>, 4>();
    global4 = array<Struct_1, 28>();
    let var_1 = Struct_1(arg_0.a, vec3<bool>(all(arg_0.d), true, arg_1.b.x), vec3<u32>(select(4294967295u, _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), select(true, true, arg_3.x >= 23405i)), select(~37541u, 1u, true), arg_1.c.x), func_3(func_1(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.e, global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -391f), 1u >= arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))), abs(~21560i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.e, 1000f, global1.x), vec3<f32>(-768f, global1.x, -1334f))))), ~_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_div_u32(arg_1.c.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))) - func_1(arg_1, -1029f, -1000f).e));
    let var_2 = var_1.b;
    return StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_1.c.x, 12954u), min(u_input.b.x, var_1.c.x)), ~vec2<u32>(var_1.c.x, 74395u)) & (var_1.c.xy << (~(~var_1.c.yy) % vec2<u32>(32u))), arg_1.e, vec3<f32>(var_1.e, arg_1.e, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-422f)), _wgslsmith_f_op_f32(-arg_1.a.x))))), 1274f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    let x = u_input.a;
    s_output = func_4(func_1(global4[_wgslsmith_index_u32(~u_input.b.x, 28u)], -167f, -259f), func_1(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global1.x)))), u_input.c, countOneBits(vec2<i32>(-1i, -1i << (0u % 32u))));
}

