struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(-3371i), Struct_2(0i), Struct_2(1i), Struct_2(24417i), Struct_2(0i), Struct_2(-26700i), Struct_2(-3019i), Struct_2(-24475i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(-2580i), Struct_2(-36084i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    global0 = Struct_3(vec2<u32>(39952u, 292u), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, 3217i, -11849i) & vec4<i32>(global0.b.x, global0.b.x, 1i, 5630i), global0.b));
    let var_0 = -(~(-2147483647i));
    var var_1 = -select(i32(-1i) * -global0.b.x, u_input.d, true);
    var_1 = ~abs(u_input.d);
    var var_2 = var_0;
    return ~(~(arg_0 << (1u % 32u)));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(global0.a.x, 12u)];
    var var_1 = ~vec2<i32>(global0.b.x, global0.b.x);
    let var_2 = _wgslsmith_dot_vec3_i32(global0.b.xzx | -min(~global0.b.zyz, abs(vec3<i32>(2147483647i, var_1.x, global0.b.x))), vec3<i32>(var_0.a, i32(-1i) * -global0.b.x, var_1.x));
    let var_3 = countOneBits(func_2(global0.a.x, abs(global0.a)));
    var var_4 = _wgslsmith_add_vec2_i32(vec2<i32>(var_2, ~_wgslsmith_mod_i32(var_1.x, _wgslsmith_mod_i32(0i, u_input.a))), _wgslsmith_sub_vec2_i32(global0.b.xx, vec2<i32>(select(-17165i, i32(-1i) * -18855i, all(vec2<bool>(arg_1, arg_1))), _wgslsmith_div_i32(1407i, -2147483647i))));
    return global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(651f + 2221f)))));
    let var_1 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(firstLeadingBit(14790u), global0.a.x >> (1u % 32u)), 0u), func_1(true, false, true));
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    global0 = Struct_3(vec2<u32>(~_wgslsmith_mod_u32(var_1.x, global0.a.x), ~4294967295u) | ~countOneBits(~vec2<u32>(var_1.x, var_1.x)), abs(~global0.b));
    var var_2 = false;
    var var_3 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, true), all(vec3<bool>(true, true, true)));
    let var_4 = i32(-1i) * -64422i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-575f + var_0)))));
}

