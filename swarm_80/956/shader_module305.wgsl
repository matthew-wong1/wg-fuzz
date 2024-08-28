struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = (vec4<u32>(arg_2, ~4294967295u, max(arg_2, 4294967295u) ^ arg_2, u_input.e.x) ^ ~firstLeadingBit(vec4<u32>(28916u, 41911u, 229u, 0u))) ^ ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 4294967295u, 0u, 0u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 78288u), vec4<u32>(67817u, 17592u, 3863u, 0u)), vec4<u32>(4294967295u, 1u, arg_2, u_input.e.x) | ~vec4<u32>(1u, u_input.e.x, 31989u, 4294967295u), vec4<u32>(~66322u, ~7289u, abs(arg_2), arg_2 >> (1u % 32u)));
    let var_1 = (var_0.x | arg_2) >> (~u_input.e.x % 32u);
    return 1441f;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, 744f, -1361f, 873f)), vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.c.x), 1000f, vec4<bool>(false, true, true, false))), true), 1481f, 1u, vec3<f32>(595f, -482f, 694f))), _wgslsmith_div_f32(1038f, -1658f)), 756f, -1000f, _wgslsmith_f_op_f32(ceil(1f))))));
    let var_1 = Struct_4(Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))), vec4<bool>(false, (var_0.x < -1561f) && true, u_input.e.x < _wgslsmith_mod_u32(90892u, 4294967295u), true)), -1898f, _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.e.x, u_input.e.x)), u_input.e.yy, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.e.xz) | _wgslsmith_clamp_vec2_u32(firstLeadingBit(u_input.e.xz), vec2<u32>(0u, u_input.e.x), ~u_input.e.yy)));
    let var_2 = vec4<f32>(-1377f, var_1.a.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.b * var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -655f))))), 464f);
    var var_3 = var_0.x;
    let var_4 = var_1.a;
    return Struct_3(Struct_2(Struct_1(firstLeadingBit(var_1.a.a), _wgslsmith_f_op_f32(round(1972f)), var_4.c)), var_1.a.c.x);
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = func_2();
    var_0 = Struct_3(var_0.a, var_0.a.a.c.x);
    var_0 = Struct_3(func_2().a, !arg_0.x);
    var_0 = Struct_3(func_2().a, true);
    let var_1 = u_input.e.x;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c, -694f, vec4<bool>(false, !all(vec2<bool>(true, false)), !func_1(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_3(Struct_2(Struct_1(vec2<i32>(0i, countOneBits(var_0.a.x)), _wgslsmith_f_op_f32(-605f - -394f), vec4<bool>(true, false, var_0.c.x, any(vec2<bool>(var_0.c.x, false))))), var_0.c.x);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1407f)))), var_0.b);
    var var_3 = select(-(~vec4<i32>(4469i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, var_0.a.x), u_input.b), u_input.b.x, u_input.d)), -firstTrailingBit(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(var_0.a.x, -44897i, var_0.a.x, 55642i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 0i, 7334i), vec4<i32>(u_input.a, 2147483647i, u_input.c.x, 2147483647i), vec4<i32>(var_1.a.a.a.x, -55403i, -4043i, -35476i)))), var_1.a.a.c);
    var_2 = vec2<f32>(var_0.b, 1011f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-1i, -func_2().a.a.a.x));
}

