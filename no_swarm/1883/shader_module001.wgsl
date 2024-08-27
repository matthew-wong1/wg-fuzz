struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = 89288u >> (~(293u & u_input.b) % 32u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(50202u, ~4294967295u)), true, vec4<bool>(all(vec3<bool>(true, false, false)) | any(vec4<bool>(true, true, false, false)), true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1135f, 676f, 482f) * vec3<f32>(115f, -1000f, -378f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1610f, -401f, -1188f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-743f, 342f, 1005f)))), true));
    let var_2 = ~(~(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a.a, 90094u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, var_1.a.a))) ^ ((vec2<u32>(var_1.a.a, 105410u) << (vec2<u32>(80114u, global0[_wgslsmith_index_u32(1379u, 21u)]) % vec2<u32>(32u))) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(6850u, global0[_wgslsmith_index_u32(var_1.a.a, 21u)]), vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)])))));
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    return var_1;
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = Struct_1(reverseBits(firstTrailingBit(u_input.b)), true, vec4<bool>(arg_0.a.e, true, false, select(arg_0.a.c.x, arg_0.a.c.x, !(u_input.b > global0[_wgslsmith_index_u32(arg_0.a.a, 21u)]))), vec3<f32>(func_2().a.d.x, _wgslsmith_f_op_f32(floor(-1657f)), 1000f), true);
    var var_1 = u_input.a.x;
    var_1 = -2147483647i;
    return ~59551u;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - -536f)));
    let var_1 = var_0;
    let var_2 = Struct_3(vec2<u32>(0u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b, 21u)], u_input.b), 0u)), arg_3.b);
    var var_3 = _wgslsmith_div_i32(-2293i, u_input.a.x);
    var var_4 = countOneBits(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(11435u, arg_0.a.x) >> (1u % 32u), 21u)] << (~(~22463u) % 32u));
    return ~(~vec3<i32>(u_input.a.x, u_input.a.x, -71549i) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 8705u, 1u), vec3<u32>(arg_0.a.x, 0u, 0u)) >> (~vec3<u32>(4294967295u, 93276u, var_2.a.x) % vec3<u32>(32u))) % vec3<u32>(32u))) << (vec3<u32>(14191u, 42222u, func_3(func_2())) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, ~_wgslsmith_add_u32(46011u, global0[_wgslsmith_index_u32(abs(~64974u), 21u)])), 21u)];
    let var_1 = Struct_3(~_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.b, u_input.b)), reverseBits(vec2<u32>(u_input.b, u_input.b))), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var var_2 = abs(_wgslsmith_div_vec3_i32(~func_1(Struct_3(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 21u)]), var_1.b), vec4<bool>(var_1.b.x, true, var_1.b.x, var_1.b.x), -916f, var_1) << (~(~vec3<u32>(var_1.a.x, var_1.a.x, global0[_wgslsmith_index_u32(17069u, 21u)])) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & vec3<i32>(-4949i, u_input.a.x, -2147483647i)), firstLeadingBit(max(vec3<i32>(33555i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 0i))))));
    var var_3 = func_2().a;
    var var_4 = func_2().a;
    var var_5 = Struct_1(23401u & var_1.a.x, -1559f < var_4.d.x, func_2().a.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) * _wgslsmith_f_op_f32(var_4.d.x + 1258f))), 267f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.d.x)))), func_2().a.e);
    let var_6 = Struct_1(_wgslsmith_mult_u32(max(var_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, global0[_wgslsmith_index_u32(48567u, 21u)], 18119u, u_input.b), vec4<u32>(var_1.a.x, 1u, 4294967295u, 24518u))), _wgslsmith_mult_u32(min(global0[_wgslsmith_index_u32(var_5.a, 21u)] ^ var_3.a, _wgslsmith_sub_u32(u_input.b, 22754u)), 4294967295u)), -(-1i << (1u % 32u)) < _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, ~2147483647i), _wgslsmith_mod_i32(-51139i, abs(var_2.x))), var_4.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1229f, -481f, -437f) - var_3.d) - var_4.d), !select(select(!var_3.c.x, var_5.c.x & var_5.b, any(vec3<bool>(false, false, false))), var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(43110u, 1203u, 1u, 1u), vec4<u32>(var_4.a, 4294967295u, 0u, var_4.a)) >= select(4294967295u, var_4.a, var_4.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(4668u, 60578u))), global0[_wgslsmith_index_u32(var_5.a, 21u)] << (~65221u % 32u), _wgslsmith_f_op_vec3_f32(var_4.d - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_3.d, var_6.d) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d.x, -1000f, var_4.d.x))), _wgslsmith_f_op_vec3_f32(-var_4.d))));
}

