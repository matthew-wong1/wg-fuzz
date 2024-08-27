struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = firstLeadingBit(~(~(~4294967295u))) >> (u_input.b.x % 32u);
    return vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.a), ~countOneBits(u_input.b.x)) << (_wgslsmith_mod_u32(18417u, 4294967295u) % 32u), u_input.c >> (~(~countOneBits(10100u)) % 32u), firstTrailingBit(min(firstTrailingBit(abs(u_input.c)), u_input.b.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_3.a)), _wgslsmith_f_op_f32(-1389f + arg_3.a))), _wgslsmith_f_op_f32(sign(arg_3.a))), select(!arg_3.b, vec2<bool>(true, true), vec2<bool>(arg_3.b.x, false))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1268f))), _wgslsmith_f_op_f32(-283f - _wgslsmith_div_f32(676f, 361f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -947f), -1924f, _wgslsmith_f_op_f32(arg_3.a * 443f)) * arg_1)));
    var var_1 = arg_3;
    var var_2 = vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, ~(-u_input.d.x) ^ -select(-1i, arg_0.x, true), u_input.d.x), u_input.d.x ^ -2147483647i, ~u_input.d.x, _wgslsmith_div_i32(-57069i, abs(arg_0.x)));
    var_2 = -_wgslsmith_add_vec4_i32(u_input.d, _wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.x, -33053i, 2147483647i, u_input.d.x), vec4<i32>(2147483647i, arg_0.x, 47213i, -11566i), ~vec4<i32>(var_2.x, u_input.d.x, 17011i, var_2.x)) | vec4<i32>(u_input.d.x, abs(var_2.x), 2147483647i, min(14258i, u_input.d.x)));
    var var_3 = true;
    return Struct_1(_wgslsmith_f_op_f32(-arg_3.a), vec2<bool>(all(!(!vec3<bool>(false, false, arg_2))), arg_3.b.x));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -596f), vec2<bool>(true, true));
    var var_1 = func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xz, _wgslsmith_mult_vec2_i32(u_input.d.yy, vec2<i32>(2147483647i, u_input.d.x))) ^ (firstLeadingBit(u_input.d.x) | max(u_input.d.x, -1i)), ~(-abs(-2147483647i))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), -2120f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), 605f)) - _wgslsmith_f_op_f32(-var_0.a))), var_0.b.x, var_0);
    let var_2 = 0u;
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b.yz, ~max(countOneBits(vec2<u32>(u_input.a, 0u)), ~u_input.b.zy)), ~firstLeadingBit(select(var_2, max(var_2, u_input.c), var_1.b.x)));
    var var_4 = 0u;
    return -129f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(587f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1396f * -1250f))), func_2(vec2<i32>(u_input.d.x, u_input.d.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1007f, 537f, 1518f) - vec3<f32>(2113f, -2350f, -237f)))), var_0.x, Struct_1(_wgslsmith_f_op_f32(select(-391f, -729f, false)), vec2<bool>(var_0.x, false))).a), -183f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(-3413f - _wgslsmith_f_op_f32(f32(-1f) * -850f)), var_1.x, var_1.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x)));
    var_3 = var_1.x;
    var_3 = -302f;
    var var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(trunc(var_1.x))) + -920f), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, -959f))))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~u_input.c), min(17502u, 0u), u_input.c), vec3<u32>(countOneBits(min(u_input.a, u_input.c)), _wgslsmith_dot_vec2_u32(u_input.b.xy >> (u_input.b.zz % vec2<u32>(32u)), ~u_input.b.zz), 54724u | u_input.a)));
}

