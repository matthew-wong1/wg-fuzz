struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = 528f;
    var var_1 = arg_1;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), -188f), vec2<u32>(var_1.b.x ^ var_1.b.x, 39455u), arg_0.x);
    var_0 = -1286f;
    var_2 = Struct_1(var_2.a, firstLeadingBit(select(arg_0, arg_1.b << (min(arg_1.b, vec2<u32>(var_1.c, arg_0.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(arg_1.a.x * -1000f) != _wgslsmith_f_op_f32(sign(var_1.a.x)))), ~(~(~(var_1.b.x | u_input.c))));
    return -2147483647i;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(2551f, 257f) * vec2<f32>(510f, 1360f)), vec2<f32>(-643f, 571f)))))), vec2<u32>(~abs(u_input.b), _wgslsmith_clamp_u32(30318u, max(0u, u_input.a), _wgslsmith_div_u32(u_input.b, u_input.c))) >> (~(~vec2<u32>(u_input.b, 12946u)) % vec2<u32>(32u)), 1473u);
    var var_1 = 344f;
    var_1 = var_0.a.x;
    let var_2 = 5200i;
    let var_3 = -_wgslsmith_mult_vec3_i32(~vec3<i32>(-var_2, func_3(vec2<u32>(81945u, 1u), Struct_1(var_0.a, var_0.b, u_input.a)), ~var_2), vec3<i32>(var_2, _wgslsmith_add_i32(var_2, var_2), 91935i));
    return -1180f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = arg_2.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(660f * var_0)))));
    let var_2 = select(firstLeadingBit(~firstTrailingBit(vec4<i32>(2147483647i, -1i, 12583i, 56846i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, 4209i, -2147483647i), vec4<i32>(-1353i, 2147483647i, 2147483647i, 33769i), vec4<i32>(-2147483647i, 17601i, -7999i, 2147483647i)), abs(-vec4<i32>(23742i, -1i, -33644i, 0i))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -8476i, -7211i, -1i), vec4<i32>(0i, -21921i, -1i, 13118i)), 45535i, i32(-1i) * -27424i, 1i)), !vec4<bool>(true, !any(vec4<bool>(false, true, true, false)), true, true));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.a, arg_1.a)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.x, -1000f), arg_1.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.a)))), _wgslsmith_f_op_vec2_f32(-arg_0.a)), vec2<u32>(0u, min(~(arg_3 & arg_0.b.x), arg_1.b.x)), _wgslsmith_mod_u32(abs(arg_3), ~(~(u_input.c >> (1u % 32u)))));
    var var_4 = abs(~(~(~u_input.a)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(round(var_3.a)), vec2<u32>(countOneBits(u_input.c), 0u), 4294967295u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = 1057f;
    let var_2 = Struct_1(arg_1.a, ~_wgslsmith_add_vec2_u32(abs(~arg_2.b), ~vec2<u32>(4294967295u, u_input.a) >> ((vec2<u32>(51649u, 27271u) >> (arg_1.b % vec2<u32>(32u))) % vec2<u32>(32u))), ~u_input.b);
    var var_3 = func_1(var_2, func_1(arg_2, Struct_1(arg_1.a, ~var_2.b, ~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.a)))), 1u), vec2<f32>(var_2.a.x, arg_1.a.x), var_2.c);
    var var_4 = arg_1;
    return ~(~vec4<u32>(_wgslsmith_mult_u32(u_input.b << (var_4.b.x % 32u), 71044u), var_4.c, 0u, ~min(0u, 23511u)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = 53702u;
    var var_1 = true;
    var_1 = false;
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-343f, -1000f))), firstLeadingBit(vec2<u32>(54982u, 75338u)), 0u), func_1(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 136f)), ~vec2<u32>(1u, var_0), ~u_input.c), func_1(func_1(Struct_1(vec2<f32>(246f, 225f), vec2<u32>(var_0, 6864u), var_0), Struct_1(vec2<f32>(493f, 122f), vec2<u32>(74793u, arg_1), 4294967295u), vec2<f32>(1000f, -1270f), 4294967295u), Struct_1(vec2<f32>(866f, -820f), vec2<u32>(u_input.c, arg_1), 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(2238f, 1637f) + vec2<f32>(-378f, -935f)), u_input.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1121f, -1000f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1806f, 1000f)))), 3171u), func_1(func_1(Struct_1(vec2<f32>(1000f, -1000f), vec2<u32>(0u, u_input.c), u_input.b), Struct_1(vec2<f32>(459f, -1696f), vec2<u32>(u_input.a, 4294967295u), 4294967295u), vec2<f32>(-162f, 607f), abs(u_input.a)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(921f, -2249f) - vec2<f32>(-337f, 1162f)), abs(vec2<u32>(4294967295u, 49463u)), _wgslsmith_mod_u32(arg_1, 4294967295u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-823f, 776f) * vec2<f32>(1056f, 1985f)))), var_0), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), -1040f), ~(~41285u)), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(-1171f, _wgslsmith_f_op_f32(-1f)))), ~var_0);
    var_1 = !all(!vec3<bool>(any(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true)), arg_3.x != arg_0));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, var_2.a.x), _wgslsmith_f_op_vec2_f32(sign(var_2.a)))))), -293f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(1i ^ -_wgslsmith_clamp_i32(firstTrailingBit(-27251i), -4972i << (u_input.b % 32u), -2147483647i), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.b, 19145u, u_input.c), vec4<u32>(u_input.a, 10013u, 0u, u_input.c)), abs(vec4<u32>(4294967295u, 74466u, 0u, 1u))), func_4(false, Struct_1(vec2<f32>(248f, -775f), vec2<u32>(u_input.b, u_input.b), 7764u), func_1(Struct_1(vec2<f32>(-409f, -2054f), vec2<u32>(131135u, u_input.c), 15391u), Struct_1(vec2<f32>(1565f, 1000f), vec2<u32>(u_input.b, 4294967295u), 29625u), vec2<f32>(291f, 137f), u_input.b), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)))), abs(~(~vec4<u32>(u_input.b, 47235u, u_input.a, u_input.c)))), -52232i, max(vec3<i32>(33102i, -1i, 1i), max(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-7334i, -1i, 0i), vec3<i32>(0i, 33274i, -18991i))), firstLeadingBit(~vec3<i32>(2147483647i, -24371i, -20636i)))));
}

