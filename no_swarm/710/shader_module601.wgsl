struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = 2200f;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + -724f) - _wgslsmith_f_op_f32(step(-995f, 1502f))), 1111f)));
    var var_2 = Struct_1(vec2<bool>(!(u_input.b.x <= firstLeadingBit(1i)), 2411f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1363f + 835f)))), vec2<i32>(reverseBits(1i), _wgslsmith_mult_i32(~u_input.b.x, 1i)), ~(-22704i), -608f);
    var var_3 = vec3<f32>(var_1.a, var_2.d, var_2.d);
    let var_4 = vec4<i32>(~u_input.b.x, -var_2.b.x, -34524i, -14555i);
    return select(!vec2<bool>(true, all(vec4<bool>(false, true, false, var_2.a.x))), vec2<bool>(true, true | !var_2.a.x), any(!vec3<bool>(true, var_2.a.x | var_2.a.x, !var_2.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> Struct_3 {
    var var_0 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, true)))));
    var var_1 = ~(~u_input.b.x);
    var_0 = vec2<bool>(~abs(_wgslsmith_div_u32(arg_1.x, 53391u)) >= u_input.a.x, all(vec4<bool>(true | (1u >= arg_1.x), false, true, all(vec4<bool>(true, true, false, var_0.x)))));
    var_0 = func_3();
    var_0 = func_3();
    return Struct_3(var_0.x, Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1286f) - _wgslsmith_div_f32(466f, -1283f)))), Struct_1(func_3(), ~(vec2<i32>(20545i, u_input.b.x) >> (vec2<u32>(u_input.a.x, 9294u) % vec2<u32>(32u))), i32(-1i) * -2048i, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -279f)))), Struct_1(!func_3(), vec2<i32>(_wgslsmith_sub_i32(u_input.b.x & u_input.b.x, -u_input.b.x), abs(firstLeadingBit(u_input.b.x))), u_input.b.x, -1011f));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: f32) -> i32 {
    var var_0 = ~1i;
    let var_1 = Struct_4(func_2(1u, u_input.a).b.b, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~(~u_input.b.xy), firstTrailingBit(~u_input.b.zz)), select(_wgslsmith_div_i32(~u_input.b.x, func_2(0u, u_input.a).c.c), -2147483647i, !func_3().x)), u_input.a.zy, any(!vec4<bool>(arg_2.b.b.a.x, arg_2.b.b.a.x && false, true, u_input.a.x < 0u)), -1296f);
    let var_2 = Struct_1(func_2(_wgslsmith_mod_u32((var_1.c.x & 0u) >> (var_1.c.x % 32u), 7281u), ~u_input.a).c.a, _wgslsmith_div_vec2_i32(vec2<i32>(~(~(-1i)), var_1.b), vec2<i32>(u_input.b.x, -246i)), _wgslsmith_dot_vec4_i32(arg_1, _wgslsmith_div_vec4_i32(vec4<i32>(max(-2147483647i, -2147483647i), arg_1.x, select(arg_1.x, u_input.b.x, arg_0), 75624i), _wgslsmith_mult_vec4_i32(arg_1, -arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-122f))));
    var_0 = -15619i;
    var var_3 = Struct_2(_wgslsmith_div_f32(883f, 1472f), arg_2.c);
    return ~_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_2.b.b.c, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 1i), var_3.b.b) << (select(u_input.a.x, 49535u, false) % 32u)), ~(-49629i));
}

fn func_1(arg_0: vec2<u32>) -> bool {
    let var_0 = vec4<i32>(-select(-(~u_input.b.x), -1i | _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(5636i, u_input.b.x)), true), 60989i, ~func_4(false, u_input.b, func_2(arg_0.x, u_input.a), -544f) & (_wgslsmith_clamp_i32(select(-2147483647i, u_input.b.x, true), -u_input.b.x, 46660i) << (arg_0.x % 32u)), _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(-select(u_input.b.x, u_input.b.x, true), i32(-1i) * -u_input.b.x)));
    let var_1 = func_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 96183u), 1u & arg_0.x), select(~vec2<u32>(arg_0.x, 22874u), vec2<u32>(0u, 9154u), true)), (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(arg_0.x, 28740u)) ^ vec2<u32>(u_input.a.x, u_input.a.x)) << (~arg_0 % vec2<u32>(32u))), max(vec3<u32>(39999u, ~arg_0.x & 4294967295u, countOneBits(arg_0.x)), reverseBits(min(u_input.a, select(u_input.a, vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<bool>(false, true, false)))))).b;
    let var_2 = func_2(~_wgslsmith_mod_u32(3595u, _wgslsmith_mult_u32(~arg_0.x, ~arg_0.x)), ~firstLeadingBit(~(vec3<u32>(4294967295u, arg_0.x, 1u) >> (u_input.a % vec3<u32>(32u))))).b.b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), var_2.d, any(vec3<bool>(false, true, true))))) + _wgslsmith_f_op_f32(-var_1.a));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1083f, var_1.b.d, var_2.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.d, 1182f, var_2.d), vec3<f32>(-117f, var_1.a, 993f)))))));
    return var_2.a.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    let var_0 = u_input.b.x;
    let var_1 = arg_2.b.b;
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.d))));
    let var_3 = 2147483647i;
    var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1784f)));
    return Struct_4(var_1, func_2(u_input.a.x, ~u_input.a).b.b.c, (firstTrailingBit(u_input.a.zz) ^ firstTrailingBit(u_input.a.zy)) >> (~u_input.a.zx % vec2<u32>(32u)), true, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1309f, _wgslsmith_f_op_f32(abs(-1753f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(818f - 702f))))), Struct_2(-1073f, Struct_1(vec2<bool>(any(vec3<bool>(false, true, true)), func_1(vec2<u32>(u_input.a.x, 1u))), u_input.b.wz, firstTrailingBit(_wgslsmith_div_i32(0i, u_input.b.x)), _wgslsmith_f_op_f32(abs(113f)))), Struct_3(countOneBits(u_input.a.x & u_input.a.x) <= u_input.a.x, Struct_2(-465f, func_2(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), u_input.a | u_input.a).c), func_2(_wgslsmith_mod_u32(~u_input.a.x, 0u), u_input.a).c));
    var_0 = func_5(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) * _wgslsmith_f_op_f32(-var_0.a.d)), var_0.a.d), var_0.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f * var_0.a.d) + _wgslsmith_f_op_f32(-var_0.a.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(100f, var_0.a.d) + var_0.a.d))), func_2(4294967295u, u_input.a).b, func_2(4294967295u, ~min(vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(0u, var_0.c.x, 22685u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f + -1471f));
    let var_2 = false;
    let var_3 = 15471i;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -1559f));
    var var_5 = Struct_4(var_0.a, var_3, var_0.c, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1399f, var_1, var_1)), func_2(u_input.a.x, vec3<u32>(16666u, u_input.a.x, 60536u)).b, Struct_3(false, Struct_2(var_1, var_0.a), var_0.a)).e))));
    var_5 = Struct_4(func_2(u_input.a.x, u_input.a).b.b, -1i, _wgslsmith_add_vec2_u32(var_5.c, vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), ~var_5.c.x), 4294967295u)), var_0.d || var_2, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.e, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5.a.d), _wgslsmith_f_op_f32(round(var_4))))), var_0.e));
    let x = u_input.a;
    s_output = StorageBuffer(~(4294967295u & ~(~var_0.c.x)));
}

