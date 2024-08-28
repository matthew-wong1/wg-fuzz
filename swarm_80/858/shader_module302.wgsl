struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = countOneBits(firstTrailingBit(~(vec4<u32>(4294967295u, 34054u, 28622u, u_input.d.x) & vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.c))) & countOneBits(max(~vec4<u32>(4049u, 4294967295u, u_input.d.x, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 28442u, u_input.d.x, 143809u), vec4<u32>(1890u, u_input.b.x, 30006u, u_input.b.x)))));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<f32>) -> f32 {
    var var_0 = Struct_1(!select(arg_1.a, !vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), func_2(~u_input.a.x)), vec3<i32>(countOneBits(_wgslsmith_mod_i32(u_input.a.x, 0i)), countOneBits(_wgslsmith_sub_i32(arg_1.b.x, u_input.a.x)), i32(-1i) * -u_input.a.x) & arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(695f))) + _wgslsmith_f_op_f32(-2014f * 503f))));
    let var_1 = Struct_3(select(select(vec2<bool>(var_0.a.x, var_0.a.x), select(vec2<bool>(false, true), !var_0.a.zw, vec2<bool>(true, var_0.a.x)), true), select(vec2<bool>(true, arg_1.a.x), vec2<bool>(true, true), var_0.a.x), arg_1.a.ww), _wgslsmith_f_op_f32(f32(-1f) * -1200f), arg_1.b.x);
    let var_2 = Struct_2(Struct_1(vec4<bool>(false, !var_0.a.x, var_0.a.x, true), abs(var_0.b), _wgslsmith_f_op_f32(round(arg_2.x))), arg_1, Struct_1(!(!arg_1.a), var_0.b, _wgslsmith_f_op_f32(min(var_1.b, arg_3.x))), arg_2);
    let var_3 = var_2;
    var_0 = var_3.c;
    return -199f;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec3<i32> {
    return arg_3.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1024f, -1888f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b, Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(-8863i, 2147483647i, -72594i), 1141f), vec4<f32>(2001f, -200f, -197f, -335f), vec2<f32>(-1387f, -1304f))) + _wgslsmith_f_op_f32(abs(-763f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f))));
    var_0 = -693f;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1971f, 220f, 1000f), vec4<f32>(-668f, 935f, -625f, 1226f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 572f, -229f, 1224f) * vec4<f32>(-734f, -817f, 203f, 1332f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1680f, 670f, -1096f, -448f) + vec4<f32>(-194f, -604f, -2439f, -125f)) - vec4<f32>(-2002f, 981f, -183f, 1658f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(156f, 1297f, -1490f, 1195f), vec4<f32>(106f, 261f, 1000f, 284f), vec4<bool>(true, true, false, false))))))));
    let var_2 = Struct_1(!select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true), func_2(0i)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), true)), abs(-func_3(Struct_3(vec2<bool>(true, false), 1231f, u_input.a.x), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<i32>(2147483647i, -44445i, 9101i), -342f), Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(69784i, -1049i, 72618i), var_1.x), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(24009i, u_input.a.x, u_input.a.x), 1311f), vec4<f32>(1987f, var_1.x, var_1.x, -306f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(u_input.a.x, 12769i, u_input.a.x), var_1.x), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(u_input.a.x, -43002i, u_input.a.x), -185f), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(1i, 0i, 2147483647i), 502f), vec4<f32>(var_1.x, -383f, var_1.x, 1150f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-25316i, u_input.a.x, u_input.a.x), var_1.x), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(-2147483647i, 0i, u_input.a.x), var_1.x), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(u_input.a.x, u_input.a.x, 647i), var_1.x), vec4<f32>(-1290f, var_1.x, var_1.x, 237f)))), var_1.x);
    var var_3 = _wgslsmith_div_vec2_i32(var_2.b.xz, _wgslsmith_add_vec2_i32(-u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(0u, ~u_input.b.x))));
}

