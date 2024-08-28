struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_sub_u32(1u, arg_0.x), ~vec4<u32>(global0.x, 52538u, 100521u, arg_0.x), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-592f, 428f, -226f, 1000f)))), 0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, 1367f, var_0.c.b.x, var_0.c.b.x) - var_0.c.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x, var_0.c.b.x) - vec4<f32>(-1490f, var_0.c.b.x, var_0.c.b.x, 163f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.b.x, 1380f, -448f, var_0.c.b.x) * var_0.c.b)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.x));
    var_1 = var_0.c.b;
    var_2 = _wgslsmith_f_op_f32(-var_1.x);
    return vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_0.x, 9159u), vec3<u32>(var_0.b.x, u_input.e.x, 52497u)), ~14414u), 30709u);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_5) -> u32 {
    var var_0 = _wgslsmith_mod_u32(global0.x, ~max(_wgslsmith_add_u32(63480u, global0.x & 31310u), _wgslsmith_dot_vec2_u32(u_input.e, reverseBits(u_input.e))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, -1459f, -235f) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1436f, arg_1, arg_2.c.a.a.x), arg_2.c.a.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(146f - -541f), _wgslsmith_f_op_f32(trunc(arg_1)), 1125f)))), arg_2.a.x, vec4<i32>(countOneBits(arg_2.c.b.c.x), u_input.c, -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.c.a.c.x, arg_2.c.b.c.x), firstLeadingBit(arg_2.c.a.c.yy)), u_input.c), any(vec3<bool>(!arg_0.x, !(!arg_0.x), true)));
    var_0 = ~0u;
    let var_2 = var_1.c.x > -(~(firstTrailingBit(u_input.c) ^ (u_input.c ^ var_1.c.x)));
    var var_3 = Struct_5(arg_2.a, select(true, true, true) | any(select(!vec4<bool>(false, true, arg_2.b, true), vec4<bool>(var_1.d, false, var_2, var_2), 4294967295u < global0.x)), arg_2.c);
    return (countOneBits(~97427u) ^ u_input.d) & _wgslsmith_dot_vec3_u32(u_input.b << (_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), countOneBits(vec3<u32>(46u, global0.x, global0.x))) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(~global0.x, _wgslsmith_mult_u32(0u, u_input.d), _wgslsmith_sub_u32(84075u, u_input.a))));
}

fn func_2(arg_0: Struct_5) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = abs(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(_wgslsmith_sub_u32(global0.x, 3539u), func_3(vec3<bool>(false, false, true), var_0.c.b.a.x, Struct_5(vec2<f32>(-197f, arg_0.a.x), false, arg_0.c)))), ~min(~vec2<u32>(u_input.b.x, 43705u), select(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 47471u), true)), select(min(global0.xz >> (u_input.e % vec2<u32>(32u)), vec2<u32>(global0.x, 1u)), abs(vec2<u32>(global0.x, 1u)) | ~global0.xy, select(vec2<bool>(true, false), select(vec2<bool>(arg_0.c.c.x, true), var_0.c.c.xz, vec2<bool>(true, false)), vec2<bool>(var_0.b, var_0.b)))));
    let var_2 = !vec3<bool>(!all(vec2<bool>(var_0.b, arg_0.b)), !(max(var_1.x, 1u) > func_3(var_0.c.c, var_0.a.x, arg_0)), any(!var_0.c.c.xy));
    let var_3 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-402f, -560f)) + _wgslsmith_div_f32(-1319f, 1181f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(516f + var_0.a.x))))), all(!(!arg_0.c.c.yz)) != all(select(vec3<bool>(true, false, arg_0.c.a.d), var_0.c.c, arg_0.b)), Struct_4(Struct_3(vec3<f32>(_wgslsmith_div_f32(var_0.a.x, var_0.c.a.a.x), -417f, _wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 371f), -countOneBits(vec4<i32>(-36145i, arg_0.c.b.c.x, var_0.c.b.c.x, -1i)), arg_0.b), arg_0.c.b, arg_0.c.c));
    var var_4 = ~abs(u_input.b);
    return _wgslsmith_mod_vec3_u32(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 0u, 0u, u_input.d), ~vec4<u32>(global0.x, u_input.e.x, var_4.x, global0.x))) ^ func_1(abs(~vec4<u32>(0u, var_1.x, 0u, 35926u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, _wgslsmith_mod_u32(0u, var_4.x), 10195u), ~(~vec3<u32>(u_input.b.x, u_input.e.x, 27688u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~global0.x, countOneBits(1u), ~88824u), vec3<u32>(var_1.x, ~0u, 73710u >> (global0.x % 32u))), _wgslsmith_clamp_vec3_u32(abs(~u_input.b), vec3<u32>(global0.x, var_1.x, _wgslsmith_mult_u32(var_4.x, u_input.a)), ~(~u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = func_1(~(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 1u, 96877u, u_input.b.x), vec4<u32>(0u, global0.x, u_input.a, 4294967295u), vec4<bool>(true, true, false, true)), ~vec4<u32>(u_input.d, u_input.b.x, u_input.d, 1u))));
    var var_0 = -(max(vec3<i32>(4409i, -13318i, u_input.c), abs(vec3<i32>(u_input.c, 13892i, u_input.c))) >> (abs(vec3<u32>(global0.x, 31194u, 0u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(u_input.b, (func_2(Struct_5(vec2<f32>(-400f, 262f), false, Struct_4(Struct_3(vec3<f32>(-693f, 418f, 359f), -3727f, vec4<i32>(u_input.c, u_input.c, u_input.c, -18315i), false), Struct_3(vec3<f32>(-705f, 1107f, -925f), -903f, vec4<i32>(-8685i, u_input.c, u_input.c, u_input.c), false), vec3<bool>(true, true, false)))) >> (u_input.b % vec3<u32>(32u))) >> (u_input.b % vec3<u32>(32u)), ~u_input.b) % vec3<u32>(32u));
    let var_1 = select(vec2<bool>(false, _wgslsmith_f_op_f32(floor(-500f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1982f * -603f) + _wgslsmith_f_op_f32(1564f + -325f))), select(vec2<bool>(any(vec2<bool>(true, true)), false), vec2<bool>(false, true), vec2<bool>(false, true)), !select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), !(var_0.x == u_input.c)));
    global0 = u_input.b;
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-17212i, 52405i), var_0.x, u_input.c), u_input.c, 0i), vec3<i32>(-1i) * -(~vec3<i32>(-15583i, -25981i, 1i)), ~countOneBits(select(vec3<i32>(u_input.c, 0i, 1i), vec3<i32>(-1i, var_0.x, 1i), vec3<bool>(var_1.x, var_1.x, true)))) ^ ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-14777i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.c, -5599i), vec4<i32>(-1i, 47706i, -23211i, var_0.x)), 1989i), vec3<i32>(firstTrailingBit(464i), 0i, -93150i & var_0.x), -reverseBits(vec3<i32>(u_input.c, var_0.x, -26530i)));
    var var_2 = 808u == _wgslsmith_mult_u32(~(~(~0u)), countOneBits(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(21388u, u_input.a))));
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(~abs(-1i), u_input.c, var_0.x << (firstTrailingBit(~global0.x) % 32u)), -((vec3<i32>(u_input.c, 9237i, u_input.c) | vec3<i32>(var_0.x, 14649i, u_input.c)) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 79399u, global0.x)), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)) % vec3<u32>(32u))));
    var var_3 = ~min(countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -39746i, 1i, 26710i), ~vec4<i32>(var_0.x, var_0.x, u_input.c, -61439i))), -select(vec4<i32>(var_0.x, var_0.x, u_input.c, var_0.x), -vec4<i32>(1i, 17048i, 3808i, u_input.c), !vec4<bool>(var_1.x, var_1.x, var_1.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, 1u, u_input.e.x), vec3<u32>(4294967295u ^ u_input.a, 0u, ~55686u))), global0.x);
}

