struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_2(~max(~vec4<u32>(27770u, 0u, 0u, arg_0.x), select(countOneBits(vec4<u32>(arg_0.x, 60413u, arg_0.x, 73313u)), ~vec4<u32>(arg_0.x, 0u, 57470u, arg_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)))), Struct_1(u_input.a, !(!(arg_0.x >= arg_0.x)), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.a, u_input.a), 17451i), 39003i), Struct_1(u_input.a, any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), 2147483647i, -countOneBits(0i)));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f), -587f))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(var_1))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + var_1) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1339f)))));
    let var_3 = var_0.c;
    var var_4 = vec4<u32>(var_0.a.x, 4294967295u, 87133u, 4294967295u);
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<i32>(-1i) * -vec4<i32>(37022i, ~(u_input.a >> (49661u % 32u)), func_3(vec3<u32>(1u, 1u, 1u)), u_input.a);
    var_0 = ~(-_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-20614i, 1i, u_input.a, u_input.a) << (vec4<u32>(32309u, 4294967295u, 1u, 1u) % vec4<u32>(32u)), -vec4<i32>(u_input.a, 0i, u_input.a, 1i)), vec4<i32>(-2147483647i, var_0.x, 0i, u_input.a) ^ ~vec4<i32>(2147483647i, 59689i, -37872i, var_0.x)));
    var_0 = countOneBits(abs(vec4<i32>(1i << (_wgslsmith_div_u32(0u, 1u) % 32u), u_input.a, -13625i, ~31096i)));
    let var_1 = var_0.x;
    var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.yw, vec2<i32>(1i, 2147483647i)), -2147483647i, 2147483647i, 12887i), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, -13013i, 24154i, -47513i), vec4<i32>(2147483647i, 1i, u_input.a, -20701i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.x, -2147483647i, 55866i), vec4<i32>(-69295i, u_input.a, 2147483647i, -2147483647i))), vec4<i32>(u_input.a & 32530i, -var_0.x, u_input.a, u_input.a)));
    return Struct_1(-1i, false, max(~var_0.x, -_wgslsmith_mult_i32(select(52061i, u_input.a, false), var_0.x)), u_input.a);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(711f, _wgslsmith_f_op_f32(max(-1572f, -1347f)), _wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(f32(-1f) * -351f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-355f, -1603f, -1510f, 805f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-205f + 361f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1320f, _wgslsmith_f_op_f32(sign(-345f)))), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, -164f, -276f, -972f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -937f, 390f), var_0.xwz), vec3<f32>(var_0.x, var_0.x, -844f)))))));
    let var_2 = func_2();
    let var_3 = vec3<u32>(49379u, ~firstTrailingBit(1u), ~1u) ^ ~reverseBits(~(~vec3<u32>(4294967295u, 1u, 0u)));
    var var_4 = u_input.a | ~_wgslsmith_mult_i32(~arg_0.a, func_2().c);
    return 276f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(505f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(2147483647i, false, u_input.a, u_input.a))), -1428f, true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(126f))))))) * -695f);
    var var_1 = Struct_2(countOneBits(min(vec4<u32>(19689u, 3416u, 1u, 36204u), firstTrailingBit(vec4<u32>(4294967295u, 37069u, 99053u, 0u))) ^ ~(~vec4<u32>(4294967295u, 46362u, 41233u, 46481u))), func_2(), func_2());
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(709f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) + _wgslsmith_f_op_f32(1429f - -440f)), 729f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f)))), _wgslsmith_f_op_f32(164f - 778f)))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))))), -132f));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(-37727i, _wgslsmith_add_i32(0i, var_1.b.d))), ~u_input.a, _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.c, var_1.b.d), vec2<i32>(u_input.a, var_1.b.c))) | firstLeadingBit(abs(var_1.c.a)), -var_1.b.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2762i, func_3(var_1.a.xyy | var_1.a.wxy), min(u_input.a >> (35786u % 32u), ~16615i)), vec4<i32>(~func_3(var_1.a.zzy), firstTrailingBit(-15489i), -u_input.a, -26966i)));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, -313f)) - vec3<f32>(951f, var_2, 1633f)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1245f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.b)) * var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f - var_2))), var_2), !var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(var_3.wz, var_3.yw), -vec2<i32>(u_input.a, 2568i)), vec2<i32>(var_3.x, -1i)), firstLeadingBit(var_3.x), ~_wgslsmith_sub_vec2_u32(vec2<u32>(~var_1.a.x, 1u), vec2<u32>(_wgslsmith_mod_u32(var_1.a.x, 4294967295u), _wgslsmith_div_u32(70688u, var_1.a.x))), var_1.a.x, var_1.c.c);
}

