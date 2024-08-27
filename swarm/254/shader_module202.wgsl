struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec4<bool>) -> u32 {
    let var_0 = vec2<i32>(2147483647i, 15267i);
    let var_1 = vec4<u32>(1u, ~arg_2.b.x, 1541u, max(~_wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(arg_1.b.b, 1u, 14870u)), _wgslsmith_clamp_u32(~abs(arg_2.b.x), ~min(arg_1.b.c, arg_1.b.c), ~(~29230u))));
    var var_2 = Struct_4(arg_1.b.a, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_1.c)), _wgslsmith_f_op_f32(floor(136f))))));
    global1 = select(!(!(!(!vec4<bool>(global1.x, arg_3.x, global1.x, global1.x)))), !(!vec4<bool>(true, arg_3.x, false, true)), select(false, 766f != _wgslsmith_f_op_f32(-arg_1.c), all(select(select(arg_3, arg_3, global1.x), arg_3, select(global1.x, true, false)))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(select(688f, _wgslsmith_f_op_f32(sign(arg_1.c)), false)), _wgslsmith_mod_vec2_u32(u_input.a.xz, ~vec2<u32>(abs(arg_2.b.x), firstTrailingBit(arg_1.b.c))), _wgslsmith_div_f32(2166f, var_2.c));
    return u_input.a.x;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(select(arg_1, arg_1, true)))), _wgslsmith_f_op_f32(-arg_1)));
    let var_1 = global1.zxx;
    global1 = select(vec4<bool>(any(global1.wyz), !any(!vec4<bool>(global1.x, false, var_1.x, false)), all(select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(global1.x, true, false, false), vec4<bool>(false, true, false, true))), select((4294967295u & arg_2.c) == max(u_input.a.x, u_input.d), all(!vec4<bool>(var_1.x, false, true, global1.x)), true)), select(!vec4<bool>(!var_1.x, any(vec2<bool>(var_1.x, false)), all(vec2<bool>(var_1.x, false)), false), select(select(select(vec4<bool>(var_1.x, var_1.x, global1.x, true), vec4<bool>(global1.x, false, false, var_1.x), vec4<bool>(true, false, true, true)), select(vec4<bool>(global1.x, global1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, false), true), global1.x), vec4<bool>(var_1.x, true, true, var_1.x == global1.x), select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(false, var_1.x, global1.x, false)), !vec4<bool>(global1.x, var_1.x, true, true), true)), !var_1.x & true), !vec4<bool>(!var_1.x, any(vec4<bool>(true, var_1.x, global1.x, true)), global1.x, global1.x));
    let var_2 = !var_1.x;
    let var_3 = Struct_2(arg_1, ~_wgslsmith_mult_vec2_u32(~(~u_input.a.zx), ~u_input.a.zx), var_0.x);
    return global1.x;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> vec3<i32> {
    var var_0 = true;
    global0 = ~_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(-u_input.c, _wgslsmith_div_i32(~1i, reverseBits(u_input.c))));
    var_0 = !(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), true)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-890f, arg_0)) * _wgslsmith_div_f32(-1321f, _wgslsmith_f_op_f32(arg_1.x * arg_0))));
    var var_1 = global1.x;
    var_0 = func_4(reverseBits(abs(countOneBits(u_input.c >> (82590u % 32u)))), _wgslsmith_f_op_f32(-arg_0), Struct_1(~(-vec3<i32>(1576i, 2147483647i, -2147483647i) & (vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.d, 2492u, 28170u) % vec3<u32>(32u)))), _wgslsmith_add_u32(u_input.d, func_3(Struct_2(-272f, vec2<u32>(43593u, 0u), arg_1.x), Struct_4(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_1(vec3<i32>(-2147483647i, u_input.c, u_input.c), 0u, 0u), -2216f), Struct_2(110f, u_input.a.yy, -129f), vec4<bool>(true, true, global1.x, false))), firstTrailingBit(select(abs(35175u), 4294967295u, true))));
    return _wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.c, -u_input.c, countOneBits(u_input.c)) ^ min(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -19948i), vec3<i32>(-21862i, u_input.c, -49801i)), ~vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(-8956i, abs(-u_input.c), countOneBits(-u_input.c)), vec3<bool>(u_input.c <= -58458i, !(!global1.x), global1.x)), -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-1i, -7225i, u_input.c)), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, -1i, -36619i), vec3<i32>(-2147483647i, -1i, 1i), vec3<i32>(10020i, -1i, 4152i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, 38739u), u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-38106i, 73375i, -1i), vec3<i32>(u_input.c, -34475i, 1i)))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>) -> i32 {
    return arg_1.a.x;
}

fn func_6(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(278f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, 139f))), ~7363u != ~u_input.b))) * _wgslsmith_f_op_f32(f32(-1f) * -280f));
    let var_1 = Struct_4(vec3<i32>(select(u_input.c, max(_wgslsmith_mod_i32(u_input.c, u_input.c), -33703i), global1.x), u_input.c, select(-u_input.c, arg_1, false)), Struct_1(firstLeadingBit(select(vec3<i32>(arg_1, u_input.c, 25219i), vec3<i32>(arg_1, 14012i, arg_1), global1.x)) >> (vec3<u32>(select(50646u, arg_0, true), 60951u, 0u) % vec3<u32>(32u)), arg_0, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * _wgslsmith_div_f32(var_0, var_0))))));
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(4294967295u, 40901u)), 5795u, ~_wgslsmith_mod_u32(1u, ~7407u)), max(~(~arg_0), reverseBits(_wgslsmith_mod_u32(0u >> (0u % 32u), 54070u))), arg_0);
    global1 = vec4<bool>(true, !(!(88219u < ~u_input.b)), !global1.x, global1.x);
    let var_3 = global1.x;
    return var_1.b;
}

fn func_1() -> bool {
    var var_0 = Struct_3(func_6(_wgslsmith_dot_vec2_u32(min(firstLeadingBit(vec2<u32>(53118u, u_input.a.x)), ~u_input.a.zx), u_input.a.yx), func_5(vec2<bool>(global1.x, false), Struct_1(func_2(-242f, vec3<f32>(-1215f, 1064f, 176f)), 0u, 1u), ~(~vec2<i32>(u_input.c, u_input.c)))));
    var_0 = Struct_3(Struct_1(var_0.a.a, ~var_0.a.b, _wgslsmith_mult_u32(~abs(1u), u_input.b)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(1u, firstLeadingBit(~_wgslsmith_div_u32(7871u, u_input.d)));
    let var_1 = !vec4<bool>(!global1.x, func_1(), any(select(!vec4<bool>(false, false, global1.x, false), vec4<bool>(true, true, false, global1.x), global1.x)), global1.x);
    global0 = u_input.c;
    let var_2 = Struct_3(Struct_1(vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.c), u_input.c, u_input.c), u_input.a.x, 113721u));
    var_0 = u_input.a.x;
    let var_3 = _wgslsmith_mult_i32(-(~(i32(-1i) * -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, var_2.a.a.x, min(var_2.a.a.x, u_input.c)), -u_input.c)) | (var_2.a.a.x >> (abs(~max(u_input.d, u_input.b)) % 32u));
    var_0 = var_2.a.b;
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(4294967295u, u_input.d)), u_input.a.yx)), u_input.d);
    let var_4 = Struct_2(1f, reverseBits(vec2<u32>(var_2.a.c, u_input.d)), -458f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.a, var_4.c, -1000f, var_4.a) + vec4<f32>(var_4.a, var_4.a, var_4.c, var_4.c)), vec4<f32>(var_4.a, var_4.c, var_4.a, var_4.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, 2106f, 147f, var_4.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, -1192f, 1279f, -614f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1245f, var_4.a, var_4.c, var_4.c), vec4<f32>(-144f, 972f, var_4.a, 187f), true)))), vec4<bool>(true, any(vec4<bool>(false, true, var_1.x, true)) && true, any(vec3<bool>(var_1.x, false, global1.x)), select(var_1.x, true, all(vec2<bool>(global1.x, global1.x)))))), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.c, ~abs(var_2.a.b), 4294967295u, u_input.d), ~vec4<u32>(~6819u, 44849u, _wgslsmith_mult_u32(33579u, 0u), max(var_4.b.x, u_input.d))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(var_4.c))), var_4.a, var_4.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(133f, 945f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1504f), 1f, _wgslsmith_f_op_f32(step(-119f, _wgslsmith_f_op_f32(var_4.c * var_4.a))), -400f), false)));
}

