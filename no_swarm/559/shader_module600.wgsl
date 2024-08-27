struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: Struct_4;

var<private> global3: i32 = 2147483647i;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(_wgslsmith_sub_u32(~1u, arg_0.a), -firstTrailingBit(-arg_0.b) >> ((abs(select(vec4<u32>(4294967295u, global2.b.a, 61848u, arg_0.a), arg_3.b, vec4<bool>(false, true, true, arg_3.e))) >> (~_wgslsmith_sub_vec4_u32(arg_3.b, arg_3.b) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(~arg_0.b.www ^ u_input.a) >> (vec3<u32>(_wgslsmith_sub_u32(1u, ~arg_0.a), reverseBits(global2.a), abs(11694u)) % vec3<u32>(32u)), 2659f);
    var var_1 = vec3<bool>(1i == _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.b.x, var_0.c.x, -2147483647i), ~arg_0.b), arg_3.c), arg_3.e, all(vec4<bool>(!arg_2 && true, any(select(vec2<bool>(false, arg_3.e), vec2<bool>(true, true), false)), true, any(!vec2<bool>(arg_2, false)))));
    let var_2 = arg_3.e;
    let var_3 = _wgslsmith_mult_i32(u_input.a.x, ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i ^ u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_3.c), vec2<i32>(-1i, global2.b.c.x)), ~2147483647i), 2147483647i));
    let var_4 = abs(97058u) ^ countOneBits(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(35740u, 1u, 13977u, 19413u)), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(arg_3.b, vec4<u32>(global2.b.a, var_0.a, arg_0.a, var_0.a)), arg_3.b)));
    return u_input.a;
}

fn func_2(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = true;
    var var_1 = firstTrailingBit(-(~(~(-2147483647i) << (arg_1.x % 32u))));
    let var_2 = Struct_2(0u, ~vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(51459i, 2147483647i, 2147483647i), vec3<i32>(1i, 20646i, 76806i)) | arg_2.x, 0i, _wgslsmith_sub_i32(52686i, arg_2.x) >> (arg_0.a % 32u)), max(func_3(arg_0.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(329f, global2.c, -589f, global2.c))))), select(true, true, true), Struct_1(_wgslsmith_f_op_f32(arg_0.b.d - 368f), vec4<u32>(23830u, 0u, arg_1.x, arg_1.x), 27434i, global0[_wgslsmith_index_u32(~arg_0.a, 21u)], true)), ~(~arg_2)), -204f);
    let var_3 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)))), !vec4<bool>(arg_0.a <= arg_0.b.a, any(vec2<bool>(true, true)), true, true));
    var var_4 = all(var_3.wwx);
    return var_3.zw;
}

fn func_1() -> i32 {
    global3 = -(-(-1i ^ _wgslsmith_sub_i32(global2.d, u_input.b.x)) >> (104939u % 32u));
    var var_0 = !select(vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(23678u, 19341u), vec2<u32>(1u, global2.a)) == 71875u, _wgslsmith_div_f32(-1532f, global2.b.d) > global2.b.d, all(func_2(Struct_4(global2.b.a, Struct_2(29103u, vec4<i32>(-48802i, 2147483647i, -11134i, 9645i), global2.b.b.yzx, 1004f), 867f, 67258i), vec2<u32>(11016u, global2.a), vec3<i32>(-27374i, u_input.a.x, 2147483647i))), true), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(-53567i >> (global2.b.a % 32u), global2.d, 2147483647i) == -55983i);
    let var_1 = Struct_4(1u, global2.b, global2.c, -68408i);
    var var_2 = vec2<i32>(reverseBits(max(global2.d, -16934i)), _wgslsmith_add_i32(_wgslsmith_add_i32(~(-var_1.b.c.x), select(_wgslsmith_mod_i32(10441i, -55849i), _wgslsmith_dot_vec2_i32(global2.b.b.xw, global2.b.b.zy), var_0.x != var_0.x)), -1i));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) + _wgslsmith_div_f32(-307f, 758f)))), ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.a, global2.a), vec2<u32>(0u, global2.b.a)), (global2.b.a >> (0u % 32u)) | 0u, 1u, ~(~1u)), select(_wgslsmith_add_i32(var_1.b.b.x, var_1.d), firstTrailingBit(~u_input.b.x), _wgslsmith_f_op_f32(-global2.c) != -848f) | u_input.a.x, min(firstLeadingBit(global0[_wgslsmith_index_u32(~global2.b.a, 21u)]), ~vec3<u32>(var_1.a, global2.b.a, var_1.b.a)) & vec3<u32>(~firstLeadingBit(var_1.b.a), ~(~109567u), 0u), false);
    return i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2.b.c, _wgslsmith_div_vec3_i32(vec3<i32>(-24627i, var_3.c, global2.d), vec3<i32>(-18811i, var_1.b.c.x, -13002i))), ~min(2147483647i, 2147483647i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(select(4294967295u, global2.b.a, true)), ~global2.a, global2.a, global2.b.a), ~vec4<u32>(1u, global2.a >> (global2.a % 32u), global2.b.a, 82725u)), ~(global2.b.b & vec4<i32>(-1i << (global2.a % 32u), abs(1i), u_input.a.x, func_1())), u_input.b, _wgslsmith_f_op_f32(select(global2.c, _wgslsmith_f_op_f32(select(global2.b.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.d), _wgslsmith_div_f32(global2.c, global2.b.d))), true)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.b.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(812f))), -781f)), _wgslsmith_div_f32(global2.b.d, var_0.d))));
    let var_2 = Struct_3(~vec2<u32>(reverseBits(~32604u), ~1388u), Struct_1(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_0.d)), abs(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 11415u, 0u, 4294967295u), vec4<u32>(42547u, global2.b.a, global2.a, 4294967295u)), min(vec4<u32>(global2.b.a, var_0.a, global2.a, var_0.a), vec4<u32>(0u, var_0.a, global2.b.a, global2.a)))), var_0.b.x << (firstLeadingBit(global2.a) % 32u), vec3<u32>(var_0.a, var_0.a, _wgslsmith_add_u32(global2.a | 1u, 14094u)), func_2(Struct_4(8750u, Struct_2(global2.b.a, vec4<i32>(var_0.c.x, u_input.a.x, var_0.c.x, var_0.b.x), vec3<i32>(-1609i, var_0.b.x, -1i), var_0.d), 2187f, 1i), ~abs(vec2<u32>(var_0.a, var_0.a)), vec3<i32>(min(var_0.b.x, -2147483647i), global2.d, -2147483647i)).x));
    let var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-(~(-u_input.a.x)), _wgslsmith_mod_i32(~(~var_0.b.x), var_0.c.x)), vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.c.x, 42652i, 1i), vec4<i32>(var_2.b.c, -8818i, 2147483647i, -42651i)), 34974i), _wgslsmith_mult_i32(-22410i, _wgslsmith_div_i32(58402i, u_input.a.x)), u_input.b.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(1i, 19581i))), -_wgslsmith_mult_i32(1i, u_input.b.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2043f, -925f, var_0.d) * vec3<f32>(1000f, -1148f, -473f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(var_2.b.b.wzw, abs(var_2.b.d)));
}

