struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = array<Struct_1, 7>();
    global0 = array<Struct_1, 7>();
    return abs(u_input.d << (~vec4<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), ~0u, ~u_input.b, ~25857u) % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f))) + arg_1), 1698f));
    let var_1 = ~_wgslsmith_sub_vec4_u32(select(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 7410i, u_input.a), vec3<i32>(arg_2, -11531i, arg_2)), _wgslsmith_dot_vec2_u32(u_input.d.wy, u_input.d.zz), vec4<i32>(arg_2, 8647i, -2147483647i, 23513i)), ~vec4<u32>(u_input.d.x, 1u, 25983u, u_input.b), false), ~reverseBits(~u_input.d));
    global0 = array<Struct_1, 7>();
    var var_2 = 63448u;
    let var_3 = global0[_wgslsmith_index_u32(var_1.x & firstLeadingBit(u_input.b), 7u)];
    return Struct_1(u_input.c.x << (_wgslsmith_add_u32(var_1.x, ~76904u) % 32u), abs(u_input.b), var_3.c, u_input.d.x);
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 7>();
    return firstLeadingBit(~(~vec4<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.a), u_input.a, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(776f, 614f, -357f), vec3<f32>(-1198f, -1671f, -589f))) + _wgslsmith_div_vec3_f32(vec3<f32>(1027f, -1026f, -1122f), vec3<f32>(1264f, 1248f, 370f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -818f));
    let var_2 = func_1(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), var_1 <= _wgslsmith_f_op_f32(-var_0.x))), 120f, u_input.c.x, true);
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(12300u, ~(~var_2.b), var_2.d, ~firstTrailingBit(var_2.d)), abs(u_input.d));
    var var_4 = Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.a, u_input.a, var_2.a, var_2.a) & _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-10376i, 35320i, 24772i, -1i)), countOneBits(vec4<i32>(2147483647i, -20699i, 0i, -2147483647i))), select(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_2.a, u_input.c.x, -25943i, -89999i), vec4<i32>(var_2.a, u_input.a, -32906i, u_input.a), vec4<bool>(var_2.c.x, false, true, var_2.c.x)), func_3()), vec4<i32>(~1i, u_input.a, var_2.a & 2147483647i, ~1i), all(select(vec3<bool>(false, false, false), vec3<bool>(true, var_2.c.x, var_2.c.x), var_2.c.x)))), ~(~firstLeadingBit(func_1(false, var_0.x, var_2.a, var_2.c.x).b)), select(func_1((u_input.b < 96854u) && true, -598f, u_input.c.x, var_2.c.x).c, var_2.c, var_2.c), 37048u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-var_1), var_1), _wgslsmith_f_op_vec2_f32(floor(var_0.zx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, -733f)) + _wgslsmith_f_op_f32(max(var_1, -1000f))), 1000f, -1290f) + vec3<f32>(-324f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(var_0.x + -887f)))));
}

