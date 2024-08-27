struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = vec2<i32>(~0i, _wgslsmith_add_i32(-58908i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(9807i, 4345i, 11981i), vec3<i32>(-1i, -1i, 4032i))));
    return -var_0.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = u_input.a;
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(arg_2.b, abs(arg_1.b) | _wgslsmith_div_i32(-2147483647i, 2147483647i)), -func_2(vec2<u32>(u_input.c, 1u)), -1i) ^ abs(_wgslsmith_mult_vec3_i32(min(vec3<i32>(arg_2.b, -1i, 59703i), vec3<i32>(arg_2.b, -2147483647i, arg_2.b)), countOneBits(-vec3<i32>(arg_2.b, -20525i, 0i))));
    var var_2 = Struct_2(!arg_2.a, i32(-1i) * -95850i);
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-1726f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, arg_0.x)) * _wgslsmith_f_op_f32(arg_0.x - arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = vec4<bool>(arg_0.a.x && all(arg_0.a), all(vec4<bool>(!arg_0.a.x, arg_0.a.x, arg_0.a.x, true)), (i32(-1i) * -(~arg_0.b)) != -1i, !(!arg_0.a.x));
    var var_1 = Struct_2(!arg_0.a, i32(-1i) * -1i);
    var_1 = arg_0;
    var var_2 = abs(_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.b, u_input.b, 20423u) | vec3<u32>(u_input.c, 4751u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 7819u, 66409u), vec3<u32>(u_input.c, u_input.c, 52467u)))) >> (vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.c, abs(_wgslsmith_div_u32(4294967295u, u_input.a.x)), abs(22890u)), ~u_input.a.x) % vec3<u32>(32u));
    var_1 = Struct_2(!var_1.a, var_1.b);
    return reverseBits(~_wgslsmith_mult_u32(~(~u_input.c), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(80686u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 19210u;
    var var_1 = ~max(0u, _wgslsmith_sub_u32(~u_input.b, 0u)) & ~_wgslsmith_sub_u32(u_input.c, _wgslsmith_mod_u32(var_0, ~65321u));
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1677f, -603f))))));
    var_1 = 1u;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-542f, var_2, -1715f)))), Struct_2(vec2<bool>(any(vec2<bool>(true, false)), true), min(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(15708i, 0i, 50093i), vec3<i32>(-1i, 2147483647i, -2147483647i)))), Struct_2(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), _wgslsmith_mod_i32(abs(-48471i), 61463i)), true)));
    var_1 = u_input.b;
    var_1 = 107447u;
    var var_4 = vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.c), _wgslsmith_div_u32(countOneBits(func_3(Struct_2(vec2<bool>(true, false), 2147483647i))), 1u), func_3(Struct_2(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), true), i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(-47132i, ~1i, -11029i, reverseBits(~(-45559i)))));
}

