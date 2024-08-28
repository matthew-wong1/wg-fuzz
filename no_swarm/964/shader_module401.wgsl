struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.a.x)) * -328f)))), Struct_2(arg_0.a.a, arg_3.x), arg_0.a.a);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-1363f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(592f)))), var_0.b, _wgslsmith_f_op_vec3_f32(ceil(arg_0.a.a)));
    let var_2 = arg_0;
    var_0 = Struct_4(_wgslsmith_f_op_f32(floor(-631f)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), var_0.b.a))), !(!var_0.b.b) != arg_1.a.x), var_0.c);
    var var_3 = u_input.d;
    return _wgslsmith_f_op_f32(-var_2.a.a.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(464f, 123f, -620f), vec3<f32>(-407f, -218f, 324f))) * vec3<f32>(1250f, 1730f, -629f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -626f), _wgslsmith_div_f32(-405f, 562f), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec3<f32>(2192f, 708f, -174f), true), vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)), u_input.d.x, vec2<bool>(true, false))))), all(vec4<bool>(true, true, true, true)))), true);
    let var_1 = vec2<f32>(1f, 1f);
    let var_2 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, true, true), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, false)))), !(!select(vec3<bool>(false, var_0.b, true), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, true, var_0.b), false), any(vec4<bool>(var_0.b, true, true, var_0.b)))), select(select(!select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, var_0.b), true), select(vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(true, true, true), !var_0.b), true), select(!vec3<bool>(var_0.b, var_0.b, var_0.b), !vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, -4995i < u_input.b, var_0.b)), !all(!vec3<bool>(var_0.b, var_0.b, true))));
    var var_3 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), 774f), u_input.d.x < 8530u);
    let var_4 = var_0;
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> vec4<u32> {
    var var_0 = func_2();
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a) - arg_0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a))), !select(!arg_2, !arg_2, !arg_2))), 46478u >= select(~1u, ~select(1u, u_input.a, arg_2.x), arg_0.b));
    var_0 = Struct_2(var_0.a, arg_0.a.x < _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(func_3(Struct_3(arg_0, vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, arg_2.x, var_0.b)), _wgslsmith_dot_vec3_u32(vec3<u32>(17087u, arg_1, 4294967295u), vec3<u32>(u_input.a, arg_1, u_input.d.x)), select(arg_2.yy, vec2<bool>(true, false), false)))));
    var_0 = func_2();
    var var_1 = Struct_1(select(vec4<bool>(arg_0.b, true, false, false || arg_2.x), !select(!vec4<bool>(false, arg_0.b, arg_0.b, arg_2.x), select(vec4<bool>(true, true, arg_2.x, true), vec4<bool>(arg_2.x, false, false, false), true), arg_2.x), vec4<bool>(var_0.b, !all(vec4<bool>(arg_3, true, false, arg_0.b)), !(arg_0.a.x < -1000f), var_0.b | false)));
    return ~(~vec4<u32>(u_input.d.x, u_input.a, ~(~22140u), countOneBits(~0u)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = select(_wgslsmith_mult_vec2_u32(countOneBits(arg_0.yw | vec2<u32>(56949u, 103686u)), u_input.d), arg_0.xw, vec2<bool>(!all(arg_1.a.zw), true && ((arg_2.b & true) & true)));
    let var_1 = select(arg_1.a.wxz, select(arg_1.a.xxz, select(select(arg_3.a.zxy, arg_1.a.xyw, arg_2.b), !(!arg_3.a.yzy), arg_1.a.yyx), arg_1.a.wwy), vec3<bool>(var_0.x <= select(var_0.x, ~1u, select(arg_3.a.x, arg_2.b, arg_2.b)), select(!(arg_0.x == 41459u), arg_3.a.x, !(!arg_2.b)), true));
    var var_2 = -184f;
    var var_3 = Struct_4(arg_2.a.x, arg_2, arg_2.a);
    var var_4 = (firstTrailingBit(~vec4<i32>(-1i, -13269i, -2147483647i, u_input.b)) >> (min(arg_0, ~arg_0 >> (vec4<u32>(u_input.d.x, var_0.x, var_0.x, 80896u) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~vec4<i32>(reverseBits(_wgslsmith_add_i32(u_input.c.x, 0i)), min(-27758i, u_input.c.x) | ~u_input.e, countOneBits(1270i), u_input.b);
    return vec2<i32>(~(-2147483647i << (firstLeadingBit(arg_0.x) % 32u)), countOneBits(~1i)) | select(select(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(var_4.x, var_4.x)) | vec2<i32>(-44436i, -1i), vec2<i32>(-var_4.x, 52889i | u_input.b), vec2<bool>(true, arg_2.b)), var_4.ww, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 119f;
    let var_1 = _wgslsmith_sub_vec2_i32(u_input.c, abs(func_4(_wgslsmith_sub_vec4_u32(func_1(Struct_2(vec3<f32>(-935f, var_0, var_0), true), u_input.d.x, vec3<bool>(false, false, true), false), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 40068u), vec4<u32>(0u, 4294967295u, u_input.a, 1u))), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), Struct_2(vec3<f32>(var_0, 265f, -602f), true), Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true))))));
    let var_2 = vec2<u32>(~(~0u), u_input.a) ^ select(vec2<u32>(u_input.a, ~firstLeadingBit(2508u)), u_input.d, select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(true, true)));
    var var_3 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var_3 = Struct_1(vec4<bool>(true, true, !(!all(vec3<bool>(true, true, var_3.a.x))), any(!(!var_3.a.xw))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-283f - var_0))), _wgslsmith_f_op_f32(func_2().a.x * -1536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, var_0, -318f)))), var_3.a.x);
    var var_5 = !vec3<bool>(false, var_4.b, u_input.a > func_1(var_4, var_2.x, select(vec3<bool>(var_4.b, true, true), var_3.a.yyy, var_3.a.x), any(vec3<bool>(true, var_4.b, true))).x);
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-294f, 318f, 1093f, 142f), vec4<f32>(-581f, 1000f, 1328f, var_4.a.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, var_4.a.x, var_4.a.x, -684f))), var_3.a))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(trunc(374f)), var_4.a.x, _wgslsmith_f_op_f32(sign(var_4.a.x)))))));
    var_3 = Struct_1(select(var_3.a, vec4<bool>(select(true, var_3.a.x || false, var_4.b && false), var_3.a.x, true, any(var_3.a.xy)), vec4<bool>(true, func_2().b, var_4.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.b & _wgslsmith_dot_vec2_i32(u_input.c, _wgslsmith_mult_vec2_i32(var_1, vec2<i32>(u_input.b, -2147483647i)))), 1u);
}

