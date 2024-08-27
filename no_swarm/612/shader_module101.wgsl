struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 24>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_1(false, abs(vec2<i32>(u_input.c, min(-41182i, -arg_3.x))));
    let var_1 = !(!(!(!(!vec3<bool>(var_0.a, arg_2.a, arg_2.a)))));
    var var_2 = Struct_1(true, -vec2<i32>(firstLeadingBit(-10357i), 0i));
    let var_3 = -max(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 42132i, var_2.b.x), -vec3<i32>(27196i, 2147483647i, 27952i), vec3<i32>(2147483647i, arg_3.x, -35642i)), min(abs(vec3<i32>(arg_3.x, -2147483647i, -1i)), vec3<i32>(arg_0.b.x, arg_2.b.x, var_0.b.x))), max(~vec3<i32>(-28605i, -2147483647i, -29642i), vec3<i32>(-arg_2.b.x, _wgslsmith_mod_i32(2147483647i, 57293i), -var_2.b.x)));
    return -_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(arg_3, min(~vec2<i32>(arg_3.x, 2147483647i), _wgslsmith_add_vec2_i32(arg_0.b, var_2.b))), vec2<i32>(u_input.c | arg_2.b.x, -(~(-2868i))), ~countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.b.x, arg_0.b.x), arg_0.b)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_add_u32(15375u, 1u), _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 32281u), u_input.a.x, ~71713u);
    var var_1 = -1268f;
    let var_2 = Struct_1(true, min(abs(func_3(Struct_1(false, vec2<i32>(u_input.b, 2147483647i)), var_0.x, Struct_1(false, vec2<i32>(38208i, u_input.c)), vec2<i32>(21052i, 39003i))), vec2<i32>(1i, 2147483647i)) & -vec2<i32>(35310i, -35646i));
    var var_3 = abs(var_0.zxx);
    var var_4 = vec3<i32>(_wgslsmith_div_i32(-1i, abs(_wgslsmith_mult_i32(var_2.b.x, u_input.b))), var_2.b.x, u_input.b) ^ (-vec3<i32>(1i, select(var_2.b.x, u_input.c, false), var_2.b.x) & (_wgslsmith_add_vec3_i32(select(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(var_2.b.x, -41539i, 39570i), false), -vec3<i32>(2147483647i, -3762i, u_input.c)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 23599u, var_3.x), min(var_0.wzy, vec3<u32>(u_input.a.x, u_input.a.x, var_0.x))) % vec3<u32>(32u))));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = func_2(select(select(select(!vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.a, true, arg_1.a, arg_1.a), !vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a)), select(vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_1.a, arg_1.a), !vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)), arg_1.a), vec4<bool>(arg_1.a, arg_1.a || (u_input.b < arg_1.b.x), arg_1.a, !(arg_1.a | false)), vec4<bool>(true, true, true, ~4294967295u >= (u_input.a.x & u_input.a.x))));
    global0 = array<vec2<f32>, 24>();
    let var_1 = func_2(vec4<bool>((max(4294967295u, 0u) < firstLeadingBit(u_input.a.x)) && var_0.a, any(vec3<bool>(true, var_0.a, true)), all(vec3<bool>(arg_1.a, arg_1.a, arg_1.a)) == arg_1.a, func_2(vec4<bool>(arg_1.a, true, var_0.a & false, arg_1.a)).a));
    var var_2 = func_2(vec4<bool>(!var_0.a, !arg_1.a, all(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, var_1.a), true)), false));
    var var_3 = func_2(!vec4<bool>(var_1.a, true & (var_1.a & arg_1.a), !(!var_1.a), var_2.a));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_clamp_i32(~u_input.b, i32(-1i) * -17256i, u_input.c | u_input.b), _wgslsmith_div_i32(_wgslsmith_mod_i32(11646i, u_input.b), 0i)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, ~63053u)), -2147483647i, _wgslsmith_mult_vec3_u32(abs(vec3<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, 1u), func_1(71901u, Struct_1(var_0, vec2<i32>(-2147483647i, u_input.c)), u_input.a.x), u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(22080u, 23729u, u_input.a.x)), vec3<u32>(1u, u_input.a.x, 1u) & vec3<u32>(57251u, u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(5531u, 0u, 80705u), vec3<u32>(u_input.a.x, 35218u, u_input.a.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(27816u, u_input.a.x, u_input.a.x)))));
}

