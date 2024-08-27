struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-11661i, 1i, 0i, 1i));

var<private> global1: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<f32> {
    global0 = Struct_1(global0.a);
    var var_0 = Struct_2(Struct_1(select(global0.a, ~_wgslsmith_mult_vec4_i32(global0.a, vec4<i32>(global0.a.x, -38558i, -1i, -2147483647i)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, false), all(vec3<bool>(false, false, false))))), u_input.b, 5320u, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.a) | vec2<u32>(abs(u_input.a), u_input.b.x & 43055u), u_input.b.xx), ~13681u);
    global0 = Struct_1(countOneBits(~max(vec4<i32>(-4547i, global0.a.x, global0.a.x, var_0.a.a.x), vec4<i32>(-2147483647i, 2147483647i, global0.a.x, 5425i))) >> (firstTrailingBit(reverseBits(vec4<u32>(var_0.d.x, 28286u, u_input.a, var_0.b.x) & vec4<u32>(4294967295u, var_0.b.x, var_0.c, 0u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f - 2154f))), -180f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2269f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(380f))))))));
    var var_1 = Struct_1(~abs(global0.a));
    return vec2<f32>(821f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) * 562f));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(min(reverseBits(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(global0.a.x, -9554i, global0.a.x, -2147483647i), vec4<i32>(global0.a.x, -1i, -1i, global0.a.x)), _wgslsmith_add_vec4_i32(global0.a, vec4<i32>(-14458i, -70211i, 6229i, global0.a.x)), global0.a)), global0.a));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    return _wgslsmith_clamp_vec2_u32(u_input.b.zz | vec2<u32>(_wgslsmith_add_u32(~10623u, u_input.a), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.a, u_input.a))), vec2<u32>(~_wgslsmith_mult_u32(~u_input.b.x, u_input.a), select(_wgslsmith_mult_u32(66864u, firstLeadingBit(u_input.a)), min(0u, u_input.a), 43609u > (u_input.a >> (u_input.b.x % 32u)))), vec2<u32>(4294967295u, u_input.a));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = Struct_1(vec4<i32>(arg_2.a.x, abs(arg_2.a.x), _wgslsmith_add_i32(arg_1.a.a.x, arg_1.a.a.x), -34232i ^ firstLeadingBit(select(arg_2.a.x, global0.a.x, false))));
    var var_1 = 1269f;
    var_1 = 1432f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(arg_0 * 1111f), -594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_f_op_f32(-3192f * _wgslsmith_f_op_f32(-var_0.x))));
    return arg_3.a;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(abs(455f)), Struct_2(Struct_1(global0.a), u_input.b, _wgslsmith_add_u32(1u, ~35417u), func_2(), u_input.a ^ ~1u), Struct_1(global0.a), Struct_2(Struct_1(-global0.a), min(_wgslsmith_mod_vec3_u32(vec3<u32>(31627u, 54753u, 0u), vec3<u32>(u_input.a, u_input.b.x, u_input.a)), u_input.b), u_input.b.x, _wgslsmith_mult_vec2_u32(u_input.b.xy, ~u_input.b.zz), abs(u_input.b.x))), u_input.b | u_input.b, u_input.a, vec2<u32>(u_input.a, _wgslsmith_clamp_u32(0u | u_input.a, min(u_input.a, u_input.a), ~u_input.b.x)) << (min(min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy), u_input.b.xx), u_input.b.xy << (u_input.b.zx % vec2<u32>(32u))) % vec2<u32>(32u)), ~9480u);
    global1 = 2118f;
    global1 = arg_0;
    global0 = var_0.a;
    global1 = arg_0;
    return !vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)) <= arg_0, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1256f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(f32(-1f) * -552f), true)))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)));
    var var_1 = !(!func_1(_wgslsmith_f_op_f32(213f * var_0)));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(54832u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(80170u, 4294967295u, u_input.b.x, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 19598u, u_input.a), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), vec4<u32>(u_input.a, 50883u, u_input.a, 43198u)) >> (~vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, 96244u, u_input.a), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), select(~(vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x) | vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 1u)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.a, 38116u), vec4<u32>(4107u, 0u, 1u, u_input.a))), !select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(true, true, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x)))), u_input.a, u_input.a, ~(~(~u_input.b.yz | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 3985u), u_input.b.yx))));
}

