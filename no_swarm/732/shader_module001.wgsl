struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> vec3<u32> {
    return firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, ~(~4294967295u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(~(11655u >> (_wgslsmith_sub_u32(u_input.a.x, 63971u) % 32u)), vec3<f32>(296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(321f)) * _wgslsmith_f_op_f32(450f * 889f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -587f))))));
    var var_1 = vec3<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + 349f), _wgslsmith_f_op_f32(round(-512f))) < -518f, ~(~(u_input.b.x & u_input.e)) <= u_input.d);
    var_0 = Struct_2(u_input.c.x, _wgslsmith_f_op_vec3_f32(-var_0.b));
    var_1 = !select(!(!(!vec3<bool>(var_1.x, true, var_1.x))), vec3<bool>(any(!vec3<bool>(var_1.x, false, var_1.x)), (-32592i ^ u_input.e) > (i32(-1i) * -1i), true), var_1.x);
    var_0 = Struct_2(47170u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1592f, var_0.b.x, -563f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2258f, 1054f)), _wgslsmith_f_op_f32(ceil(471f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(999f, var_0.b.x)))))));
    return Struct_1(u_input.b.x, -1436f, func_2(), -select(~(u_input.b.yx >> (u_input.c.yz % vec2<u32>(32u))), u_input.b.yw, var_1.yy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1254f, var_0.b.x, 1000f) * vec3<f32>(-327f, -222f, var_0.b.x)))) * vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-1f))));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_2(max(26060u, (_wgslsmith_sub_u32(27806u, 10032u) << (_wgslsmith_mult_u32(u_input.a.x, u_input.c.x) % 32u)) | _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.a.x), u_input.a), 107893u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(871f, _wgslsmith_div_f32(2222f, -239f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1447f, -457f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-653f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_1().e)), select(vec3<bool>(false, true, any(vec4<bool>(true, false, false, true))), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), false), (-727i | u_input.e) > (i32(-1i) * -1i)))));
    let var_1 = func_1();
    let var_2 = func_1();
    var var_3 = Struct_1(-_wgslsmith_mult_i32(u_input.d, _wgslsmith_clamp_i32(79792i, select(-4358i, -2147483647i, false), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), 795f, ~max(vec3<u32>(firstTrailingBit(91278u), 1u, 4294967295u), vec3<u32>(countOneBits(var_2.c.x), _wgslsmith_sub_u32(var_1.c.x, 4294967295u), ~var_1.c.x)), select(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-34039i, var_2.d.x), u_input.b.xy), vec2<i32>(-2147483647i, i32(-1i) * -1i) ^ vec2<i32>(-u_input.b.x, -54876i | u_input.e), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(var_0.b, var_2.e, vec3<bool>(false, true, false))), var_1.e)))));
    var var_4 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.x, -17125i, 3327i, var_3.a), vec4<i32>(var_3.a, 34815i, var_2.a, u_input.e)) & var_2.a, -u_input.e | ~(-22675i)), i32(-1i) * -(~(-50342i))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x - -582f))))), abs(firstLeadingBit(func_1().c)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(var_1.a), max(var_2.d.x, var_3.a)), var_2.d.x), abs(-var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.e, vec3<f32>(_wgslsmith_f_op_f32(-742f + var_2.b), 2028f, _wgslsmith_f_op_f32(-592f + -148f)))));
    return -var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = ~var_0.c.x;
    var var_2 = vec3<u32>(firstTrailingBit(var_1), u_input.c.x, func_2().x) | var_0.c;
    var_2 = abs(var_0.c);
    let var_3 = true;
    var_0 = Struct_1(34623i, var_0.b, ~u_input.c, func_3(), var_0.e);
    let var_4 = u_input.b.zzw;
    let var_5 = select(53000u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, 0u, var_0.c.x, 47377u), vec4<u32>(u_input.c.x, var_0.c.x, 38063u, 13550u)), vec4<u32>(4294967295u, var_0.c.x, var_2.x, var_0.c.x)), var_2.x) | 0u, true);
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_1().a, var_0.d.x), var_0.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.b)))), _wgslsmith_mult_i32(~(-_wgslsmith_sub_i32(var_0.d.x, -1i)), 33372i));
}

