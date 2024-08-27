struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>) -> bool {
    return _wgslsmith_sub_u32(~firstTrailingBit(~28391u), 0u) != select(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 0u), ~vec3<u32>(1u, 23740u, 0u)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 4294967295u), countOneBits(1u), 1u), 1u), true);
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(~25497u);
    let var_1 = true;
    var var_2 = vec2<bool>(true, true);
    var_2 = select(!select(select(vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, var_2.x), !var_2.x), select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(var_2.x, var_1)), select(select(vec2<bool>(var_1, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_1)), vec2<bool>(false, var_2.x), vec2<bool>(var_1, var_2.x))), vec2<bool>(true, true), select(!var_1, (var_1 && !var_1) & func_1(!vec4<bool>(var_2.x, false, var_1, var_1), !vec4<bool>(var_1, var_2.x, var_2.x, var_1)), var_1 && false));
    let var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-500f, -977f, 1356f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(362f, 235f, 155f) * vec3<f32>(1559f, -1384f, -1397f)))))));
    return Struct_1(var_3.a.a);
}

fn func_3(arg_0: vec3<bool>) -> vec3<f32> {
    var var_0 = 4294967295u;
    let var_1 = !select(arg_0, vec3<bool>(true, true, true), arg_0.x);
    let var_2 = u_input.a;
    var_0 = ~min(~countOneBits(1u), ~1u);
    var var_3 = vec2<u32>(~(~1u), min(_wgslsmith_mult_u32(min(~0u, 1u), 1u), ~abs(80715u)));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1838f))), _wgslsmith_f_op_f32(1729f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1283f), 1134f)))), _wgslsmith_f_op_f32(f32(-1f) * -1431f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -959f);
    var var_1 = !(!(true || all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    var_1 = true;
    var_1 = any(vec4<bool>(true, true, true, true));
    var var_2 = select(vec3<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), u_input.c.x <= (i32(-1i) * -1i), !func_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true), true);
    var var_3 = Struct_2(0u, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 774f, 238f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-771f, 1008f, -563f, 421f), vec4<f32>(-3551f, 2306f, 669f, 334f), vec4<bool>(false, true, false, var_2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-349f, 1158f, 1000f, 1225f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(492f, -1255f, -1000f, -119f))), vec4<f32>(-476f, -165f, 2163f, 826f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, 287f, -1301f, 1191f))))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-481f, -422f), _wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(abs(-1451f))) * _wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, var_2.x, var_2.x))))), vec4<bool>(!var_2.x, true & (!var_2.x & var_2.x), false, select(any(select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, var_2.x, false))), all(select(vec2<bool>(var_2.x, var_2.x), var_2.zx, var_2.zy)), all(var_2.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -888i) << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), -u_input.c) | (vec2<i32>(-1i) * -u_input.c));
}

