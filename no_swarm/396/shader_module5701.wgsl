struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_3(u_input.b.xy);
    let var_1 = -1i;
    var_0 = Struct_3(~(~vec2<u32>(3862u << (u_input.b.x % 32u), ~u_input.b.x)));
    var_0 = Struct_3(vec2<u32>(~min(firstTrailingBit(u_input.b.x), u_input.b.x), u_input.b.x));
    var_0 = Struct_3(var_0.a);
    return vec3<i32>(abs(0i), _wgslsmith_mult_i32(u_input.d, firstLeadingBit(var_1)), i32(-1i) * -u_input.c.x);
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    var var_0 = Struct_1(vec3<i32>(min(u_input.d, u_input.c.x), 0i, ~_wgslsmith_mod_i32(u_input.a, -52994i)) << (countOneBits(u_input.b.xxx) % vec3<u32>(32u)), -904f, u_input.b.x ^ ~abs(max(1u, 0u)), vec3<bool>(true, true, (_wgslsmith_sub_u32(arg_0.a.x, 68787u) != max(28288u, 1u)) && true), u_input.c);
    var_0 = Struct_1(_wgslsmith_div_vec3_i32(abs(vec3<i32>(5130i, -52709i, 1i) & (var_0.e.zzy & vec3<i32>(0i, u_input.a, -6019i))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.c.ywy, u_input.c.wyz, u_input.c.wzz), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<i32>(-1i, var_0.e.x, 13059i)), select(vec3<i32>(u_input.c.x, -10389i, u_input.d), var_0.a, var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1055f, 633f)))) + 926f), _wgslsmith_mult_u32(~reverseBits(arg_0.a.x), _wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_clamp_u32(1u, 0u, 0u)) | (var_0.c | 73964u)), !vec3<bool>(true, any(var_0.d.zx), true), min(var_0.e, reverseBits(-vec4<i32>(var_0.a.x, 53187i, -22323i, var_0.e.x))));
    return vec4<i32>(~2147483647i, 88429i, var_0.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i << (~var_0.c % 32u), reverseBits(-2147483647i & var_0.e.x), 1i), vec3<i32>(abs(~0i), -8778i, _wgslsmith_mod_i32(var_0.a.x, func_2(vec2<f32>(889f, var_0.b)).x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 807f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1000f - -353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2027f + 850f))))), 1u, vec3<bool>(false, any(!arg_1.xy), !(642f >= _wgslsmith_f_op_f32(step(1446f, 797f)))), ~vec4<i32>(2147483647i, u_input.d, reverseBits(u_input.c.x), ~24960i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(646f * var_0.b), !arg_1.x))), 127f));
    let var_2 = var_0.c;
    var var_3 = Struct_2(Struct_1(var_0.e.yxw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~1u, var_0.d, func_3(Struct_3(vec2<u32>(var_0.c, var_2)))), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.d.x, _wgslsmith_f_op_f32(-var_0.b) <= _wgslsmith_f_op_f32(var_1.x - var_1.x)), arg_1), Struct_1(var_0.e.xxy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1106f - 198f), _wgslsmith_f_op_f32(-var_0.b))) * -241f), 4294967295u, var_0.d, -(max(var_0.e, vec4<i32>(2147483647i, 1i, 40435i, 21668i)) ^ _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(1i, var_0.a.x, u_input.d, -740i)))), _wgslsmith_f_op_f32(abs(var_1.x)), abs(_wgslsmith_mod_i32(-(~(-1i)), 12611i)));
    var var_4 = Struct_3(~arg_0.xz);
    return Struct_2(var_0, !select(vec3<bool>(true, all(vec3<bool>(var_0.d.x, true, true)), any(vec4<bool>(var_3.c.d.x, var_0.d.x, var_3.c.d.x, true))), !select(arg_1, vec3<bool>(true, true, var_0.d.x), false), var_3.a.d), var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f))), 2147483647i);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = vec2<u32>(4294967295u, ~22458u);
    let var_1 = arg_2;
    var_0 = ~firstTrailingBit((u_input.b.xy ^ u_input.b.wx) & firstLeadingBit(firstLeadingBit(u_input.b.wy)));
    var var_2 = vec2<i32>(arg_2.a.a.x, -50743i);
    var_2 = func_3(Struct_3(u_input.b.xx)).xz;
    return !any(vec2<bool>(any(vec4<bool>(arg_2.c.d.x, var_1.c.d.x, var_1.b.x, false)), true)) || arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-(~select(_wgslsmith_mult_vec4_i32(u_input.c, u_input.c), firstTrailingBit(vec4<i32>(u_input.d, 2147483647i, -1i, -9723i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), false))));
    let var_1 = 29054i;
    let var_2 = _wgslsmith_mult_i32(select(var_0.x, var_0.x, func_4(var_0.zz, u_input.b.x, func_1(u_input.b.zxx, vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1808f, 1089f), vec2<f32>(473f, 133f), vec2<bool>(true, false))))) & _wgslsmith_mod_i32(~var_1 >> (0u % 32u), var_0.x), func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-516f, 102f)), _wgslsmith_div_vec2_f32(vec2<f32>(339f, -520f), vec2<f32>(1597f, 2066f))))).x ^ 20150i);
    let var_3 = vec4<bool>(all(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), false | (~u_input.b.x <= u_input.b.x), !any(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), any(vec4<bool>(false, false, false, true)))), true);
    var var_4 = 4294967295u;
    var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(139f, _wgslsmith_f_op_f32(f32(-1f) * -148f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(var_3.x, true, false)).a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2179f)), (~min(91116u, u_input.b.x) >> (u_input.b.x % 32u)) | ~(~(~u_input.b.x)));
}

