struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, false, false, true, true, false, false, true, true, true, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> bool {
    global0 = array<bool, 27>();
    var var_0 = !(!global0[_wgslsmith_index_u32(~u_input.e.x, 27u)]);
    let var_1 = arg_1;
    var var_2 = Struct_1(vec2<u32>(arg_0.a.x, ~(~arg_0.a.x)) | u_input.e.xx);
    global0 = array<bool, 27>();
    return global0[_wgslsmith_index_u32(11669u | (60133u | select(u_input.e.x, _wgslsmith_mod_u32(countOneBits(0u), 4120u), !global0[_wgslsmith_index_u32(select(1u, arg_0.a.x, arg_2), 27u)])), 27u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<bool, 27>();
    let var_0 = countOneBits(~reverseBits(vec4<u32>(43874u, arg_1.a.x >> (42071u % 32u), _wgslsmith_div_u32(0u, 16290u), reverseBits(arg_0.a.x))));
    var var_1 = (u_input.b >> (1u % 32u)) >> (arg_0.a.x % 32u);
    global0 = array<bool, 27>();
    var var_2 = u_input.e.x;
    return vec4<bool>(global0[_wgslsmith_index_u32(10473u, 27u)], !all(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.a.x, 27u)], global0[_wgslsmith_index_u32(42547u, 27u)]))), select(arg_1.a.x, ~arg_1.a.x, true) != _wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_div_u32(1u, var_0.x), 0u), _wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-1687f)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-757f, _wgslsmith_f_op_f32(-772f - -1237f)))));
}

fn func_2() -> StorageBuffer {
    var var_0 = select(!(!select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 27u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(82402u, 27u)], global0[_wgslsmith_index_u32(74486u, 27u)], global0[_wgslsmith_index_u32(91984u, 27u)], global0[_wgslsmith_index_u32(61007u, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(72712u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.e.x, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 27u)], true, true, true)), !global0[_wgslsmith_index_u32(0u, 27u)])), select(!(!func_3(Struct_1(u_input.e.yz), Struct_1(vec2<u32>(u_input.e.x, u_input.b)))), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], false, global0[_wgslsmith_index_u32(54698u, 27u)], true)), all(vec2<bool>(true, true))), vec4<bool>(global0[_wgslsmith_index_u32(61317u, 27u)], select(global0[_wgslsmith_index_u32(1u, 27u)] && true, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 27u)], false, true)), true) && false, !global0[_wgslsmith_index_u32(~u_input.e.x, 27u)], global0[_wgslsmith_index_u32(u_input.e.x, 27u)]));
    var_0 = vec4<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(~u_input.e.x)), 27u)], _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(0u, 0u, u_input.e.x, 1u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.e.x, u_input.e.x, 7915u), vec4<u32>(4294967295u, 48434u, 0u, u_input.e.x))) >= ~_wgslsmith_dot_vec2_u32(max(u_input.e.xy, u_input.e.yy), _wgslsmith_mod_vec2_u32(u_input.e.xy, vec2<u32>(u_input.b, u_input.b))), false, any(vec2<bool>(false == var_0.x, global0[_wgslsmith_index_u32(~firstLeadingBit(52374u), 27u)])));
    let var_1 = Struct_1(vec2<u32>(u_input.e.x, select(countOneBits(u_input.e.x) | firstLeadingBit(u_input.e.x), firstTrailingBit(~0u), var_0.x)));
    global0 = array<bool, 27>();
    var var_2 = _wgslsmith_mod_vec2_i32(max(max(~vec2<i32>(24434i, 53271i), -(u_input.d & vec2<i32>(-68511i, -26134i))), u_input.d), -vec2<i32>(~(-20704i), _wgslsmith_add_i32(-5441i, 26653i) ^ (u_input.d.x & u_input.d.x)));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-651f + -437f), 560f)))), vec2<i32>(-1i, min(~990i, -var_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec2<u32>(u_input.b, 25650u));
    global0 = array<bool, 27>();
    var var_1 = select(select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(13602u, 27u)], global0[_wgslsmith_index_u32(u_input.e.x, 27u)])), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(48253u, 27u)], true), func_1(Struct_1(u_input.e.xy), Struct_1(vec2<u32>(var_0.a.x, 1u)), true, u_input.a)), true), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(11657u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)])), false), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 27u)]), select(select(!(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 27u)], true, false)), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(~u_input.e.x, 27u)], global0[_wgslsmith_index_u32(36586u, 27u)], var_0.a.x >= 47339u)), !select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.e.x, 27u)], global0[_wgslsmith_index_u32(var_0.a.x, 27u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], false, global0[_wgslsmith_index_u32(1u, 27u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 27u)], false, false), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.b, 27u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 27u)], true, global0[_wgslsmith_index_u32(u_input.b, 27u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 27u)], false), false)), global0[_wgslsmith_index_u32(~var_0.a.x, 27u)]));
    var var_2 = Struct_1(u_input.e.xz | firstTrailingBit(~var_0.a << (vec2<u32>(84602u, 56710u) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2264f, -274f, 165f, -1000f)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -417f), _wgslsmith_f_op_f32(sign(var_3.x)))), var_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1056f + 305f) * var_3.x)))));
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_2();
}

