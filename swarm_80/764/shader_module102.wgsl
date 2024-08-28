struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> vec2<u32> {
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = u_input.a.wyx;
    return _wgslsmith_mult_vec2_u32(u_input.e, u_input.e) | ~_wgslsmith_clamp_vec2_u32(u_input.e, vec2<u32>(_wgslsmith_add_u32(u_input.e.x, 0u), _wgslsmith_mult_u32(u_input.e.x, u_input.e.x)), select(vec2<u32>(1u, u_input.e.x), countOneBits(u_input.e), all(vec4<bool>(false, false, true, false))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool) -> i32 {
    var var_0 = all(!(!vec4<bool>(!arg_2, arg_0.b.x != 47623u, true, true)));
    var_0 = true;
    var_0 = 4294967295u == u_input.e.x;
    let var_1 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1712f, 1181f) - _wgslsmith_f_op_f32(f32(-1f) * -533f))))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    global0 = array<Struct_1, 26>();
    return ~2147483647i;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    global0 = array<Struct_1, 26>();
    var var_0 = u_input.d;
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(196f, 853f, -661f, 108f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-390f, 1722f, -316f, 1434f), vec4<f32>(552f, 1373f, -1000f, -1686f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(370f, 1048f, -1098f, 1143f))), vec4<f32>(-578f, 1000f, 636f, 1000f)), vec4<f32>(-507f, _wgslsmith_f_op_f32(max(-568f, -1000f)), -1584f, _wgslsmith_f_op_f32(f32(-1f) * -795f)), true))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    let var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 26u)];
    global1 = array<Struct_1, 3>();
    var var_2 = 1u;
    var_2 = ~var_1.a.x << ((u_input.e.x >> (var_0.x % 32u)) % 32u);
    var var_3 = func_2(global0[_wgslsmith_index_u32(~reverseBits(~(~u_input.e.x)), 26u)], _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, -8111i), vec3<i32>(45715i, 38983i, 1i), reverseBits(u_input.d)), vec3<i32>(_wgslsmith_div_i32(u_input.c.x, 2147483647i), abs(0i), min(u_input.a.x, 1i))), max(u_input.d, select(vec3<i32>(1i, u_input.c.x, -1i), u_input.d, vec3<bool>(false, false, false)) | u_input.d)), true);
    let var_4 = Struct_1(vec2<u32>(~(var_0.x & _wgslsmith_sub_u32(49028u, var_1.a.x)), func_1().x), vec4<u32>(countOneBits(_wgslsmith_mod_u32(func_3(Struct_1(var_0, vec4<u32>(72778u, 65947u, var_1.b.x, 0u)), 0u, vec2<u32>(var_0.x, 0u)), 4294967295u)), 13934u, _wgslsmith_clamp_u32(u_input.e.x, var_1.a.x, 80740u), abs(37926u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2088f), -1000f, 420f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2074f, -1690f, -2055f)))), ~vec3<i32>(-21481i, ~0i, -(1i << (var_0.x % 32u))), 4294967295u, select(i32(-1i) * -u_input.d.x, _wgslsmith_mult_i32(9048i, ~u_input.c.x), true) >> (4294967295u % 32u));
}

