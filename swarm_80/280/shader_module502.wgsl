struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = !select(select(select(vec2<bool>(true, arg_0), !vec2<bool>(false, arg_0), arg_0), vec2<bool>(true, true), select(select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, true), vec2<bool>(true, true))), select(select(vec2<bool>(arg_0, true), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(true, true), false)), !vec2<bool>(arg_0, false), vec2<bool>(all(vec4<bool>(arg_0, true, arg_0, true)), true)), vec2<bool>(false, !select(arg_0, arg_0, false)));
    let var_1 = Struct_2(arg_1, true, _wgslsmith_dot_vec2_u32(countOneBits(~min(vec2<u32>(18587u, 4231u), vec2<u32>(1u, 10568u))), (vec2<u32>(9009u, u_input.a) ^ firstLeadingBit(vec2<u32>(arg_1.b, 29367u))) >> ((firstTrailingBit(vec2<u32>(u_input.a, 0u)) << (select(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(84889u, arg_1.b), vec2<bool>(var_0.x, var_0.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), false, min(_wgslsmith_mod_i32(-u_input.b.x << (select(u_input.a, u_input.a, var_0.x) % 32u), u_input.b.x), u_input.b.x));
    let var_2 = var_1.a;
    var_0 = vec2<bool>(var_0.x, all(!(!(!vec4<bool>(arg_0, false, var_0.x, true)))));
    global0 = firstLeadingBit(75280i);
    return true;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.x;
    global0 = u_input.b.x;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -593f), 0u), func_3(true, Struct_1(_wgslsmith_f_op_f32(sign(-790f)), 0u)), 0u, true, i32(-1i) * -2147483647i);
    let var_2 = i32(-1i) * -_wgslsmith_add_i32(abs(var_1.e), var_0);
    var var_3 = _wgslsmith_f_op_f32(sign(var_1.a.a));
    return Struct_2(Struct_1(var_1.a.a, ~(~u_input.a) & max(~u_input.a, 1u)), true, 0u, true & var_1.d, _wgslsmith_clamp_i32((i32(-1i) * -37123i) >> (1u % 32u), -(~var_0), i32(-1i) * -25896i));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = abs(vec3<u32>(4553u, 4294967295u, ~_wgslsmith_add_u32(arg_3.x, u_input.a) & ~4294967295u));
    let var_1 = !vec3<bool>(func_3(!all(vec4<bool>(arg_1.d, true, true, arg_1.b)), arg_1.a), !any(!vec4<bool>(arg_1.d, arg_1.d, false, false)), true);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(~arg_1.e, _wgslsmith_sub_i32(-2147483647i, arg_1.e)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-34262i >> (arg_3.x % 32u), -arg_1.e), max(abs(-41375i), _wgslsmith_dot_vec4_i32(vec4<i32>(48576i, arg_1.e, u_input.b.x, u_input.b.x), vec4<i32>(arg_1.e, 2147483647i, arg_1.e, u_input.b.x))), u_input.b.x)), i32(-1i) * -39034i);
    var var_3 = vec4<i32>(arg_1.e, u_input.b.x ^ 0i, u_input.b.x, ~abs(~(arg_1.e & 2147483647i)));
    global0 = ~(-_wgslsmith_add_i32(12353i << (u_input.a % 32u), -6448i) << (arg_2.x % 32u));
    return vec4<i32>(-1i) * -vec4<i32>(~(-var_3.x), 1i, var_3.x, 0i);
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(max(max(vec4<i32>(15267i, 1i, u_input.b.x, 0i), vec4<i32>(34651i, -2147483647i, 21523i, -2147483647i)), vec4<i32>(0i, u_input.b.x, -11623i, 2147483647i) << (vec4<u32>(0u, u_input.a, 26288u, 19112u) % vec4<u32>(32u))), vec4<i32>(48699i ^ u_input.b.x, firstTrailingBit(u_input.b.x), -u_input.b.x, u_input.b.x)), firstTrailingBit(-func_4(_wgslsmith_div_f32(-1500f, -102f), func_2(), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(63698u, u_input.a, u_input.a), vec3<u32>(65563u, u_input.a, 4294967295u)))));
    global0 = -u_input.b.x | 2147483647i;
    let var_0 = true;
    global0 = ~2147483647i;
    var var_1 = 4294967295u;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-823f, -513f), _wgslsmith_f_op_f32(-417f - -812f))))), 9581u);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global0 = ~arg_1;
    var var_0 = select(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(func_4(1000f, Struct_2(Struct_1(1521f, arg_0.b), false, 36474u, false, arg_1), vec4<u32>(1u, 11256u, 9576u, u_input.a), vec3<u32>(u_input.a, 28411u, arg_0.b)).xyw << (vec3<u32>(27703u, arg_0.b, arg_0.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, arg_1, u_input.b.x)), reverseBits(vec3<i32>(2147483647i, -14935i, -2147483647i)))), firstTrailingBit(abs(vec3<i32>(46289i, u_input.b.x, 2147483647i)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, u_input.a), vec3<u32>(24839u, arg_0.b, u_input.a)) % vec3<u32>(32u))), vec3<i32>(27902i, -32481i, arg_1)), vec3<i32>(~func_4(arg_0.a, Struct_2(arg_0, false, 0u, false, 19816i), vec4<u32>(arg_0.b, 4294967295u, arg_0.b, u_input.a), vec3<u32>(4294967295u, 0u, 91905u)).x, arg_1, ~(75385i << (1u % 32u))) & ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, arg_1, arg_1), vec4<i32>(2147483647i, arg_1, arg_1, arg_1)), u_input.b.x, ~u_input.b.x), !(-1000f < arg_0.a));
    var_0 = _wgslsmith_sub_vec3_i32(~(vec3<i32>(arg_1, ~u_input.b.x, arg_1) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-25759i, 0i, -1i), abs(vec3<i32>(2147483647i, 20917i, u_input.b.x)))), firstTrailingBit(vec3<i32>(~arg_1 >> (u_input.a % 32u), 2147483647i, _wgslsmith_sub_i32(arg_1, ~(-36615i)))));
    let var_1 = Struct_2(func_2().a, any(select(vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), 1u, true, _wgslsmith_mult_i32(10736i, var_0.x));
    var var_2 = vec2<bool>(var_1.b, var_1.d);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-188f * -882f), _wgslsmith_mult_u32(21330u, ~min(u_input.a, 23022u))), _wgslsmith_sub_i32(var_1.e, 1i) > u_input.b.x, firstTrailingBit(var_1.c), false, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>(any(vec2<bool>(true, true)), select(1i, select(-1i, 0i, true), true) == ~(~2147483647i)));
    var var_1 = func_5(func_1(), -(~1i));
    var var_2 = func_1().b | countOneBits(~var_1.a.b);
    var var_3 = func_5(func_5(func_2().a, var_1.e).a, u_input.b.x & ~u_input.b.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2285f, var_1.a.a)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.a, _wgslsmith_f_op_f32(abs(827f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.a)), 479f), !var_3.d)));
    var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * 1204f) + _wgslsmith_f_op_f32(trunc(var_4.x))) * -564f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1262f + var_4.x), _wgslsmith_f_op_f32(-1241f * -1134f), true)) * 391f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.x)) * var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, ~(-(~vec4<i32>(var_1.e, -39133i, -1i, u_input.b.x) >> (~vec4<u32>(4294967295u, 68651u, u_input.a, 100037u) % vec4<u32>(32u)))), max(u_input.b, vec2<i32>(~(-16715i), -40694i)));
}

