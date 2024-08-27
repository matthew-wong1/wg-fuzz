struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_1(1f, ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_0, arg_0, 25469i), vec3<i32>(-2147483647i, 2147483647i, u_input.a) | _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, arg_0, 34293i), vec3<i32>(u_input.a, 8029i, u_input.a), vec3<i32>(u_input.a, -2147483647i, -2147483647i))), abs(arg_1.zz));
    global0 = true;
    let var_1 = max(~firstTrailingBit(arg_1.wy), arg_1.yy);
    let var_2 = Struct_1(-662f, vec3<i32>(2147483647i, ~abs(1i << (1u % 32u)), _wgslsmith_clamp_i32(~1i, 1i, _wgslsmith_sub_i32(-2147483647i, arg_0) << (var_1.x % 32u))), firstLeadingBit(vec2<u32>(var_1.x, ~1u | arg_1.x)));
    global0 = true;
    return any(vec4<bool>(max(~var_0.c.x, 0u) > 1u, all(vec2<bool>(any(vec4<bool>(true, false, false, true)), false)), true && (_wgslsmith_f_op_f32(-var_0.a) <= _wgslsmith_f_op_f32(-var_0.a)), false));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec3<bool> {
    global0 = !any(vec3<bool>(true, true, true));
    global0 = select(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) && true, all(vec2<bool>(true, -arg_1 == arg_1)));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), vec3<i32>(u_input.a, -19023i ^ (arg_1 & 0i), -2147483647i) << (_wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(0u, 16573u, 29792u)), min(vec3<u32>(4294967295u, u_input.b, 0u), select(vec3<u32>(48766u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), true))) % vec3<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(u_input.b, u_input.b)), ~(~vec2<u32>(u_input.b, u_input.b))), min(~(~vec2<u32>(u_input.b, 4294967295u)), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b), false) >> (vec2<u32>(4294967295u, 84685u) % vec2<u32>(32u))), select(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(35761u, u_input.b))), vec2<u32>(abs(u_input.b), ~28259u), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))));
    var var_1 = ~var_0.c.x;
    var var_2 = -1i;
    return vec3<bool>(func_3(arg_1, ~vec4<u32>(u_input.b, 10276u, ~4294967295u, select(u_input.b, var_0.c.x, false))), false, !any(vec3<bool>(true, true, true)) | all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(false, false, false, true), true)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = arg_0.x;
    var var_0 = all(func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) * 1f), -2861f, -1692f), abs(~0i)));
    let var_1 = vec2<u32>(33342u, 1u);
    var_0 = select(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 30656i, u_input.a), vec3<i32>(0i, u_input.a, -1i))) >= -(_wgslsmith_div_i32(-1i, -45107i) & u_input.a), !(reverseBits(~u_input.a) != -1i), !(-u_input.a <= countOneBits(u_input.a)));
    global0 = true & !(!arg_0.x);
    return Struct_1(-119f, _wgslsmith_div_vec3_i32(-vec3<i32>(6309i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(2147483647i, -35198i)), u_input.a | u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(min(u_input.a, u_input.a), 1i, abs(30861i)), ~(~vec3<i32>(18645i, u_input.a, u_input.a)))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.b, 4294967295u)), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(select(~1471i, ~u_input.a, true) != 1i, u_input.a > 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -10602i, 0i, 0i))));
}

