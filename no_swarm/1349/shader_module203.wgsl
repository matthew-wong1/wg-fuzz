struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec2<f32>, 6>;

var<private> global1: i32;

var<private> global2: array<i32, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.c;
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-641f + -136f), -1139f, _wgslsmith_f_op_f32(trunc(564f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(882f)))), u_input.d, select(-2147483647i == -global2[_wgslsmith_index_u32(u_input.a, 29u)], true, any(vec3<bool>(true, true, true))), global2[_wgslsmith_index_u32(1u, 29u)]));
    var var_2 = false;
    let var_3 = var_1.a.a.x;
    var var_4 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(u_input.c, 117202u), ~vec2<u32>(1u, 0u)), firstLeadingBit(vec2<u32>(u_input.a, 1u)) << (~vec2<u32>(23749u, 1u) % vec2<u32>(32u))), 29u)]), ~(-28731i));
    return var_1.a.a;
}

fn func_2() -> Struct_1 {
    var var_0 = 36509u;
    global0 = array<vec2<f32>, 6>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1614f))))), -_wgslsmith_clamp_i32(~global2[_wgslsmith_index_u32(1u, 29u)], -global2[_wgslsmith_index_u32(u_input.c, 29u)], firstLeadingBit(global2[_wgslsmith_index_u32(u_input.c, 29u)])), true, reverseBits(_wgslsmith_add_i32(min(u_input.d, -22925i), -18705i))));
    global2 = array<i32, 29>();
    let var_2 = ~var_1.a.e;
    return Struct_1(global0[_wgslsmith_index_u32(u_input.a, 6u)], vec4<f32>(-405f, 1f, var_1.a.b, _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.a.b, var_1.a.a.x, var_1.a.a.x))))), true, var_1.a.d);
}

fn func_1(arg_0: bool) -> u32 {
    let var_0 = func_2();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, var_0.c.x, var_0.b.x))), var_0.b.yzx, !arg_0)))), var_0.b.x, _wgslsmith_div_i32(select(2147483647i, 20262i, false), firstLeadingBit(reverseBits(0i))) >> (4294967295u % 32u), var_0.d, -(~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, u_input.c, 17883u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 17130u, 4294967295u, 38683u), vec4<u32>(8203u, 1u, u_input.c, 347u))), 29u)]));
    global2 = array<i32, 29>();
    var var_2 = var_0;
    global1 = ~global2[_wgslsmith_index_u32(abs(4294967295u), 29u)];
    return select(_wgslsmith_mult_u32(~u_input.a, _wgslsmith_sub_u32(4294967295u, ~u_input.c)), ~(_wgslsmith_mod_u32(36769u, 7155u) & _wgslsmith_clamp_u32(u_input.c, u_input.c, u_input.c)), var_2.d) << (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(func_1(true), 29u)];
    global0 = array<vec2<f32>, 6>();
    var var_0 = ~(~abs(~(-vec2<i32>(36661i, u_input.d))));
    global1 = -46676i;
    global2 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-1579f);
}

