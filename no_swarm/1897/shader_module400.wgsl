struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = all(vec4<bool>(true, true, true, true)) & false;
    var_0 = true;
    var var_1 = (max(abs(firstLeadingBit(vec2<i32>(-2147483647i, -2147483647i))), abs(vec2<i32>(2147483647i, -2147483647i))) & firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-20617i, -59565i), vec2<i32>(-10679i, -27008i)) << (reverseBits(u_input.b.zx) % vec2<u32>(32u)))) ^ abs(~(vec2<i32>(23733i, 32777i) >> ((u_input.a.zx ^ vec2<u32>(67272u, 75397u)) % vec2<u32>(32u))));
    var_1 = min(~(~vec2<i32>(20864i, -26113i ^ var_1.x)), abs((vec2<i32>(var_1.x, -45535i) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, -22073i) << (u_input.a.xy % vec2<u32>(32u)), countOneBits(vec2<i32>(var_1.x, 0i)))));
    var_0 = (!(true & any(vec2<bool>(true, true))) || true) && any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)))));
    return vec3<u32>(countOneBits(u_input.a.x), 42511u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, reverseBits(4294967295u)), firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.b.x, 0u)))), u_input.b.x);
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(countOneBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 3338i, 10496i), vec3<i32>(1i, 44180i, 5766i))), vec4<bool>(false, !all(vec4<bool>(false, false, true, false)), true, true)));
    var_0 = Struct_2(Struct_1(vec3<i32>(abs(2832i), -1i, ~countOneBits(var_0.a.a.x)), var_0.a.b));
    var_0 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(~(-69439i), -1i), select(max(var_0.a.a.x, var_0.a.a.x), var_0.a.a.x, var_0.a.b.x), var_0.a.a.x), vec4<bool>(true, 0i == var_0.a.a.x, var_0.a.b.x, true)));
    var var_1 = var_0.a.a;
    var_0 = Struct_2(var_0.a);
    return u_input.a.x >= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(17150u, u_input.a.x)), u_input.b.wz), vec2<u32>(_wgslsmith_dot_vec3_u32(func_3(), u_input.b.wwz & vec3<u32>(781u, u_input.b.x, u_input.a.x)), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.yxz, vec3<u32>(u_input.a.x, 31040u, 0u)))));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = -_wgslsmith_div_vec3_i32(firstTrailingBit(-firstTrailingBit(vec3<i32>(arg_2.b.a.x, arg_1.b.a.x, 0i))), arg_1.b.a);
    let var_1 = !arg_2.b.b.zyy;
    var_0 = _wgslsmith_add_vec3_i32(abs(-arg_1.b.a | vec3<i32>(arg_2.b.a.x, var_0.x, -7157i)), arg_2.b.a);
    var var_2 = var_1;
    var var_3 = arg_3.a.a.x;
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2601f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-551f, 410f)) * _wgslsmith_f_op_f32(-1206f + -339f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 462f)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1083f, -394f), vec2<f32>(156f, 474f)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1082f)))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_mult_u32(~(~38839u), ~_wgslsmith_mult_u32(36421u, u_input.b.x)), Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), func_2()), Struct_1(~vec3<i32>(-2107i, 1i, -2147483647i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), true, true), Struct_3(vec3<bool>(true, true, true), Struct_1(-vec3<i32>(-3257i, 0i, 0i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true))), true, true), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -19747i, 0i), vec3<i32>(-37233i, -78067i, 38676i)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_4(u_input.a.x, Struct_3(vec3<bool>(false, false, false), Struct_1(vec3<i32>(1457i, 2147483647i, 0i), vec4<bool>(false, false, false, false)), false, false), Struct_3(vec3<bool>(false, false, false), Struct_1(vec3<i32>(-33607i, 1i, 0i), vec4<bool>(true, true, true, true)), false, false), Struct_2(Struct_1(vec3<i32>(6321i, -80i, 1i), vec4<bool>(false, true, false, false))))).x, _wgslsmith_f_op_f32(var_0.x + 1236f), false)))))) <= _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1143f), var_0.x), _wgslsmith_f_op_f32(var_0.x * 1f)));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))))));
    let var_2 = Struct_2(Struct_1(-(~(-vec3<i32>(1i, 2147483647i, 63710i))), select(vec4<bool>(var_1, true, true, !var_1), !select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, true, var_1, var_1)), any(vec4<bool>(true, var_1, false, true)) && var_1)));
    let var_3 = ~u_input.b;
    return Struct_1(abs(_wgslsmith_add_vec3_i32(var_2.a.a, vec3<i32>(var_2.a.a.x, ~var_2.a.a.x, _wgslsmith_add_i32(var_2.a.a.x, 0i)))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1250f, var_0.x)) - -1490f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(614f))), any(var_2.a.b.yx), var_2.a.b.x, !(!any(var_2.a.b.yw))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~vec3<i32>(-2147483647i, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(36318i, 48432i), vec2<i32>(0i, 3834i)), vec2<i32>(9912i, -42336i))), vec4<bool>(true || any(vec2<bool>(true, true)), true, true, true));
    let var_1 = ~var_0.a;
    var var_2 = u_input.b.xy;
    let var_3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_2.x, var_2.x, u_input.a.x) & ~(vec4<u32>(u_input.b.x, 0u, 33892u, 18034u) ^ u_input.b), ~u_input.b) >= firstLeadingBit(~abs(71439u) >> (~u_input.a.x % 32u));
    let var_4 = Struct_2(func_1(_wgslsmith_sub_u32(~1u, u_input.b.x)));
    let var_5 = Struct_2(Struct_1(~abs(vec3<i32>(-19300i, var_1.x, var_0.a.x)), select(!vec4<bool>(var_4.a.b.x, var_4.a.b.x, true, var_3), vec4<bool>(false, var_3, any(var_4.a.b.yy), var_2.x > var_2.x), !func_1(10240u).b)));
    var var_6 = Struct_3(!select(select(vec3<bool>(false, var_5.a.b.x, true), !var_4.a.b.ywz, !var_0.b.x), select(vec3<bool>(true, true, true), vec3<bool>(var_4.a.b.x, var_5.a.b.x, var_0.b.x), false), !var_5.a.b.yyz), func_1(0u), !var_3, -1i != _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, ~3817i, -var_1.x), abs(vec4<i32>(var_1.x, -33661i, -2147483647i, 80443i))));
    let var_7 = _wgslsmith_f_op_f32(f32(-1f) * -827f);
    var var_8 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, 0i, var_6.b.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_7), _wgslsmith_f_op_f32(exp2(var_7)), _wgslsmith_f_op_f32(max(-2134f, var_7)), -603f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_7, var_7, -843f, 3174f), vec4<f32>(-1442f, var_7, 131f, 352f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1618f, _wgslsmith_f_op_f32(var_7 + var_7), _wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_f32(f32(-1f) * -1277f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1551f, -825f, var_7, 698f) + vec4<f32>(-189f, -2850f, 1067f, var_7)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_7, var_7, var_7, var_7))))), var_4.a.a.xy);
}

