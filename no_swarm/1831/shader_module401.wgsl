struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    var var_0 = Struct_2(arg_1.a.x, arg_2.b, arg_0.x, 4018i);
    var_0 = arg_2;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f + -1249f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2289f, arg_2.c, var_0.c) + vec3<f32>(-223f, arg_0.x, arg_2.c)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.c, 1290f, arg_0.x))))))))));
    var_0 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(629f + -1919f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.c)))));
    return ~abs(arg_2.b.a.x) != arg_1.a.x;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), !select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1231f, 1221f)), Struct_1(vec4<u32>(0u, 59822u, 64440u, 4294967295u), vec3<bool>(false, true, true), vec2<bool>(false, false)), Struct_2(4294967295u, Struct_1(vec4<u32>(49100u, 1u, 1u, 0u), vec3<bool>(false, true, true), vec2<bool>(false, false)), 404f, arg_0.x))), select(false, true, any(vec4<bool>(true, true, true, true)) & true));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, -1055f, _wgslsmith_div_f32(-1066f, 545f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1792f))))));
    return var_1.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(exp2(arg_2)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(532f)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(270f * _wgslsmith_f_op_f32(-1895f * var_0.x))), -310f)), var_0.x);
    let var_2 = -887f;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, 10875i, -18058i, 19383i)))), _wgslsmith_div_f32(-376f, -1779f))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1007f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.x, var_0.x)), var_1.x, all(arg_1.b))))))));
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(68940u, 0u), select(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(48242u, 0u)), all(vec2<bool>(true, true)))) ^ vec2<u32>(firstTrailingBit(4294967295u), select(~62768u, 0u, true));
    var var_1 = ~(~(_wgslsmith_clamp_vec4_i32(-vec4<i32>(8287i, 1i, 1i, 1i), vec4<i32>(u_input.a, -16946i, u_input.a, 1i), firstTrailingBit(vec4<i32>(-2891i, u_input.a, u_input.a, 33974i))) << (((vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) >> (vec4<u32>(var_0.x, 33562u, var_0.x, 5767u) % vec4<u32>(32u))) ^ (vec4<u32>(var_0.x, var_0.x, 1u, var_0.x) & vec4<u32>(16385u, var_0.x, var_0.x, 0u))) % vec4<u32>(32u))));
    var_0 = abs(select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_div_u32(~0u, var_0.x >> (23639u % 32u)), ~(var_0.x & var_0.x)), select(!func_1(68070u, Struct_1(vec4<u32>(52375u, 21321u, var_0.x, 4294967295u), vec3<bool>(true, true, true), vec2<bool>(true, false)), 119f), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(true, false, true)), true))));
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1346f, -786f, -945f, -1000f) - vec4<f32>(-168f, -1271f, -878f, -358f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-916f, -1783f, 149f, -806f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1666f, 1000f, 3038f, 1591f) + vec4<f32>(1085f, -1005f, -779f, 208f)), true)))), select(true, true, true)))));
    var var_4 = var_3.x;
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-1251f * -1301f), _wgslsmith_f_op_f32(floor(648f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) + var_3.x)));
    let var_5 = firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i) ^ ~vec2<i32>(-2147483647i, var_1.x), min(~var_1.yz << (vec2<u32>(2549u, var_0.x) % vec2<u32>(32u)), select(-var_1.xz, firstLeadingBit(var_1.zw), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_5.x, u_input.a, 2147483647i), var_1.zyz) >> (1u % 32u), -(~_wgslsmith_sub_i32(-65600i, 0i)), 28896i), 1i);
}

