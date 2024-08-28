struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = 1810f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_0))))), 566f)), _wgslsmith_f_op_f32(floor(585f)), 1475f);
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = func_3(global0.a, arg_2, arg_2);
    var_0 = !(!any(select(vec2<bool>(false, true), vec2<bool>(true, true), false)) || false);
    global0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 254f, -409f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -660f))))));
    var var_2 = vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -828f));
    return abs(-(~(~firstTrailingBit(vec4<i32>(-33550i, 7018i, -2147483647i, global0.a)))));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = abs(abs(~min(arg_1, reverseBits(arg_1))));
    global0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~(~(-34700i)), reverseBits(_wgslsmith_mod_i32(arg_2.x, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, 41244i), arg_2.wy), global0.a), arg_2));
    let var_1 = Struct_1(~(-11098i));
    var var_2 = Struct_1(_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(arg_2.x, 1i), _wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(1i, arg_2.x, arg_2.x, global0.a))), ~(-28983i)));
    var var_3 = select(vec3<bool>(any(vec4<bool>(true, u_input.a.x > 42145u, true, true)), false & select(true, true, false), func_3(~var_1.a, Struct_1(2147483647i), var_1) & any(vec4<bool>(true, true, true, true))), !(!vec3<bool>(true, u_input.a.x < 4294967295u, true)), true);
    return select(vec2<bool>(true, any(vec4<bool>(var_3.x, var_3.x, var_3.x, true))), var_3.yy, vec2<bool>(arg_2.x != reverseBits(-1i << (var_0.x % 32u)), var_3.x));
}

fn func_5(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(-_wgslsmith_add_i32(global0.a, 0i));
    var var_0 = arg_0.x;
    global0 = Struct_1(~global0.a);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, 1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(3079f)))) >= -114f;
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-17750i, 0i, global0.a)), select(vec3<i32>(global0.a, global0.a, -55738i), vec3<i32>(-1i, global0.a, 0i), arg_0.x)) | -vec3<i32>(global0.a, global0.a, -19421i), vec3<i32>(_wgslsmith_mod_i32(global0.a, 2147483647i), global0.a, global0.a | _wgslsmith_mult_i32(global0.a, 5058i))));
    return Struct_1(2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = func_5(func_4(countOneBits(7565u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x & 4163u, reverseBits(u_input.a.x), ~82545u), firstLeadingBit(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x))), func_2(vec3<f32>(_wgslsmith_f_op_f32(-1032f * -800f), _wgslsmith_f_op_f32(ceil(292f)), _wgslsmith_f_op_f32(818f * -163f)), -2147483647i, arg_3)));
    let var_0 = arg_1;
    global0 = func_5(func_4(u_input.a.x, ~vec4<u32>(~41546u, ~119930u, 50270u, abs(1u)), max(abs(vec4<i32>(-2147483647i, arg_2.a, 1i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, arg_3.a), func_2(vec3<f32>(-895f, -2042f, 801f), arg_0.a, Struct_1(arg_2.a))))));
    var var_1 = !(-770f < _wgslsmith_f_op_f32(trunc(343f)));
    var var_2 = _wgslsmith_f_op_f32(-744f + -266f);
    return Struct_1(-8959i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(-314f));
    global0 = Struct_1(global0.a);
    let var_1 = Struct_1(abs(~max(_wgslsmith_add_i32(-1i, 1i), arg_0.a)));
    var var_2 = -(~(~global0.a));
    var var_3 = func_1(arg_1, Struct_1(-var_1.a), arg_0, Struct_1(max(-global0.a, arg_1.a)));
    return func_4(reverseBits(0u), select(_wgslsmith_add_vec4_u32(vec4<u32>(11239u, 34793u, u_input.a.x, 1u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(56647u, u_input.a.x, 0u, 31655u), vec4<u32>(u_input.a.x, 9897u, 1u, u_input.a.x)), (vec4<u32>(4294967295u, 76235u, u_input.a.x, 114090u) | vec4<u32>(66347u, 4294967295u, u_input.a.x, 0u)) >> (abs(vec4<u32>(u_input.a.x, 1u, 18457u, u_input.a.x)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), ~_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, var_3.a, global0.a, arg_0.a), min(vec4<i32>(arg_0.a, -2147483647i, arg_1.a, -11870i), vec4<i32>(arg_1.a, 1i, -1i, 2147483647i)))).x || !all(vec3<bool>(select(true, true, false), true, all(vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(global0.a | -2147483647i, _wgslsmith_add_i32(global0.a, -2147483647i), -6490i, 1i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1039f))));
    let var_2 = _wgslsmith_mult_vec4_i32(select(~vec4<i32>(-51398i, 2147483647i, 1i, -9117i), var_0, func_6(Struct_1(var_0.x), func_1(Struct_1(global0.a), Struct_1(22011i), Struct_1(-1i), Struct_1(-2147483647i)))) ^ var_0, vec4<i32>(global0.a, _wgslsmith_mult_i32(reverseBits(-1i), -(var_0.x << (u_input.a.x % 32u))), _wgslsmith_dot_vec4_i32(var_0, var_0), select(func_2(vec3<f32>(1091f, 693f, 1313f), global0.a, func_1(Struct_1(10423i), Struct_1(-2147483647i), Struct_1(73281i), Struct_1(var_0.x))).x, min(~9613i, global0.a), true | func_6(Struct_1(0i), Struct_1(36583i)))));
    global0 = Struct_1(reverseBits(global0.a));
    global0 = func_1(Struct_1(~(~reverseBits(-1868i))), func_5(select(vec2<bool>(true, func_3(global0.a, Struct_1(var_2.x), Struct_1(1i))), vec2<bool>(true, true), !func_6(Struct_1(2147483647i), Struct_1(var_2.x)))), func_5(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), func_1(Struct_1(global0.a), Struct_1(var_2.x), func_5(func_4(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 32730u, u_input.a.x)), vec4<i32>(var_2.x, var_2.x, 0i, 8290i))), Struct_1(var_2.x)));
    var var_3 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(min(-1072f, 840f)));
    let var_4 = Struct_1(~_wgslsmith_add_i32(-1i, var_2.x));
    let var_5 = Struct_1(i32(-1i) * -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(var_0.x, abs(-2147483647i))), var_2.x, ~global0.a, var_0.x));
}

