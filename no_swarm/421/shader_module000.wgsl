struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(55478u, 26u)];
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = -u_input.e.x < ~(-1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_div_f32(1044f, global2.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -257f))), 1478f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1225f, global2.c.x, global2.c.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.x, global2.c.x, -2830f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1520f, 579f, global2.c.x) * vec3<f32>(-161f, global2.c.x, -420f)))), vec3<f32>(_wgslsmith_f_op_f32(1485f - -2167f), _wgslsmith_f_op_f32(max(-1539f, global2.c.x)), -1471f)))), global2.b.x));
    let var_2 = ~u_input.e.yx;
    var var_3 = max(19263u & reverseBits(func_3(1000f, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_f_op_f32(min(global2.c.x, 369f)), ~u_input.c.x)), u_input.c.x);
    let var_4 = 0u;
    return global1[_wgslsmith_index_u32(u_input.c.x, 26u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = global1[_wgslsmith_index_u32(arg_0.x << (((arg_0.x & min(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_0.x, u_input.c.x, u_input.c.x)), _wgslsmith_div_u32(51721u, u_input.c.x))) >> (~15195u % 32u)) % 32u), 26u)];
    global3 = array<bool, 11>();
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    global0 = array<Struct_1, 31>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 31>();
    var var_0 = func_1(_wgslsmith_mod_vec2_u32(u_input.c.zy, vec2<u32>((u_input.c.x << (1u % 32u)) & u_input.c.x, 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, -544f)), global2.c) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c) + global2.c)));
    global2 = func_1(vec2<u32>(1u, _wgslsmith_mult_u32(5284u, ~u_input.c.x)), _wgslsmith_f_op_vec2_f32(-func_1(vec2<u32>(~u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_0.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.c.x)))).c));
    global2 = Struct_1(var_0.b, var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(func_2().c.x, _wgslsmith_f_op_f32(max(global2.c.x, 255f))), global2.c.x) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.c + vec2<f32>(826f, var_0.c.x)) + _wgslsmith_div_vec2_f32(vec2<f32>(global2.c.x, -760f), vec2<f32>(global2.c.x, -1620f)))))));
    var var_1 = u_input.e;
    var var_2 = vec4<bool>(!(global2.c.x == 2527f), global2.b.x, global3[_wgslsmith_index_u32(4294967295u, 11u)] != true, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1338f, 330f, _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_sub_u32(u_input.c.x, reverseBits(65078u)), min(u_input.d.yx, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.wz, u_input.e.zx & vec2<i32>(var_1.x, u_input.e.x)), vec2<i32>(var_1.x, -6774i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x * 1051f) - _wgslsmith_f_op_f32(f32(-1f) * -1428f)))), var_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)))));
}

