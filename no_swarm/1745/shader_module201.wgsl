struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(27830u, 0u, 1u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_0 = 0u;
    var var_1 = vec2<f32>(688f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -959f)))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * -1603f), _wgslsmith_f_op_f32(-var_1.x)))), var_1.x);
    return Struct_2(Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_1.x * -473f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(893f + -454f) - _wgslsmith_f_op_f32(-var_1.x)))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(func_2(countOneBits(3725i ^ u_input.d), u_input.c).a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(sign(274f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, false)), var_0.a.a.x)))))));
    var_0 = Struct_2(Struct_1(var_0.a.a));
    var_0 = Struct_2(func_2(_wgslsmith_dot_vec4_i32(reverseBits(~u_input.c), abs(u_input.c)), ~_wgslsmith_add_vec4_i32(u_input.c, _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 0i, u_input.c.x, -1998i)))).a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(233f)), _wgslsmith_f_op_f32(round(var_0.a.a.x)))) * var_0.a.a.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a.x - -448f)), var_0.a.a.x)));
    return !(!select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
}

fn func_1() -> vec4<bool> {
    let var_0 = func_2(-u_input.d, u_input.c);
    var var_1 = var_0.a.a.x < 1040f;
    let var_2 = var_0;
    global0 = array<u32, 4>();
    var_1 = !(!all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), true)));
    return !(!func_3(0i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.a.a.zw, var_0.a.a.wy))), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 4>();
    var var_0 = ~vec4<u32>(1u, _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(11591u, 4u)]), abs(34579u)), ~(~52147u), ~0u);
    var var_1 = 176f;
    var var_2 = !select(select(func_1(), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, true)));
    var var_3 = func_2(50984i, ~u_input.c).a;
    let var_4 = Struct_2(func_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c.x, u_input.d, 2147483647i)), _wgslsmith_div_vec3_i32(u_input.c.yzx, u_input.b)) >> (var_0.x % 32u), u_input.c).a);
    var var_5 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(_wgslsmith_div_i32(-u_input.b.x, -u_input.c.x), ~(-2147483647i | u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.c.x, u_input.d)), u_input.d & -1i));
}

