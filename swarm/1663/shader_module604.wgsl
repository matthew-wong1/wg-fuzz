struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    global0 = u_input.a.x;
    global0 = u_input.c.x & u_input.a.x;
    global0 = ~1u | u_input.a.x;
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b), -u_input.b);
    return u_input.d;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = vec3<i32>(~2147483647i, -_wgslsmith_div_i32(_wgslsmith_sub_i32(-20816i, arg_0.x), _wgslsmith_add_i32(0i, arg_0.x)), 0i);
    var_0 = select(select(vec3<i32>(func_3(), u_input.b.x, max(u_input.d, -26989i)) | u_input.b.yzx, vec3<i32>(2147483647i, -1402i, 1i), true), arg_0, false);
    global0 = min(56001u ^ u_input.a.x, u_input.a.x);
    let var_1 = 0u;
    global0 = 17964u;
    return !(!(!((u_input.d != 2147483647i) && false)));
}

fn func_1() -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(select(true, true, true) & (1u <= _wgslsmith_mod_u32(u_input.c.x, 1u)), false), all(vec4<bool>(false, !func_2(vec3<i32>(9022i, 22397i, -43199i)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), false)));
    var var_1 = firstTrailingBit(u_input.a.x >> (45066u % 32u));
    var var_2 = -465f;
    let var_3 = -1288i;
    return Struct_1(2147483647i, -11681i);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = 47738u;
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-692f, 121f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1687f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1674f, -1770f)) * vec2<f32>(-2408f, -1000f))))));
    global0 = countOneBits(~_wgslsmith_sub_u32(~(~arg_0.x), 66526u));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(478f - _wgslsmith_f_op_f32(-var_0.x))) - -699f));
    return ~arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(-_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -1i, max(u_input.d, -30727i), u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -18831i, 10365i), vec4<i32>(2147483647i, u_input.b.x, 82720i, -2147483647i))), select(u_input.b, u_input.b, vec4<bool>(false, false, true, false)) & u_input.b), vec4<i32>(49873i, ~(-47993i), u_input.b.x, 213i));
    global0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, u_input.a.x), func_4(vec3<u32>(u_input.c.x >> (0u % 32u), u_input.a.x, u_input.c.x), Struct_1(1219i, ~select(var_0.x, u_input.d, false)), func_1()));
    global0 = 1u;
    let var_1 = func_1();
    let var_2 = Struct_1(countOneBits(~abs(~u_input.b.x)), func_3());
    let var_3 = Struct_2(select(max(vec4<u32>(7656u, 1u, ~7963u, countOneBits(u_input.a.x)), vec4<u32>(abs(u_input.c.x), u_input.c.x, u_input.c.x, firstTrailingBit(u_input.a.x))), abs(vec4<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(8550u, u_input.c.x), vec2<u32>(u_input.a.x, 0u)), 50741u, select(0u, u_input.a.x, false))), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(select(false, false, true), true, select(true, false, true), true), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1945f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1158f, -104f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2201f, 329f)) + 330f), _wgslsmith_f_op_f32(floor(-249f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_2.a), var_0.x, ~1i);
}

