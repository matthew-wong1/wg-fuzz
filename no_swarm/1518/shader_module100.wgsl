struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-670f, -432f, 1893f, -1114f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = ~countOneBits(_wgslsmith_div_vec3_u32(abs(firstLeadingBit(vec3<u32>(64944u, arg_1.d.x, 15666u))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(5541u, arg_1.d.x, 24683u), vec3<u32>(arg_1.d.x, 1u, 2012u)), vec3<u32>(arg_1.d.x, 7570u, 24378u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1447f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + arg_1.b) * _wgslsmith_f_op_f32(-global0.x))), global0.wwx));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, max(var_0.x | 8716u, 1u), firstTrailingBit(arg_1.d.x)) & ~(~(~vec3<u32>(46653u, arg_1.d.x, 0u))), vec3<u32>(0u, ~_wgslsmith_sub_u32(~arg_1.d.x, 1649u), 47191u));
    global0 = vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.b + 1412f), arg_1.b)) + _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1198f)) + global0.x))), _wgslsmith_f_op_f32(step(-1000f, arg_1.b)), _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(global0.wwx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-264f)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: bool) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = -(~(-(~u_input.a.x)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_3(i32(-1i) * -1i, Struct_2(arg_0.x, -400f, vec3<i32>(-2147483647i, arg_1.x, -25126i), vec2<u32>(4294967295u, 0u))))))), u_input.a);
    let var_3 = firstLeadingBit(13207u);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -2117f, false))))), vec3<i32>(~2147483647i, var_2.b.x, -18859i), ~_wgslsmith_sub_vec2_u32(abs(vec2<u32>(0u, var_3)) << ((vec2<u32>(45947u, var_3) ^ vec2<u32>(var_3, 19897u)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)));
    return min(arg_1.x | (~(-28879i) & _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_mod_vec2_i32(var_2.b.ww, vec2<i32>(var_2.b.x, 4367i)))), var_2.b.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, _wgslsmith_f_op_f32(f32(-1f) * -1008f), _wgslsmith_f_op_f32(1187f * 467f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1043f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, global0.x, 491f, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 136f, 1439f, global0.x) * vec4<f32>(global0.x, -1089f, 113f, 385f))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global0.xw, global0.ww), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1886f) * _wgslsmith_f_op_f32(global0.x + global0.x)), 1212f))));
    let var_1 = ~(-13258i);
    let var_2 = ~_wgslsmith_sub_u32(~arg_0.d, ~(~_wgslsmith_dot_vec2_u32(arg_0.c.xz, arg_0.c.zx)));
    let var_3 = !(!vec3<bool>(all(!vec3<bool>(false, arg_0.b, true)), all(!vec3<bool>(true, false, arg_0.b)), _wgslsmith_f_op_f32(func_3(arg_0.a.x, Struct_2(1000f, var_0.x, u_input.a.wwy, vec2<u32>(var_2, arg_0.d)))) <= _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_2(global0.x, 209f, vec3<i32>(u_input.a.x, var_1, u_input.a.x), arg_0.c.wz)))));
    return Struct_1(_wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.a.x, u_input.a.x), vec4<i32>(arg_0.a.x, -2147483647i, 1i, 0i)), countOneBits(-arg_0.a)) >> (vec4<u32>(19017u, arg_0.d, var_2, ~1u) % vec4<u32>(32u)), !arg_0.b, arg_0.c, ~(~22352u));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = !arg_2;
    let var_1 = func_4(Struct_1(vec4<i32>(reverseBits(arg_1), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -939f, 469f, global0.x) + vec4<f32>(global0.x, -600f, 508f, global0.x)), max(u_input.a.xy, u_input.a.yy), 219f, any(vec4<bool>(true, var_0.x, false, false))), arg_1, ~(-9446i | arg_1)), var_0.x, abs(vec4<u32>(4294967295u, 4294967295u >> (arg_0.x % 32u), _wgslsmith_sub_u32(arg_0.x, arg_0.x), ~arg_0.x)), arg_0.x));
    let var_2 = !var_0.x;
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -823f, global0.x, global0.x) + vec4<f32>(global0.x, -1000f, global0.x, -1256f)) - vec4<f32>(1090f, global0.x, -1160f, 1503f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, -894f, -1531f, global0.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 763f, global0.x, global0.x))) + vec4<f32>(-1000f, 1632f, -117f, global0.x)))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(356f * 1117f), global0.x) - 1366f))), _wgslsmith_div_f32(249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(291f, _wgslsmith_div_f32(global0.x, global0.x))))), global0.x, -300f);
    return arg_0.xxw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(_wgslsmith_clamp_u32(14775u, 0u, 30174u), ~0u, ~1u)), vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(66135u, 76677u), 0u, ~45979u), func_1(vec4<u32>(1u, 0u, 0u, 0u), -36125i, vec3<bool>(true, true, true)), vec3<u32>(min(0u, 0u), reverseBits(77799u), 1u)) % vec3<u32>(32u)));
    let var_1 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0.x)), u_input.a.x, countOneBits(abs(~(-u_input.a.zz))), select(_wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_sub_i32(36529i, reverseBits(0i)), reverseBits(2147483647i)), min(4703i, -1i), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

