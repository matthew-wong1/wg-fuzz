struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> bool {
    var var_0 = arg_0;
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2, u_input.a), vec2<i32>(-94866i, -1i)), arg_1.yz)), -1i | arg_1.x);
    var var_2 = arg_0;
    let var_3 = arg_1.x;
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a))), ~(~(-32458i) | _wgslsmith_mult_i32(1i, u_input.e.x)));
    return false || all(vec3<bool>(true, true, true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = vec2<u32>(~(~firstTrailingBit(countOneBits(0u))), 6536u);
    let var_1 = _wgslsmith_mult_u32(countOneBits(min(select(1u, var_0.x, false), 21236u)), _wgslsmith_sub_u32(select(var_0.x, 4294967295u, func_3(Struct_1(-205f, 0i), max(vec4<i32>(arg_0.b, -10540i, -13094i, u_input.a), vec4<i32>(u_input.d.x, 1i, u_input.a, arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(ceil(-449f)))), var_0.x));
    global0 = array<vec3<i32>, 26>();
    global0 = array<vec3<i32>, 26>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + 282f);
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = ~countOneBits(vec4<u32>(4294967295u, ~18515u, _wgslsmith_sub_u32(23640u, 1u), 1u)) << (vec4<u32>(~(~(~1u)), _wgslsmith_div_u32(select(abs(1u), _wgslsmith_mod_u32(0u, 1u), true), 21132u), 35742u, firstTrailingBit(_wgslsmith_sub_u32(func_2(Struct_1(-757f, u_input.b), vec2<f32>(227f, 988f)), 41476u))) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1425f, -1021f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-159f, -1000f)) + _wgslsmith_f_op_f32(-307f + 978f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1053f - _wgslsmith_div_f32(1551f, -3025f))))), -1i);
    var var_2 = u_input.e;
    global0 = array<vec3<i32>, 26>();
    let var_3 = max(~select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-14603i, u_input.a, var_2.x, 40220i), vec4<i32>(0i, 27450i, 1i, var_2.x)), max(vec4<i32>(1i, 19895i, -2147483647i, 0i), vec4<i32>(0i, var_1.b, 16106i, var_1.b))), max(vec4<i32>(var_1.b, var_1.b, var_2.x, var_2.x), vec4<i32>(0i, -17060i, 43452i, -1i)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), -select(firstLeadingBit(vec4<i32>(24631i, var_1.b, var_2.x, -39673i)), -vec4<i32>(var_1.b, 0i, 2147483647i, -582i), vec4<bool>(true, true, true, true)) | vec4<i32>(1i >> (1u % 32u), ~var_1.b, var_1.b, 2147483647i));
    return Struct_1(533f, _wgslsmith_sub_i32(-(~0i), ~(var_3.x & var_1.b) & -_wgslsmith_add_i32(u_input.e.x, u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f - 275f)), -u_input.d.x);
    var var_1 = all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    global0 = array<vec3<i32>, 26>();
    var_0 = func_1();
    let var_2 = Struct_1(_wgslsmith_div_f32(-621f, var_0.a), var_0.b);
    var_1 = !any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))));
    global0 = array<vec3<i32>, 26>();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~vec3<u32>(1u >> (1u % 32u), 23002u, 1u), var_2.b);
}

