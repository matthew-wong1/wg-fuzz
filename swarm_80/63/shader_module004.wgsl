struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = arg_1;
    let var_1 = Struct_3(arg_1.b, Struct_1(_wgslsmith_clamp_u32(~arg_1.b, 66647u, arg_1.c.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-113f, arg_3.b.x, arg_3.c)), 469f), Struct_2(13822i, ~(arg_2.x << (~var_0.d.x % 32u))), arg_1.e.x);
    var_0 = Struct_4(select(vec2<bool>(false, !any(vec3<bool>(arg_1.a.x, false, arg_1.a.x))), select(select(arg_1.a, !var_0.a, true), !var_0.a, vec2<bool>(select(var_0.a.x, arg_1.a.x, true), false)), arg_1.a.x), arg_3.a, var_1.b, ~vec3<u32>(var_1.a | var_0.c.a, ~(arg_3.a ^ var_0.d.x), max(max(1u, 35345u), var_0.b)), arg_1.e);
    return firstLeadingBit(~(arg_1.c.a >> (~37972u % 32u)));
}

fn func_2(arg_0: Struct_5) -> vec2<f32> {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = reverseBits(_wgslsmith_sub_vec2_u32(~arg_0.a.d.yx, abs(arg_0.a.d.xz))) << (vec2<u32>(_wgslsmith_sub_u32(arg_0.a.c.a, arg_0.a.c.a), ~_wgslsmith_mult_u32(func_3(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 39458i), Struct_4(arg_0.a.a, arg_0.a.d.x, arg_0.a.c, vec3<u32>(4294967295u, 10803u, 4294967295u), vec3<i32>(-1i, u_input.a.x, -33065i)), vec4<i32>(arg_0.a.e.x, arg_0.a.e.x, 11104i, arg_0.a.e.x), arg_0.a.c), arg_0.a.b)) % vec2<u32>(32u));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c.c + 383f)))), _wgslsmith_f_op_f32(f32(-1f) * -1353f));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = min(~u_input.a, -_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) & abs(u_input.a), ~(vec3<i32>(74373i, u_input.a.x, u_input.a.x) & vec3<i32>(1i, -2147483647i, 19083i))));
    let var_1 = Struct_2(-(i32(-1i) * -u_input.a.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a.x), _wgslsmith_mult_i32(var_0.x, u_input.a.x), -2147483647i, select(var_0.x, -52229i, false)), abs(firstLeadingBit(vec4<i32>(32278i, var_0.x, -26665i, var_0.x)))), 1i);
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_3 = -30606i;
    global0 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(Struct_5(Struct_4(vec2<bool>(true, true), 1u, global0[_wgslsmith_index_u32(arg_0.a, 9u)], vec3<u32>(1u, 24545u, 1u), u_input.a)))))) * _wgslsmith_div_vec2_f32(arg_0.b.xy, _wgslsmith_f_op_vec2_f32(arg_0.b.xy - arg_0.b.xz)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    var var_0 = vec3<u32>(~21310u, 1u, _wgslsmith_add_u32(1u, ~1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, 1391f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(631f, -425f)) - _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(var_0.x, 9u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-358f, -810f), vec2<f32>(1f, 1f)))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2025f), -591f) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(135f)), -613f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) + -335f))));
    var var_2 = Struct_5(Struct_4(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), 17976u, global0[_wgslsmith_index_u32(0u, 9u)], vec3<u32>(var_0.x, select(var_0.x, 23772u, false) >> (firstTrailingBit(42541u) % 32u), var_0.x), ~u_input.a));
    var var_3 = var_2.a.e;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~var_2.a.d, countOneBits(vec3<u32>(var_2.a.d.x, 4294967295u, 1u))), var_2.a.d));
}

