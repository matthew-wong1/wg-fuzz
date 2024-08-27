struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = vec4<bool>(all(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), true)), _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x) != -9880i, true, 1u < _wgslsmith_clamp_u32(~37990u, 51953u, 4294967295u));
    var var_1 = Struct_4(Struct_2(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_add_i32(reverseBits(i32(-1i) * -24404i), u_input.a.x << (0u % 32u)), vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec2<i32>(u_input.a.x, 1i) << (countOneBits(vec2<u32>(0u, 0u)) % vec2<u32>(32u))), vec3<f32>(-266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 269f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + _wgslsmith_f_op_f32(-399f * -1000f)))), any(vec2<bool>(any(var_0.wwx), var_0.x)), vec2<u32>(countOneBits(firstTrailingBit(4294967295u)), _wgslsmith_clamp_u32(1u, 1u, ~36506u) >> (1u % 32u)));
    let var_2 = Struct_1(vec2<u32>(~1u, 33716u), all(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.b, false, var_1.b, true), vec4<bool>(true, var_1.b, false, var_0.x)), select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, var_1.b, var_0.x)), -136f == var_1.a.e.x), !var_0, var_0)), var_1.b);
    let var_3 = -299f;
    let var_4 = select(true, true, var_2.c);
    return ~(~firstLeadingBit(1u));
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(u_input.a, 1i, Struct_1(arg_0.zz, true, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-626f, -298f)) * vec2<f32>(-1000f, -1342f))))));
    return vec4<u32>(~var_0.c.a.x, min(_wgslsmith_dot_vec3_u32(reverseBits(arg_0.xzx), vec3<u32>(var_0.c.a.x, 4294967295u, arg_0.x) << (arg_0.zyx % vec3<u32>(32u))), arg_0.x) >> (_wgslsmith_add_u32(func_3(), _wgslsmith_dot_vec2_u32(arg_0.ww | vec2<u32>(42677u, var_0.c.a.x), max(arg_0.ww, vec2<u32>(var_0.c.a.x, var_0.c.a.x)))) % 32u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.x, 26166u), arg_0.x), ~4294967295u << (var_0.c.a.x % 32u));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_2(func_2(abs(~(~vec4<u32>(1u, 1326u, 6827u, 4294967295u)))), _wgslsmith_mod_i32(i32(-1i) * -8217i, u_input.a.x), -abs(-vec3<i32>(-14556i, u_input.a.x, u_input.a.x)), vec2<i32>(u_input.a.x, 47569i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f + arg_0.x) + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1487f, arg_0.x)), _wgslsmith_f_op_f32(round(-1000f))), arg_0.x)));
    let var_1 = Struct_3(-vec3<i32>(u_input.a.x, -_wgslsmith_clamp_i32(-11205i, var_0.d.x, var_0.c.x), _wgslsmith_mult_i32(var_0.b & u_input.a.x, min(u_input.a.x, 2147483647i))), 34339i, Struct_1(countOneBits(vec2<u32>(abs(4294967295u), 13252u << (0u % 32u))), !any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), false)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0))));
    var_0 = Struct_2(vec4<u32>(1u, var_0.a.x, var_0.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(9618u, 1u), vec2<u32>(52882u, var_1.c.a.x)), _wgslsmith_div_u32(76172u, var_0.a.x))), -var_0.d.x, var_1.a, vec2<i32>(23561i, reverseBits(var_1.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.e)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, 628f, var_0.e.x)))))));
    let var_2 = _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-788f, _wgslsmith_div_f32(-1507f, var_0.e.x), true))))));
    var var_3 = Struct_4(Struct_2(vec4<u32>(_wgslsmith_add_u32(var_0.a.x, 42168u) << (~51919u % 32u), var_1.c.a.x, 1u, ~func_3()), 0i, vec3<i32>(max(var_0.b, var_0.d.x), -47013i, abs(var_1.a.x)), vec2<i32>(_wgslsmith_mult_i32(var_1.b, _wgslsmith_mod_i32(-39137i, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(var_0.e))), all(!vec3<bool>(var_1.c.b & var_1.c.b, false, var_1.c.b)), var_0.a.yx);
    return any(vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_i32(select(u_input.a, vec3<i32>(-9453i, _wgslsmith_sub_i32(reverseBits(-2147483647i), _wgslsmith_clamp_i32(-1i, -1560i, 2147483647i)), ~_wgslsmith_mod_i32(51586i, u_input.a.x)), vec3<bool>(!(49764i < u_input.a.x), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1226f, 939f))), select(any(vec2<bool>(false, false)), false, false))), _wgslsmith_div_vec3_i32(select(-u_input.a, _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 2147483647i, -38339i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false))), u_input.a));
    let var_1 = select(select(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), vec4<bool>(any(vec3<bool>(true, true, true)), !all(vec2<bool>(false, true)), select(true, u_input.a.x > var_0.x, any(vec3<bool>(false, false, true))), all(vec3<bool>(false, true, false)))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), all(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)))), vec4<bool>(true, true, true, true)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(660f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(112f - -415f), 1961f, !var_1.x))))));
}

