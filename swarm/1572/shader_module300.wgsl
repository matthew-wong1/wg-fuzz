struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: Struct_1 = Struct_1(59713u, vec2<f32>(-420f, 367f), vec3<u32>(4294967295u, 1u, 64865u), 486f);

var<private> global2: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> f32 {
    let var_0 = ~vec3<i32>(firstLeadingBit(~(~1i)), countOneBits(u_input.d.x >> (abs(1u) % 32u)), 40874i);
    global1 = Struct_1(0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2242f, global1.b.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a, reverseBits(1u), u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(26276u, 22976u, u_input.b), vec3<u32>(19534u, global1.a, u_input.b)), abs(firstLeadingBit(global1.c))), _wgslsmith_f_op_f32(-global1.b.x));
    let var_1 = arg_1;
    global0 = array<Struct_2, 4>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global1.c.yx, ~global1.c.xy), global1.c.yy | vec2<u32>(u_input.b, 0u)), 4u)];
    return -1056f;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global1 = Struct_1(~(~u_input.b), _wgslsmith_f_op_vec2_f32(select(global1.b, global1.b, true)), global1.c, 160f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(true, vec4<bool>(u_input.c >= -1i, true, true, true))))));
    global1 = Struct_1(~(~118600u), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(sign(global1.b.x))), select(~(vec3<u32>(u_input.a, u_input.b, u_input.a) | vec3<u32>(global1.c.x, arg_0, 4294967295u)), vec3<u32>(min(0u, arg_0), ~global1.a, 4853u >> (1u % 32u)), vec3<bool>(true, true, true)) << (global1.c % vec3<u32>(32u)), global1.b.x);
    global1 = Struct_1(46692u, vec2<f32>(_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - global1.b.x) + _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, global1.d)))), vec3<u32>(max(1u, global1.a ^ 1u), global1.c.x, _wgslsmith_mult_u32(~9190u, arg_0) >> (arg_0 % 32u)), global1.b.x);
    var var_1 = global0[_wgslsmith_index_u32(abs(~reverseBits(abs(countOneBits(1u)))), 4u)];
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2))));
    var var_2 = -(u_input.d | ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -31066i, 9752i)), max(vec3<i32>(2147483647i, 0i, 78036i), u_input.d)));
    global2 = abs(1u);
    global1 = func_2(reverseBits(countOneBits(29169u)));
    return firstLeadingBit(_wgslsmith_mult_i32(~max(var_2.x, -1i), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(func_1(_wgslsmith_f_op_vec2_f32(-global1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-799f, 597f, 764f, -1034f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d, -596f, 1000f, -3423f))), -1476f) & u_input.d.x);
    global0 = array<Struct_2, 4>();
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.d)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<u32>(global1.c.x, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global1.a, global1.c.x, global1.a, 65251u)) >> (abs(vec4<u32>(9095u, u_input.a, 4005u, 0u)) % vec4<u32>(32u)), abs(vec4<u32>(4294967295u, global1.c.x, 92688u, u_input.a) >> (vec4<u32>(39770u, 4294967295u, 0u, 21006u) % vec4<u32>(32u)))), 0u | u_input.a), _wgslsmith_f_op_f32(sign(1377f)));
    var var_1 = select(all(vec4<bool>(true, true, true, true)), (u_input.c > 34680i) && false, false);
    var var_2 = func_2(u_input.a);
    var var_3 = global1.b;
    var var_4 = !any(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

