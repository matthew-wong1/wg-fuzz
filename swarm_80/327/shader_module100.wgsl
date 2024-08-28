struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>) -> f32 {
    global0 = array<vec4<f32>, 10>();
    let var_0 = Struct_1(vec4<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 20017i), vec4<i32>(34695i, -25190i, -28188i, -13231i))), -2147483647i, min(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(76112i, -14182i), vec2<i32>(2147483647i, -1i)), 1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))));
    let var_1 = _wgslsmith_dot_vec4_i32(var_0.a, -reverseBits(var_0.a));
    var var_2 = -var_0.a;
    let var_3 = var_0;
    return 2205f;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(vec4<i32>(0i, -1i, 35370i, 1i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -27336i, -1i, 47784i) << (countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)) % vec4<u32>(32u)), -vec4<i32>(1i, -38266i, -1i, -9780i), -vec4<i32>(2147483647i, -7663i, 70811i, 7641i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(18696u, u_input.a.x, 4294967295u, 1u), vec4<u32>(28306u, u_input.a.x, 1u, u_input.a.x)) % vec4<u32>(32u))));
    var var_1 = vec4<bool>(!((~84429u > _wgslsmith_add_u32(29480u, u_input.a.x)) || true), true, var_0.a.x > var_0.a.x, !all(vec4<bool>(true, true, false, true)));
    var_1 = select(vec4<bool>(true, !((u_input.a.x >> (u_input.a.x % 32u)) <= u_input.a.x), !all(var_1.ywz), any(select(vec3<bool>(false, var_1.x, false), var_1.xzz, var_1.wxy)) || !var_1.x), !select(vec4<bool>(true, var_1.x && var_1.x, true, false && var_1.x), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, var_1.x), var_1.x || true), vec4<bool>(select(var_1.x, var_1.x, false), var_0.a.x < 29564i, u_input.a.x >= 4294967295u, any(vec4<bool>(var_1.x, var_1.x, true, var_1.x)))), select(1u == u_input.a.x, var_1.x, -reverseBits(var_0.a.x) > var_0.a.x));
    var_1 = !select(!vec4<bool>(all(vec4<bool>(var_1.x, false, false, var_1.x)), !var_1.x, !var_1.x, true), select(vec4<bool>(!var_1.x, true, all(vec4<bool>(var_1.x, var_1.x, true, true)), true), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true), any(vec2<bool>(var_1.x, true))), select(!vec4<bool>(true, true, false, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !var_1.x)), vec4<bool>(true, false, true, (u_input.a.x < u_input.a.x) || any(var_1.yxw)));
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u), u_input.a.x), ~u_input.a);
    return _wgslsmith_add_i32(~(-var_0.a.x << ((u_input.a.x << (5570u % 32u)) % 32u)) ^ var_0.a.x, var_0.a.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = ~arg_2.a;
    var_0 = arg_3.a;
    var_0 = vec4<i32>(arg_1.a.x, -select(-9053i, ~_wgslsmith_mult_i32(arg_3.a.x, -32750i), select(arg_0.x, any(vec4<bool>(false, true, false, arg_0.x)), false)), ~((35175i & arg_1.a.x) >> (((u_input.a.x | 26432u) | u_input.a.x) % 32u)), -_wgslsmith_dot_vec2_i32(vec2<i32>(19858i, _wgslsmith_dot_vec4_i32(arg_3.a, arg_3.a)), arg_2.a.xy));
    var_0 = -(arg_2.a & ~vec4<i32>(23342i, max(var_0.x, 1i), func_3(), -2996i));
    var var_1 = abs(_wgslsmith_add_u32(abs(~25354u), ~min(u_input.a.x, 1u))) | _wgslsmith_sub_u32(firstTrailingBit((u_input.a.x ^ 17940u) ^ ~u_input.a.x), 18573u);
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(456f, -2016f), vec2<f32>(653f, -791f))), vec3<f32>(654f, -404f, -761f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(665f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, true), Struct_1(vec4<i32>(0i, 0i, -12708i, -5316i)), Struct_1(vec4<i32>(0i, 2147483647i, 22433i, -47956i)), Struct_1(vec4<i32>(28694i, 40260i, 1i, -25974i)))))))));
    let var_1 = 54065u;
    let var_2 = select(vec2<bool>(true, !any(vec4<bool>(true, true, true, true)) & false), vec2<bool>(any(vec2<bool>(true, true)), !all(vec2<bool>(true, true))), true);
    let var_3 = 0u;
    global0 = array<vec4<f32>, 10>();
    var var_4 = Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(0i, 1i), 0i, _wgslsmith_div_i32(-1i, 2147483647i), 1i), vec4<i32>(-(-15741i >> (u_input.a.x % 32u)), max(0i, -14350i), -17999i, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(1u | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 55727u)), select(select(vec2<u32>(u_input.a.x, 0u), u_input.a, var_2.x), select(vec2<u32>(u_input.a.x, 1u), vec2<u32>(var_1, 1u), true), select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x), var_2))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1521f + 1048f), 1f, any(vec3<bool>(var_2.x, var_2.x, var_2.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(func_2(vec3<bool>(false, false, false), Struct_1(var_4.a), Struct_1(vec4<i32>(-2147483647i, -69007i, 1i, var_4.a.x)), Struct_1(var_4.a))))))));
}

