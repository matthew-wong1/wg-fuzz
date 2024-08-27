struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = ~_wgslsmith_add_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.b, -1i, arg_1.b, arg_0.b.b), vec4<i32>(0i, arg_1.b, arg_1.b, arg_0.b.b)), -arg_1.b) << (arg_0.b.a % 32u);
    var_0 = max(~arg_0.b.b, arg_1.b);
    let var_1 = arg_1;
    var var_2 = arg_0;
    let var_3 = ~countOneBits(vec2<i32>(-(i32(-1i) * -1i), _wgslsmith_div_i32(54036i, var_2.b.b) >> (~arg_1.a % 32u)));
    return -1i;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    let var_0 = Struct_1(u_input.a.x, -6392i);
    var var_1 = arg_0;
    let var_2 = var_0;
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, reverseBits(_wgslsmith_sub_u32(42488u, var_2.a) | var_0.a)), vec2<u32>(4294967295u, ~1u));
    let var_4 = true;
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a;
    let var_1 = Struct_1(~u_input.a.x, arg_3.b.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, 278f, true))))) + -832f) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1087f)), var_0));
    var var_3 = -_wgslsmith_sub_vec3_i32(abs(min(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.b.b, var_1.b, -920i), vec3<i32>(-2147483647i, 38064i, 2147483647i)), ~vec3<i32>(arg_3.b.b, -73524i, 7150i))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-56278i, -2147483647i, 0i)), max(vec3<i32>(arg_3.b.b, 1i, -8442i) >> (vec3<u32>(u_input.a.x, 0u, 4294967295u) % vec3<u32>(32u)), min(vec3<i32>(var_1.b, -48119i, arg_3.b.b), vec3<i32>(var_1.b, var_1.b, -36990i)))));
    var var_4 = Struct_1(1u, 2147483647i);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-arg_3.a))), arg_1) + -1252f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(firstLeadingBit(2147483647i), ~1i), 1i << (_wgslsmith_dot_vec3_u32(u_input.a.zwz, u_input.a.wzz) % 32u), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -30507i, 1i), vec4<i32>(1i, -1i, 21539i, 1i))), countOneBits(vec3<i32>(i32(-1i) * -1i, abs(2147483647i), ~2147483647i))), vec3<i32>(~2147483647i, -30529i, -1i) & vec3<i32>(abs(func_1(Struct_2(-601f, Struct_1(0u, -2335i)), Struct_1(22068u, -3778i))), -2147483647i, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(2821f, 349f, 972f, -622f) + vec4<f32>(-1000f, -1140f, 330f, -1469f)), vec4<bool>(true, true, true, true), -1i << (u_input.a.x % 32u))));
    let var_1 = false;
    let var_2 = ~(-_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_0.x, -1i), select(vec3<i32>(31339i, var_0.x, var_0.x), vec3<i32>(var_0.x, -2147483647i, 15319i), var_1), vec3<i32>(var_0.x, var_0.x, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -1i, var_0.x), vec3<i32>(-22777i, 2147483647i, var_0.x))));
    var var_3 = true;
    let var_4 = Struct_2(_wgslsmith_f_op_f32(func_3((_wgslsmith_div_u32(u_input.a.x, 1u) << (1u % 32u)) & 2126u, 613f, 1u, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(770f * -120f), _wgslsmith_f_op_f32(ceil(-488f))), Struct_1(~u_input.a.x, var_2.x)))), Struct_1(u_input.a.x, _wgslsmith_mod_i32(max(1i, ~49699i), var_0.x)));
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -33683i, var_4.b.b, var_0.x), vec4<i32>(42615i, var_0.x, -8614i, 10668i)), max(vec4<i32>(var_0.x, var_2.x, var_4.b.b, 1i), vec4<i32>(var_0.x, 0i, var_4.b.b, -39264i)), -vec4<i32>(var_0.x, 2147483647i, -2147483647i, -3294i))), vec4<i32>(-1i, 25994i, _wgslsmith_mult_i32(select(var_0.x, 2147483647i, false), -29479i), ~var_4.b.b)), countOneBits(2147483647i), -1i);
    var var_5 = var_4.b;
    let var_6 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.a, 472f) - vec2<f32>(var_4.a, var_4.a))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_4.a, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(var_4.a, -1296f), vec2<f32>(490f, var_4.a)), any(vec3<bool>(false, true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zz, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-119f, -308f, var_6.x), vec3<f32>(1415f, -606f, -793f), vec3<bool>(true, true, var_1))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6.x, var_4.a, -212f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_4.a, -1943f))), min(select(vec2<i32>(-1i) * -vec2<i32>(var_2.x, var_0.x), _wgslsmith_mod_vec2_i32(vec2<i32>(var_4.b.b, var_0.x) | var_0.yz, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_5.b, var_0.x), vec2<i32>(16961i, -2147483647i), var_0.xz)), (var_4.b.a & 33424u) == _wgslsmith_div_u32(var_4.b.a, 1u)), -_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 0i), abs(vec2<i32>(-2147483647i, -92738i)))));
}

