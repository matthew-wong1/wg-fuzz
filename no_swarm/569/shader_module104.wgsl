struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: f32 = 1188f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec4<u32> {
    global0 = array<Struct_3, 19>();
    let var_0 = all(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true)));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    global1 = _wgslsmith_f_op_f32(round(arg_0.b));
    global1 = _wgslsmith_f_op_f32(-arg_0.b);
    return ~vec4<u32>(~_wgslsmith_div_u32(1u, 1u) >> (0u % 32u), arg_1.a.x, ~(~1u), 0u);
}

fn func_2(arg_0: u32) -> u32 {
    global1 = _wgslsmith_f_op_f32(step(1800f, _wgslsmith_div_f32(728f, 656f)));
    var var_0 = vec2<i32>(~(~u_input.e.x << (~(~4294967295u) % 32u)), u_input.d.x);
    global0 = array<Struct_3, 19>();
    let var_1 = Struct_2(func_3(Struct_1(_wgslsmith_mult_i32(1i, firstTrailingBit(var_0.x)), _wgslsmith_f_op_f32(max(234f, _wgslsmith_f_op_f32(step(-589f, 544f))))), Struct_2(vec4<u32>(countOneBits(58716u), _wgslsmith_sub_u32(14512u, 1u), ~u_input.a, _wgslsmith_add_u32(0u, 1u)), 2147483647i), Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(0i, var_0.x, u_input.d.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -32444i, 2147483647i), vec3<i32>(u_input.b.x, 14685i, u_input.d.x))), _wgslsmith_f_op_f32(trunc(-1358f))), u_input.d.x), var_0.x);
    var var_2 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.b != (u_input.c.x | -15001i)), vec2<bool>(false, true), !any(vec2<bool>(true, false)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.a, var_1.a), reverseBits(var_1.a << (var_1.a % vec4<u32>(32u))));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 19>();
    global1 = _wgslsmith_div_f32(-2191f, -907f);
    let var_0 = ~u_input.b.yy;
    let var_1 = global0[_wgslsmith_index_u32(~func_2(~select(u_input.a, u_input.a, false)) & firstTrailingBit(u_input.a), 19u)];
    let var_2 = var_1.a;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 19>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(min(-1050f, -316f))));
    let var_0 = vec4<u32>(min((1u >> (u_input.a % 32u)) | (5711u & u_input.a), 0u), abs(_wgslsmith_add_u32(9496u, u_input.a)), func_2(u_input.a), ~_wgslsmith_add_u32(u_input.a, ~u_input.a)) << (vec4<u32>(37871u, reverseBits(~0u) & u_input.a, u_input.a, 0u) % vec4<u32>(32u));
    var var_1 = Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(-1309f * -834f))))));
    var_1 = Struct_1(-_wgslsmith_add_i32(-2147483647i, var_1.a) << (23458u % 32u), var_1.b);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -701f), -286f)) * var_1.b), _wgslsmith_f_op_f32(sign(-262f)), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(-364f);
}

