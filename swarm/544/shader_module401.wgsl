struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> f32 {
    return arg_0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>) -> f32 {
    let var_0 = select(!vec3<bool>(false, (-3694i << (u_input.b.x % 32u)) < 1i, !arg_0.a), vec3<bool>(arg_0.a, false, true), !select(any(vec2<bool>(arg_0.a, true)), arg_0.a, any(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(true, false, false, arg_0.a), vec4<bool>(true, arg_0.a, false, arg_0.a)))));
    return -576f;
}

fn func_1(arg_0: bool, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(arg_0, arg_1, -299f, -250f), -1828f, vec2<u32>(u_input.a.x, u_input.a.x), arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(true, 1i, -894f, -864f), vec3<u32>(u_input.b.x, u_input.b.x, 0u), vec4<f32>(1690f, 1854f, -861f, 679f))) - 379f))) * _wgslsmith_f_op_f32(-1f));
    var var_1 = arg_1;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = firstTrailingBit(vec3<i32>(arg_0.b, 2371i, -76941i));
    var_0 = ~vec3<i32>(arg_0.b, -1i, ~6107i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(11265u, ~u_input.a.x, ~(~744u)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, 0u), ~vec3<u32>(20968u, 4294967295u, 1u))) % vec3<u32>(32u));
    var var_1 = arg_0;
    let var_2 = vec2<i32>(var_1.b, _wgslsmith_mult_i32(_wgslsmith_add_i32(~arg_0.b | ~0i, 1i & firstTrailingBit(arg_0.b)), ~var_0.x));
    var_1 = arg_0;
    return Struct_1(!any(vec2<bool>(arg_0.a, var_1.a)) || all(!(!vec4<bool>(arg_1, false, arg_1, arg_0.a))), ~_wgslsmith_add_i32(-_wgslsmith_add_i32(var_1.b, arg_0.b), select(_wgslsmith_mult_i32(var_0.x, arg_0.b), var_1.b & var_0.x, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d, var_1.d))), arg_0.d, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c - arg_0.c))), _wgslsmith_f_op_f32(-arg_0.c)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) * arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(true, ~firstTrailingBit(-1i) | firstTrailingBit(1i), -316f, 398f), func_1(1u < u_input.b.x, ~countOneBits(-2147483647i)));
    var_0 = func_4(func_4(func_4(Struct_1(func_1(var_0.a, var_0.b), var_0.b, _wgslsmith_div_f32(var_0.c, 347f), var_0.c), var_0.a), !var_0.a), var_0.a);
    var var_1 = func_4(func_4(func_4(Struct_1(true, -var_0.b, 1000f, _wgslsmith_f_op_f32(var_0.c + 1000f)), any(select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, var_0.a)))), 1u >= ~_wgslsmith_div_u32(u_input.b.x, 54755u)), !(func_4(func_4(Struct_1(var_0.a, -23089i, -761f, var_0.c), var_0.a), var_0.a).a | true));
    var_0 = func_4(Struct_1(false, var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.d))), var_0.c), !(!func_4(Struct_1(var_1.a, 19485i, var_0.d, var_1.d), true | var_1.a).a));
    var_0 = Struct_1(func_1(true, _wgslsmith_sub_i32(-select(var_1.b, -373i, var_0.a), countOneBits(abs(var_1.b)))), _wgslsmith_add_i32(~max(var_0.b, var_1.b), var_1.b) >> (countOneBits(~u_input.a.x) % 32u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.c)))), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d - var_0.d))))));
    let var_2 = func_4(Struct_1(true, abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, -2147483647i, -2147483647i), vec3<i32>(var_0.b, var_0.b, -47573i)), -vec3<i32>(-1i, -91808i, var_0.b))), var_1.c, var_0.c), var_0.a);
    let var_3 = abs(_wgslsmith_add_vec3_i32(-(max(vec3<i32>(var_1.b, var_0.b, 84089i), vec3<i32>(17615i, var_0.b, var_1.b)) | (vec3<i32>(10661i, -1i, var_1.b) & vec3<i32>(-1i, -1i, var_1.b))), vec3<i32>(-9716i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, -51425i, var_1.b, var_0.b) | vec4<i32>(-2147483647i, -67463i, var_0.b, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b, var_1.b, var_1.b, var_0.b), vec4<i32>(var_2.b, -6436i, var_2.b, var_0.b))), -2147483647i)));
    var var_4 = func_4(Struct_1(true, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_2.b, 2147483647i, 1i, var_0.b), vec4<i32>(var_0.b, 1i, -2147483647i, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, 1i, 1250i, var_3.x), vec4<i32>(var_3.x, var_3.x, -50370i, var_2.b))), var_3.x), 1334f, 124f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(func_4(Struct_1(true, var_1.b, var_0.c, -1183f), true), _wgslsmith_f_op_f32(func_3(var_2, vec3<u32>(1u, 41872u, 0u), vec4<f32>(var_1.d, 1121f, var_2.d, 562f))), vec2<u32>(18320u, u_input.b.x), !var_0.a)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-304f - _wgslsmith_f_op_f32(var_1.d * var_1.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, -1240f, 1848f), vec3<f32>(var_0.d, 289f, var_0.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, 112f, var_2.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1958f, var_0.c, -543f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d, -1000f, 747f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d, 863f, -1770f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 153f, var_2.d) - vec3<f32>(-471f, var_4.c, var_0.d))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(580f)))), -1071f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d, -1390f) + vec2<f32>(var_4.c, var_1.d))))), var_3.x);
}

