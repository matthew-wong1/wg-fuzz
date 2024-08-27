struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = !vec3<bool>(select(any(vec4<bool>(true, true, true, true)), true, true), true || !select(false, true, false), _wgslsmith_clamp_u32(select(u_input.b.x, u_input.b.x, false), ~u_input.b.x, abs(19044u)) != u_input.b.x);
    let var_1 = _wgslsmith_div_i32(arg_2.b.x ^ _wgslsmith_div_i32(~35705i, arg_1.c), ~(i32(-1i) * -1i));
    var var_2 = _wgslsmith_mult_vec2_i32(-arg_2.b.yy, arg_2.b.xx);
    var_2 = select(countOneBits(abs(arg_2.b.zx)), ~(-_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, arg_1.b.x)), firstTrailingBit(arg_2.b.xy))), var_0.yx);
    let var_3 = Struct_3(arg_0.a);
    return 767f;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(vec2<u32>(7125u, 4294967295u));
    let var_1 = _wgslsmith_clamp_vec3_i32(-firstLeadingBit(vec3<i32>(2147483647i, i32(-1i) * -32274i, u_input.a)), vec3<i32>(-93628i, _wgslsmith_div_i32(~0i, _wgslsmith_div_i32(u_input.a, u_input.a)), -_wgslsmith_mult_i32(u_input.a, u_input.a)) << ((u_input.b & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, var_0.a.x), ~vec3<u32>(u_input.b.x, 2451u, 0u))) % vec3<u32>(32u)), abs(vec3<i32>(i32(-1i) * -u_input.a, 1i, 4590i)));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(986f + -1357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(186f, -329f, -1153f, -2226f)), Struct_1(326f, vec3<i32>(-2147483647i, 69857i, var_1.x), u_input.a), Struct_1(-993f, vec3<i32>(u_input.a, -2147483647i, var_1.x), -16441i), Struct_3(vec4<f32>(1334f, -209f, -288f, -597f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(631f)), _wgslsmith_div_f32(1186f, 310f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(296f - 693f))))));
}

fn func_1() -> i32 {
    let var_0 = func_2();
    var var_1 = select(true, all(vec2<bool>(true, true)), true);
    let var_2 = _wgslsmith_sub_i32(firstTrailingBit(-31546i), 2147483647i);
    let var_3 = 19471u;
    var var_4 = Struct_2(max(_wgslsmith_add_u32(1u, u_input.b.x), _wgslsmith_mod_u32(10533u, ~(~u_input.b.x))), 39286u, Struct_1(-108f, vec3<i32>(0i, var_2, var_2), ~(~select(13583i, u_input.a, true))), ~_wgslsmith_mod_vec3_u32(u_input.b ^ vec3<u32>(var_3, 15234u, u_input.b.x), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)));
    return u_input.a & 12355i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!vec4<bool>(true, 1311u >= u_input.b.x, any(vec3<bool>(false, false, false)), true), !vec4<bool>(true, any(vec3<bool>(false, false, false)), true, any(vec2<bool>(true, true))), vec4<bool>(true, true, all(vec2<bool>(false, false)), _wgslsmith_mod_i32(12333i, u_input.a) >= firstLeadingBit(-33879i)));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(u_input.a << (~abs(1u) % 32u), -func_1()), 2147483647i, u_input.a);
    var var_2 = Struct_4(~u_input.b.xz);
    var_2 = Struct_4(_wgslsmith_sub_vec2_u32(firstLeadingBit(reverseBits(u_input.b.xz)), _wgslsmith_mult_vec2_u32(firstTrailingBit(var_2.a), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), var_2.a))));
    var var_3 = Struct_2(abs(1u), ~_wgslsmith_clamp_u32(var_2.a.x, _wgslsmith_mult_u32(var_2.a.x, 4294967295u | u_input.b.x), _wgslsmith_add_u32(22672u, _wgslsmith_div_u32(0u, u_input.b.x))), Struct_1(_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(137f)))), var_1, 1i), ~abs(vec3<u32>(u_input.b.x, select(1u, 21409u, true), ~76510u)), 1440f);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(696f, -286f, 1844f, var_3.e) - vec4<f32>(var_3.c.a, var_3.e, -278f, var_3.e)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(164f, var_3.c.a, var_3.e, var_3.e), vec4<f32>(var_3.e, var_3.e, -327f, var_3.c.a))), select(var_0, vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2637f, var_3.c.a, var_3.c.a, var_3.c.a), vec4<f32>(448f, 288f, var_3.e, 494f), true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.e, 478f, -912f, -1440f))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_3.e, -148f, 1009f), vec4<f32>(1000f, 814f, 360f, 865f))))))));
    let var_5 = var_3.c.b.yy;
    let var_6 = vec2<u32>(var_2.a.x, 1u);
    var var_7 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, _wgslsmith_f_op_f32(func_3(func_2(), Struct_1(var_4.x, vec3<i32>(var_3.c.c, var_5.x, u_input.a), -1i), var_3.c, Struct_3(vec4<f32>(476f, var_3.e, var_4.x, 1321f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1427f, 1044f)) * _wgslsmith_div_f32(549f, var_3.e)), -1773f))), vec4<f32>(477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - 1398f)), -109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_4.x)) - _wgslsmith_f_op_f32(-1000f + -448f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(i32(-1i) * -81848i, 1i) | ~var_1.x, var_4.x);
}

