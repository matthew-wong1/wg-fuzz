struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = arg_0.x;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ vec3<i32>(18374i, -54110i, u_input.a)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, -93199i), 1i, u_input.a)), -(~vec3<i32>(0i, 18231i, -2147483647i) | abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))), min(-(min(u_input.a, u_input.a) ^ u_input.a), -31341i));
    let var_2 = 1u;
    var var_3 = arg_0 << (arg_0 % vec2<u32>(32u));
    var var_4 = countOneBits(countOneBits(var_1));
    return select(vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))), true, 0u < ~arg_0.x), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), !vec3<bool>(true, all(vec3<bool>(false, false, true)), true), select(min(1u, var_3.x), var_3.x, u_input.a < u_input.a) == 1u), 4294967295u == (70150u ^ (firstTrailingBit(1u) << (select(var_0, var_0, false) % 32u))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true)), func_3(vec2<u32>(1u, 1u)), Struct_1(max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(36934i, -26565i, 50623i, u_input.a), vec4<i32>(12143i, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, u_input.a, 1i, 0i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(-3561i, u_input.a), ~vec2<i32>(0i, u_input.a))), any(func_3(firstTrailingBit(vec2<u32>(4294967295u, 95535u)))), -24382i, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-16374i, 8649i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -17084i), vec3<i32>(u_input.a, u_input.a, -1i)), u_input.a, u_input.a), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-2147483647i, -23555i, -55935i, u_input.a)), ~vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, 24359i)))));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -304f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-254f, 576f) * vec2<f32>(1000f, -1474f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(179f, -1104f) + vec2<f32>(-1119f, -1156f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(921f - -1658f) * _wgslsmith_f_op_f32(floor(-1494f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(359f)) * _wgslsmith_div_f32(-982f, -143f))))));
    return var_1.c;
}

fn func_1() -> bool {
    let var_0 = Struct_2(func_2(), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 67423u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), func_2(), Struct_1(abs(1i), true, firstTrailingBit(u_input.a) >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 52422u), _wgslsmith_div_vec2_u32(vec2<u32>(42354u, 4294967295u), vec2<u32>(1u, 2617u))) % 32u), select(vec4<i32>(u_input.a, ~2147483647i, select(u_input.a, u_input.a, false), select(-1i, u_input.a, false)), vec4<i32>(-u_input.a, 307i, _wgslsmith_clamp_i32(u_input.a, 0i, u_input.a), reverseBits(u_input.a)), true)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(29703u, 12117u, 4294967295u), vec3<u32>(57600u, 89940u, 19237u)), vec3<u32>(55430u, 59825u, 0u), ~vec3<u32>(14079u, 1u, 0u)), select(vec3<u32>(1705u, 0u, 26417u), countOneBits(vec3<u32>(4294967295u, 61666u, 4294967295u)), true)));
    var var_1 = var_0;
    var var_2 = !(!(!(!select(vec4<bool>(true, var_0.a.b, var_1.d.b, true), vec4<bool>(var_1.d.b, true, var_0.a.b, false), vec4<bool>(false, var_0.c.b, true, true)))));
    var_1 = Struct_2(func_2(), var_0.b << ((var_0.b ^ max(~var_1.b, firstTrailingBit(27405u))) % 32u), Struct_1(u_input.a, var_0.d.b, ~_wgslsmith_sub_i32(countOneBits(-44421i), u_input.a), _wgslsmith_mod_vec4_i32(var_1.a.d, _wgslsmith_mult_vec4_i32(vec4<i32>(27416i, 32202i, 1i, 2147483647i), var_0.d.d))), func_2(), var_1.e);
    let var_3 = Struct_3(vec4<bool>(true, func_2().b, all(vec4<bool>(!var_2.x, true, true, !var_0.a.b)), var_0.c.b), vec3<bool>(var_2.x & (_wgslsmith_dot_vec2_u32(var_0.e.yz, vec2<u32>(0u, 1u)) < (var_1.b ^ 4294967295u)), true, false), Struct_1(_wgslsmith_add_i32(abs(i32(-1i) * -55357i), _wgslsmith_sub_i32(min(u_input.a, -3060i), -1i << (var_0.b % 32u))), var_0.a.b | false, var_0.c.d.x, _wgslsmith_div_vec4_i32(abs(~vec4<i32>(var_1.d.d.x, 12890i, var_1.a.a, 2510i)), var_0.d.d)));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!any(vec3<bool>(true, true, true))), false, any(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), true);
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-486i, u_input.a), u_input.a, 19779i), firstLeadingBit(~vec3<i32>(u_input.a, u_input.a, -11580i))) & 2147483647i, all(select(select(!vec4<bool>(var_0.x, var_0.x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, var_0.x, false, true), false), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(false, true, true, var_0.x), true)), any(var_0.xx))), -(~1i), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 16647i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 18307i, -26885i)), vec4<i32>(u_input.a, 2147483647i, 0i, -2147483647i) << (vec4<u32>(1u, 49016u, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(-1i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(69272i, u_input.a, -8534i, u_input.a), -vec4<i32>(-2147483647i, u_input.a, -1i, -2147483647i))) >> (~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 44154u), vec2<u32>(0u, 8087u)), 0u, 1u, 1u) % vec4<u32>(32u)));
    let var_2 = select(!(!vec3<bool>(func_1(), func_2().b, false)), var_0.zwx, !var_0.zzy);
    let var_3 = Struct_1(2147483647i, (_wgslsmith_div_f32(-895f, _wgslsmith_div_f32(1205f, -982f)) > _wgslsmith_f_op_f32(sign(-961f))) | var_1.b, firstTrailingBit(func_2().c), vec4<i32>(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, -2147483647i), var_1.d.yyw), var_1.d.yxx)), -firstTrailingBit(2147483647i ^ u_input.a), firstLeadingBit(-(i32(-1i) * -19523i)), u_input.a));
    var var_4 = Struct_3(vec4<bool>(true, false, var_2.x & var_3.b, all(select(select(vec4<bool>(false, var_2.x, var_3.b, true), vec4<bool>(true, var_3.b, true, var_0.x), vec4<bool>(false, false, var_3.b, var_1.b)), select(vec4<bool>(var_0.x, false, var_1.b, false), vec4<bool>(true, true, false, var_1.b), vec4<bool>(var_1.b, var_2.x, var_1.b, var_0.x)), true))), select(select(!vec3<bool>(false, true, var_1.b), !(!var_0.xyy), false), var_2, !vec3<bool>(!var_2.x, !var_0.x, !var_1.b)), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-216f - -252f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, 288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -536f))))), 12694u);
}

