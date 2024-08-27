struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    global0 = array<f32, 14>();
    global1 = Struct_1(true, vec4<f32>(659f, -1578f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2220f))), _wgslsmith_div_f32(112f, global0[_wgslsmith_index_u32(abs(1u), 14u)])), global1.b.yy);
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, arg_0 >> (80136u % 32u)) & ~(~arg_0)), _wgslsmith_add_u32(~firstTrailingBit(_wgslsmith_clamp_u32(u_input.e.x, 63520u, 27297u)), 0u), _wgslsmith_add_u32(abs(select(1u, 0u, true)), countOneBits(~arg_0)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(33842u, arg_0, arg_0, 84395u)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(11033u, 0u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(4294967295u, 1u), firstLeadingBit(u_input.e.x), ~25635u, _wgslsmith_dot_vec4_u32(vec4<u32>(80945u, u_input.a.x, 98840u, arg_0), vec4<u32>(arg_0, 18978u, 4294967295u, 6217u)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(39054u, u_input.e.x, arg_0), vec3<u32>(arg_0, arg_0, 66481u)))));
    global1 = Struct_1(any(!(!select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, global1.a), true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)], global0[_wgslsmith_index_u32(arg_0, 14u)]))) * global1.b), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c.x)), _wgslsmith_f_op_f32(-global1.b.x), -239f, _wgslsmith_f_op_f32(global1.b.x - 1000f)))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -785f))), 545f));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -551f), -1000f)), global0[_wgslsmith_index_u32(1u, 14u)]) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1697f, global0[_wgslsmith_index_u32(max(arg_0, 49678u), 14u)], true)), _wgslsmith_f_op_f32(max(182f, _wgslsmith_f_op_f32(-global1.b.x)))), 930f));
    return var_0.x;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 98u), ~vec2<u32>(4294967295u, 1u), vec2<u32>(0u, u_input.a.x) & u_input.e), vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.e.x, u_input.a.x), select(3818u, 42489u, global1.a))), ~_wgslsmith_sub_u32(u_input.a.x, ~(~1u)), ~_wgslsmith_div_u32(u_input.a.x, 8581u << (~u_input.e.x % 32u)));
    var var_1 = arg_0;
    global1 = Struct_1(u_input.e.x <= 36154u, global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c)));
    global0 = array<f32, 14>();
    let var_2 = func_3(~_wgslsmith_mult_u32(32804u, 35977u), u_input.d, false);
    return -arg_0;
}

fn func_4(arg_0: i32) -> Struct_1 {
    global1 = Struct_1(global1.a, global1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f + 562f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1074f * global0[_wgslsmith_index_u32(u_input.e.x, 14u)]), -1672f))));
    global0 = array<f32, 14>();
    let var_0 = 1i;
    return Struct_1(all(vec2<bool>(false, true)), global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.wz - global1.b.xy) + _wgslsmith_div_vec2_f32(global1.b.zw, vec2<f32>(global1.b.x, -786f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], 2432f), global1.c)))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.d, 21904i) ^ -29880i, u_input.b, func_2(firstLeadingBit(min(-30630i, 2147483647i)))));
    global0 = array<f32, 14>();
    global1 = func_4(2147483647i);
    global1 = var_0;
    global1 = func_4(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c));
    return vec3<bool>(var_0.a & select(any(vec3<bool>(false, false, var_0.a)), any(!vec2<bool>(var_0.a, global1.a)), func_4(u_input.d).a), (!(u_input.a.x == 47328u) & func_4(abs(u_input.b)).a) & any(!select(vec2<bool>(global1.a, var_0.a), vec2<bool>(true, var_0.a), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!func_1(), select(func_1(), vec3<bool>(true, global1.a, !global1.a), global1.a), !select(vec3<bool>(global1.a, true, global1.a), vec3<bool>(global1.a, global1.a, global1.a), !vec3<bool>(true, global1.a, global1.a)));
    global0 = array<f32, 14>();
    let var_1 = func_4(_wgslsmith_mod_i32(-23152i, u_input.c.x));
    var var_2 = func_1();
    var var_3 = func_4(max(abs(countOneBits(_wgslsmith_sub_i32(u_input.c.x, -1558i))), func_2(10740i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1104f, var_3.b.x), vec2<f32>(global1.b.x, 591f), false))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b.x, var_3.c.x))) + _wgslsmith_f_op_vec2_f32(-var_1.c)))));
}

