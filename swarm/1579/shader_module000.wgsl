struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(17118u, true, vec4<i32>(60556i, -1i, i32(-2147483648), 2147483647i));

var<private> global1: vec2<i32>;

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    let var_0 = Struct_1(global0.a, global0.b && false, vec4<i32>(-2147483647i, 24374i, global1.x, ~1i));
    var var_1 = _wgslsmith_sub_i32(69101i, select(abs(8189i), -global1.x, true) | global0.c.x) & 48159i;
    var_1 = global0.c.x;
    global2 = array<vec3<f32>, 10>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, var_0.a) ^ abs(_wgslsmith_mod_u32(~(~1u), 1u)), 32u)];
    return reverseBits(_wgslsmith_mod_i32(abs(global0.c.x) | select(var_2.c.x ^ var_2.c.x, _wgslsmith_mult_i32(2147483647i, 0i), false), 28656i));
}

fn func_2(arg_0: i32) -> vec4<i32> {
    var var_0 = vec4<u32>(u_input.a, ~(~u_input.b.x), u_input.a, u_input.a);
    let var_1 = -1i;
    var var_2 = !(!(!(!(!vec2<bool>(global0.b, global0.b)))));
    let var_3 = global3[_wgslsmith_index_u32(0u, 32u)];
    let var_4 = Struct_1(0u, true, -min(vec4<i32>(var_1, global0.c.x, global0.c.x, global0.c.x) >> (firstTrailingBit(vec4<u32>(0u, var_3.a, 14940u, 59143u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.c.x, -2147483647i), vec2<i32>(-50825i, 0i)), 2147483647i, -arg_0, _wgslsmith_div_i32(arg_0, global0.c.x))));
    return vec4<i32>(var_1, ~_wgslsmith_mult_i32(var_1, 0i), _wgslsmith_add_i32(var_3.c.x, select(arg_0, var_1, all(select(vec4<bool>(false, var_2.x, global0.b, false), vec4<bool>(true, true, true, false), false)))), func_3(~vec3<u32>(15769u << (var_4.a % 32u), _wgslsmith_mod_u32(global0.a, 37068u), var_4.a), _wgslsmith_f_op_f32(max(806f, _wgslsmith_f_op_f32(f32(-1f) * -1142f)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<vec3<f32>, 10>();
    let var_0 = global0.c;
    global2 = array<vec3<f32>, 10>();
    global1 = var_0.yz;
    global2 = array<vec3<f32>, 10>();
    return Struct_1(0u, true, _wgslsmith_add_vec4_i32(global0.c, abs(func_2(-global0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(max(u_input.a, (u_input.b.x >> (~global0.a % 32u)) & 4294967295u));
    let var_1 = vec4<bool>(true, var_0.b, !select(select(!global0.b, global0.b || global0.b, all(vec3<bool>(var_0.b, false, false))), true, false), var_0.b);
    var var_2 = abs(_wgslsmith_mult_u32(~727u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, global0.a), vec4<u32>(var_0.a, firstLeadingBit(43597u), _wgslsmith_dot_vec3_u32(vec3<u32>(72466u, var_0.a, 16999u), vec3<u32>(var_0.a, 16826u, var_0.a)), 19802u))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.zy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1269f, 139f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) * 1254f), _wgslsmith_f_op_f32(ceil(-583f)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1788f, 1031f, var_0.b)), _wgslsmith_f_op_f32(-644f * 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(var_0.a, 10u)]))));
}

