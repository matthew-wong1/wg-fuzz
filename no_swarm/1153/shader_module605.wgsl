struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(-22876i), Struct_1(0i), Struct_1(39231i), Struct_1(-36377i), Struct_1(i32(-2147483648)), Struct_1(-10584i), Struct_1(28228i), Struct_1(6906i), Struct_1(-14315i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~(40974u >> (countOneBits(1u) % 32u)), 9u)];
    return ~(firstLeadingBit(~u_input.a) ^ countOneBits(29249u));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = !vec4<bool>(!(_wgslsmith_f_op_f32(floor(-604f)) <= _wgslsmith_f_op_f32(select(-751f, 1715f, false))), true, _wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_mod_u32(0u, 1u)) <= 1u, arg_0.x != 43275i);
    var var_1 = false;
    var var_2 = Struct_1(max(~(1i << ((0u ^ u_input.a) % 32u)), -(~arg_0.x ^ 1i)));
    var_2 = Struct_1(arg_0.x);
    let var_3 = arg_0.yz;
    return var_0.x;
}

fn func_1() -> bool {
    var var_0 = ~abs(u_input.a);
    let var_1 = ~0u;
    var_0 = func_2();
    global0 = array<Struct_1, 9>();
    let var_2 = select(vec3<bool>(false, !func_3(~vec4<i32>(2147483647i, -2147483647i, -44782i, -1i)), func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 0i, 28883i, 0i), -vec4<i32>(-1i, -3637i, 1i, 2147483647i)))), select(vec3<bool>((var_1 << (12276u % 32u)) < ~var_1, true, true), vec3<bool>(false, false, func_3(~vec4<i32>(2147483647i, -1i, 2147483647i, 0i))), select(vec3<bool>(true, all(vec2<bool>(false, true)), true), vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec4<bool>(true, false, false, true))), true)), vec3<bool>(true, true, true));
    return !select(true, !var_2.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_1(2147483647i);
    var var_1 = func_1();
    var var_2 = vec4<u32>(reverseBits(72296u), u_input.a, u_input.a, abs(u_input.a));
    var var_3 = ~_wgslsmith_clamp_vec3_u32(~((var_2.wxz << (var_2.wzz % vec3<u32>(32u))) & var_2.yxy), ~countOneBits(~vec3<u32>(0u, u_input.a, 17539u)), min(min(vec3<u32>(var_2.x, u_input.a, 14204u), countOneBits(var_2.zxw)), vec3<u32>(var_2.x, ~var_2.x, u_input.a)));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-912f - 719f), _wgslsmith_f_op_f32(f32(-1f) * -1991f), 320f, _wgslsmith_f_op_f32(f32(-1f) * -188f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1226f, 1751f, 1000f, 2385f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1160f, -1000f, 875f, -1165f)))))));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1327f) * _wgslsmith_f_op_f32(step(var_4.x, var_4.x))))) * _wgslsmith_f_op_f32(-var_4.x)));
    var_2 = ~(~countOneBits(abs(abs(vec4<u32>(1u, 20314u, 23526u, 27744u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_add_u32(~(~u_input.a), var_3.x), 1u, -(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, -2147483647i, var_0.a), vec3<i32>(var_0.a, 0i, var_0.a)) & (vec3<i32>(-1i) * -vec3<i32>(var_0.a, var_0.a, -2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(sign(-396f)), _wgslsmith_f_op_f32(step(-2049f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1235f, var_4.x)) - _wgslsmith_f_op_f32(min(-1327f, var_4.x))))), -753f));
}

