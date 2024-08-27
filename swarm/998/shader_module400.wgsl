struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(true, 99910u, true, min(vec2<u32>(abs(0u), arg_0.b), u_input.c), -arg_0.e);
    var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -177f)));
    var var_2 = ~vec4<u32>(20306u, _wgslsmith_dot_vec2_u32(~reverseBits(var_0.d), abs(vec2<u32>(u_input.e, 2499u))), _wgslsmith_dot_vec3_u32(u_input.a, ~_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, u_input.a)), 1u & _wgslsmith_div_u32(1u | u_input.a.x, reverseBits(0u)));
    return -1058f;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1107f - 531f), _wgslsmith_f_op_f32(func_3(Struct_1(false, u_input.a.x, true, u_input.a.zy, vec2<i32>(-23278i, 30667i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f * -1749f) - _wgslsmith_f_op_f32(abs(-905f)))), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(133f, -140f, 1780f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1191f, 737f, 1308f), vec3<f32>(-830f, 977f, 742f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, 1501f, -510f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(130f, 814f, 1029f) + vec3<f32>(-1000f, -1000f, 2093f)), true)))));
    let var_1 = Struct_1(select(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 151f) + _wgslsmith_div_f32(1313f, -840f)) > -302f, true), abs(~(~4294967295u ^ u_input.e)), !(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 12969u), 1u) < abs(~u_input.c.x)), firstTrailingBit(~countOneBits(vec2<u32>(51664u, 0u))), vec2<i32>(u_input.b, 5827i));
    let var_2 = var_1;
    let var_3 = -9237i;
    let var_4 = ~(~var_2.b);
    return vec3<i32>(1i, -max(-2147483647i & _wgslsmith_div_i32(u_input.d.x, -18652i), _wgslsmith_sub_i32(1i, -1i) ^ (1i ^ u_input.d.x)), abs(_wgslsmith_clamp_i32(arg_0, u_input.b, ~u_input.d.x) >> (~1u % 32u)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1299f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-449f)))), 893f));
    var var_1 = u_input.d.yzx;
    var_1 = ~vec3<i32>(_wgslsmith_mult_i32(-1i, -1i), ~(-10474i), -1i);
    var_1 = -_wgslsmith_clamp_vec3_i32((firstTrailingBit(u_input.d.yyw) << ((vec3<u32>(1u, arg_0.d.x, u_input.a.x) >> (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u))) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(43072u, 52724u, arg_0.d.x), vec3<u32>(arg_0.d.x, 1u, 1u)) % vec3<u32>(32u)), countOneBits(-vec3<i32>(13415i, 31100i, 22183i)) & ((u_input.d.wzx & vec3<i32>(1i, 19383i, var_1.x)) | select(u_input.d.yzz, u_input.d.wzw, false)), countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, arg_0.e.x, u_input.d.x), func_2(u_input.d.x))));
    var_1 = ~vec3<i32>(~(-26622i) << (arg_0.b % 32u), -7136i, firstLeadingBit(arg_0.e.x));
    return Struct_1(false, ~(~u_input.e), any(select(vec2<bool>(true, arg_0.a & arg_0.a), select(vec2<bool>(true, true), !vec2<bool>(arg_0.a, arg_0.a), arg_0.e.x <= var_1.x), all(vec4<bool>(false, false, true, false)))), reverseBits(firstTrailingBit(~(~arg_0.d))), vec2<i32>(~(~(u_input.d.x >> (u_input.e % 32u))), -37069i << (arg_0.d.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -1i;
    var var_1 = func_1(Struct_1(all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, true), false)), ~(~(~u_input.a.x)), (~(-3682i) == (u_input.b | u_input.d.x)) & true, vec2<u32>(_wgslsmith_add_u32(u_input.e, u_input.c.x), ~(~u_input.c.x)), -(~vec2<i32>(u_input.d.x, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(select(var_1.b, var_1.d.x, var_1.a)), _wgslsmith_mod_u32(4294967295u, abs(4294967295u)), 4294967295u, 20761u), var_1.d.x, ~(~(~(u_input.a & u_input.a))));
}

