struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: vec3<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    let var_0 = vec2<bool>(select(4294967295u, abs(_wgslsmith_clamp_u32(0u, 4294967295u, 38464u)), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))) >= ~1u, false);
    var var_1 = vec2<i32>(-2147483647i, 2147483647i);
    let var_2 = Struct_2(Struct_1(!(select(var_0.x, var_0.x, var_0.x) | all(global0[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, 2147483647i), u_input.a.xz) | ~vec2<i32>(-12196i, var_1.x), 203f, ~max(1u, reverseBits(48157u)), ~min(abs(vec2<i32>(var_1.x, var_1.x)), u_input.b)), vec2<u32>(_wgslsmith_clamp_u32(~max(20999u, 6410u), 0u, min(~1u, 1u)), _wgslsmith_div_u32(~0u, ~_wgslsmith_div_u32(4294967295u, 91255u))));
    let var_3 = select(!vec4<bool>(!(var_2.a.a | true), all(vec4<bool>(var_0.x, false, var_2.a.a, var_2.a.a)), ~var_2.a.b.x < -36866i, false), !vec4<bool>(~var_2.a.b.x != _wgslsmith_sub_i32(-23464i, -18540i), !var_2.a.a, !var_0.x, any(vec3<bool>(var_0.x, var_0.x, false))), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.c), _wgslsmith_f_op_f32(trunc(-1871f))) == var_2.a.c));
    global1 = vec3<i32>(-1i | ~var_1.x, abs(countOneBits(countOneBits(global1.x))), _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -8356i, 1i), var_1.x) >> (~select(4294967295u >> (1u % 32u), var_2.a.d, true) % 32u));
    return abs(~min(var_2.a.b, min(var_2.a.e, vec2<i32>(38578i, global1.x)))) ^ min(-(~countOneBits(var_2.a.e)), -(~var_2.a.b));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(any(!select(global0[_wgslsmith_index_u32(1u, 9u)], vec3<bool>(true, false, false), vec3<bool>(true, false, false))), ~_wgslsmith_add_vec2_i32(vec2<i32>(22350i, u_input.b.x) | min(vec2<i32>(2147483647i, 922i), global1.yx), arg_2.zy), -375f, arg_3.x, arg_2.ww);
    return Struct_1(all(select(!vec4<bool>(true, var_0.a, var_0.a, var_0.a), select(!vec4<bool>(var_0.a, false, false, true), !vec4<bool>(var_0.a, var_0.a, false, false), !vec4<bool>(true, true, true, var_0.a)), !vec4<bool>(var_0.a, false, var_0.a, true))), u_input.b, _wgslsmith_f_op_f32(abs(var_0.c)), ~arg_3.x, func_3());
}

fn func_1() -> Struct_1 {
    return func_2(global1.x, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1630f), _wgslsmith_f_op_f32(-1f)), -vec4<i32>(-_wgslsmith_div_i32(-5121i, 45571i), 1i, global1.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.b.x), -vec4<i32>(-2147483647i, 38475i, u_input.b.x, 33788i))), vec2<u32>(countOneBits(78795u) | _wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, 1u), _wgslsmith_mult_u32(53945u, 1u), _wgslsmith_mod_u32(13884u, 4294967295u)), firstTrailingBit(~20745u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 9>();
    let var_0 = ~(~(~(~(~vec3<u32>(56129u, 51583u, 4294967295u)))));
    let var_1 = var_0;
    let var_2 = func_1();
    let var_3 = Struct_2(func_2(abs(var_2.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(417f, 133f)), vec2<f32>(-761f, -1000f))), reverseBits(vec4<i32>(u_input.c, 1i, -10663i, max(1i, -1i))), vec2<u32>(1u, ~_wgslsmith_add_u32(63477u, var_0.x))), ~vec2<u32>(var_2.d, var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(func_1().e.x, i32(-1i) * -5692i), 72807i);
}

