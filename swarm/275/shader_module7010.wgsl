struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 4>();
    var var_0 = global0[_wgslsmith_index_u32(1467u, 4u)];
    let var_1 = -528f;
    let var_2 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_0.b.a)), global1.a.x < var_0.b.a.x, ~global1.c);
    return -u_input.c.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = false;
    global0 = array<Struct_2, 4>();
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-223f, global1.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_0.xx)) + _wgslsmith_f_op_vec2_f32(-arg_0.zy)))), false, ~global1.c | vec4<i32>(-(~u_input.c.x), -(~global1.c.x), ~func_3(), _wgslsmith_dot_vec2_i32(~global1.c.wx, global1.c.xw ^ u_input.c)));
    global1 = Struct_1(global1.a, arg_2, global1.c);
    global0 = array<Struct_2, 4>();
    return global0[_wgslsmith_index_u32(arg_1, 4u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = arg_0;
    let var_1 = !(!vec2<bool>(all(!vec4<bool>(var_0.a.b, false, global1.b, false)), true));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * arg_2)), 178f)), all(vec4<bool>(var_1.x, false, arg_1.b, global1.b)), vec4<i32>(22745i, abs(arg_1.c.x), abs(global1.c.x), ~arg_1.c.x));
    let var_2 = ~_wgslsmith_div_vec4_u32(abs(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a, 5489u, 32701u, 1u), vec4<u32>(0u, u_input.a, 20027u, u_input.b.x)), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u))), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, ~u_input.a << (~17749u % 32u)));
    let var_3 = arg_1.b;
    return -u_input.c.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~vec2<u32>(u_input.b.x, ~min(u_input.a, ~u_input.b.x));
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_2 = countOneBits(select(global1.c.yzy << (~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(u_input.b.x, var_0.x, u_input.b.x)) % vec3<u32>(32u)), vec3<i32>(global1.c.x, func_4(func_2(vec3<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), u_input.b.x, true), arg_1, -1586f), abs(select(arg_1.c.x, arg_1.c.x, arg_0))), vec3<bool>(!arg_0, !all(vec2<bool>(global1.b, true)), any(select(vec2<bool>(true, true), vec2<bool>(arg_0, true), global1.b)))));
    global0 = array<Struct_2, 4>();
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_1.a.x)))), 118f, global1.a.x)), select(~reverseBits(1u), var_0.x, global1.b) << (var_0.x % 32u), !(!global1.b)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    let var_0 = 1i;
    global1 = Struct_1(global1.a, false, global1.c);
    let var_1 = global1.b;
    global1 = func_1(any(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, global1.b), vec2<bool>(false, true), global1.b))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.a)), vec2<f32>(global1.a.x, -558f)), !(_wgslsmith_f_op_f32(-global1.a.x) != -2454f), ~(~vec4<i32>(u_input.c.x, 25077i, -2147483647i, 58899i))));
    let var_2 = vec2<u32>(u_input.a, ~u_input.a >> (max(u_input.a, 1u) % 32u)) | ~(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.a), ~41001u) << (_wgslsmith_mult_vec2_u32(u_input.b, select(vec2<u32>(4294967295u, u_input.a), u_input.b, vec2<bool>(global1.b, true))) % vec2<u32>(32u)));
    var var_3 = global1.b;
    global1 = Struct_1(global1.a, ~u_input.b.x != ~var_2.x, -global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(global1.c.yzy, vec3<i32>(global1.c.x, 8945i, 1i)), func_1(any(vec2<bool>(false, global1.b)), Struct_1(vec2<f32>(-258f, global1.a.x), global1.b, vec4<i32>(416i, u_input.c.x, var_0, 2147483647i))).c.www)), reverseBits(abs(~vec3<u32>(0u, u_input.b.x, var_2.x))), ~(~(vec4<u32>(var_2.x, 1u, var_2.x, u_input.b.x) << (vec4<u32>(var_2.x, 0u, 1u, 43683u) % vec4<u32>(32u))) | vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(var_2.x, 0u, 4294967295u), ~0u, ~1u)), ~firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(41134u, 1u), _wgslsmith_sub_u32(var_2.x, 71879u))));
}

