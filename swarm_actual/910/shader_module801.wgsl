struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = arg_1.b;
    var_0 = !arg_1.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, _wgslsmith_f_op_f32(arg_3 + arg_3), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(203f + 753f))))));
    let var_2 = select(vec4<bool>(all(select(vec3<bool>(true, true, arg_0.b), vec3<bool>(false, arg_1.b, true), vec3<bool>(arg_0.b, arg_1.b, false))) && true, !(arg_1.b & (arg_3 < -385f)), arg_1.b, !(4294967295u == firstTrailingBit(79062u))), vec4<bool>((arg_0.b && !arg_0.b) & false, !((0u > u_input.a.x) || arg_0.b), true, !arg_1.b), true);
    let var_3 = -(~arg_1.a.x);
    return reverseBits(var_3 & select(1i, -(26831i & arg_2), true));
}

fn func_4(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = -434f;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(firstTrailingBit(abs(abs(vec2<i32>(2147483647i, -30437i)))), _wgslsmith_clamp_vec2_i32(~vec2<i32>(-39446i, arg_1) << (countOneBits(vec2<u32>(39914u, 4294967295u)) % vec2<u32>(32u)), vec2<i32>(i32(-1i) * -2147483647i, arg_1), -vec2<i32>(arg_1, -64711i)), -vec2<i32>(func_3(Struct_1(vec2<i32>(-1i, arg_1), true), Struct_1(vec2<i32>(arg_1, -21334i), false), 33902i, var_0), 32657i)), true);
    let var_2 = firstTrailingBit(var_1.a.x);
    var var_3 = Struct_1(-var_1.a >> (~abs(u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + -210f), 656f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-384f * var_0)))));
    let var_4 = Struct_1(var_3.a, !var_1.b);
    return _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(-_wgslsmith_div_i32(_wgslsmith_sub_i32(var_2, var_2), var_1.a.x), var_3.a.x));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(vec2<i32>(~func_4(u_input.a.x, func_3(Struct_1(vec2<i32>(3656i, -41367i), true), Struct_1(vec2<i32>(48526i, -34518i), false), 30740i, 127f)), ~abs(~(-2147483647i))), true);
    var var_1 = var_0.b;
    var var_2 = var_0.a.x > 19823i;
    var var_3 = Struct_1(vec2<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(var_0.a.x, 36056i, var_0.a.x, var_0.a.x) & vec4<i32>(17539i, var_0.a.x, 10954i, var_0.a.x)) >> (select(vec4<u32>(80437u, u_input.a.x, 4294967295u, 49618u), vec4<u32>(0u, u_input.a.x, 39341u, u_input.a.x), true) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, var_0.a.x, var_0.a.x, -2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -22019i), ~var_0.a, vec2<i32>(-2147483647i, -2147483647i) & vec2<i32>(var_0.a.x, var_0.a.x)), firstLeadingBit(-var_0.a))), true);
    var_1 = true;
    return ~var_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    let var_0 = Struct_1(arg_0.a, arg_0.b);
    let var_1 = !vec4<bool>(false | !(true | arg_0.b), !(arg_1.x & select(arg_2, false, var_0.b)), arg_0.b, !(any(arg_1) | true));
    let var_2 = ~reverseBits(u_input.a);
    let var_3 = Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(func_2()), var_0.a), true);
    var var_4 = countOneBits(-_wgslsmith_add_i32(~(-11969i) ^ -var_3.a.x, arg_0.a.x));
    return var_0.a.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> vec2<u32> {
    let var_0 = vec2<u32>(arg_0.x, ~(~arg_0.x));
    let var_1 = vec4<i32>(23163i, arg_1, abs(firstLeadingBit(_wgslsmith_mult_i32(-40025i, -arg_1))), ~_wgslsmith_sub_i32(arg_1, min(1i, 34957i)));
    let var_2 = var_1.yzz;
    return ~vec2<u32>(_wgslsmith_sub_u32(32495u, u_input.a.x << (0u % 32u)) | ~(~4294967295u), arg_0.x);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = 2893u;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(arg_1.a, -abs(arg_1.a)), select(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_2.b, arg_2.b, true, arg_2.b), vec4<bool>(false, true, false, arg_3))), arg_3, 4294967295u >= (_wgslsmith_div_u32(0u, arg_0.x) ^ ~u_input.a.x)));
    var_0 = _wgslsmith_add_u32(4294967295u, u_input.a.x);
    let var_2 = Struct_1(arg_2.a, false);
    var_0 = ~0u;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(u_input.a & (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a) & func_5(countOneBits(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), 1i, func_1(Struct_1(vec2<i32>(2147483647i, 0i), false), vec2<bool>(true, false), true, vec2<bool>(true, false)))), Struct_1(func_2(), any(vec3<bool>(true, true, true))), Struct_1(~vec2<i32>(~43787i, i32(-1i) * -6773i), all(vec2<bool>(true, false))), !(true && any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-508f, 514f, -1157f) * vec3<f32>(-1009f, 1124f, -1635f)) - vec3<f32>(-178f, -1027f, -1172f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(ceil(336f)), -280f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1326f, -1129f, 676f), vec3<f32>(528f, 143f, -291f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(294f, -1282f, 544f)))))));
    let var_3 = var_0.a.x;
    let var_4 = Struct_1(-vec2<i32>(-(~var_1.a.x), abs(_wgslsmith_add_i32(7416i, -1i))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(31074i, 0i), ~vec2<i32>(69031i, 5206i), any(vec4<bool>(var_0.b, false, true, var_4.b)))), ~vec2<i32>(-13981i, 0i)), vec2<i32>(-1i, 2147483647i), min(22006u, ~(~4294967295u)));
}

