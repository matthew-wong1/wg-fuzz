struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var_0 = arg_0;
    return arg_2;
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = ~reverseBits(vec3<u32>(1u, u_input.a.x, ~1u));
    let var_1 = select(!(!vec4<bool>(true, !arg_0.a.x, select(false, arg_0.a.x, arg_0.a.x), true)), vec4<bool>(arg_0.a.x, !(!arg_0.a.x && (false != arg_0.a.x)), false, true), select(!(!vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)), vec4<bool>(arg_0.a.x, _wgslsmith_div_u32(u_input.a.x, var_0.x) >= u_input.a.x, true, any(vec3<bool>(arg_0.a.x, arg_0.a.x, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), select(vec4<bool>(false, arg_0.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(false, arg_0.a.x, false, arg_0.a.x)))));
    var var_2 = Struct_3(u_input.a.x, arg_0.b.d.x, vec4<i32>(reverseBits(~1i), -arg_0.c, abs(u_input.e), ~_wgslsmith_sub_i32(u_input.d.x >> (4294967295u % 32u), ~arg_0.b.a)));
    var_0 = vec3<u32>(reverseBits(40806u), _wgslsmith_div_u32(min(~var_0.x, var_0.x), ~_wgslsmith_div_u32(26523u, firstLeadingBit(var_0.x))), 1u);
    let var_3 = func_2(arg_0, var_2.a, arg_0);
    return (-var_2.c.x & -2147483647i) ^ var_2.c.x;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<bool> {
    return !vec2<bool>(arg_1.a.x, !arg_1.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(Struct_2(vec3<bool>((u_input.b == arg_0.a) & true, any(!arg_1), false), arg_0, ~_wgslsmith_dot_vec2_i32(reverseBits(u_input.d), vec2<i32>(-26222i, 2411i))), abs(u_input.a.x), Struct_2(select(select(select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, true, false), vec3<bool>(true, false, arg_1.x)), !vec3<bool>(false, false, arg_1.x), true), select(vec3<bool>(true, true, true), vec3<bool>(arg_1.x, false, false), select(vec3<bool>(true, arg_1.x, false), vec3<bool>(false, false, false), vec3<bool>(arg_1.x, arg_1.x, true))), arg_1.x), func_2(Struct_2(select(vec3<bool>(arg_1.x, true, false), vec3<bool>(false, arg_1.x, true), vec3<bool>(true, arg_1.x, arg_1.x)), Struct_1(-39044i, vec2<f32>(arg_0.b.x, 104f), -839f, vec3<f32>(arg_0.d.x, arg_2.x, -1696f), -24136i), ~arg_3), u_input.a.x << (~u_input.a.x % 32u), Struct_2(vec3<bool>(arg_1.x, arg_1.x, true), Struct_1(28804i, arg_0.d.yy, -476f, arg_0.d, 2147483647i), max(arg_0.a, 2147483647i))).b, 1i));
    var_0 = Struct_2(!vec3<bool>(u_input.a.x >= (u_input.a.x & u_input.a.x), !var_0.a.x, !all(var_0.a.zy)), Struct_1(arg_0.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1456f)) + -463f), -642f), arg_0.d.x, _wgslsmith_f_op_vec3_f32(-var_0.b.d), ~((arg_3 << (u_input.a.x % 32u)) | arg_3)), 37913i);
    return var_0.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c);
    var_0 = arg_1.d.x;
    return Struct_4(select(!(!func_3(Struct_5(arg_1.b.x), Struct_2(vec3<bool>(true, false, false), Struct_1(u_input.e, vec2<f32>(-572f, arg_0), arg_1.b.x, arg_1.d, u_input.d.x), arg_1.a), u_input.c.zyw)), vec2<bool>(true, true), func_2(func_2(Struct_2(vec3<bool>(false, false, true), Struct_1(arg_1.e, vec2<f32>(arg_0, arg_1.c), arg_0, vec3<f32>(arg_1.b.x, -1000f, 190f), u_input.b), -1i), countOneBits(77450u), Struct_2(vec3<bool>(true, false, true), Struct_1(1i, vec2<f32>(arg_1.d.x, arg_0), 268f, vec3<f32>(arg_1.c, arg_1.b.x, arg_1.b.x), arg_1.a), -32848i)), ~u_input.a.x, func_2(func_2(Struct_2(vec3<bool>(false, true, false), arg_1, 56145i), 87753u, Struct_2(vec3<bool>(false, true, false), arg_1, -51324i)), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), func_2(Struct_2(vec3<bool>(true, false, true), Struct_1(u_input.c.x, vec2<f32>(arg_1.d.x, arg_0), 525f, arg_1.d, -1i), u_input.d.x), 4294967295u, Struct_2(vec3<bool>(false, true, false), arg_1, -50740i)))).a.xx), 562f, any(!vec3<bool>(-22092i > arg_1.e, true, any(vec3<bool>(false, true, false)))), _wgslsmith_div_u32(reverseBits(u_input.a.x) & u_input.a.x, 2348u), 25220u >> (_wgslsmith_clamp_u32(_wgslsmith_div_u32(reverseBits(23581u), reverseBits(u_input.a.x)), 1u, 66850u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1848f, -1524f, -608f));
    var var_1 = u_input.d.x;
    var var_2 = select(false, 1u >= countOneBits(u_input.a.x), false);
    var var_3 = Struct_4(vec2<bool>(!(true & (u_input.a.x == u_input.a.x)), false), var_0.x, !((_wgslsmith_f_op_f32(var_0.x * var_0.x) > _wgslsmith_f_op_f32(step(var_0.x, var_0.x))) && true), 0u, 29666u);
    var_3 = func_5(var_3.b, func_4(Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, 393f)), -926f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(445f, var_0.x, var_3.b), var_0) * _wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(var_3.b, var_0.x, 124f))), func_1(Struct_2(vec3<bool>(var_3.c, true, true), Struct_1(0i, vec2<f32>(var_3.b, 624f), 227f, vec3<f32>(1000f, var_3.b, var_0.x), u_input.d.x), 80542i))), !func_3(Struct_5(var_0.x), func_2(Struct_2(vec3<bool>(false, true, var_3.c), Struct_1(-2147483647i, var_0.yy, -181f, vec3<f32>(324f, var_0.x, var_3.b), -42217i), 2147483647i), 26311u, Struct_2(vec3<bool>(false, var_3.a.x, false), Struct_1(u_input.c.x, var_0.zx, 1234f, var_0, -1i), u_input.e)), u_input.c.xxw), _wgslsmith_f_op_vec2_f32(var_0.yz - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(521f, -686f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 299f), var_0.yx, vec2<bool>(var_3.a.x, false))), var_3.a))), i32(-1i) * -2147483647i));
    let var_4 = !vec2<bool>(var_3.a.x, (abs(var_3.e) >> (u_input.a.x % 32u)) == ~u_input.a.x);
    var_3 = Struct_4(var_3.a, var_0.x, true, var_3.d, (4294967295u | (var_3.e ^ (u_input.a.x & 0u))) | _wgslsmith_add_u32(1u | u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.e, var_3.d), u_input.a.zy, vec2<u32>(var_3.d, var_3.d)), countOneBits(vec2<u32>(var_3.d, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a.zyz), min(vec3<u32>(0u, var_3.d, 4294967295u), vec3<u32>(var_3.d, u_input.a.x, var_3.e))), u_input.a.x), 1u);
}

