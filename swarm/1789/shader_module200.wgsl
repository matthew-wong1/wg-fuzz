struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-13875i, i32(-2147483648), 1i, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> vec4<i32> {
    return min(-(~vec4<i32>(global0.x, -1i, -2147483647i, u_input.a)) | vec4<i32>(-u_input.b.x, -u_input.a, -global0.x, global0.x), vec4<i32>(i32(-1i) * -15208i, ~(-u_input.a) | -firstTrailingBit(0i), 31453i, global0.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> vec4<bool> {
    global0 = select(~firstTrailingBit(vec4<i32>(arg_3.b.x << (u_input.c.x % 32u), arg_3.b.x >> (0u % 32u), _wgslsmith_clamp_i32(u_input.b.x, 0i, u_input.a), ~global0.x)), vec4<i32>(22133i, _wgslsmith_mult_i32(arg_3.b.x, arg_3.b.x), -2147483647i, 10384i), select(arg_0, !vec4<bool>(any(vec3<bool>(arg_0.x, arg_0.x, false)), arg_0.x, arg_3.a, any(arg_0.zw)), !(false & arg_1)));
    var var_0 = (u_input.c.x != _wgslsmith_mod_u32(countOneBits(39236u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 14481u, u_input.c.x)))) || true;
    var var_1 = vec3<u32>(u_input.c.x, ~_wgslsmith_div_u32(abs(u_input.c.x), 20389u), u_input.c.x);
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_mod_i32(0i, global0.x >> (~var_1.x % 32u));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.c.x;
    global0 = vec4<i32>(_wgslsmith_div_i32(-5538i, ~_wgslsmith_div_i32(1i, 26700i)), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(arg_0.b.x, global0.x)), 2065i), 1i, countOneBits(-(~global0.x)));
    let var_1 = func_2();
    let var_2 = select(select(select(!func_3(vec4<bool>(arg_0.d, arg_0.d, false, false), arg_0.d, vec3<i32>(u_input.b.x, -1807i, global0.x), arg_0), select(select(vec4<bool>(true, true, arg_0.d, arg_0.a), vec4<bool>(true, arg_0.d, arg_0.d, false), false), func_3(vec4<bool>(arg_0.d, arg_0.a, arg_0.a, arg_0.a), true, vec3<i32>(global0.x, -1i, u_input.a), arg_0), true), !vec4<bool>(true, arg_0.a, true, arg_0.d)), vec4<bool>(false, u_input.c.x != 14855u, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_0.d), vec3<bool>(false, true, arg_0.a)))), any(vec4<bool>(arg_0.a, true, arg_0.c <= arg_0.e, select(false, true, true)))), select(!vec4<bool>(!arg_0.d, 87868u < u_input.c.x, true, all(vec2<bool>(arg_0.a, arg_0.d))), select(func_3(vec4<bool>(false, false, false, false), true, _wgslsmith_div_vec3_i32(var_1.zxx, vec3<i32>(u_input.b.x, arg_0.b.x, 0i)), arg_0), vec4<bool>(true, true, false, arg_0.a), !select(vec4<bool>(arg_0.d, true, arg_0.a, false), vec4<bool>(true, false, arg_0.d, arg_0.a), vec4<bool>(arg_0.d, arg_0.d, false, false))), false), func_3(!(!select(vec4<bool>(arg_0.a, true, arg_0.d, arg_0.a), vec4<bool>(arg_0.d, arg_0.a, arg_0.a, false), vec4<bool>(true, false, arg_0.a, arg_0.d))), any(select(!vec4<bool>(true, arg_0.a, arg_0.d, true), select(vec4<bool>(true, arg_0.d, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.d, arg_0.d, arg_0.a), arg_0.a), func_3(vec4<bool>(arg_0.d, false, arg_0.a, arg_0.a), false, vec3<i32>(1i, global0.x, u_input.b.x), arg_0))), vec3<i32>(global0.x, func_2().x, _wgslsmith_clamp_i32(i32(-1i) * -1i, max(global0.x, -21005i), -1i)), arg_0));
    let var_3 = arg_0;
    return Struct_1((false & var_2.x) || true, ~firstTrailingBit(abs(var_1.zy)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f + -707f)))))), func_3(var_2, !all(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), global0.zwz, Struct_1(var_2.x, ~firstLeadingBit(vec2<i32>(arg_0.b.x, -1i)), -434f, any(var_2.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c)) + _wgslsmith_f_op_f32(ceil(147f))))).x, _wgslsmith_f_op_f32(abs(-587f)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = func_1(Struct_1(true, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_3.b, arg_1.b), vec2<i32>(arg_3.b.x, arg_3.b.x)) >> (vec2<u32>(abs(u_input.c.x), select(arg_2, 4294967295u, true)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-437f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.c)))), false, _wgslsmith_f_op_f32(func_1(func_1(arg_3)).c + arg_3.c)));
    var var_1 = var_0;
    let var_2 = Struct_1(arg_1.a, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-471f - arg_3.e)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.e), -458f)) - var_0.c), var_1.a, var_0.e);
    global0 = firstLeadingBit(~(-vec4<i32>(~1i, firstLeadingBit(arg_3.b.x), ~34556i, firstLeadingBit(-18236i))));
    var_1 = var_2;
    return _wgslsmith_f_op_f32(ceil(arg_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(u_input.b ^ vec3<i32>(14940i, global0.x, global0.x), func_1(Struct_1(false, u_input.b.xy, -1617f, false, -855f)), 1u, Struct_1(true, vec2<i32>(global0.x, global0.x), 351f, false, 423f))), 222f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -148f))))))));
    let var_1 = func_1(Struct_1(all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), true)), firstLeadingBit(global0.xy), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -259f))), true, 830f));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.e + 1559f), 1911f, var_1.e, _wgslsmith_f_op_f32(var_1.e * var_1.e));
    var var_3 = var_1;
    let var_4 = func_3(!vec4<bool>(true, true, true, var_1.d), var_1.d, max(~vec3<i32>(1i, global0.x, u_input.a) | _wgslsmith_clamp_vec3_i32(global0.xwx, -vec3<i32>(var_1.b.x, var_3.b.x, global0.x), vec3<i32>(1i, global0.x, var_3.b.x) ^ u_input.b), vec3<i32>(-1i) * -firstLeadingBit(global0.yyz)), Struct_1(false, var_1.b, var_1.c, true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.e))))).yxz;
    var var_5 = select(~firstTrailingBit(~vec3<u32>(4294967295u, 65174u, 1u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(831u, 1u, 1u), vec3<u32>(7169u, u_input.c.x, 4294967295u)) & vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x << (u_input.c.x % 32u)), false) ^ _wgslsmith_div_vec3_u32(abs(vec3<u32>(abs(u_input.c.x), ~u_input.c.x, 41036u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(10843u, 0u, u_input.c.x)), ~(~vec3<u32>(u_input.c.x, u_input.c.x, 40857u))));
    global0 = abs(vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.b, ~u_input.b), var_3.b.x, global0.x, global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(1000f)), var_1.b, _wgslsmith_f_op_f32(select(var_1.c, var_1.c, !(!all(vec4<bool>(var_4.x, false, true, var_1.d))))), u_input.c, _wgslsmith_sub_i32(-15354i, ~firstLeadingBit(-21290i)));
}

