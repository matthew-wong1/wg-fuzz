struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<bool>) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, -u_input.c.x & arg_2.e), -reverseBits(min(u_input.a.x, 1i) ^ (i32(-1i) * -10578i)));
    let var_1 = countOneBits(var_0.x) >> (38731u % 32u);
    var_0 = _wgslsmith_mult_vec2_i32(u_input.a.xz, -vec2<i32>(countOneBits(-24181i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, -14349i), arg_2.e)));
    return arg_2.b.b.a.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = 15048i;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1772f)), 972f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-701f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f), 381f))), _wgslsmith_div_f32(-804f, 121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(u_input.b.x, Struct_1(vec4<f32>(-556f, -776f, -1000f, -1446f), u_input.b), Struct_3(vec4<f32>(-1207f, 1053f, 2587f, -704f), Struct_2(vec2<bool>(false, false), Struct_1(vec4<f32>(526f, 350f, 538f, -1833f), u_input.b), vec3<u32>(u_input.b.x, 0u, u_input.d.x)), vec2<f32>(390f, -1746f), Struct_1(vec4<f32>(353f, 1000f, -310f, -1509f), vec4<u32>(u_input.b.x, u_input.b.x, 11123u, 77153u)), 64950i), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f) + -825f), all(vec4<bool>(true, true, true, true))))));
    var var_2 = var_1.x;
    var var_3 = u_input.b.x;
    var var_4 = vec2<bool>(select(true, true, !any(vec3<bool>(true, false, true))), true);
    return Struct_2(select(!(!vec2<bool>(false, var_4.x)), !(!select(vec2<bool>(false, var_4.x), vec2<bool>(var_4.x, var_4.x), var_4.x)), ~19352u == u_input.d.x), Struct_1(var_1, u_input.b), u_input.b.wwy);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = func_2(u_input.a.x);
    var var_1 = arg_2.b.b;
    let var_2 = Struct_2(!select(arg_0.yz, vec2<bool>(var_0.a.x, true), true), var_0.b, vec3<u32>(~4294967295u, 0u, 1u >> (1u % 32u)));
    var_1 = ~var_2.b.b;
    var var_3 = arg_2;
    return var_1.xw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec2<bool>(true, true)) & (_wgslsmith_f_op_f32(step(-1427f, _wgslsmith_f_op_f32(f32(-1f) * -762f))) != -624f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -781f), _wgslsmith_f_op_f32(-1927f - 1138f)))), ~vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, 1u), _wgslsmith_div_u32(u_input.d.x, abs(u_input.d.x))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -select(vec2<i32>(2147483647i, u_input.c.x), u_input.a.zx, vec2<bool>(true, true)), ~vec2<i32>(u_input.a.x, ~u_input.c.x)), firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.d & func_1(vec4<bool>(true, false, false, true), Struct_1(vec4<f32>(-687f, -247f, 650f, -269f), u_input.b), Struct_2(vec2<bool>(true, false), Struct_1(vec4<f32>(-1335f, -598f, -630f, -394f), u_input.b), u_input.b.xxx)), u_input.b.xz)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_add_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, u_input.a.x)), select(15819i, select(u_input.a.x, u_input.a.x, false), false)), u_input.a));
}

