struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> vec3<u32> {
    global1 = vec4<i32>(global2.x, _wgslsmith_dot_vec2_i32(~(-vec2<i32>(global1.x, -11473i)), vec2<i32>(~23281i, _wgslsmith_div_i32(u_input.b, -u_input.b))), _wgslsmith_mod_i32(u_input.b, 15010i), ~firstTrailingBit(-45786i));
    var var_0 = Struct_1(any(!(!select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, global0.a, true), vec3<bool>(arg_2, true, false)))), -1344f);
    var var_1 = Struct_1(1i < -(countOneBits(u_input.b) >> (firstLeadingBit(6130u) % 32u)), var_0.b);
    var_1 = Struct_1(select(false, firstTrailingBit(-2147483647i) >= global2.x, !(!var_1.a)), _wgslsmith_f_op_f32(trunc(448f)));
    var var_2 = Struct_1(!var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1372f, 1010f, var_0.a))) + _wgslsmith_f_op_f32(ceil(926f)))));
    return vec3<u32>(~u_input.a, arg_0.x, abs(0u));
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(-992f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, global0.b))))));
    global3 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, global3.x, 2105u) & func_3(vec4<u32>(u_input.a, 1u, u_input.a, global3.x), u_input.a, global0.a), vec3<u32>(select(9908u, 4294967295u, false), _wgslsmith_sub_u32(u_input.a, global3.x), ~38076u)) ^ ~vec3<u32>(1u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 77555u, u_input.a))), select(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, global3.x, global3.x), ~firstLeadingBit(vec3<u32>(4294967295u, u_input.a, 4294967295u))), ~(~abs(vec3<u32>(u_input.a, 0u, 4294967295u))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.a, true, global0.a), vec3<bool>(true, global0.a, false), false), true))));
    let var_0 = vec4<i32>(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global2.x, global1.x, ~u_input.b), vec4<i32>(-1i) * -vec4<i32>(global1.x, -45634i, -57271i, 4594i)), global2.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(86701i, u_input.b), _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, u_input.b, -1i, global1.x), vec4<i32>(-6574i, -2147483647i, global2.x, -2147483647i)), -25776i)));
    var var_1 = u_input.a;
    var var_2 = Struct_2(-1117f, var_0.zw);
    return vec3<u32>(0u, ~4294967295u, ~firstLeadingBit(u_input.a & 6950u)) << (vec3<u32>(_wgslsmith_mod_u32(global3.x, global3.x), global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x >> (26529u % 32u), 1u, 4294967295u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global3.x, u_input.a), vec3<u32>(u_input.a, global3.x, u_input.a)))) % vec3<u32>(32u));
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(81367u, 44733u), global3.x, global3.x), min(~vec3<u32>(~global3.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 15993u), vec2<u32>(u_input.a, global3.x)), _wgslsmith_mod_u32(global3.x, 4294967295u)), min(func_2(), select(vec3<u32>(4294967295u, 27372u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 12374u), true)) & vec3<u32>(countOneBits(u_input.a), abs(4294967295u), u_input.a)));
    var var_0 = global0.b;
    let var_1 = !(u_input.a >= u_input.a);
    let var_2 = Struct_1(var_1, global0.b);
    let var_3 = ~_wgslsmith_clamp_i32(u_input.b, -8209i, -1i);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = select(!select(select(select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, global0.a, global0.a)), vec3<bool>(true, global0.a, global0.a), global0.a && global0.a), vec3<bool>(-875f >= global0.b, true, u_input.b > -50232i), select(!vec3<bool>(global0.a, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, global0.a, true), global0.a), select(vec3<bool>(global0.a, true, false), vec3<bool>(global0.a, false, global0.a), true))), !(!(!vec3<bool>(global0.a, false, global0.a))), 733f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f + _wgslsmith_div_f32(636f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f - global0.b))));
    var var_1 = vec3<i32>(select((global2.x ^ -global1.x) >> (~max(global3.x, u_input.a) % 32u), -2147483647i, !(_wgslsmith_f_op_f32(max(global0.b, global0.b)) == _wgslsmith_div_f32(2249f, 1000f))), u_input.b, 19873i);
    let var_2 = vec4<i32>(-39669i, _wgslsmith_dot_vec3_i32(global1.xwy, vec3<i32>(var_1.x ^ -34898i, global2.x, 1i) & -global1.zyy), ~0i, 1i);
    var var_3 = (_wgslsmith_mod_i32(-global2.x, u_input.b) > _wgslsmith_add_i32(~(-19572i), -var_2.x)) | (var_0.x | true);
    global3 = _wgslsmith_sub_vec3_u32(select(vec3<u32>(30268u, _wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, u_input.a), vec4<u32>(1u, global3.x, global3.x, 60920u))), max(global3.x, global3.x & 1u)), vec3<u32>((1u << (global3.x % 32u)) ^ ~global3.x, 1u, global3.x), var_0.x), vec3<u32>(u_input.a, ~(~_wgslsmith_sub_u32(u_input.a, 1u)), _wgslsmith_sub_u32(0u, ~func_3(vec4<u32>(global3.x, 4294967295u, 0u, u_input.a), u_input.a, global0.a).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global0.b)))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + -1355f))), select(reverseBits(vec2<u32>(0u, 0u)), ~abs(~global3.yx), vec2<bool>(true, true)));
}

