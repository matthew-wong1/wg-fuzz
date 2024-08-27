struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = true;
    let var_1 = -u_input.e.x;
    return vec3<u32>(_wgslsmith_add_u32(8544u, ~117907u), u_input.b.x, ~abs(_wgslsmith_add_u32(3437u & u_input.b.x, ~0u)));
}

fn func_3() -> i32 {
    var var_0 = 260f;
    let var_1 = Struct_1(any(vec2<bool>(false, false)) && any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, false), true)));
    var_0 = 857f;
    let var_2 = Struct_2(~(~u_input.b.x), Struct_1(var_1.a), u_input.d.x);
    let var_3 = vec2<bool>(true, true);
    return ~1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(firstTrailingBit(arg_2.x), Struct_1(false), func_3());
    return Struct_2(~abs(~u_input.b.x), var_0.b, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec2<bool>(false, true)))));
    var var_1 = 1227f;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(184f, -154f, 873f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1824f, -475f, -1000f), vec3<f32>(1115f, 900f, 306f))) * vec3<f32>(1385f, -938f, 932f)))), !var_0.a, _wgslsmith_mult_vec3_u32(func_1(vec3<u32>(u_input.b.x, 4294967295u, ~16758u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), -(u_input.c | vec4<i32>(~(-40967i), -u_input.a, abs(-26465i), ~(-2776i))));
    var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1429f, 414f))))));
    var var_3 = vec2<f32>(2303f, _wgslsmith_f_op_f32(f32(-1f) * -261f));
    let var_4 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1675f, -1949f, -943f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, var_3.x, -1690f)))))), (var_3.x >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.x, 337f), _wgslsmith_f_op_f32(var_3.x * var_3.x), true))) != false, vec3<u32>(var_2.a, _wgslsmith_mult_u32(select(23691u, 53170u, var_0.a) | _wgslsmith_div_u32(1u, 1u), u_input.b.x), ~var_2.a), max(~select(_wgslsmith_sub_vec4_i32(vec4<i32>(-2282i, var_2.c, u_input.a, -1i), u_input.e), ~vec4<i32>(2147483647i, 2147483647i, -2147483647i, var_2.c), var_2.c == 1i), u_input.e)).b;
    let var_5 = -985f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5), u_input.e, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-594f, -1427f, _wgslsmith_f_op_f32(round(149f)))), any(!(!vec3<bool>(false, true, var_4.a))), func_1(vec3<u32>(_wgslsmith_add_u32(38650u, u_input.b.x), 58515u, 5105u)), u_input.e).a);
}

