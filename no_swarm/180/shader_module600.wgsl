struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1709f, -1267f) * vec3<f32>(1217f, 315f, -513f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-168f, 1000f, 3232f), vec3<f32>(-1464f, -1000f, 1332f), true)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, 163f, -285f) - vec3<f32>(655f, 986f, 732f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    let var_2 = true & any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))));
    return -225f;
}

fn func_3(arg_0: Struct_5) -> f32 {
    let var_0 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(-2147483647i, arg_0.a), u_input.d, vec3<u32>(17187u, 0u, 24602u), vec3<i32>(5534i, 2147483647i, -8937i)))), _wgslsmith_f_op_f32(floor(1474f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.d, u_input.a), 36176i, vec3<u32>(u_input.c.x, 57590u, 52275u), vec3<i32>(u_input.d, 2147483647i, arg_0.a))))))), ~max(~vec3<u32>(u_input.b, u_input.b, u_input.c.x), ~vec3<u32>(1u, u_input.b, u_input.b)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(42197u, 0u, 1u), ~firstTrailingBit(vec3<u32>(719u, u_input.c.x, 67215u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2154f + _wgslsmith_f_op_f32(-1019f - -201f))))), -1546f);
    var var_1 = 389f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), 1152f);
    return _wgslsmith_div_f32(-277f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-751f)), _wgslsmith_f_op_f32(min(1706f, var_0.d)))), -466f))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = 20872u;
    let var_1 = ~u_input.b;
    var var_2 = 1114f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - _wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a, u_input.d), u_input.d, vec3<u32>(u_input.c.x, u_input.c.x, var_1), vec3<i32>(u_input.d, u_input.a, 2147483647i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.a, u_input.d) << (vec2<u32>(var_1, var_1) % vec2<u32>(32u)), ~(-32778i), firstTrailingBit(vec3<u32>(u_input.b, var_1, 54318u)), _wgslsmith_mult_vec3_i32(vec3<i32>(19063i, u_input.a, -2147483647i), vec3<i32>(24057i, u_input.d, 2147483647i)))))));
    let var_3 = _wgslsmith_f_op_f32(func_3(Struct_5(-2147483647i)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_3), -541f, var_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, var_3, var_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(vec3<bool>(true, true, true)), ~vec3<u32>(1006u, u_input.c.x, _wgslsmith_mod_u32(~56354u, _wgslsmith_div_u32(29709u, 1u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(abs(1f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(901f - -188f))))));
    let var_1 = func_1(vec3<bool>(!(_wgslsmith_f_op_f32(floor(2005f)) != _wgslsmith_f_op_f32(abs(-546f))), any(vec4<bool>(false, false, any(vec4<bool>(true, true, false, true)), true)), false));
    let var_2 = Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~19785u, abs(u_input.c.x)), ~_wgslsmith_div_u32(1u, u_input.c.x), u_input.c.x << (var_0.b.x % 32u), u_input.c.x), countOneBits(vec4<u32>(firstLeadingBit(0u), u_input.c.x, u_input.c.x, _wgslsmith_div_u32(var_0.b.x, var_0.b.x))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, 89356u, u_input.b, 1u), max(vec4<u32>(u_input.b, 29671u, var_0.b.x, 0u), vec4<u32>(35388u, 17406u, u_input.c.x, u_input.b)), vec4<u32>(var_0.b.x, var_0.b.x, 50652u, 0u) << (vec4<u32>(1u, 19911u, 35888u, 6778u) % vec4<u32>(32u)))), vec3<bool>(false != all(vec2<bool>(true, true)), true, all(vec3<bool>(all(vec4<bool>(false, true, true, true)), true, any(vec2<bool>(false, false))))));
    let var_3 = _wgslsmith_add_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -52920i, -12303i), firstTrailingBit(55761i)) << (vec2<u32>(u_input.c.x, 38769u) % vec2<u32>(32u)), select((vec2<i32>(-81066i, -2436i) >> (u_input.c % vec2<u32>(32u))) & -vec2<i32>(-53751i, u_input.d), ~(-vec2<i32>(-56100i, -1i)), !select(var_2.b.xz, vec2<bool>(var_2.b.x, true), var_2.b.xy))));
    let var_4 = _wgslsmith_f_op_f32(441f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c - 449f), var_1.a.x, any(vec4<bool>(all(var_2.b.zy), var_2.b.x, !var_2.b.x, var_3 > var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

