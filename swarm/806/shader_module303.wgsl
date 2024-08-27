struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(4294967295u, vec3<f32>(-355f, 414f, 511f)), Struct_1(32497u, vec3<f32>(-1960f, -669f, 246f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_1(~1u, vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.b.x, -578f, true && all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))));
    global0 = array<Struct_1, 2>();
    var var_1 = ~(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, u_input.b, var_0.a), ~vec4<u32>(arg_0.a, 4294967295u, 4294967295u, arg_0.a)), vec4<u32>(~var_0.a, 41420u, 1u, 4294967295u)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(10743u, u_input.b, arg_0.a, u_input.b), vec4<u32>(arg_0.a, 23641u, 77071u, 4294967295u)), ~firstLeadingBit(vec4<u32>(u_input.b, u_input.b, var_0.a, var_0.a))) % vec4<u32>(32u)));
    global0 = array<Struct_1, 2>();
    var_1 = ~(~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 1011u, 0u, 0u) << (vec4<u32>(u_input.b, 1u, u_input.b, var_1.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, 60718u, var_0.a, 62627u)), vec4<u32>(1u, 32931u, 4294967295u, 15643u)), min(vec4<u32>(0u, 4294967295u, var_1.x, var_0.a) ^ vec4<u32>(arg_0.a, var_0.a, 45660u, var_0.a), _wgslsmith_mod_vec4_u32(vec4<u32>(3921u, 38575u, 1u, var_1.x), vec4<u32>(arg_0.a, 58861u, var_1.x, 1u)))));
    return 1u;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    let var_0 = firstTrailingBit(func_3(Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-452f, -1339f, -680f), vec3<f32>(637f, -1552f, -296f)))))));
    let var_1 = false;
    var var_2 = select(true, !var_1, var_1);
    let var_3 = false & (select(-1i, 0i, !select(true, false, false)) >= _wgslsmith_sub_i32(reverseBits(49405i) << (firstLeadingBit(arg_1) % 32u), arg_0 << (1u % 32u)));
    var var_4 = _wgslsmith_add_i32(-5047i, -(i32(-1i) * -79919i));
    return global0[_wgslsmith_index_u32((~u_input.b << (122216u % 32u)) ^ abs(4294967295u), 2u)];
}

fn func_1(arg_0: i32, arg_1: u32) -> i32 {
    global0 = array<Struct_1, 2>();
    let var_0 = func_2(min(-arg_0, -_wgslsmith_mult_i32(57964i, i32(-1i) * -1i)), ~(~firstLeadingBit(32805u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-var_0.b.xz);
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_mult_i32(func_1(u_input.a, ~(1u | u_input.b)), (i32(-1i) * -23688i) >> (func_3(func_2(70257i, 118661u)) % 32u));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 87797u, 32584u, 9279u) | vec4<u32>(u_input.b, 70560u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(~vec4<u32>(77033u, u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 7971u, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 38672u, u_input.b, 4294967295u))))));
}

