struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
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

var<private> global0: i32 = 59864i;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = ~abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-52903i, u_input.c, -6490i) << (vec3<u32>(u_input.e, u_input.e, u_input.a) % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, u_input.d)), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, u_input.c, 2147483647i), ~vec3<i32>(49834i, u_input.d, u_input.c))));
    var_0 = _wgslsmith_mod_i32(-(~u_input.c), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1427i, -6284i, u_input.d, 1i), countOneBits(max(vec4<i32>(1i, u_input.d, u_input.c, u_input.c), vec4<i32>(1i, u_input.c, u_input.d, u_input.d)))), u_input.d));
    var_0 = ~((~(~u_input.d) >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.e, 4294967295u), vec3<u32>(4294967295u, u_input.e, u_input.b))) % 32u)) << (9710u % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(505f, -228f, -864f, -797f), vec4<f32>(-1000f, 1192f, -363f, 478f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-718f, -524f, -2423f, -184f), vec4<f32>(-351f, 2230f, -662f, 1460f)))))));
    var var_2 = Struct_1(true);
    return _wgslsmith_mult_vec2_i32(select(~vec2<i32>(1i, ~(-1i)), _wgslsmith_mod_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(u_input.d, 12120i)), _wgslsmith_mod_vec2_i32(vec2<i32>(4198i, -28526i), vec2<i32>(29353i, 8844i)), !vec2<bool>(true, var_2.a)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.d, 1i)), -vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.c, u_input.d) >> (vec2<u32>(u_input.e, u_input.a) % vec2<u32>(32u)))), !vec2<bool>(any(vec4<bool>(var_2.a, true, var_2.a, var_2.a)), select(true, false, var_2.a))), ~(-(~vec2<i32>(33958i, 42485i))));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = -1521f;
    var var_1 = vec2<f32>(1016f, -621f);
    let var_2 = -abs(func_3());
    var var_3 = reverseBits(u_input.e);
    let var_4 = 1000f;
    return !select(select(!select(vec4<bool>(arg_2.a, false, arg_2.a, false), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, true), arg_2.a), select(!vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(false, false, false, arg_2.a), arg_2.a == true), vec4<bool>(arg_2.a, arg_2.a, false, true)), vec4<bool>(_wgslsmith_f_op_f32(var_0 + 1178f) < _wgslsmith_f_op_f32(f32(-1f) * -114f), all(!vec4<bool>(true, arg_2.a, true, arg_2.a)), arg_2.a, !(arg_2.a | arg_2.a)), true);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !(!(!(!func_2(arg_0, vec3<i32>(u_input.c, -48852i, -72355i), Struct_1(false)))));
    global0 = firstLeadingBit(u_input.d);
    var var_1 = Struct_1(false);
    var var_2 = select(!vec4<bool>(any(!vec3<bool>(false, var_0.x, var_1.a)), !var_1.a, false, -2704i != countOneBits(u_input.c)), !(!(!vec4<bool>(true, var_0.x, var_0.x, var_1.a))), true);
    let var_3 = u_input.c;
    return Struct_1((any(!vec4<bool>(true, var_1.a, false, true)) | !(arg_0 > arg_0)) && true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-369f)), -414f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1923f, -350f)) * _wgslsmith_f_op_f32(-485f + -1726f)) - _wgslsmith_f_op_f32(ceil(1f)))));
    global0 = _wgslsmith_sub_i32(-u_input.d, -func_3().x);
    var var_2 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(551f, var_1.x)), _wgslsmith_div_f32(-112f, 388f)), var_1.x)), -1582f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(37089u, _wgslsmith_div_u32(u_input.a, ~4294967295u), u_input.e), firstTrailingBit(vec3<u32>(17968u & u_input.b, u_input.e, abs(23947u))), ~(~vec3<u32>(40801u, 0u, 9433u))));
}

