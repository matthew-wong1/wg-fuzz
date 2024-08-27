struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(19337i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = arg_1;
    return arg_0;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(390f, 308f), Struct_2(Struct_1(u_input.c), false, 182f, false, vec3<i32>(-55732i, u_input.c, global0.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1223f, -2232f) - vec2<f32>(-1665f, -851f))) - vec2<f32>(1f, -398f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(round(-1590f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(330f, 1255f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-773f, -792f) + vec2<f32>(598f, -466f)))))));
    global0 = Struct_1(-firstTrailingBit(global0.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, -1000f), var_0)), Struct_2(Struct_1(-1i), false, var_0.x, false, vec3<i32>(global0.a, u_input.c, -7621i)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(var_0.x, -101f), Struct_2(Struct_1(1i), false, -1567f, true, vec3<i32>(-2147483647i, global0.a, -14988i)))).x)), Struct_2(Struct_1(1i), all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-174f)))), 1u < u_input.a.x, firstLeadingBit(vec3<i32>(0i, u_input.c, u_input.c))))).x);
    var var_2 = u_input.c;
    let var_3 = Struct_2(Struct_1(global0.a), any(vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), false)), _wgslsmith_f_op_f32(1483f + _wgslsmith_f_op_f32(min(1000f, 742f))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(true, true, var_0.x >= var_0.x))), firstLeadingBit(reverseBits((vec3<i32>(u_input.c, 0i, 4485i) ^ vec3<i32>(global0.a, global0.a, 1569i)) | vec3<i32>(-1i, global0.a, -14092i))));
    return Struct_1(-_wgslsmith_mult_i32(-(var_3.e.x << (36912u % 32u)), -var_3.e.x));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_u32(u_input.a.zz, u_input.a.zz & vec2<u32>(_wgslsmith_sub_u32(countOneBits(0u), _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b)), ~u_input.d));
    let var_1 = reverseBits(_wgslsmith_add_u32(u_input.d, reverseBits(~_wgslsmith_add_u32(4294967295u, u_input.a.x))));
    global0 = Struct_1(-1i);
    global0 = func_2();
    global0 = Struct_1(0i);
    return func_2();
}

fn func_4(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    let var_0 = _wgslsmith_mult_i32(firstTrailingBit(-_wgslsmith_mult_i32(0i, global0.a)), arg_0.a) | _wgslsmith_add_i32(~arg_0.a, 63100i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f))))), 210f, _wgslsmith_f_op_f32(ceil(-409f)), -1268f);
    let var_2 = vec3<u32>(u_input.a.x, u_input.b, u_input.a.x) >> ((~(~(vec3<u32>(u_input.b, u_input.b, 40158u) >> (u_input.a.wyy % vec3<u32>(32u)))) >> (reverseBits(u_input.a.xzz) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = arg_0;
    return 440f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-abs(119609i)), _wgslsmith_f_op_f32(select(2278f, _wgslsmith_div_f32(1010f, _wgslsmith_f_op_f32(abs(-937f))), true)) != _wgslsmith_f_op_f32(func_4(func_1())), _wgslsmith_f_op_f32(-732f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1176f, -196f))))), true, reverseBits(~vec3<i32>(_wgslsmith_div_i32(-24068i, 2806i), 28983i >> (0u % 32u), ~global0.a)));
    let var_1 = u_input.d;
    var var_2 = Struct_2(var_0.a, any(select(select(vec4<bool>(var_0.d, true, true, var_0.b), !vec4<bool>(var_0.d, var_0.b, var_0.b, false), -858f > var_0.c), vec4<bool>(any(vec4<bool>(var_0.b, var_0.d, false, var_0.d)), false, !var_0.d, true), select(!vec4<bool>(false, false, var_0.d, true), !vec4<bool>(var_0.d, false, var_0.d, var_0.b), select(vec4<bool>(true, var_0.d, var_0.b, true), vec4<bool>(true, var_0.b, var_0.b, var_0.d), true)))), var_0.c, var_0.b, -var_0.e);
    let var_3 = Struct_3(func_1(), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(-var_0.e), (var_0.e & var_2.e) >> (u_input.a.wwz % vec3<u32>(32u))), Struct_2(func_1(), false, var_0.c, false, -vec3<i32>(min(-23997i, -2147483647i), 0i, var_0.e.x & var_0.a.a)));
    var_0 = var_3.c;
    var_2 = Struct_2(func_2(), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_2.c)))) - -1208f))), var_3.c.b, vec3<i32>(u_input.c, global0.a, 3869i));
    global0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1610f)), var_2.c) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3.c.c))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, -702f))))));
}

