struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 7046i;

var<private> global1: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(~u_input.b.x, _wgslsmith_clamp_i32(-(~7025i), ~_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 1550f, -1000f, -1173f), vec4<f32>(-1089f, arg_1, 910f, 1693f), vec4<bool>(true, true, false, true))))), vec4<u32>(~(~0u), _wgslsmith_mod_u32(~u_input.a, ~u_input.a), ~select(u_input.a, u_input.a, true), ~(u_input.a >> (u_input.a % 32u)))), abs(1i));
    var var_1 = Struct_2(var_0.a, -u_input.b.x);
    global1 = ~105645u;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - arg_1))), -246f));
    var var_3 = Struct_1(~var_1.a.a ^ -2147483647i, 2147483647i, var_0.a.c, vec4<u32>(~(_wgslsmith_div_u32(4294967295u, u_input.a) | ~var_1.a.d.x), u_input.a, var_0.a.d.x | min(abs(var_1.a.d.x), 1u), u_input.a));
    return -504f;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = arg_0;
    global0 = -(-11897i & u_input.b.x);
    return _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-177f, _wgslsmith_f_op_f32(1801f - 317f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -768f)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> bool {
    let var_0 = false;
    let var_1 = Struct_2(Struct_1(-_wgslsmith_clamp_i32(u_input.b.x, 3050i, u_input.b.x) >> (_wgslsmith_mult_u32(0u, u_input.a ^ arg_0.x) % 32u), -1i, vec4<f32>(_wgslsmith_div_f32(-103f, _wgslsmith_f_op_f32(abs(352f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 574f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, 1000f, var_0)), -1346f)), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(u_input.a, 706u, 26377u, 92880u)), vec4<u32>(15021u, arg_0.x, u_input.a, 12654u) << (select(vec4<u32>(u_input.a, u_input.a, arg_0.x, u_input.a), vec4<u32>(u_input.a, 88545u, u_input.a, 1u), vec4<bool>(true, false, true, var_0)) % vec4<u32>(32u)))), _wgslsmith_dot_vec3_i32(firstTrailingBit(select(select(vec3<i32>(u_input.b.x, 5380i, -2147483647i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0), ~vec3<i32>(arg_1, arg_1, 2147483647i), any(vec3<bool>(false, false, var_0)))), -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, -28471i, arg_1), vec3<i32>(arg_1, u_input.b.x, arg_1), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, -38264i, u_input.b.x), vec3<i32>(2147483647i, -31477i, -14757i)), vec3<bool>(var_0, var_0, true))));
    global0 = arg_1;
    let var_2 = true;
    let var_3 = var_2;
    return !var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(vec2<bool>(true, any(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, false, true, true)))), func_1(min(vec3<u32>(0u, 1u, 29056u) << (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u)), vec3<u32>(4294967295u, u_input.a, 31288u) << (vec3<u32>(u_input.a, 0u, 60163u) % vec3<u32>(32u))), -2147483647i)));
    let var_1 = countOneBits(vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a | u_input.a)));
    var var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(select(4294967295u, ~0u, any(vec2<bool>(var_0.a.x, var_0.a.x))), 4294967295u), var_1), reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a, 64396u)), vec2<u32>(94531u, 13631u)), var_1)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 481f, -524f, 1898f)), vec4<f32>(-3041f, 1f, -948f, _wgslsmith_f_op_f32(func_3(-223f, -1493f)))))));
    var var_4 = Struct_1(_wgslsmith_mod_i32(-82138i, firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_sub_i32(26862i, u_input.b.x), ~u_input.b.x))), reverseBits(1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -795f, var_3.x)))), vec4<u32>(~4294967295u, ~_wgslsmith_mod_u32(4294967295u, 87840u), ~1u, (countOneBits(var_1.x) >> (52364u % 32u)) & 1u));
    var var_5 = Struct_1(5399i, 1498i | (~(i32(-1i) * -2147483647i) >> (_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 8461u), var_2.x >> (31835u % 32u)) % 32u)), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), 428f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(min(var_3.x, var_3.x))))), var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, var_1.x), var_4.d.x), _wgslsmith_f_op_f32(floor(-1300f)), -1i);
}

