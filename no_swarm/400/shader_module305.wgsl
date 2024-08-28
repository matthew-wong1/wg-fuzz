struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> bool {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_0 = global0[_wgslsmith_index_u32((arg_0 >> (arg_0 % 32u)) & (13081u << (~countOneBits(min(u_input.b, arg_0)) % 32u)), 1u)];
    var var_1 = !(!(!select(!vec3<bool>(var_0.a, var_0.a, var_0.a), select(vec3<bool>(false, true, var_0.a), vec3<bool>(true, true, var_0.a), vec3<bool>(true, true, var_0.a)), var_0.a)));
    var var_2 = true;
    return false;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_1(!func_3(~(~arg_0.x)));
    let var_1 = select(select(select(vec3<bool>(true, var_0.a, true), select(vec3<bool>(var_0.a, false, true), select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(true, var_0.a, true), vec3<bool>(var_0.a, true, false)), select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, true, true), vec3<bool>(true, var_0.a, var_0.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-8674i, 2147483647i, 1i, 9669i), vec4<i32>(1i, 31113i, 18018i, 2147483647i)) == _wgslsmith_dot_vec4_i32(vec4<i32>(-12447i, -2147483647i, 0i, -1i), vec4<i32>(-5221i, -27472i, 55748i, -1i))), !select(!vec3<bool>(false, var_0.a, true), vec3<bool>(false, false, false), arg_0.x <= u_input.a), select(!select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, true, true), var_0.a), select(vec3<bool>(var_0.a, true, var_0.a), select(vec3<bool>(var_0.a, false, true), vec3<bool>(var_0.a, var_0.a, var_0.a), true), !vec3<bool>(true, false, var_0.a)), var_0.a)), vec3<bool>(var_0.a, all(select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a, var_0.a), var_0.a)), true), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(13045i, 2613i, 0i, 1i))), abs(countOneBits(vec4<i32>(2147483647i, -34223i, -35913i, 24952i)))) >= 33919i);
    let var_2 = 1u;
    let var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1534f - -1370f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-419f - 204f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-282f, -1000f))))))));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(abs(1u), ~u_input.b >> (countOneBits(5326u) % 32u)), 1u)];
    return ~(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(firstLeadingBit(var_2), ~97480u), 15985u, 78362u) << (u_input.b % 32u));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec3<u32>(~(~1u), min(func_2(vec3<u32>(u_input.b, u_input.a, 7683u) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 76386u, u_input.a), vec3<u32>(70700u, u_input.a, u_input.a))), u_input.b >> (28493u % 32u)), 16078u);
    let var_1 = any(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), false), select(false, true, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(abs(1i), _wgslsmith_add_i32(abs(-81616i), ~43210i)), -1i), -(i32(-1i) * -1i));
    let var_3 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, ~max(u_input.b, 23947u)), var_0.x), countOneBits(_wgslsmith_mod_u32(reverseBits(63621u), _wgslsmith_sub_u32(u_input.a, abs(1u)))));
    global0 = array<Struct_1, 1>();
    return vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(2436u, u_input.b), vec2<u32>(var_0.x, 0u))) & reverseBits(~u_input.b), _wgslsmith_dot_vec2_u32(var_3, _wgslsmith_clamp_vec2_u32(~vec2<u32>(28080u, u_input.b), var_3, abs(vec2<u32>(u_input.a, var_3.x))))) | max(~(var_3 << (countOneBits(var_3) % vec2<u32>(32u))), ~(~select(var_3, var_3, vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(21232u, 1u)];
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a | abs(u_input.b), (_wgslsmith_mod_u32(u_input.a, u_input.b) & _wgslsmith_sub_u32(45762u, u_input.b)) ^ ~u_input.a) >> (_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, u_input.b) ^ abs(20759u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 6831u, 4294967295u), countOneBits(vec4<u32>(6990u, u_input.b, 3305u, u_input.b)))), 89219u) % 32u), 1u)];
    var var_3 = ~select(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), func_1()), vec2<u32>(1u ^ u_input.b, firstTrailingBit(26154u)), !select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.a, true), var_1.a), !vec2<bool>(var_0, var_2.a), select(vec2<bool>(false, var_0), vec2<bool>(var_1.a, true), var_0)));
    let var_4 = Struct_1(any(select(vec2<bool>(var_1.a, true), vec2<bool>(var_0, false), vec2<bool>(false, var_2.a))) | true);
    var_3 = vec2<u32>(var_3.x, ~_wgslsmith_sub_u32(var_3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(50903u, u_input.b, 1u, var_3.x), vec4<u32>(11336u, var_3.x, 77461u, 752u) << (vec4<u32>(18151u, var_3.x, u_input.a, var_3.x) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-191f, -1519f, u_input.a, _wgslsmith_f_op_f32(round(1f)));
}

