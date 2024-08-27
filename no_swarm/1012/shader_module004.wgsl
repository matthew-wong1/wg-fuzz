struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: f32 = 575f;

var<private> global2: Struct_4;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    global0 = array<vec3<u32>, 24>();
    let var_1 = _wgslsmith_mod_vec3_u32(~global0[_wgslsmith_index_u32(arg_3.x, 24u)], vec3<u32>(_wgslsmith_mod_u32(u_input.b, abs(53987u)), reverseBits(u_input.b), u_input.b));
    global1 = arg_2.x;
    var var_2 = Struct_1(vec2<i32>(~global2.b.a.x << ((_wgslsmith_div_u32(0u, u_input.b) | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 1u), vec2<u32>(1u, 5695u))) % 32u), reverseBits(_wgslsmith_dot_vec2_i32(arg_1.b.a, -global2.b.a))), true);
    return _wgslsmith_add_u32(64241u, ~(20991u & firstTrailingBit(4294967295u)));
}

fn func_2() -> Struct_4 {
    var var_0 = vec3<bool>(!(!any(!vec2<bool>(global2.a, global2.a))), true, global2.b.b);
    global2 = Struct_4(global2.b.b, Struct_1(~(-global2.b.a ^ (global2.b.a << (vec2<u32>(u_input.b, 33866u) % vec2<u32>(32u)))), !select(all(vec3<bool>(true, false, true)), !var_0.x, false)));
    global1 = -457f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, -456f)), _wgslsmith_f_op_f32(round(-1074f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(810f)) - _wgslsmith_div_f32(-1269f, -877f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1923f, 864f))))));
    var var_2 = _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(max(u_input.b, 0u), 24u)]), vec3<u32>(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(3894u, u_input.b, u_input.b, 42812u), _wgslsmith_add_vec4_u32(vec4<u32>(11487u, u_input.b, 1u, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b))), (u_input.b >> (u_input.b % 32u)) | func_3(vec4<bool>(false, false, false, var_0.x), Struct_4(global2.a, Struct_1(global2.b.a, var_0.x)), vec4<f32>(var_1.x, -892f, var_1.x, -1000f), vec4<u32>(u_input.b, 1u, 34054u, u_input.b)))));
    return Struct_4(true, Struct_1(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(25396i, u_input.c), ~u_input.a)), false));
}

fn func_1() -> vec3<bool> {
    global2 = func_2();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1268f, -585f))));
    global1 = 1f;
    var var_0 = Struct_4(!all(!vec2<bool>(global2.a, global2.b.b)), func_2().b);
    var_0 = func_2();
    return vec3<bool>(global2.a, global2.a, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_1(), !func_1(), !global2.b.b), func_1(), global2.b.b);
    var_0 = func_1();
    let var_1 = select(!vec4<bool>(all(select(vec3<bool>(false, false, global2.b.b), vec3<bool>(true, global2.b.b, true), false)), global2.b.b, select(true, func_1().x, true), global2.b.b), vec4<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1101f - 256f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1691f)), -1000f)), any(!vec3<bool>(var_0.x, false, true)), global2.b.b, global2.a), u_input.b <= u_input.b);
    var var_2 = Struct_5(Struct_4(all(var_1.ywx), global2.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(526f, -1637f, -1351f), vec3<f32>(576f, 390f, -1000f)) + vec3<f32>(659f, -846f, -2057f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1381f), _wgslsmith_f_op_f32(step(1000f, 474f)), _wgslsmith_f_op_f32(f32(-1f) * -1512f)))));
    var var_3 = var_2.a;
    var_3 = func_2();
    global2 = Struct_4(true, Struct_1(-_wgslsmith_add_vec2_i32(var_2.a.b.a, global2.b.a), func_1().x));
    var var_4 = vec2<u32>(~(~(~u_input.b)), u_input.b) << (vec2<u32>(min(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), global0[_wgslsmith_index_u32(min(u_input.b, 0u), 24u)]), 56759u), ~(1u << (u_input.b % 32u))) % vec2<u32>(32u));
    global2 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(15931u, vec2<u32>(firstTrailingBit(var_4.x), var_4.x), ~(~(~vec2<u32>(var_4.x, u_input.b)) & countOneBits(vec2<u32>(16092u, var_4.x))), vec4<u32>(_wgslsmith_mod_u32(4294967295u, var_4.x), ~1u, ~var_4.x, 0u), global2.b.a.x);
}

