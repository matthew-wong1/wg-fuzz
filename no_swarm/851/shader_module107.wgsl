struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> bool {
    let var_0 = ~_wgslsmith_mod_vec3_u32(~select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<u32>(u_input.a.x, 17696u, u_input.a.x), arg_3.zzy), _wgslsmith_add_vec3_u32(vec3<u32>(51752u, 5211u, 1u) | min(vec3<u32>(82016u, u_input.a.x, 27722u), vec3<u32>(u_input.a.x, 61088u, u_input.a.x)), vec3<u32>(88018u, ~u_input.a.x, 18570u | u_input.a.x)));
    let var_1 = Struct_1(~_wgslsmith_mod_i32(0i, u_input.b), _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(f32(-1f) * -1627f)), _wgslsmith_f_op_f32(select(arg_0, -1881f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-746f))))), _wgslsmith_f_op_f32(-arg_0));
    return any(vec4<bool>(true, !(!arg_3.x) || (all(arg_2.yy) | !arg_3.x), arg_3.x && false, false));
}

fn func_2(arg_0: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_2(305f);
    let var_1 = _wgslsmith_sub_vec2_i32(~(-_wgslsmith_div_vec2_i32(~vec2<i32>(-2147483647i, u_input.b), -vec2<i32>(u_input.b, u_input.b))), (vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -2147483647i))) | firstTrailingBit(firstLeadingBit(firstLeadingBit(vec2<i32>(10987i, 6310i)))));
    var var_2 = ~_wgslsmith_sub_vec2_i32(-((var_1 << (arg_0 % vec2<u32>(32u))) | abs(vec2<i32>(var_1.x, u_input.b))), var_1);
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a + var_0.a))))));
    var var_4 = max(25317i, -var_1.x | var_2.x);
    return !vec4<bool>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, u_input.b, u_input.b, 1i), vec4<i32>(u_input.b, var_1.x, var_1.x, -2147483647i)) >= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, var_1.x), -2147483647i, var_2.x), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)) != true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.a)) * _wgslsmith_f_op_f32(floor(-1861f))), var_0.a, select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true)), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))));
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = Struct_1(~(~(~u_input.b)), arg_2.x, -959f, arg_2, arg_2.x);
    var_0 = Struct_1(u_input.b ^ _wgslsmith_sub_i32(max(1i, -1i << (u_input.a.x % 32u)), _wgslsmith_mult_i32(-u_input.b, -2147483647i)), _wgslsmith_f_op_f32(round(425f)), 1000f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d - vec3<f32>(_wgslsmith_div_f32(-706f, -1412f), var_0.d.x, _wgslsmith_f_op_f32(min(-563f, -948f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)) * var_0.d)), 1f);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * 1000f) + var_0.c), _wgslsmith_f_op_f32(-970f + _wgslsmith_f_op_f32(1000f + var_0.c)));
    var var_2 = ~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(-62356i, var_0.a), min(select(vec2<i32>(u_input.b, 25938i), vec2<i32>(u_input.b, 28303i), arg_0.x), vec2<i32>(826i, -1i))), countOneBits(vec2<i32>(i32(-1i) * -2147483647i, u_input.b | 2147483647i)), ~abs(~vec2<i32>(var_0.a, u_input.b)));
    var_0 = Struct_1(-(~(-46851i)), 761f, var_1.x, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1002f, _wgslsmith_f_op_f32(2903f * var_1.x), arg_2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) * vec3<f32>(-260f, _wgslsmith_f_op_f32(-191f + var_0.c), _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_div_f32(var_1.x, var_1.x));
    return vec3<i32>(~(-min(_wgslsmith_mod_i32(u_input.b, var_0.a), var_0.a)), ~var_0.a, var_2.x);
}

fn func_1() -> vec3<i32> {
    return reverseBits(~_wgslsmith_sub_vec3_i32(func_4(func_2(vec2<u32>(u_input.a.x, u_input.a.x)), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, -800f, 650f))), ~(~vec3<i32>(2147483647i, -8427i, u_input.b))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = var_0;
    return Struct_2(-909f);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> u32 {
    let var_0 = -11123i;
    return firstTrailingBit(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_6(func_5(Struct_1(_wgslsmith_add_i32(u_input.b, 0i), 499f, 1f, _wgslsmith_f_op_vec3_f32(vec3<f32>(1310f, 1000f, -1616f) + vec3<f32>(-471f, -890f, -1184f)), _wgslsmith_f_op_f32(-485f + 116f)), true, func_1(), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), 74066i <= u_input.b)), Struct_2(_wgslsmith_f_op_f32(trunc(-309f))), 1i), ~(~u_input.a.x), reverseBits(9220u), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1538f * 702f), _wgslsmith_f_op_f32(select(264f, -186f, true)))) - -1090f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-916f))))));
    let var_2 = ~(~select(_wgslsmith_add_vec4_u32(var_0, var_0), var_0, true)) | _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(~var_0, vec4<u32>(u_input.a.x, var_0.x, 69165u, u_input.a.x), vec4<u32>(4768u, u_input.a.x, var_0.x, var_0.x)), vec4<u32>(abs(1u), _wgslsmith_clamp_u32(16057u, _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(1u, 72751u, var_0.x, 73843u)), firstTrailingBit(var_0.x)), 9455u, 25710u), vec4<u32>(select(4294967295u, var_0.x, u_input.a.x <= 42834u), var_0.x, ~(~var_0.x), reverseBits(~69604u)));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(488f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-370f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(reverseBits(~11989i)), 0i, u_input.a.x);
}

