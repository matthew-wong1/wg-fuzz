struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> i32 {
    var var_0 = Struct_1(u_input.c.zyw);
    var_0 = Struct_1(-_wgslsmith_sub_vec3_i32(reverseBits(u_input.c.zyw & vec3<i32>(-3261i, -32092i, -2147483647i)), u_input.c.zyx));
    let var_1 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(select(_wgslsmith_sub_i32(-2147483647i, 1i), ~u_input.d, select(false, false, true)), _wgslsmith_sub_i32(u_input.d, -var_0.a.x), -u_input.c.x), firstLeadingBit(-vec3<i32>(u_input.d, u_input.c.x, var_0.a.x)) & var_0.a));
    let var_2 = 314f;
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(firstTrailingBit(abs(u_input.a)), reverseBits(4294967295u)), u_input.a);
    return 2147483647i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -884f), -325f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1138f, 2302f), vec2<f32>(3007f, 563f), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 440f)), false))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1287f - -621f))), -1161f))));
    var_0 = vec2<f32>(var_0.x, -1177f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), 756f);
    var var_1 = -2147483647i << (_wgslsmith_mod_u32(~1u, abs(1u)) % 32u);
    var var_2 = Struct_4(Struct_1(vec3<i32>(firstLeadingBit(func_3(vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<bool>(false, false, true, true))), u_input.d, ~_wgslsmith_div_i32(-2147483647i, u_input.d))));
    return Struct_1(var_2.a.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec2_u32(u_input.b.wy, vec2<u32>(0u, firstLeadingBit(u_input.b.x))), func_2(abs(1u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-851f - -1000f), _wgslsmith_f_op_f32(select(-1000f, -2947f, true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-452f, 612f, -805f) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, -578f, 1322f)), vec3<f32>(1000f, -638f, 1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, -2020f))));
    let var_1 = !(!(!vec4<bool>(true, 5685u >= arg_1, any(vec4<bool>(true, false, true, true)), select(false, false, false))));
    var var_2 = var_0.c.yy;
    let var_3 = vec3<bool>(var_1.x, var_1.x, any(vec2<bool>(false, !(var_1.x && var_1.x))));
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, 156f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.yx)))), var_0.c.zy);
    return _wgslsmith_f_op_f32(-394f * _wgslsmith_f_op_f32(var_2.x - var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, -1587f)), -839f), 1274f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1262f, -895f), _wgslsmith_div_f32(1000f, 1222f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-984f, _wgslsmith_f_op_f32(f32(-1f) * -1998f), _wgslsmith_f_op_f32(func_1(u_input.c.xw, u_input.a))))));
    var_0 = ~u_input.b.x;
    var_0 = u_input.b.x;
    var var_2 = Struct_2(reverseBits(abs(u_input.b.yz)) << ((u_input.b.wx ^ _wgslsmith_div_vec2_u32(u_input.b.wx, u_input.b.zw)) % vec2<u32>(32u)), func_2(~u_input.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1))))), _wgslsmith_f_op_vec2_f32(var_1.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -623f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(var_2.b.a.x, 1i), u_input.a))), -1000f, var_1.x)), vec3<i32>(-1i, abs(u_input.d), -_wgslsmith_mult_i32(-23513i, u_input.d)) & _wgslsmith_mod_vec3_i32(max(var_2.b.a, -u_input.c.wyx), u_input.c.zzx));
}

