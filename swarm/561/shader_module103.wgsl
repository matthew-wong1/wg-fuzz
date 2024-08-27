struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 10>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_3.x;
    let var_1 = _wgslsmith_mod_vec4_u32(arg_3, ~arg_3);
    var var_2 = max(vec3<i32>(-2147483647i, -1i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, abs(~42551i), i32(-1i) * -41i), vec3<i32>(_wgslsmith_mult_i32(-27101i, firstLeadingBit(29412i)), 2147483647i, 1i)));
    var_2 = abs(_wgslsmith_sub_vec3_i32(abs(global0[_wgslsmith_index_u32(var_1.x, 10u)] >> (vec3<u32>(4294967295u, u_input.a, 0u) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(4294967295u), ~arg_1), 10u)])) ^ vec3<i32>(var_2.x, _wgslsmith_sub_i32(2147483647i, reverseBits(var_2.x)), _wgslsmith_mult_i32(abs(27688i), var_2.x));
    var var_3 = arg_0;
    return arg_2.x;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global1 = countOneBits(reverseBits(arg_1.c.x));
    let var_0 = Struct_2(select(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, arg_1.c.x == _wgslsmith_add_i32(arg_1.c.x | arg_1.c.x, ~401i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_1.a * -470f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.a) * -1323f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(902f, arg_1.a, 1360f, -1267f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, 964f, arg_1.a) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a, -1424f, arg_1.a, 1359f))))) - vec4<f32>(_wgslsmith_f_op_f32(max(1000f, arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, true))), _wgslsmith_f_op_f32(arg_1.a - arg_1.a), 569f)));
    global0 = array<vec3<i32>, 10>();
    global2 = array<vec2<i32>, 10>();
    return arg_1.c;
}

fn func_2(arg_0: f32, arg_1: u32) -> u32 {
    global1 = -1i | ~(~firstLeadingBit(firstTrailingBit(-2147483647i)));
    let var_0 = u_input.b.xz;
    var var_1 = abs(33184u);
    var var_2 = abs(min(reverseBits(vec4<i32>(-1i, -2147483647i, -2147483647i, 0i)), vec4<i32>(_wgslsmith_div_i32(0i, 1i), -4264i >> (1u % 32u), abs(-32174i), 1i)) & _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(func_3(var_0.x, Struct_1(arg_0, u_input.b.yx, vec4<i32>(1i, 1i, 2719i, 17806i))), func_3(30633u, Struct_1(1925f, var_0, vec4<i32>(0i, 1i, 1i, 0i)))), max(-vec4<i32>(-27440i, -48992i, 0i, 0i), firstTrailingBit(vec4<i32>(-5598i, 1i, 2147483647i, 1i))), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(-1i, -1i, -1i, -10387i)), abs(vec4<i32>(-2147483647i, -2490i, 2147483647i, 18652i)))));
    global0 = array<vec3<i32>, 10>();
    return 0u;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<vec3<i32>, 10>();
    let var_0 = Struct_2(arg_0.x);
    let var_1 = -2147483647i;
    global0 = array<vec3<i32>, 10>();
    let var_2 = var_0;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), arg_2, countOneBits(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, var_1, 2147483647i, var_1), vec4<i32>(var_1, var_1, var_1, -1i), arg_0) >> (countOneBits(vec4<u32>(1u, 61263u, arg_2.x, 3677u)) % vec4<u32>(32u)), -vec4<i32>(var_1, -9844i, var_1, 17676i) >> (~vec4<u32>(76617u, 14903u, u_input.b.x, 11005u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(7502i, -1i, var_1, -1i) << (vec4<u32>(0u, u_input.a, 0u, 85062u) % vec4<u32>(32u)), countOneBits(vec4<i32>(var_1, var_1, 1i, var_1))))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_2.x, arg_1.b.x, 0u, 0u) ^ vec4<u32>(98019u, arg_2.x, arg_2.x, 0u)), abs(vec4<u32>(arg_1.b.x, 2555u, arg_1.b.x, u_input.b.x)) | vec4<u32>(u_input.a, 40868u, 27625u, u_input.a)) > u_input.b.x);
    global1 = arg_1.c.x;
    global0 = array<vec3<i32>, 10>();
    var var_1 = arg_2.zx;
    return Struct_2(func_4(!(!vec4<bool>(false, false, var_0.a, var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 49241u), arg_2.xx) | firstTrailingBit(vec2<u32>(arg_2.x, 57211u))).a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1419f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1263f - 852f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(776f - -1242f) * -146f) + 212f)), func_4(vec4<bool>(u_input.b.x <= u_input.b.x, true, func_1(Struct_2(false), u_input.a << (u_input.a % 32u), vec4<bool>(true, true, true, true), select(vec4<u32>(u_input.a, 26420u, u_input.b.x, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 31621u), vec4<bool>(true, false, false, true))), true), -1413f, vec2<u32>(func_2(1928f, _wgslsmith_sub_u32(1u, u_input.b.x)), u_input.a)), ~u_input.b);
    global0 = array<vec3<i32>, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1313f, 179f, -1135f, 487f)), vec4<f32>(-1904f, -1308f, -2120f, 562f)))))));
    global2 = array<vec2<i32>, 10>();
    let var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -(i32(-1i) * -5315i), reverseBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, ~33542i))), ~max(select(~vec4<u32>(0u, 30002u, u_input.b.x, u_input.a), ~vec4<u32>(80105u, 68660u, u_input.b.x, 3718u), select(vec4<bool>(true, var_2.a, true, var_2.a), vec4<bool>(true, var_2.a, true, false), vec4<bool>(false, false, false, var_0.a))), countOneBits(vec4<u32>(u_input.b.x, 134734u, 30192u, 1000u)) >> (~vec4<u32>(36706u, 1u, u_input.a, 41881u) % vec4<u32>(32u))), u_input.a, _wgslsmith_f_op_f32(abs(-635f)));
}

