struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> i32 {
    return ~((~13464i & _wgslsmith_clamp_i32(u_input.c, i32(-1i) * -2147483647i, firstTrailingBit(0i))) & arg_2.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -2803f, arg_3, arg_3))));
    var var_1 = Struct_1(firstTrailingBit(-(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c.a.x, arg_2.a.x, arg_2.a.x, arg_0.c.a.x), vec4<i32>(arg_0.b.a.x, arg_2.a.x, arg_2.a.x, 2147483647i)) << (vec4<u32>(u_input.b.x, 0u, 4294967295u, 1u) % vec4<u32>(32u)))));
    var var_2 = select(!select(!vec2<bool>(true, arg_0.d), vec2<bool>(true, true), select(!vec2<bool>(arg_0.d, false), vec2<bool>(arg_0.d, arg_0.d), select(vec2<bool>(arg_1, false), vec2<bool>(false, false), vec2<bool>(true, false)))), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), !(!any(vec4<bool>(arg_0.d, false, false, arg_1)))), vec2<bool>(arg_1, true));
    return var_1.a;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(select(func_3(Struct_2(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), Struct_1(vec4<i32>(u_input.c, 19830i, -2147483647i, -22107i)), Struct_1(vec4<i32>(u_input.c, -26801i, -1i, u_input.c)), true), true, Struct_1(-vec4<i32>(1i, 30026i, u_input.c, u_input.c)), 1f), vec4<i32>(-(~u_input.c), u_input.c, 1i, -reverseBits(u_input.c)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false))));
    var var_1 = vec2<bool>(all(vec3<bool>(true, any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), true)), any(vec3<bool>(true, true, true)) | all(vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(true, true)), false, true)));
    var var_2 = var_0;
    var_1 = !select(vec2<bool>(false, var_1.x), select(vec2<bool>(var_1.x, false), select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), all(vec4<bool>(true, true, false, true))), vec2<bool>(all(vec4<bool>(true, var_1.x, var_1.x, true)), var_1.x)), any(vec3<bool>(false, false, true)) == all(vec3<bool>(var_1.x, true, var_1.x)));
    var_2 = var_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1201f - 463f), _wgslsmith_f_op_f32(187f + 1598f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), vec3<bool>(true, true, true), vec3<bool>(false, _wgslsmith_mod_i32(-35297i, 5148i) == func_1(1420f, u_input.c, Struct_1(vec4<i32>(u_input.c, -26381i, u_input.c, 4949i)), u_input.c), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))))), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(4294967295u != u_input.b.x, true, true), u_input.b.x > u_input.a.x), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, true))));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, -821f, 773f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1367f, 541f, -1243f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -835f), _wgslsmith_f_op_f32(f32(-1f) * -470f), 132f)) * vec3<f32>(-299f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1964f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1332f, 948f) * _wgslsmith_f_op_f32(525f * 1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(abs(-876f)), -217f, -2319f));
    var var_3 = true;
    let var_4 = Struct_1(firstLeadingBit(vec4<i32>(abs(var_1), -var_1, var_1, -var_1) ^ _wgslsmith_sub_vec4_i32(max(vec4<i32>(var_1, u_input.c, -2894i, -2147483647i), vec4<i32>(0i, u_input.c, u_input.c, var_1)), ~vec4<i32>(var_1, var_1, 2147483647i, -2147483647i))));
    var_3 = all(!vec4<bool>(false, false, all(vec2<bool>(false, false)), all(select(var_0.xy, vec2<bool>(true, var_0.x), var_0.x))));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + -243f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(-1i), -u_input.c), u_input.c), -1940f, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(var_2.x - 457f))), _wgslsmith_f_op_vec2_f32(-var_2.yx))), ~(~u_input.b.x), abs(14328u));
}

