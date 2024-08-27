struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = firstLeadingBit(select(select(~vec3<u32>(u_input.b, u_input.b, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 58482u)), vec3<bool>(true, true, true)), abs(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 9320u, 55302u), vec3<u32>(11777u, u_input.b, u_input.b))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<u32>(108356u, 4294967295u, 33881u) | vec3<u32>(8923u, u_input.b, u_input.b)), vec3<u32>(~abs(25512u), u_input.b, u_input.b));
    var var_1 = u_input.c;
    var_1 = reverseBits(-35884i);
    var_1 = -14484i;
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.d.x), abs(u_input.d.x), ~u_input.a), (-2147483647i ^ u_input.d.x) >> (_wgslsmith_dot_vec2_u32(var_0.yy, vec2<u32>(1u, 0u)) % 32u), -2147483647i, ~61438i) << (vec4<u32>(~_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(u_input.b, var_0.x, var_0.x)), var_0.x, 4294967295u, (u_input.b & 4294967295u) << ((u_input.b << (var_0.x % 32u)) % 32u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.d.x, 69414i, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.d.x, u_input.d.x, -2147483647i) << (vec4<u32>(4294967295u, 1u, 0u, var_0.x) % vec4<u32>(32u))), vec4<i32>(~u_input.c >> (~u_input.b % 32u), firstLeadingBit(-1i), firstTrailingBit(-75650i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(1i, 19706i) & u_input.d.zz)), vec4<i32>(14680i, 55925i >> ((4294967295u & u_input.b) % 32u), u_input.c, u_input.a)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f * -381f))), 997f)));
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_mod_u32(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(10701u, 58045u, 12872u, u_input.b), abs(vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u))), ~arg_1) >> (~u_input.b % 32u), arg_1);
    let var_1 = -25488i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-564f - 1f))));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), -364f));
    var var_3 = -((select(-vec4<i32>(-2147483647i, -38170i, var_1, u_input.c), firstTrailingBit(vec4<i32>(55049i, u_input.d.x, var_1, var_1)), vec4<bool>(true, false, false, true)) & abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, u_input.d.x, u_input.d.x, var_1), vec4<i32>(-2147483647i, var_1, var_1, u_input.c)))) | ~(-firstTrailingBit(vec4<i32>(u_input.c, -2147483647i, -28219i, -4524i))));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_2 {
    var var_0 = Struct_2(1i);
    let var_1 = vec3<u32>(~1u, ~reverseBits(_wgslsmith_mod_u32(4294967295u, u_input.b) << (50409u % 32u)), 1u);
    var var_2 = Struct_4(Struct_2(~_wgslsmith_sub_i32(reverseBits(0i), -2147483647i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) + _wgslsmith_f_op_f32(-325f + -606f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2055f) - -340f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(step(1f, var_3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(sign(var_3.x)))))))), _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1f, var_3.x)))));
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_4(func_4(select(vec4<bool>(arg_1.x, arg_1.x, all(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x), vec4<bool>(true, true, func_2(0u, 1u), true), !arg_1.x), 1u, !(!arg_1.x | select(arg_1.x, true, false))));
    let var_1 = arg_0;
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, ~36272u), vec3<u32>(reverseBits(arg_3), 53348u, 20635u), vec3<u32>(_wgslsmith_div_u32(reverseBits(arg_3), countOneBits(arg_3)), arg_3, ~(~46488u)));
    let var_3 = _wgslsmith_f_op_f32(func_3());
    var_0 = Struct_4(arg_2);
    return Struct_4(Struct_2(var_0.a.a));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(~0i, (-vec4<i32>(0i, -58213i, arg_1.a, 1i) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 24881u, u_input.b, 39495u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)) % vec4<u32>(32u))) >> (~select(vec4<u32>(u_input.b, 1u, u_input.b, u_input.b), vec4<u32>(21577u, 0u, u_input.b, 23199u) >> (vec4<u32>(0u, 0u, u_input.b, 97689u) % vec4<u32>(32u)), false) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-930f, 1057f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + -1131f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + -1233f))), _wgslsmith_f_op_f32(min(-113f, _wgslsmith_f_op_f32(step(360f, -1000f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(412f, 639f, -196f, -513f)))), vec3<u32>(u_input.b, _wgslsmith_sub_u32(1u, u_input.b), select(u_input.b, 4294967295u, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(948f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -886f), _wgslsmith_f_op_f32(func_3()), all(vec4<bool>(true, true, false, true)))))), func_2(~(~33321u), ~_wgslsmith_div_u32(u_input.b, u_input.b)))));
    let var_1 = Struct_2(u_input.a);
    let var_2 = Struct_2(_wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(var_0.b.x, -1i, var_1.a & -2147483647i, -2147483647i)));
    var var_3 = true;
    let var_4 = reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(73921u, 25354u), var_0.d.xz, vec2<u32>(u_input.b, u_input.b)), _wgslsmith_div_vec2_u32(var_0.d.xy, var_0.d.yz), select(var_0.d.yx, var_0.d.yy, vec2<bool>(false, false))), var_0.d.yx)) ^ var_0.d.zx;
    return min(vec3<u32>(8497u, var_0.d.x, var_4.x), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, var_0.d.x), ~(~var_0.d)), ~(~(~vec3<u32>(4294967295u, 23185u, var_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(541f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(abs(-103f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-460f - -612f) - _wgslsmith_f_op_f32(trunc(467f))) + -709f)), _wgslsmith_f_op_f32(-135f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-805f - _wgslsmith_f_op_f32(sign(-468f))))));
    var var_1 = u_input.b;
    var_1 = abs(4294967295u);
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(49630u, u_input.b, 4294967295u, u_input.b), vec4<u32>(1u, 0u, 25504u, 1u)), u_input.b), 0u), ~func_5(func_1(-1095f, select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), Struct_2(-2147483647i), u_input.b | u_input.b), Struct_2(_wgslsmith_div_i32(u_input.c, u_input.c))));
    let var_3 = Struct_2(min(u_input.a & ((u_input.c << (81458u % 32u)) & -u_input.c), -1i));
    let var_4 = select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), select(vec3<bool>(all(vec2<bool>(true, false)), true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), vec3<bool>(~func_5(Struct_4(Struct_2(var_3.a)), Struct_2(var_3.a)).x <= 53109u, true, var_3.a <= var_3.a), true);
    let var_5 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(778f, -285f, -337f) - vec3<f32>(var_5.x, _wgslsmith_f_op_f32(select(var_0.x, -1569f, true)), var_5.x)))), var_2.x, -824f);
}

