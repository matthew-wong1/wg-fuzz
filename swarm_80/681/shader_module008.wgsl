struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_3.x;
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_sub_vec4_i32(-(~(-(~vec4<i32>(arg_0, -2147483647i, arg_1.a, -5690i)))), vec4<i32>((~0i >> (~u_input.a % 32u)) & arg_2.x, -1i, arg_1.a, arg_1.a));
    global0 = array<Struct_1, 1>();
    var_1 = firstLeadingBit(min(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(2147483647i, arg_2.x, -47599i, var_1.x), countOneBits(vec4<i32>(-1i, arg_1.a, arg_2.x, arg_2.x))), vec4<i32>(abs(var_1.x), _wgslsmith_mult_i32(0i, 0i), -arg_2.x, min(-79418i, arg_2.x))), ~vec4<i32>(1i, arg_0, arg_1.a, ~2147483647i)));
    return arg_1.a;
}

fn func_3() -> i32 {
    let var_0 = 47986u;
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let var_1 = firstLeadingBit(~var_0);
    let var_2 = Struct_1(0i, true);
    return _wgslsmith_add_i32(31154i, _wgslsmith_add_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, var_2.a, -43065i, var_2.a), vec4<i32>(-8712i, 0i, 0i, var_2.a)), -31094i), -22133i));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(1u, 1u)];
    global0 = array<Struct_1, 1>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~43040u, u_input.b & ~u_input.b, select(u_input.a, firstTrailingBit(0u), !arg_1)), _wgslsmith_mult_vec3_u32(min(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(45842u, 30651u, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(u_input.a, u_input.b, 21162u))), max(~vec3<u32>(u_input.b, u_input.a, 31242u), vec3<u32>(u_input.a, u_input.b, u_input.a))), ~firstLeadingBit(~vec3<u32>(u_input.b, u_input.b, u_input.a)))), 1u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1450f + arg_2) * -919f);
    var_0 = global0[_wgslsmith_index_u32(89178u, 1u)];
    return global0[_wgslsmith_index_u32(u_input.b, 1u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = select(select(vec2<i32>(-_wgslsmith_mod_i32(arg_0.a, 22931i), arg_0.a & (arg_2.a & 0i)), vec2<i32>(2147483647i, arg_2.a), arg_1.yy), vec2<i32>(arg_0.a, firstTrailingBit(-15603i << (min(24789u, u_input.b) % 32u))), any(select(vec2<bool>(false, true), !vec2<bool>(arg_2.b, arg_2.b), false)));
    global0 = array<Struct_1, 1>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-968f * 302f), 1267f, 971f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 160f)));
    let var_2 = Struct_1(func_2(var_0.x, arg_2, vec3<i32>(~2147483647i, _wgslsmith_sub_i32(-26210i, -64108i), -arg_2.a) & _wgslsmith_sub_vec3_i32(~vec3<i32>(1i, arg_0.a, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a, 20455i, -16658i), vec3<i32>(arg_0.a, 18212i, var_0.x))), !vec4<bool>(arg_0.b && arg_1.x, arg_2.a <= arg_2.a, true, var_0.x >= var_0.x)), arg_2.b);
    let var_3 = var_2;
    return func_4(abs(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_0.a, 0i, arg_2.a, -13521i)), vec4<i32>(-1i, var_3.a, -59369i, var_3.a)), vec4<i32>(var_2.a, var_3.a, arg_0.a, -1784i))), false, var_1.x);
}

fn func_1(arg_0: vec4<f32>) -> StorageBuffer {
    global0 = array<Struct_1, 1>();
    var var_0 = func_5(func_4(vec4<i32>(-(~1i), func_2(-1i, global0[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_add_vec3_i32(vec3<i32>(-57123i, 34337i, 0i), vec3<i32>(-5256i, 9702i, 6384i)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), true)), 2549i, func_3()), true, _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), select(vec3<bool>(!any(vec4<bool>(true, false, false, true)), (u_input.b <= u_input.a) || false, true), !vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)), any(vec3<bool>(true, true, false))), select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)), all(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_clamp_i32(func_2(_wgslsmith_add_i32(42749i, 1i), global0[_wgslsmith_index_u32(~1u, 1u)], -vec3<i32>(-1i, -43621i, 1i), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true)), -(~0i), func_3()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.x))))));
    var_0 = global0[_wgslsmith_index_u32(u_input.b, 1u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -504f), arg_0.x, -1000f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-214f, arg_0.x, -1122f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-199f, arg_0.x, 692f))))))));
    var var_2 = _wgslsmith_mod_u32(u_input.a, ~(u_input.b ^ 0u));
    return StorageBuffer(1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -390f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1156f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2714f), _wgslsmith_f_op_f32(trunc(-618f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-813f, -322f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-340f, 343f)))))));
    let x = u_input.a;
    s_output = func_1(vec4<f32>(-1271f, _wgslsmith_f_op_f32(766f + _wgslsmith_div_f32(var_0.x, var_0.x)), var_0.x, var_0.x));
}

