struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1026f, 429f, -1862f))))) - vec3<f32>(1f, 1f, 1f)) - vec3<f32>(-600f, -680f, -733f)));
    var var_1 = false;
    var var_2 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 38987i), ~firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, 29398i, u_input.b), vec4<i32>(u_input.b, u_input.b, -56667i, -2147483647i))), Struct_1(-55846i, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1002f, 143f) * vec3<f32>(1264f, -481f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(829f, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-944f, var_0.x, var_0.x)))), any(vec4<bool>(false, false, true, true))));
    var var_3 = select(_wgslsmith_mult_vec2_i32((firstLeadingBit(var_2.a.zy) & vec2<i32>(u_input.b, u_input.b)) << (vec2<u32>(u_input.a, ~u_input.a) % vec2<u32>(32u)), firstLeadingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(var_2.b.x, 2333i), -vec2<i32>(var_2.c.a, -24121i)))), var_2.b.zz, any(!(!vec3<bool>(var_2.c.e, true, true))));
    let var_4 = vec3<u32>(~u_input.a, ~(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 43073u, 0u, u_input.a), vec4<u32>(u_input.a, u_input.a, 8656u, 12017u))) ^ (_wgslsmith_add_u32(u_input.a, u_input.a) & 1u)), u_input.a);
    return select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), !select(vec2<bool>(false, var_2.c.e), vec2<bool>(true, var_2.c.e), var_2.c.e)), all(!select(vec2<bool>(false, var_2.c.e), vec2<bool>(false, false), vec2<bool>(false, var_2.c.e)))), select(select(vec2<bool>(select(true, var_2.c.e, true), all(vec4<bool>(true, true, true, true))), !select(vec2<bool>(var_2.c.e, var_2.c.e), vec2<bool>(var_2.c.e, true), var_2.c.e), _wgslsmith_mod_u32(1u, u_input.a) > ~u_input.a), select(select(select(vec2<bool>(false, var_2.c.e), vec2<bool>(var_2.c.e, false), true), !vec2<bool>(var_2.c.e, var_2.c.e), select(var_2.c.e, false, var_2.c.e)), !select(vec2<bool>(var_2.c.e, var_2.c.e), vec2<bool>(var_2.c.e, false), vec2<bool>(var_2.c.e, false)), vec2<bool>(true, true)), all(select(vec2<bool>(true, true), !vec2<bool>(false, var_2.c.e), u_input.a > var_4.x))), select(!select(vec2<bool>(true, var_2.c.e), select(vec2<bool>(var_2.c.e, true), vec2<bool>(var_2.c.e, var_2.c.e), vec2<bool>(var_2.c.e, var_2.c.e)), select(vec2<bool>(var_2.c.e, true), vec2<bool>(false, true), vec2<bool>(var_2.c.e, false))), !(!vec2<bool>(var_2.c.e, var_2.c.e)), !select(select(vec2<bool>(var_2.c.e, var_2.c.e), vec2<bool>(var_2.c.e, var_2.c.e), vec2<bool>(var_2.c.e, var_2.c.e)), vec2<bool>(true, true), !var_2.c.e)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3;
    var var_1 = reverseBits(u_input.a);
    let var_2 = !vec2<bool>(arg_0.c.e, all(vec2<bool>(true, true)) || all(func_3()));
    let var_3 = arg_1.xwz;
    return 2147483647i;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(min(vec3<i32>(firstLeadingBit(i32(-1i) * -5430i), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(u_input.b, u_input.b)), 0i), vec3<i32>((2147483647i >> (arg_1.x % 32u)) << (min(arg_1.x, u_input.a) % 32u), -1i, abs(u_input.b) ^ (-1i ^ u_input.b))), vec4<i32>(-(-27086i & arg_0) ^ _wgslsmith_div_i32(func_2(Struct_2(vec3<i32>(arg_0, arg_0, u_input.b), vec4<i32>(-36050i, u_input.b, 2147483647i, arg_0), Struct_1(arg_0, -480f, -288f, vec3<f32>(1159f, 1217f, 1000f), false)), arg_1, vec3<i32>(arg_0, 1i, u_input.b), Struct_2(vec3<i32>(u_input.b, u_input.b, -2749i), vec4<i32>(1i, arg_0, u_input.b, -49040i), Struct_1(u_input.b, -767f, 360f, vec3<f32>(722f, 1200f, -229f), false))), 1i), ~reverseBits(8417i), u_input.b | countOneBits(arg_0), -10717i), Struct_1(-_wgslsmith_div_i32(-u_input.b, min(0i, 0i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1100f, -211f, false))), _wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-746f * _wgslsmith_f_op_f32(f32(-1f) * -1286f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(397f, 355f, 1014f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1492f, 1424f, -2447f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, -568f, 807f)), true))), !(!all(vec4<bool>(true, true, false, false)))));
    var var_1 = ~u_input.b;
    let var_2 = !(!vec2<bool>(any(vec2<bool>(var_0.c.e, var_0.c.e)), arg_1.x <= arg_1.x));
    let var_3 = Struct_1(u_input.b, _wgslsmith_f_op_f32(var_0.c.c * var_0.c.d.x), 240f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_0.c.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.b, -425f, 396f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b, var_0.c.c, 1000f) * vec3<f32>(var_0.c.b, var_0.c.b, var_0.c.b)), select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_0.c.e, var_0.c.e, var_0.c.e), var_2.x)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.d.x, _wgslsmith_f_op_f32(-var_0.c.c), _wgslsmith_f_op_f32(-var_0.c.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(409f, 2054f, 1466f)))))), var_0.c.e);
    var var_4 = -u_input.b;
    return Struct_2(_wgslsmith_mult_vec3_i32(var_0.a, var_0.a), vec4<i32>(i32(-1i) * -22394i, -3010i, -abs(var_0.c.a), arg_0), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b, vec4<u32>(1979u, 1u, _wgslsmith_add_u32(u_input.a, reverseBits(abs(u_input.a))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(15030u, 64452u, u_input.a, 10983u), select(vec4<u32>(551u, u_input.a, u_input.a, u_input.a), vec4<u32>(46255u, 65691u, u_input.a, u_input.a), false)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 54433u, u_input.a, u_input.a), vec4<u32>(u_input.a, 15553u, u_input.a, 4294967295u)), select(vec4<u32>(u_input.a, 10867u, u_input.a, u_input.a), vec4<u32>(34434u, u_input.a, u_input.a, 4294967295u), false)))));
    var var_1 = vec2<bool>(true, false);
    let var_2 = !vec2<bool>(func_3().x, var_1.x);
    var_1 = func_3();
    var var_3 = countOneBits(reverseBits(vec3<u32>(u_input.a & 0u, _wgslsmith_mult_u32(36901u, u_input.a), 30708u))) << (countOneBits(min(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 61935u)) & vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 11643u, 33245u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)))) % vec3<u32>(32u));
    var var_4 = select(!(!select(select(vec4<bool>(true, var_1.x, var_2.x, var_1.x), vec4<bool>(false, false, var_2.x, var_1.x), false), !vec4<bool>(var_1.x, true, true, var_2.x), all(vec2<bool>(var_0.c.e, var_2.x)))), !select(select(select(vec4<bool>(var_0.c.e, var_0.c.e, var_1.x, true), vec4<bool>(var_2.x, false, false, var_0.c.e), var_1.x), vec4<bool>(true, true, true, false), var_0.c.e), vec4<bool>(true, var_1.x, true, 4294967295u == u_input.a), select(vec4<bool>(false, var_2.x, false, false), vec4<bool>(false, false, var_1.x, var_2.x), vec4<bool>(var_2.x, true, var_0.c.e, false))), !func_1(-7010i, vec4<u32>(min(var_3.x, 0u), u_input.a, var_3.x, ~4294967295u)).c.e);
    let var_5 = vec4<u32>(_wgslsmith_mult_u32(~(~52997u), u_input.a), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 1418u & u_input.a), 1u) | countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_3.x), vec3<u32>(var_3.x, var_3.x, var_3.x))), ~15182u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b, -770f, vec3<u32>(~var_3.x, _wgslsmith_clamp_u32(u_input.a, var_3.x, u_input.a), 4294967295u) & var_5.xyz, var_5.yyz);
}

