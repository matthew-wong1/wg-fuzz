struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3.c.x;
    let var_1 = !((true & arg_1) & !any(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_2.x, arg_1, true, false), vec4<bool>(arg_0.a.x, true, true, true))));
    var var_2 = vec4<i32>(~2147483647i, -34194i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_3.e.x, arg_0.e.x, arg_3.e.x), ~arg_0.e), max(~2147483647i, reverseBits(-15494i)), reverseBits(-26694i), -1i), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.e.x, 1i, 1i, -15952i), vec4<i32>(9189i, arg_3.e.x, -1i, arg_0.e.x)), -61251i, _wgslsmith_add_i32(12083i, 12792i)), select(vec4<i32>(arg_0.e.x, arg_0.e.x, 1i, -30414i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, arg_0.e.x, arg_0.e.x, -1i), vec4<i32>(arg_0.e.x, arg_3.e.x, arg_0.e.x, arg_3.e.x)), vec4<bool>(arg_0.d.x, arg_2.x, arg_2.x, arg_0.a.x)))), firstLeadingBit(-2147483647i));
    var_0 = arg_0.c.x;
    var_2 = reverseBits(vec4<i32>(_wgslsmith_mult_i32(-(~28823i), arg_3.e.x), abs(-2147483647i), i32(-1i) * -4790i, -1i));
    return 1u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_1(vec3<bool>(false || arg_1.a.x, !arg_3.x, false), ~arg_0, vec3<u32>(~(arg_0 | 38489u) | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.c.zx, arg_1.c.zx), reverseBits(arg_1.c.yy)), ~min(4294967295u, func_3(arg_1, arg_2, vec2<bool>(false, arg_1.a.x), arg_1)), ~1u), vec2<bool>(arg_3.x, !(min(-2147483647i, -17075i) >= (arg_1.e.x ^ arg_1.e.x))), abs(arg_1.e));
    var var_1 = var_0.e;
    let var_2 = true;
    var_1 = select(abs(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.e.x, -56888i, arg_1.e.x) << (arg_1.c % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(var_0.e, vec3<i32>(24282i, arg_1.e.x, var_1.x))))), var_0.e, !all(select(vec3<bool>(false, var_0.a.x, var_2), vec3<bool>(true, arg_2, var_2), vec3<bool>(var_2, var_0.a.x, true))));
    var_0 = arg_1;
    return 1000f;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = ~_wgslsmith_clamp_vec3_u32(var_0.c, vec3<u32>(var_0.b, firstTrailingBit(arg_1.c.x) & u_input.a, 1u), _wgslsmith_mult_vec3_u32(var_2.c, var_1.c));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1187f, _wgslsmith_f_op_f32(func_2(var_1.c.x, Struct_1(vec3<bool>(arg_1.d.x, false, true), var_2.b, var_0.c, vec2<bool>(false, var_2.a.x), vec3<i32>(arg_1.e.x, var_2.e.x, 0i)), arg_0, vec3<bool>(var_1.a.x, var_0.a.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1426f))))));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -572f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - -567f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.x), -557f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2103i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-272f, 737f, 145f) * vec3<f32>(-1698f, 1369f, 1284f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(963f, -374f, 1000f) * vec3<f32>(-974f, -200f, -1972f)))), _wgslsmith_f_op_vec3_f32(func_1(true, Struct_1(vec3<bool>(false, false, true), u_input.a, vec3<u32>(4294967295u, u_input.a, u_input.a), vec2<bool>(true, false), vec3<i32>(0i, 1i, 1i))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1411f, _wgslsmith_f_op_f32(-581f * 292f), -309f))));
    var_0 = _wgslsmith_dot_vec2_i32(min(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-6367i, 2147483647i), vec2<i32>(-81637i, -35981i))), vec2<i32>(1i, _wgslsmith_mult_i32(0i, 0i))), ~vec2<i32>(1i, 1i));
    var_0 = 59059i;
    var_0 = -(min(_wgslsmith_dot_vec3_i32(-vec3<i32>(1936i, -1i, 29641i), ~vec3<i32>(3465i, 2147483647i, 0i)), 33380i) >> (~(_wgslsmith_mod_u32(1864u, 4294967295u) | (u_input.a & 1u)) % 32u));
    var var_2 = select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(var_1.x >= var_1.x, true), vec2<bool>(var_1.x <= 250f, any(vec2<bool>(false, false)))), select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, all(vec3<bool>(false, false, false))), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true))), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(all(vec3<bool>(true, true, true)), false), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a, 12747u, 0u)), ~vec3<u32>(u_input.a, 0u, u_input.a)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u))), 4294967295u, var_1.xx);
}

