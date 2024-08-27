struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.c);
    var var_1 = arg_2.a;
    var_1 = Struct_1(2147483647i, 1u & u_input.a.x, !select(var_1.c, var_1.c, select(arg_2.a.c, vec3<bool>(arg_2.a.c.x, var_1.c.x, var_1.c.x), vec3<bool>(true, arg_2.a.c.x, var_1.c.x))));
    var_1 = Struct_1(var_1.a, ~countOneBits(firstTrailingBit(var_1.b)), vec3<bool>(-299f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.c))), any(select(vec4<bool>(var_1.c.x, var_1.c.x, arg_2.a.c.x, arg_2.a.c.x), !vec4<bool>(true, arg_2.a.c.x, arg_2.a.c.x, var_1.c.x), arg_2.a.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * -714f) == _wgslsmith_f_op_f32(-arg_2.c)));
    let var_2 = -vec3<i32>(arg_1, 2147483647i, 1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(574f, -942f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(948f)))), arg_0.x, arg_0.x, _wgslsmith_f_op_f32(func_3((min(vec4<u32>(1u, u_input.a.x, u_input.a.x, 38708u), vec4<u32>(u_input.a.x, u_input.a.x, 50473u, arg_1)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, 0u, arg_1), u_input.a) % vec4<u32>(32u))) & u_input.a, i32(-1i) * -14279i, Struct_3(Struct_1(~(-2147483647i), ~14339u, vec3<bool>(true, false, true)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_2, -14728i, arg_2), vec4<i32>(arg_2, arg_2, arg_2, 22846i)), select(vec4<i32>(-32988i, 26966i, -2147483647i, arg_2), vec4<i32>(arg_2, arg_2, 30099i, arg_2), vec4<bool>(true, false, false, true))), arg_0.x))));
    return false;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> bool {
    let var_0 = select(!arg_0.c, vec4<bool>(arg_0.c.x, false, 1i >= arg_0.d.a, (arg_1.a.c.x && (true || arg_1.a.c.x)) && true), func_2(arg_0.b.wx, ~7860u, arg_1.a.a & arg_0.d.a));
    var var_1 = ~(~countOneBits(5403u));
    var var_2 = Struct_3(arg_1.a, -(arg_1.b << (reverseBits(u_input.a) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-arg_1.c));
    var var_3 = abs(_wgslsmith_div_u32(~(~var_2.a.b), reverseBits(arg_1.a.b)));
    var_1 = 1u;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(1i, select(firstTrailingBit(reverseBits(-5140i)), ~(i32(-1i) * -1i), true)));
    let var_1 = Struct_2((~u_input.a.x & _wgslsmith_clamp_u32(reverseBits(u_input.a.x), u_input.a.x, u_input.a.x)) ^ firstLeadingBit(1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 266f, false)), -387f), 427f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1871f)), _wgslsmith_f_op_f32(f32(-1f) * -1522f)), _wgslsmith_div_f32(1616f, _wgslsmith_f_op_f32(f32(-1f) * -405f)))), vec4<bool>(func_1(Struct_2(u_input.a.x, vec4<f32>(-753f, -116f, -1942f, -842f), vec4<bool>(false, true, true, true), Struct_1(-28059i, u_input.a.x, vec3<bool>(false, true, false))), Struct_3(Struct_1(31417i, u_input.a.x, vec3<bool>(true, true, true)), reverseBits(vec4<i32>(10809i, 43788i, 31999i, -5508i)), _wgslsmith_f_op_f32(-670f + 779f))), (u_input.a.x & 123641u) == 54960u, any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), func_2(vec2<f32>(902f, 746f), 4294967295u, 0i))), select(true, true, true) | true), Struct_1(~(~1i) & firstTrailingBit(1i), 47627u >> (u_input.a.x % 32u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true))));
    var var_2 = vec3<i32>(var_1.d.a, var_1.d.a, -_wgslsmith_mod_i32(8036i, 48324i));
    var_0 = var_2.x;
    var var_3 = !select(!var_1.c, var_1.c, var_1.a == var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.b.yzx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.yzx)), vec3<bool>(true, true, true))) - var_1.b.wxy), 2147483647i);
}

