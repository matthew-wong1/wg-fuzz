struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_4 = Struct_4(18737u);

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global3: u32;

var<private> global4: array<f32, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-389f, global0.x, 526f), vec3<f32>(122f, 210f, global4[_wgslsmith_index_u32(global1.a, 26u)]), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -449f, global0.x) * vec3<f32>(global0.x, 1652f, global4[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(2040f, global4[_wgslsmith_index_u32(4294967295u, 26u)], 434f), vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 26u)], global4[_wgslsmith_index_u32(1u, 26u)], global0.x)))))))) * vec3<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 26u)]))), -1952f)), global4[_wgslsmith_index_u32(arg_0.a, 26u)]));
    var var_0 = false;
    let var_1 = all(!(!(!(!global2[_wgslsmith_index_u32(arg_0.a, 29u)]))));
    var var_2 = vec3<u32>(~(global1.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(36028u, u_input.a, u_input.a), vec3<u32>(1u, 0u, global1.a)) % 32u)), 1u | global1.a, 4294967295u) >> (select(min(firstLeadingBit(vec3<u32>(4294967295u, arg_0.a, arg_0.a)), firstLeadingBit(vec3<u32>(u_input.b, arg_0.a, 4294967295u))), vec3<u32>(_wgslsmith_div_u32(arg_0.a, 1u), ~u_input.b, arg_0.a) | (vec3<u32>(global1.a, 4294967295u, 0u) >> (~vec3<u32>(33744u, 0u, 1u) % vec3<u32>(32u))), any(vec4<bool>(true, true, true, true))) % vec3<u32>(32u));
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> f32 {
    global4 = array<f32, 26>();
    let var_0 = firstTrailingBit(_wgslsmith_div_vec4_u32(~firstTrailingBit(vec4<u32>(global1.a, arg_1.a, u_input.b, 4294967295u)), select(~vec4<u32>(28969u, arg_1.a, 0u, arg_0.a) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, u_input.b, arg_0.a, u_input.d), vec4<u32>(u_input.d, 0u, 329u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(global1.a, 0u, 1u, ~19233u), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false)), any(vec4<bool>(false, true, true, false))))));
    global3 = var_0.x;
    let var_1 = true;
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~var_0.zz, ~vec2<u32>(u_input.b, arg_1.a)), ~vec2<u32>(~0u, 0u)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-783f + _wgslsmith_f_op_f32(global0.x - global0.x)))), -672f);
}

fn func_1(arg_0: i32) -> Struct_4 {
    global3 = 1u;
    var var_0 = u_input.c.yz & _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, 0i), u_input.c.wx, select(_wgslsmith_add_vec2_i32(u_input.c.yw, u_input.c.wx), -vec2<i32>(arg_0, 2147483647i), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true)));
    var var_1 = _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(func_3(func_2(Struct_3(global1.a), true), Struct_4(abs(29847u) | _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, global1.a, global1.a), vec3<u32>(1u, global1.a, 55023u))))));
    var var_2 = Struct_4(_wgslsmith_div_u32(~reverseBits(u_input.d), 6051u) ^ ~(firstTrailingBit(4294967295u) & 1u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(func_3(func_2(func_2(func_2(Struct_3(u_input.a), false), true), true), Struct_4(~(~global1.a)))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(select(false, false, true), true), true), true);
    return Struct_4(abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global2[_wgslsmith_index_u32(~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 4294967295u), vec2<u32>(1u, u_input.d)))), 29u)];
    global2 = array<vec3<bool>, 29>();
    global1 = func_1(-1i);
    let var_1 = ~(~_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.a, 1729u, 14550u), vec4<u32>(1u, u_input.b, 23501u, 42913u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 35232u, global1.a, 11849u), vec4<u32>(global1.a, u_input.a, u_input.b, global1.a)), vec4<u32>(u_input.d, 52564u, global1.a, 1u) & vec4<u32>(1u, 1u, global1.a, global1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

