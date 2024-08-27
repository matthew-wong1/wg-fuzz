struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_1.x;
    var var_1 = all(!select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), true & all(vec3<bool>(true, false, true))));
    let var_2 = _wgslsmith_div_vec2_i32(select((vec2<i32>(-1i) * -vec2<i32>(2147483647i, 26261i)) ^ ~(-vec2<i32>(18827i, u_input.e)), vec2<i32>(arg_0, reverseBits(u_input.e)), true), reverseBits(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.e, 10326i)), ~vec2<i32>(u_input.d, u_input.e))) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-65133i, arg_0), ~vec2<i32>(2147483647i, 2147483647i)), -vec2<i32>(u_input.e, -1i) | -vec2<i32>(u_input.d, -2147483647i), abs(-vec2<i32>(arg_0, 3836i))));
    let var_3 = Struct_2(Struct_1(abs(vec2<i32>(1i, 1i)) >> (arg_1.zy % vec2<u32>(32u)), var_2.x, vec2<i32>(abs(-2147483647i), max(-u_input.d, 9416i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1786f)) + _wgslsmith_f_op_f32(-1000f - -173f)), -746f)));
    var_1 = 1000f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-199f, 672f) - 468f))));
    return vec2<f32>(var_3.b, _wgslsmith_div_f32(-723f, var_3.b));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<f32> {
    var var_0 = Struct_1((firstTrailingBit(abs(vec2<i32>(2147483647i, -2147483647i))) ^ _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0, -27044i), vec2<i32>(arg_0, 1i))) >> (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u)), 12673i, countOneBits(~(~vec2<i32>(-1i, u_input.d))));
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_add_i32(_wgslsmith_div_i32(~countOneBits(u_input.d), 25902i), u_input.e), min(_wgslsmith_clamp_vec3_u32(~(~u_input.b.zzw), u_input.a.zww, vec3<u32>(_wgslsmith_mult_u32(69437u, 19086u), 74905u, arg_1)), ~(~u_input.b.xwx)), max(min(firstLeadingBit(vec4<u32>(arg_1, u_input.a.x, 0u, 0u)), vec4<u32>(3550u, u_input.b.x, 1u, 24451u) << (vec4<u32>(0u, arg_1, 6717u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(~30995u, ~92u, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.c.x))) | u_input.b));
    let var_3 = ~1u;
    var var_4 = select(var_0.c, var_0.a, any(vec4<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true, false)));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(441f, _wgslsmith_f_op_f32(var_2.x - 548f), -440f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_0.c.x, ~(~arg_2))));
    var var_1 = Struct_2(Struct_1(select(vec2<i32>(-1i) * -vec2<i32>(2147483647i, 2147483647i), arg_0.c, false), -26607i, arg_0.c), 469f);
    var_1 = arg_1;
    var_1 = arg_1;
    var_1 = arg_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!(true && (func_1(Struct_1(vec2<i32>(u_input.d, u_input.e), u_input.d, vec2<i32>(u_input.e, u_input.d)), Struct_2(Struct_1(vec2<i32>(0i, u_input.e), u_input.d, vec2<i32>(30633i, u_input.e)), 188f), u_input.a.x) && true)), true);
    var_0 = vec2<bool>(!(!var_0.x), var_0.x);
    var var_1 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-37759i, u_input.e, u_input.e)), vec3<i32>(u_input.e, -34885i, -29155i)), _wgslsmith_sub_i32(u_input.d, 1i) & ~u_input.d), 25367i, firstTrailingBit(-(~vec2<i32>(26475i, 0i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(421f - -567f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f))));
    var_0 = vec2<bool>(true, true);
    var_0 = !vec2<bool>((var_1.b != _wgslsmith_f_op_f32(ceil(var_1.b))) | true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(~firstTrailingBit(u_input.d), 1i), 0i), 0i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.b)), var_1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1539f - var_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1431f, 745f)))))), var_1.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, var_1.b, -1122f, 1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 1275f, 351f, var_1.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(786f, var_1.b, var_1.b, var_1.b))))))));
}

