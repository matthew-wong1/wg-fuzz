struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<i32>, 19>;

var<private> global3: array<f32, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = all(vec3<bool>(true, true, true));
    let var_1 = Struct_1(u_input.c << (~_wgslsmith_mult_u32(arg_2, select(arg_0.x, arg_2, false)) % 32u), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_div_f32(-220f, arg_1), _wgslsmith_f_op_f32(select(global1.b.x, -1133f, all(vec2<bool>(false, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(floor(151f)))), _wgslsmith_div_f32(965f, _wgslsmith_div_f32(arg_1, -234f))))), u_input.a);
    global3 = array<f32, 25>();
    return _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, 71230u), ~4294967295u), arg_2), arg_0.x), 25u)]);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 25u)], global3[_wgslsmith_index_u32(7569u, 25u)])))));
    let var_1 = Struct_1(-34465i, global1.b, global1.c);
    var var_2 = vec3<bool>(true, true, true);
    global0 = array<i32, 5>();
    var var_3 = var_1;
    return Struct_1(41032i, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, global3[_wgslsmith_index_u32(11545u, 25u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b, 1140f, u_input.b.x)), global3[_wgslsmith_index_u32(4294967295u, 25u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 24340u, u_input.b.x, u_input.b.x), 1115f, 55675u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global1.b.x, var_0.x)), var_1.b.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, 219f, var_1.b.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.b.x, -432f, 1000f)))), -abs(-u_input.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(-global1.a | (firstLeadingBit(u_input.a.x) << (~u_input.b.x % 32u)), -arg_1.a), ~vec2<i32>(global1.a, arg_1.a), reverseBits(arg_1.c.xy));
    let var_1 = func_2();
    var var_2 = arg_0.x;
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(u_input.b.x), 1u >> (u_input.b.x % 32u)), ~abs(u_input.b.xw));
    var var_4 = 4294967295u;
    return vec2<bool>(any(select(vec2<bool>(!arg_0.x, 6556i <= global1.a), select(!vec2<bool>(arg_0.x, true), arg_0, arg_0.x), select(!arg_0, vec2<bool>(arg_0.x, true), true))), any(vec2<bool>(all(arg_0), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 5>();
    global3 = array<f32, 25>();
    global2 = array<vec2<i32>, 19>();
    var var_0 = Struct_1(-1i, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.b.x)))), global1.b.x, all(func_1(vec2<bool>(false, false), Struct_1(global1.a, vec4<f32>(-1091f, 1655f, 534f, -315f), vec3<i32>(44885i, global1.c.x, -8078i)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-453f)) * 1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-349f * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 25u)])), -288f)), 282f), ~u_input.a);
    let var_1 = vec4<i32>(~(~max(i32(-1i) * -25868i, min(20578i, global1.a))), i32(-1i) * -(firstLeadingBit(-22313i) ^ min(-1i, global1.c.x)), -(var_0.c.x << (_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.b.x)) % 32u)) | _wgslsmith_clamp_i32(26834i, 0i, _wgslsmith_mod_i32(var_0.c.x, select(1i, 28941i, false))), u_input.c);
    let var_2 = func_2();
    var var_3 = Struct_1(0i, _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(func_2().b)), var_0.b, vec4<bool>(true, true, true, true))), false)), reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(-25575i, var_2.c.x, -19577i), var_0.c)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)) * global1.b.x) - -1257f);
    let var_5 = countOneBits(countOneBits(global1.c.zy)) ^ (~abs(var_0.c.zz) ^ reverseBits(countOneBits(var_2.c.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -abs(vec4<i32>(0i, var_2.c.x, var_3.c.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(~var_1.x, ~2147483647i, -17934i, ~1i), var_1), ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, var_2.c.x, ~(~global0[_wgslsmith_index_u32(0u, 5u)])), select(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 52650u, 1u))), _wgslsmith_sub_u32(~u_input.b.x, ~u_input.b.x)), u_input.b.xz, true), 0i);
}

