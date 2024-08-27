struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_4(Struct_3(Struct_1(vec2<u32>(arg_0.a.x, u_input.b.x) << (~arg_0.c.yz % vec2<u32>(32u)), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_0.b, -12128i), arg_0.b), vec4<u32>(1u ^ u_input.b.x, firstLeadingBit(0u), arg_0.a.x, 73u)), arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c.wz, _wgslsmith_div_vec2_u32(u_input.b, u_input.b)), ~u_input.b >> (u_input.b % vec2<u32>(32u)))));
    var_0 = Struct_4(Struct_3(Struct_1((var_0.a.b.c.zx >> (vec2<u32>(var_0.a.c, var_0.a.a.a.x) % vec2<u32>(32u))) | vec2<u32>(arg_0.c.x, var_0.a.b.c.x), 2147483647i, max(_wgslsmith_add_vec4_u32(arg_0.c, arg_0.c), reverseBits(vec4<u32>(5400u, 27353u, 3250u, 1u)))), Struct_1(vec2<u32>(1u, var_0.a.a.c.x), u_input.a, abs(vec4<u32>(54547u, 31304u, 1u, u_input.b.x) | arg_0.c)), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(41261u, 1u, u_input.b.x, var_0.a.c), var_0.a.b.c))));
    var var_1 = Struct_2(true, 1945f, vec3<i32>(var_0.a.b.b, 17527i, _wgslsmith_mult_i32(2147483647i, -select(arg_0.b, var_0.a.b.b, true))));
    var_1 = Struct_2(var_1.a, 332f, ~_wgslsmith_div_vec3_i32(vec3<i32>(2885i ^ var_1.c.x, 1i, var_1.c.x), max(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(17843i, -2147483647i, u_input.d)) >> (_wgslsmith_sub_vec3_u32(arg_0.c.yzw, vec3<u32>(4294967295u, 40129u, 4294967295u)) % vec3<u32>(32u))));
    var_0 = Struct_4(Struct_3(Struct_1(var_0.a.a.a, -countOneBits(6180i), arg_0.c | _wgslsmith_clamp_vec4_u32(arg_0.c, arg_0.c, vec4<u32>(1u, 0u, 47551u, 1u))), arg_0, _wgslsmith_dot_vec3_u32(var_0.a.a.c.wwy, (vec3<u32>(u_input.b.x, u_input.b.x, var_0.a.a.c.x) | vec3<u32>(u_input.b.x, var_0.a.a.a.x, var_0.a.b.a.x)) >> (vec3<u32>(u_input.b.x, var_0.a.a.a.x, var_0.a.b.a.x) % vec3<u32>(32u)))));
    return _wgslsmith_add_u32(32429u & _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 1u, arg_0.a.x) & var_0.a.b.c.zyx), min(~arg_0.c.zwz, var_0.a.a.c.www)), var_0.a.c);
}

fn func_2() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(258f)) + _wgslsmith_f_op_f32(f32(-1f) * -605f))))));
    return ~select(vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), ~func_3(Struct_1(vec2<u32>(u_input.b.x, u_input.b.x), u_input.c.x, vec4<u32>(4294967295u, 0u, u_input.b.x, 1u))), 69279u), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(42153u, 27629u, 72335u)) & ~(~vec3<u32>(u_input.b.x, 1u, u_input.b.x)), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    var var_0 = u_input.b.x;
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = ~func_2();
    var_0 = u_input.b.x;
    var_0 = _wgslsmith_clamp_u32(4294967295u, 4294967295u, ~(~(~_wgslsmith_clamp_u32(4294967295u, u_input.b.x, 35935u))));
    return var_1.xx;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_3(Struct_1(func_2().zy, i32(-1i) * -2267i, ~(vec4<u32>(4294967295u, u_input.b.x, 55427u, u_input.b.x) ^ vec4<u32>(u_input.b.x, 0u, 66873u, u_input.b.x))), Struct_1(vec2<u32>(~u_input.b.x, _wgslsmith_add_u32(0u, u_input.b.x)), -53525i, ~select(vec4<u32>(4294967295u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(14778u, 6384u, u_input.b.x, u_input.b.x), arg_0.x)), u_input.b.x));
    var var_1 = Struct_2(any(select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(true, true, arg_0.x, false), arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, false), arg_0.x)), vec4<bool>(true, true, all(vec4<bool>(true, arg_0.x, true, arg_0.x)), all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), all(select(vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, true), false)))), arg_2.x, ~_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.d, -1i, u_input.c.x), ~var_0.a.a.b, var_0.a.a.b), -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.b.b, -31168i, -2625i), vec3<i32>(-2147483647i, var_0.a.a.b, arg_1.x))));
    var_1 = Struct_2(true, _wgslsmith_f_op_f32(f32(-1f) * -188f), min(~abs(var_1.c & var_1.c), vec3<i32>(-2147483647i, ~countOneBits(var_0.a.a.b), abs(_wgslsmith_dot_vec3_i32(var_1.c, vec3<i32>(var_0.a.b.b, u_input.c.x, 1075i))))));
    var_1 = Struct_2(!any(select(vec3<bool>(var_1.a, var_1.a, var_1.a), select(vec3<bool>(true, false, true), vec3<bool>(var_1.a, true, arg_0.x), true), var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -693f), reverseBits(vec3<i32>(countOneBits(57249i), -13282i, ~_wgslsmith_dot_vec2_i32(var_1.c.yy, u_input.c))));
    let var_2 = _wgslsmith_dot_vec2_i32(min(select(abs(max(vec2<i32>(17504i, arg_1.x), var_1.c.xy)), -_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.b.b, 24847i), vec2<i32>(arg_1.x, 1i)), vec2<bool>(arg_0.x, arg_0.x)), -var_1.c.zy & _wgslsmith_sub_vec2_i32(select(vec2<i32>(18905i, 184i), arg_1, true), u_input.c)), var_1.c.yz);
    return Struct_1(select(~vec2<u32>(var_0.a.b.a.x, 30402u), _wgslsmith_sub_vec2_u32(vec2<u32>(11968u, var_0.a.c) >> (vec2<u32>(u_input.b.x, 21753u) % vec2<u32>(32u)), vec2<u32>(var_0.a.c, var_0.a.b.a.x)), !arg_0.x && true) | var_0.a.b.c.yx, reverseBits(countOneBits(reverseBits(_wgslsmith_sub_i32(arg_1.x, u_input.d)))), _wgslsmith_sub_vec4_u32(abs(var_0.a.b.c), var_0.a.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec2<i32>(u_input.c.x, u_input.e)), ~(~vec2<i32>(countOneBits(u_input.e), u_input.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1560f, 895f, 1021f, -249f))) + _wgslsmith_div_vec4_f32(vec4<f32>(167f, -1965f, -1375f, 2103f), vec4<f32>(-1237f, -330f, -1279f, -990f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1386f, 840f, -333f, -711f)))))));
    var var_1 = Struct_4(Struct_3(var_0, var_0, ~36658u));
    var_1 = Struct_4(var_1.a);
    let var_2 = true;
    let var_3 = true;
    var var_4 = Struct_2(false, _wgslsmith_f_op_f32(sign(864f)), vec3<i32>(-14306i, -2147483647i, -max(~var_0.b, countOneBits(u_input.d))));
    let var_5 = _wgslsmith_mod_u32(~11990u, var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f * var_4.b)), 162f, !var_4.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_4.b, 1073f))), -127f)), firstLeadingBit(~_wgslsmith_mod_u32(37443u | var_0.a.x, 523u)));
}

