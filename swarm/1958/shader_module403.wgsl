struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(327f, 729f, -421f, -128f, -154f, 1000f, 1270f, -437f, -665f, -832f, -434f, 918f, -1125f, -214f, 338f, 175f, -528f, -295f, -348f, -307f, 791f, -219f, 1115f, -133f, 1384f, -1281f, 442f, 100f, -1346f, -273f);

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(31192u, true), Struct_1(4294967295u, true), Struct_1(81661u, false), Struct_1(49974u, false), Struct_1(10833u, false), Struct_1(1u, true), Struct_1(0u, false), Struct_1(0u, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = u_input.c;
    var var_2 = Struct_1(37190u, true);
    let var_3 = Struct_1(~arg_0, true);
    var_1 = vec4<u32>(4294967295u, min(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 63836u, 0u), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(21580u, 1u, 1u, var_3.a))), abs(abs(0u))), ~14151u), arg_0, (1u << (u_input.c.x % 32u)) ^ 28094u);
    return var_3;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 30u)];
    global1 = array<Struct_1, 8>();
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 30u)]);
    global1 = array<Struct_1, 8>();
    return func_2(~firstLeadingBit(arg_1.a));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global1 = array<Struct_1, 8>();
    let var_0 = (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, func_2(3044u).a, _wgslsmith_div_u32(u_input.a, 58582u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 10779u, u_input.c.x, u_input.c.x), vec4<u32>(40520u, 4294967295u, 6319u, 0u))), select(u_input.c, vec4<u32>(1u, u_input.a, 1u, u_input.a), true)) & min(u_input.c, u_input.c & ~u_input.c)) | ~u_input.c;
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return global0[_wgslsmith_index_u32(var_0.x, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    let var_0 = abs(_wgslsmith_add_i32(~(~32698i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 16591i, 2147483647i, 7556i), vec4<i32>(u_input.b.x, u_input.b.x, -22431i, u_input.b.x))))) ^ max(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 21673i), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(u_input.b.x, -1i)));
    var var_1 = global1[_wgslsmith_index_u32(0u, 8u)];
    let var_2 = func_1(~_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(u_input.b, -vec3<i32>(71382i, var_0, u_input.b.x))), global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), u_input.c)), 8u)]);
    let var_3 = 399f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.b, false)), var_3, -1207f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2768f, var_3, 634f))))), -528f);
}

