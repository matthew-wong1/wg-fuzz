struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -23064i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = 511f;
    var var_1 = ~14956i;
    var var_2 = _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, arg_0.a.x) >> (vec3<u32>(u_input.b.x, u_input.b.x, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, -17061i, arg_1.x))), vec3<i32>(_wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x), arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(10745i, u_input.a), arg_1))), ~vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.x, 39435i), 39553i), ~countOneBits(arg_0.a.x), 13850i));
    let var_3 = vec3<u32>(_wgslsmith_mod_u32(u_input.b.x, abs(countOneBits(firstTrailingBit(u_input.b.x)))), ~u_input.b.x, firstTrailingBit(u_input.b.x));
    var var_4 = 668f;
    return Struct_1(~(-(~arg_1)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> i32 {
    var var_0 = arg_0.x;
    global0 = 10205i;
    var var_1 = Struct_1(min(vec2<i32>(~u_input.a, -2147483647i), vec2<i32>(u_input.a, ~u_input.a)));
    var_1 = func_2(Struct_1(firstLeadingBit(vec2<i32>(-var_1.a.x, _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(-2147483647i, var_1.a.x))))), var_1.a, _wgslsmith_f_op_vec3_f32(ceil(arg_0)));
    var var_2 = arg_0;
    return 63458i;
}

fn func_3(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = min(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, ~select(0u, 0u, false)), 62116u));
    var var_1 = true;
    global0 = -47370i;
    let var_2 = Struct_1(max(func_2(Struct_1(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(2147483647i, ~u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, 193f, 578f))) - vec3<f32>(135f, -744f, arg_0.x))).a, _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), select(-vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, 60488i), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))))));
    global0 = firstLeadingBit(u_input.a);
    return _wgslsmith_clamp_vec3_i32(abs(~(-vec3<i32>(var_2.a.x, 28836i, -27766i))) & vec3<i32>(2147483647i, ~_wgslsmith_mult_i32(-51425i, var_2.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.a.x, var_2.a.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.a.x, 2147483647i, -23931i, -1i), vec4<i32>(-7243i, -1i, 2147483647i, u_input.a)))), ~(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 14078i, -2147483647i), true), vec3<i32>(-8328i, -48164i, var_2.a.x) << (var_0 % vec3<u32>(32u)), vec3<i32>(var_2.a.x, u_input.a, u_input.a) & vec3<i32>(var_2.a.x, -3223i, 0i))), ~min(~vec3<i32>(-31219i, var_2.a.x, -1i), vec3<i32>(var_2.a.x, u_input.a, 30093i) | vec3<i32>(u_input.a, u_input.a, -2917i)) << (var_0 % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1893f))), -2322f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1054f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-545f - 827f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1511f)))), _wgslsmith_add_u32(1u, ~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))));
    let var_0 = func_2(func_2(Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, u_input.a), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -23125i), vec2<i32>(-4618i, u_input.a)))), ~firstTrailingBit(countOneBits(vec2<i32>(-19829i, u_input.a))), vec3<f32>(807f, _wgslsmith_f_op_f32(ceil(-465f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), vec2<i32>(-45632i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-89315i, 1i, -30698i) & func_3(vec2<f32>(628f, -843f)), ~(-vec3<i32>(u_input.a, u_input.a, u_input.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(246f)), _wgslsmith_f_op_f32(min(894f, -1361f)), 1000f)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f - 459f) * 190f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1130f + -378f))), 2570f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -453f)))))));
    var var_2 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(1u, 110715u, 0u, 18245u)) >> ((abs(vec4<u32>(u_input.b.x, 38827u, u_input.b.x, 39070u)) >> (vec4<u32>(1u, u_input.b.x, 33908u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(u_input.b.x, u_input.b.x << (0u % 32u), u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, 45704u, _wgslsmith_clamp_u32(1u, 14634u | u_input.b.x, ~50027u), 28075u));
    var_2 = min(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, var_2.x, 31093u, u_input.b.x)), vec4<u32>(~var_2.x, 73458u ^ u_input.b.x, ~0u, 89022u)), vec4<u32>(8030u, ~u_input.b.x, 0u, ~_wgslsmith_clamp_u32(1u, 0u, 24126u & u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_u32(~u_input.b.x, u_input.b.x)) & 4294967295u);
}

